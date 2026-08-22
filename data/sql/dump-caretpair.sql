-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: caretpair
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `antenne`
--

DROP TABLE IF EXISTS `antenne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antenne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `code_postal` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `loyer_mensuel_ht` decimal(10,2) NOT NULL,
  `assurance_voiture_mensuel_ht` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antenne`
--

LOCK TABLES `antenne` WRITE;
/*!40000 ALTER TABLE `antenne` DISABLE KEYS */;
INSERT INTO `antenne` VALUES (1,'Car&Pair Havre','15 rue Louis Brindeau','76600','Le Havre',1500.00,150.00),(2,'Car&Pair Montauban','85 Boulevard Blaise Doumerc','82000','Montauban',2000.00,250.00),(3,'Car&Pair Nancy','52 boulevard Albert 1er','54000','Nancy',2200.00,450.00),(4,'Car&Pair Lyon','17 impasse Flesselles','69001','Lyon',3500.00,480.00);
/*!40000 ALTER TABLE `antenne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'HAMON','Danielle','02 18 71 02 18'),(2,'THIBAULT','André','06 33 75 12 84'),(3,'DUHAMEL','Marguerite','01 55 01 17 31'),(4,'LUCAS','Émilie','03 76 14 96 39'),(5,'ÉTIENNE','Pénélope','04 63 16 59 79'),(6,'LE GOFF','Xavier','03 89 15 39 00'),(7,'GUILLET','Lorraine','05 67 32 12 55'),(8,'LOMBARD','Paulette','04 91 42 47 10'),(9,'LENOIR','Julie','08 03 57 03 55'),(10,'WEBER','Maggie','04 98 78 13 67'),(11,'CARPENTIER','Raymond','07 73 03 91 61'),(12,'DELAUNAY','Margot','05 36 44 44 18'),(13,'GUILBERT','Étienne','02 85 54 81 69'),(14,'RAMOS','Martine','06 25 48 39 31'),(15,'LEGROS','Nathalie','03 87 64 12 62'),(16,'SAUVAGE','Sylvie','04 73 02 62 84'),(17,'PETITJEAN','Michèle','01 75 40 08 37'),(18,'WAGNER','Luc','01 44 54 39 26'),(19,'SAMSON','Alex','05 18 10 59 89'),(20,'JACOB','Matthieu','01 47 96 24 94'),(21,'BECKER','Lucy','05 86 21 53 70'),(22,'PICHON','Sophie','03 44 22 05 58'),(23,'BERNARD','Laurent','06 68 22 58 72'),(24,'LE ROUX','Jeannine','03 57 27 69 44'),(25,'DIJOUX','Rémy','03 64 19 64 08'),(26,'DUFOUR','Marc','04 80 35 37 52'),(27,'GUILLET','Hortense','03 71 90 52 57'),(28,'CORDIER','Stéphane','04 93 12 54 47'),(29,'ANDRE','Jeanne','07 31 12 21 18'),(30,'BOUCHER','Odette','05 59 55 22 48'),(31,'RENARD','Jacques','02 48 20 76 24'),(32,'BOUVET','Mathilde','05 55 01 74 10'),(33,'LECOMTE','Marguerite','05 94 40 08 12'),(34,'EVRARD','Aurore','03 82 46 19 37'),(35,'LEMAÎTRE','Josette','03 53 47 31 35'),(36,'RICHARD','Charles','04 98 97 27 41'),(37,'PELLETIER','François','02 44 46 97 26'),(38,'MASSE','Anastasie','02 36 02 93 46'),(39,'LECLERC','Adélaïde','04 63 49 25 28'),(40,'BERNARD','Antoine','01 82 26 24 13'),(41,'NAVARRO','Simone','05 46 58 68 86'),(42,'LUCAS','Marguerite','05 90 96 60 24'),(43,'LOPEZ','Éric','03 52 96 87 22'),(44,'AUGER','Manon','04 37 45 29 54'),(45,'ROUSSEL','Édouard','01 73 24 94 61'),(46,'FABRE','Odette','04 32 69 32 40'),(47,'DEVAUX','Aurélie','04 71 23 10 42'),(48,'HAMON','Daniel','03 52 33 12 75'),(49,'ALLAIN','Capucine','05 62 26 38 77'),(50,'MALLET','Georges','04 37 77 57 41'),(51,'ROCHE','Victor','03 51 27 39 75'),(52,'ALVES','Rémy','02 55 45 92 96'),(53,'GAUTHIER','Bernadette','03 57 59 70 68'),(54,'LAMY','Marie','05 81 21 83 87'),(55,'VALETTE','Denise','05 53 09 31 06'),(56,'BLOT','Robert','04 90 15 98 39'),(57,'BOUVIER','Alex','06 98 73 48 79'),(58,'HAMEL','Hortense','04 73 63 18 03'),(59,'RICHARD','Noël','06 32 66 10 22'),(60,'PIRES','Victoire','03 24 98 15 40'),(61,'GUÉRIN','Inès','01 83 64 78 02'),(62,'DIDIER','André','03 59 01 26 60'),(63,'COLLET','Jérôme','02 98 44 14 89'),(64,'MONNIER','Mathilde','02 52 02 08 10'),(65,'SALMON','Anne','04 88 04 58 23'),(66,'DELMAS','Victoire','03 23 53 63 18'),(67,'DE SOUSA','Agnès','04 70 09 68 26'),(68,'BOUVIER','Lucas','05 24 47 70 95'),(69,'LACOMBE','Thérèse','01 73 76 30 16'),(70,'LEBLANC','Lorraine','03 20 73 18 13'),(71,'ADAM','Rémy','01 48 63 10 78'),(72,'BERGER','Sophie','04 65 96 79 73'),(73,'ROUX','Théophile','04 37 89 81 04'),(74,'MICHAUD','Virginie','04 38 66 71 90'),(75,'PIRES','Stéphane','05 40 30 75 19'),(76,'COHEN','Antoinette','03 81 94 74 32'),(77,'MATHIEU','Gabriel','04 84 70 75 91'),(78,'TECHER','Marthe','04 73 86 32 46'),(79,'LECOMTE','Roland','01 69 31 90 96'),(80,'MARTINEAU','Léon','02 52 71 05 47'),(81,'COHEN','Audrey','01 72 46 28 24'),(82,'PERON','Auguste','05 82 24 78 91'),(83,'VALLÉE','Matthieu','01 39 65 88 99'),(84,'CHARRIER','Gilbert','06 80 54 45 91'),(85,'CHEVALLIER','Louise','05 82 74 74 44'),(86,'HAMEL','Diane','01 44 98 55 84'),(87,'ROCHE','Frédéric','01 48 97 87 11'),(88,'HOARAU','Élodie','02 57 25 44 84'),(89,'DOS SANTOS','Adrien','02 90 28 36 31'),(90,'BERNARD','Patrick','03 45 26 96 36'),(91,'LECLERC','Nathalie','04 13 59 23 87'),(92,'HUBERT','Olivie','04 65 53 62 55'),(93,'BENOIT','Luce','04 49 91 57 16'),(94,'RAYMOND','André','05 57 63 81 79'),(95,'GRONDIN','Rémy','02 57 74 78 93'),(96,'PERROT','Noël','05 24 78 26 60'),(97,'HOARAU','Laurence','05 57 22 43 26'),(98,'SIMON','Luc','01 64 70 97 19'),(99,'LEROY','Marcel','02 36 21 22 69'),(100,'FONTAINE','Raymond','03 73 99 91 95'),(101,'BENARD','Paul','04 83 83 62 88'),(102,'COULON','Simone','02 53 49 35 27'),(103,'ROLLAND','Dorothée','04 83 77 29 94'),(104,'GOSSELIN','Jérôme','07 79 53 68 70'),(105,'ROCHER','Isabelle','02 43 58 80 47'),(106,'PERRET','Marine','04 44 87 50 16'),(107,'FONTAINE','Alexandrie','04 71 62 62 93'),(108,'DESCAMPS','Marcel','05 82 77 61 48'),(109,'VALLÉE','Thérèse','03 25 12 25 40'),(110,'PAYET','Claire','01 83 79 51 84'),(111,'MOREL','Olivie','04 65 90 53 80'),(112,'ARNAUD','Colette','05 19 91 00 77'),(113,'PERON','Guillaume','03 88 83 04 76'),(114,'CLERC','Maurice','06 83 09 78 74'),(115,'PARIS','Marthe','03 75 84 75 64'),(116,'PRUVOST','Agathe','04 71 62 72 09'),(117,'LEBLANC','Nathalie','03 26 09 50 48'),(118,'CHAUVET','Mathilde','01 48 78 84 62'),(119,'CHEVALLIER','Suzanne','06 32 87 03 72'),(120,'LE GOFF','Margot','04 43 34 56 36');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employes`
--

DROP TABLE IF EXISTS `employes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `id_garage` int(11) DEFAULT NULL,
  `id_antenne` int(11) DEFAULT NULL,
  `salaire_brut_mensuel` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employes_antenne` (`id_antenne`),
  KEY `fk_employes_garage` (`id_garage`),
  CONSTRAINT `fk_employes_antenne` FOREIGN KEY (`id_antenne`) REFERENCES `antenne` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_employes_garage` FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employes`
--

LOCK TABLES `employes` WRITE;
/*!40000 ALTER TABLE `employes` DISABLE KEYS */;
INSERT INTO `employes` VALUES (1,'GUYOT','Émilie','Mécanicien',1,1,0.00),(2,'LAROCHE','Tristan','Réceptionniste',NULL,1,2100.00),(3,'ROYER','Adèle','Chef d\'atelier',1,1,1950.50),(4,'BERNIER','Monique','Carrossier',1,1,1500.00),(5,'LÉVY','Gabrielle','Carrossier',1,1,2200.00),(6,'DELANNOY','Jean','Carrossier',1,1,0.00),(7,'LEROUX','René','Réceptionniste',NULL,1,0.00),(8,'CORDIER','Alain','Mécanicien',1,1,2100.00),(9,'MOREAU','Marine','Réceptionniste',NULL,1,1500.00),(10,'BOULANGER','Stéphane','Carrossier',1,1,2200.00),(11,'BLANCHARD','Thibaut','Mécanicien',1,1,2200.00),(12,'BENARD','Stéphanie','Carrossier',1,1,2100.00),(13,'PRUVOST','Dorothée','Chef d\'atelier',1,1,2100.00),(14,'CHARLES','Stéphanie','Réceptionniste',NULL,1,1500.00),(15,'GOMEZ','Élisabeth','Réceptionniste',NULL,1,0.00),(16,'BAUDRY','Margaud','Réceptionniste',NULL,1,0.00),(17,'MARIN','Suzanne','Chef d\'atelier',1,1,0.00),(18,'RUIZ','Thibault','Chef d\'atelier',1,1,2200.00),(19,'LOMBARD','Antoine','Chef d\'atelier',1,1,2100.00),(20,'ALLAIN','Valérie','Réceptionniste',NULL,1,1500.00),(21,'MARTINS','Pénélope','Réceptionniste',NULL,1,0.00),(22,'LAROCHE','Margot','Carrossier',1,1,0.00),(23,'GAUTIER','Hugues','Carrossier',1,1,1500.00),(24,'JACQUET','Aurélie','Carrossier',1,1,0.00),(25,'COURTOIS','Isaac','Réceptionniste',NULL,1,1950.50),(26,'BÈGUE','Noémi','Carrossier',1,1,1500.00),(27,'LAMBERT','Antoine','Mécanicien',1,1,1500.00),(28,'ROY','Alice','Mécanicien',1,1,0.00),(29,'GAUDIN','Thibaut','Mécanicien',1,1,2200.00),(30,'BOUCHET','Alphonse','Réceptionniste',NULL,1,2100.00),(31,'GRENIER','Catherine','Réceptionniste',NULL,2,2200.00),(32,'RICHARD','Camille','Mécanicien',2,2,0.00),(33,'SALMON','Henriette','Réceptionniste',NULL,2,1500.00),(34,'ROCHER','Martine','Réceptionniste',NULL,2,2100.00),(35,'ROSSI','Margaud','Carrossier',2,2,1950.50),(36,'FERNANDES','Susanne','Chef d\'atelier',2,2,0.00),(37,'ALEXANDRE','Andrée','Carrossier',2,2,1950.50),(38,'PARIS','Paul','Réceptionniste',NULL,2,1500.00),(39,'PONS','Margot','Réceptionniste',NULL,2,0.00),(40,'LOPES','Laurent','Carrossier',2,2,0.00),(41,'JACQUOT','Adrienne','Chef d\'atelier',2,2,1950.50),(42,'NICOLAS','Antoinette','Réceptionniste',NULL,2,1500.00),(43,'BUISSON','Roland','Carrossier',2,2,2200.00),(44,'BONNEAU','Catherine','Chef d\'atelier',2,2,1500.00),(45,'GUILLON','Véronique','Mécanicien',2,2,1950.50),(46,'LETELLIER','Arthur','Mécanicien',2,2,2100.00),(47,'MARY','Suzanne','Réceptionniste',NULL,2,1500.00),(48,'BESNARD','Élise','Carrossier',2,2,0.00),(49,'FOUQUET','Paul','Chef d\'atelier',2,2,0.00),(50,'GAUDIN','Michelle','Réceptionniste',NULL,2,1500.00),(51,'CARRE','Jérôme','Réceptionniste',NULL,2,2100.00),(52,'LABBÉ','Céline','Carrossier',2,2,1500.00),(53,'CARPENTIER','Nathalie','Mécanicien',2,2,0.00),(54,'MARTEL','Aurore','Chef d\'atelier',2,2,0.00),(55,'ANDRE','Georges','Mécanicien',2,2,2200.00),(56,'GIRARD','Patricia','Carrossier',2,2,2100.00),(57,'GUICHARD','Emmanuel','Carrossier',2,2,1500.00),(58,'LEMAIRE','Céline','Réceptionniste',NULL,2,0.00),(59,'LEFORT','Martin','Mécanicien',2,2,0.00),(60,'PARIS','Laurent','Carrossier',2,2,1500.00),(61,'MICHAUD','Alfred','Mécanicien',3,3,1950.50),(62,'PAGES','Alexandria','Carrossier',3,3,2200.00),(63,'LEGENDRE','Élisabeth','Réceptionniste',NULL,3,2200.00),(64,'TORRES','Chantal','Chef d\'atelier',3,3,1950.50),(65,'ANTOINE','Dorothée','Réceptionniste',NULL,3,0.00),(66,'GIRARD','Roland','Carrossier',3,3,0.00),(67,'TORRES','Jean','Carrossier',3,3,0.00),(68,'BESNARD','Charlotte','Chef d\'atelier',3,3,1950.50),(69,'PERRIER','Laurent','Réceptionniste',NULL,3,2200.00),(70,'MAILLOT','Olivie','Chef d\'atelier',3,3,0.00),(71,'TOUSSAINT','Franck','Réceptionniste',NULL,3,1500.00),(72,'FISCHER','Philippine','Carrossier',3,3,2100.00),(73,'CHARLES','Anne','Réceptionniste',NULL,3,1500.00),(74,'LEMOINE','Isaac','Carrossier',3,3,0.00),(75,'DESCAMPS','Georges','Mécanicien',3,3,1500.00),(76,'MAHE','Alfred','Chef d\'atelier',3,3,0.00),(77,'TRAORE','David','Réceptionniste',NULL,3,2100.00),(78,'GONZALEZ','Virginie','Réceptionniste',NULL,3,2100.00),(79,'RAYNAUD','Thierry','Réceptionniste',NULL,3,0.00),(80,'JACQUOT','Nicolas','Carrossier',3,3,0.00),(81,'HOARAU','Denise','Mécanicien',3,3,1950.50),(82,'LE GALL','Nath','Réceptionniste',NULL,3,1950.50),(83,'DA SILVA','Hortense','Mécanicien',3,3,1950.50),(84,'RENARD','Martine','Mécanicien',3,3,0.00),(85,'MOREL','Alphonse','Réceptionniste',NULL,3,0.00),(86,'GOMES','Philippe','Réceptionniste',NULL,3,1500.00),(87,'PIERRE','Grégoire','Mécanicien',3,3,1950.50),(88,'DUPRÉ','Emmanuelle','Réceptionniste',NULL,3,1500.00),(89,'RODRIGUEZ','Tristan','Réceptionniste',NULL,3,0.00),(90,'FISCHER','Alice','Réceptionniste',NULL,3,0.00),(91,'POULAIN','Colette','Réceptionniste',NULL,4,0.00),(92,'LOISEAU','Michel','Chef d\'atelier',4,4,0.00),(93,'VAILLANT','Michèle','Mécanicien',4,4,0.00),(94,'MOREAU','Daniel','Réceptionniste',NULL,4,2200.00),(95,'FERREIRA','Zacharie','Mécanicien',4,4,1950.50),(96,'PETIT','Agathe','Carrossier',4,4,2100.00),(97,'RAYNAUD','Yves','Chef d\'atelier',4,4,2100.00),(98,'DANIEL','Aurore','Réceptionniste',NULL,4,2200.00),(99,'ALEXANDRE','Grégoire','Carrossier',4,4,2200.00),(100,'GUILBERT','Geneviève','Réceptionniste',NULL,4,0.00),(101,'BOUVIER','Joséphine','Mécanicien',4,4,0.00),(102,'ROGER','Marcelle','Carrossier',4,4,0.00),(103,'AUBERT','Céline','Carrossier',4,4,1950.50),(104,'LOUIS','Margaux','Carrossier',4,4,0.00),(105,'HERNANDEZ','Guillaume','Chef d\'atelier',4,4,2100.00),(106,'DUMONT','Marine','Réceptionniste',NULL,4,0.00),(107,'BONNIN','Danielle','Chef d\'atelier',4,4,1500.00),(108,'GOMES','Georges','Mécanicien',4,4,2200.00),(109,'FAURE','Guillaume','Carrossier',4,4,1950.50),(110,'FERNANDES','Christine','Réceptionniste',NULL,4,1500.00),(111,'SANCHEZ','Camille','Mécanicien',4,4,0.00),(112,'FERREIRA','Alexandre','Chef d\'atelier',4,4,2100.00),(113,'CHARPENTIER','Capucine','Mécanicien',4,4,2100.00),(114,'DELANNOY','Jérôme','Réceptionniste',NULL,4,0.00),(115,'MOREAU','Aimé','Mécanicien',4,4,0.00),(116,'REY','Stéphane','Réceptionniste',NULL,4,2200.00),(117,'VALENTIN','Eugène','Carrossier',4,4,2100.00),(118,'AUBRY','Éléonore','Chef d\'atelier',4,4,1950.50),(119,'PASQUIER','Guy','Carrossier',4,4,1950.50),(120,'BOULAY','Margaux','Réceptionniste',NULL,4,1500.00);
/*!40000 ALTER TABLE `employes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garage`
--

DROP TABLE IF EXISTS `garage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `code_postal` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `id_antenne` int(11) NOT NULL,
  `loyer_mensuel_ht` decimal(10,2) NOT NULL,
  `loyer_mensuel_parking_ht` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_garage_antenne` (`id_antenne`),
  CONSTRAINT `fk_garage_antenne` FOREIGN KEY (`id_antenne`) REFERENCES `antenne` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage`
--

LOCK TABLES `garage` WRITE;
/*!40000 ALTER TABLE `garage` DISABLE KEYS */;
INSERT INTO `garage` VALUES (1,'Car&Pair (ex Le Carage)','54 rue Mougeot','76600','Le Havre',1,1250.00,300.00),(2,'Car&Pair Montauban','73 route de Montricoux','82000','Montauban',2,1500.00,350.00),(3,'Car&Pair Nancy','68 rue Gabriel Mouilleron','54000','Nancy',3,2350.00,280.00),(4,'Car&Pair Lyon Centre','32 rue Sébastien Gryphe','69002','Lyon',4,3000.00,650.00);
/*!40000 ALTER TABLE `garage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_pret`
--

DROP TABLE IF EXISTS `location_pret`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_pret` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_garage` int(11) NOT NULL,
  `type_utilisation` varchar(255) NOT NULL,
  `id_voiture` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_tarif_location` int(11) DEFAULT NULL,
  `date_entree` datetime NOT NULL,
  `date_sortie` datetime NOT NULL,
  `prix_location_ht` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_location_pret_garage` (`id_garage`),
  KEY `fk_location_pret_voiture` (`id_voiture`),
  KEY `fk_location_pret_client` (`id_client`),
  KEY `fk_location_pret_tarif_location` (`id_tarif_location`),
  CONSTRAINT `fk_location_pret_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_location_pret_garage` FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_location_pret_tarif_location` FOREIGN KEY (`id_tarif_location`) REFERENCES `tarif_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_location_pret_voiture` FOREIGN KEY (`id_voiture`) REFERENCES `voitures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_pret`
--

LOCK TABLES `location_pret` WRITE;
/*!40000 ALTER TABLE `location_pret` DISABLE KEYS */;
INSERT INTO `location_pret` VALUES (1,1,'PRET',1,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(2,1,'PRET',2,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(3,1,'PRET',3,3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(4,1,'LOCATION',4,4,2,'2025-08-02 20:10:55','2025-11-18 00:00:00',35.00),(5,1,'LOCATION',5,5,2,'2024-08-19 09:36:00','2026-02-26 00:00:00',45.00),(6,1,'PRET',6,6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(7,1,'PRET',7,7,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(8,1,'LOCATION',8,8,3,'2025-04-23 00:00:00','2026-01-14 14:52:23',NULL),(9,1,'LOCATION',9,9,2,'2026-02-18 12:19:36','2026-03-04 17:29:00',NULL),(10,1,'LOCATION',10,10,4,'2025-07-25 00:00:00','2025-06-24 14:29:57',20.00),(11,1,'LOCATION',11,11,1,'2026-06-19 20:40:00','2024-11-25 10:46:00',35.00),(12,1,'PRET',12,12,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(13,1,'PRET',13,13,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(14,1,'PRET',14,14,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(15,1,'PRET',15,15,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(16,1,'PRET',16,16,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(17,1,'PRET',17,17,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(18,1,'LOCATION',18,18,1,'2025-06-27 05:30:41','2020-01-01 00:00:00',45.00),(19,1,'LOCATION',19,19,3,'2025-08-24 00:00:00','2025-12-22 17:21:19',NULL),(20,1,'PRET',20,20,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(21,1,'LOCATION',21,21,2,'2025-06-15 12:50:11','2025-04-28 07:29:16',50.00),(22,1,'PRET',22,22,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(23,1,'LOCATION',23,23,1,'2026-06-17 07:30:58','2024-09-30 00:00:00',NULL),(24,1,'LOCATION',24,24,1,'2024-10-27 02:13:04','2025-07-11 06:53:04',20.00),(25,1,'LOCATION',25,25,4,'2025-10-14 03:57:23','2020-01-01 00:00:00',50.00),(26,1,'LOCATION',26,26,2,'2024-10-24 14:34:00','2026-02-22 06:44:31',20.00),(27,1,'LOCATION',27,27,1,'2025-04-09 00:00:00','2026-03-09 05:45:00',35.00),(28,1,'LOCATION',28,28,3,'2025-12-21 00:00:00','2025-03-05 21:49:09',50.00),(29,1,'LOCATION',29,29,1,'2024-09-22 02:05:15','2026-03-24 20:05:00',20.00),(30,1,'PRET',30,30,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(31,2,'LOCATION',31,31,1,'2025-04-24 13:28:55','2020-01-01 00:00:00',45.00),(32,2,'LOCATION',32,32,1,'2024-08-20 16:51:11','2020-01-01 00:00:00',20.00),(33,2,'PRET',33,33,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(34,2,'LOCATION',34,34,2,'2024-10-23 16:19:23','2024-05-10 19:42:43',45.00),(35,2,'LOCATION',35,35,2,'2024-09-18 04:06:00','2020-01-01 00:00:00',20.00),(36,2,'PRET',36,36,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(37,2,'LOCATION',37,37,3,'2025-06-14 07:26:00','2025-02-01 09:44:17',45.00),(38,2,'LOCATION',38,38,3,'2026-06-30 01:40:00','2026-07-29 00:00:00',20.00),(39,2,'LOCATION',39,39,2,'2025-04-03 01:27:00','2025-09-25 05:57:57',20.00),(40,2,'LOCATION',40,40,4,'2024-08-24 11:31:00','2020-01-01 00:00:00',NULL),(41,2,'LOCATION',41,41,1,'2026-03-29 19:19:28','2025-06-17 22:36:00',45.00),(42,2,'LOCATION',42,42,2,'2024-08-24 09:50:14','2026-02-01 18:32:00',NULL),(43,2,'PRET',43,43,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(44,2,'PRET',44,44,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(45,2,'PRET',45,45,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(46,2,'LOCATION',46,46,3,'2025-06-30 20:54:13','2020-01-01 00:00:00',50.00),(47,2,'LOCATION',47,47,4,'2026-01-24 03:36:49','2020-01-01 00:00:00',35.00),(48,2,'PRET',48,48,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(49,2,'PRET',49,49,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(50,2,'LOCATION',50,50,2,'2025-06-25 23:53:38','2026-07-05 18:41:00',50.00),(51,2,'LOCATION',51,51,2,'2024-10-18 00:00:00','2025-11-28 00:00:00',35.00),(52,2,'LOCATION',52,52,3,'2025-01-21 06:54:21','2024-10-30 00:00:00',20.00),(53,2,'LOCATION',53,53,1,'2025-09-04 13:38:59','2025-07-05 00:00:00',35.00),(54,2,'PRET',54,54,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(55,2,'PRET',55,55,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(56,2,'PRET',56,56,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(57,2,'PRET',57,57,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(58,2,'PRET',58,58,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(59,2,'PRET',59,59,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(60,2,'PRET',60,60,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(61,3,'PRET',61,61,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(62,3,'LOCATION',62,62,1,'2025-10-01 05:23:00','2025-09-14 16:28:00',35.00),(63,3,'PRET',63,63,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(64,3,'LOCATION',64,64,2,'2025-05-14 11:55:54','2024-08-14 00:00:00',45.00),(65,3,'PRET',65,65,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(66,3,'LOCATION',66,66,1,'2025-04-30 00:00:00','2026-11-05 05:09:48',45.00),(67,3,'PRET',67,67,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(68,3,'PRET',68,68,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(69,3,'LOCATION',69,69,2,'2026-07-26 02:58:36','2026-07-06 13:42:55',35.00),(70,3,'PRET',70,70,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(71,3,'PRET',71,71,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(72,3,'PRET',72,72,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(73,3,'PRET',73,73,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(74,3,'PRET',74,74,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(75,3,'PRET',75,75,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(76,3,'LOCATION',76,76,3,'2025-04-15 01:35:23','2024-07-10 00:00:00',35.00),(77,3,'PRET',77,77,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(78,3,'PRET',78,78,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(79,3,'LOCATION',79,79,3,'2025-02-05 04:27:07','2026-12-06 04:32:44',45.00),(80,3,'PRET',80,80,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(81,3,'LOCATION',81,81,2,'2025-08-02 03:40:08','2024-12-07 22:53:00',50.00),(82,3,'LOCATION',82,82,3,'2025-12-01 05:10:15','2025-04-30 18:04:05',35.00),(83,3,'PRET',83,83,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(84,3,'PRET',84,84,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(85,3,'LOCATION',85,85,4,'2024-10-03 05:40:00','2025-08-31 10:05:00',NULL),(86,3,'LOCATION',86,86,2,'2026-01-15 16:45:00','2020-01-01 00:00:00',50.00),(87,3,'PRET',87,87,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(88,3,'PRET',88,88,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(89,3,'LOCATION',89,89,1,'2026-03-18 03:13:53','2026-06-11 01:48:00',45.00),(90,3,'PRET',90,90,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(91,4,'PRET',91,91,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(92,4,'LOCATION',92,92,1,'2026-05-08 14:46:00','2025-02-08 00:00:00',35.00),(93,4,'PRET',93,93,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(94,4,'LOCATION',94,94,2,'2026-09-01 10:32:47','2025-10-04 19:48:59',45.00),(95,4,'PRET',95,95,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(96,4,'LOCATION',96,96,1,'2025-02-27 00:00:00','2024-08-24 18:27:12',20.00),(97,4,'PRET',97,97,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(98,4,'LOCATION',98,98,3,'2026-07-01 00:00:00','2026-07-20 00:00:00',50.00),(99,4,'PRET',99,99,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(100,4,'LOCATION',100,100,4,'2025-09-16 12:33:00','2025-08-28 20:03:34',NULL),(101,4,'LOCATION',101,101,1,'2026-12-05 15:29:19','2024-11-27 00:00:00',35.00),(102,4,'PRET',102,102,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(103,4,'LOCATION',103,103,3,'2025-03-26 07:43:37','2026-03-02 02:00:43',45.00),(104,4,'PRET',104,104,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',35.00),(105,4,'PRET',105,105,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',50.00),(106,4,'PRET',106,106,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(107,4,'LOCATION',107,107,4,'2025-05-28 04:40:00','2025-07-01 00:00:00',35.00),(108,4,'LOCATION',108,108,1,'2026-02-06 15:07:06','2025-11-11 08:29:00',20.00),(109,4,'LOCATION',109,109,3,'2026-12-06 04:43:13','2024-09-27 11:42:36',35.00),(110,4,'LOCATION',110,110,2,'2025-03-19 14:29:47','2025-04-05 19:35:47',NULL),(111,4,'LOCATION',111,111,2,'2025-03-28 19:03:00','2025-09-20 13:01:04',20.00),(112,4,'PRET',112,112,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(113,4,'LOCATION',113,113,1,'2025-10-16 01:41:19','2026-11-06 00:26:31',20.00),(114,4,'LOCATION',114,114,1,'2025-04-21 00:00:00','2020-01-01 00:00:00',20.00),(115,4,'LOCATION',115,115,4,'2026-01-31 00:00:00','2025-08-12 04:49:00',45.00),(116,4,'LOCATION',116,116,2,'2025-05-22 00:00:00','2020-01-01 00:00:00',20.00),(117,4,'PRET',117,117,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',45.00),(118,4,'PRET',118,118,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',20.00),(119,4,'LOCATION',119,119,1,'2026-03-19 06:35:31','2025-07-12 08:11:42',45.00),(120,4,'LOCATION',120,120,4,'2026-04-07 16:08:04','2025-10-18 02:53:55',NULL);
/*!40000 ALTER TABLE `location_pret` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieces`
--

DROP TABLE IF EXISTS `pieces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_garage` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix_achat_ht` decimal(10,2) NOT NULL,
  `prix_vente_ht` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieces`
--

LOCK TABLES `pieces` WRITE;
/*!40000 ALTER TABLE `pieces` DISABLE KEYS */;
INSERT INTO `pieces` VALUES (1,1,'REF-102','Plaquettes de frein',45.00,85.00,0),(2,1,'REF-101','Filtre à huile',15.00,30.00,0),(3,1,'REF-103','Disque de frein',80.00,150.00,0),(4,1,'REF-104','Batterie 12V',90.00,160.00,15),(5,2,'REF-101','Filtre à huile',15.00,30.00,0),(6,2,'REF-104','Batterie 12V',90.00,160.00,0),(7,2,'REF-102','Plaquettes de frein',45.00,85.00,0),(8,2,'REF-103','Disque de frein',80.00,150.00,0),(9,3,'REF-102','Plaquettes de frein',45.00,85.00,0),(10,3,'REF-104','Batterie 12V',90.00,160.00,15),(11,3,'REF-101','Filtre à huile',15.00,30.00,0),(12,3,'REF-103','Disque de frein',80.00,150.00,15),(13,4,'REF-103','Disque de frein',80.00,150.00,15),(14,4,'REF-101','Filtre à huile',15.00,30.00,0),(15,4,'REF-104','Batterie 12V',90.00,160.00,0),(16,4,'REF-102','Plaquettes de frein',45.00,85.00,0);
/*!40000 ALTER TABLE `pieces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparation_pieces`
--

DROP TABLE IF EXISTS `reparation_pieces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparation_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reparations` int(11) NOT NULL,
  `id_pieces` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reparation_pieces_reparations` (`id_reparations`),
  KEY `fk_reparation_pieces_pieces` (`id_pieces`),
  CONSTRAINT `fk_reparation_pieces_pieces` FOREIGN KEY (`id_pieces`) REFERENCES `pieces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_reparation_pieces_reparations` FOREIGN KEY (`id_reparations`) REFERENCES `reparations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparation_pieces`
--

LOCK TABLES `reparation_pieces` WRITE;
/*!40000 ALTER TABLE `reparation_pieces` DISABLE KEYS */;
INSERT INTO `reparation_pieces` VALUES (1,1,2,2),(2,2,1,1),(3,3,3,2),(4,4,3,0),(5,5,2,0),(6,6,3,2),(7,7,3,1),(8,8,2,0),(9,9,2,1),(10,10,2,1),(11,11,4,1),(12,12,4,2),(13,13,4,2),(14,14,2,2),(15,15,3,1),(16,16,3,0),(17,17,1,2),(18,18,2,0),(19,19,3,1),(20,20,1,0),(21,21,3,1),(22,22,3,2),(23,23,4,2),(24,24,3,0),(25,25,1,0),(26,26,2,0),(27,27,3,0),(28,28,1,2),(29,29,2,2),(30,30,2,2),(31,31,1,0),(32,32,4,1),(33,33,1,0),(34,34,1,0),(35,35,1,2),(36,36,1,2),(37,37,2,1),(38,38,1,0),(39,39,1,0),(40,40,1,0),(41,41,1,1),(42,42,2,0),(43,43,2,2),(44,44,4,2),(45,45,1,0),(46,46,4,2),(47,47,4,0),(48,48,1,0),(49,49,1,0),(50,50,4,1),(51,51,4,0),(52,52,1,0),(53,53,4,2),(54,54,2,2),(55,55,2,0),(56,56,3,0),(57,57,2,1),(58,58,1,2),(59,59,3,2),(60,60,2,1),(61,61,2,1),(62,62,4,0),(63,63,4,1),(64,64,2,2),(65,65,1,0),(66,66,4,1),(67,67,1,1),(68,68,4,2),(69,69,3,1),(70,70,2,0),(71,71,4,1),(72,72,3,0),(73,73,3,2),(74,74,2,0),(75,75,1,2),(76,76,3,1),(77,77,4,0),(78,78,1,0),(79,79,2,2),(80,80,2,0),(81,81,1,1),(82,82,2,2),(83,83,3,0),(84,84,3,0),(85,85,4,0),(86,86,3,0),(87,87,4,2),(88,88,1,0),(89,89,3,0),(90,90,1,0),(91,91,3,0),(92,92,1,1),(93,93,4,0),(94,94,3,1),(95,95,3,1),(96,96,2,0),(97,97,1,0),(98,98,4,0),(99,99,2,1),(100,100,4,2),(101,101,2,1),(102,102,4,1),(103,103,1,0),(104,104,4,2),(105,105,3,2),(106,106,2,2),(107,107,3,1),(108,108,2,0),(109,109,3,0),(110,110,4,1),(111,111,1,0),(112,112,4,0),(113,113,3,1),(114,114,1,2),(115,115,1,0),(116,116,3,1),(117,117,4,1),(118,118,1,0),(119,119,3,0),(120,120,1,2);
/*!40000 ALTER TABLE `reparation_pieces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparations`
--

DROP TABLE IF EXISTS `reparations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_garage` int(11) NOT NULL,
  `id_voiture_client` int(11) NOT NULL,
  `id_type_reparations` int(11) NOT NULL,
  `date_entree` datetime NOT NULL,
  `date_sortie` datetime NOT NULL,
  `temps_reparation` float NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reparations_garage` (`id_garage`),
  KEY `fk_reparations_voiture_client` (`id_voiture_client`),
  KEY `fk_reparations_type_reparations` (`id_type_reparations`),
  CONSTRAINT `fk_reparations_garage` FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_reparations_type_reparations` FOREIGN KEY (`id_type_reparations`) REFERENCES `type_reparations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_reparations_voiture_client` FOREIGN KEY (`id_voiture_client`) REFERENCES `voiture_client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparations`
--

LOCK TABLES `reparations` WRITE;
/*!40000 ALTER TABLE `reparations` DISABLE KEYS */;
INSERT INTO `reparations` VALUES (1,1,1,2,'2025-10-20 22:23:23','2020-01-01 00:00:00',2.5,450.00),(2,1,2,1,'2025-02-08 01:28:00','2020-01-01 00:00:00',1.5,0.00),(3,1,3,2,'2025-03-12 08:46:57','2026-07-25 14:33:16',2,50.00),(4,1,4,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,50.00),(5,1,5,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,0.00),(6,1,6,2,'2026-02-19 13:38:07','2026-05-13 11:16:55',1,0.00),(7,1,7,2,'2024-08-16 00:00:00','2025-01-28 14:57:11',2.5,0.00),(8,1,8,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,450.00),(9,1,9,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,50.00),(10,1,10,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,300.00),(11,1,11,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,50.00),(12,1,12,3,'2025-04-05 03:57:00','2020-01-01 00:00:00',2,50.00),(13,1,13,3,'2025-01-21 05:11:16','2020-01-01 00:00:00',2.5,120.00),(14,1,14,2,'2025-08-20 01:59:00','2025-12-20 11:32:08',1,120.00),(15,1,15,2,'2026-09-03 08:44:33','2026-03-24 00:00:00',0,50.00),(16,1,16,2,'2026-06-13 16:08:07','2024-12-29 11:02:51',1,300.00),(17,1,17,1,'2025-04-18 11:41:00','2025-08-11 00:00:00',2,450.00),(18,1,18,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,300.00),(19,1,19,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,50.00),(20,1,20,1,'2025-03-23 00:00:00','2025-06-25 21:22:36',0,450.00),(21,1,21,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,450.00),(22,1,22,2,'2026-07-31 13:14:00','2020-01-01 00:00:00',0,0.00),(23,1,23,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,300.00),(24,1,24,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,300.00),(25,1,25,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,450.00),(26,1,26,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,0.00),(27,1,27,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,450.00),(28,1,28,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,120.00),(29,1,29,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,0.00),(30,1,30,2,'2025-01-13 00:00:00','2024-10-15 08:35:39',2,120.00),(31,2,31,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,450.00),(32,2,32,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,300.00),(33,2,33,1,'2024-11-30 03:01:43','2024-12-17 07:18:10',2,50.00),(34,2,34,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,120.00),(35,2,35,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,120.00),(36,2,36,1,'2025-01-31 07:04:35','2024-08-08 15:28:02',0,300.00),(37,2,37,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,120.00),(38,2,38,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,0.00),(39,2,39,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,50.00),(40,2,40,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,50.00),(41,2,41,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,450.00),(42,2,42,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,450.00),(43,2,43,2,'2025-02-09 22:17:53','2026-07-23 20:49:22',0,300.00),(44,2,44,3,'2025-06-17 19:42:38','2025-11-13 23:30:54',1.5,120.00),(45,2,45,1,'2026-12-06 14:02:14','2025-10-12 12:51:19',1.5,300.00),(46,2,46,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,50.00),(47,2,47,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,50.00),(48,2,48,1,'2026-01-27 23:52:19','2025-02-03 00:00:00',1,300.00),(49,2,49,1,'2025-01-01 09:19:00','2025-10-29 19:23:00',2,120.00),(50,2,50,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,300.00),(51,2,51,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,50.00),(52,2,52,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,300.00),(53,2,53,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,300.00),(54,2,54,2,'2026-03-26 05:00:00','2026-04-04 13:11:41',2.5,0.00),(55,2,55,2,'2024-12-17 00:00:00','2026-04-25 00:00:00',2,300.00),(56,2,56,2,'2026-01-26 15:24:34','2025-03-18 16:57:00',2.5,50.00),(57,2,57,2,'2024-09-27 10:38:16','2020-01-01 00:00:00',2,50.00),(58,2,58,1,'2025-11-25 20:54:00','2026-06-05 00:00:00',2,120.00),(59,2,59,2,'2024-08-22 18:04:33','2024-12-31 04:16:52',2.5,50.00),(60,2,60,2,'2024-12-25 17:09:54','2025-01-13 05:33:02',1.5,0.00),(61,3,61,2,'2024-10-16 22:41:24','2024-02-11 00:00:00',2,0.00),(62,3,62,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,50.00),(63,3,63,3,'2026-01-19 10:40:54','2025-05-03 23:17:29',1.5,120.00),(64,3,64,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,450.00),(65,3,65,1,'2025-03-23 21:39:34','2026-10-04 21:47:09',1.5,50.00),(66,3,66,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,0.00),(67,3,67,1,'2024-12-23 00:00:00','2025-08-10 03:54:18',1.5,300.00),(68,3,68,3,'2025-08-12 14:04:18','2025-11-17 00:00:00',2.5,0.00),(69,3,69,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,450.00),(70,3,70,2,'2025-12-17 16:18:22','2025-10-21 00:00:00',2.5,300.00),(71,3,71,3,'2024-11-26 00:00:00','2026-04-16 05:48:00',2.5,0.00),(72,3,72,2,'2025-05-12 15:54:51','2026-05-26 18:25:45',1.5,120.00),(73,3,73,2,'2026-12-01 00:00:00','2025-03-15 00:00:00',2,0.00),(74,3,74,2,'2025-07-18 13:01:31','2024-12-10 10:56:00',2,0.00),(75,3,75,1,'2025-06-12 01:13:46','2020-01-01 00:00:00',2,50.00),(76,3,76,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,120.00),(77,3,77,3,'2026-08-08 01:23:16','2026-02-08 12:32:23',1,50.00),(78,3,78,1,'2025-07-29 00:00:00','2020-01-01 00:00:00',0,450.00),(79,3,79,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,120.00),(80,3,80,2,'2025-08-14 01:15:00','2026-01-03 13:13:48',1.5,50.00),(81,3,81,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,50.00),(82,3,82,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,50.00),(83,3,83,2,'2025-01-15 07:03:16','2025-03-18 01:00:00',2,300.00),(84,3,84,2,'2026-04-14 05:36:00','2025-04-13 06:42:39',2.5,50.00),(85,3,85,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,50.00),(86,3,86,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,300.00),(87,3,87,3,'2025-06-22 06:58:00','2024-12-10 07:28:02',2.5,120.00),(88,3,88,1,'2025-06-29 23:19:00','2025-09-12 00:00:00',2.5,450.00),(89,3,89,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,0.00),(90,3,90,1,'2026-03-29 20:16:11','2025-08-16 06:11:00',0,300.00),(91,4,91,2,'2026-08-05 06:36:29','2025-02-04 00:00:00',0,50.00),(92,4,92,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,300.00),(93,4,93,3,'2025-09-25 09:04:00','2026-01-31 12:46:08',2,0.00),(94,4,94,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,300.00),(95,4,95,2,'2025-10-22 19:39:29','2025-02-15 00:00:00',2.5,450.00),(96,4,96,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,300.00),(97,4,97,1,'2025-10-10 00:19:30','2025-10-31 21:08:51',1.5,120.00),(98,4,98,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,50.00),(99,4,99,2,'2025-11-15 20:03:21','2026-02-23 06:56:43',0,0.00),(100,4,100,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,0.00),(101,4,101,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,50.00),(102,4,102,3,'2025-09-07 03:32:34','2026-03-13 15:59:12',1,450.00),(103,4,103,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,300.00),(104,4,104,3,'2024-12-08 18:03:04','2025-01-27 19:11:27',2.5,50.00),(105,4,105,2,'2025-03-24 01:58:00','2026-07-21 01:47:00',0,50.00),(106,4,106,2,'2024-09-10 00:00:00','2026-06-01 21:30:56',2,300.00),(107,4,107,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,50.00),(108,4,108,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,450.00),(109,4,109,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,450.00),(110,4,110,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,50.00),(111,4,111,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,0.00),(112,4,112,3,'2026-06-21 11:18:58','2026-08-01 09:18:00',0,0.00),(113,4,113,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',1,450.00),(114,4,114,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1.5,120.00),(115,4,115,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,120.00),(116,4,116,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2.5,300.00),(117,4,117,3,'2025-12-24 14:44:00','2026-05-08 19:23:00',0,50.00),(118,4,118,1,'2026-12-02 08:06:37','2026-04-08 03:22:00',2,50.00),(119,4,119,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',2,50.00),(120,4,120,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,450.00);
/*!40000 ALTER TABLE `reparations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif_location`
--

DROP TABLE IF EXISTS `tarif_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarif_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_vehicule` varchar(255) NOT NULL,
  `prix_journalier_ht` decimal(10,2) NOT NULL,
  `frais_assurance` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif_location`
--

LOCK TABLES `tarif_location` WRITE;
/*!40000 ALTER TABLE `tarif_location` DISABLE KEYS */;
INSERT INTO `tarif_location` VALUES (1,'Citadine',25.00,5.00),(2,'Berline',45.00,8.50),(3,'SUV',60.00,10.00),(4,'Utilitaire',50.00,12.00);
/*!40000 ALTER TABLE `tarif_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_reparations`
--

DROP TABLE IF EXISTS `type_reparations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_reparations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `niveau_taux_horaires_main_oeuvre` varchar(255) NOT NULL,
  `prix_horaire_main_oeuvre` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_reparations`
--

LOCK TABLES `type_reparations` WRITE;
/*!40000 ALTER TABLE `type_reparations` DISABLE KEYS */;
INSERT INTO `type_reparations` VALUES (1,'T1 - Entretien Courant & Vidange',65.00),(2,'T2 - Mécanique Générale & Freinage',85.00),(3,'T3 - Diagnostique Électronique & Complexité',110.00),(4,'T4 - Carrosserie & Peinture',95.00);
/*!40000 ALTER TABLE `type_reparations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voiture_client`
--

DROP TABLE IF EXISTS `voiture_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voiture_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `type_vehicule` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_voiture_client_client` (`id_client`),
  CONSTRAINT `fk_voiture_client_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voiture_client`
--

LOCK TABLES `voiture_client` WRITE;
/*!40000 ALTER TABLE `voiture_client` DISABLE KEYS */;
INSERT INTO `voiture_client` VALUES (1,1,'Berline','Peugeot','Rouge','067-WBJ-51'),(2,2,'Berline','Toyota','Gris','637-AFT-88'),(3,3,'SUV','BMW','Bleu','HU-582-LZ'),(4,4,'Citadine','BMW','Bleu','962-CIX-67'),(5,5,'SUV','Peugeot','Gris','000-UWN-23'),(6,6,'Berline','Toyota','Gris','977-YLA-40'),(7,7,'SUV','BMW','Bleu','941-OYF-02'),(8,8,'SUV','Peugeot','Rouge','723-SLD-94'),(9,9,'Berline','Toyota','Noir','961-DNR-93'),(10,10,'Citadine','Citroën','Rouge','NN-251-UC'),(11,11,'Citadine','Toyota','Rouge','830-NMF-07'),(12,12,'Citadine','Peugeot','Bleu','868-ALV-05'),(13,13,'Citadine','Toyota','Noir','XG-373-DY'),(14,14,'SUV','Citroën','Bleu','SR-015-CZ'),(15,15,'SUV','Citroën','Bleu','YG-636-DO'),(16,16,'Berline','Toyota','Noir','BK-373-QM'),(17,17,'Citadine','Renault','Rouge','ME-155-QL'),(18,18,'Utilitaire','BMW','Bleu','250-BDG-43'),(19,19,'Utilitaire','Citroën','Noir','HY-662-CD'),(20,20,'SUV','Renault','Rouge','140-RMX-25'),(21,21,'SUV','Toyota','Rouge','298-CZA-17'),(22,22,'SUV','Volkswagen','Gris','TJ-848-WI'),(23,23,'Citadine','Volkswagen','Gris','951-UHH-35'),(24,24,'Utilitaire','Toyota','Blanc','104-VEN-18'),(25,25,'SUV','Volkswagen','Rouge','006-SLF-79'),(26,26,'Utilitaire','Volkswagen','Blanc','468-UAR-88'),(27,27,'Utilitaire','Toyota','Bleu','AZ-951-GZ'),(28,28,'Utilitaire','Citroën','Gris','483-AZR-78'),(29,29,'Berline','Volkswagen','Noir','JA-032-ZI'),(30,30,'Citadine','BMW','Rouge','VU-091-UT'),(31,31,'Utilitaire','Volkswagen','Gris','450-OEU-08'),(32,32,'SUV','Citroën','Blanc','077-DQB-36'),(33,33,'SUV','Toyota','Blanc','373-KCD-09'),(34,34,'Berline','Peugeot','Bleu','GR-228-RR'),(35,35,'Utilitaire','Renault','Rouge','967-WJW-87'),(36,36,'Berline','Renault','Blanc','HT-245-PE'),(37,37,'Citadine','Peugeot','Rouge','640-KNT-18'),(38,38,'Berline','Renault','Rouge','592-XFF-07'),(39,39,'Berline','Toyota','Blanc','799-TYC-65'),(40,40,'Berline','Citroën','Gris','793-LMP-51'),(41,41,'Utilitaire','Toyota','Gris','YY-664-FP'),(42,42,'Citadine','Toyota','Bleu','157-JIV-14'),(43,43,'SUV','Renault','Noir','548-GOX-76'),(44,44,'Utilitaire','Toyota','Gris','389-QZO-14'),(45,45,'Utilitaire','Citroën','Noir','SN-325-GO'),(46,46,'Citadine','Toyota','Rouge','442-UNZ-67'),(47,47,'Berline','Volkswagen','Blanc','214-SPH-72'),(48,48,'SUV','Peugeot','Gris','NS-063-RU'),(49,49,'Berline','Toyota','Bleu','141-YNA-24'),(50,50,'SUV','BMW','Blanc','FK-398-CF'),(51,51,'Utilitaire','Citroën','Noir','155-BAS-01'),(52,52,'Utilitaire','Renault','Rouge','443-AEN-28'),(53,53,'Berline','Volkswagen','Gris','519-EBZ-95'),(54,54,'SUV','Peugeot','Bleu','605-FRE-55'),(55,55,'SUV','Peugeot','Blanc','318-GHX-50'),(56,56,'Utilitaire','Volkswagen','Gris','272-GOZ-99'),(57,57,'Berline','Volkswagen','Gris','713-UEZ-63'),(58,58,'SUV','Peugeot','Blanc','684-ARH-47'),(59,59,'SUV','Renault','Noir','KE-290-PO'),(60,60,'Berline','Toyota','Rouge','865-RRM-26'),(61,61,'Utilitaire','BMW','Gris','260-JOQ-00'),(62,62,'Berline','Citroën','Noir','CM-723-RB'),(63,63,'Utilitaire','Toyota','Gris','339-VRE-83'),(64,64,'SUV','Peugeot','Rouge','741-HCM-09'),(65,65,'Utilitaire','Volkswagen','Blanc','571-TNW-76'),(66,66,'Citadine','Toyota','Rouge','SI-710-CG'),(67,67,'Citadine','BMW','Bleu','661-UMW-51'),(68,68,'SUV','Toyota','Blanc','YK-296-AK'),(69,69,'Citadine','Toyota','Gris','UZ-295-UK'),(70,70,'Utilitaire','Peugeot','Bleu','485-UZB-30'),(71,71,'Berline','Citroën','Blanc','HV-236-SF'),(72,72,'Citadine','Peugeot','Noir','FE-313-FB'),(73,73,'Citadine','Toyota','Noir','VN-920-XR'),(74,74,'Citadine','Citroën','Bleu','KW-751-ID'),(75,75,'Utilitaire','Peugeot','Rouge','RE-688-VK'),(76,76,'SUV','Peugeot','Rouge','686-SWI-37'),(77,77,'SUV','BMW','Gris','689-DRL-33'),(78,78,'Utilitaire','Toyota','Gris','123-HRR-79'),(79,79,'Utilitaire','Peugeot','Gris','QM-413-DR'),(80,80,'Berline','Renault','Bleu','801-DWJ-06'),(81,81,'Citadine','Toyota','Bleu','TI-016-HS'),(82,82,'Citadine','Toyota','Noir','823-APX-57'),(83,83,'SUV','Volkswagen','Blanc','WY-585-NQ'),(84,84,'Berline','Peugeot','Gris','540-YLP-66'),(85,85,'Berline','BMW','Blanc','209-VRM-02'),(86,86,'SUV','Volkswagen','Bleu','795-GSJ-23'),(87,87,'SUV','Volkswagen','Bleu','TR-953-TK'),(88,88,'Berline','Peugeot','Gris','KM-848-VV'),(89,89,'SUV','BMW','Rouge','RF-373-XB'),(90,90,'Citadine','Peugeot','Rouge','429-BCK-49'),(91,91,'Berline','Citroën','Blanc','418-HXA-73'),(92,92,'Citadine','BMW','Gris','286-KJH-76'),(93,93,'Berline','Volkswagen','Blanc','332-KGX-60'),(94,94,'SUV','BMW','Gris','FV-620-NT'),(95,95,'Utilitaire','Citroën','Bleu','NR-763-VG'),(96,96,'Berline','Toyota','Bleu','021-KYR-27'),(97,97,'Berline','BMW','Rouge','882-IDP-65'),(98,98,'Berline','BMW','Gris','SY-368-QA'),(99,99,'Berline','Volkswagen','Noir','WC-267-GU'),(100,100,'SUV','Toyota','Rouge','BZ-190-IU'),(101,101,'Utilitaire','BMW','Noir','VR-874-BD'),(102,102,'Berline','BMW','Gris','652-FTZ-40'),(103,103,'Utilitaire','Renault','Noir','956-UCT-43'),(104,104,'Citadine','Renault','Noir','622-VOF-77'),(105,105,'Citadine','Peugeot','Rouge','VM-108-HA'),(106,106,'Berline','Toyota','Gris','IV-354-YP'),(107,107,'Utilitaire','Renault','Blanc','497-AXT-62'),(108,108,'Berline','Volkswagen','Bleu','030-GDZ-86'),(109,109,'SUV','Citroën','Blanc','UG-762-YV'),(110,110,'Berline','Volkswagen','Blanc','DY-196-KG'),(111,111,'Citadine','Renault','Gris','397-SJP-20'),(112,112,'SUV','Renault','Blanc','CD-526-BG'),(113,113,'Berline','Citroën','Rouge','MK-042-ZA'),(114,114,'Utilitaire','Citroën','Rouge','103-WJV-00'),(115,115,'SUV','Volkswagen','Bleu','054-WTI-05'),(116,116,'Utilitaire','Peugeot','Blanc','XV-435-MR'),(117,117,'SUV','Renault','Bleu','SN-328-SG'),(118,118,'Berline','BMW','Blanc','CE-998-HI'),(119,119,'Berline','Volkswagen','Rouge','HR-288-VU'),(120,120,'SUV','Toyota','Gris','281-PBN-41');
/*!40000 ALTER TABLE `voiture_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voitures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marque` varchar(255) NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  `id_garage` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_voitures_garage` (`id_garage`),
  CONSTRAINT `fk_voitures_garage` FOREIGN KEY (`id_garage`) REFERENCES `garage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voitures`
--

LOCK TABLES `voitures` WRITE;
/*!40000 ALTER TABLE `voitures` DISABLE KEYS */;
INSERT INTO `voitures` VALUES (1,'BMW','Gris Eclipse','Citadine','440-NDG-91',1),(2,'Citroën','Noir Perla Nera','Citadine','TM-582-CG',1),(3,'Volkswagen','Blanc Banquise','Citadine','110-ERB-55',1),(4,'Renault','Bleu Récif','Berline','931-HXQ-06',1),(5,'Volkswagen','Gris Minéral','Berline','KU-253-NW',1),(6,'Citroën','Rouge Intense','Citadine','ZN-293-GE',1),(7,'BMW','Noir Etoilé','SUV','254-IOX-88',1),(8,'Peugeot','Gris Artense','SUV','PR-594-TM',1),(9,'Renault','Bleu Encre','Berline','QG-381-KI',1),(10,'Peugeot','Blanc Pur','Utilitaire','BD-819-YR',1),(11,'Volkswagen','Jaune Faro','Citadine','GK-831-HC',1),(12,'Volkswagen','Rouge Elixir','Berline','545-GKZ-78',1),(13,'BMW','Noir Saphir','SUV','QA-203-BG',1),(14,'Volkswagen','Gris Célestite','Citadine','793-BZK-32',1),(15,'Toyota','Gris Platinium','Utilitaire','007-WMW-16',1),(16,'Citroën','Gris Indium','SUV','KJ-100-SY',1),(17,'Renault','Blanc Glacier','Utilitaire','565-PYK-82',1),(18,'Toyota','Bleu Vertigo','Citadine','513-XBE-03',1),(19,'Citroën','Rouge Fusion','SUV','690-YXK-73',1),(20,'Citroën','Blanc Minéral','Berline','411-UTB-47',1),(21,'Volkswagen','Bleu Iron','Berline','013-BQF-30',1),(22,'Citroën','Gris Titane','SUV','FQ-559-VQ',1),(23,'Peugeot','Rouge Rubi','Citadine','VF-859-HC',1),(24,'Peugeot','Noir Intense','Citadine','YR-534-FV',1),(25,'Volkswagen','Gris Atlas','Utilitaire','JE-064-RA',1),(26,'Toyota','Gris Carbon','Berline','LU-262-EC',1),(27,'Volkswagen','Noir Mystère','Citadine','QR-547-MG',1),(28,'Renault','Blanc Nacré','SUV','526-BSV-56',1),(29,'Toyota','Sable','Citadine','IU-097-LI',1),(30,'Volkswagen','Bleu Atlantique','Utilitaire','MU-432-BO',1),(31,'Volkswagen','Gris Eclipse','Citadine','PF-931-EU',2),(32,'BMW','Noir Perla Nera','Citadine','576-BZN-15',2),(33,'Citroën','Blanc Banquise','Citadine','213-YUD-44',2),(34,'Toyota','Bleu Récif','Berline','972-AHM-19',2),(35,'Renault','Gris Minéral','Berline','214-NMG-52',2),(36,'Citroën','Rouge Intense','Citadine','EE-446-TJ',2),(37,'Toyota','Noir Etoilé','SUV','CP-299-CJ',2),(38,'BMW','Gris Artense','SUV','454-FGU-17',2),(39,'Peugeot','Bleu Encre','Berline','LQ-793-SI',2),(40,'Renault','Blanc Pur','Utilitaire','805-MII-36',2),(41,'Toyota','Jaune Faro','Citadine','280-ZMS-42',2),(42,'Volkswagen','Rouge Elixir','Berline','925-YOQ-01',2),(43,'Volkswagen','Noir Saphir','SUV','TM-770-GH',2),(44,'Volkswagen','Gris Célestite','Citadine','BT-939-PE',2),(45,'BMW','Gris Platinium','Utilitaire','RR-413-PI',2),(46,'Volkswagen','Gris Indium','SUV','274-HHS-61',2),(47,'Toyota','Blanc Glacier','Utilitaire','AQ-705-SV',2),(48,'Citroën','Bleu Vertigo','Citadine','HP-881-FQ',2),(49,'BMW','Rouge Fusion','SUV','707-TVB-24',2),(50,'Renault','Blanc Minéral','Berline','087-KFB-69',2),(51,'BMW','Bleu Iron','Berline','372-UMU-71',2),(52,'BMW','Gris Titane','SUV','SO-095-JF',2),(53,'Citroën','Rouge Rubi','Citadine','JG-597-UP',2),(54,'Renault','Noir Intense','Citadine','833-DVT-88',2),(55,'Citroën','Gris Atlas','Utilitaire','EC-369-IF',2),(56,'BMW','Gris Carbon','Berline','YD-176-KW',2),(57,'Toyota','Noir Mystère','Citadine','485-ONR-44',2),(58,'Citroën','Blanc Nacré','SUV','123-MRE-36',2),(59,'Toyota','Sable','Citadine','467-MZT-76',2),(60,'BMW','Bleu Atlantique','Utilitaire','IB-875-EN',2),(61,'Toyota','Gris Eclipse','Citadine','644-DNI-62',3),(62,'Renault','Noir Perla Nera','Citadine','QO-077-JI',3),(63,'Volkswagen','Blanc Banquise','Citadine','119-AYI-33',3),(64,'Renault','Bleu Récif','Berline','DZ-768-QR',3),(65,'BMW','Gris Minéral','Berline','QK-847-DF',3),(66,'Toyota','Rouge Intense','Citadine','MK-198-MC',3),(67,'Volkswagen','Noir Etoilé','SUV','582-ZGS-05',3),(68,'Toyota','Gris Artense','SUV','663-EUA-81',3),(69,'Peugeot','Bleu Encre','Berline','747-WQF-37',3),(70,'BMW','Blanc Pur','Utilitaire','QV-634-RA',3),(71,'Peugeot','Jaune Faro','Citadine','AP-022-KA',3),(72,'Volkswagen','Rouge Elixir','Berline','EJ-790-QU',3),(73,'Renault','Noir Saphir','SUV','WB-304-AV',3),(74,'BMW','Gris Célestite','Citadine','YS-379-WF',3),(75,'Citroën','Gris Platinium','Utilitaire','732-QBZ-07',3),(76,'Toyota','Gris Indium','SUV','CA-574-DC',3),(77,'Citroën','Blanc Glacier','Utilitaire','849-ADP-38',3),(78,'BMW','Bleu Vertigo','Citadine','KE-030-OH',3),(79,'Toyota','Rouge Fusion','SUV','664-RBV-84',3),(80,'Volkswagen','Blanc Minéral','Berline','FI-490-CC',3),(81,'Toyota','Bleu Iron','Berline','204-GYY-22',3),(82,'BMW','Gris Titane','SUV','811-CWR-15',3),(83,'BMW','Rouge Rubi','Citadine','515-BPF-95',3),(84,'BMW','Noir Intense','Citadine','333-RZX-07',3),(85,'Toyota','Gris Atlas','Utilitaire','SW-911-CJ',3),(86,'Volkswagen','Gris Carbon','Berline','953-PGR-50',3),(87,'Renault','Noir Mystère','Citadine','MY-120-VD',3),(88,'BMW','Blanc Nacré','SUV','728-WLY-84',3),(89,'BMW','Sable','Citadine','IP-678-DC',3),(90,'BMW','Bleu Atlantique','Utilitaire','831-WMV-38',3),(91,'Volkswagen','Gris Eclipse','Citadine','301-VRA-46',4),(92,'Peugeot','Noir Perla Nera','Citadine','SA-556-TA',4),(93,'Volkswagen','Blanc Banquise','Citadine','JS-628-ST',4),(94,'Citroën','Bleu Récif','Berline','861-GGG-43',4),(95,'BMW','Gris Minéral','Berline','475-UMY-04',4),(96,'Toyota','Rouge Intense','Citadine','790-FFE-94',4),(97,'Renault','Noir Etoilé','SUV','637-LZC-85',4),(98,'Citroën','Gris Artense','SUV','393-FNJ-89',4),(99,'Renault','Bleu Encre','Berline','KD-093-BP',4),(100,'Citroën','Blanc Pur','Utilitaire','LN-162-EH',4),(101,'BMW','Jaune Faro','Citadine','RA-971-PM',4),(102,'BMW','Rouge Elixir','Berline','164-YLL-86',4),(103,'Renault','Noir Saphir','SUV','XR-380-OP',4),(104,'Peugeot','Gris Célestite','Citadine','WM-497-GO',4),(105,'BMW','Gris Platinium','Utilitaire','735-YOM-72',4),(106,'Peugeot','Gris Indium','SUV','838-OHY-23',4),(107,'Renault','Blanc Glacier','Utilitaire','783-ECZ-80',4),(108,'Toyota','Bleu Vertigo','Citadine','YZ-825-GY',4),(109,'Toyota','Rouge Fusion','SUV','986-ING-62',4),(110,'Peugeot','Blanc Minéral','Berline','TM-472-SM',4),(111,'Toyota','Bleu Iron','Berline','EG-400-NR',4),(112,'Citroën','Gris Titane','SUV','125-BJS-60',4),(113,'Renault','Rouge Rubi','Citadine','VM-607-VD',4),(114,'Peugeot','Noir Intense','Citadine','LM-656-MP',4),(115,'Citroën','Gris Atlas','Utilitaire','566-SPE-35',4),(116,'Toyota','Gris Carbon','Berline','620-LOV-13',4),(117,'Volkswagen','Noir Mystère','Citadine','228-MKS-85',4),(118,'Volkswagen','Blanc Nacré','SUV','955-ETZ-87',4),(119,'Volkswagen','Sable','Citadine','AI-528-JA',4),(120,'BMW','Bleu Atlantique','Utilitaire','460-QYO-84',4);
/*!40000 ALTER TABLE `voitures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'caretpair'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-22 10:19:41
