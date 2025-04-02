-- MySQL Script generated by MySQL Workbench
-- Wed Apr  2 11:55:01 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fms
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fms
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `fms` ;

-- -----------------------------------------------------
-- Table `fms`.`dj`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`dj` (
  `ID_DJ` INT NOT NULL,
  `Nombre_Real` VARCHAR(100) NULL DEFAULT NULL,
  `AKA` VARCHAR(100) NULL DEFAULT NULL,
  `Nacionalidad` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_DJ`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fms`.`freestyler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`freestyler` (
  `ID_Freestyler` INT NOT NULL,
  `Nombre_Real` VARCHAR(100) NULL DEFAULT NULL,
  `AKA` VARCHAR(100) NULL DEFAULT NULL,
  `Nacionalidad` VARCHAR(50) NULL DEFAULT NULL,
  `Fecha_Nacimiento` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Freestyler`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fms`.`speaker`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`speaker` (
  `ID_Speaker` INT NOT NULL,
  `Nombre_Real` VARCHAR(100) NULL DEFAULT NULL,
  `AKA` VARCHAR(100) NULL DEFAULT NULL,
  `Nacionalidad` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Speaker`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fms`.`batalla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`batalla` (
  `ID_Batalla` INT NOT NULL,
  `Temporada` INT NULL DEFAULT NULL,
  `Fecha` DATE NULL DEFAULT NULL,
  `ID_DJ` INT NOT NULL,
  `ID_Speaker` INT NOT NULL,
  `ID_Freestyler1` INT NOT NULL,
  `ID_Freestyler2` INT NOT NULL,
  `Resultado` TINYINT NULL DEFAULT NULL,
  `puntosfreestyler1` INT NULL DEFAULT NULL,
  `puntosfreestyler2` INT NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Batalla`),
  INDEX `fk_batalla_dj_idx` (`ID_DJ` ASC) VISIBLE,
  INDEX `fk_batalla_speaker1_idx` (`ID_Speaker` ASC) VISIBLE,
  INDEX `fk_batalla_freestyler1_idx` (`ID_Freestyler1` ASC) VISIBLE,
  INDEX `fk_batalla_freestyler2_idx` (`ID_Freestyler2` ASC) VISIBLE,
  CONSTRAINT `fk_batalla_dj`
    FOREIGN KEY (`ID_DJ`)
    REFERENCES `fms`.`dj` (`ID_DJ`),
  CONSTRAINT `fk_batalla_freestyler1`
    FOREIGN KEY (`ID_Freestyler1`)
    REFERENCES `fms`.`freestyler` (`ID_Freestyler`),
  CONSTRAINT `fk_batalla_freestyler2`
    FOREIGN KEY (`ID_Freestyler2`)
    REFERENCES `fms`.`freestyler` (`ID_Freestyler`),
  CONSTRAINT `fk_batalla_speaker1`
    FOREIGN KEY (`ID_Speaker`)
    REFERENCES `fms`.`speaker` (`ID_Speaker`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fms`.`juez`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`juez` (
  `ID_Juez` INT NOT NULL,
  `Nombre_Real` VARCHAR(100) NULL DEFAULT NULL,
  `AKA` VARCHAR(100) NULL DEFAULT NULL,
  `Nacionalidad` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Juez`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fms`.`puntaje_juez_batalla`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`puntaje_juez_batalla` (
  `ID_Juez` INT NOT NULL,
  `ID_Freestyler` INT NOT NULL,
  `ID_Batalla` INT NOT NULL,
  `PTB` INT NULL DEFAULT NULL,
  PRIMARY KEY (`ID_Juez`, `ID_Freestyler`, `ID_Batalla`),
  INDEX `fk_puntaje_final_batalla_juez1_idx` (`ID_Juez` ASC) VISIBLE,
  INDEX `fk_puntaje_final_batalla_freestyler1_idx` (`ID_Freestyler` ASC) VISIBLE,
  INDEX `fk_puntaje_final_batalla_batalla1_idx` (`ID_Batalla` ASC) VISIBLE,
  CONSTRAINT `fk_puntaje_final_batalla_batalla1`
    FOREIGN KEY (`ID_Batalla`)
    REFERENCES `fms`.`batalla` (`ID_Batalla`),
  CONSTRAINT `fk_puntaje_final_batalla_freestyler1`
    FOREIGN KEY (`ID_Freestyler`)
    REFERENCES `fms`.`freestyler` (`ID_Freestyler`),
  CONSTRAINT `fk_puntaje_final_batalla_juez1`
    FOREIGN KEY (`ID_Juez`)
    REFERENCES `fms`.`juez` (`ID_Juez`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `fms` ;

-- -----------------------------------------------------
-- Placeholder table for view `fms`.`batallaspordia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`batallaspordia` (`ID_Batalla` INT, `Fecha` INT, `ID_FreestylerGanador` INT, `ID_JuezMasGeneroso` INT, `PTBMaximo` INT);

-- -----------------------------------------------------
-- Placeholder table for view `fms`.`tabla_fms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fms`.`tabla_fms` (`AKA` INT, `PuntosTotales` INT);

-- -----------------------------------------------------
-- procedure ActualizarAKA
-- -----------------------------------------------------

DELIMITER $$
USE `fms`$$
CREATE DEFINER=`SqlAdminm`@`%` PROCEDURE `ActualizarAKA`(
    IN p_id_freestyler INT,
    IN p_nuevo_aka VARCHAR(50)
)
BEGIN
    UPDATE freestyler
    SET AKA = p_nuevo_aka
    WHERE ID_Freestyler = p_id_freestyler;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function CalcularPuntosFreestyler
-- -----------------------------------------------------

DELIMITER $$
USE `fms`$$
CREATE DEFINER=`SqlAdminm`@`%` FUNCTION `CalcularPuntosFreestyler`(
    p_id_freestyler INT,
    p_temporada INT
) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_puntos INT DEFAULT 0;

    SELECT 
        SUM(CASE 
            WHEN b.ID_Freestyler1 = p_id_freestyler THEN b.puntosfreestyler1
            WHEN b.ID_Freestyler2 = p_id_freestyler THEN b.puntosfreestyler2
            ELSE 0
        END) INTO total_puntos
    FROM 
        batalla b
    WHERE 
        b.Temporada = p_temporada
        AND (b.ID_Freestyler1 = p_id_freestyler OR b.ID_Freestyler2 = p_id_freestyler);

    RETURN IFNULL(total_puntos, 0);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure EliminarBatalla
-- -----------------------------------------------------

DELIMITER $$
USE `fms`$$
CREATE DEFINER=`SqlAdminm`@`%` PROCEDURE `EliminarBatalla`(
    IN p_id_batalla INT
)
BEGIN
    -- Primero borra las puntuaciones asociadas
    DELETE FROM puntaje_juez_batalla
    WHERE ID_Batalla = p_id_batalla;
    
    -- Luego borra la batalla
    DELETE FROM batalla
    WHERE ID_Batalla = p_id_batalla;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure InsertarBatallaSimple
-- -----------------------------------------------------

DELIMITER $$
USE `fms`$$
CREATE DEFINER=`SqlAdminm`@`%` PROCEDURE `InsertarBatallaSimple`(
    IN p_id_batalla INT,
    IN p_temporada INT,
    IN p_fecha DATE,
    IN p_id_dj INT,
    IN p_id_speaker INT,
    IN p_id_freestyler1 INT,
    IN p_id_freestyler2 INT
)
BEGIN
    INSERT INTO batalla (
        ID_Batalla, 
        Temporada, 
        Fecha, 
        ID_DJ, 
        ID_Speaker, 
        ID_Freestyler1, 
        ID_Freestyler2, 
        Resultado, 
        puntosfreestyler1, 
        puntosfreestyler2
    )
    VALUES (
        p_id_batalla, 
        p_temporada, 
        p_fecha, 
        p_id_dj, 
        p_id_speaker, 
        p_id_freestyler1, 
        p_id_freestyler2, 
        NULL, 
        NULL, 
        NULL
    );
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function ObtenerYActualizarPuntos
-- -----------------------------------------------------

DELIMITER $$
USE `fms`$$
CREATE DEFINER=`SqlAdminm`@`%` FUNCTION `ObtenerYActualizarPuntos`(
    p_id_freestyler INT,
    p_temporada INT
) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_puntos INT DEFAULT 0;

    -- Calcular los puntos totales
    SELECT 
        SUM(CASE 
            WHEN b.ID_Freestyler1 = p_id_freestyler THEN b.puntosfreestyler1
            WHEN b.ID_Freestyler2 = p_id_freestyler THEN b.puntosfreestyler2
            ELSE 0
        END) INTO total_puntos
    FROM 
        batalla b
    WHERE 
        b.Temporada = p_temporada
        AND (b.ID_Freestyler1 = p_id_freestyler OR b.ID_Freestyler2 = p_id_freestyler);

    -- Llamar al procedimiento para registrar el cálculo
    CALL RegistrarPuntos(p_id_freestyler, p_temporada, IFNULL(total_puntos, 0));

    -- Devolver los puntos
    RETURN IFNULL(total_puntos, 0);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure RegistrarPuntos
-- -----------------------------------------------------

DELIMITER $$
USE `fms`$$
CREATE DEFINER=`SqlAdminm`@`%` PROCEDURE `RegistrarPuntos`(
    IN p_id_freestyler INT,
    IN p_temporada INT,
    IN p_puntos INT
)
BEGIN
    INSERT INTO auditoria_puntos (ID_Freestyler, Temporada, PuntosCalculados)
    VALUES (p_id_freestyler, p_temporada, p_puntos);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `fms`.`batallaspordia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fms`.`batallaspordia`;
USE `fms`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`SqlAdminm`@`%` SQL SECURITY DEFINER VIEW `fms`.`batallaspordia` AS select `b`.`ID_Batalla` AS `ID_Batalla`,`b`.`Fecha` AS `Fecha`,(case when (`b`.`puntosfreestyler1` > `b`.`puntosfreestyler2`) then `b`.`ID_Freestyler1` when (`b`.`puntosfreestyler2` > `b`.`puntosfreestyler1`) then `b`.`ID_Freestyler2` else NULL end) AS `ID_FreestylerGanador`,(select `pjb2`.`ID_Juez` from `fms`.`puntaje_juez_batalla` `pjb2` where ((`pjb2`.`ID_Batalla` = `b`.`ID_Batalla`) and (`pjb2`.`ID_Freestyler` = (case when (`b`.`puntosfreestyler1` > `b`.`puntosfreestyler2`) then `b`.`ID_Freestyler1` when (`b`.`puntosfreestyler2` > `b`.`puntosfreestyler1`) then `b`.`ID_Freestyler2` else NULL end))) order by `pjb2`.`PTB` desc limit 1) AS `ID_JuezMasGeneroso`,(select `pjb2`.`PTB` from `fms`.`puntaje_juez_batalla` `pjb2` where ((`pjb2`.`ID_Batalla` = `b`.`ID_Batalla`) and (`pjb2`.`ID_Freestyler` = (case when (`b`.`puntosfreestyler1` > `b`.`puntosfreestyler2`) then `b`.`ID_Freestyler1` when (`b`.`puntosfreestyler2` > `b`.`puntosfreestyler1`) then `b`.`ID_Freestyler2` else NULL end))) order by `pjb2`.`PTB` desc limit 1) AS `PTBMaximo` from `fms`.`batalla` `b` order by `b`.`Fecha`,`b`.`ID_Batalla`;

-- -----------------------------------------------------
-- View `fms`.`tabla_fms`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fms`.`tabla_fms`;
USE `fms`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`SqlAdminm`@`%` SQL SECURITY DEFINER VIEW `fms`.`tabla_fms` AS select `f`.`AKA` AS `AKA`,sum((case when (`b`.`ID_Freestyler1` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler1` when (`b`.`ID_Freestyler2` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler2` end)) AS `PuntosTotales` from (`fms`.`batalla` `b` join `fms`.`freestyler` `f` on(((`b`.`ID_Freestyler1` = `f`.`ID_Freestyler`) or (`b`.`ID_Freestyler2` = `f`.`ID_Freestyler`)))) group by `f`.`AKA` having (sum((case when (`b`.`ID_Freestyler1` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler1` when (`b`.`ID_Freestyler2` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler2` end)) >= 0) order by `PuntosTotales` desc;
USE `fms`;

DELIMITER $$
USE `fms`$$
CREATE
DEFINER=`SqlAdminm`@`%`
TRIGGER `fms`.`RegistrarJuezMasPuntos`
AFTER INSERT ON `fms`.`puntaje_juez_batalla`
FOR EACH ROW
BEGIN
    DECLARE total_votos INT;

    -- Contar cuántas puntuaciones hay para esta batalla
    SELECT COUNT(*) INTO total_votos
    FROM puntaje_juez_batalla
    WHERE ID_Batalla = NEW.ID_Batalla;

    -- Si ya hay 10 puntuaciones (batalla completa)
    IF total_votos = 10 THEN
        -- Insertar el juez con el PTB más alto
        INSERT INTO log_mejor_juez (ID_Batalla, ID_Juez, PuntosMaximos)
        SELECT 
            NEW.ID_Batalla,
            ID_Juez,
            MAX(PTB) AS PuntosMaximos
        FROM 
            puntaje_juez_batalla
        WHERE 
            ID_Batalla = NEW.ID_Batalla
        GROUP BY 
            ID_Juez
        ORDER BY 
            PuntosMaximos DESC
        LIMIT 1;
    END IF;
END$$

USE `fms`$$
CREATE
DEFINER=`SqlAdminm`@`%`
TRIGGER `fms`.`actualiza_puntos_y_resultado`
AFTER INSERT ON `fms`.`puntaje_juez_batalla`
FOR EACH ROW
BEGIN
    DECLARE total_votos INT;
    DECLARE votos_f1 INT DEFAULT 0;
    DECLARE votos_f2 INT DEFAULT 0;
    DECLARE puntos_f1 INT;
    DECLARE puntos_f2 INT;

    -- Contar total de votos para esta batalla
    SELECT COUNT(*) INTO total_votos
    FROM puntaje_juez_batalla
    WHERE ID_Batalla = NEW.ID_Batalla;

    -- Solo actuar si hay 10 votos (5 jueces x 2 freestylers)
    IF total_votos = 10 THEN
        -- Contar votos para F1 (usando los IDs de freestylers desde batalla)
        SET votos_f1 = (
            SELECT COUNT(*)
            FROM puntaje_juez_batalla p1
            JOIN puntaje_juez_batalla p2
            ON p1.ID_Batalla = p2.ID_Batalla
            AND p1.ID_Juez = p2.ID_Juez
            JOIN batalla b
            ON p1.ID_Batalla = b.ID_Batalla
            WHERE p1.ID_Batalla = NEW.ID_Batalla
            AND p1.ID_Freestyler = b.ID_Freestyler1
            AND p2.ID_Freestyler = b.ID_Freestyler2
            AND p1.PTB > p2.PTB
        );

        -- Votos para F2 son el resto (5 jueces en total)
        SET votos_f2 = 5 - votos_f1;

        -- Asignar puntos según mayoría
        IF votos_f1 >= 3 THEN
            IF votos_f1 >= 4 THEN
                SET puntos_f1 = 3;
                SET puntos_f2 = 0;
            ELSE
                SET puntos_f1 = 2;
                SET puntos_f2 = 1;
            END IF;
        ELSEIF votos_f2 >= 3 THEN
            IF votos_f2 >= 4 THEN
                SET puntos_f1 = 0;
                SET puntos_f2 = 3;
            ELSE
                SET puntos_f1 = 1;
                SET puntos_f2 = 2;
            END IF;
        ELSE
            SET puntos_f1 = 1;
            SET puntos_f2 = 1;
        END IF;

        -- Actualizar la tabla batalla con puntos y resultado
        UPDATE batalla
        SET puntosfreestyler1 = puntos_f1,
            puntosfreestyler2 = puntos_f2,
            Resultado = CASE 
                WHEN puntos_f1 > puntos_f2 THEN TRUE
                WHEN puntos_f2 > puntos_f1 THEN FALSE
                ELSE NULL
            END
        WHERE ID_Batalla = NEW.ID_Batalla;
    END IF;
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
