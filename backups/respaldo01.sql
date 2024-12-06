-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: app_raices
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `auditlogs`
--

DROP TABLE IF EXISTS `auditlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditlogs` (
  `idAuditLogs` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `tableName` varchar(255) DEFAULT NULL,
  `recordId` int DEFAULT NULL,
  `oldValue` text,
  `newValue` text,
  `actionTime` datetime DEFAULT NULL,
  PRIMARY KEY (`idAuditLogs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditlogs`
--

LOCK TABLES `auditlogs` WRITE;
/*!40000 ALTER TABLE `auditlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `idContent` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idLesson` int DEFAULT NULL,
  `idMediaFile` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` tinytext NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idContent`),
  KEY `idUser` (`idUser`),
  KEY `idLesson` (`idLesson`),
  KEY `idMediaFile` (`idMediaFile`),
  CONSTRAINT `content_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `content_ibfk_2` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `content_ibfk_3` FOREIGN KEY (`idMediaFile`) REFERENCES `mediafiles` (`idMediaFile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `idGender` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idGender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `idLanguage` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `community` varchar(50) NOT NULL,
  `description` tinytext,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idLanguage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learningprogress`
--

DROP TABLE IF EXISTS `learningprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learningprogress` (
  `idProgress` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idLesson` int DEFAULT NULL,
  `idState` int DEFAULT NULL,
  `initDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `score` int DEFAULT NULL,
  `attempCount` int DEFAULT NULL,
  `timeSpent` time DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idProgress`),
  KEY `idUser` (`idUser`),
  KEY `idLesson` (`idLesson`),
  KEY `idState` (`idState`),
  CONSTRAINT `learningprogress_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `learningprogress_ibfk_2` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `learningprogress_ibfk_3` FOREIGN KEY (`idState`) REFERENCES `state` (`idState`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learningprogress`
--

LOCK TABLES `learningprogress` WRITE;
/*!40000 ALTER TABLE `learningprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `learningprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `idLesson` int NOT NULL AUTO_INCREMENT,
  `idLanguage` int DEFAULT NULL,
  `idLevel` int DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `description` tinytext NOT NULL,
  `isPremium` tinyint(1) DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idLesson`),
  KEY `idLanguage` (`idLanguage`),
  KEY `idLevel` (`idLevel`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`idLanguage`) REFERENCES `languages` (`idLanguage`),
  CONSTRAINT `lessons_ibfk_2` FOREIGN KEY (`idLevel`) REFERENCES `levels` (`idLevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `idLevel` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idLevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediafiles`
--

DROP TABLE IF EXISTS `mediafiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mediafiles` (
  `idMediaFile` int NOT NULL AUTO_INCREMENT,
  `media` varchar(50) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idMediaFile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediafiles`
--

LOCK TABLES `mediafiles` WRITE;
/*!40000 ALTER TABLE `mediafiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediafiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethods`
--

DROP TABLE IF EXISTS `paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethods` (
  `idPaymentMethod` int NOT NULL AUTO_INCREMENT,
  `methodName` varchar(15) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idPaymentMethod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethods`
--

LOCK TABLES `paymentmethods` WRITE;
/*!40000 ALTER TABLE `paymentmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `idPayment` int NOT NULL AUTO_INCREMENT,
  `paymentCode` varchar(255) DEFAULT NULL,
  `idUser` int DEFAULT NULL,
  `idSubscription` int DEFAULT NULL,
  `idPaymentMethod` int DEFAULT NULL,
  `idPaymentsGateway` int DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `paymentDate` datetime NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idPayment`),
  KEY `idUser` (`idUser`),
  KEY `idSubscription` (`idSubscription`),
  KEY `idPaymentMethod` (`idPaymentMethod`),
  KEY `idPaymentsGateway` (`idPaymentsGateway`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`idSubscription`) REFERENCES `subscriptions` (`idSubscription`),
  CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`idPaymentMethod`) REFERENCES `paymentmethods` (`idPaymentMethod`),
  CONSTRAINT `payments_ibfk_4` FOREIGN KEY (`idPaymentsGateway`) REFERENCES `paymentsgateways` (`idPaymentsGateway`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentsgateways`
--

DROP TABLE IF EXISTS `paymentsgateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentsgateways` (
  `idPaymentsGateway` int NOT NULL AUTO_INCREMENT,
  `gateway` varchar(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idPaymentsGateway`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentsgateways`
--

LOCK TABLES `paymentsgateways` WRITE;
/*!40000 ALTER TABLE `paymentsgateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentsgateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `idPeople` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `idUser` int DEFAULT NULL,
  `idGender` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idPeople`),
  KEY `idUser` (`idUser`),
  KEY `idGender` (`idGender`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `people_ibfk_2` FOREIGN KEY (`idGender`) REFERENCES `gender` (`idGender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT 'student',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `idState` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idState`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `idSubscription` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `subscriptionType` varchar(50) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `status` varchar(12) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idSubscription`),
  KEY `idUser` (`idUser`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlesson`
--

DROP TABLE IF EXISTS `userlesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlesson` (
  `idUserLesson` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idLesson` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `lastAccess` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idUserLesson`),
  KEY `idLesson` (`idLesson`),
  KEY `idUser` (`idUser`),
  CONSTRAINT `userlesson_ibfk_1` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `userlesson_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlesson`
--

LOCK TABLES `userlesson` WRITE;
/*!40000 ALTER TABLE `userlesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `idUserRol` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idRol` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idUserRol`),
  KEY `idUser` (`idUser`),
  KEY `idRol` (`idRol`),
  CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `mail` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-06  1:21:13
