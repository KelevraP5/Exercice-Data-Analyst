-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: caretpair_brut
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
-- Table structure for table `raw_le_havre`
--

DROP TABLE IF EXISTS `raw_le_havre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_le_havre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garage_id` bigint(20) DEFAULT NULL,
  `antenne_id` bigint(20) DEFAULT NULL,
  `client_nom` text DEFAULT NULL,
  `client_prenom` text DEFAULT NULL,
  `client_telephone` text DEFAULT NULL,
  `client_vehicule_type` text DEFAULT NULL,
  `client_vehicule_marque` text DEFAULT NULL,
  `client_vehicule_couleur` text DEFAULT NULL,
  `client_vehicule_immat` text DEFAULT NULL,
  `employe_nom` text DEFAULT NULL,
  `employe_prenom` text DEFAULT NULL,
  `employe_poste` text DEFAULT NULL,
  `employe_salaire` text DEFAULT NULL,
  `reparation_date_entree` text DEFAULT NULL,
  `reparation_date_sortie` text DEFAULT NULL,
  `reparation_temps` text DEFAULT NULL,
  `reparation_prix` text DEFAULT NULL,
  `garage_vehicule_categorie` varchar(255) DEFAULT NULL,
  `garage_vehicule_marque` text DEFAULT NULL,
  `garage_vehicule_couleur` varchar(255) DEFAULT NULL,
  `garage_vehicule_immat` text DEFAULT NULL,
  `location_type` text DEFAULT NULL,
  `location_prix_ht` text DEFAULT NULL,
  `date_debut_location` datetime DEFAULT NULL,
  `date_fin_location` datetime DEFAULT NULL,
  `piece_ref` text DEFAULT NULL,
  `piece_nom` text DEFAULT NULL,
  `piece_prix_achat` double DEFAULT NULL,
  `piece_prix_vente` double DEFAULT NULL,
  `piece_stock` text DEFAULT NULL,
  `piece_quantite_utilisee` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_le_havre`
--

LOCK TABLES `raw_le_havre` WRITE;
/*!40000 ALTER TABLE `raw_le_havre` DISABLE KEYS */;
INSERT INTO `raw_le_havre` VALUES (1,1,1,'Hamon','DANIELLE','+33 218710218','Berline','Peugeot','Rouge','067-WBJ-51','Guyot','Émilie','Mécanicien',NULL,'2025-10-20 22:23:23','2020-01-01','2.5','450.0','Citadine','BMW','Gris Eclipse','440-NDG-91','PRET',NULL,NULL,NULL,'REF-102','Plaquettes de frein',45,85,'EN STOCK',2),(2,1,1,' Thibault ','andré','+33 (0)6 33 75 12 84','Berline','Toyota','Gris','637-AFT-88','laroche','TRISTAN','Réceptionniste','2100.0','08/02/2025 01:28','2020-01-01','1h30',NULL,'Citadine','Citroën','Noir Perla Nera','TM-582-CG','PRET','-20.0',NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',1),(3,1,1,'Duhamel','Marguerite','     0155011731 (perso)','SUV','BMW','Bleu','HU-582-LZ','Royer','ADÈLE','Chef d\'atelier','1950.5','2025-12-03T08:46:57','2026-07-25T14:33:16','2.0 hrs','-50.0','Citadine','Volkswagen','Blanc Banquise','110-ERB-55','pret','50.0',NULL,NULL,'REF-103','Disque de frein',80,150,'-2',2),(4,1,1,'Lucas','Émilie','03 76 14 96 39 (perso)','Citadine','BMW','Bleu','962-CIX-67',' Bernier ','monique','Carrossier','-1500','2025-02-08 20:10:55','2025/11/18','2.5','-50.0','Berline','Renault','Bleu Récif','931-HXQ-06','LOCATION','35.0',NULL,NULL,'REF-103','Disque de frein',80,150,'EN STOCK',0),(5,1,1,'ÉTIENNE','Pénélope','0463165979','SUV','Peugeot','Gris','000-UWN-23','lévy','Gabrielle','Carrossier','2200 €','2024-08-19 09:36:00','2026/02/26','1h30',NULL,'Berline','Volkswagen','Gris Minéral','KU-253-NW','Location_Courte','45 €',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'0',-1),(6,1,1,'LE GOFF','XAVIER','+33.(0)3.89.15.39.00','Berline','Toyota','Gris','977-YLA-40','Delannoy','jean','Carrossier',NULL,'2026-02-19 13:38:07','2026-05-13T11:16:55','1.0',NULL,'Citadine','Citroën','Rouge Intense','ZN-293-GE','pret','35.0',NULL,NULL,'REF-103','Disque de frein',80,150,'EN STOCK',2),(7,1,1,' Guillet ','Lorraine','0567321255','SUV','BMW','Bleu','941-OYF-02',' Leroux ','RENÉ','Réceptionniste',NULL,'2024/08/16','2025-01-28 14:57:11','2.5',NULL,'SUV','BMW','Noir Etoilé','254-IOX-88','PRET',NULL,NULL,NULL,'REF-103','Disque de frein',80,150,'EN STOCK',1),(8,1,1,'LOMBARD','paulette','+33 (0)4 91 42 47 10','SUV','Peugeot','Rouge','723-SLD-94','cordier','Alain','Mécanicien','2100.0','2025/04/23','2026-01-14T14:52:23',NULL,'450.0','SUV','Peugeot','Gris Artense','PR-594-TM','Location_Courte',NULL,NULL,NULL,'REF-102','Plaquettes de frein',45,85,'-2',-1),(9,1,1,'Lenoir','Julie','+33 (0)8 03 57 03 55','Berline','Toyota','Noir','961-DNR-93','moreau','Marine','Réceptionniste','-1500','2026-02-18T12:19:36','04/03/2026 17:29','1.0','-50.0','Berline','Renault','Bleu Encre','QG-381-KI','LOCATION',NULL,NULL,NULL,'REF-102','Plaquettes de frein',45,85,'15',1),(10,1,1,'Weber','MAGGIE','0498781367','Citadine','Citroën','Rouge','NN-251-UC',' Boulanger ','stéphane','Carrossier','2200 €','2025/07/25','2025-06-24T14:29:57',NULL,'300 €','Utilitaire','Peugeot','Blanc Pur','BD-819-YR','Location_Courte','-20.0',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'15',1),(11,1,1,'Carpentier','raymond','+33 33 (0)7 73 03 91 61','Citadine','Toyota','Rouge','830-NMF-07','BLANCHARD','Thibaut','Mécanicien','2200 €','19/06/2026 20:40','25/11/2024 10:46','2.5','-50.0','Citadine','Volkswagen','Jaune Faro','GK-831-HC','LOCATION','35.0',NULL,NULL,'REF-104','Batterie 12V',90,160,'15',1),(12,1,1,'Delaunay',' Margot ','+33.5.36.44.44.18','Citadine','Peugeot','Bleu','868-ALV-05',' Benard ',' Stéphanie ','Carrossier','2100.0','05/04/2025 03:57','2020-01-01','2.0 hrs','-50.0','Berline','Volkswagen','Rouge Elixir','545-GKZ-78','pret','-20.0',NULL,NULL,'REF-104','Batterie 12V',90,160,'0',2),(13,1,1,'guilbert','Étienne','+33285548169','Citadine','Toyota','Noir','XG-373-DY','PRUVOST','Dorothée','Chef d\'atelier','2100.0','2025-01-21T05:11:16','2020-01-01','2.5','120.0','SUV','BMW','Noir Saphir','QA-203-BG','PRET','50.0',NULL,NULL,'REF-104','Batterie 12V',90,160,'15',2),(14,1,1,'Ramos','MARTINE','06.25.48.39.31','SUV','Citroën','Bleu','SR-015-CZ','Charles','stéphanie','Réceptionniste','-1500','20/08/2025 01:59','2025-12-20 11:32:08','1.0','120.0','Citadine','Volkswagen','Gris Célestite','793-BZK-32','PRET','35.0',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'-2',2),(15,1,1,'Legros','Nathalie','0387641262','SUV','Citroën','Bleu','YG-636-DO',' Gomez ',' Élisabeth ','Réceptionniste',NULL,'2026-03-09T08:44:33','2026/03/24',NULL,'-50.0','Utilitaire','Toyota','Gris Platinium','007-WMW-16','PRET','50.0',NULL,NULL,'REF-103','Disque de frein',80,150,'15',1),(16,1,1,'Sauvage','SYLVIE','+33 33 4 73 02 62 84','Berline','Toyota','Noir','BK-373-QM','baudry','Margaud','Réceptionniste',NULL,'2026-06-13 16:08:07','2024-12-29T11:02:51','1.0','300 €','SUV','Citroën','Gris Indium','KJ-100-SY','PRET','35.0',NULL,NULL,'REF-103','Disque de frein',80,150,'0',0),(17,1,1,'PETITJEAN',' Michèle ','+33 (0)1 75 40 08 37','Citadine','Renault','Rouge','ME-155-QL','Marin','Suzanne','Chef d\'atelier',NULL,'18/04/2025 11:41','2025/11/08','2.0 hrs','450.0','Utilitaire','Renault','Blanc Glacier','565-PYK-82','pret','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'-2',2),(18,1,1,'Wagner','Luc','+33 33 (0)1 44 54 39 26','Utilitaire','BMW','Bleu','250-BDG-43','Ruiz','thibault','Chef d\'atelier','2200 €','2025-06-27T05:30:41','2020-01-01','1h30','300 €','Citadine','Toyota','Bleu Vertigo','513-XBE-03','LOCATION','45 €',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'15',-1),(19,1,1,'Samson','Alex','05.18.10.59.89','Utilitaire','Citroën','Noir','HY-662-CD','Lombard','Antoine','Chef d\'atelier','2100.0','2025/08/24','2025-12-22 17:21:19','1.0','-50.0','SUV','Citroën','Rouge Fusion','690-YXK-73','Location_Courte',NULL,NULL,NULL,'REF-103','Disque de frein',80,150,'15',1),(20,1,1,'Jacob','matthieu','0147962494','SUV','Renault','Rouge','140-RMX-25','Allain','valérie','Réceptionniste','-1500','2025/03/23','2025-06-25 21:22:36',NULL,'450.0','Berline','Citroën','Blanc Minéral','411-UTB-47','PRET','-20.0',NULL,NULL,'REF-101','Filtre à huile',15,30,'0',0),(21,1,1,' Becker ','Lucy','+33 (0)5 86 21 53 70','SUV','Toyota','Rouge','298-CZA-17','Martins','pénélope','Réceptionniste',NULL,'2025-06-15 12:50:11','2025-04-28 07:29:16','2.5','450.0','Berline','Volkswagen','Bleu Iron','013-BQF-30','Location_Courte','50.0',NULL,NULL,'REF-103','Disque de frein',80,150,'EN STOCK',1),(22,1,1,'pichon','sophie','03 44 22 05 58','SUV','Volkswagen','Gris','TJ-848-WI',' Laroche ','margot','Carrossier',NULL,'31/07/2026 13:14','2020-01-01',NULL,NULL,'SUV','Citroën','Gris Titane','FQ-559-VQ','PRET','50.0',NULL,NULL,'REF-103','Disque de frein',80,150,'0',2),(23,1,1,'BERNARD','LAURENT','0668225872','Citadine','Volkswagen','Gris','951-UHH-35','Gautier','Hugues','Carrossier','-1500','2026-06-17 07:30:58','2024/09/30','1.0','300 €','Citadine','Peugeot','Rouge Rubi','VF-859-HC','LOCATION',NULL,NULL,NULL,'REF-104','Batterie 12V',90,160,'15',2),(24,1,1,'Le Roux','JEANNINE','+33.3.57.27.69.44','Utilitaire','Toyota','Blanc','104-VEN-18','Jacquet','Aurélie','Carrossier',NULL,'2024-10-27T02:13:04','2025-11-07 06:53:04',NULL,'300 €','Citadine','Peugeot','Noir Intense','YR-534-FV','Location_Courte','-20.0',NULL,NULL,'REF-103','Disque de frein',80,150,'0',0),(25,1,1,'Dijoux',' Rémy ','03 64 19 64 08 (perso)','SUV','Volkswagen','Rouge','006-SLF-79','Courtois','isaac','Réceptionniste','1950.5','2025-10-14T03:57:23','2020-01-01','2.5','450.0','Utilitaire','Volkswagen','Gris Atlas','JE-064-RA','LOCATION','50.0',NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',-1),(26,1,1,'dufour',' Marc ','+33.(0)4.80.35.37.52','Utilitaire','Volkswagen','Blanc','468-UAR-88','Bègue','NOÉMI','Carrossier','-1500','24/10/2024 14:34','2026-02-22T06:44:31','2.0 hrs',NULL,'Berline','Toyota','Gris Carbon','LU-262-EC','LOCATION','-20.0',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'-2',-1),(27,1,1,' Guillet ','hortense','03 71 90 52 57 (perso)','Utilitaire','Toyota','Bleu','AZ-951-GZ','Lambert','Antoine','Mécanicien','-1500','2025/09/04','09/03/2026 05:45','2.0 hrs','450.0','Citadine','Volkswagen','Noir Mystère','QR-547-MG','LOCATION','35.0',NULL,NULL,'REF-103','Disque de frein',80,150,'EN STOCK',0),(28,1,1,'cordier','stéphane','04 93 12 54 47','Utilitaire','Citroën','Gris','483-AZR-78','roy','ALICE','Mécanicien',NULL,'2025/12/21','2025-05-03 21:49:09','1.0','120.0','SUV','Renault','Blanc Nacré','526-BSV-56','LOCATION','50.0',NULL,NULL,'REF-101','Filtre à huile',15,30,'0',2),(29,1,1,'ANDRE','Jeanne','0731122118','Berline','Volkswagen','Noir','JA-032-ZI','Gaudin','THIBAUT','Mécanicien','2200 €','2024-09-22T02:05:15','24/03/2026 20:05','1h30',NULL,'Citadine','Toyota','Sable','IU-097-LI','Location_Courte','-20.0',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'15',2),(30,1,1,'BOUCHER','Odette','0559552248','Citadine','BMW','Rouge','VU-091-UT','bouchet',' Alphonse ','Réceptionniste','2100.0','2025/01/13','2024-10-15T08:35:39','2.0 hrs','120.0','Utilitaire','Volkswagen','Bleu Atlantique','MU-432-BO','pret','-20.0',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'EN STOCK',2);
/*!40000 ALTER TABLE `raw_le_havre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_lyon`
--

DROP TABLE IF EXISTS `raw_lyon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_lyon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garage_id` int(11) DEFAULT NULL,
  `antenne_id` int(11) DEFAULT NULL,
  `client_nom` varchar(255) DEFAULT NULL,
  `client_prenom` varchar(255) DEFAULT NULL,
  `client_telephone` varchar(255) DEFAULT NULL,
  `client_vehicule_type` varchar(255) DEFAULT NULL,
  `client_vehicule_marque` varchar(255) DEFAULT NULL,
  `client_vehicule_couleur` varchar(255) DEFAULT NULL,
  `client_vehicule_immat` varchar(255) DEFAULT NULL,
  `employe_nom` varchar(255) DEFAULT NULL,
  `employe_prenom` varchar(255) DEFAULT NULL,
  `employe_poste` varchar(255) DEFAULT NULL,
  `employe_salaire` varchar(255) DEFAULT NULL,
  `reparation_date_entree` varchar(255) DEFAULT NULL,
  `reparation_date_sortie` varchar(255) DEFAULT NULL,
  `reparation_temps` varchar(255) DEFAULT NULL,
  `reparation_prix` varchar(255) DEFAULT NULL,
  `garage_vehicule_categorie` varchar(255) DEFAULT NULL,
  `garage_vehicule_marque` varchar(255) DEFAULT NULL,
  `garage_vehicule_couleur` varchar(255) DEFAULT NULL,
  `garage_vehicule_immat` varchar(255) DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `location_prix_ht` varchar(255) DEFAULT NULL,
  `date_debut_location` datetime DEFAULT NULL,
  `date_fin_location` datetime DEFAULT NULL,
  `piece_ref` varchar(255) DEFAULT NULL,
  `piece_nom` varchar(255) DEFAULT NULL,
  `piece_prix_achat` varchar(255) DEFAULT NULL,
  `piece_prix_vente` varchar(255) DEFAULT NULL,
  `piece_stock` varchar(255) DEFAULT NULL,
  `piece_quantite_utilisee` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_lyon`
--

LOCK TABLES `raw_lyon` WRITE;
/*!40000 ALTER TABLE `raw_lyon` DISABLE KEYS */;
INSERT INTO `raw_lyon` VALUES (1,4,4,'Leclerc',' Nathalie ','04.13.59.23.87','Berline','Citroën','Blanc','418-HXA-73','poulain','colette','Réceptionniste','N/A','2026-05-08 06:36:29','2025/04/02',NULL,'-50.0','Citadine','Volkswagen','Gris Eclipse','301-VRA-46','PRET','45 €',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','15','-1'),(2,4,4,'Hubert','Olivie','04 65 53 62 55','Citadine','BMW','Gris','286-KJH-76','loiseau','Michel','Chef d\'atelier',NULL,'08/05/2026 14:46','2025/08/02',NULL,'300 €','Citadine','Peugeot','Noir Perla Nera','SA-556-TA','LOCATION','35.0',NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','0','1'),(3,4,4,' Benoit ',' Luce ','+33 33 4 49 91 57 16','Berline','Volkswagen','Blanc','332-KGX-60','Vaillant','Michèle','Mécanicien',NULL,'25/09/2025 09:04','2026-01-31 12:46:08','2.0 hrs',NULL,'Citadine','Volkswagen','Blanc Banquise','JS-628-ST','pret','50.0',NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','-2','0'),(4,4,4,'Raymond','André','0557638179 (perso)','SUV','BMW','Gris','FV-620-NT','MOREAU','daniel','Réceptionniste','2200 €','2026-01-09T10:32:47','2025-04-10T19:48:59','2.5','300 €','Berline','Citroën','Bleu Récif','861-GGG-43','Location_Courte','45 €',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','-2','1'),(5,4,4,'Grondin',' Rémy ','+33 2 57 74 78 93','Utilitaire','Citroën','Bleu','NR-763-VG','ferreira','zacharie','Mécanicien','1950.5','2025-10-22T19:39:29','2025/02/15','2.5','450.0','Berline','BMW','Gris Minéral','475-UMY-04','pret',NULL,NULL,NULL,'REF-103','Disque de frein','80.0','150.0','0','1'),(6,4,4,'Perrot','Noël','+33.5.24.78.26.60','Berline','Toyota','Bleu','021-KYR-27','PETIT',' Agathe ','Carrossier','2100.0','2025/02/27','2024-08-24T18:27:12','2.5','300 €','Citadine','Toyota','Rouge Intense','790-FFE-94','Location_Courte','-20.0',NULL,NULL,'REF-102','Plaquettes de frein','45.0','85.0','-2','0'),(7,4,4,'hoarau','LAURENCE','+33 (0)5 57 22 43 26','Berline','BMW','Rouge','882-IDP-65','Raynaud','YVES','Chef d\'atelier','2100.0','2025-10-10T00:19:30','2025-10-31 21:08:51','1h30','120.0','SUV','Renault','Noir Etoilé','637-LZC-85','pret',NULL,NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','-2','0'),(8,4,4,' Simon ','Luc','0164709719','Berline','BMW','Gris','SY-368-QA','daniel','Aurore','Réceptionniste','2200 €','2026/01/07','2026/07/20','1.0','-50.0','SUV','Citroën','Gris Artense','393-FNJ-89','LOCATION','50.0',NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','EN STOCK','0'),(9,4,4,'LEROY','Marcel','02.36.21.22.69','Berline','Volkswagen','Noir','WC-267-GU','Alexandre','GRÉGOIRE','Carrossier','2200 €','2025-11-15 20:03:21','2026-02-23 06:56:43',NULL,NULL,'Berline','Renault','Bleu Encre','KD-093-BP','pret','45 €',NULL,NULL,'REF-102','Plaquettes de frein','45.0','85.0','15','1'),(10,4,4,' Fontaine ','RAYMOND','03 73 99 91 95 (perso)','SUV','Toyota','Rouge','BZ-190-IU','Guilbert','Geneviève','Réceptionniste','N/A','16/09/2025 12:33','2025-08-28 20:03:34','2.0 hrs',NULL,'Utilitaire','Citroën','Blanc Pur','LN-162-EH','Location_Courte',NULL,NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','0','2'),(11,4,4,'Benard','Paul','0483836288','Utilitaire','BMW','Noir','VR-874-BD','BOUVIER','Joséphine','Mécanicien','N/A','2026-05-12T15:29:19','2024/11/27','2.5','-50.0','Citadine','BMW','Jaune Faro','RA-971-PM','Location_Courte','35.0',NULL,NULL,'REF-102','Plaquettes de frein','45.0','85.0','EN STOCK','1'),(12,4,4,'Coulon',' Simone ','+33.(0)2.53.49.35.27','Berline','BMW','Gris','652-FTZ-40',' Roger ','MARCELLE','Carrossier',NULL,'2025-07-09T03:32:34','2026-03-13 15:59:12','1.0','450.0','Berline','BMW','Rouge Elixir','164-YLL-86','PRET','35.0',NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','-2','1'),(13,4,4,' Rolland ','DOROTHÉE','0483772994','Utilitaire','Renault','Noir','956-UCT-43',' Aubert ','Céline','Carrossier','1950.5','2025-03-26T07:43:37','2026-02-03T02:00:43','2.0 hrs','300 €','SUV','Renault','Noir Saphir','XR-380-OP','LOCATION','45 €',NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','0','-1'),(14,4,4,' Gosselin ','Jérôme','+33.(0)7.79.53.68.70','Citadine','Renault','Noir','622-VOF-77',' Louis ','Margaux','Carrossier','N/A','2024-08-12 18:03:04','2025-01-27 19:11:27','2.5','-50.0','Citadine','Peugeot','Gris Célestite','WM-497-GO','PRET','35.0',NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','15','2'),(15,4,4,'rocher','ISABELLE','+33.(0)2.43.58.80.47','Citadine','Peugeot','Rouge','VM-108-HA',' Hernandez ','guillaume','Chef d\'atelier','2100.0','24/03/2025 01:58','21/07/2026 01:47',NULL,'-50.0','Utilitaire','BMW','Gris Platinium','735-YOM-72','pret','50.0',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','0','2'),(16,4,4,' Perret ','marine','0444875016','Berline','Toyota','Gris','IV-354-YP','Dumont','MARINE','Réceptionniste',NULL,'2024/10/09','2026-01-06 21:30:56','2.0 hrs','300 €','SUV','Peugeot','Gris Indium','838-OHY-23','pret','-20.0',NULL,NULL,'REF-102','Plaquettes de frein','45.0','85.0','EN STOCK','2'),(17,4,4,'Fontaine','alexandrie','0471626293','Utilitaire','Renault','Blanc','497-AXT-62',' Bonnin ',' Danielle ','Chef d\'atelier','-1500','28/05/2025 04:40','2025/01/07','2.0 hrs','-50.0','Utilitaire','Renault','Blanc Glacier','783-ECZ-80','LOCATION','35.0',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','EN STOCK','1'),(18,4,4,'Descamps','MARCEL','+33 (0)5 82 77 61 48','Berline','Volkswagen','Bleu','030-GDZ-86','Gomes','georges','Mécanicien','2200 €','2026-06-02T15:07:06','11/11/2025 08:29','2.0 hrs','450.0','Citadine','Toyota','Bleu Vertigo','YZ-825-GY','LOCATION','-20.0',NULL,NULL,'REF-102','Plaquettes de frein','45.0','85.0','-2','0'),(19,4,4,'vallée',' Thérèse ','+33 325122540','SUV','Citroën','Blanc','UG-762-YV','Faure',' Guillaume ','Carrossier','1950.5','2026-06-12T04:43:13','2024-09-27 11:42:36',NULL,'450.0','SUV','Toyota','Rouge Fusion','986-ING-62','LOCATION','35.0',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','EN STOCK','0'),(20,4,4,'PAYET','claire','+33 33 1 83 79 51 84','Berline','Volkswagen','Blanc','DY-196-KG','Fernandes','Christine','Réceptionniste','-1500','2025-03-19T14:29:47','2025-05-04 19:35:47','2.5','-50.0','Berline','Peugeot','Blanc Minéral','TM-472-SM','LOCATION',NULL,NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','0','1'),(21,4,4,' Morel ','Olivie','0465905380','Citadine','Renault','Gris','397-SJP-20','SANCHEZ','Camille','Mécanicien',NULL,'28/03/2025 19:03','2025-09-20 13:01:04','1.0',NULL,'Berline','Toyota','Bleu Iron','EG-400-NR','Location_Courte','-20.0',NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','15','-1'),(22,4,4,'ARNAUD',' Colette ','+33 33 5 19 91 00 77','SUV','Renault','Blanc','CD-526-BG','Ferreira','Alexandre','Chef d\'atelier','2100.0','2026-06-21T11:18:58','01/08/2026 09:18',NULL,NULL,'SUV','Citroën','Gris Titane','125-BJS-60','pret','45 €',NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','15','0'),(23,4,4,'Peron',' Guillaume ','0388830476','Berline','Citroën','Rouge','MK-042-ZA','Charpentier','Capucine','Mécanicien','2100.0','2025-10-16 01:41:19','2026-06-11 00:26:31','1.0','450.0','Citadine','Renault','Rouge Rubi','VM-607-VD','Location_Courte','-20.0',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','15','1'),(24,4,4,'clerc','Maurice','06 83 09 78 74 (perso)','Utilitaire','Citroën','Rouge','103-WJV-00','Delannoy','Jérôme','Réceptionniste','N/A','2025/04/21','2020-01-01','1h30','120.0','Citadine','Peugeot','Noir Intense','LM-656-MP','LOCATION','-20.0',NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','-2','2'),(25,4,4,'Paris','Marthe','+33 (0)3 75 84 75 64','SUV','Volkswagen','Bleu','054-WTI-05','Moreau','Aimé','Mécanicien','N/A','2026/01/31','12/08/2025 04:49','2.5','120.0','Utilitaire','Citroën','Gris Atlas','566-SPE-35','Location_Courte','45 €',NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','-2','-1'),(26,4,4,' Pruvost ','agathe','+33 (0)4 71 62 72 09','Utilitaire','Peugeot','Blanc','XV-435-MR','Rey','STÉPHANE','Réceptionniste','2200 €','2025/05/22','2020-01-01','2.5','300 €','Berline','Toyota','Gris Carbon','620-LOV-13','LOCATION','-20.0',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','-2','1'),(27,4,4,'LEBLANC','Nathalie','+33 33 (0)3 26 09 50 48','SUV','Renault','Bleu','SN-328-SG','VALENTIN',' Eugène ','Carrossier','2100.0','24/12/2025 14:44','08/05/2026 19:23',NULL,'-50.0','Citadine','Volkswagen','Noir Mystère','228-MKS-85','PRET','45 €',NULL,NULL,'REF-104','Batterie 12V','90.0','160.0','EN STOCK','1'),(28,4,4,'Chauvet','Mathilde','+33 (0)1 48 78 84 62','Berline','BMW','Blanc','CE-998-HI','AUBRY','éléonore','Chef d\'atelier','1950.5','2026-02-12 08:06:37','08/04/2026 03:22','2.0 hrs','-50.0','SUV','Volkswagen','Blanc Nacré','955-ETZ-87','pret','-20.0',NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','-2','0'),(29,4,4,'Chevallier','Suzanne','0632870372','Berline','Volkswagen','Rouge','HR-288-VU','PASQUIER','GUY','Carrossier','1950.5','2026-03-19T06:35:31','2025-12-07T08:11:42','2.0 hrs','-50.0','Citadine','Volkswagen','Sable','AI-528-JA','LOCATION','45 €',NULL,NULL,'REF-103','Disque de frein','80.0','150.0','0','-1'),(30,4,4,'le goff','Margot','+33 (0)4 43 34 56 36','SUV','Toyota','Gris','281-PBN-41','Boulay','Margaux','Réceptionniste','-1500','2026-07-04 16:08:04','2025-10-18 02:53:55',NULL,'450.0','Utilitaire','BMW','Bleu Atlantique','460-QYO-84','LOCATION',NULL,NULL,NULL,'REF-101','Filtre à huile','15.0','30.0','EN STOCK','2');
/*!40000 ALTER TABLE `raw_lyon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_montauban`
--

DROP TABLE IF EXISTS `raw_montauban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_montauban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garage_id` bigint(20) DEFAULT NULL,
  `antenne_id` bigint(20) DEFAULT NULL,
  `client_nom` text DEFAULT NULL,
  `client_prenom` text DEFAULT NULL,
  `client_telephone` text DEFAULT NULL,
  `client_vehicule_type` text DEFAULT NULL,
  `client_vehicule_marque` text DEFAULT NULL,
  `client_vehicule_couleur` text DEFAULT NULL,
  `client_vehicule_immat` text DEFAULT NULL,
  `employe_nom` text DEFAULT NULL,
  `employe_prenom` text DEFAULT NULL,
  `employe_poste` text DEFAULT NULL,
  `employe_salaire` text DEFAULT NULL,
  `reparation_date_entree` text DEFAULT NULL,
  `reparation_date_sortie` text DEFAULT NULL,
  `reparation_temps` text DEFAULT NULL,
  `reparation_prix` text DEFAULT NULL,
  `garage_vehicule_categorie` varchar(255) DEFAULT NULL,
  `garage_vehicule_marque` text DEFAULT NULL,
  `garage_vehicule_couleur` varchar(255) DEFAULT NULL,
  `garage_vehicule_immat` text DEFAULT NULL,
  `location_type` text DEFAULT NULL,
  `location_prix_ht` text DEFAULT NULL,
  `date_debut_location` datetime DEFAULT NULL,
  `date_fin_location` datetime DEFAULT NULL,
  `piece_ref` text DEFAULT NULL,
  `piece_nom` text DEFAULT NULL,
  `piece_prix_achat` bigint(20) DEFAULT NULL,
  `piece_prix_vente` bigint(20) DEFAULT NULL,
  `piece_stock` text DEFAULT NULL,
  `piece_quantite_utilisee` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_montauban`
--

LOCK TABLES `raw_montauban` WRITE;
/*!40000 ALTER TABLE `raw_montauban` DISABLE KEYS */;
INSERT INTO `raw_montauban` VALUES (1,2,2,'Renard','Jacques','+33 33 2 48 20 76 24','Utilitaire','Volkswagen','Gris','450-OEU-08','Grenier','Catherine','Réceptionniste','2200 €','2025-04-24T13:28:55','2020-01-01','2.0 hrs','450','Citadine','Volkswagen','Gris Eclipse','PF-931-EU','Location_Courte','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',0),(2,2,2,'BOUVET','mathilde','+33 (0)5 55 01 74 10','SUV','Citroën','Blanc','077-DQB-36','Richard','camille','Mécanicien',NULL,'2024-08-20T16:51:11','2020-01-01','2.0 hrs','300 €','Citadine','BMW','Noir Perla Nera','576-BZN-15','LOCATION','-20',NULL,NULL,'REF-104','Batterie 12V',90,160,'EN STOCK',1),(3,2,2,'LECOMTE','marguerite','0594400812 (perso)','SUV','Toyota','Blanc','373-KCD-09','salmon','Henriette','Réceptionniste','-1500','2024-11-30T03:01:43','2024-12-17 07:18:10','2.0 hrs','-50','Citadine','Citroën','Blanc Banquise','213-YUD-44','pret','50',NULL,NULL,'REF-101','Filtre à huile',15,30,'0',0),(4,2,2,'EVRARD',' Aurore ','03 82 46 19 37','Berline','Peugeot','Bleu','GR-228-RR','Rocher','martine','Réceptionniste','2100','2024-10-23T16:19:23','2024-10-05 19:42:43','1h30','120','Berline','Toyota','Bleu Récif','972-AHM-19','LOCATION','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'15',0),(5,2,2,'Lemaître','JOSETTE','+33 (0)3 53 47 31 35','Utilitaire','Renault','Rouge','967-WJW-87','Rossi',' Margaud ','Carrossier','1950.5','18/09/2024 04:06','2020-01-01','2.0 hrs','120','Berline','Renault','Gris Minéral','214-NMG-52','Location_Courte','-20',NULL,NULL,'REF-101','Filtre à huile',15,30,'15',2),(6,2,2,'RICHARD','Charles','+33 33 4 98 97 27 41','Berline','Renault','Blanc','HT-245-PE','Fernandes','Susanne','Chef d\'atelier',NULL,'2025-01-31 07:04:35','2024-08-08 15:28:02',NULL,'300 €','Citadine','Citroën','Rouge Intense','EE-446-TJ','PRET',NULL,NULL,NULL,'REF-101','Filtre à huile',15,30,'0',2),(7,2,2,'pelletier','FRANÇOIS','0244469726','Citadine','Peugeot','Rouge','640-KNT-18',' Alexandre ','Andrée','Carrossier','1950.5','14/06/2025 07:26','2025-01-02 09:44:17','2.0 hrs','120','SUV','Toyota','Noir Etoilé','CP-299-CJ','LOCATION','45 €',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'EN STOCK',1),(8,2,2,' Masse ','Anastasie','02 36 02 93 46','Berline','Renault','Rouge','592-XFF-07','PARIS','paul','Réceptionniste','-1500','30/06/2026 01:40','2026/07/29','1h30',NULL,'SUV','BMW','Gris Artense','454-FGU-17','Location_Courte','-20',NULL,NULL,'REF-101','Filtre à huile',15,30,'15',-1),(9,2,2,'Leclerc','Adélaïde','+33.4.63.49.25.28','Berline','Toyota','Blanc','799-TYC-65','Pons','MARGOT','Réceptionniste',NULL,'03/04/2025 01:27','2025-09-25 05:57:57','2.0 hrs','-50','Berline','Peugeot','Bleu Encre','LQ-793-SI','Location_Courte','-20',NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',0),(10,2,2,' Bernard ','antoine','+33.1.82.26.24.13','Berline','Citroën','Gris','793-LMP-51','Lopes','laurent','Carrossier',NULL,'24/08/2024 11:31','2020-01-01','1h30','-50','Utilitaire','Renault','Blanc Pur','805-MII-36','Location_Courte',NULL,NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',-1),(11,2,2,'NAVARRO',' Simone ','+33 5 46 58 68 86 (perso)','Utilitaire','Toyota','Gris','YY-664-FP','Jacquot','adrienne','Chef d\'atelier','1950.5','2026-03-29 19:19:28','17/06/2025 22:36',NULL,'450','Citadine','Toyota','Jaune Faro','280-ZMS-42','LOCATION','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',1),(12,2,2,'lucas','Marguerite','+33.(0)5.90.96.60.24','Citadine','Toyota','Bleu','157-JIV-14',' Nicolas ','Antoinette','Réceptionniste','-1500','2024-08-24T09:50:14','01/02/2026 18:32',NULL,'450','Berline','Volkswagen','Rouge Elixir','925-YOQ-01','LOCATION',NULL,NULL,NULL,'REF-102','Plaquettes de frein',45,85,'15',0),(13,2,2,'Lopez','Éric','+33 3 52 96 87 22','SUV','Renault','Noir','548-GOX-76','Buisson','Roland','Carrossier','2200 €','2025-09-02 22:17:53','2026-07-23 20:49:22',NULL,'300 €','SUV','Volkswagen','Noir Saphir','TM-770-GH','pret','50',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'EN STOCK',2),(14,2,2,'Auger',' Manon ','+33 33 (0)4 37 45 29 54','Utilitaire','Toyota','Gris','389-QZO-14','bonneau','Catherine','Chef d\'atelier','-1500','2025-06-17T19:42:38','2025-11-13T23:30:54','1h30','120','Citadine','Volkswagen','Gris Célestite','BT-939-PE','PRET',NULL,NULL,NULL,'REF-104','Batterie 12V',90,160,'15',2),(15,2,2,' Roussel ','Édouard','0173249461','Utilitaire','Citroën','Noir','SN-325-GO','Guillon','véronique','Mécanicien','1950.5','2026-06-12T14:02:14','2025-12-10 12:51:19','1h30','300 €','Utilitaire','BMW','Gris Platinium','RR-413-PI','PRET',NULL,NULL,NULL,'REF-101','Filtre à huile',15,30,'0',0),(16,2,2,'Fabre','Odette','+33 33 4 32 69 32 40','Citadine','Toyota','Rouge','442-UNZ-67',' Letellier ','Arthur','Mécanicien','2100','2025-06-30 20:54:13','2020-01-01','1h30','-50','SUV','Volkswagen','Gris Indium','274-HHS-61','LOCATION','50',NULL,NULL,'REF-104','Batterie 12V',90,160,'0',2),(17,2,2,'DEVAUX','Aurélie','+33 33 (0)4 71 23 10 42','Berline','Volkswagen','Blanc','214-SPH-72','MARY',' Suzanne ','Réceptionniste','-1500','2026-01-24 03:36:49','2020-01-01','2.0 hrs','-50','Utilitaire','Toyota','Blanc Glacier','AQ-705-SV','LOCATION','35',NULL,NULL,'REF-104','Batterie 12V',90,160,'-2',0),(18,2,2,'Hamon',' Daniel ','+33 33 (0)3 52 33 12 75','SUV','Peugeot','Gris','NS-063-RU','Besnard','ÉLISE','Carrossier',NULL,'2026-01-27 23:52:19','2025/03/02','1','300 €','Citadine','Citroën','Bleu Vertigo','HP-881-FQ','PRET',NULL,NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',0),(19,2,2,'Allain','capucine','+33 (0)5 62 26 38 77','Berline','Toyota','Bleu','141-YNA-24','Fouquet','Paul','Chef d\'atelier',NULL,'01/01/2025 09:19','29/10/2025 19:23','2.0 hrs','120','SUV','BMW','Rouge Fusion','707-TVB-24','pret','50',NULL,NULL,'REF-101','Filtre à huile',15,30,'-2',0),(20,2,2,'Mallet','GEORGES','+33.4.37.77.57.41','SUV','BMW','Blanc','FK-398-CF','Gaudin','Michelle','Réceptionniste','-1500','2025-06-25T23:53:38','2026-05-07T18:41:00','1','300 €','Berline','Renault','Blanc Minéral','087-KFB-69','LOCATION','50',NULL,NULL,'REF-104','Batterie 12V',90,160,'-2',1),(21,2,2,'Roche','VICTOR','0351273975','Utilitaire','Citroën','Noir','155-BAS-01','Carre','Jérôme','Réceptionniste','2100','2024/10/18','2025/11/28',NULL,'-50','Berline','BMW','Bleu Iron','372-UMU-71','LOCATION','35',NULL,NULL,'REF-104','Batterie 12V',90,160,'-2',-1),(22,2,2,'ALVES','RÉMY','+33.(0)2.55.45.92.96','Utilitaire','Renault','Rouge','443-AEN-28','labbé',' Céline ','Carrossier','-1500','2025-01-21 06:54:21','2024/10/30',NULL,'300 €','SUV','BMW','Gris Titane','SO-095-JF','LOCATION','-20',NULL,NULL,'REF-101','Filtre à huile',15,30,'EN STOCK',-1),(23,2,2,'Gauthier','bernadette','0357597068 (perso)','Berline','Volkswagen','Gris','519-EBZ-95','Carpentier','Nathalie','Mécanicien',NULL,'2025-04-09 13:38:59','2025/05/07','1','300 €','Citadine','Citroën','Rouge Rubi','JG-597-UP','LOCATION','35',NULL,NULL,'REF-104','Batterie 12V',90,160,'15',2),(24,2,2,'Lamy','Marie','05.81.21.83.87','SUV','Peugeot','Bleu','605-FRE-55','Martel','aurore','Chef d\'atelier',NULL,'26/03/2026 05:00','2026-04-04 13:11:41','2.5',NULL,'Citadine','Renault','Noir Intense','833-DVT-88','pret','50',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'-2',2),(25,2,2,'VALETTE','Denise','+33.5.53.09.31.06','SUV','Peugeot','Blanc','318-GHX-50','andre','GEORGES','Mécanicien','2200 €','2024/12/17','2026/04/25','2.0 hrs','300 €','Utilitaire','Citroën','Gris Atlas','EC-369-IF','PRET','-20',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'15',0),(26,2,2,' Blot ','Robert','+33.4.90.15.98.39','Utilitaire','Volkswagen','Gris','272-GOZ-99','Girard',' Patricia ','Carrossier','2100','2026-01-26T15:24:34','18/03/2025 16:57','2.5','-50','Berline','BMW','Gris Carbon','YD-176-KW','pret','-20',NULL,NULL,'REF-103','Disque de frein',80,150,'EN STOCK',-1),(27,2,2,'BOUVIER','Alex','+33 6 98 73 48 79','Berline','Volkswagen','Gris','713-UEZ-63','Guichard',' Emmanuel ','Carrossier','-1500','2024-09-27 10:38:16','2020-01-01','2.0 hrs','-50','Citadine','Toyota','Noir Mystère','485-ONR-44','pret','45 €',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'EN STOCK',1),(28,2,2,'HAMEL','HORTENSE','+33 33 (0)4 73 63 18 03','SUV','Peugeot','Blanc','684-ARH-47','LEMAIRE','Céline','Réceptionniste',NULL,'25/11/2025 20:54','2026/05/06','2.0 hrs','120','SUV','Citroën','Blanc Nacré','123-MRE-36','pret','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'0',2),(29,2,2,'Richard','noël','+33.6.32.66.10.22','SUV','Renault','Noir','KE-290-PO','Lefort','Martin','Mécanicien',NULL,'2024-08-22T18:04:33','2024-12-31 04:16:52','2.5','-50','Citadine','Toyota','Sable','467-MZT-76','pret','45 €',NULL,NULL,'REF-103','Disque de frein',80,150,'15',2),(30,2,2,'Pires','Victoire','+33 3 24 98 15 40','Berline','Toyota','Rouge','865-RRM-26','PARIS',' Laurent ','Carrossier','-1500','2024-12-25 17:09:54','2025-01-13 05:33:02','1h30',NULL,'Utilitaire','BMW','Bleu Atlantique','IB-875-EN','PRET','35',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'0',1);
/*!40000 ALTER TABLE `raw_montauban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_nancy`
--

DROP TABLE IF EXISTS `raw_nancy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_nancy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `garage_id` bigint(20) DEFAULT NULL,
  `antenne_id` bigint(20) DEFAULT NULL,
  `client_nom` text DEFAULT NULL,
  `client_prenom` text DEFAULT NULL,
  `client_telephone` text DEFAULT NULL,
  `client_vehicule_type` text DEFAULT NULL,
  `client_vehicule_marque` text DEFAULT NULL,
  `client_vehicule_couleur` text DEFAULT NULL,
  `client_vehicule_immat` text DEFAULT NULL,
  `employe_nom` text DEFAULT NULL,
  `employe_prenom` text DEFAULT NULL,
  `employe_poste` text DEFAULT NULL,
  `employe_salaire` text DEFAULT NULL,
  `reparation_date_entree` text DEFAULT NULL,
  `reparation_date_sortie` text DEFAULT NULL,
  `reparation_temps` text DEFAULT NULL,
  `reparation_prix` text DEFAULT NULL,
  `garage_vehicule_categorie` varchar(255) DEFAULT NULL,
  `garage_vehicule_marque` text DEFAULT NULL,
  `garage_vehicule_couleur` varchar(255) DEFAULT NULL,
  `garage_vehicule_immat` text DEFAULT NULL,
  `location_type` text DEFAULT NULL,
  `location_prix_ht` text DEFAULT NULL,
  `date_debut_location` datetime DEFAULT NULL,
  `date_fin_location` datetime DEFAULT NULL,
  `piece_ref` text DEFAULT NULL,
  `piece_nom` text DEFAULT NULL,
  `piece_prix_achat` bigint(20) DEFAULT NULL,
  `piece_prix_vente` bigint(20) DEFAULT NULL,
  `piece_stock` text DEFAULT NULL,
  `piece_quantite_utilisee` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_nancy`
--

LOCK TABLES `raw_nancy` WRITE;
/*!40000 ALTER TABLE `raw_nancy` DISABLE KEYS */;
INSERT INTO `raw_nancy` VALUES (1,3,3,'Guérin','inès','0183647802 (perso)','Utilitaire','BMW','Gris','260-JOQ-00',' Michaud ','alfred','Mécanicien','1950.5','2024-10-16 22:41:24','2024/11/02','2.0 hrs',NULL,'Citadine','Toyota','Gris Eclipse','644-DNI-62','pret','35',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'EN STOCK',1),(2,3,3,'DIDIER','andré','+33.(0)3.59.01.26.60','Berline','Citroën','Noir','CM-723-RB','pages','ALEXANDRIA','Carrossier','2200 €','01/10/2025 05:23','14/09/2025 16:28',NULL,'-50','Citadine','Renault','Noir Perla Nera','QO-077-JI','Location_Courte','35',NULL,NULL,'REF-104','Batterie 12V',90,160,'15',-1),(3,3,3,'Collet','Jérôme','+33298441489','Utilitaire','Toyota','Gris','339-VRE-83','legendre',' Élisabeth ','Réceptionniste','2200 €','2026-01-19T10:40:54','2025-03-05T23:17:29','1h30','120','Citadine','Volkswagen','Blanc Banquise','119-AYI-33','PRET','50',NULL,NULL,'REF-104','Batterie 12V',90,160,'EN STOCK',1),(4,3,3,'monnier','mathilde','+33 33 2 52 02 08 10','SUV','Peugeot','Rouge','741-HCM-09',' Torres ','CHANTAL','Chef d\'atelier','1950.5','2025-05-14 11:55:54','2024/08/14','2.5','450','Berline','Renault','Bleu Récif','DZ-768-QR','LOCATION','45 €',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'0',2),(5,3,3,'Salmon','Anne','0488045823','Utilitaire','Volkswagen','Blanc','571-TNW-76','Antoine',' Dorothée ','Réceptionniste',NULL,'2025-03-23 21:39:34','2026-04-10 21:47:09','1h30','-50','Berline','BMW','Gris Minéral','QK-847-DF','PRET','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'-2',-1),(6,3,3,' Delmas ','VICTOIRE','03 23 53 63 18','Citadine','Toyota','Rouge','SI-710-CG','Girard',' Roland ','Carrossier','N/A','2025/04/30','2026-05-11T05:09:48','2.0 hrs',NULL,'Citadine','Toyota','Rouge Intense','MK-198-MC','LOCATION','45 €',NULL,NULL,'REF-104','Batterie 12V',90,160,'0',1),(7,3,3,' De Sousa ','Agnès','+33 (0)4 70 09 68 26','Citadine','BMW','Bleu','661-UMW-51','TORRES','Jean','Carrossier','N/A','2024/12/23','2025-10-08 03:54:18','1h30','300 €','SUV','Volkswagen','Noir Etoilé','582-ZGS-05','pret',NULL,NULL,NULL,'REF-101','Filtre à huile',15,30,'-2',1),(8,3,3,'bouvier','Lucas','+33 524477095','SUV','Toyota','Blanc','YK-296-AK','Besnard','charlotte','Chef d\'atelier','1950.5','2025-12-08 14:04:18','2025/11/17','2.5',NULL,'SUV','Toyota','Gris Artense','663-EUA-81','PRET','45 €',NULL,NULL,'REF-104','Batterie 12V',90,160,'-2',2),(9,3,3,'Lacombe','Thérèse','+33 1 73 76 30 16','Citadine','Toyota','Gris','UZ-295-UK',' Perrier ','LAURENT','Réceptionniste','2200 €','2026-07-26T02:58:36','2026-06-07T13:42:55','2.5','450','Berline','Peugeot','Bleu Encre','747-WQF-37','LOCATION','35',NULL,NULL,'REF-103','Disque de frein',80,150,'15',1),(10,3,3,'Leblanc','Lorraine','+33 3 20 73 18 13 (perso)','Utilitaire','Peugeot','Bleu','485-UZB-30','MAILLOT','Olivie','Chef d\'atelier',NULL,'2025-12-17 16:18:22','2025/10/21','2.5','300 €','Utilitaire','BMW','Blanc Pur','QV-634-RA','pret','-20',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'0',0),(11,3,3,'Adam','Rémy','+33 (0)1 48 63 10 78','Berline','Citroën','Blanc','HV-236-SF','Toussaint',' Franck ','Réceptionniste','-1500','2024/11/26','16/04/2026 05:48','2.5',NULL,'Citadine','Peugeot','Jaune Faro','AP-022-KA','pret','35',NULL,NULL,'REF-104','Batterie 12V',90,160,'-2',1),(12,3,3,'Berger',' Sophie ','+33.(0)4.65.96.79.73','Citadine','Peugeot','Noir','FE-313-FB',' Fischer ',' Philippine ','Carrossier','2100','2025-12-05T15:54:51','2026-05-26 18:25:45','1h30','120','Berline','Volkswagen','Rouge Elixir','EJ-790-QU','PRET','-20',NULL,NULL,'REF-103','Disque de frein',80,150,'0',-1),(13,3,3,'Roux','théophile','+33.(0)4.37.89.81.04','Citadine','Toyota','Noir','VN-920-XR','Charles','ANNE','Réceptionniste','-1500','2026/01/12','2025/03/15','2.0 hrs',NULL,'SUV','Renault','Noir Saphir','WB-304-AV','PRET','35',NULL,NULL,'REF-103','Disque de frein',80,150,'0',2),(14,3,3,' Michaud ','Virginie','0438667190','Citadine','Citroën','Bleu','KW-751-ID','lemoine','ISAAC','Carrossier',NULL,'2025-07-18T13:01:31','10/12/2024 10:56','2.0 hrs',NULL,'Citadine','BMW','Gris Célestite','YS-379-WF','PRET',NULL,NULL,NULL,'REF-102','Plaquettes de frein',45,85,'0',0),(15,3,3,' Pires ','Stéphane','+33.(0)5.40.30.75.19','Utilitaire','Peugeot','Rouge','RE-688-VK',' Descamps ','georges','Mécanicien','-1500','2025-12-06T01:13:46','2020-01-01','2.0 hrs','-50','Utilitaire','Citroën','Gris Platinium','732-QBZ-07','PRET','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'-2',2),(16,3,3,'Cohen','Antoinette','0381947432','SUV','Peugeot','Rouge','686-SWI-37','mahe','alfred','Chef d\'atelier',NULL,'2025-04-15 01:35:23','2024/10/07','2.5','120','SUV','Toyota','Gris Indium','CA-574-DC','Location_Courte','35',NULL,NULL,'REF-103','Disque de frein',80,150,'0',1),(17,3,3,'Mathieu','Gabriel','+33 4 84 70 75 91','SUV','BMW','Gris','689-DRL-33','Traore',' David ','Réceptionniste','2100','2026-08-08T01:23:16','2026-08-02 12:32:23','1','-50','Utilitaire','Citroën','Blanc Glacier','849-ADP-38','PRET','45 €',NULL,NULL,'REF-104','Batterie 12V',90,160,'EN STOCK',-1),(18,3,3,'Techer','marthe','+33 (0)4 73 86 32 46','Utilitaire','Toyota','Gris','123-HRR-79','gonzalez','Virginie','Réceptionniste','2100','2025/07/29','2020-01-01',NULL,'450','Citadine','BMW','Bleu Vertigo','KE-030-OH','pret','45 €',NULL,NULL,'REF-101','Filtre à huile',15,30,'15',0),(19,3,3,'Lecomte','roland','+33 1 69 31 90 96 (perso)','Utilitaire','Peugeot','Gris','QM-413-DR','raynaud','THIERRY','Réceptionniste','N/A','2025-05-02T04:27:07','2026-06-12T04:32:44','1','120','SUV','Toyota','Rouge Fusion','664-RBV-84','Location_Courte','45 €',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'15',2),(20,3,3,'Martineau','Léon','+33 33 (0)2 52 71 05 47','Berline','Renault','Bleu','801-DWJ-06','Jacquot','nicolas','Carrossier','N/A','14/08/2025 01:15','2026-03-01 13:13:48','1h30','-50','Berline','Volkswagen','Blanc Minéral','FI-490-CC','PRET',NULL,NULL,NULL,'REF-102','Plaquettes de frein',45,85,'-2',-1),(21,3,3,'cohen','audrey','0172462824','Citadine','Toyota','Bleu','TI-016-HS',' Hoarau ','denise','Mécanicien','1950.5','2025-02-08T03:40:08','07/12/2024 22:53',NULL,'-50','Berline','Toyota','Bleu Iron','204-GYY-22','Location_Courte','50',NULL,NULL,'REF-101','Filtre à huile',15,30,'0',1),(22,3,3,' Peron ','Auguste','+33 582247891','Citadine','Toyota','Noir','823-APX-57','Le Gall','Nath','Réceptionniste','1950.5','2025-01-12T05:10:15','2025-04-30T18:04:05','2.5','-50','SUV','BMW','Gris Titane','811-CWR-15','LOCATION','35',NULL,NULL,'REF-102','Plaquettes de frein',45,85,'0',2),(23,3,3,'Vallée','MATTHIEU','+33(0)139658899','SUV','Volkswagen','Blanc','WY-585-NQ','DA SILVA','Hortense','Mécanicien','1950.5','2025-01-15 07:03:16','2025-03-18 01:00:00','2.0 hrs','300 €','Citadine','BMW','Rouge Rubi','515-BPF-95','PRET','50',NULL,NULL,'REF-103','Disque de frein',80,150,'15',-1),(24,3,3,' Charrier ',' Gilbert ','06.80.54.45.91','Berline','Peugeot','Gris','540-YLP-66',' Renard ','Martine','Mécanicien','N/A','14/04/2026 05:36','2025-04-13 06:42:39','2.5','-50','Citadine','BMW','Noir Intense','333-RZX-07','pret','35',NULL,NULL,'REF-103','Disque de frein',80,150,'0',0),(25,3,3,'CHEVALLIER','louise','0582747444','Berline','BMW','Blanc','209-VRM-02','MOREL','Alphonse','Réceptionniste','N/A','03/10/2024 05:40','31/08/2025 10:05',NULL,'-50','Utilitaire','Toyota','Gris Atlas','SW-911-CJ','LOCATION',NULL,NULL,NULL,'REF-104','Batterie 12V',90,160,'15',-1),(26,3,3,'Hamel',' Diane ','0144985584 (perso)','SUV','Volkswagen','Bleu','795-GSJ-23','Gomes','Philippe','Réceptionniste','-1500','15/01/2026 16:45','2020-01-01','2.0 hrs','300 €','Berline','Volkswagen','Gris Carbon','953-PGR-50','Location_Courte','50',NULL,NULL,'REF-103','Disque de frein',80,150,'0',0),(27,3,3,'Roche','frédéric','01 48 97 87 11','SUV','Volkswagen','Bleu','TR-953-TK','Pierre',' Grégoire ','Mécanicien','1950.5','22/06/2025 06:58','2024-10-12 07:28:02','2.5','120','Citadine','Renault','Noir Mystère','MY-120-VD','pret','-20',NULL,NULL,'REF-104','Batterie 12V',90,160,'0',2),(28,3,3,'Hoarau','Élodie','+33 2 57 25 44 84','Berline','Peugeot','Gris','KM-848-VV','Dupré',' Emmanuelle ','Réceptionniste','-1500','29/06/2025 23:19','2025/12/09','2.5','450','SUV','BMW','Blanc Nacré','728-WLY-84','pret','35',NULL,NULL,'REF-101','Filtre à huile',15,30,'-2',-1),(29,3,3,'Dos Santos','Adrien','+33 2 90 28 36 31 (perso)','SUV','BMW','Rouge','RF-373-XB','Rodriguez',' Tristan ','Réceptionniste',NULL,'2026-03-18 03:13:53','11/06/2026 01:48','1',NULL,'Citadine','BMW','Sable','IP-678-DC','LOCATION','45 €',NULL,NULL,'REF-103','Disque de frein',80,150,'15',-1),(30,3,3,' Bernard ','Patrick','+33 3 45 26 96 36','Citadine','Peugeot','Rouge','429-BCK-49','fischer','Alice','Réceptionniste','N/A','2026-03-29T20:16:11','16/08/2025 06:11',NULL,'300 €','Utilitaire','BMW','Bleu Atlantique','831-WMV-38','PRET','35',NULL,NULL,'REF-101','Filtre à huile',15,30,'0',0);
/*!40000 ALTER TABLE `raw_nancy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'caretpair_brut'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-22 10:18:00
