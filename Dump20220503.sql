-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airportdatabase
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airlinecompany`
--

DROP TABLE IF EXISTS `airlinecompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlinecompany` (
  `name_aic` char(25) NOT NULL,
  `abbreviation_aic` char(25) DEFAULT NULL,
  `airport_id_a` int DEFAULT NULL,
  PRIMARY KEY (`name_aic`),
  KEY `FK_airport_id_a` (`airport_id_a`),
  CONSTRAINT `FK_airport_id_a` FOREIGN KEY (`airport_id_a`) REFERENCES `airport` (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlinecompany`
--

LOCK TABLES `airlinecompany` WRITE;
/*!40000 ALTER TABLE `airlinecompany` DISABLE KEYS */;
INSERT INTO `airlinecompany` VALUES ('Air China','AC',1),('Alitalia','AI',1),('American Airlines','AA',1),('Delta Airlines','DA',1),('Emirates Airline','EA',1),('JetBlue Airways','JBA',1),('Jetstar','JS',1),('Lionair','LA',1),('Lufthansa','LH',1),('Ryanair','RA',1);
/*!40000 ALTER TABLE `airlinecompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airlinecompany_has_route`
--

DROP TABLE IF EXISTS `airlinecompany_has_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlinecompany_has_route` (
  `airlinecompany_name_aic` char(25) DEFAULT NULL,
  `route_id_r` int DEFAULT NULL,
  KEY `airlinecompany_name_aic` (`airlinecompany_name_aic`),
  KEY `route_id_r` (`route_id_r`),
  CONSTRAINT `airlinecompany_has_route_ibfk_1` FOREIGN KEY (`airlinecompany_name_aic`) REFERENCES `airlinecompany` (`name_aic`),
  CONSTRAINT `airlinecompany_has_route_ibfk_2` FOREIGN KEY (`route_id_r`) REFERENCES `route` (`id_r`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlinecompany_has_route`
--

LOCK TABLES `airlinecompany_has_route` WRITE;
/*!40000 ALTER TABLE `airlinecompany_has_route` DISABLE KEYS */;
INSERT INTO `airlinecompany_has_route` VALUES ('Emirates Airline',10),('Lufthansa',11),('Lufthansa',12),('American Airlines',13),('Delta Airlines',14),('JetBlue Airways',15),('Ryanair',16),('Lionair',17),('Jetstar',18),('Alitalia',19),('Jetstar',16),('Alitalia',17);
/*!40000 ALTER TABLE `airlinecompany_has_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `id_a` int NOT NULL,
  `city_a` char(25) DEFAULT NULL,
  `country_a` char(25) DEFAULT NULL,
  `name_a` char(25) DEFAULT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES (1,'Blagoevgrad','Bulgaria','AUBG');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id_c` int NOT NULL,
  `email_c` char(25) DEFAULT NULL,
  `gender_c` char(10) DEFAULT NULL,
  `ssn_c` int DEFAULT NULL,
  `SName_c` char(25) DEFAULT NULL,
  `name_c` char(25) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1001,'eai200@aubg.edu','female',1248314497,'Ivanova','Elena'),(1002,'ppd210@aubg.edu','female',56852956,'Dimkina','Petya'),(1003,'anh190@aubg.edu','female',75896254,'Huzenko','Anna'),(1004,'smm200@aubg.edu','male',23647856,'Mersimov','Said'),(1005,'hzy200@aubg.edu','male',23698745,'Yovev','Hristo'),(1006,'dzk200@aubg.edu','male',85469217,'Kirov','Dimitar'),(1007,'nsn200@aubg.edu','male',84596325,'Ninov','Nikolay'),(1008,'idm190@aubg.edu','male',63254189,'Minchev','Ivan'),(1009,'vesela2000@abv.bg','female',32159874,'Koleva','Vesela'),(1010,'polly.sulivan@gmail.com','female',256398745,'Sulivan','Polly');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `name_d` char(25) NOT NULL,
  `location_d` char(25) DEFAULT NULL,
  `man_id_d` int DEFAULT NULL,
  `airport_id` int DEFAULT NULL,
  PRIMARY KEY (`name_d`),
  KEY `FK_airport_id_idx` (`airport_id`),
  CONSTRAINT `FK_airport_id` FOREIGN KEY (`airport_id`) REFERENCES `airport` (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Airside operations','Floor 2',777,1),('Cleaning','Floor 1',555,1),('Financial','Floor 2',888,1),('Fire Fighting','Floor 0',555,1),('Immigration','Floor 1',999,1),('Information management','Floor 2',666,1),('Landside operations','Floor 1',888,1),('Operation','Floor 2',777,1),('Security','Floor 1',666,1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_has_employee`
--

DROP TABLE IF EXISTS `department_has_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_has_employee` (
  `department_name_d` char(25) DEFAULT NULL,
  `employee_id_e` int DEFAULT NULL,
  KEY `department_name_d` (`department_name_d`),
  KEY `employee_id_e` (`employee_id_e`),
  CONSTRAINT `department_has_employee_ibfk_1` FOREIGN KEY (`department_name_d`) REFERENCES `department` (`name_d`),
  CONSTRAINT `department_has_employee_ibfk_2` FOREIGN KEY (`employee_id_e`) REFERENCES `employee` (`id_e`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_has_employee`
--

LOCK TABLES `department_has_employee` WRITE;
/*!40000 ALTER TABLE `department_has_employee` DISABLE KEYS */;
INSERT INTO `department_has_employee` VALUES ('Security',101),('Financial',666),('Fire Fighting',777),('Immigration',888),('Operation',999),('Security',555),('Financial',102),('Immigration',103),('Security',104),('Operation',105),('Immigration',102),('Security',103),('Operation',104),('Fire Fighting',105);
/*!40000 ALTER TABLE `department_has_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependent`
--

DROP TABLE IF EXISTS `dependent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependent` (
  `id_e` int NOT NULL,
  `gender_dep` char(25) DEFAULT NULL,
  `bdate_dep` date DEFAULT NULL,
  `relationship_dep` char(25) DEFAULT NULL,
  PRIMARY KEY (`id_e`),
  CONSTRAINT `FK_dependent_id` FOREIGN KEY (`id_e`) REFERENCES `employee` (`id_e`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependent`
--

LOCK TABLES `dependent` WRITE;
/*!40000 ALTER TABLE `dependent` DISABLE KEYS */;
INSERT INTO `dependent` VALUES (101,'female','2010-05-01','daughter'),(102,'female','2007-08-15','daughter'),(103,'female','2011-04-04','daughter'),(104,'female','2015-06-20','daughter'),(105,'female','2018-01-17','daughter'),(555,'male','2020-02-17','son'),(666,'male','2009-06-17','son'),(777,'male','2009-06-10','son'),(888,'male','2012-06-13','son'),(999,'male','2016-10-17','son');
/*!40000 ALTER TABLE `dependent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id_e` int NOT NULL,
  `name_e` char(25) DEFAULT NULL,
  `ssn_e` char(25) DEFAULT NULL,
  `phone_e` char(25) DEFAULT NULL,
  `position_e` char(25) DEFAULT NULL,
  PRIMARY KEY (`id_e`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101,'Teodor Stoev','0256987569','02569874','Security Officer'),(102,'George Tashkoff','0265478912','0236595','Accountant'),(103,'Vanya Aleksandrova','0256478536','02589625','OCC'),(104,'Noma Tucker','2156987456','0326589','Firefighter'),(105,'Monika Evstatieva','3256974589','0125698745','Border Control'),(555,'Nikola Petrov','1369875264','0985697','Manager Fire Fighting'),(666,'Petya Dimkina','2569874539','0256987459','Manager Security'),(777,'Elena Ivanova','2569874526','0125864','Manager Operations'),(888,'Ivan Georgiev','0215698745','0125698','Manager Financials'),(999,'Daniela Kostova','2456987425','01256987','Manager Immigrations');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fare`
--

DROP TABLE IF EXISTS `fare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fare` (
  `id_f` int NOT NULL,
  `basic_f` int DEFAULT NULL,
  `copoun_f` char(25) DEFAULT NULL,
  `ticket_id_t` int DEFAULT NULL,
  PRIMARY KEY (`id_f`),
  KEY `FK_ticket_id` (`ticket_id_t`),
  CONSTRAINT `FK_ticket_id` FOREIGN KEY (`ticket_id_t`) REFERENCES `ticket` (`id_t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fare`
--

LOCK TABLES `fare` WRITE;
/*!40000 ALTER TABLE `fare` DISABLE KEYS */;
INSERT INTO `fare` VALUES (301,1,'abcd12h',2001),(302,2,'sjal526',2002),(303,1,'ufjfl25',2003),(304,3,'sdd2s8s',2004),(305,1,'asdie29',2005),(306,2,'akslp85',2006),(307,2,'olhph24',2007),(308,1,'psldhu2',2008),(309,3,'mxnpay7',2009),(310,1,'amalps0',2010);
/*!40000 ALTER TABLE `fare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `id_p` int NOT NULL,
  `status_p` char(25) DEFAULT NULL,
  `gate_p` int DEFAULT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (123,'boarding',1),(124,'ready for boarding',2),(125,'departed',3),(126,'closed',4),(127,'on position',5),(128,'on position',6),(129,'departed',3),(130,'closed',4),(131,'on position',5),(132,'on position',6);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_has_route`
--

DROP TABLE IF EXISTS `flight_has_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_has_route` (
  `flight_id_p` int DEFAULT NULL,
  `route_id_r` int DEFAULT NULL,
  KEY `flight_id_p` (`flight_id_p`),
  KEY `route_id_r` (`route_id_r`),
  CONSTRAINT `flight_has_route_ibfk_1` FOREIGN KEY (`flight_id_p`) REFERENCES `flight` (`id_p`),
  CONSTRAINT `flight_has_route_ibfk_2` FOREIGN KEY (`route_id_r`) REFERENCES `route` (`id_r`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_has_route`
--

LOCK TABLES `flight_has_route` WRITE;
/*!40000 ALTER TABLE `flight_has_route` DISABLE KEYS */;
INSERT INTO `flight_has_route` VALUES (124,11),(125,12),(126,13),(127,14),(128,15),(123,10),(129,16),(130,17),(131,18),(132,19);
/*!40000 ALTER TABLE `flight_has_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `id_r` int NOT NULL,
  `departs_from_r` char(25) DEFAULT NULL,
  `destination_r` char(25) DEFAULT NULL,
  PRIMARY KEY (`id_r`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (10,'Blagoevgrad','New York'),(11,'Blagoevgrad','Boston'),(12,'Blagoevgrad','Miami'),(13,'Blagoevgrad','LA'),(14,'Blagoevgrad','Chicago'),(15,'Blagoevgrad','Austin'),(16,'Blagoevgrad','Frankfurt'),(17,'Blagoevgrad','Berlin'),(18,'Blagoevgrad','Paris'),(19,'Blagoevgrad','London');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id_t` int NOT NULL,
  `luggage_t` char(25) DEFAULT NULL,
  `price_t` int DEFAULT NULL,
  `time_f_t` time DEFAULT NULL,
  `date_f_t` date DEFAULT NULL,
  `flight_num_t` int DEFAULT NULL,
  `customer_id_t` int DEFAULT NULL,
  PRIMARY KEY (`id_t`),
  KEY `flight_num_idx` (`flight_num_t`),
  KEY `FK_customer_id` (`customer_id_t`),
  CONSTRAINT `flight_num` FOREIGN KEY (`flight_num_t`) REFERENCES `flight` (`id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (2001,'10kg',106,'08:30:00','2022-05-01',123,1001),(2002,'5kg',75,'08:30:00','2022-05-01',123,1002),(2003,'15kg',250,'09:30:00','2022-05-01',124,1003),(2004,'20kg',314,'09:30:00','2022-05-01',124,1004),(2005,'15kg',191,'10:00:00','2022-05-02',125,1005),(2006,'3kg',80,'10:00:00','2022-05-02',125,1006),(2007,'7kg',95,'15:20:00','2022-05-03',126,1007),(2008,'25kg',451,'17:10:00','2022-05-03',127,1008),(2009,'30kg',551,'13:15:00','2022-05-04',128,1009),(2010,'15kg',251,'09:30:00','2022-05-01',125,1010);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03 15:55:59
