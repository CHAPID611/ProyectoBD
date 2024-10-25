-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app_raices
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `idContent` int NOT NULL AUTO_INCREMENT,
  `idLesson` int DEFAULT NULL,
  `idMediaFile` int DEFAULT NULL,
  `description` tinytext NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idContent`),
  KEY `idLesson` (`idLesson`),
  KEY `idMediaFile` (`idMediaFile`),
  CONSTRAINT `content_ibfk_1` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `content_ibfk_2` FOREIGN KEY (`idMediaFile`) REFERENCES `mediafiles` (`idMediaFile`)
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
-- Table structure for table `contributions`
--

DROP TABLE IF EXISTS `contributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributions` (
  `idContributions` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idLanguage` int DEFAULT NULL,
  `idMediaFile` int DEFAULT NULL,
  `description` tinytext NOT NULL,
  `contributionDate` datetime NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idContributions`),
  KEY `idMediaFile` (`idMediaFile`),
  KEY `idUser` (`idUser`),
  KEY `idLanguage` (`idLanguage`),
  CONSTRAINT `contributions_ibfk_1` FOREIGN KEY (`idMediaFile`) REFERENCES `mediafiles` (`idMediaFile`),
  CONSTRAINT `contributions_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `contributions_ibfk_3` FOREIGN KEY (`idLanguage`) REFERENCES `languages` (`idLanguage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributions`
--

LOCK TABLES `contributions` WRITE;
/*!40000 ALTER TABLE `contributions` DISABLE KEYS */;
/*!40000 ALTER TABLE `contributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `idLanguage` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `community` varchar(15) NOT NULL,
  `description` tinytext,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
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
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `idLesson` int NOT NULL AUTO_INCREMENT,
  `idLanguage` int DEFAULT NULL,
  `idLevel` int DEFAULT NULL,
  `title` varchar(15) NOT NULL,
  `description` tinytext NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
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
  `name` varchar(15) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
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
  `media` varchar(10) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `idPeople` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `idUser` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idPeople`),
  KEY `idUser` (`idUser`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`)
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
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progress` (
  `idProgress` int NOT NULL AUTO_INCREMENT,
  `idLesson` int DEFAULT NULL,
  `initDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `idState` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idProgress`),
  KEY `idLesson` (`idLesson`),
  KEY `idState` (`idState`),
  CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `progress_ibfk_2` FOREIGN KEY (`idState`) REFERENCES `state` (`idState`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
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
  `updateAt` datetime DEFAULT NULL,
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
-- Table structure for table `userlesson`
--

DROP TABLE IF EXISTS `userlesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlesson` (
  `idUserLesson` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idLesson` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
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
-- Table structure for table `userprogress`
--

DROP TABLE IF EXISTS `userprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprogress` (
  `idUserProgress` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idProgress` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idUserProgress`),
  KEY `idUser` (`idUser`),
  KEY `idProgress` (`idProgress`),
  CONSTRAINT `userprogress_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `userprogress_ibfk_2` FOREIGN KEY (`idProgress`) REFERENCES `progress` (`idProgress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprogress`
--

LOCK TABLES `userprogress` WRITE;
/*!40000 ALTER TABLE `userprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprogress` ENABLE KEYS */;
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
  `updateAt` datetime DEFAULT NULL,
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
  `password` varchar(8) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
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

-- Dump completed on 2024-10-11 21:03:15
