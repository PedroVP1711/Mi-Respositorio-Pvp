# Mi-Respositorio-Pvp
--------------------------------------------------------------------------------
  Aquí se encuentra las consultas, vistas, triggers, procedimientos y funciones
--------------------------------------------------------------------------------

-- 1.Tabla de Freestylers con más puntos --

select f.AKA, sum(case
	when b.ID_Freestyler1 = f.ID_Freestyler then b.puntosfreestyler1
   when b.ID_Freestyler2 = f.ID_Freestyler then b.puntosfreestyler2
					end) as PuntosTotales
from batalla b
join freestyler f on b.ID_Freestyler1 = f.ID_Freestyler or b.ID_Freestyler2 = f.ID_Freestyler
group by f.AKA
having sum(case
	when b.ID_Freestyler1 = f.ID_Freestyler then b.puntosfreestyler1
	when b.ID_Freestyler2 = f.ID_Freestyler then b.puntosfreestyler2
          	end) >=0
order by PuntosTotales desc;

-- 2. Juez con el freestyler al que más ha votado y cuantos puntos les ha otorgado --

with VotosPorJuez as (
    select j.ID_Juez, j.Nombre_Real as NombreJuez, f.AKA as Freestyler,
        count(distinct pjb.ID_Batalla) as BatallasVotadas,
        sum(pjb.PTB) as PuntosOtorgados
    from juez j
    join puntaje_juez_batalla pjb on j.ID_Juez = pjb.ID_Juez
    join freestyler f on pjb.ID_Freestyler = f.ID_Freestyler
    join batalla b on pjb.ID_Batalla = b.ID_Batalla
    where (b.ID_Freestyler1 = f.ID_Freestyler and pjb.PTB > 
        (select pjb2.PTB from puntaje_juez_batalla pjb2 
         where pjb2.ID_Batalla = pjb.ID_Batalla 
         and pjb2.ID_Juez = pjb.ID_Juez 
         and pjb2.ID_Freestyler = b.ID_Freestyler2)
         )
        or (b.ID_Freestyler2 = f.ID_Freestyler and pjb.PTB > 
         (select pjb2.PTB from puntaje_juez_batalla pjb2 
          where pjb2.ID_Batalla = pjb.ID_Batalla 
          and pjb2.ID_Juez = pjb.ID_Juez 
          and pjb2.ID_Freestyler = b.ID_Freestyler1)
          )
    group by j.ID_Juez, j.Nombre_Real, f.ID_Freestyler, f.AKA
    )
	select v1.NombreJuez, v1.Freestyler, v1.BatallasVotadas, v1.PuntosOtorgados
	from VotosPorJuez v1
	where v1.BatallasVotadas = (
    select MAX(v2.BatallasVotadas)
    from VotosPorJuez v2
    where v1.ID_Juez = v2.ID_Juez)
	and v1.PuntosOtorgados = (
    select MAX(v2.PuntosOtorgados)
    from VotosPorJuez v2
    where v1.ID_Juez = v2.ID_Juez
    and v1.BatallasVotadas = v2.BatallasVotadas
)
order by v1.PuntosOtorgados desc;


-- 3.freestylers han recibido las puntuaciones más altas promedio por juez en batallas de la temporada 1, junto con el DJ y el speaker involucrados. --

SELECT
   f.AKA as Freestyler,
   avg(case
       when pjb.ID_Freestyler = f.ID_Freestyler then pjb.PTB
       end) as PuntuacionPromedio,
   count(distinct b.ID_Batalla) as BatallasParticipadas,
   group_concat(distinct j.Nombre_Real) as JuecesQuePuntuaron,
   group_concat(distinct dj.Nombre_Real) as DjsQueEstuvieron,
   group_concat(distinct s.Nombre_Real) as SpeakersQueEstuvieron
from freestyler f
join batalla b
   on f.ID_Freestyler = b.ID_Freestyler1
   or f.ID_Freestyler = b.ID_Freestyler2
join puntaje_juez_batalla pjb
   on b.ID_Batalla = pjb.ID_Batalla
   and pjb.ID_Freestyler = f.ID_Freestyler
join juez j
   on pjb.ID_Juez = j.ID_Juez
join dj
   on b.ID_DJ = dj.ID_DJ
join speaker s
   on b.ID_Speaker = s.ID_Speaker
where b.Temporada = 1
group by f.ID_Freestyler, f.AKA
having PuntuacionPromedio > 0
order by PuntuacionPromedio desc;

-- 4. Batallas que ha habido en un fehca con datos de esa batalla como los ganadores y el juez que mas puntuacion ha otorgado --

select b.ID_Batalla, b.Fecha, case
       when b.puntosfreestyler1 > b.puntosfreestyler2 then b.ID_Freestyler1
       when b.puntosfreestyler2 > b.puntosfreestyler1 then b.ID_Freestyler2
       else null
   end as ID_FreestylerGanador,
   (select pjb2.ID_Juez
    from puntaje_juez_batalla pjb2
    where pjb2.ID_Batalla = b.ID_Batalla
    and pjb2.ID_Freestyler = case
         when b.puntosfreestyler1 > b.puntosfreestyler2 then b.ID_Freestyler1
         when b.puntosfreestyler2 > b.puntosfreestyler1 then b.ID_Freestyler2
         else null
         end
    order by pjb2.PTB desc
    limit 1) as ID_JuezMasGeneroso,
   (select pjb2.PTB
    from puntaje_juez_batalla pjb2
    where pjb2.ID_Batalla = b.ID_Batalla
    and pjb2.ID_Freestyler = case
          when b.puntosfreestyler1 > b.puntosfreestyler2 then b.ID_Freestyler1
          when b.puntosfreestyler2 > b.puntosfreestyler1 then b.ID_Freestyler2
          else null
          end
    order by pjb2.PTB desc
    limit 1) as PTBMaximo
from batalla b
where b.Fecha = '2025-04-20'
order by b.ID_Batalla asc;

-- Cuantos integrantes hay de cada pais en la liga (DJs, Jurados, Speaker, Freestylers) --

select Nacionalidad, 
       (select count(*) from dj where dj.Nacionalidad = f.Nacionalidad) +
       (select count(*) from speaker where speaker.Nacionalidad = f.Nacionalidad) +
       (select count(*) from freestyler where freestyler.Nacionalidad = f.Nacionalidad) +
       (select count(*) from juez where juez.Nacionalidad = f.Nacionalidad) 
       as TotalPersonas
from freestyler f
group by Nacionalidad
order by TotalPersonas desc




-- VISTAS --

-- 1. Vista para ver la tabla de FMS --

create view tabla_fms AS
select
   f.AKA,
   SUM(case
       when b.ID_Freestyler1 = f.ID_Freestyler THEN b.puntosfreestyler1
       when b.ID_Freestyler2 = f.ID_Freestyler THEN b.puntosfreestyler2
       end) as PuntosTotales
from
   batalla b
join
   freestyler f
   on b.ID_Freestyler1 = f.ID_Freestyler
   OR b.ID_Freestyler2 = f.ID_Freestyler
group by
   f.AKA
HAVING
   SUM(case
       when b.ID_Freestyler1 = f.ID_Freestyler THEN b.puntosfreestyler1
       when b.ID_Freestyler2 = f.ID_Freestyler THEN b.puntosfreestyler2
       end) >= 0
order by
   PuntosTotales DESC;

	-- Para verla --

select * from tabla_fms;


-- 2.Batallas con datos de esa batalla como los ganadores y el juez que mas puntuacion ha otorgado  --

create view BatallasPorDia AS
select
   b.ID_Batalla,
   b.Fecha,
   case
       when b.puntosfreestyler1 > b.puntosfreestyler2 THEN b.ID_Freestyler1
       when b.puntosfreestyler2 > b.puntosfreestyler1 THEN b.ID_Freestyler2
       else null
   end as ID_FreestylerGanador,
   (select pjb2.ID_Juez
    from puntaje_juez_batalla pjb2
    where pjb2.ID_Batalla = b.ID_Batalla
    and pjb2.ID_Freestyler = case
                                when b.puntosfreestyler1 > b.puntosfreestyler2 then b.ID_Freestyler1
                                when b.puntosfreestyler2 > b.puntosfreestyler1 then b.ID_Freestyler2
                                else null
                            end
    ORDER by pjb2.PTB desc
    LIMIT 1) A ID_JuezMasGeneroso,
   (select pjb2.PTB
    from puntaje_juez_batalla pjb2
    where pjb2.ID_Batalla = b.ID_Batalla
    and pjb2.ID_Freestyler = case
                                when b.puntosfreestyler1 > b.puntosfreestyler2 then b.ID_Freestyler1
                                when b.puntosfreestyler2 > b.puntosfreestyler1 then b.ID_Freestyler2
                                else null
                            end
    order by pjb2.PTB desc
    limit 1) as PTBMaximo
from
   batalla b
order by
   b.Fecha asc, b.ID_Batalla asc;

	-- Para verla --

select * from BatallasPorDia;



-- TRIGGERS --

-- Mostrar Triggers --

show TRIGGERS;

-- Eliminar Triggers --

drop trigger if exists actualiza_puntosfreestylers;
drop trigger if exists actualiza_resultado;


-- 1. Trigger que actualiza los puntos de los freestylers y el resultado --

DELIMITER &&
create trigger actualiza_puntos_y_resultado
after insert on puntaje_juez_batalla
for each row
begin
   declare total_votos int;
   declare votos_f1 int default 0;
   declare votos_f2 int default 0;
   declare puntos_f1 int;
   declare puntos_f2 int;

   -- Este apartado lo he puesto para contar total de votos para esta batalla

   select count(*) INTO total_votos
   from puntaje_juez_batalla
   where ID_Batalla = NEW.ID_Batalla;
   
   -- Solo funciona si hay 10 votos (5 jueces x 2 freestylers), para que de tiempo a colocar la puntucaion de todos los jueces
   
   IF total_votos = 10 then
   
       -- Se cuentan los votos dependiendo la evalucion de los juerados segun la puntuación de las rimas.
   
       set votos_f1 = (
           select count(*)
           from puntaje_juez_batalla p1
           join puntaje_juez_batalla p2
           on p1.ID_Batalla = p2.ID_Batalla
           and p1.ID_Juez = p2.ID_Juez
           join batalla b
           on p1.ID_Batalla = b.ID_Batalla
           where p1.ID_Batalla = new.ID_Batalla
           and p1.ID_Freestyler = b.ID_Freestyler1
           and p2.ID_Freestyler = b.ID_Freestyler2
           and p1.PTB > p2.PTB
       );
       -- Y el resto son los para el freestyler 2 (5 jueces en total)
       
       set votos_f2 = 5 - votos_f1;
       
       -- Ahora asigno los puntos dependiendo de los votos de los jueces puntos según mayoría
       
       if votos_f1 >= 3 then
           if votos_f1 >= 4 then
               SET puntos_f1 = 3;
               SET puntos_f2 = 0;
           else
               SET puntos_f1 = 2;
               SET puntos_f2 = 1;
           end if;
       elseif votos_f2 >= 3 then
           if votos_f2 >= 4 then
               SET puntos_f1 = 0;
               SET puntos_f2 = 3;
           else
               SET puntos_f1 = 1;
               SET puntos_f2 = 2;
           end if;
       else
           set puntos_f1 = 1;
           set puntos_f2 = 1;
       end if;
       
       -- Para finalizar el trigger utilizo "update" para que la tabla batalla se actualice con puntos y resultado
       
       update batalla
       set puntosfreestyler1 = puntos_f1,
           puntosfreestyler2 = puntos_f2,
           Resultado = case
               when puntos_f1 > puntos_f2 then true
               when puntos_f2 > puntos_f1 then false
               else null
           end
       where ID_Batalla = new.ID_Batalla;
   end if;
end &&
DELIMITER ;

-- ------------------------------------------------------------------------ --

-- 2. Trigger para saber que juez ha sido el más generoso (el que ha votado más alta las rimas) --

DELIMITER &&
create trigger RegistrarJuezMasPuntos
after insert on puntaje_juez_batalla
for each row
begin
   declare total_votos int;

   -- Contar cuántas puntuaciones hay para esta batalla

   select count(*) into total_votos
   from puntaje_juez_batalla
   where ID_Batalla = new.ID_Batalla;
   
   if total_votos = 10 then
   
       -- De los jueces, que escoja el más generoso (el que más pùtnos ha dado)
   
       insert into log_mejor_juez (ID_Batalla, ID_Juez, PuntosMaximos)
       select
           new.ID_Batalla,
           ID_Juez,
           max(PTB) as PuntosMaximos
       from
           puntaje_juez_batalla
       where
           ID_Batalla = new.ID_Batalla
       group by
           ID_Juez
       order by
           PuntosMaximos desc
       limit 1;
   end if;
end &&
DELIMITER ;

-- FUNCIONES --

	-- Ver funciones --

	SHOW FUNCTION STATUS where db = 'fms';
	
-- 1. Funcion para ver puntos de un freestyler en una temporada específica --
	
DELIMITER &&
CREATE function CalcularPuntosFreestyler(
   p_id_freestyler int,
   p_temporada int
) returns int
deterministic
begin
   declare total_puntos int DEFAULT 0;
   select
       sum(case
           when b.ID_Freestyler1 = p_id_freestyler THEN b.puntosfreestyler1
           when b.ID_Freestyler2 = p_id_freestyler THEN b.puntosfreestyler2
           else 0
       end) into total_puntos
   from
       batalla b
   where
       b.Temporada = p_temporada
       and (b.ID_Freestyler1 = p_id_freestyler or b.ID_Freestyler2 = p_id_freestyler);
   return ifnull(total_puntos, 0);
end &&
DELIMITER ;

	-- Uso --

	select CalcularPuntosFreestyler(52, 1) as PuntosFreestyler117;
	
-- 2. Funcion para obtener y clacular los puntos --
	
DELIMITER &&
create function ObtenerYActualizarPuntos(
   p_id_freestyler int,
   p_temporada int
) returns int
deterministic
begin
   declare total_puntos int default 0;

   -- Primero hay que calcular los puntos totales
   select
       sum(case
           when b.ID_Freestyler1 = p_id_freestyler then b.puntosfreestyler1
           when b.ID_Freestyler2 = p_id_freestyler then b.puntosfreestyler2
           else 0
       end) into total_puntos
   from
       batalla b
   where
       b.Temporada = p_temporada
       and (b.ID_Freestyler1 = p_id_freestyler or b.ID_Freestyler2 = p_id_freestyler);
   
   -- Llamo al procedimiento para registrar el cálculo
   
   call RegistrarPuntos(p_id_freestyler, p_temporada, ifnull(total_puntos, 0));
   
   return ifnull(total_puntos, 0);
end &&
DELIMITER ;


	
-- PROCEDIMIENTOS --

	-- Ver procedimientos --
	
	show procedure STATUS where db = 'fms';
	
-- 2. Insertar una nueva batalla --
	
DELIMITER &&
create procedure InsertarBatallaSimple(
   in p_id_batalla INT,
   in p_temporada INT,
   in p_fecha DATE,
   in p_id_dj INT,
   in p_id_speaker INT,
   in p_id_freestyler1 INT,
   in p_id_freestyler2 INT
)
begin
   INSERT into batalla (ID_Batalla, Temporada, Fecha, ID_DJ, ID_Speaker, ID_Freestyler1, ID_Freestyler2, Resultado, puntosfreestyler1, puntosfreestyler2
   )
   values (p_id_batalla, p_temporada, p_fecha, p_id_dj, p_id_speaker, p_id_freestyler1, p_id_freestyler2, null, null, null
   );
end &&
DELIMITER ;

	-- Uso --

CALL InsertarBatallaSimple(, , '', , , , )

-- 3. Actualizar AKA de un Freestyler --

DELIMITER &&
create procedure ActualizarAKA(
   in p_id_freestyler int,
   in p_nuevo_aka varchar(50)
)
begin
   update freestyler
   set AKA = p_nuevo_aka
   where ID_Freestyler = p_id_freestyler;
end &&
DELIMITER ;

	-- Uso --
	call ActualizarAKA(, '');
	select * from freestyler where ID_Freestyler = ;
	
-- 4. Eliminar batalla debido a suspension o problema --
	
DELIMITER &&
create procedure EliminarBatalla(
   in p_id_batalla INT
)
begin
   -- Primero borra las puntuaciones asociadas
	
   delete from puntaje_juez_batalla
   where ID_Batalla = p_id_batalla;
  
   -- Luego borra la batalla
   
   delete from batalla
   where ID_Batalla = p_id_batalla;
end &&
DELIMITER ;

	-- Uso --
	
	CALL EliminarBatalla();
	SELECT * FROM batalla WHERE ID_Batalla = ;
	SELECT * FROM puntaje_juez_batalla WHERE ID_Batalla = ;
	
-- 4. Registrar Puntos --
	
DELIMITER &&
create procedure RegistrarPuntos(
   in p_id_freestyler INT,
   in p_temporada INT,
   in p_puntos INT
)
begin
   insert into auditoria_puntos (ID_Freestyler, Temporada, PuntosCalculados)
   values (p_id_freestyler, p_temporada, p_puntos);
end &&
DELIMITER ;
	-- Uso --
select ObtenerYActualizarPuntos(117, 1) as PuntosFreestyler;
select * from auditoria_puntos where ID_Freestyler = ;

