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
  `idUser` int DEFAULT NULL,
  `idLesson` int DEFAULT NULL,
  `idMediaFile` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` tinytext NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idContent`),
  KEY `idUser` (`idUser`),
  KEY `idLesson` (`idLesson`),
  KEY `idMediaFile` (`idMediaFile`),
  CONSTRAINT `content_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `content_ibfk_2` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `content_ibfk_3` FOREIGN KEY (`idMediaFile`) REFERENCES `mediafiles` (`idMediaFile`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,NULL,1,1,'url.jpg','mascaras ancestrales de la comunidad Awá','2024-10-04 07:20:00',NULL),(2,NULL,2,2,'url.mp3','saludo de buenos dias en Awapit','2024-10-04 07:20:00',NULL),(3,NULL,3,3,'url.mp4','coversación en Awapit','2024-10-04 07:20:00',NULL),(4,NULL,4,4,'url.doc','alfabeto A\'ingae','2024-10-04 07:20:00',NULL);
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
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idGender`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Femenino','2024-10-25 14:31:15',NULL),(2,'Masculino','2024-10-25 14:31:15',NULL),(3,'Otro','2024-10-25 14:31:15',NULL);
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
  `name` varchar(15) NOT NULL,
  `community` varchar(15) NOT NULL,
  `description` tinytext,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idLanguage`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Awapit','Awá','Awapit es la lengua hablada por la comunidad Awá','2024-10-04 16:06:00',NULL),(2,'A\'ingae','Confán','A\'ingae es la lengua hablada por la comunidad Cofán','2024-10-04 16:07:00',NULL),(3,'Koreguaje','Coreguaje','Koreguaje es la lengua hablada por la comunidad Coreguaje','2024-10-04 16:08:00',NULL),(4,'Embera','Embera','Embera es la lengua hablada por la comunidad Embera','2024-10-04 16:09:00',NULL),(5,'Inga','Inga','Inga es la lengua hablada por la comunidad Inga, que pertenece a la familia Quechua','2024-10-04 16:10:00',NULL),(6,'Kamentsá','Kamentsá','kamentsá es la lengua hablada por la comunidad Kamentsá','2024-10-04 16:11:00',NULL),(7,'Kichwa','Kichwa','Kichwa es la lengua hablada por la comunidad Kichwa, que es una variante del Quechua','2024-10-04 16:12:00',NULL),(8,'Nasa Yuwe','Nasa','Nasa Yuwe es la lengua hablada por la comunidad Nasa','2024-10-04 16:13:00',NULL),(9,'Pasto','Pastos','Pasto es la lengua hablada por la comunidad Pastos','2024-10-04 16:14:00',NULL),(10,'Siona','Siona','Siona es la lengua hablada por la comunidad Siona','2024-10-04 16:15:00',NULL),(11,'Murui Muinane','Murui Muina','Murui Muinane es la lengua hablada por la comunidad Murui Muina','2024-10-04 16:16:00',NULL),(12,'Pijao','Pijao','Pijao es la lengua hablada por la comunidad Pijao','2024-10-04 16:17:00',NULL),(13,'Carijona','Carijona','Carijona es la lengua hablada por la comunidad Carijona','2024-10-04 16:18:00',NULL);
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
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idProgress`),
  KEY `idUser` (`idUser`),
  KEY `idLesson` (`idLesson`),
  KEY `idState` (`idState`),
  CONSTRAINT `learningprogress_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `learningprogress_ibfk_2` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `learningprogress_ibfk_3` FOREIGN KEY (`idState`) REFERENCES `state` (`idState`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learningprogress`
--

LOCK TABLES `learningprogress` WRITE;
/*!40000 ALTER TABLE `learningprogress` DISABLE KEYS */;
INSERT INTO `learningprogress` VALUES (1,1,20,3,'2024-10-04 07:20:00','2024-10-25 14:31:16',1000,2,'07:20:00','2024-10-04 07:20:00',NULL),(2,2,2,3,'2024-10-04 07:20:00','2024-10-25 14:31:16',1000,5,'07:20:00','2024-10-04 07:20:00',NULL),(3,7,10,3,'2024-10-04 07:20:00','2024-10-25 14:31:16',1000,1,'07:20:00','2024-10-04 07:20:00',NULL),(4,3,16,3,'2024-10-04 07:20:00','2024-10-25 14:31:16',1000,2,'07:20:00','2024-10-04 07:20:00',NULL);
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
  `title` varchar(15) NOT NULL,
  `description` tinytext NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idLesson`),
  KEY `idLanguage` (`idLanguage`),
  KEY `idLevel` (`idLevel`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`idLanguage`) REFERENCES `languages` (`idLanguage`),
  CONSTRAINT `lessons_ibfk_2` FOREIGN KEY (`idLevel`) REFERENCES `levels` (`idLevel`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,1,'Clase Awapit','Conceptos basicos','2024-10-10 17:00:00',NULL),(2,1,2,'Clase Awapit','Gramatica','2024-10-04 17:00:00',NULL),(3,1,3,'Clase Awapit','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(4,2,1,'Clase A\'ingae','Conceptos basicos','2024-10-04 17:00:00',NULL),(5,2,2,'Clase A\'ingae','Gramatica','2024-10-04 17:00:00',NULL),(6,2,3,'Clase A\'ingae','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(7,3,1,'Clase Koreguaje','Conceptos basicos','2024-10-04 17:00:00',NULL),(8,3,2,'Clase Koreguaje','Gramatica','2024-10-04 17:00:00',NULL),(9,3,3,'Clase Koreguaje','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(10,4,1,'Clase Embera','Conceptos basicos','2024-10-04 17:00:00',NULL),(11,4,2,'Clase Embera','Gramatica','2024-10-04 17:00:00',NULL),(12,4,3,'Clase Embera','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(13,5,1,'Clase Inga','Conceptos basicos','2024-10-04 17:00:00',NULL),(14,5,2,'Clase Inga','Gramatica','2024-10-04 17:00:00',NULL),(15,5,3,'Clase Inga','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(16,6,1,'Clase Kamentsá','Conceptos basicos','2024-10-04 17:00:00',NULL),(17,6,2,'Clase Kamentsá','Gramatica','2024-10-04 17:00:00',NULL),(18,6,3,'Clase Kamentsá','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(19,7,1,'Clase Kichwa','Conceptos basicos','2024-10-04 17:00:00',NULL),(20,7,2,'Clase Kichwa','Gramatica','2024-10-04 17:00:00',NULL),(21,7,3,'Clase Kichwa','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(22,8,1,'Clase Nasa','Conceptos basicos','2024-10-04 17:00:00',NULL),(23,8,2,'Clase Nasa','Gramatica','2024-10-04 17:00:00',NULL),(24,8,3,'Clase Nasa','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(25,9,1,'Clase Pasto','Conceptos basicos','2024-10-04 17:00:00',NULL),(26,9,2,'Clase Pasto','Gramatica','2024-10-04 17:00:00',NULL),(27,9,3,'Clase Pasto','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(28,10,1,'Clase Siona','Conceptos basicos','2024-10-04 17:00:00',NULL),(29,10,2,'Clase Siona','Gramatica','2024-10-04 17:00:00',NULL),(30,10,3,'Clase Siona','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(31,11,1,'Clase Murui','Conceptos basicos','2024-10-04 17:00:00',NULL),(32,11,2,'Clase Murui','Gramatica','2024-10-04 17:00:00',NULL),(33,11,3,'Clase Murui','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(34,12,1,'Clase Pijao','Conceptos basicos','2024-10-04 17:00:00',NULL),(35,12,2,'Clase Pijao','Gramatica','2024-10-04 17:00:00',NULL),(36,12,3,'Clase Pijao','Aprendizaje Oral','2024-10-04 17:00:00',NULL),(37,13,1,'Clase Carijona','Conceptos basicos','2024-10-04 17:00:00',NULL),(38,13,2,'Clase Carijona','Gramatica','2024-10-04 17:00:00',NULL),(39,13,3,'Clase Carijona','Aprendizaje Oral','2024-10-04 17:00:00',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,'Facil','2024-10-04 17:00:00',NULL),(2,'Medio','2024-10-04 17:00:00',NULL),(3,'Difícil','2024-10-04 17:00:00',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediafiles`
--

LOCK TABLES `mediafiles` WRITE;
/*!40000 ALTER TABLE `mediafiles` DISABLE KEYS */;
INSERT INTO `mediafiles` VALUES (1,'imagen','2024-10-04 07:20:00',NULL),(2,'audio','2024-10-04 07:20:00',NULL),(3,'video','2024-10-04 07:20:00',NULL),(4,'documento','2024-10-04 07:20:00',NULL);
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
  `birthdate` date NOT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `idUser` int DEFAULT NULL,
  `idGender` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idPeople`),
  KEY `idUser` (`idUser`),
  KEY `idGender` (`idGender`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `people_ibfk_2` FOREIGN KEY (`idGender`) REFERENCES `gender` (`idGender`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Nenfar','Chapid','2000-01-15','url.jpg',1,2,'2024-10-04 16:00:00',NULL),(2,'Juan','Lopez','2002-05-22','url.jpg',2,2,'2024-10-04 16:01:00',NULL),(3,'Andrea','Suarez','2004-09-30','url.jpg',3,1,'2024-10-04 16:02:00',NULL),(4,'Camilo','Cortez','2006-05-22','url.jpg',4,2,'2024-10-04 16:03:00',NULL),(5,'Maria','Torres','2007-05-02','url.jpg',5,1,'2024-10-04 16:04:00',NULL),(6,'Esteban','Rodriguez','2002-10-22','url.jpg',6,2,'2024-10-04 16:05:00',NULL),(7,'Sofia','Gomez','2010-08-22','url.jpg',7,1,'2024-10-25 14:31:15',NULL);
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
  `name` varchar(15) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Estudiante','2024-10-04 17:00:00',NULL),(2,'Contribuidor','2024-10-04 17:00:00',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'No iniciado','2024-10-04 07:20:00',NULL),(2,'En progreso','2024-10-04 07:20:00',NULL),(3,'Completado','2024-10-04 07:20:00',NULL);
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
  `score` int DEFAULT NULL,
  `lastAccess` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idUserLesson`),
  KEY `idLesson` (`idLesson`),
  KEY `idUser` (`idUser`),
  CONSTRAINT `userlesson_ibfk_1` FOREIGN KEY (`idLesson`) REFERENCES `lessons` (`idLesson`),
  CONSTRAINT `userlesson_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlesson`
--

LOCK TABLES `userlesson` WRITE;
/*!40000 ALTER TABLE `userlesson` DISABLE KEYS */;
INSERT INTO `userlesson` VALUES (1,1,20,100,'2024-10-25 14:31:16','2024-10-04 15:00:00',NULL),(2,2,2,150,'2024-10-25 14:31:16','2024-10-04 11:46:00',NULL),(3,3,16,230,'2024-10-25 14:31:16','2024-10-04 07:20:00',NULL);
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
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idUserRol`),
  KEY `idUser` (`idUser`),
  KEY `idRol` (`idRol`),
  CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  CONSTRAINT `userroles_ibfk_2` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,1,1,'2024-10-04 17:00:00',NULL),(2,2,1,'2024-10-04 17:00:00',NULL),(3,3,1,'2024-10-04 17:00:00',NULL),(4,4,2,'2024-10-04 17:00:00',NULL),(5,5,2,'2024-10-04 17:00:00',NULL),(6,6,2,'2024-10-04 17:00:00',NULL),(7,7,1,'2024-10-25 14:31:16',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nenfar@gmail.com','1234abcd','2024-10-04 16:00:00',NULL),(2,'juan@gmail.com','1234abcd','2024-10-04 16:01:00',NULL),(3,'andrea@gmail.com','1234abcd','2024-10-04 16:02:00',NULL),(4,'camilo@gmail.com','1234abcd','2024-10-04 16:03:00',NULL),(5,'maria@gmail.com','1234abcd','2024-10-04 16:04:00',NULL),(6,'esteban@gmail.com','1234abcd','2024-10-04 16:05:00',NULL),(7,'sofia@gmail.com','1234abcd','2024-10-25 14:31:15',NULL);
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

-- Dump completed on 2024-10-25 16:05:17
