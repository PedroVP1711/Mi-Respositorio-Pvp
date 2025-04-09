------------------------------------------------
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: fms
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `batalla`
--

DROP TABLE IF EXISTS `batalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batalla` (
  `ID_Batalla` int NOT NULL,
  `Temporada` int DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `ID_DJ` int NOT NULL,
  `ID_Speaker` int NOT NULL,
  `ID_Freestyler1` int NOT NULL,
  `ID_Freestyler2` int NOT NULL,
  `Resultado` tinyint DEFAULT NULL,
  `puntosfreestyler1` int DEFAULT NULL,
  `puntosfreestyler2` int DEFAULT NULL,
  PRIMARY KEY (`ID_Batalla`),
  KEY `fk_batalla_dj_idx` (`ID_DJ`),
  KEY `fk_batalla_speaker1_idx` (`ID_Speaker`),
  KEY `fk_batalla_freestyler1_idx` (`ID_Freestyler1`),
  KEY `fk_batalla_freestyler2_idx` (`ID_Freestyler2`),
  CONSTRAINT `fk_batalla_dj` FOREIGN KEY (`ID_DJ`) REFERENCES `dj` (`ID_DJ`),
  CONSTRAINT `fk_batalla_freestyler1` FOREIGN KEY (`ID_Freestyler1`) REFERENCES `freestyler` (`ID_Freestyler`),
  CONSTRAINT `fk_batalla_freestyler2` FOREIGN KEY (`ID_Freestyler2`) REFERENCES `freestyler` (`ID_Freestyler`),
  CONSTRAINT `fk_batalla_speaker1` FOREIGN KEY (`ID_Speaker`) REFERENCES `speaker` (`ID_Speaker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batalla`
--

LOCK TABLES `batalla` WRITE;
/*!40000 ALTER TABLE `batalla` DISABLE KEYS */;
INSERT INTO `batalla` VALUES (1,1,'2024-05-15',1,3,1,2,1,3,0),(2,1,'2024-06-20',2,4,3,6,0,0,3),(3,1,'2024-08-10',3,1,4,5,1,3,0),(4,1,'2024-11-22',4,2,6,7,0,1,2),(5,1,'2025-01-05',1,5,2,8,1,3,0),(6,1,'2025-03-18',2,3,7,9,0,0,3),(7,1,'2024-07-30',5,6,10,4,1,3,0),(8,1,'2025-02-13',6,2,11,12,0,0,3),(9,1,'2024-12-03',1,4,13,14,1,3,0),(10,1,'2025-04-09',3,5,15,16,0,0,3),(11,1,'2024-01-15',4,1,17,18,1,2,1),(12,1,'2024-02-20',2,6,19,20,0,0,3),(13,1,'2024-03-25',3,2,21,22,1,3,0),(14,1,'2024-05-30',5,1,23,24,0,0,3),(15,1,'2024-06-10',1,4,25,26,1,2,1),(16,1,'2024-07-15',2,3,27,28,0,0,3),(17,1,'2024-08-05',6,5,29,30,1,3,0),(18,1,'2024-09-10',4,2,31,32,0,0,3),(19,1,'2024-10-01',3,1,33,34,1,3,0),(20,1,'2025-01-10',5,6,35,36,0,1,2),(21,1,'2025-02-01',6,4,37,38,1,3,0),(22,1,'2024-11-10',1,3,39,40,0,1,2),(23,1,'2025-03-10',2,5,41,42,1,3,0),(24,1,'2024-12-10',4,2,43,44,0,1,2),(25,1,'2025-01-20',1,6,45,46,1,3,0),(26,1,'2025-02-25',3,4,47,48,0,1,2),(27,1,'2024-03-15',5,2,49,50,1,3,0),(28,1,'2024-04-25',6,3,51,52,0,0,3),(29,1,'2024-06-05',2,1,53,54,1,3,0),(30,1,'2025-03-01',4,6,55,56,0,0,3),(31,1,'2025-01-30',3,2,57,58,1,3,0),(32,1,'2024-10-15',5,4,59,60,0,0,3),(33,1,'2024-07-10',1,6,61,62,1,3,0),(34,1,'2024-09-25',2,5,63,64,0,0,3),(35,1,'2024-11-05',4,3,65,66,1,3,0),(36,1,'2025-02-10',3,2,67,68,0,1,2),(37,1,'2025-03-20',5,6,69,70,1,3,0),(38,1,'2024-12-25',6,1,71,72,0,1,2),(39,1,'2024-05-25',2,3,73,74,1,3,0),(40,1,'2024-08-01',4,5,75,76,0,0,3),(41,1,'2025-01-12',3,2,77,78,1,3,0),(42,1,'2024-03-10',5,4,79,80,0,1,2),(43,1,'2025-02-05',6,1,81,82,1,2,1),(44,1,'2024-06-18',2,3,83,84,0,1,2),(45,1,'2024-07-20',4,5,85,86,1,3,0),(46,1,'2025-04-02',1,6,87,88,0,0,3),(47,1,'2024-09-30',2,4,89,90,1,2,1),(48,1,'2024-10-10',5,3,91,92,0,0,3),(49,1,'2025-01-18',6,1,93,94,1,3,0),(50,1,'2024-04-10',3,5,95,96,0,0,3),(51,1,'2024-11-30',4,6,97,98,1,2,1),(52,1,'2025-03-15',2,3,99,100,0,0,3),(53,1,'2025-02-22',1,5,101,102,1,3,0),(54,1,'2024-05-12',6,4,103,104,0,0,3),(55,1,'2024-09-15',3,2,105,106,1,3,0),(56,1,'2024-07-05',5,1,107,108,0,1,2),(57,1,'2025-01-25',2,6,109,110,1,2,1),(58,1,'2025-04-15',4,3,111,112,0,1,2),(59,1,'2024-06-30',3,5,113,114,1,3,0),(60,1,'2024-12-15',6,4,115,116,0,0,3),(61,1,'2025-01-25',4,3,52,78,1,3,0),(62,1,'2024-08-01',3,6,114,52,0,0,3),(63,1,'2024-06-18',116,3,52,3,1,3,0),(64,1,'2024-06-18',116,3,1,67,1,3,0),(65,1,'2024-06-18',116,3,1,112,1,3,0),(66,1,'2025-04-20',1,3,117,118,1,3,0);
/*!40000 ALTER TABLE `batalla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `batallaspordia`
--

DROP TABLE IF EXISTS `batallaspordia`;
/*!50001 DROP VIEW IF EXISTS `batallaspordia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `batallaspordia` AS SELECT 
 1 AS `ID_Batalla`,
 1 AS `Fecha`,
 1 AS `ID_FreestylerGanador`,
 1 AS `ID_JuezMasGeneroso`,
 1 AS `PTBMaximo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dj`
--

DROP TABLE IF EXISTS `dj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dj` (
  `ID_DJ` int NOT NULL,
  `Nombre_Real` varchar(100) DEFAULT NULL,
  `AKA` varchar(100) DEFAULT NULL,
  `Nacionalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_DJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dj`
--

LOCK TABLES `dj` WRITE;
/*!40000 ALTER TABLE `dj` DISABLE KEYS */;
INSERT INTO `dj` VALUES (1,'Carlos Martínez','DJ C','España'),(2,'Marta García','DJ Martita','México'),(3,'Juan López','DJ Juanito','Colombia'),(4,'Antonio Pérez','DJ Toni','Argentina'),(5,'Sofia Ruiz','DJ Sofi','Chile'),(6,'Luis García','DJ Lucho','Perú'),(7,'David Rodríguez','DJ Davo','Venezuela'),(8,'Beatriz Sánchez','DJ Bea','Uruguay'),(9,'Gabriel González','DJ Gabi','España'),(10,'José Fernández','DJ Pepe','México'),(11,'Juan Martínez','DJ Juano','Colombia'),(12,'Lucía Ramírez','DJ Luchi','Argentina'),(13,'José González','DJ Josito','Chile'),(14,'Ricardo Pérez','DJ Ricky','Perú'),(15,'Cristina López','DJ Cris','Venezuela'),(16,'Manuel Salazar','DJ Manu','Uruguay'),(17,'Víctor Jiménez','DJ Vico','España'),(18,'Fernando Gómez','DJ Fer','México'),(19,'Alejandro Torres','DJ Alex','Colombia'),(20,'Martín Díaz','DJ Macho','Argentina'),(21,'Andrés García','DJ Andi','España'),(22,'María López','DJ Mari','Chile'),(23,'Carlos Salazar','DJ Calo','Perú'),(24,'Susana Pérez','DJ Susi','Venezuela'),(25,'Gabriela Rodríguez','DJ Gabi','Uruguay'),(26,'Tomás González','DJ Tomy','España'),(27,'Fernando Martínez','DJ Fefo','México'),(28,'Ricardo Ramírez','DJ Rico','Colombia'),(29,'Álvaro Hernández','DJ Alvi','Argentina'),(30,'Carlos Sánchez','DJ Carlitos','Chile'),(31,'Elena Rodríguez','DJ Lena','Perú'),(32,'David Torres','DJ Davi','Venezuela'),(33,'Carlos Jiménez','DJ Calito','Uruguay'),(34,'Paula González','DJ Pao','España'),(35,'Luis Salazar','DJ Lucho','México'),(36,'José Martínez','DJ Pepe M.','Colombia'),(37,'Verónica Gómez','DJ Vero','Argentina'),(38,'Juan Carlos Pérez','DJ Juan C.','Chile'),(39,'Mónica Ramírez','DJ Mónica','Perú'),(40,'Rafael González','DJ Rafa','Venezuela'),(41,'Isabel Fernández','DJ Isa','Uruguay'),(42,'Marcelo Pérez','DJ Marce','España'),(43,'Ricardo López','DJ Riki','México'),(44,'Antonio Rodríguez','DJ Tony','Colombia'),(45,'Natalia Martínez','DJ Naty','Argentina'),(46,'Javier Sánchez','DJ Javi','Chile'),(47,'José Gómez','DJ Joselito','Perú'),(48,'Laura Ramírez','DJ Laura','Venezuela'),(49,'Santiago Pérez','DJ Santi','Uruguay'),(50,'Carlos Ortega','DJ Carlito','España'),(51,'José Luis García','DJ Luis','México'),(52,'Bárbara Rodríguez','DJ Barbi','Colombia'),(53,'David Fernández','DJ Davito','Argentina'),(54,'Fernando Sánchez','DJ Fercho','Chile'),(55,'Lucía Torres','DJ Luchita','Perú'),(56,'Carlos Pérez','DJ Calito','Venezuela'),(57,'Adriana Gómez','DJ Adri','Uruguay'),(58,'Rocío Fernández','DJ Roci','España'),(59,'Ricardo Ramírez','DJ Riky R.','México'),(60,'Esteban González','DJ Estebita','Colombia'),(61,'Mariana Pérez','DJ Mariana','Argentina'),(62,'Carlos Hernández','DJ Carli','Chile'),(63,'José Salazar','DJ Jota','Perú'),(64,'Lourdes Rodríguez','DJ Luli','Venezuela'),(65,'Victoriano Pérez','DJ Vico','Uruguay'),(66,'Patricia López','DJ Pati','España'),(67,'Carlos López','DJ Carlitos L.','México'),(68,'David Ramos','DJ Ramo','Colombia'),(69,'María García','DJ Maria G.','Argentina'),(70,'Víctor Pérez','DJ Vico','Chile'),(71,'José Luis Salazar','DJ Pepe L.','Perú'),(72,'Claudia González','DJ Clau','Venezuela'),(73,'Ricardo Rodríguez','DJ Riko','Uruguay'),(74,'Álvaro Pérez','DJ Alvi','España'),(75,'Beatriz Ramírez','DJ Bea R.','México'),(76,'Felipe Torres','DJ Felipe','Colombia'),(77,'Sofia Martínez','DJ Sofi M.','Argentina'),(78,'David Salazar','DJ Davito','Chile'),(79,'Carlos Díaz','DJ Carlitos D.','Perú'),(80,'Ana González','DJ Anis','Venezuela'),(81,'Luis Martínez','DJ Luisito','Uruguay'),(82,'Fernando Pérez','DJ Fefo','España'),(83,'Santiago Ramírez','DJ Santi R.','México'),(84,'Carlos González','DJ Carlitos G.','Colombia'),(85,'María López','DJ Mari L.','Argentina'),(86,'Gabriela Pérez','DJ Gaby','Chile'),(87,'Victor Salazar','DJ Viti','Perú'),(88,'Ricardo Hernández','DJ Riky H.','Venezuela'),(89,'Adriana Pérez','DJ Adri P.','Uruguay'),(90,'Juan Gómez','DJ Juano','España'),(91,'Antonio Martínez','DJ Toni M.','México'),(92,'Lucía López','DJ Lucita','Colombia'),(93,'Raúl Rodríguez','DJ Raulito','Argentina'),(94,'José García','DJ Pepe G.','Chile'),(95,'Marta González','DJ Marta G.','Perú'),(96,'Carlos Pérez','DJ Calito P.','Venezuela'),(97,'Ricardo Fernández','DJ Riki F.','Uruguay'),(98,'Ana Ramírez','DJ Ana R.','España'),(99,'Esteban Pérez','DJ Estebita P.','México'),(100,'David López','DJ Davi L.','Colombia'),(101,'Carlos Martínez','DJ Carlos M.','Argentina'),(102,'Santiago Salazar','DJ Santi S.','Chile'),(103,'María Ramírez','DJ Maria R.','Perú'),(104,'Ricardo Pérez','DJ Ricardito','Venezuela'),(105,'Laura González','DJ Luli','Uruguay'),(106,'Marcelo Ramírez','DJ Marcelo','España'),(107,'José Sánchez','DJ Pepe S.','México'),(108,'Mónica Rodríguez','DJ Mónica R.','Colombia'),(109,'Alfredo Pérez','DJ Alfredo','Argentina'),(110,'Ricardo Gómez','DJ Riky G.','Chile'),(111,'Sofía Salazar','DJ Sofi S.','Perú'),(112,'Carlos López','DJ Carlitos L.','Venezuela'),(113,'Patricia Ramírez','DJ Pati R.','Uruguay'),(114,'Roberto González','DJ Rober','España'),(115,'Gabriela Rodríguez','DJ Gaby R.','Argentina'),(116,'David Rodríguez','DJ Verse','España'),(117,'Carlos Gómez','DJ Sonicko','Argentina'),(118,'Alberto González','DJ AlcaZone','México'),(119,'Andrés Fernández','DJ Andresito','Colombia'),(120,'José Luis Martínez','DJ Joselo','Chile'),(121,'Javier Gómez','DJ Javi G.','Venezuela'),(122,'Ricardo Salazar','DJ Riki S.','Perú'),(123,'Mónica González','DJ Moni G.','Uruguay'),(124,'Carlos Martínez','DJ Carlito M.','España'),(125,'Fernando Ramírez','DJ Fefo R.','México'),(126,'Martín López','DJ Martín L.','Argentina'),(127,'José Rodríguez','DJ Josito R.','Colombia'),(128,'Álvaro González','DJ Alvi G.','Chile'),(129,'Lucía Ramírez','DJ Luce','Perú'),(130,'David Pérez','DJ Davito P.','Venezuela'),(131,'Javier Rodríguez','DJ Javi R.','Uruguay'),(132,'Carlos Hernández','DJ Calito H.','España'),(133,'Patricia Sánchez','DJ Pati S.','México'),(134,'Carlos González','DJ Carlos G.','Argentina'),(135,'María Pérez','DJ Marita','Colombia'),(136,'Luis Ramírez','DJ Lucho R.','Chile'),(137,'Juan Salazar','DJ Juanito S.','Perú'),(138,'Beatriz López','DJ Bea L.','Venezuela'),(139,'Roberto Martínez','DJ Rober M.','Uruguay'),(140,'Alfredo González','DJ Alfie','España'),(141,'José García','DJ Joselito G.','México'),(142,'Santiago Fernández','DJ Santi F.','Argentina'),(143,'Marta Rodríguez','DJ Martita R.','Colombia'),(144,'Carlos Salazar','DJ Calo S.','Chile'),(145,'David González','DJ Davo G.','Perú'),(146,'Juan Ramírez','DJ Juan R.','Venezuela'),(147,'Ricardo Pérez','DJ Riki P.','Uruguay'),(148,'Fernando González','DJ Fercho G.','España'),(149,'Mónica Ramírez','DJ Mónica R.','México');
/*!40000 ALTER TABLE `dj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freestyler`
--

DROP TABLE IF EXISTS `freestyler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freestyler` (
  `ID_Freestyler` int NOT NULL,
  `Nombre_Real` varchar(100) DEFAULT NULL,
  `AKA` varchar(100) DEFAULT NULL,
  `Nacionalidad` varchar(50) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`ID_Freestyler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freestyler`
--

LOCK TABLES `freestyler` WRITE;
/*!40000 ALTER TABLE `freestyler` DISABLE KEYS */;
INSERT INTO `freestyler` VALUES (1,'Sergio Castro','Chuty','España','1993-10-25'),(2,'José Miguel Manzano','Skone','España','1989-01-09'),(3,'Ayax Pedrosa','Ayax','España','1991-03-25'),(4,'José Antonio Ramos','Rels B','España','1993-07-09'),(5,'Javier Bonet','Bnet','España','1998-02-07'),(6,'Ignacio Romero','Mnak','España','1997-02-16'),(7,'Federico Muñoz','Kaiser','Chile','1995-05-22'),(8,'Camilo Ballesteros','Valles-T','Colombia','1995-02-02'),(9,'José Luis Martínez','Force','España','1994-04-03'),(10,'Gabriel Jara','Gazir','España','1999-05-01'),(11,'Valentin Oliva','Wos','Argentina','1998-02-23'),(12,'Gaston Gómez','Dtoke','Argentina','1990-04-04'),(13,'José María Navarro','Kapo013','España','1989-12-01'),(14,'Alejandro Lococo','Papo MC','Argentina','1993-11-21'),(15,'Daniel Quintero','McManin','Chile','1994-03-10'),(16,'Santiago Andrada','Cacha','Argentina','1996-05-15'),(17,'Efraín Jesús','El Menor','España','1998-07-17'),(18,'Sergio Chaves','Mestre','España','1997-08-03'),(19,'Daniel Campaña','Lit Killa','Argentina','1995-09-10'),(20,'Mauro Pérez','Tata','Argentina','1996-01-12'),(21,'Carlos Sánchez','Noble','Chile','1995-02-05'),(22,'Alejandro Pérez','Teorema','Chile','1994-07-14'),(23,'Juan Ortelli','Juan Ortelli','Argentina','1992-03-14'),(24,'Kevin Almonacid','K2','Chile','1998-06-21'),(25,'Santiago Delgado','Santiaga','Argentina','1997-11-17'),(26,'Cristian Rodríguez','Nehuen','Argentina','1994-01-07'),(27,'Julian Romero','Juli','Chile','1995-10-11'),(28,'Rafael Prado','XOD','Perú','1993-12-28'),(29,'Alejandro Diaz','Javo','México','1992-08-15'),(30,'Felipe Gonzalez','Demitrius','México','1994-06-10'),(31,'Marcos Ferreyra','Queri','Chile','1995-11-21'),(32,'Rafael Suárez','Ecul','Ecuador','1995-07-04'),(33,'Javier González','FUSE','Uruguay','1996-01-21'),(34,'Daniel Cruz','Daniel C.','México','1995-05-02'),(35,'Carlos García','Cano','Chile','1997-03-17'),(36,'Julio González','Julián','Perú','1998-09-12'),(37,'Esteban González','The Sinte','México','1996-02-24'),(38,'Pedro Solano','Enzo','Argentina','1996-11-30'),(39,'Carlos Salvador','Alexis','México','1995-10-19'),(40,'Antonio Paredes','La Juega','Chile','1998-04-28'),(41,'Héctor González','Mata','España','1995-01-18'),(42,'Luciano Melgar','Lucho','Argentina','1997-12-15'),(43,'Rodrigo Cortés','Lado','México','1993-08-03'),(44,'Lucas Torres','Dólar','Chile','1994-06-17'),(45,'Esteban Vázquez','Ludlow','Perú','1996-03-09'),(46,'Felipe Torres','Taz','México','1995-06-01'),(47,'Ricardo Hernández','El Ricco','Argentina','1994-11-05'),(48,'Alejandro Vázquez','Lazzio','Chile','1997-12-23'),(49,'Luis Pérez','Carnal','México','1994-09-15'),(50,'Renzo Pérez','Duko','Argentina','1997-06-10'),(51,'Javier Salado','Alek','España','1996-02-07'),(52,'José Manuel Rejón','Sweet Pain','España','1993-01-16'),(53,'Luciano Rodríguez','Papano','Argentina','1992-04-01'),(54,'Carlos González','Joqqer','Chile','1994-07-14'),(55,'Víctor Pérez','Tatilo','México','1997-05-20'),(56,'Luis Javier Castillo','Skill','Perú','1995-09-03'),(57,'Marcos Rodríguez','Dani','España','1994-12-13'),(58,'Carlos Andrés Sánchez','Pablito','México','1992-05-21'),(59,'Andrés González','Rapper','Argentina','1991-10-10'),(60,'Marcelo Vilches','ElNoMenor','Chile','1995-10-02'),(61,'Ricardo Salazar','Janga','Perú','1996-07-08'),(62,'Antonio Ríos','Chanel','España','1997-11-05'),(63,'Felipe Ramos','Kaisiur','México','1993-08-10'),(64,'Roberto Valenzuela','Big Mac','Chile','1996-02-17'),(65,'Juan Carlos Pérez','Mata','Perú','1997-02-04'),(66,'David Gómez','Chutalor','España','1992-10-25'),(67,'Marcos Oliva','Maniel','México','1996-01-14'),(68,'Alejandro López','Trone','España','1992-02-09'),(69,'Daniel Pérez','Vass','Argentina','1998-02-23'),(70,'Juan Ramón Martínez','Bizarro','México','1997-03-16'),(71,'Carlos Pérez','MP','Argentina','1994-08-25'),(72,'Santiago Gómez','El Chacal','Chile','1993-03-14'),(73,'Andrés Rivas','Dimitri','México','1994-12-10'),(74,'Santiguo Conchil','TeCno','Chile','1994-02-03'),(75,'Sebastián Ramírez','Tata','Perú','1995-06-30'),(76,'Nicolás Rodríguez','Michu','España','1993-07-12'),(77,'Iván Martínez','Kiko','Argentina','1996-05-22'),(78,'Carlos Fernández','Cachai','México','1995-06-19'),(79,'Rodrigo Rodríguez','Roli','Chile','1997-03-22'),(80,'Emilio Ramírez','Luisito','Perú','1996-04-12'),(81,'Esteban Salazar','Stiven','España','1992-04-20'),(82,'Marcos López','Deker','México','1995-07-14'),(83,'Cristian Ramírez','Taker','Argentina','1994-11-07'),(84,'Carlos Paredes','Mateo','Chile','1996-05-04'),(85,'Ricardo García','Luán','Perú','1995-03-13'),(86,'Luis Hernández','Santi','México','1997-06-30'),(87,'Javier Silva','La Bestia','Chile','1994-10-10'),(88,'Santiago Pérez','Nene','Argentina','1995-09-23'),(89,'José Pérez','Leche','Perú','1997-08-22'),(90,'Carlos Torres','El Juez','México','1994-01-03'),(91,'Iván Rodríguez','Gordo','Chile','1997-06-17'),(92,'Jorge González','Patey','Perú','1996-02-28'),(93,'Antonio Ramírez','Canelo','México','1997-04-25'),(94,'Ricardo González','Matador','Argentina','1995-11-11'),(95,'Santiago Ruiz','Kaiser','México','1994-07-17'),(96,'Carlos Soto','Chacal','Perú','1997-03-02'),(97,'David Pérez','Djurt','España','1993-12-30'),(98,'Rodrigo Sánchez','Rashid','México','1995-08-04'),(99,'Andrés Pérez','Tatual','Chile','1996-04-20'),(100,'Felipe Vázquez','Chino','Perú','1994-11-23'),(101,'Alejandro Ramos','Kryptonite','México','1995-05-12'),(102,'Guillermo Fernández','Ravi','Argentina','1996-09-23'),(103,'Juan Manuel López','Killer','España','1995-06-18'),(104,'Miguel Ángel González','Marcos','Chile','1994-01-20'),(105,'Martín Rodríguez','Flaco','Argentina','1996-08-02'),(106,'Óscar Gómez','Beto','Perú','1995-07-22'),(107,'Javier Sánchez','Pérez','México','1997-04-06'),(108,'Carlos Oliva','Javi','España','1993-11-03'),(109,'Emilio Rodríguez','Azul','Argentina','1997-01-15'),(110,'Pablo González','Rico','Chile','1994-10-07'),(111,'Esteban Ortega','El Ciego','Perú','1995-03-21'),(112,'Santiago Fernández','Spartan','México','1997-05-30'),(113,'Ricardo López','Drako','Argentina','1993-04-17'),(114,'Antonio García','Zedd','Chile','1996-12-23'),(115,'Pedro Sánchez','El Guerrero','Perú','1997-07-04'),(116,'Fernando Salazar','Fede','México','1994-06-09'),(117,'Carlos Martínez','El Trueno','España','1995-08-19'),(118,'Juan José Pérez','Conde','Argentina','1996-02-12'),(119,'Cristian Vázquez','Lex','Chile','1997-09-03'),(120,'Sergio Ramírez','Neto','México','1996-11-10'),(121,'Ricardo Martínez','Rey','Perú','1997-06-02'),(122,'Joaquín Rodríguez','Medi','España','1993-05-27'),(123,'Luis Romero','Maximus','Argentina','1994-09-14'),(124,'Juan Manuel Fernández','El Loco','Chile','1996-12-25'),(125,'Carlos García','Kamaleón','Perú','1997-05-05'),(126,'Álvaro Martínez','Rengo','México','1994-04-22'),(127,'José Gómez','Fili','España','1996-01-17'),(128,'David López','Moreno','Argentina','1995-03-30'),(129,'Héctor Silva','El Toro','Chile','1996-08-01'),(130,'Manuel Sánchez','Neo','México','1997-11-13'),(131,'Javier Pérez','Sombra','Perú','1994-12-11'),(132,'Carlos Salazar','Cadáver','España','1996-10-15'),(133,'Ricardo González','Riz','Argentina','1994-12-02'),(134,'Felipe Martín','El Pibe','Chile','1997-07-07'),(135,'Tomás Rodríguez','Fenix','México','1995-01-12'),(136,'Sebastián Romero','Tito','Perú','1996-09-21'),(137,'Luis González','Omar','España','1997-03-18'),(138,'Rafael Rodríguez','Romero','Argentina','1995-07-09'),(139,'Víctor Pérez','Piero','Chile','1994-03-24'),(140,'José Sánchez','Kiri','México','1996-06-01'),(141,'Santiago López','El Chileno','Perú','1997-12-18'),(142,'Miguel Torres','Rocco','España','1996-09-15'),(143,'Andrés González','El Matador','Argentina','1994-10-08'),(144,'Fernando Pérez','León','Chile','1997-06-12'),(145,'David Ramírez','Cipriano','México','1995-02-22'),(146,'Ricardo Sánchez','El Rey','Perú','1996-07-11'),(147,'Oscar Pérez','Zorra','España','1997-05-23'),(148,'Iván González','LaChacal','Argentina','1993-08-28'),(149,'Lucas Martínez','Eros','Chile','1995-11-20'),(150,'Carlos Rivas','Dominio','México','1997-04-17'),(151,'Christian Navas','Navas','España','1997-04-17'),(152,'Dody Van den Bosch','dvan47','Brazil','2002-04-04'),(153,'Addie Juszkiewicz','ajuszkiewicz48','China','2001-05-25'),(154,'Carola Otteridge','cotteridge49','China','2004-12-06'),(155,'Rosabella Wilkenson','rwilkenson4a','China','2003-08-04'),(156,'Iris Cummins','icummins4b','China','2003-03-11'),(157,'Steffi Keenlayside','skeenlayside4c','Netherlands','2003-06-16'),(158,'Rachelle Abramin','rabramin4d','Maldives','2002-12-29'),(159,'Jobina Meuse','jmeuse4e','Nepal','2002-04-19'),(160,'Lemar Hardie','lhardie4f','Indonesia','2002-07-15'),(161,'Antonius Schreiner','aschreiner4g','France','2002-11-11'),(162,'Ethelin Willgress','ewillgress4h','Dominican Republic','2001-04-04'),(163,'Aloysia Reddington','areddington4i','Jamaica','2004-09-14'),(164,'Deane Cleef','dcleef4j','Jamaica','2001-08-01'),(165,'Hildy Klima','hklima4k','China','2004-10-10'),(166,'Brendin Bickerton','bbickerton4l','China','2005-02-19'),(167,'Sonnie Gostall','sgostall4m','China','2004-07-17'),(168,'Nonna Shearme','nshearme4n','Argentina','2004-05-24'),(169,'Fidela Segrott','fsegrott4o','Colombia','2001-04-14'),(170,'Alvy Crisp','acrisp4p','China','2002-01-14'),(171,'Gayel MacCook','gmaccook4q','Brazil','2003-02-27'),(172,'Audy Audrey','aaudrey4r','Sweden','2002-12-10'),(173,'Burnard Crowley','bcrowley4s','Indonesia','2003-11-18'),(174,'Marilyn Liepina','mliepina4t','Paraguay','2004-10-21'),(175,'Stanly Faudrie','sfaudrie4u','Philippines','2001-04-29'),(176,'Gerta Radmore','gradmore4v','Philippines','2003-01-24'),(177,'Bil Whichelow','bwhichelow4w','Pakistan','2004-11-02'),(178,'Joanna Misselbrook','jmisselbrook4x','South Africa','2003-12-07'),(179,'Berny Pietruszka','bpietruszka4y','Greece','2004-10-14'),(180,'Hanan Switland','hswitland4z','Poland','2002-02-14'),(181,'Penelopa Stirgess','pstirgess50','Haiti','2002-01-05'),(182,'Adelle Moth','amoth51','Brazil','2002-08-02'),(183,'Clair Misken','cmisken52','Honduras','2004-07-02'),(184,'Erhart Floweth','efloweth53','Russia','2001-06-22'),(185,'Calv Kemell','ckemell54','Poland','2004-04-16'),(186,'Charlene Carletti','ccarletti55','Morocco','2004-03-10'),(187,'Deloria Fudge','dfudge56','Russia','2001-08-20'),(188,'Purcell Galero','pgalero57','China','2003-11-06'),(189,'Chickie Barradell','cbarradell58','Indonesia','2004-04-10'),(190,'Maje Lindenman','mlindenman59','Indonesia','2002-11-15'),(191,'Cosmo Arnopp','carnopp5a','Russia','2004-12-05'),(192,'Guthry Wilsone','gwilsone5b','Mongolia','2001-04-24'),(193,'Evyn Briztman','ebriztman5c','China','2003-11-23'),(194,'Sonnie Paffot','spaffot5d','Norway','2002-04-30'),(195,'Laraine Brooksbie','lbrooksbie5e','Indonesia','2003-07-22'),(196,'Kristofer Rapo','krapo5f','Poland','2004-08-02'),(197,'Sarette Demoge','sdemoge5g','China','2003-02-13'),(198,'Gerek Crossfeld','gcrossfeld5h','France','2003-07-22'),(199,'Justin Treslove','jtreslove5i','Brazil','2004-09-17'),(200,'Malvina Gianolo','mgianolo5j','China','2003-08-19'),(201,'Mort Humberstone','mhumberstone5k','Argentina','2003-04-24'),(202,'Ola Wadman','owadman5l','China','2001-04-11'),(203,'Clywd Ordidge','cordidge5m','Indonesia','2005-02-27'),(204,'Meghann Manjot','mmanjot5n','Russia','2004-07-31'),(205,'Woody Cleynman','wcleynman5o','China','2002-03-18'),(206,'Min Ramsay','mramsay5p','Peru','2002-05-31'),(207,'Sammy Jossum','sjossum5q','Myanmar','2002-05-26'),(208,'Percival Every','pevery5r','China','2003-09-14'),(209,'Saraann Bezley','sbezley5s','China','2003-06-09'),(210,'Rebeka Godsmark','rgodsmark5t','Russia','2004-05-08'),(211,'Cassius Beavors','cbeavors5u','Canada','2003-01-15'),(212,'Elinore Rimour','erimour5v','Greece','2003-01-10'),(213,'Gizela Rudram','grudram5w','Philippines','2004-10-15'),(214,'Alick Writer','awriter5x','China','2003-02-27'),(215,'Louella Cardiff','lcardiff5y','Russia','2003-04-17'),(216,'Dion Jouannisson','djouannisson5z','Mexico','2002-09-09'),(217,'Davy Brockington','dbrockington60','Sweden','2004-01-06'),(218,'Diego Lancley','dlancley61','Bolivia','2003-12-09'),(219,'Jessamyn Simonel','jsimonel62','Germany','2001-12-26'),(220,'Babb Mowlam','bmowlam63','China','2004-03-12'),(221,'Vernor Melody','vmelody64','Brazil','2003-02-04'),(222,'Kristo Fritschmann','kfritschmann65','Indonesia','2002-06-28'),(223,'Danika Aldersea','daldersea66','Finland','2005-01-11'),(224,'Celine Millen','cmillen67','Guinea','2004-01-20'),(225,'Micky Swinford','mswinford68','Russia','2005-02-24'),(226,'Lewiss Kausche','lkausche69','Ukraine','2002-10-04'),(227,'Lazarus Beckwith','lbeckwith6a','Indonesia','2001-06-27'),(228,'Davidde Elcom','delcom6b','Portugal','2002-07-09'),(229,'Chelsae Whartonby','cwhartonby6c','Indonesia','2002-01-20'),(230,'Jake Colegate','jcolegate6d','Qatar','2004-02-17'),(231,'Adolphus Mansfield','amansfield6e','Argentina','2003-03-02'),(232,'Richard Bourgour','rbourgour6f','Ukraine','2001-10-09'),(233,'Laurel Eslie','leslie6g','Indonesia','2004-06-04'),(234,'Pamella Iddins','piddins6h','China','2004-04-30'),(235,'Jan Benedek','jbenedek6i','Luxembourg','2002-03-25'),(236,'Ambrosi Swayne','aswayne6j','Russia','2004-10-07'),(237,'Elizabeth Hildrew','ehildrew6k','Philippines','2001-04-10'),(238,'Godfry Churchman','gchurchman6l','Argentina','2004-10-12'),(239,'Titos Shiers','tshiers6m','Japan','2004-10-26'),(240,'Barnebas Buffham','bbuffham6n','Norway','2005-02-07'),(241,'Maisey Parlott','mparlott6o','Peru','2003-10-12'),(242,'Mathe Rablan','mrablan6p','Japan','2004-01-13'),(243,'Nikos Dibdale','ndibdale6q','Philippines','2002-09-26'),(244,'Muffin Duffield','mduffield6r','China','2005-03-01'),(245,'Violante Dryden','vdryden6s','Argentina','2002-04-22'),(246,'Bernita Brixey','bbrixey6t','Portugal','2002-08-22'),(247,'Lammond Janko','ljanko6u','France','2002-06-11'),(248,'Clint Musicka','cmusicka6v','Czech Republic','2002-04-18'),(249,'Tori Lishman','tlishman6w','China','2004-09-22'),(250,'Roxanne Roakes','rroakes6x','Argentina','2004-01-20'),(251,'Shanta O\'Finan','sofinan6y','Indonesia','2002-10-02'),(252,'Vicki Lever','vlever6z','China','2003-12-16'),(253,'Dorine Etock','detock70','Poland','2002-01-09'),(254,'Madelle Kittredge','mkittredge71','France','2002-01-22'),(255,'Gael Hailston','ghailston72','Russia','2003-10-27'),(256,'Der Agostini','dagostini73','Indonesia','2001-08-24'),(257,'Haily McCuffie','hmccuffie74','Indonesia','2004-08-01'),(258,'Tulley Angeli','tangeli75','Indonesia','2004-04-17'),(259,'Kellsie Blaisdell','kblaisdell76','Russia','2003-02-01'),(260,'Collie Jiggle','cjiggle77','Indonesia','2003-02-24'),(261,'Doralynne Carbery','dcarbery78','Poland','2001-10-30'),(262,'Scotty Melhuish','smelhuish79','Czech Republic','2002-10-29'),(263,'Franz McKilroe','fmckilroe7a','Cuba','2002-06-01'),(264,'Bart Stening','bstening7b','Indonesia','2001-05-14'),(265,'Nalani Arrell','narrell7c','Russia','2004-02-09'),(266,'Godard Kermath','gkermath7d','Indonesia','2002-06-20'),(267,'Marcy Marples','mmarples7e','China','2001-12-26'),(268,'Laurella Knowlton','lknowlton7f','Colombia','2002-07-19'),(269,'Dall Cryer','dcryer7g','Thailand','2003-06-22'),(270,'Clerissa Darlington','cdarlington7h','Greece','2003-04-09'),(271,'Dolf Essery','dessery7i','Russia','2005-01-13'),(272,'Bastian Schusterl','bschusterl7j','Indonesia','2004-07-24'),(273,'Quinn Tenant','qtenant7k','Uruguay','2004-09-11'),(274,'Cazzie Krysztofiak','ckrysztofiak7l','Azerbaijan','2004-12-03'),(275,'Ted Blakeborough','tblakeborough7m','Czech Republic','2004-11-08'),(276,'Case Mulloch','cmulloch7n','France','2002-09-09'),(277,'Violet Kiessel','vkiessel7o','Japan','2001-09-05'),(278,'Cullen Casaccio','ccasaccio7p','Sweden','2002-10-28'),(279,'Arnold Cammock','acammock7q','Poland','2004-08-25'),(280,'Freddy Carswell','fcarswell7r','Philippines','2004-11-05'),(281,'Ginevra Rawnsley','grawnsley7s','Philippines','2004-12-22'),(282,'Natalee Kellaway','nkellaway7t','Poland','2003-06-29'),(283,'Meade Ancliffe','mancliffe7u','Russia','2005-02-25'),(284,'Berny Bickerstasse','bbickerstasse7v','Poland','2001-08-04'),(285,'Giusto Mcsarry','gmcsarry7w','China','2003-05-14'),(286,'Felisha Prodrick','fprodrick7x','China','2004-06-20'),(287,'Molly Marchment','mmarchment7y','Indonesia','2004-05-30'),(288,'Karrie Rudgley','krudgley7z','Indonesia','2002-08-01'),(289,'Berny Shivlin','bshivlin80','Mexico','2002-06-29'),(290,'Beilul Deason','bdeason81','Canada','2003-12-24'),(291,'Mayor Sommerfeld','msommerfeld82','Poland','2004-12-03'),(292,'Annabell Dootson','adootson83','Oman','2002-12-17'),(293,'Ronny Guile','rguile84','Peru','2004-07-03'),(294,'Dion Lyndon','dlyndon85','China','2003-11-06'),(295,'Packston Imorts','pimorts86','Indonesia','2003-02-14'),(296,'Yalonda Cypler','ycypler87','Kiribati','2002-11-14'),(297,'Pen Rutherford','prutherford88','Chile','2004-07-16'),(298,'Gray Defries','gdefries89','Poland','2003-11-02'),(299,'Ben Osmon','bosmon8a','Libya','2004-03-13'),(300,'Padraic Lalonde','plalonde8b','Russia','2003-08-13'),(301,'Gale Naish','gnaish8c','Russia','2004-07-13'),(302,'Cinda Townby','ctownby8d','China','2001-08-23'),(303,'Ketty Goldhawk','kgoldhawk8e','Indonesia','2003-02-14'),(304,'Ethelyn Hammerich','ehammerich8f','Syria','2004-03-14'),(305,'Conan Bradley','cbradley8g','Brazil','2004-05-24'),(306,'Kara Gasquoine','kgasquoine8h','Thailand','2004-01-13'),(307,'Corbett McEntegart','cmcentegart8i','Brazil','2002-10-06'),(308,'Felipe Bramo','fbramo8j','Netherlands','2001-07-08'),(309,'Fredericka Rentelll','frentelll8k','Indonesia','2002-03-24'),(310,'Kellina Chaise','kchaise8l','Belarus','2001-12-06'),(311,'Isaac Argrave','iargrave8m','Albania','2002-11-08'),(312,'Dyna Stoneley','dstoneley8n','Indonesia','2003-08-14'),(313,'Tedmund Housby','thousby8o','Mexico','2002-11-22'),(314,'Rene Ughi','rughi8p','Indonesia','2001-10-09'),(315,'Petrina Bruyet','pbruyet8q','Peru','2001-09-04'),(316,'Freddie Magee','fmagee8r','France','2001-07-31'),(317,'Nathanael Madine','nmadine8s','Russia','2004-04-17'),(318,'Patric Tomasik','ptomasik8t','Namibia','2002-03-27'),(319,'Sonnnie Moquin','smoquin8u','Sweden','2001-11-02'),(320,'Benita Tuttle','btuttle8v','Indonesia','2003-11-20'),(321,'Vivi Sampey','vsampey8w','Malaysia','2003-03-20'),(322,'Ashil Demangeon','ademangeon8x','Greece','2001-05-04'),(323,'Dolli Caldecutt','dcaldecutt8y','Nicaragua','2001-12-24'),(324,'Sib Reichartz','sreichartz8z','China','2002-08-11'),(325,'Darrick Garken','dgarken90','Indonesia','2002-10-26'),(326,'Gwenora Vasilik','gvasilik91','Jordan','2004-07-28'),(327,'Dolli Annakin','dannakin92','Bangladesh','2002-08-08'),(328,'Kiersten Wrist','kwrist93','China','2003-01-11'),(329,'Tedra Krysztowczyk','tkrysztowczyk94','Finland','2002-07-01'),(330,'Jenny Killelay','jkillelay95','Russia','2002-04-18'),(331,'Gabriel Hollingsbee','ghollingsbee96','China','2001-09-14'),(332,'Vivia Jarred','vjarred97','Austria','2001-05-04'),(333,'Winston Despenser','wdespenser98','Guatemala','2003-03-05'),(334,'Sigismondo Truswell','struswell99','China','2003-03-15'),(335,'Isabeau Garstang','igarstang9a','Dominican Republic','2005-01-25'),(336,'Farrell Grewcock','fgrewcock9b','China','2001-08-25'),(337,'Darn Eberlein','deberlein9c','China','2003-09-21'),(338,'Isis Westall','iwestall9d','Zambia','2004-02-09'),(339,'Ellen Mylchreest','emylchreest9e','Ireland','2004-04-21'),(340,'Dode Saterthwait','dsaterthwait9f','United States','2002-08-26'),(341,'Melvin Krause','mkrause9g','Peru','2001-09-03'),(342,'Rosalyn Huttley','rhuttley9h','Netherlands','2002-06-12'),(343,'Orv Carlon','ocarlon9i','Indonesia','2004-11-09'),(344,'Aubrey Blethin','ablethin9j','Indonesia','2003-07-30'),(345,'Brittney Moulder','bmoulder9k','Chile','2001-12-22'),(346,'Ebenezer Klimashevich','eklimashevich9l','China','2002-12-11'),(347,'Kali Dudley','kdudley9m','Luxembourg','2004-09-08'),(348,'Krista Giraudoux','kgiraudoux9n','Russia','2004-12-19'),(349,'Paige Shacklady','pshacklady9o','Philippines','2002-12-28'),(350,'Kailey Buston','kbuston9p','Latvia','2001-12-01'),(351,'Claus Sparshett','csparshett9q','Nigeria','2004-03-20'),(352,'Felipa Grishechkin','fgrishechkin9r','Portugal','2005-03-07'),(353,'Yolanda Stronack','ystronack9s','China','2003-04-26'),(354,'Ronalda Tome','rtome9t','Guatemala','2003-05-16'),(355,'Bartlet Olek','bolek9u','China','2003-01-29'),(356,'Belicia Reynolds','breynolds9v','China','2002-02-26'),(357,'Erik Morby','emorby9w','Moldova','2004-01-28'),(358,'Letty Philbrook','lphilbrook9x','Russia','2004-09-18'),(359,'Edwina Mengo','emengo9y','South Africa','2003-06-02'),(360,'Niki Tommis','ntommis9z','Brazil','2004-01-14'),(361,'Patsy Pidduck','ppidducka0','France','2003-05-28'),(362,'Lila De Castri','ldea1','Poland','2004-06-18'),(363,'Janeen Hancell','jhancella2','Russia','2004-11-05'),(364,'Giovanna Killshaw','gkillshawa3','Kazakhstan','2001-03-17'),(365,'Lauree Joscelin','ljoscelina4','Tajikistan','2005-01-14'),(366,'Orel Consadine','oconsadinea5','Sierra Leone','2001-09-08'),(367,'Justino Innocenti','jinnocentia6','Russia','2004-06-28'),(368,'Christoper Cousans','ccousansa7','Sweden','2005-02-01'),(369,'Margot O\'Daly','modalya8','United States','2002-07-08'),(370,'Randy Bonar','rbonara9','France','2001-12-23'),(371,'Lennie Erington','leringtonaa','Philippines','2002-04-16'),(372,'Sheba Molineaux','smolineauxab','Indonesia','2001-05-13'),(373,'Ignatius Dowson','idowsonac','Bosnia and Herzegovina','2004-12-03'),(374,'Amalita Wilkes','awilkesad','South Africa','2002-07-11'),(375,'Bartholomeus Cridland','bcridlandae','Russia','2003-07-29'),(376,'Kevan Pittet','kpittetaf','Ivory Coast','2003-10-30'),(377,'Ketti Tomasello','ktomaselloag','Madagascar','2003-08-02'),(378,'Lottie Dahlback','ldahlbackah','Luxembourg','2001-08-05'),(379,'Finley Roubert','froubertai','China','2003-01-11'),(380,'Brewer Robshaw','brobshawaj','Greece','2002-05-20'),(381,'Sigrid Harmson','sharmsonak','Russia','2005-01-27'),(382,'Nikolia Liepins','nliepinsal','Indonesia','2001-11-22'),(383,'Fidelia Kalkhoven','fkalkhovenam','United States','2004-09-28'),(384,'Jorrie Barthelet','jbartheletan','Panama','2004-05-10'),(385,'Obadiah Lindholm','olindholmao','China','2004-02-26'),(386,'Trudie Pinks','tpinksap','Taiwan','2004-01-12'),(387,'Barth Dainty','bdaintyaq','Norway','2003-05-28'),(388,'Madelin Dowson','mdowsonar','Greece','2001-09-16'),(389,'Morgen Novis','mnovisas','Honduras','2003-05-08'),(390,'Kalinda Mann','kmannat','Brazil','2004-12-08'),(391,'Renaud Thurlow','rthurlowau','Indonesia','2004-01-04'),(392,'Shelli Welburn','swelburnav','Mexico','2003-01-09'),(393,'Jobina Gornar','jgornaraw','Marshall Islands','2004-02-11'),(394,'Manolo Brace','mbraceax','Nigeria','2001-10-08'),(395,'Butch Barkus','bbarkusay','France','2004-09-13'),(396,'Tori Sills','tsillsaz','France','2001-09-04'),(397,'Drusi Menilove','dmeniloveb0','Russia','2004-01-04'),(398,'Ingaberg Radsdale','iradsdaleb1','France','2003-10-20'),(399,'Lancelot Prowting','lprowtingb2','Honduras','2002-01-13'),(400,'Marybeth Sorensen','msorensenb3','Chile','2003-09-08'),(401,'Erhard Clowney','eclowneyb4','Ukraine','2004-10-09'),(402,'Robin Petrishchev','rpetrishchevb5','Indonesia','2004-02-25'),(403,'Vincenz Yeude','vyeudeb6','Japan','2004-12-03'),(404,'Catherine Tolliday','ctollidayb7','Slovenia','2004-02-11'),(405,'Kelby Dudden','kduddenb8','France','2001-03-20'),(406,'Flem Tebboth','ftebbothb9','Burkina Faso','2002-02-11'),(407,'Isaak Gottelier','igottelierba','Russia','2002-12-15'),(408,'Briggs Palser','bpalserbb','China','2003-06-09'),(409,'Rhodie Shilston','rshilstonbc','France','2002-10-02'),(410,'Thorin Shattock','tshattockbd','China','2004-08-13'),(411,'Philly Frandsen','pfrandsenbe','Ukraine','2001-11-14'),(412,'Rebe Sivyour','rsivyourbf','Japan','2001-03-16'),(413,'Skyler Bradshaw','sbradshawbg','Sweden','2001-09-29'),(414,'Carlotta Cordes','ccordesbh','Comoros','2005-01-08'),(415,'Malynda Main','mmainbi','Canada','2001-08-24'),(416,'Flore Counsell','fcounsellbj','Sweden','2004-03-29'),(417,'Keene Ricardon','kricardonbk','Iran','2001-11-29'),(418,'Sansone Murrigan','smurriganbl','United States','2003-06-15'),(419,'Adolf Parr','aparrbm','Mexico','2004-01-12'),(420,'Karina Luckman','kluckmanbn','Panama','2001-06-20'),(421,'May Sapshed','msapshedbo','China','2004-04-22'),(422,'Zulema Shervil','zshervilbp','Czech Republic','2002-12-17'),(423,'Elisabeth Paddell','epaddellbq','Russia','2002-12-09'),(424,'Ive Bruggen','ibruggenbr','United States','2004-02-23'),(425,'Glenn Hanniger','ghannigerbs','Morocco','2003-05-03'),(426,'Hilary Lestor','hlestorbt','Indonesia','2001-12-30'),(427,'Danell Baskerfield','dbaskerfieldbu','Bolivia','2003-11-12'),(428,'Freemon Scutt','fscuttbv','China','2003-07-05'),(429,'Sofia Bloxholm','sbloxholmbw','United States','2003-09-15'),(430,'Vinny Gergher','vgergherbx','Mongolia','2003-11-08'),(431,'Babb Rraundl','brraundlby','Kazakhstan','2002-09-11'),(432,'Rowen Pillinger','rpillingerbz','Pakistan','2002-06-29'),(433,'Stearne Glenn','sglennc0','El Salvador','2002-09-19'),(434,'Bart Rosencwaig','brosencwaigc1','Indonesia','2003-03-06'),(435,'Garwin Frankum','gfrankumc2','Colombia','2003-09-08'),(436,'Caresa Nial','cnialc3','Venezuela','2005-01-10'),(437,'Worthington Shimwell','wshimwellc4','Argentina','2003-11-03'),(438,'Berget McLucas','bmclucasc5','Tunisia','2005-03-02'),(439,'Wilie Barefoot','wbarefootc6','China','2002-09-15'),(440,'Chelsy Huffa','chuffac7','Philippines','2002-12-14'),(441,'Orel Franz','ofranzc8','Finland','2001-08-26'),(442,'Zach Palfrie','zpalfriec9','Slovenia','2004-06-11'),(443,'Orbadiah Ambage','oambageca','China','2001-12-13'),(444,'Elsi Bridgeland','ebridgelandcb','Brazil','2001-04-27'),(445,'Wilden Budgen','wbudgencc','Thailand','2004-04-03'),(446,'Giacopo Bravey','gbraveycd','China','2002-03-31'),(447,'Blisse Fold','bfoldce','Philippines','2003-07-13'),(448,'Letty Cattow','lcattowcf','Japan','2001-08-25'),(449,'Malvin Halton','mhaltoncg','Russia','2004-03-23'),(450,'Ernesta Trelevan','etrelevanch','Philippines','2001-10-07'),(451,'Kissiah Petracchi','kpetracchici','China','2001-09-22'),(452,'Hermon Cornillot','hcornillotcj','China','2003-08-31'),(453,'Jarret Skyme','jskymeck','Sweden','2003-08-08'),(454,'Ami Beard','abeardcl','Gambia','2003-02-16'),(455,'Edward Crowch','ecrowchcm','Russia','2003-09-16'),(456,'Casey Duxfield','cduxfieldcn','Indonesia','2001-04-06'),(457,'Zsa zsa Borghese','zzsaco','Russia','2004-03-08'),(458,'Dexter Kinmond','dkinmondcp','Brazil','2002-06-24'),(459,'Ingra Brayn','ibrayncq','Peru','2004-08-07'),(460,'Nady Jaycox','njaycoxcr','Serbia','2003-10-21'),(461,'Daphene Edison','dedisoncs','China','2004-10-19'),(462,'Kris Orrow','korrowct','Philippines','2002-08-23'),(463,'Maurise Brolly','mbrollycu','Philippines','2003-03-06'),(464,'Janaye Wadeling','jwadelingcv','Portugal','2005-01-10'),(465,'Rakel Mc Dermid','rmccw','Portugal','2004-07-20'),(466,'Leoine Lumbers','llumberscx','Indonesia','2004-11-22'),(467,'Davey Farris','dfarriscy','Sweden','2002-07-27'),(468,'Trula Bean','tbeancz','Thailand','2002-09-17'),(469,'Zeb Couves','zcouvesd0','Peru','2003-10-07'),(470,'Dodi Ribey','dribeyd1','China','2002-07-20'),(471,'Lia Greening','lgreeningd2','Bulgaria','2003-09-12'),(472,'Arabele Schindler','aschindlerd3','China','2003-09-14'),(473,'Filippo Farnworth','ffarnworthd4','China','2004-05-23'),(474,'Emmanuel Ritchley','eritchleyd5','China','2002-09-15'),(475,'Fallon Fold','ffoldd6','Russia','2005-02-17'),(476,'Marwin Houlison','mhoulisond7','Ukraine','2002-04-16'),(477,'Whitney Piesold','wpiesoldd8','Philippines','2004-06-19'),(478,'Hillery Broadwell','hbroadwelld9','Brazil','2004-07-28'),(479,'Pen Joel','pjoelda','Philippines','2003-11-10'),(480,'Carney Dory','cdorydb','Philippines','2003-08-16'),(481,'Mayer Bewly','mbewlydc','Ukraine','2001-03-15'),(482,'Delano Abercromby','dabercrombydd','Greece','2002-10-09'),(483,'Lenore Deeves','ldeevesde','China','2002-07-15'),(484,'Maximo Kinforth','mkinforthdf','China','2004-11-13'),(485,'Garrek Mariet','gmarietdg','China','2004-09-30'),(486,'Ransell Vaadeland','rvaadelanddh','Egypt','2004-10-21'),(487,'Bartie Braunlein','bbraunleindi','Philippines','2004-09-25'),(488,'Bronson Westney','bwestneydj','Bhutan','2002-09-17'),(489,'Teodoro Carnalan','tcarnalandk','Philippines','2004-04-29'),(490,'Darrell Pennycook','dpennycookdl','Japan','2002-10-31'),(491,'Rurik Say','rsaydm','Iran','2004-10-12'),(492,'Karel Walsh','kwalshdn','France','2004-01-04'),(493,'Maggee Wehner','mwehnerdo','Philippines','2004-10-29'),(494,'Gerrie Iiannoni','giiannonidp','Finland','2001-10-11'),(495,'Callean Stribbling','cstribblingdq','Thailand','2002-09-21'),(496,'Kiele Hulkes','khulkesdr','China','2001-08-22'),(497,'Howard Greatorex','hgreatorexds','Japan','2001-07-06'),(498,'Belva Sennett','bsennettdt','Russia','2001-04-25'),(499,'Wilt Sheridan','wsheridandu','Democratic Republic of the Congo','2003-11-11'),(500,'Danika Deviney','ddevineydv','Pakistan','2003-06-28');
/*!40000 ALTER TABLE `freestyler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juez`
--

DROP TABLE IF EXISTS `juez`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juez` (
  `ID_Juez` int NOT NULL,
  `Nombre_Real` varchar(100) DEFAULT NULL,
  `AKA` varchar(100) DEFAULT NULL,
  `Nacionalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Juez`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juez`
--

LOCK TABLES `juez` WRITE;
/*!40000 ALTER TABLE `juez` DISABLE KEYS */;
INSERT INTO `juez` VALUES (1,'Juan Pérez','JP','España'),(2,'María García','La Jueza','México'),(3,'Carlos López','Carlitos','Colombia'),(4,'Ana González','Anita','Argentina'),(5,'José Rodríguez','Pepe','Chile'),(6,'Lucía Martínez','Luchi','Perú'),(7,'David Fernández','Davo','Venezuela'),(8,'Paola Sánchez','Pau','Uruguay'),(9,'Ricardo Gómez','Ricky','España'),(10,'Beatriz López','Bea','México'),(11,'Juan Carlos Díaz','Juan C.','Colombia'),(12,'Verónica Torres','Vero','Argentina'),(13,'Esteban Hernández','Estebita','Chile'),(14,'Carmen Ruiz','Carmela','Perú'),(15,'Carlos Ramírez','Calo','Venezuela'),(16,'Mónica Díaz','Moni','Uruguay'),(17,'Héctor Jiménez','Héctor','México'),(18,'Elena Pérez','Lena','España'),(19,'Fernando Sánchez','Fer','Colombia'),(20,'Lorena Martínez','Lore','Argentina'),(21,'David Piezas','Piezas','España'),(22,'Álvaro Kapo','Kapo','España'),(23,'David Estrada','Estrimo','España'),(24,'Santiago Núñez','Soen','España'),(25,'Carlos Núñez','Noult','España'),(26,'Benedicta Álvarez','Babi','España'),(27,'Juan Ortelli','Juan Ortelli','Argentina'),(28,'Juan Martín','JMT','Argentina'),(29,'Tomás Díaz','Tomy','Argentina'),(30,'Juan León','Juanito','México'),(31,'Santiago Rodríguez','Santi','Chile'),(32,'Gabriel Franco','HBD','Colombia'),(33,'Marta García','Marty','Perú'),(34,'Rafael Suárez','Rafa','Venezuela'),(35,'Carlos Martínez','Carlitos','Uruguay'),(36,'Ricardo Bravo','Richie','España'),(37,'Martín Rodríguez','Macho','Argentina'),(38,'José Salazar','Jota','Colombia'),(39,'Mónica López','Moni','México'),(40,'Ricardo Blanco','Riky','España'),(41,'Santiago Ramírez','Santi R.','México'),(42,'Antonio García','Toni','España'),(43,'Nicolás González','Nico','Argentina'),(44,'Andrés López','Andy','Colombia'),(45,'Patricia Martínez','Patri','Perú'),(46,'Javier Torres','Javi','Venezuela'),(47,'Eduardo Fernández','Edu','Chile'),(48,'Isabel Pérez','Isa','Uruguay'),(49,'Luis González','Lucho','España'),(50,'César Jiménez','Cezar','México'),(51,'Paula Díaz','Pau','Argentina'),(52,'Marcelo García','Marce','Colombia'),(53,'Emilio Romero','Emi','Venezuela'),(54,'Clara Díaz','Clari','Chile'),(55,'Ricardo Romero','Rico','Perú'),(56,'Cristina Soto','Cris','España'),(57,'José Ruiz','Pepe R.','México'),(58,'Victoria González','Vicky','Argentina'),(59,'Antonio Rodríguez','Tony','Colombia'),(60,'Laura Martínez','Laure','Uruguay'),(61,'Nicolás Ramírez','Nico R.','Chile'),(62,'Héctor Díaz','Héctor D.','Perú'),(63,'Rocío Fernández','Roci','Venezuela'),(64,'Raúl Martínez','Raulito','México'),(65,'Claudia López','Clau','España'),(66,'Iván Pérez','Ivi','Argentina'),(67,'Sofía Rodríguez','Sofi','Colombia'),(68,'Alejandro Martínez','Ale','Venezuela'),(69,'Carlos Sánchez','Carlitos S.','Chile'),(70,'Eduardo López','Edu L.','Uruguay'),(71,'Sonia Pérez','Sonita','España'),(72,'Rubén García','Rubi','México'),(73,'Patricio Fernández','Pato','Colombia'),(74,'Valeria Gómez','Vale','Argentina'),(75,'Fabiola Ramírez','Fabi','Venezuela'),(76,'Luis Martínez','Luisito','Chile'),(77,'Natalia Díaz','Naty','Uruguay'),(78,'Tomás Pérez','Tommy','México'),(79,'Julio González','Julito','España'),(80,'Roberto López','Robe','Argentina'),(81,'Víctor Ruiz','Víctorito','Colombia'),(82,'Diego Salazar','Diego','Chile'),(83,'Marcela Fernández','Marce','Perú'),(84,'Fernando Torres','Fer T.','España'),(85,'Sofía Ramírez','Sofi R.','México'),(86,'Raúl García','Raulito G.','Argentina'),(87,'César Martínez','Cesarito','Colombia'),(88,'Susana López','Susi','Venezuela'),(89,'Eugenio Pérez','Euge','Uruguay'),(90,'Laura Fernández','Lau','España'),(91,'Ricardo Rodríguez','Ricky R.','México'),(92,'Eva Ramírez','Evita','Argentina'),(93,'Joaquín González','Joaco','Colombia'),(94,'Diego Pérez','Dieguito','Chile'),(95,'Patricia López','Pati','Venezuela'),(96,'Carlos Díaz','Calo D.','México'),(97,'Mónica García','Moni G.','España'),(98,'Miguel Romero','Migue','Colombia'),(99,'Alicia Ramírez','Ali','Perú'),(100,'Jorge Martínez','Jorgito','Chile'),(101,'María Salazar','Maris','Uruguay'),(102,'César Sánchez','Cezar S.','Argentina'),(103,'Gabriela González','Gabi','México'),(104,'David Torres','Davo T.','España'),(105,'Marcela Pérez','Marci','Colombia'),(106,'Antonio Ramírez','Anto','Venezuela'),(107,'Carlos Rodríguez','Carlito R.','Chile'),(108,'Cristina Martínez','Cris M.','Perú'),(109,'Eduardo Pérez','Edu P.','España'),(110,'Bárbara Ramírez','Barbi','México'),(111,'José López','Pepe L.','Argentina'),(112,'José González','Pepe G.','Colombia'),(113,'Lina Martínez','Lina','Venezuela'),(114,'Joaquín Rodríguez','Joaco R.','Chile'),(115,'Isabel Pérez','Isa P.','Uruguay'),(116,'Patricia Fernández','Pati F.','España'),(117,'Luis López','Lucho L.','México'),(118,'Ricardo Fernández','Riky F.','Argentina'),(119,'Santiago Pérez','Santi P.','Colombia'),(120,'Gabriela Salazar','Gabi S.','Venezuela'),(121,'Adriana Rodríguez','Adri','Chile'),(122,'Eduardo López','Edu L.','Perú'),(123,'Miguel González','Migue G.','España'),(124,'Roberto Fernández','Robe F.','México'),(125,'Elena Sánchez','Lena S.','Argentina'),(126,'Luis Ramírez','Luis R.','Colombia'),(127,'Marta Pérez','Martita','Venezuela'),(128,'Victoriano López','Vico','Chile'),(129,'Cristina Rodríguez','Cris R.','Uruguay'),(130,'Alejandra Martínez','Aleja','España'),(131,'Joaquín González','Joaco G.','México'),(132,'Mónica Pérez','Moni P.','Argentina'),(133,'Isabel Ramírez','Isa R.','Colombia'),(134,'Adriana Pérez','Adri P.','Venezuela'),(135,'Carlos Rodríguez','Carlitos R.','Chile'),(136,'Lucía Fernández','Luci F.','Uruguay'),(137,'José Martínez','Pepe M.','España'),(138,'David Gómez','Davo G.','México'),(139,'Patricia González','Patri G.','Argentina'),(140,'Raúl Pérez','Raulito P.','Colombia'),(141,'Marta Rodríguez','Martita R.','Venezuela'),(142,'Ricardo López','Riky L.','Chile'),(143,'Carmen Ramírez','Carmela R.','Uruguay'),(144,'Victor Pérez','Vico P.','España'),(145,'José García','Pepe G.','México'),(146,'Paula González','Pau G.','Argentina'),(147,'Diego Ramírez','Diego R.','Colombia'),(148,'Luis Fernández','Luisito F.','Venezuela'),(149,'Cristina Pérez','Cris P.','Chile'),(150,'Mónica Ramírez','Moni R.','Uruguay');
/*!40000 ALTER TABLE `juez` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntaje_juez_batalla`
--

DROP TABLE IF EXISTS `puntaje_juez_batalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntaje_juez_batalla` (
  `ID_Juez` int NOT NULL,
  `ID_Freestyler` int NOT NULL,
  `ID_Batalla` int NOT NULL,
  `PTB` int DEFAULT NULL,
  PRIMARY KEY (`ID_Juez`,`ID_Freestyler`,`ID_Batalla`),
  KEY `fk_puntaje_final_batalla_juez1_idx` (`ID_Juez`),
  KEY `fk_puntaje_final_batalla_freestyler1_idx` (`ID_Freestyler`),
  KEY `fk_puntaje_final_batalla_batalla1_idx` (`ID_Batalla`),
  CONSTRAINT `fk_puntaje_final_batalla_batalla1` FOREIGN KEY (`ID_Batalla`) REFERENCES `batalla` (`ID_Batalla`),
  CONSTRAINT `fk_puntaje_final_batalla_freestyler1` FOREIGN KEY (`ID_Freestyler`) REFERENCES `freestyler` (`ID_Freestyler`),
  CONSTRAINT `fk_puntaje_final_batalla_juez1` FOREIGN KEY (`ID_Juez`) REFERENCES `juez` (`ID_Juez`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntaje_juez_batalla`
--

LOCK TABLES `puntaje_juez_batalla` WRITE;
/*!40000 ALTER TABLE `puntaje_juez_batalla` DISABLE KEYS */;
INSERT INTO `puntaje_juez_batalla` VALUES (1,1,1,50),(1,1,64,50),(1,1,65,50),(1,2,1,45),(1,3,63,45),(1,4,7,50),(1,6,4,50),(1,7,4,45),(1,10,7,45),(1,13,9,45),(1,14,9,50),(1,17,11,50),(1,18,11,45),(1,19,12,45),(1,20,12,50),(1,21,13,45),(1,22,13,50),(1,23,14,45),(1,24,14,50),(1,25,15,50),(1,26,15,45),(1,27,16,45),(1,28,16,50),(1,29,17,50),(1,30,17,45),(1,31,18,45),(1,32,18,50),(1,33,19,50),(1,34,19,45),(1,35,20,45),(1,36,20,50),(1,37,21,50),(1,38,21,45),(1,39,22,45),(1,40,22,50),(1,41,23,50),(1,42,23,45),(1,43,24,45),(1,44,24,50),(1,45,25,50),(1,46,25,45),(1,47,26,45),(1,48,26,50),(1,49,27,50),(1,50,27,45),(1,51,28,45),(1,52,28,50),(1,52,61,50),(1,52,62,50),(1,52,63,50),(1,53,29,50),(1,54,29,45),(1,55,30,45),(1,56,30,50),(1,57,31,50),(1,58,31,45),(1,59,32,45),(1,60,32,50),(1,65,35,50),(1,66,35,45),(1,67,36,45),(1,67,64,45),(1,68,36,50),(1,69,37,50),(1,70,37,45),(1,71,38,45),(1,72,38,50),(1,73,39,50),(1,74,39,45),(1,75,40,45),(1,76,40,50),(1,77,41,50),(1,78,41,45),(1,78,61,45),(1,79,42,45),(1,80,42,50),(1,81,43,50),(1,82,43,45),(1,83,44,45),(1,84,44,50),(1,85,45,50),(1,86,45,45),(1,87,46,45),(1,88,46,50),(1,89,47,50),(1,90,47,45),(1,91,48,45),(1,92,48,50),(1,93,49,50),(1,94,49,45),(1,95,50,45),(1,96,50,50),(1,97,51,50),(1,98,51,45),(1,99,52,45),(1,100,52,50),(1,101,53,50),(1,102,53,45),(1,103,54,45),(1,104,54,50),(1,105,55,50),(1,106,55,45),(1,107,56,45),(1,108,56,50),(1,109,57,50),(1,110,57,45),(1,111,58,45),(1,112,58,50),(1,112,65,45),(1,113,59,50),(1,114,59,45),(1,114,62,45),(1,115,60,45),(1,116,60,50),(1,117,66,50),(1,118,66,45),(2,1,1,48),(2,1,64,48),(2,1,65,48),(2,2,1,43),(2,3,63,43),(2,4,7,48),(2,6,4,48),(2,7,4,43),(2,10,7,43),(2,13,9,43),(2,14,9,48),(2,17,11,48),(2,18,11,43),(2,19,12,43),(2,20,12,48),(2,21,13,43),(2,22,13,48),(2,23,14,43),(2,24,14,48),(2,25,15,48),(2,26,15,43),(2,27,16,43),(2,28,16,48),(2,29,17,48),(2,30,17,43),(2,31,18,43),(2,32,18,48),(2,33,19,48),(2,34,19,43),(2,35,20,43),(2,36,20,48),(2,37,21,48),(2,38,21,43),(2,39,22,43),(2,40,22,48),(2,41,23,48),(2,42,23,43),(2,43,24,43),(2,44,24,48),(2,45,25,48),(2,46,25,43),(2,47,26,43),(2,48,26,48),(2,49,27,48),(2,50,27,43),(2,51,28,43),(2,52,28,48),(2,52,61,48),(2,52,62,48),(2,52,63,48),(2,53,29,48),(2,54,29,43),(2,55,30,43),(2,56,30,48),(2,57,31,48),(2,58,31,43),(2,59,32,43),(2,60,32,48),(2,65,35,48),(2,66,35,43),(2,67,36,43),(2,67,64,43),(2,68,36,48),(2,69,37,48),(2,70,37,43),(2,71,38,43),(2,72,38,48),(2,73,39,48),(2,74,39,43),(2,75,40,43),(2,76,40,48),(2,77,41,48),(2,78,41,43),(2,78,61,43),(2,79,42,43),(2,80,42,48),(2,81,43,48),(2,82,43,43),(2,83,44,43),(2,84,44,48),(2,85,45,48),(2,86,45,43),(2,87,46,43),(2,88,46,48),(2,89,47,48),(2,90,47,43),(2,91,48,43),(2,92,48,48),(2,93,49,48),(2,94,49,43),(2,95,50,43),(2,96,50,48),(2,97,51,48),(2,98,51,43),(2,99,52,43),(2,100,52,48),(2,101,53,48),(2,102,53,43),(2,103,54,43),(2,104,54,48),(2,105,55,48),(2,106,55,43),(2,107,56,43),(2,108,56,48),(2,109,57,48),(2,110,57,43),(2,111,58,43),(2,112,58,48),(2,112,65,43),(2,113,59,48),(2,114,59,43),(2,114,62,43),(2,115,60,43),(2,116,60,48),(2,117,66,48),(2,118,66,43),(3,1,1,47),(3,1,64,47),(3,1,65,47),(3,2,1,42),(3,3,63,42),(3,4,7,47),(3,6,4,42),(3,7,4,47),(3,10,7,42),(3,13,9,42),(3,14,9,47),(3,17,11,47),(3,18,11,42),(3,19,12,42),(3,20,12,47),(3,21,13,42),(3,22,13,47),(3,23,14,42),(3,24,14,47),(3,25,15,47),(3,26,15,42),(3,27,16,42),(3,28,16,47),(3,29,17,47),(3,30,17,42),(3,31,18,42),(3,32,18,47),(3,33,19,47),(3,34,19,42),(3,35,20,42),(3,36,20,47),(3,37,21,47),(3,38,21,42),(3,39,22,42),(3,40,22,47),(3,41,23,47),(3,42,23,42),(3,43,24,42),(3,44,24,47),(3,45,25,47),(3,46,25,42),(3,47,26,42),(3,48,26,47),(3,49,27,47),(3,50,27,42),(3,51,28,42),(3,52,28,47),(3,52,61,47),(3,52,62,47),(3,52,63,47),(3,53,29,47),(3,54,29,42),(3,55,30,42),(3,56,30,47),(3,57,31,47),(3,58,31,42),(3,59,32,42),(3,60,32,47),(3,65,35,47),(3,66,35,42),(3,67,36,42),(3,67,64,42),(3,68,36,47),(3,69,37,47),(3,70,37,42),(3,71,38,42),(3,72,38,47),(3,73,39,47),(3,74,39,42),(3,75,40,42),(3,76,40,47),(3,77,41,47),(3,78,41,42),(3,78,61,42),(3,79,42,42),(3,80,42,47),(3,81,43,47),(3,82,43,42),(3,83,44,42),(3,84,44,47),(3,85,45,47),(3,86,45,42),(3,87,46,42),(3,88,46,47),(3,89,47,47),(3,90,47,42),(3,91,48,42),(3,92,48,47),(3,93,49,47),(3,94,49,42),(3,95,50,42),(3,96,50,47),(3,97,51,47),(3,98,51,42),(3,99,52,42),(3,100,52,47),(3,101,53,47),(3,102,53,42),(3,103,54,42),(3,104,54,47),(3,105,55,47),(3,106,55,42),(3,107,56,42),(3,108,56,47),(3,109,57,47),(3,110,57,42),(3,111,58,42),(3,112,58,47),(3,112,65,42),(3,113,59,47),(3,114,59,42),(3,114,62,42),(3,115,60,42),(3,116,60,47),(3,117,66,47),(3,118,66,42),(4,1,1,49),(4,1,64,49),(4,1,65,49),(4,2,1,44),(4,3,63,44),(4,4,7,49),(4,6,4,44),(4,7,4,49),(4,10,7,44),(4,13,9,44),(4,14,9,49),(4,17,11,44),(4,18,11,49),(4,19,12,44),(4,20,12,49),(4,21,13,44),(4,22,13,49),(4,23,14,44),(4,24,14,49),(4,25,15,44),(4,26,15,49),(4,27,16,44),(4,28,16,49),(4,29,17,49),(4,30,17,44),(4,31,18,44),(4,32,18,49),(4,33,19,49),(4,34,19,44),(4,35,20,49),(4,36,20,44),(4,37,21,49),(4,38,21,44),(4,39,22,49),(4,40,22,44),(4,41,23,49),(4,42,23,44),(4,43,24,49),(4,44,24,44),(4,45,25,49),(4,46,25,44),(4,47,26,49),(4,48,26,44),(4,49,27,49),(4,50,27,44),(4,51,28,44),(4,52,28,49),(4,52,61,49),(4,52,62,49),(4,52,63,49),(4,53,29,49),(4,54,29,44),(4,55,30,44),(4,56,30,49),(4,57,31,49),(4,58,31,44),(4,59,32,44),(4,60,32,49),(4,65,35,49),(4,66,35,44),(4,67,36,49),(4,67,64,44),(4,68,36,44),(4,69,37,49),(4,70,37,44),(4,71,38,49),(4,72,38,44),(4,73,39,49),(4,74,39,44),(4,75,40,44),(4,76,40,49),(4,77,41,49),(4,78,41,44),(4,78,61,44),(4,79,42,49),(4,80,42,44),(4,81,43,44),(4,82,43,49),(4,83,44,49),(4,84,44,44),(4,85,45,49),(4,86,45,44),(4,87,46,44),(4,88,46,49),(4,89,47,44),(4,90,47,49),(4,91,48,44),(4,92,48,49),(4,93,49,49),(4,94,49,44),(4,95,50,44),(4,96,50,49),(4,97,51,44),(4,98,51,49),(4,99,52,44),(4,100,52,49),(4,101,53,49),(4,102,53,44),(4,103,54,44),(4,104,54,49),(4,105,55,49),(4,106,55,44),(4,107,56,49),(4,108,56,44),(4,109,57,44),(4,110,57,49),(4,111,58,49),(4,112,58,44),(4,112,65,44),(4,113,59,49),(4,114,59,44),(4,114,62,44),(4,115,60,44),(4,116,60,49),(4,117,66,49),(4,118,66,44),(5,1,1,46),(5,1,64,46),(5,1,65,46),(5,2,1,47),(5,3,63,47),(5,4,7,46),(5,6,4,46),(5,7,4,47),(5,10,7,47),(5,13,9,47),(5,14,9,46),(5,17,11,46),(5,18,11,47),(5,19,12,47),(5,20,12,46),(5,21,13,47),(5,22,13,46),(5,23,14,47),(5,24,14,46),(5,25,15,46),(5,26,15,47),(5,27,16,47),(5,28,16,46),(5,29,17,46),(5,30,17,47),(5,31,18,47),(5,32,18,46),(5,33,19,46),(5,34,19,47),(5,35,20,47),(5,36,20,46),(5,37,21,46),(5,38,21,47),(5,39,22,47),(5,40,22,46),(5,41,23,46),(5,42,23,47),(5,43,24,47),(5,44,24,46),(5,45,25,46),(5,46,25,47),(5,47,26,47),(5,48,26,46),(5,49,27,46),(5,50,27,47),(5,51,28,47),(5,52,28,46),(5,52,61,46),(5,52,62,46),(5,52,63,46),(5,53,29,46),(5,54,29,47),(5,55,30,47),(5,56,30,46),(5,57,31,46),(5,58,31,47),(5,59,32,47),(5,60,32,46),(5,65,35,46),(5,66,35,47),(5,67,36,47),(5,67,64,47),(5,68,36,46),(5,69,37,46),(5,70,37,47),(5,71,38,47),(5,72,38,46),(5,73,39,46),(5,74,39,47),(5,75,40,47),(5,76,40,46),(5,77,41,46),(5,78,41,47),(5,78,61,47),(5,79,42,47),(5,80,42,46),(5,81,43,46),(5,82,43,47),(5,83,44,47),(5,84,44,46),(5,85,45,46),(5,86,45,47),(5,87,46,47),(5,88,46,46),(5,89,47,46),(5,90,47,47),(5,91,48,47),(5,92,48,46),(5,93,49,46),(5,94,49,47),(5,95,50,47),(5,96,50,46),(5,97,51,46),(5,98,51,47),(5,99,52,47),(5,100,52,46),(5,101,53,46),(5,102,53,47),(5,103,54,47),(5,104,54,46),(5,105,55,46),(5,106,55,47),(5,107,56,47),(5,108,56,46),(5,109,57,46),(5,110,57,47),(5,111,58,47),(5,112,58,46),(5,112,65,47),(5,113,59,46),(5,114,59,47),(5,114,62,47),(5,115,60,47),(5,116,60,46),(5,117,66,46),(5,118,66,47),(6,2,5,45),(6,3,2,45),(6,6,2,50),(6,8,5,50),(7,2,5,43),(7,3,2,43),(7,6,2,48),(7,8,5,48),(8,2,5,42),(8,3,2,42),(8,6,2,47),(8,8,5,47),(9,2,5,44),(9,3,2,44),(9,6,2,49),(9,8,5,49),(10,2,5,47),(10,3,2,47),(10,6,2,46),(10,8,5,46),(11,4,3,45),(11,5,3,50),(11,7,6,45),(11,9,6,50),(11,11,8,45),(11,12,8,50),(11,15,10,45),(11,16,10,50),(11,61,33,50),(11,62,33,45),(11,63,34,45),(11,64,34,50),(12,4,3,43),(12,5,3,48),(12,7,6,43),(12,9,6,48),(12,63,34,43),(12,64,34,48),(13,4,3,42),(13,5,3,47),(13,7,6,42),(13,9,6,47),(13,63,34,42),(13,64,34,47),(14,4,3,44),(14,5,3,49),(14,7,6,44),(14,9,6,49),(14,63,34,44),(14,64,34,49),(15,4,3,47),(15,5,3,46),(15,7,6,47),(15,9,6,46),(15,63,34,47),(15,64,34,46),(21,11,8,43),(21,12,8,48),(21,15,10,43),(21,16,10,48),(21,61,33,48),(21,62,33,43),(31,11,8,42),(31,12,8,47),(31,15,10,42),(31,16,10,47),(31,61,33,47),(31,62,33,42),(41,11,8,44),(41,12,8,49),(41,15,10,44),(41,16,10,49),(41,61,33,49),(41,62,33,44),(51,11,8,47),(51,12,8,46),(51,15,10,47),(51,16,10,46),(51,61,33,46),(51,62,33,47);
/*!40000 ALTER TABLE `puntaje_juez_batalla` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`SqlAdminm`@`%`*/ /*!50003 TRIGGER `actualiza_puntos_y_resultado` AFTER INSERT ON `puntaje_juez_batalla` FOR EACH ROW BEGIN



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



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`SqlAdminm`@`%`*/ /*!50003 TRIGGER `RegistrarJuezMasPuntos` AFTER INSERT ON `puntaje_juez_batalla` FOR EACH ROW BEGIN



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



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `speaker`
--

DROP TABLE IF EXISTS `speaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speaker` (
  `ID_Speaker` int NOT NULL,
  `Nombre_Real` varchar(100) DEFAULT NULL,
  `AKA` varchar(100) DEFAULT NULL,
  `Nacionalidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Speaker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speaker`
--

LOCK TABLES `speaker` WRITE;
/*!40000 ALTER TABLE `speaker` DISABLE KEYS */;
INSERT INTO `speaker` VALUES (1,'Sara Socas','Sarita','España'),(2,'Mary Ruiz','Queen Mary','España'),(3,'Pedro Mira','Bekaesh','España'),(4,'Mónica Vélez','Mónica','México'),(5,'Soledad Moya','Sole','Argentina'),(6,'Rodrigo Fernández','Rodo','Chile'),(7,'Juan Carlos Gómez','JC','Colombia'),(8,'Anahí Moreno','Anahí','México'),(9,'Fernando López','Fercho','Perú'),(10,'Valeria Torres','Val','Chile'),(11,'Esteban Ramírez','Esteban','Argentina'),(12,'Natalia García','Nati','Venezuela'),(13,'Andrés Castillo','Andy','Colombia'),(14,'Jessica Maldonado','Jess','México'),(15,'Matías Pérez','Mati','Uruguay'),(16,'Clara Ramírez','Clarita','España'),(17,'David Molina','Davo','Chile'),(18,'Florencia Castro','Flor','Argentina'),(19,'Raúl Guzmán','Raulo','México'),(20,'Daniela Paz','Dani','Colombia'),(21,'Lucía Ramos','Lucy','España'),(22,'Carlos Navarro','CNavarro','Perú'),(23,'Beatriz Muñoz','Bea','Chile'),(24,'Ernesto Jiménez','Ernie','México'),(25,'Adriana Fernández','Adri','Argentina'),(26,'Manuel Sánchez','Manu','Colombia'),(27,'Isabel Duarte','Isa','Venezuela'),(28,'Rafael Martínez','Rafa','España'),(29,'Camila Torres','Cami','Uruguay'),(30,'Jorge Benítez','Benji','México'),(31,'Alejandro Torres','Ale','Chile'),(32,'Patricia Gómez','Patty','Argentina'),(33,'Gabriela Rojas','Gaby','México'),(34,'Ricardo Domínguez','Richie','Colombia'),(35,'Carmen López','Carmela','España'),(36,'Tomás Sánchez','Tommy','Perú'),(37,'Raquel García','Raky','Venezuela'),(38,'Francisco Vega','Franco','Uruguay'),(39,'Mariana Díaz','Mari','México'),(40,'Héctor Méndez','Héctor','Chile'),(41,'Iván Serrano','Iván S','España'),(42,'Laura Mendoza','Lau','México'),(43,'Andrés Herrera','Andy H','Colombia'),(44,'Julieta Morales','Juli','Argentina'),(45,'Oscar Ramírez','Oz','Perú'),(46,'María Fernanda','Mafer','Venezuela'),(47,'Cristian Pérez','Cris','Uruguay'),(48,'Susana Ortega','Susy','Chile'),(49,'Lucas Gutiérrez','Luk','Argentina'),(50,'Paula Rivera','Pau','México'),(51,'Gabriel Ortiz','Gabo','Colombia'),(52,'Tamara Cruz','Tam','España'),(53,'Ignacio Bravo','Nacho B','Chile'),(54,'Fabiola Méndez','Fabi','Argentina'),(55,'Daniel Osorio','Dani O','Venezuela'),(56,'Sandra Flores','Sandrita','México'),(57,'Martín Cáceres','Martín C','Perú'),(58,'Rosario Villalba','Rosi','Uruguay'),(59,'Santiago Herrera','Santi','Chile'),(60,'Liliana Blanco','Lili','Colombia'),(61,'Rodrigo García','Rodri','España'),(62,'Jimena Vargas','Jime','México'),(63,'César Fuentes','Cefu','Colombia'),(64,'Andrea Rojas','Andy R','Argentina'),(65,'Mauricio Torres','Mauri','Perú'),(66,'Fátima Díaz','Fati','Venezuela'),(67,'Emiliano Pérez','Emi','Uruguay'),(68,'Pamela Ortiz','Pam','Chile'),(69,'Vicente Pardo','Vicho','Argentina'),(70,'Diana Cruz','Didi','México'),(71,'Álvaro Suárez','Alvarito','Colombia'),(72,'Gabriela Chávez','Gabi','España'),(73,'Mario Barrera','Mabarr','Chile'),(74,'Luciana Romero','Lucha','Argentina'),(75,'Federico Reyes','Fede','Uruguay'),(76,'Inés Quintana','Inesita','México'),(77,'Horacio Vargas','Hache','Perú'),(78,'Soledad Pérez','Sol','Venezuela'),(79,'Ricardo Molina','Richie M','Chile'),(80,'Gabriela López','Gabi L','Colombia'),(81,'Corey Prout','cprout28','Japan'),(82,'Carleen Glasman','cglasman29','China'),(83,'Leeland Burgis','lburgis2a','Colombia'),(84,'Kinny Hankin','khankin2b','China'),(85,'Mattias Camoys','mcamoys2c','China'),(86,'Evangelin Allewell','eallewell2d','Syria'),(87,'Jennifer Wheelhouse','jwheelhouse2e','Portugal'),(88,'Ambur Shillabeare','ashillabeare2f','Dominican Republic'),(89,'Dasi Kervin','dkervin2g','Poland'),(90,'Tanney Gerin','tgerin2h','China'),(91,'Vivien Itscowicz','vitscowicz2i','China'),(92,'Estele Minero','eminero2j','Philippines'),(93,'Blinny Pandie','bpandie2k','Philippines'),(94,'Roderic Berringer','rberringer2l','Sweden'),(95,'Alethea Cassely','acassely2m','Japan'),(96,'Lissie Grutchfield','lgrutchfield2n','Italy'),(97,'Winne Kubala','wkubala2o','Thailand'),(98,'Irwin Fusco','ifusco2p','Czech Republic'),(99,'Bendite Lindsley','blindsley2q','China'),(100,'Lemar Grzesiewicz','lgrzesiewicz2r','Mongolia'),(101,'Darline Plowright','dplowright2s','United States'),(102,'Mia Dunsmore','mdunsmore2t','Gambia'),(103,'Lidia Lidstone','llidstone2u','Morocco'),(104,'Norine Falconer-Taylor','nfalconertaylor2v','Portugal'),(105,'Remy Trace','rtrace2w','Cambodia'),(106,'Karmen Commander','kcommander2x','Belarus'),(107,'Ofilia Ewestace','oewestace2y','Sweden'),(108,'Darlene Abbott','dabbott2z','Afghanistan'),(109,'Ricky Autrie','rautrie30','Sweden'),(110,'Chester Sheed','csheed31','Russia'),(111,'Tamas Scolding','tscolding32','Cuba'),(112,'Clemmie Beange','cbeange33','Dominican Republic'),(113,'Durand Yakubov','dyakubov34','Indonesia'),(114,'Corine Bark','cbark35','Reunion'),(115,'Neill Casserley','ncasserley36','United States'),(116,'Sydel Lambin','slambin37','United States'),(117,'Phedra Murphey','pmurphey38','Ireland'),(118,'Ninetta Musla','nmusla39','Sweden'),(119,'Hercules McSweeney','hmcsweeney3a','Uganda'),(120,'Cissy Gehrtz','cgehrtz3b','Democratic Republic of the Congo'),(121,'Pascal Nealon','pnealon3c','France'),(122,'Johannes Harral','jharral3d','Brazil'),(123,'Edd Graveson','egraveson3e','Indonesia'),(124,'Garald Muress','gmuress3f','Czech Republic'),(125,'Rhianna Shacklady','rshacklady3g','Nigeria'),(126,'Thatch Toll','ttoll3h','Venezuela'),(127,'Sabine Ledgerton','sledgerton3i','China'),(128,'Klaus Capin','kcapin3j','China'),(129,'Terrell Wesker','twesker3k','Greece'),(130,'Arny Trevance','atrevance3l','China'),(131,'Lyn Haile','lhaile3m','Comoros'),(132,'Miran Proudley','mproudley3n','China'),(133,'Rick Vizor','rvizor3o','Kenya'),(134,'Dunn Bentson','dbentson3p','Colombia'),(135,'Moritz Pyett','mpyett3q','China'),(136,'Aurore Nortcliffe','anortcliffe3r','Norway'),(137,'Thedrick Body','tbody3s','Luxembourg'),(138,'Wenda Hegden','whegden3t','China'),(139,'Ced Salsbury','csalsbury3u','Indonesia'),(140,'Kat Assur','kassur3v','China'),(141,'Jenda Readhead','jreadhead3w','Cuba'),(142,'Enos Giercke','egiercke3x','Uzbekistan'),(143,'Sherye Fowls','sfowls3y','Ethiopia'),(144,'Henry McKevitt','hmckevitt3z','China'),(145,'Hildagarde Getsham','hgetsham40','Philippines'),(146,'Bobbie Goodacre','bgoodacre41','China'),(147,'Fidelity Searston','fsearston42','Malaysia'),(148,'Hussein Bernardotte','hbernardotte43','Mexico'),(149,'Broddie Klishin','bklishin44','China'),(150,'Izaak Guillot','iguillot45','Thailand'),(151,'Matias Malatalant','mmalatalant46','Indonesia'),(152,'Siana Millican','smillican47','Russia'),(153,'Vladamir Studman','vstudman48','Bosnia and Herzegovina'),(154,'Saundra Swaby','sswaby49','Mexico'),(155,'Honey Bernardotte','hbernardotte4a','France'),(156,'Quent Felten','qfelten4b','Indonesia'),(157,'Kenna Presland','kpresland4c','Pakistan'),(158,'Cookie Redwing','credwing4d','Guyana'),(159,'Emmalynn Burrell','eburrell4e','Dominican Republic'),(160,'Ree Bubbear','rbubbear4f','Croatia'),(161,'Shaylyn Rook','srook4g','Afghanistan'),(162,'Arnaldo Vamplus','avamplus4h','Russia'),(163,'Tabbie Levet','tlevet4i','Kuwait'),(164,'Aubrey Marner','amarner4j','France'),(165,'Ashley Frotton','afrotton4k','Georgia'),(166,'Charis Baszkiewicz','cbaszkiewicz4l','Philippines'),(167,'Justinian O\'Lagen','jolagen4m','Brazil'),(168,'Vinni Slane','vslane4n','Portugal'),(169,'Rebe Le Batteur','rle4o','China'),(170,'Truda Popple','tpopple4p','China'),(171,'Glenn Henniger','ghenniger4q','Pakistan'),(172,'Zelda Worley','zworley4r','Brazil'),(173,'Charlie Boycott','cboycott4s','Indonesia'),(174,'Josi Burghall','jburghall4t','Cameroon'),(175,'Klara Czajkowska','kczajkowska4u','Chile'),(176,'Orland Izkovitch','oizkovitch4v','Albania'),(177,'Lynelle Blackston','lblackston4w','Philippines'),(178,'Husein Standley','hstandley4x','Thailand'),(179,'Miran Taffley','mtaffley4y','Panama'),(180,'Gabriele Fernant','gfernant4z','Czech Republic'),(181,'Kristal Gwinnel','kgwinnel50','Democratic Republic of the Congo'),(182,'Riley Chad','rchad51','Tanzania'),(183,'Jourdain Newlands','jnewlands52','Russia'),(184,'Ximenes Van der Beken','xvan53','China'),(185,'Lance Tremoulet','ltremoulet54','Czech Republic'),(186,'Christean Brewers','cbrewers55','Portugal'),(187,'Ardelle McOrkill','amcorkill56','Russia'),(188,'Lyndel Causon','lcauson57','Indonesia'),(189,'Davidson McIlwraith','dmcilwraith58','China'),(190,'Frasquito Rachuig','frachuig59','Poland'),(191,'Den Prujean','dprujean5a','Iran'),(192,'Ethelbert Luciani','eluciani5b','China'),(193,'Araldo Sebert','asebert5c','Russia'),(194,'Nariko Kisbee','nkisbee5d','Indonesia'),(195,'Fernandina Fitzsymonds','ffitzsymonds5e','Canada'),(196,'Mariana Quail','mquail5f','Mongolia'),(197,'Ambrosius Grishukov','agrishukov5g','Greece'),(198,'Selene Axon','saxon5h','Indonesia'),(199,'Chaunce Tomczak','ctomczak5i','China'),(200,'Ansel Leathe','aleathe5j','Thailand'),(201,'Benjy Greetland','bgreetland5k','Czech Republic'),(202,'Wolfy De Gowe','wde5l','China'),(203,'Hanna Francke','hfrancke5m','Indonesia'),(204,'Sofie MacCook','smaccook5n','Egypt'),(205,'Purcell Weepers','pweepers5o','Philippines'),(206,'Merna Bowskill','mbowskill5p','Ukraine'),(207,'Matty Grinyov','mgrinyov5q','Colombia'),(208,'Joannes Ferentz','jferentz5r','Colombia'),(209,'Garth Blaszczak','gblaszczak5s','Honduras'),(210,'Truman Jaher','tjaher5t','Luxembourg'),(211,'Sigismund Bredgeland','sbredgeland5u','Poland'),(212,'Zsazsa Probin','zprobin5v','United States'),(213,'Read Tunniclisse','rtunniclisse5w','Poland'),(214,'Sibley Howsin','showsin5x','Russia'),(215,'Fidelio Buscher','fbuscher5y','Russia'),(216,'Dwain McAleese','dmcaleese5z','Philippines'),(217,'Dulsea Slide','dslide60','Czech Republic'),(218,'Dianne Halloway','dhalloway61','China'),(219,'Jarib Ortmann','jortmann62','Indonesia'),(220,'Bonita Bushell','bbushell63','China'),(221,'Siward Dunsmuir','sdunsmuir64','Belarus'),(222,'Lilly Wigsell','lwigsell65','Thailand'),(223,'Baxy Probate','bprobate66','Poland'),(224,'Melany Pilch','mpilch67','Panama'),(225,'Harriet Flay','hflay68','Thailand'),(226,'Kain Meekings','kmeekings69','Indonesia'),(227,'Lenci Richards','lrichards6a','Sierra Leone'),(228,'Leila Kirmond','lkirmond6b','China'),(229,'Porty Gillion','pgillion6c','Indonesia'),(230,'Suzanna Robelin','srobelin6d','Philippines'),(231,'Jeanelle Gamage','jgamage6e','Indonesia'),(232,'Brodie Verecker','bverecker6f','Argentina'),(233,'Reinold Dumblton','rdumblton6g','China'),(234,'Bertha Shrimplin','bshrimplin6h','Moldova'),(235,'Carlynn Hunter','chunter6i','Norway'),(236,'Josefa Willis','jwillis6j','Micronesia'),(237,'Harland Gerrad','hgerrad6k','China'),(238,'Nichole Penelli','npenelli6l','China'),(239,'Pansie Towndrow','ptowndrow6m','Russia'),(240,'Nealson Mix','nmix6n','Indonesia'),(241,'Melosa Stonhard','mstonhard6o','China'),(242,'Gilberte Elleyne','gelleyne6p','China'),(243,'Gisella Gilli','ggilli6q','United States'),(244,'Doralyn Burd','dburd6r','China'),(245,'Arlina Bithany','abithany6s','Indonesia'),(246,'Gail Patnelli','gpatnelli6t','Uzbekistan'),(247,'Mathias Creer','mcreer6u','France'),(248,'Stephie Stretton','sstretton6v','Russia'),(249,'Quintilla Cockayne','qcockayne6w','Indonesia'),(250,'Wade Taylder','wtaylder6x','Bolivia'),(251,'Darrelle Gard','dgard6y','China'),(252,'Simmonds Linck','slinck6z','Serbia'),(253,'Modestine Stratiff','mstratiff70','Indonesia'),(254,'Jarrad Goldsmith','jgoldsmith71','Portugal'),(255,'Petunia Ferrie','pferrie72','Brazil'),(256,'Stanwood McKeown','smckeown73','Guatemala'),(257,'Kristine Kalewe','kkalewe74','Indonesia'),(258,'Kore Beddow','kbeddow75','France'),(259,'Celina Klehyn','cklehyn76','Russia'),(260,'Xylia McPheat','xmcpheat77','Bulgaria'),(261,'Sergio Willerstone','swillerstone78','Indonesia'),(262,'Burgess Aslett','baslett79','Iran'),(263,'Tiffani todor','ttodor7a','China'),(264,'Regan Welchman','rwelchman7b','Poland'),(265,'Derby Brydone','dbrydone7c','Mali'),(266,'Olwen Laytham','olaytham7d','Japan'),(267,'Kelley Tupper','ktupper7e','China'),(268,'Drew Jzak','djzak7f','Colombia'),(269,'Shellie O\'Sirin','sosirin7g','Argentina'),(270,'Janey Banaszkiewicz','jbanaszkiewicz7h','Botswana'),(271,'Tova Buckhurst','tbuckhurst7i','Colombia'),(272,'Michael Gravett','mgravett7j','Russia'),(273,'Orelia Georgeou','ogeorgeou7k','Philippines'),(274,'Abelard Freezer','afreezer7l','China'),(275,'Alric Cleare','acleare7m','China'),(276,'Sheffy Gonnet','sgonnet7n','Poland'),(277,'Lance Alps','lalps7o','Georgia'),(278,'Wilbert Apark','wapark7p','Russia'),(279,'Felike Kleinerman','fkleinerman7q','Czech Republic'),(280,'Janel Sundin','jsundin7r','Haiti'),(281,'Christie Iorns','ciorns7s','Sweden'),(282,'Melody Esherwood','mesherwood7t','Russia'),(283,'Clarabelle Durden','cdurden7u','Brazil'),(284,'Gawain Cardenosa','gcardenosa7v','China'),(285,'Elisha St. Quintin','est7w','Thailand'),(286,'Alysia Kenwrick','akenwrick7x','Portugal'),(287,'Judon McCusker','jmccusker7y','Czech Republic'),(288,'Agathe Liddy','aliddy7z','Indonesia'),(289,'Virginie Villar','vvillar80','Zambia'),(290,'Hope Schoffler','hschoffler81','Ukraine'),(291,'Guillaume Caunter','gcaunter82','Brazil'),(292,'Talbert Rodgers','trodgers83','Indonesia'),(293,'Loise Kilmurray','lkilmurray84','Thailand'),(294,'Tersina Tilt','ttilt85','Cameroon'),(295,'Pip Worley','pworley86','Japan'),(296,'Corilla Guille','cguille87','Tanzania'),(297,'Wilfrid Kirwood','wkirwood88','Argentina'),(298,'Fran Gosson','fgosson89','Argentina'),(299,'Brannon Gillmor','bgillmor8a','Peru'),(300,'Mignon Mazonowicz','mmazonowicz8b','Portugal'),(301,'Harman Bowery','hbowery8c','Finland'),(302,'Spike Guiett','sguiett8d','Portugal'),(303,'Brear Matcham','bmatcham8e','France'),(304,'Ely Connelly','econnelly8f','Brazil'),(305,'Sanderson Shird','sshird8g','Philippines'),(306,'Gabriello Bottomore','gbottomore8h','China'),(307,'Danyelle Tofano','dtofano8i','Cuba'),(308,'Randi Trevon','rtrevon8j','Armenia'),(309,'Johnnie Farebrother','jfarebrother8k','Indonesia'),(310,'Rea Nutkin','rnutkin8l','Indonesia'),(311,'Isis Kirton','ikirton8m','Brazil'),(312,'Klemens Bowne','kbowne8n','Japan'),(313,'Gnni Bracci','gbracci8o','Portugal'),(314,'Darby Attwill','dattwill8p','United States'),(315,'Deva Kiera','dkiera8q','Tanzania'),(316,'Alex Blanchflower','ablanchflower8r','Portugal'),(317,'Randee Wilks','rwilks8s','United States'),(318,'Sybila Fraczak','sfraczak8t','China'),(319,'Kali Slimming','kslimming8u','Thailand'),(320,'Donny Mutch','dmutch8v','China'),(321,'Taber Metheringham','tmetheringham8w','China'),(322,'Christyna Carsey','ccarsey8x','Colombia'),(323,'Mae Ferrarese','mferrarese8y','Myanmar'),(324,'Inge Friedank','ifriedank8z','Philippines'),(325,'Barnie Meagher','bmeagher90','Madagascar'),(326,'Judon Pears','jpears91','Venezuela'),(327,'Jamill Skerman','jskerman92','China'),(328,'Colas Brosh','cbrosh93','Indonesia'),(329,'Rodi Parkman','rparkman94','Sweden'),(330,'Ibby Sturrock','isturrock95','Russia'),(331,'Elvina Banyard','ebanyard96','France'),(332,'Jilly Ewers','jewers97','Venezuela'),(333,'Morissa Balharry','mbalharry98','Philippines'),(334,'Ted Suett','tsuett99','Svalbard and Jan Mayen'),(335,'Efrem Helliar','ehelliar9a','Sweden'),(336,'Consolata Nockalls','cnockalls9b','Ireland'),(337,'Humbert Bullimore','hbullimore9c','Ireland'),(338,'Ebba Tyrrell','etyrrell9d','Namibia'),(339,'Dalia Ashpole','dashpole9e','Kazakhstan'),(340,'Brant Broodes','bbroodes9f','Saint Lucia'),(341,'Hollie Spalls','hspalls9g','Croatia'),(342,'Zonda Meadway','zmeadway9h','Greece'),(343,'Garnet Sudddard','gsudddard9i','France'),(344,'Cecily Gapper','cgapper9j','Philippines'),(345,'Tess Innocenti','tinnocenti9k','China'),(346,'Olva Assender','oassender9l','United States'),(347,'Patsy Maybey','pmaybey9m','Poland'),(348,'Lilah Rostron','lrostron9n','Venezuela'),(349,'Celia Costelow','ccostelow9o','Albania'),(350,'Thibaut Grierson','tgrierson9p','Sweden'),(351,'Rycca Bulman','rbulman9q','Pakistan'),(352,'Elissa Gresly','egresly9r','Indonesia'),(353,'Isahella Maty','imaty9s','China'),(354,'Friedrick Duckitt','fduckitt9t','China'),(355,'West Lumpkin','wlumpkin9u','China'),(356,'Ruthy Piggford','rpiggford9v','Brazil'),(357,'Georgeanne Senchenko','gsenchenko9w','Colombia'),(358,'Cointon Marzelo','cmarzelo9x','Indonesia'),(359,'Annalee Corzor','acorzor9y','American Samoa'),(360,'Rube Maureen','rmaureen9z','Russia'),(361,'Albertine Getsham','agetshama0','Vietnam'),(362,'Jacquenette Calendar','jcalendara1','Russia'),(363,'Pauli Fripp','pfrippa2','China'),(364,'Helaina Gilby','hgilbya3','Philippines'),(365,'Ursa Keeri','ukeeria4','Philippines'),(366,'Clemmy Bickell','cbickella5','Sierra Leone'),(367,'Yorker Deekes','ydeekesa6','Jordan'),(368,'Magdalen Highman','mhighmana7','China'),(369,'Misti Abramovici','mabramovicia8','Serbia'),(370,'Karlis Henkmann','khenkmanna9','China'),(371,'Cherie Weld','cweldaa','Brazil'),(372,'Sigfrid Josilowski','sjosilowskiab','China'),(373,'Norean Emmer','nemmerac','Poland'),(374,'Hastings Maneylaws','hmaneylawsad','Russia'),(375,'Dolph Lory','dloryae','Germany'),(376,'Ward Mackrell','wmackrellaf','Brazil'),(377,'Fawnia Walworth','fwalworthag','China'),(378,'Griffin Bromehead','gbromeheadah','Nigeria'),(379,'Aubert Raftery','arafteryai','Iran'),(380,'Nils Ballard','nballardaj','Canada'),(381,'Darya Livingston','dlivingstonak','Portugal'),(382,'Jocelyn Parysiak','jparysiakal','Micronesia'),(383,'Leontyne Ipgrave','lipgraveam','China'),(384,'Clyve Ingall','cingallan','Brazil'),(385,'Sara Petrollo','spetrolloao','Indonesia'),(386,'Barbaraanne Danat','bdanatap','Somalia'),(387,'Jamal Panter','jpanteraq','China'),(388,'Jennica Bellefant','jbellefantar','Indonesia'),(389,'Sherwood Yard','syardas','China'),(390,'Tucker Longstaffe','tlongstaffeat','China'),(391,'Ring Lewzey','rlewzeyau','Uruguay'),(392,'Maxy Bowart','mbowartav','Iceland'),(393,'Annamarie Van Haeften','avanaw','Philippines'),(394,'Lindon Creigan','lcreiganax','Indonesia'),(395,'Dwayne Combes','dcombesay','Vietnam'),(396,'Rosalynd Coleiro','rcoleiroaz','Portugal'),(397,'Hewet Swetmore','hswetmoreb0','Philippines'),(398,'Irita Matejka','imatejkab1','Norway'),(399,'Elvin Wandrich','ewandrichb2','Philippines'),(400,'Barrie Montes','bmontesb3','Azerbaijan'),(401,'Corrianne Mailey','cmaileyb4','United States'),(402,'Ody Rao','oraob5','Indonesia'),(403,'Obediah MacFaell','omacfaellb6','Russia'),(404,'Tremaine Brawson','tbrawsonb7','Ukraine'),(405,'Maire Clow','mclowb8','Indonesia'),(406,'Sheela Ffrench','sffrenchb9','United States'),(407,'Madelene Kingcott','mkingcottba','Russia'),(408,'Shermy Riccardelli','sriccardellibb','Jamaica'),(409,'Allard Bratch','abratchbc','United States'),(410,'Bettine Kingsnod','bkingsnodbd','Bahrain'),(411,'Goldie Stanger','gstangerbe','Brazil'),(412,'Benedicto McQuillin','bmcquillinbf','Portugal'),(413,'Delia Chessill','dchessillbg','Czech Republic'),(414,'Wynne Raspel','wraspelbh','France'),(415,'Leone Roff','lroffbi','Myanmar'),(416,'Suzi Paddy','spaddybj','Philippines'),(417,'Dotti Rigardeau','drigardeaubk','France'),(418,'Miranda Dohmann','mdohmannbl','Panama'),(419,'Adelheid McMyler','amcmylerbm','Tajikistan'),(420,'Rubetta Aire','rairebn','China'),(421,'Janith Wixon','jwixonbo','Colombia'),(422,'Blisse Calven','bcalvenbp','Honduras'),(423,'Georgetta Trusler','gtruslerbq','China'),(424,'Munmro Start','mstartbr','Palau'),(425,'Casey Suff','csuffbs','Indonesia'),(426,'Fredelia Philipp','fphilippbt','China'),(427,'Miranda Minogue','mminoguebu','Slovenia'),(428,'Marrissa Sell','msellbv','Indonesia'),(429,'Paul Burthom','pburthombw','Madagascar'),(430,'Alexina Pinnion','apinnionbx','Peru'),(431,'Alvira Nuschke','anuschkeby','France'),(432,'Byran Morrilly','bmorrillybz','Russia'),(433,'Elmer Bass','ebassc0','Indonesia'),(434,'Eleanore Doumerc','edoumercc1','China'),(435,'Win Greneham','wgrenehamc2','Japan'),(436,'Sarita Bembrick','sbembrickc3','China'),(437,'Lulu Skews','lskewsc4','Pakistan'),(438,'Haily Darbishire','hdarbishirec5','Yemen'),(439,'Poul Widdows','pwiddowsc6','France'),(440,'Eva Luby','elubyc7','Brazil'),(441,'Othilia Cellier','ocellierc8','Czech Republic'),(442,'Lynnett Giacomini','lgiacominic9','Brazil'),(443,'Irving Wheater','iwheaterca','Russia'),(444,'Peggy Dubique','pdubiquecb','Poland'),(445,'Nicolea Currier','ncurriercc','China'),(446,'Elane Garcia','egarciacd','China'),(447,'Dolf Toombes','dtoombesce','China'),(448,'Rebbecca Ricardou','rricardoucf','Indonesia'),(449,'Victoria Whittall','vwhittallcg','France'),(450,'Rhetta Peegrem','rpeegremch','China'),(451,'Shellysheldon Torre','storreci','Portugal'),(452,'Jessi Sayes','jsayescj','China'),(453,'Nicol Crossingham','ncrossinghamck','Philippines'),(454,'Kean Aldrick','kaldrickcl','Morocco'),(455,'Emilee Dundon','edundoncm','Czech Republic'),(456,'Lara Kirtlan','lkirtlancn','United States'),(457,'Fancie Browncey','fbrownceyco','Indonesia'),(458,'Cynde Sprake','csprakecp','Macedonia'),(459,'Evey Klimpke','eklimpkecq','Spain'),(460,'Coretta Swadlen','cswadlencr','Albania'),(461,'Roselin Fosberry','rfosberrycs','New Caledonia'),(462,'Livia Stanlick','lstanlickct','Costa Rica'),(463,'Charles Patek','cpatekcu','France'),(464,'Erma Soane','esoanecv','China'),(465,'Ambrosi Jaqueminet','ajaqueminetcw','Belarus'),(466,'Denis Gripton','dgriptoncx','Argentina'),(467,'Lorinda Ciric','lciriccy','Afghanistan'),(468,'Berny Rapley','brapleycz','France'),(469,'Ira Magnar','imagnard0','Ivory Coast'),(470,'Jacinta Lyptrit','jlyptritd1','Brazil'),(471,'Albie Andretti','aandrettid2','China'),(472,'Spencer Clifford','scliffordd3','Brazil'),(473,'Hyman Kenworth','hkenworthd4','Uruguay'),(474,'Gaspard Hasluck','ghasluckd5','China'),(475,'Corny Guidelli','cguidellid6','Ukraine'),(476,'Hewe Kipling','hkiplingd7','China'),(477,'Sonny Cullivan','scullivand8','Saudi Arabia'),(478,'Meaghan Tattersall','mtattersalld9','Pakistan'),(479,'Tito Dallison','tdallisonda','Russia'),(480,'Cleopatra Yeates','cyeatesdb','Greece'),(481,'Willdon Haglington','whaglingtondc','Mexico'),(482,'Erda Tweedy','etweedydd','China'),(483,'Agnella Brierly','abrierlyde','China'),(484,'Kippy MacAiline','kmacailinedf','Argentina'),(485,'Arley Leupoldt','aleupoldtdg','Finland'),(486,'Melosa Aikenhead','maikenheaddh','Poland'),(487,'Ephraim Rasch','eraschdi','Indonesia'),(488,'Otes Drissell','odrisselldj','Japan'),(489,'Christoffer Lathleiffure','clathleiffuredk','Indonesia'),(490,'Roze Phil','rphildl','Portugal'),(491,'Ursa Appleton','uappletondm','Sweden'),(492,'Shela Crufts','scruftsdn','Poland'),(493,'Leighton Colthurst','lcolthurstdo','Thailand'),(494,'Karlis Fearby','kfearbydp','Libya'),(495,'Waite Gascar','wgascardq','Sweden'),(496,'Melvin Scouller','mscoullerdr','France'),(497,'Legra Schulze','lschulzeds','Indonesia'),(498,'Munroe Jansik','mjansikdt','Morocco'),(499,'Olvan Jolliss','ojollissdu','Belgium'),(500,'Lalo Gorke','lgorkedv','Philippines');
/*!40000 ALTER TABLE `speaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tabla_fms`
--

DROP TABLE IF EXISTS `tabla_fms`;
/*!50001 DROP VIEW IF EXISTS `tabla_fms`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tabla_fms` AS SELECT 
 1 AS `AKA`,
 1 AS `PuntosTotales`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'fms'
--

--
-- Final view structure for view `batallaspordia`
--

/*!50001 DROP VIEW IF EXISTS `batallaspordia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`SqlAdminm`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `batallaspordia` AS select `b`.`ID_Batalla` AS `ID_Batalla`,`b`.`Fecha` AS `Fecha`,(case when (`b`.`puntosfreestyler1` > `b`.`puntosfreestyler2`) then `b`.`ID_Freestyler1` when (`b`.`puntosfreestyler2` > `b`.`puntosfreestyler1`) then `b`.`ID_Freestyler2` else NULL end) AS `ID_FreestylerGanador`,(select `pjb2`.`ID_Juez` from `puntaje_juez_batalla` `pjb2` where ((`pjb2`.`ID_Batalla` = `b`.`ID_Batalla`) and (`pjb2`.`ID_Freestyler` = (case when (`b`.`puntosfreestyler1` > `b`.`puntosfreestyler2`) then `b`.`ID_Freestyler1` when (`b`.`puntosfreestyler2` > `b`.`puntosfreestyler1`) then `b`.`ID_Freestyler2` else NULL end))) order by `pjb2`.`PTB` desc limit 1) AS `ID_JuezMasGeneroso`,(select `pjb2`.`PTB` from `puntaje_juez_batalla` `pjb2` where ((`pjb2`.`ID_Batalla` = `b`.`ID_Batalla`) and (`pjb2`.`ID_Freestyler` = (case when (`b`.`puntosfreestyler1` > `b`.`puntosfreestyler2`) then `b`.`ID_Freestyler1` when (`b`.`puntosfreestyler2` > `b`.`puntosfreestyler1`) then `b`.`ID_Freestyler2` else NULL end))) order by `pjb2`.`PTB` desc limit 1) AS `PTBMaximo` from `batalla` `b` order by `b`.`Fecha`,`b`.`ID_Batalla` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tabla_fms`
--

/*!50001 DROP VIEW IF EXISTS `tabla_fms`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`SqlAdminm`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `tabla_fms` AS select `f`.`AKA` AS `AKA`,sum((case when (`b`.`ID_Freestyler1` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler1` when (`b`.`ID_Freestyler2` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler2` end)) AS `PuntosTotales` from (`batalla` `b` join `freestyler` `f` on(((`b`.`ID_Freestyler1` = `f`.`ID_Freestyler`) or (`b`.`ID_Freestyler2` = `f`.`ID_Freestyler`)))) group by `f`.`AKA` having (sum((case when (`b`.`ID_Freestyler1` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler1` when (`b`.`ID_Freestyler2` = `f`.`ID_Freestyler`) then `b`.`puntosfreestyler2` end)) >= 0) order by `PuntosTotales` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01 16:22:15
