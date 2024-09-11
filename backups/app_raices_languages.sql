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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id_language` int NOT NULL AUTO_INCREMENT,
  `name_language` varchar(15) DEFAULT NULL,
  `community` varchar(15) DEFAULT NULL,
  `description` tinytext,
  PRIMARY KEY (`id_language`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Awapit','Awá','Awapit es la lengua hablada por la comunidad Awá'),(2,'A\'ingae','Confán','A\'ingae es la lengua hablada por la comunidad Cofán'),(3,'Koreguaje','Coreguaje','Koreguaje es la lengua hablada por la comunidad Coreguaje'),(4,'Embera','Embera','Embera es la lengua hablada por la comunidad Embera'),(5,'Inga','Inga','Inga es la lengua hablada por la comunidad Inga, que pertenece a la familia Quechua'),(6,'Kamentsá','Kamentsá','kamentsá es la lengua hablada por la comunidad Kamentsá'),(7,'Kichwa','Kichwa','Kichwa es la lengua hablada por la comunidad Kichwa, que es una variante del Quechua'),(8,'Nasa Yuwe','Nasa','Nasa Yuwe es la lengua hablada por la comunidad Nasa'),(9,'Pasto','Pastos','Pasto es la lengua hablada por la comunidad Pastos'),(10,'Siona','Siona','Siona es la lengua hablada por la comunidad Siona'),(11,'Murui Muinane','Murui Muina','Murui Muinane es la lengua hablada por la comunidad Murui Muina'),(12,'Pijao','Pijao','Pijao es la lengua hablada por la comunidad Pijao'),(13,'Carijona','Carijona','Carijona es la lengua hablada por la comunidad Carijona');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11 13:41:57
