-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: toctocbankingdb
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acceso`
--

DROP TABLE IF EXISTS `acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acceso`
--

LOCK TABLES `acceso` WRITE;
/*!40000 ALTER TABLE `acceso` DISABLE KEYS */;
INSERT INTO `acceso` VALUES (1,'Entrada'),(2,'Salida'),(3,'Otro');
/*!40000 ALTER TABLE `acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'ITAU'),(2,'BCI'),(3,'SANTANDER'),(4,'BANCO DE CHILE');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rut` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `tiene_detalle` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut_UNIQUE` (`rut`),
  KEY `perfil_id_idx` (`perfil_id`),
  CONSTRAINT `perfil_id` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'12783974','Rafaellle','Probet',18,1,1),(2,'11542911','Rozamond','Falla',18,3,0),(3,'20804142','Jeremy','Andren',18,3,0),(4,'27995049','Jed','Applin',18,3,0),(5,'15562616','Lombard','Gourlay',19,1,1),(6,'12974350','Lauralee','Midlar',19,2,0),(7,'21415010','Arabel','Izakovitz',19,2,0),(8,'15266639','Aurore','Vasyunin',19,3,0),(9,'16569429','Ingaborg','Sallery',20,2,0),(10,'24962909','Germayne','MacGille',20,2,0),(11,'16975271','Gwenette','Slark',20,2,0),(12,'28959326','Kerry','Sawell',20,3,0),(13,'27707402','Emile','Sackey',20,3,0),(14,'22898848','Giacobo','Baake',21,1,1),(15,'25870025','Tye','Hanratty',28,1,1),(16,'29912293','Michale','Balogun',28,2,0),(17,'17410812','Bertram','Paulucci',28,2,0),(18,'15304890','Gilles','Lovatt',28,2,0),(19,'14026013','Marleen','Fenton',28,3,0),(20,'26887010','Roscoe','Ander',29,1,1),(21,'15040810','Waylon','Elcomb',29,2,0),(22,'13362030','Raynell','Edger',29,3,0),(23,'26031702','Ann','Kinforth',30,1,1),(24,'22995528','Ricky','Surman-Wells',30,1,1),(25,'17201052','Victoria','Fowlie',30,1,1),(26,'12215595','Alysa','Borrel',30,2,0),(27,'12791578','Adams','Nardoni',30,2,0),(28,'21697031','Hakim','Keppin',30,2,0),(29,'10013726','Forster','Dunkerley',30,2,0),(30,'14265392','Shae','Land',31,1,1),(31,'13070587','Briana','Batch',31,2,0),(32,'16200937','Phillie','Leader',31,2,0),(33,'19257920','Eugenie','Tolputt',31,3,0),(34,'20265959','Selma','Yair',31,3,0),(35,'21823872','Marline','Leathers',31,3,0),(36,'17362382','Curry','Trase',32,1,1),(37,'11251929','Rozella','Longworthy',32,1,1),(38,'15472522','Hadleigh','Tidey',32,2,0),(39,'13522699','Madelin','Mayling',32,2,0),(40,'26639137','Fidelity','Hallgath',32,2,0),(41,'24034170','Rob','Howden',32,3,0),(42,'18224402','Iosep','Asprey',32,3,0),(43,'14837975','Dorene','Learoyde',33,1,1),(44,'28092540','Murray','Bony',33,2,0),(45,'12792304','Gael','Kinane',33,2,0),(46,'14359584','Meredeth','Mabbott',34,1,1),(47,'23468215','Ofelia','Delcastel',34,2,0),(48,'22901063','Adriano','Hullock',34,3,0),(49,'20994083','Babs','Waind',34,3,0),(50,'12752821','Rouvin','Roman',35,2,0),(51,'17480359','Ethelin','McGrann',35,2,0),(52,'19534385','Irwin','Grishukhin',35,3,0),(53,'15876156','Wiley','Doward',36,2,0),(54,'29137498','Clemmie','Izzard',36,2,0),(55,'23594200','Jasun','Kleinzweig',36,3,0),(56,'10047425','Gale','Shemelt',37,1,1),(57,'21416479','Hatti','Woodhall',37,1,1),(58,'23722185','Haroun','Bowell',37,2,0),(59,'13371099','Bernarr','Scramage',38,1,1),(60,'26611493','Miof mela','Brogini',38,1,1),(61,'18511721','Jimmy','Prior',38,1,1),(62,'20831897','Deva','Pele',38,2,0),(63,'26295784','Timmy','Stanner',38,2,0),(64,'14034447','Corbet','Linturn',38,3,0),(65,'11025758','Dasya','Tysack',38,3,0),(66,'21670743','Albie','Collinette',39,1,1),(67,'17815846','Christophorus','Fewtrell',39,1,1),(68,'28440285','Costanza','Dodwell',42,1,1),(69,'20011278','Patricio','Vallender',42,2,0),(70,'14950174','Ase','Benford',42,2,0),(71,'21695889','Torr','Lynde',42,3,0),(72,'14642386','Berthe','Breslauer',42,3,0),(73,'14767040','Velvet','Winfred',42,3,0),(74,'24572314','Cedric','Eastcourt',43,1,1),(75,'23551731','Vladimir','Matthewson',43,1,1),(76,'23125565','Petunia','Eames',43,1,1),(77,'29270346','Denver','Chad',43,1,1),(78,'19761465','Jaquenette','Ivermee',43,2,0),(79,'22580939','Issy','Mully',43,2,0),(80,'28353055','Chlo','Errington',43,2,0),(81,'17536310','Rod','Gorler',43,3,0),(82,'14965108','Elisha','Merredy',44,3,0),(83,'14490629','Easter','Bence',45,2,0),(84,'25560583','Kris','Sharply',45,3,0),(85,'20434592','Thedric','Yurenev',45,3,0),(86,'27312528','Zeke','Mackin',46,1,1),(87,'16798930','Galen','Sego',46,1,1),(88,'19994367','Cosetta','Wessing',46,3,0),(89,'20635671','Nessie','Turri',47,1,1),(90,'16843760','Arv','Brennans',47,1,1),(91,'22632481','Philipa','Pozer',47,2,0),(92,'26613542','Spike','Fennelly',48,1,1),(93,'17207630','Bobine','Meron',48,2,0),(94,'12927530','Lorri','Franzewitch',48,2,0),(95,'21286630','Bess','Cunde',48,3,0),(96,'29233294','Kimberly','Reichartz',48,3,0),(97,'28342606','Alika','Barrat',48,3,0),(98,'27265001','Zia','Shoesmith',49,1,1),(99,'26141990','Essie','Turnpenny',49,2,0),(100,'10155949','Quentin','Dinning',49,2,0),(101,'23356779','Tommie','Pinnock',49,3,0),(102,'21733014','Bernadina','Beeden',49,3,0),(103,'20592756','Deeyn','Grayham',49,3,0),(104,'15576859','Germaine','Larderot',49,3,0),(105,'10319411','Jamill','Rubinfeld',54,1,1),(106,'22112463','Abbot','Budgey',54,3,0),(107,'23241243','Wood','Cerro',54,3,0),(108,'26411782','Catlee','Keems',55,1,1),(109,'14529364','Hyacinthie','Le Fleming',55,2,0),(110,'29140621','Anderson','Bunson',55,3,0),(111,'24614888','Benedetta','Salman',56,1,1),(112,'29725584','Melvin','Gaine',56,3,0),(113,'21828973','Brnaby','Linnell',56,3,0),(114,'16240260','Halimeda','Raubenheimer',57,1,1),(115,'22523386','Mordecai','Beernaert',57,1,1),(116,'26892213','Alphonse','Rego',57,2,0),(117,'23653521','Anya','De la Eglise',57,3,0),(118,'26463343','Tim','Gall',58,3,0),(119,'18918251','Wilfrid','Damiral',59,2,0),(120,'25586325','Early','Lansbury',59,2,0),(121,'27026996','Nelli','Flement',59,2,0),(122,'23254524','Betsy','Yushmanov',60,1,1),(123,'17499147','Mikael','Umney',60,3,0),(124,'22978968','Heddie','Paxforde',61,1,1),(125,'20717188','Juliane','Albro',61,1,1),(126,'18759468','Chuck','Hacking',62,1,1),(127,'29278250','Kelwin','Kenworthy',62,1,1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_detalle`
--

DROP TABLE IF EXISTS `empleado_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_contrato` datetime NOT NULL,
  `empleado_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `empleado_id_idx` (`empleado_id`),
  CONSTRAINT `empleado_id` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_detalle`
--

LOCK TABLES `empleado_detalle` WRITE;
/*!40000 ALTER TABLE `empleado_detalle` DISABLE KEYS */;
INSERT INTO `empleado_detalle` VALUES (1,'2014-03-18 00:00:00',1),(2,'2013-01-27 00:00:00',5),(3,'2015-05-31 00:00:00',14),(4,'2022-03-04 00:00:00',15),(5,'2019-06-17 00:00:00',20),(6,'2017-03-04 00:00:00',23),(7,'2013-10-12 00:00:00',24),(8,'2016-09-21 00:00:00',25),(9,'2017-02-14 00:00:00',30),(10,'2019-08-16 00:00:00',36),(11,'2014-12-25 00:00:00',37),(12,'2014-03-18 00:00:00',43),(13,'2013-02-21 00:00:00',46),(14,'2018-09-17 00:00:00',56),(15,'2020-06-21 00:00:00',57),(16,'2017-03-21 00:00:00',59),(17,'2016-07-10 00:00:00',60),(18,'2018-12-03 00:00:00',61),(19,'2013-08-21 00:00:00',66),(20,'2012-11-26 00:00:00',67),(21,'2014-02-13 00:00:00',68),(22,'2018-04-29 00:00:00',74),(23,'2018-09-28 00:00:00',75),(24,'2016-01-06 00:00:00',76),(25,'2012-09-14 00:00:00',77),(26,'2018-11-28 00:00:00',86),(27,'2017-02-08 00:00:00',87),(28,'2013-12-04 00:00:00',89),(29,'2016-05-06 00:00:00',90),(30,'2012-12-06 00:00:00',92),(31,'2014-06-26 00:00:00',98),(32,'2012-05-18 00:00:00',105),(33,'2014-03-30 00:00:00',108),(34,'2017-10-21 00:00:00',111),(35,'2017-02-11 00:00:00',114),(36,'2014-02-10 00:00:00',115),(37,'2013-06-22 00:00:00',122),(38,'2018-06-07 00:00:00',124),(39,'2015-04-14 00:00:00',125),(40,'2017-12-13 00:00:00',126),(41,'2015-02-27 00:00:00',127),(42,'2014-03-18 00:00:00',1),(43,'2013-01-27 00:00:00',5),(44,'2015-05-31 00:00:00',14),(45,'2022-03-04 00:00:00',15),(46,'2019-06-17 00:00:00',20),(47,'2017-03-04 00:00:00',23),(48,'2013-10-12 00:00:00',24),(49,'2016-09-21 00:00:00',25),(50,'2017-02-14 00:00:00',30),(51,'2019-08-16 00:00:00',36),(52,'2014-12-25 00:00:00',37),(53,'2014-03-18 00:00:00',43),(54,'2013-02-21 00:00:00',46),(55,'2018-09-17 00:00:00',56),(56,'2020-06-21 00:00:00',57),(57,'2017-03-21 00:00:00',59),(58,'2016-07-10 00:00:00',60),(59,'2018-12-03 00:00:00',61),(60,'2013-08-21 00:00:00',66),(61,'2012-11-26 00:00:00',67),(62,'2014-02-13 00:00:00',68),(63,'2018-04-29 00:00:00',74),(64,'2018-09-28 00:00:00',75),(65,'2016-01-06 00:00:00',76),(66,'2012-09-14 00:00:00',77),(67,'2018-11-28 00:00:00',86),(68,'2017-02-08 00:00:00',87),(69,'2013-12-04 00:00:00',89),(70,'2016-05-06 00:00:00',90),(71,'2012-12-06 00:00:00',92),(72,'2014-06-26 00:00:00',98),(73,'2012-05-18 00:00:00',105),(74,'2014-03-30 00:00:00',108),(75,'2017-10-21 00:00:00',111),(76,'2017-02-11 00:00:00',114),(77,'2014-02-10 00:00:00',115),(78,'2013-06-22 00:00:00',122),(79,'2018-06-07 00:00:00',124),(80,'2015-04-14 00:00:00',125),(81,'2017-12-13 00:00:00',126),(82,'2015-02-27 00:00:00',127),(83,'2014-03-18 00:00:00',1),(84,'2013-01-27 00:00:00',5),(85,'2015-05-31 00:00:00',14),(86,'2022-03-04 00:00:00',15),(87,'2019-06-17 00:00:00',20),(88,'2017-03-04 00:00:00',23),(89,'2013-10-12 00:00:00',24),(90,'2016-09-21 00:00:00',25),(91,'2017-02-14 00:00:00',30),(92,'2019-08-16 00:00:00',36),(93,'2014-12-25 00:00:00',37),(94,'2014-03-18 00:00:00',43),(95,'2013-02-21 00:00:00',46),(96,'2018-09-17 00:00:00',56),(97,'2020-06-21 00:00:00',57),(98,'2017-03-21 00:00:00',59),(99,'2016-07-10 00:00:00',60),(100,'2018-12-03 00:00:00',61),(101,'2013-08-21 00:00:00',66),(102,'2012-11-26 00:00:00',67),(103,'2014-02-13 00:00:00',68),(104,'2018-04-29 00:00:00',74),(105,'2018-09-28 00:00:00',75),(106,'2016-01-06 00:00:00',76),(107,'2012-09-14 00:00:00',77),(108,'2018-11-28 00:00:00',86),(109,'2017-02-08 00:00:00',87),(110,'2013-12-04 00:00:00',89),(111,'2016-05-06 00:00:00',90),(112,'2012-12-06 00:00:00',92),(113,'2014-06-26 00:00:00',98),(114,'2012-05-18 00:00:00',105),(115,'2014-03-30 00:00:00',108),(116,'2017-10-21 00:00:00',111),(117,'2017-02-11 00:00:00',114),(118,'2014-02-10 00:00:00',115),(119,'2013-06-22 00:00:00',122),(120,'2018-06-07 00:00:00',124),(121,'2015-04-14 00:00:00',125),(122,'2017-12-13 00:00:00',126),(123,'2015-02-27 00:00:00',127);
/*!40000 ALTER TABLE `empleado_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_detalle_tarea`
--

DROP TABLE IF EXISTS `empleado_detalle_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado_detalle_tarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarea_id` int(11) NOT NULL,
  `empleado_detalle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tarea_id_idx` (`tarea_id`),
  KEY `empleado_detalle_id_idx` (`empleado_detalle_id`),
  CONSTRAINT `empleado_detalle_id` FOREIGN KEY (`empleado_detalle_id`) REFERENCES `empleado_detalle` (`id`),
  CONSTRAINT `tarea_id` FOREIGN KEY (`tarea_id`) REFERENCES `tarea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_detalle_tarea`
--

LOCK TABLES `empleado_detalle_tarea` WRITE;
/*!40000 ALTER TABLE `empleado_detalle_tarea` DISABLE KEYS */;
INSERT INTO `empleado_detalle_tarea` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(65,1,65),(66,1,66),(67,1,67),(68,1,68),(69,1,69),(70,1,70),(71,1,71),(72,1,72),(73,1,73),(74,1,74),(75,1,75),(76,1,76),(77,1,77),(78,1,78),(79,1,79),(80,1,80),(81,1,81),(82,1,82),(83,1,83),(84,1,84),(85,1,85),(86,1,86),(87,1,87),(88,1,88),(89,1,89),(90,1,90),(91,1,91),(92,1,92),(93,1,93),(94,1,94),(95,1,95),(96,1,96),(97,1,97),(98,1,98),(99,1,99),(100,1,100),(101,1,101),(102,1,102),(103,1,103),(104,1,104),(105,1,105),(106,1,106),(107,1,107),(108,1,108),(109,1,109),(110,1,110),(111,1,111),(112,1,112),(113,1,113),(114,1,114),(115,1,115),(116,1,116),(117,1,117),(118,1,118),(119,1,119),(120,1,120),(121,1,121),(122,1,122),(123,1,123),(124,2,1),(125,2,2),(126,2,3),(127,2,4),(128,2,5),(129,2,6),(130,2,7),(131,2,8),(132,2,9),(133,2,10),(134,2,11),(135,2,12),(136,2,13),(137,2,14),(138,2,15),(139,2,16),(140,2,17),(141,2,18),(142,2,19),(143,2,20),(144,2,21),(145,2,22),(146,2,23),(147,2,24),(148,2,25),(149,2,26),(150,2,27),(151,2,28),(152,2,29),(153,2,30),(154,2,31),(155,2,32),(156,2,33),(157,2,34),(158,2,35),(159,2,36),(160,2,37),(161,2,38),(162,2,39),(163,2,40),(164,2,41),(165,2,42),(166,2,43),(167,2,44),(168,2,45),(169,2,46),(170,2,47),(171,2,48),(172,2,49),(173,2,50),(174,2,51),(175,2,52),(176,2,53),(177,2,54),(178,2,55),(179,2,56),(180,2,57),(181,2,58),(182,2,59),(183,2,60),(184,2,61),(185,2,62),(186,2,63),(187,2,64),(188,2,65),(189,2,66),(190,2,67),(191,2,68),(192,2,69),(193,2,70),(194,2,71),(195,2,72),(196,2,73),(197,2,74),(198,2,75),(199,2,76),(200,2,77),(201,2,78),(202,2,79),(203,2,80),(204,2,81),(205,2,82),(206,2,83),(207,2,84),(208,2,85),(209,2,86),(210,2,87),(211,2,88),(212,2,89),(213,2,90),(214,2,91),(215,2,92),(216,2,93),(217,2,94),(218,2,95),(219,2,96),(220,2,97),(221,2,98),(222,2,99),(223,2,100),(224,2,101),(225,2,102),(226,2,103),(227,2,104),(228,2,105),(229,2,106),(230,2,107),(231,2,108),(232,2,109),(233,2,110),(234,2,111),(235,2,112),(236,2,113),(237,2,114),(238,2,115),(239,2,116),(240,2,117),(241,2,118),(242,2,119),(243,2,120),(244,2,121),(245,2,122),(246,2,123),(247,3,1),(248,3,2),(249,3,3),(250,3,4),(251,3,5),(252,3,6),(253,3,7),(254,3,8),(255,3,9),(256,3,10),(257,3,11),(258,3,12),(259,3,13),(260,3,14),(261,3,15),(262,3,16),(263,3,17),(264,3,18),(265,3,19),(266,3,20),(267,3,21),(268,3,22),(269,3,23),(270,3,24),(271,3,25),(272,3,26),(273,3,27),(274,3,28),(275,3,29),(276,3,30),(277,3,31),(278,3,32),(279,3,33),(280,3,34),(281,3,35),(282,3,36),(283,3,37),(284,3,38),(285,3,39),(286,3,40),(287,3,41),(288,3,42),(289,3,43),(290,3,44),(291,3,45),(292,3,46),(293,3,47),(294,3,48),(295,3,49),(296,3,50),(297,3,51),(298,3,52),(299,3,53),(300,3,54),(301,3,55),(302,3,56),(303,3,57),(304,3,58),(305,3,59),(306,3,60),(307,3,61),(308,3,62),(309,3,63),(310,3,64),(311,3,65),(312,3,66),(313,3,67),(314,3,68),(315,3,69),(316,3,70),(317,3,71),(318,3,72),(319,3,73),(320,3,74),(321,3,75),(322,3,76),(323,3,77),(324,3,78),(325,3,79),(326,3,80),(327,3,81),(328,3,82),(329,3,83),(330,3,84),(331,3,85),(332,3,86),(333,3,87),(334,3,88),(335,3,89),(336,3,90),(337,3,91),(338,3,92),(339,3,93),(340,3,94),(341,3,95),(342,3,96),(343,3,97),(344,3,98),(345,3,99),(346,3,100),(347,3,101),(348,3,102),(349,3,103),(350,3,104),(351,3,105),(352,3,106),(353,3,107),(354,3,108),(355,3,109),(356,3,110),(357,3,111),(358,3,112),(359,3,113),(360,3,114),(361,3,115),(362,3,116),(363,3,117),(364,3,118),(365,3,119),(366,3,120),(367,3,121),(368,3,122),(369,3,123);
/*!40000 ALTER TABLE `empleado_detalle_tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Vigilante'),(2,'Empleado'),(3,'Otro');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'LOS LAGOS'),(2,'ATACAMA'),(3,'RM'),(4,'CALAMA'),(5,'PUERTO MONTT');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(45) NOT NULL,
  `banco_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `banco_id_idx` (`banco_id`),
  KEY `region_id_idx` (`region_id`),
  CONSTRAINT `banco_id` FOREIGN KEY (`banco_id`) REFERENCES `banco` (`id`),
  CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'Bella Vista',1,1),(2,'Las Tarrias',1,1),(3,'La Araucana',3,2),(4,'Mapocho',3,1),(5,'La Vega',2,2),(6,'El Condor',2,3);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal_acceso`
--

DROP TABLE IF EXISTS `sucursal_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal_acceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal_id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `registro_fecha` datetime NOT NULL,
  `acceso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal_id_idx` (`sucursal_id`),
  KEY `empleado_id_idx` (`empleado_id`),
  KEY `acceso_id_idx` (`acceso_id`),
  CONSTRAINT `sucursal_acceso_ibfk_1` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `sucursal_acceso_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  CONSTRAINT `sucursal_acceso_ibfk_3` FOREIGN KEY (`acceso_id`) REFERENCES `acceso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal_acceso`
--

LOCK TABLES `sucursal_acceso` WRITE;
/*!40000 ALTER TABLE `sucursal_acceso` DISABLE KEYS */;
INSERT INTO `sucursal_acceso` VALUES (1,1,1,'2020-03-30 10:43:16',1),(2,1,1,'2020-03-30 01:57:39',1),(3,2,1,'2020-03-30 23:36:57',1),(4,3,2,'2020-03-30 21:23:49',1),(5,4,3,'2020-03-30 01:28:24',1),(6,5,4,'2020-03-30 18:46:08',1),(7,1,1,'2020-03-30 23:43:16',2),(8,1,1,'2020-03-30 02:57:39',2),(9,2,1,'2020-03-30 01:36:57',2),(10,3,2,'2020-03-30 22:23:49',2),(11,4,3,'2020-03-30 02:28:24',2),(12,5,4,'2020-03-30 20:46:08',2);
/*!40000 ALTER TABLE `sucursal_acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal_empleado`
--

DROP TABLE IF EXISTS `sucursal_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal_empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sucursal_id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `registro_fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal_empleado_ibfk_1_idx` (`sucursal_id`),
  KEY `sucursal_empleado_ibfk_2_idx` (`empleado_id`),
  CONSTRAINT `sucursal_empleado_ibfk_1` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `sucursal_empleado_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal_empleado`
--

LOCK TABLES `sucursal_empleado` WRITE;
/*!40000 ALTER TABLE `sucursal_empleado` DISABLE KEYS */;
INSERT INTO `sucursal_empleado` VALUES (1,1,1,'2014-03-18'),(2,1,5,'2013-01-27'),(3,1,14,'2015-05-31'),(4,1,15,'2022-03-04'),(5,1,20,'2019-06-17'),(6,1,23,'2017-03-04'),(7,1,24,'2013-10-12'),(8,1,25,'2016-09-21'),(9,1,30,'2017-02-14'),(10,1,36,'2019-08-16'),(11,1,37,'2014-12-25'),(12,1,43,'2014-03-18'),(13,1,46,'2013-02-21'),(14,1,56,'2018-09-17'),(15,1,57,'2020-06-21'),(16,1,59,'2017-03-21'),(17,1,60,'2016-07-10'),(18,1,61,'2018-12-03'),(19,1,66,'2013-08-21'),(20,1,67,'2012-11-26'),(21,1,68,'2014-02-13'),(22,1,74,'2018-04-29'),(23,1,75,'2018-09-28'),(24,1,76,'2016-01-06'),(25,1,77,'2012-09-14'),(26,1,86,'2018-11-28'),(27,1,87,'2017-02-08'),(28,4,89,'2013-12-04'),(29,4,90,'2016-05-06'),(30,4,92,'2012-12-06'),(31,5,98,'2014-06-26'),(32,5,105,'2012-05-18'),(33,5,108,'2014-03-30'),(34,6,111,'2017-10-21'),(35,6,114,'2017-02-11'),(36,6,115,'2014-02-10'),(37,6,122,'2013-06-22'),(38,6,124,'2018-06-07'),(39,6,125,'2015-04-14'),(40,6,126,'2017-12-13'),(41,6,127,'2015-02-27'),(42,1,6,'2013-11-24'),(43,2,7,'2019-01-18'),(44,3,9,'2012-07-20'),(45,4,10,'2017-06-05'),(46,5,11,'2021-09-05'),(47,6,16,'2021-07-22'),(48,1,17,'2018-01-19'),(49,2,18,'2013-11-14'),(50,3,21,'2012-12-15'),(51,4,26,'2018-05-21'),(52,5,27,'2021-05-09'),(53,6,28,'2012-05-28'),(54,1,29,'2019-05-24'),(55,2,31,'2017-02-19'),(56,3,32,'2013-04-12'),(57,4,38,'2015-07-10'),(58,5,39,'2017-08-08'),(59,6,40,'2012-12-19'),(60,1,44,'2015-05-12'),(61,2,45,'2014-04-05'),(62,3,47,'2013-12-04'),(63,4,50,'2020-04-08'),(64,5,51,'2019-07-30'),(65,6,53,'2018-04-09'),(66,1,54,'2019-04-25'),(67,2,58,'2019-04-01'),(68,3,62,'2014-03-16'),(69,4,63,'2016-10-24'),(70,5,69,'2020-05-15'),(71,6,70,'2022-03-15'),(72,1,78,'2021-10-09'),(73,2,79,'2017-04-15'),(74,3,80,'2015-12-19'),(75,4,83,'2017-09-11'),(76,5,91,'2014-03-22'),(77,6,93,'2019-06-16'),(78,1,94,'2012-06-03'),(79,2,99,'2015-01-26'),(80,3,100,'2014-01-05'),(81,4,109,'2019-02-05'),(82,5,116,'2015-08-12'),(83,6,119,'2013-07-10'),(84,1,120,'2017-09-29'),(85,2,121,'2016-07-14'),(86,3,2,'2013-07-29'),(87,4,3,'2017-11-22'),(88,5,4,'2016-11-21'),(89,6,8,'2018-03-17'),(90,1,12,'2021-09-18'),(91,2,13,'2019-10-04'),(92,3,19,'2016-04-26'),(93,4,22,'2012-12-15'),(94,5,33,'2018-07-14'),(95,6,34,'2015-02-20'),(96,1,35,'2021-12-10'),(97,2,41,'2020-03-25'),(98,3,42,'2016-11-05'),(99,4,48,'2021-06-23'),(100,5,49,'2015-06-10'),(101,6,52,'2013-04-12'),(102,1,55,'2015-07-10'),(103,2,64,'2017-08-08'),(104,3,65,'2012-12-19'),(105,4,71,'2015-05-12'),(106,5,72,'2014-04-05'),(107,6,73,'2013-12-04'),(108,1,81,'2020-04-08'),(109,2,82,'2019-07-30'),(110,3,84,'2018-04-09'),(111,4,85,'2019-04-25'),(112,5,88,'2019-04-01'),(113,6,95,'2014-03-16'),(114,1,96,'2016-10-24'),(115,2,97,'2020-05-15'),(116,3,101,'2022-03-15'),(117,4,102,'2021-10-09'),(118,5,103,'2017-04-15'),(119,6,104,'2015-12-19'),(120,1,106,'2017-09-11'),(121,2,107,'2014-03-22'),(122,3,110,'2019-06-16'),(123,4,112,'2012-06-03'),(124,5,113,'2015-01-26'),(125,6,117,'2014-01-05'),(126,1,118,'2019-02-05'),(127,2,123,'2015-08-12'),(128,2,1,'2013-07-10'),(129,2,5,'2017-09-29'),(130,2,14,'2016-07-14'),(131,2,15,'2013-07-29'),(132,2,20,'2017-11-22'),(133,2,23,'2016-11-21'),(134,2,24,'2018-03-17'),(135,2,25,'2021-09-18'),(136,2,30,'2019-10-04'),(137,3,20,'2016-04-26'),(138,3,23,'2012-12-15'),(139,3,24,'2018-07-14'),(140,3,25,'2015-02-20'),(141,3,30,'2021-12-10'),(142,3,111,'2020-03-25'),(143,3,114,'2016-11-05'),(144,3,115,'2021-06-23'),(145,3,122,'2015-06-10');
/*!40000 ALTER TABLE `sucursal_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal_observacion`
--

DROP TABLE IF EXISTS `sucursal_observacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal_observacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(250) NOT NULL,
  `registro_fecha` datetime NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `sucursal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal_observacion_ibfk_1_idx` (`sucursal_id`),
  KEY `sucursal_observacion_ibfk_2_idx` (`empleado_id`),
  CONSTRAINT `sucursal_observacion_ibfk_1` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `sucursal_observacion_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal_observacion`
--

LOCK TABLES `sucursal_observacion` WRITE;
/*!40000 ALTER TABLE `sucursal_observacion` DISABLE KEYS */;
INSERT INTO `sucursal_observacion` VALUES (1,'Se encontro una ventana mal cerrada','2020-03-30 23:43:16',1,2),(2,'Habia un compañero con una visita no autorizada','2020-03-30 02:57:39',1,2),(3,'La policia estaba inspeccionando el area','2020-03-30 11:43:16',1,2),(4,'La sala comedor estaba en mala condicion de aseo','2020-03-30 10:23:49',2,3),(5,'Trabaje hasta tarde segun acordado con jefatura','2020-03-30 02:28:24',3,4),(6,'Habian personas desconocidas en el acceso principal','2020-03-30 08:46:08',4,5);
/*!40000 ALTER TABLE `sucursal_observacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea`
--

DROP TABLE IF EXISTS `tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea`
--

LOCK TABLES `tarea` WRITE;
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` VALUES (1,'Llamar a carabineros'),(2,'Reporte de situación'),(3,'Reporte de inicidencias'),(4,'Generar observaciones');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_sistema`
--

DROP TABLE IF EXISTS `usuario_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_sistema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `token` varchar(45) NOT NULL,
  `registro_fecha` date NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `vigente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_sistema_ibfk_1_idx` (`empleado_id`),
  CONSTRAINT `usuario_sistema_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_sistema`
--

LOCK TABLES `usuario_sistema` WRITE;
/*!40000 ALTER TABLE `usuario_sistema` DISABLE KEYS */;
INSERT INTO `usuario_sistema` VALUES (1,'thallen12','8V6OM3g','2017-03-23',1,1),(2,'thallen0','NsY3KYIlR','2019-06-26',2,1),(3,'cshearn1','zNMAusmV','2018-07-27',3,1),(4,'rsemken2','CxuIad2cfg','2020-03-02',4,1),(5,'bwilby3','m0lVGvuYm3Vk','2017-07-31',5,1),(6,'dlaffoleylane4','sqJg3H4PQ','2016-09-05',6,1),(7,'wjammet5','HKcuB3UdDXB','2019-08-23',7,1),(8,'tipsgrave6','yvGL2FJTYd','2016-04-18',8,1),(9,'rwebber7','FbSQ7iEnkdRr','2017-11-01',9,1),(10,'rackenhead8','krwoR597uwt','2016-06-12',10,1),(11,'gyepiskopov9','H4jUMf3grWj','2017-08-06',11,1),(12,'cwenmana','loNlOCVIJNY','2019-09-08',12,1),(13,'tsiddenb','kYTbezPFV9','2020-02-19',13,1),(14,'jglowachac','s6PlIpajoQV','2017-07-22',14,1),(15,'vgoneyd','I4TVee','2017-08-03',15,1),(16,'lwhimpe','O2F1XXWZ','2017-05-11',16,1),(17,'despinazof','3HcSHwYZ','2019-10-17',17,1),(18,'hflindersg','7l4uBAz5','2017-08-03',18,1),(19,'ngelsthorpeh','3ecNbBwpyUf','2019-06-06',19,1),(20,'cocallerani','qNfSsBWq3HT','2019-11-30',20,1),(21,'fbrokenshawj','TMM9La','2017-03-06',21,1),(22,'helcoatk','oMx0HiuRWkZL','2018-08-16',22,1),(23,'shaglandl','wMDYDw07','2016-10-28',23,1),(24,'sknudsenm','Fqs5bVmTfv','2017-02-15',24,1),(25,'jthursfieldn','nEAuyntZRT3','2019-03-25',25,1),(26,'liacobassio','ERAjaWn','2018-06-24',26,1),(27,'jcrownep','59bWNm2vCD','2019-11-27',27,1),(28,'dpetracekq','B6OrnjkykwW','2019-01-12',28,1),(29,'sdebroker','jpcR8Uf','2020-01-28',29,1),(30,'epeotzs','GtCtBBE3','2018-06-23',30,1),(31,'nboundst','YODJ4cqYhVd','2020-02-29',31,1),(32,'rjeaffersonu','g8jlRz','2019-08-23',32,1),(33,'hvearev','G02CdZ9Q7','2018-11-11',33,1),(34,'rgwylltw','dqRLJiPYW5','2017-05-16',34,1),(35,'sbannellx','3wiXay','2018-01-15',35,1),(36,'dfrapey','bwtSI11S9','2016-06-20',36,1),(37,'pstearnz','lWaLTZxLf1k4','2019-04-01',37,1),(38,'kgoodreid10','rsCSZiM2mZl','2019-05-19',38,1),(39,'mhabbes11','9JNUVumPZCB','2019-12-05',39,1),(40,'greaditt12','53A9e55kU26c','2016-06-19',40,1),(41,'nhake13','2QDyxIZl','2019-05-15',41,1),(42,'azucker14','bOaD43j','2018-02-28',42,1),(43,'pumney15','cD3B2TaUMbag','2018-01-21',43,1),(44,'bfenner16','HmuOwYYlq','2020-03-29',44,1),(45,'vryding17','VjgZZJlAcbe','2019-02-25',45,1),(46,'khorick18','V7fHUmCYMj','2019-11-11',46,1),(47,'eduran19','2ty4wyQ','2020-01-18',47,1),(48,'jcrampsy1a','vKOfxC2Iu6E','2020-01-26',48,1),(49,'jkitchaside1b','uteRL0S5','2017-11-19',49,1),(50,'bleisman1c','l3G76B9','2019-02-13',50,1),(51,'fhazelhurst1d','Lz2uUg0Em','2019-10-11',51,1),(52,'kbellew1e','oQuicADoItGT','2020-01-19',52,1),(53,'ldomke1f','iAZhNtEb7','2018-10-18',53,1),(54,'lgillani1g','JycTY1','2017-08-31',54,1),(55,'tceney1h','vxPdpgcBS6x','2018-01-09',55,1),(56,'dmillyard1i','mHlsabe','2017-11-08',56,1),(57,'jhenriques1j','8Qdeptu6O','2019-08-29',57,1),(58,'dleggan1k','Sc8amOI3HJ','2017-02-16',58,1),(59,'gstorch1l','w3mti9lvy','2018-02-02',59,1),(60,'jcarlyle1m','9nUTrAU2cYN','2019-06-07',60,1),(61,'mlarkworthy1n','DO7IBejHtC','2019-08-01',61,1),(62,'mreedyhough1o','BXsKFa8s6w','2018-11-14',62,1),(63,'mbrennand1p','ba8vPVTbOjh','2017-12-20',63,1),(64,'vallewell1q','iio0BAwzXHH','2017-08-01',64,1),(65,'alohden1r','6PhxQvm','2016-09-03',65,1),(66,'nbattershall1s','MsaNQ7mYUCw8','2020-02-04',66,1),(67,'cocrotty1t','HnZmVUFVq','2019-08-16',67,1),(68,'tmoodey1u','gu5n7yik','2020-03-29',68,1),(69,'nbuston1v','yRvSDlf43yd2','2020-02-23',69,1),(70,'mgreet1w','7SJ0rBn4','2018-05-18',70,1),(71,'rdunbabin1x','JNozDcC57','2020-01-16',71,1),(72,'stritten1y','ysZCxlHDZN','2018-08-31',72,1),(73,'twhiteson1z','Wlj6ayaT','2017-04-10',73,1),(74,'lwagge20','Ds6l1f','2017-04-04',74,1),(75,'mherreros21','WWrwx3','2019-01-06',75,1),(76,'estarmore22','kLkoW1cOmx','2018-06-30',76,0),(77,'kchapelhow23','BfHY7dRVunhJ','2018-02-02',77,1),(78,'hmckevin24','nHuvZRByJ2','2019-03-19',78,1),(79,'treisenberg25','NrjSHqZg84sw','2020-01-20',79,1),(80,'sleverson26','jSCXYwc','2019-03-26',80,1),(81,'jwhitty27','QaCF36jLNPA','2016-06-11',81,1),(82,'mspurman28','GY2O0kHO8l4','2016-10-19',82,1),(83,'cwisdish29','4BSFUGgUW','2019-05-07',83,1),(84,'adiruggero2a','arcYBqxT8','2019-03-25',84,1),(85,'cmallett2b','b2NgrB6Ajd1w','2017-11-06',85,1),(86,'lbannister2c','FVxjrDOnfUB','2018-10-09',86,1),(87,'dhowlin2d','tvUvQcvE','2019-04-02',87,1),(88,'bhayward2e','8QlltZHR','2017-12-19',88,1),(89,'iblythin2f','0bfQ6NH1aZ','2019-07-19',89,1),(90,'llummis2g','XDFqp7ko16eQ','2019-03-22',90,1),(91,'gclifford2h','UQJmteVfcAhE','2018-09-12',91,1),(92,'mtebald2i','qjkFOH','2016-07-18',92,1),(93,'woosthoutdevree2j','R74J1B','2016-10-18',93,1),(94,'wleyson2k','hCdxPUzNYcm','2017-07-06',94,1),(95,'vrizzi2l','NwariFXFR048','2017-12-03',95,1),(96,'areinbach2m','7cnhYo5qjyuA','2018-11-15',96,1),(97,'mritzman2n','2ZjYqX','2018-10-15',97,1),(98,'edecruse2o','KueRTuF6QC','2018-12-25',98,1),(99,'mpomfret2p','fEyL6Eld560P','2016-08-13',99,1),(100,'bciccerale2q','0NkKWrKvc','2018-04-11',100,1),(101,'ewinear2r','I8nt5u','2018-02-02',101,1),(102,'vbidder0','HX0igo','2019-03-19',102,1),(103,'adoale1','10InWJiO8e','2020-01-20',103,1),(104,'lsalway2','MmHk3OB','2019-03-26',104,1),(105,'rgregoli3','vg0DCvWId0','2016-06-11',105,1),(106,'jdruitt4','A5hiN925h','2016-10-19',106,1),(107,'smacevilly5','8HdpEt','2019-05-07',107,1),(108,'ibeardsley6','3wdNzt4x','2019-03-25',108,1),(109,'lenrico7','AolZ35TJB','2017-11-06',109,1),(110,'rsirette8','zYlnHb5','2018-10-09',110,1),(111,'kmacavaddy9','oKsHuOzYOM','2019-04-02',111,1),(112,'schoppinga','rkhZ2hpb8','2017-12-19',112,1),(113,'tnindb','leuXVRlzitT','2019-07-19',113,1),(114,'eberkeleyc','8XjFuyAd','2019-03-22',114,1),(115,'dvenningd','QuhMS27','2018-09-12',115,1),(116,'dmalmare','0n9B6A','2016-07-18',116,1),(117,'tleddief','9HtgrrWkBH','2016-10-18',117,0),(118,'arosemang','00CESP8I','2017-07-06',118,1),(119,'rbernardosh','LcIWvcqBj2o','2017-12-03',119,1),(120,'ebalei','jCZt77','2018-11-15',120,1),(121,'nellimanj','KlCXx2','2018-10-15',121,1),(122,'dfaircliffek','IYiGnDq5QGR','2018-12-25',122,1),(123,'msnufflebottoml','tj3VF038Kwr','2016-08-13',123,1),(124,'eblasm','LW0zmLuW5','2018-04-11',124,1),(125,'cpilleyn','OKBH5H','2018-12-25',125,1),(126,'leccleso','9HtgrrWkBH','2016-08-13',126,1),(127,'nsheptonp','00CESP8I','2018-04-11',127,1);
/*!40000 ALTER TABLE `usuario_sistema` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 18:53:01
