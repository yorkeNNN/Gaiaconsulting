-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: xprod
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `approvisionner`
--

DROP TABLE IF EXISTS `approvisionner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approvisionner` (
  `produitsappro_idProduitsAppro` int NOT NULL,
  `fournisseur_idFournisseur` int NOT NULL,
  `refExterneProduit` varchar(255) DEFAULT NULL,
  `prixApproUHTProd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`produitsappro_idProduitsAppro`,`fournisseur_idFournisseur`),
  KEY `fk_produitsappro_has_fournisseur_fournisseur1_idx` (`fournisseur_idFournisseur`),
  CONSTRAINT `fk_produitsappro_has_fournisseur_fournisseur1` FOREIGN KEY (`fournisseur_idFournisseur`) REFERENCES `fournisseur` (`idFournisseur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approvisionner`
--

LOCK TABLES `approvisionner` WRITE;
/*!40000 ALTER TABLE `approvisionner` DISABLE KEYS */;
INSERT INTO `approvisionner` VALUES (1,1,'1A','19.99'),(2,2,'2B','12.50'),(3,3,'3C','55.30'),(4,4,'4D','102.42');
/*!40000 ALTER TABLE `approvisionner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-13 19:03:47
