-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: warenhaus2
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `abteilung`
--

DROP TABLE IF EXISTS `abteilung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abteilung` (
  `abteilungsnummer` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `bezeichnung` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leiter` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`abteilungsnummer`),
  UNIQUE KEY `bezeichnung_UNIQUE` (`bezeichnung`),
  KEY `fk_abteilung_mitarbeiter_idx` (`leiter`),
  CONSTRAINT `fk_abteilung_mitarbeiter` FOREIGN KEY (`leiter`) REFERENCES `mitarbeiter` (`mitarbeiternr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abteilung`
--

LOCK TABLES `abteilung` WRITE;
/*!40000 ALTER TABLE `abteilung` DISABLE KEYS */;
INSERT INTO `abteilung` VALUES ('11','Verkauf',NULL),('12','Verwaltung',NULL),('13','Wartung',NULL),('14','Lager',NULL),('15','Kundendienst',NULL);
/*!40000 ALTER TABLE `abteilung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikel` (
  `artikelnr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `bezeichnung` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `farbe` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preis` decimal(10,2) DEFAULT NULL,
  `gewicht` decimal(10,2) DEFAULT NULL,
  `einheit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groesse` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artikelgrp` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lieferant` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`artikelnr`),
  KEY `fk_artikel_lieferant_idx` (`lieferant`),
  KEY `fk_artikel_artikelgruppe_idx` (`artikelgrp`),
  CONSTRAINT `fk_artikel_artikelgruppe` FOREIGN KEY (`artikelgrp`) REFERENCES `artikelgruppe` (`artikelgruppe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_artikel_lieferant` FOREIGN KEY (`lieferant`) REFERENCES `lieferant` (`lieferantennr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` VALUES ('1','ProBook','schwarz',400.00,2040.00,'Zoll','13,3','A','0001'),('2','Enterprise_500','wei§',200.00,42200.00,'mm','470x440x160','D','0001'),('3','Scanjet','schwarz',150.00,2200.00,'mm','60x280x460','B','0002'),('4','Touch','schwarz',100.00,0.09,'mm','50x111x36','C','0002'),('5','Officejet','grau',150.00,NULL,'mm','350x448x206','D','0001'),('6','SpaceMouse','blank',200.00,NULL,NULL,NULL,'X','0002');
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artikelgruppe`
--

DROP TABLE IF EXISTS `artikelgruppe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikelgruppe` (
  `artikelgruppe` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `bezeichnung` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`artikelgruppe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikelgruppe`
--

LOCK TABLES `artikelgruppe` WRITE;
/*!40000 ALTER TABLE `artikelgruppe` DISABLE KEYS */;
INSERT INTO `artikelgruppe` VALUES ('A','Laptop'),('B','Scanner'),('C','Maus'),('D','Drucker'),('E','Tastatur'),('X','Undefiniert');
/*!40000 ALTER TABLE `artikelgruppe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `aufgabe_1`
--

DROP TABLE IF EXISTS `aufgabe_1`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_1` AS SELECT 
 1 AS `lieferantennr`,
 1 AS `name`,
 1 AS `standort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_10`
--

DROP TABLE IF EXISTS `aufgabe_10`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_10`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_10` AS SELECT 
 1 AS `lieferantennr`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_11`
--

DROP TABLE IF EXISTS `aufgabe_11`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_11`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_11` AS SELECT 
 1 AS `standortsnr`,
 1 AS `stadt`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_12`
--

DROP TABLE IF EXISTS `aufgabe_12`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_12`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_12` AS SELECT 
 1 AS `kundennr`,
 1 AS `vorname`,
 1 AS `nachname`,
 1 AS `geschlecht`,
 1 AS `geburtstag`,
 1 AS `kundengrp`,
 1 AS `standort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_13`
--

DROP TABLE IF EXISTS `aufgabe_13`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_13`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_13` AS SELECT 
 1 AS `artikelnr`,
 1 AS `bezeichnung`,
 1 AS `farbe`,
 1 AS `preis`,
 1 AS `gewicht`,
 1 AS `einheit`,
 1 AS `groesse`,
 1 AS `artikelgrp`,
 1 AS `lieferant`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_14`
--

DROP TABLE IF EXISTS `aufgabe_14`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_14`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_14` AS SELECT 
 1 AS `lieferantennr`,
 1 AS `name`,
 1 AS `standort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_15`
--

DROP TABLE IF EXISTS `aufgabe_15`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_15`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_15` AS SELECT 
 1 AS `kundennr`,
 1 AS `vorname`,
 1 AS `nachname`,
 1 AS `kundengrp`,
 1 AS `strasse`,
 1 AS `hausnummer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_16`
--

DROP TABLE IF EXISTS `aufgabe_16`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_16`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_16` AS SELECT 
 1 AS `mitarbeiternr`,
 1 AS `vorname`,
 1 AS `nachname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_17`
--

DROP TABLE IF EXISTS `aufgabe_17`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_17`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_17` AS SELECT 
 1 AS `kundennr`,
 1 AS `vorname`,
 1 AS `nachname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_18`
--

DROP TABLE IF EXISTS `aufgabe_18`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_18`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_18` AS SELECT 
 1 AS `auftragsnr`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_19`
--

DROP TABLE IF EXISTS `aufgabe_19`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_19`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_19` AS SELECT 
 1 AS `auftragsnr`,
 1 AS `auftragsdatum`,
 1 AS `liederdatum`,
 1 AS `status`,
 1 AS `kunde`,
 1 AS `mitarbeiter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_2`
--

DROP TABLE IF EXISTS `aufgabe_2`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_2` AS SELECT 
 1 AS `artikelnr`,
 1 AS `bezeichnung`,
 1 AS `farbe`,
 1 AS `preis`,
 1 AS `gewicht`,
 1 AS `einheit`,
 1 AS `groesse`,
 1 AS `artikelgrp`,
 1 AS `lieferant`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_20`
--

DROP TABLE IF EXISTS `aufgabe_20`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_20`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_20` AS SELECT 
 1 AS `preis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_21`
--

DROP TABLE IF EXISTS `aufgabe_21`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_21`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_21` AS SELECT 
 1 AS `artikelnr`,
 1 AS `groesse`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_22`
--

DROP TABLE IF EXISTS `aufgabe_22`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_22`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_22` AS SELECT 
 1 AS `bezeichnung`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_23`
--

DROP TABLE IF EXISTS `aufgabe_23`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_23`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_23` AS SELECT 
 1 AS `bezeichnung`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_24`
--

DROP TABLE IF EXISTS `aufgabe_24`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_24`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_24` AS SELECT 
 1 AS `auftragsnr`,
 1 AS `auftragsdatum`,
 1 AS `liederdatum`,
 1 AS `status`,
 1 AS `kunde`,
 1 AS `mitarbeiter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_25`
--

DROP TABLE IF EXISTS `aufgabe_25`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_25`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_25` AS SELECT 
 1 AS `bezeichnung`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_26`
--

DROP TABLE IF EXISTS `aufgabe_26`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_26`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_26` AS SELECT 
 1 AS `auftragsnr`,
 1 AS `auftragsdatum`,
 1 AS `liederdatum`,
 1 AS `status`,
 1 AS `kunde`,
 1 AS `mitarbeiter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_27`
--

DROP TABLE IF EXISTS `aufgabe_27`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_27`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_27` AS SELECT 
 1 AS `farbe`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_28`
--

DROP TABLE IF EXISTS `aufgabe_28`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_28`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_28` AS SELECT 
 1 AS `kundennr`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_29`
--

DROP TABLE IF EXISTS `aufgabe_29`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_29`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_29` AS SELECT 
 1 AS `positionswert`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_3`
--

DROP TABLE IF EXISTS `aufgabe_3`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_3` AS SELECT 
 1 AS `positionsnr`,
 1 AS `positionsmenge`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_30`
--

DROP TABLE IF EXISTS `aufgabe_30`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_30`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_30` AS SELECT 
 1 AS `artikelnr`,
 1 AS `bezeichnung`,
 1 AS `farbe`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_31`
--

DROP TABLE IF EXISTS `aufgabe_31`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_31`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_31` AS SELECT 
 1 AS `kundennr`,
 1 AS `vorname`,
 1 AS `nachname`,
 1 AS `geschlecht`,
 1 AS `geburtstag`,
 1 AS `kundengrp`,
 1 AS `standort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_32`
--

DROP TABLE IF EXISTS `aufgabe_32`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_32`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_32` AS SELECT 
 1 AS `auftragsnr`,
 1 AS `auftragsdatum`,
 1 AS `liederdatum`,
 1 AS `status`,
 1 AS `kunde`,
 1 AS `mitarbeiter`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_33`
--

DROP TABLE IF EXISTS `aufgabe_33`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_33`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_33` AS SELECT 
 1 AS `preis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_34`
--

DROP TABLE IF EXISTS `aufgabe_34`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_34`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_34` AS SELECT 
 1 AS `ort`,
 1 AS `kundennr`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_4`
--

DROP TABLE IF EXISTS `aufgabe_4`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_4` AS SELECT 
 1 AS `positionsnr`,
 1 AS `positionsmenge`,
 1 AS `positionswert`,
 1 AS `einzelpreis`,
 1 AS `einzelpreisrabatt`,
 1 AS `artikel`,
 1 AS `auftrag`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_5`
--

DROP TABLE IF EXISTS `aufgabe_5`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_5`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_5` AS SELECT 
 1 AS `kundennr`,
 1 AS `vorname`,
 1 AS `nachname`,
 1 AS `geschlecht`,
 1 AS `geburtstag`,
 1 AS `kundengrp`,
 1 AS `standort`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_6`
--

DROP TABLE IF EXISTS `aufgabe_6`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_6`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_6` AS SELECT 
 1 AS `kundennr`,
 1 AS `vorname`,
 1 AS `nachname`,
 1 AS `stadt`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_7`
--

DROP TABLE IF EXISTS `aufgabe_7`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_7`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_7` AS SELECT 
 1 AS `auftragsnr`,
 1 AS `auftragsdatum`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_8`
--

DROP TABLE IF EXISTS `aufgabe_8`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_8`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_8` AS SELECT 
 1 AS `artikelnr`,
 1 AS `gewicht`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `aufgabe_9`
--

DROP TABLE IF EXISTS `aufgabe_9`;
/*!50001 DROP VIEW IF EXISTS `aufgabe_9`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aufgabe_9` AS SELECT 
 1 AS `vorname`,
 1 AS `nachname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `auftrag`
--

DROP TABLE IF EXISTS `auftrag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auftrag` (
  `auftragsnr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `auftragsdatum` date NOT NULL,
  `liederdatum` date DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `kunde` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `mitarbeiter` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auftragsnr`),
  KEY `fk_auftrag_mitarbeiter_idx` (`mitarbeiter`),
  CONSTRAINT `fk_auftrag_kunde` FOREIGN KEY (`mitarbeiter`) REFERENCES `kunde` (`kundennr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_auftrag_mitarbeiter` FOREIGN KEY (`mitarbeiter`) REFERENCES `mitarbeiter` (`mitarbeiternr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auftrag`
--

LOCK TABLES `auftrag` WRITE;
/*!40000 ALTER TABLE `auftrag` DISABLE KEYS */;
INSERT INTO `auftrag` VALUES ('00000001','2016-07-11','2016-08-22','offen','0000001',NULL),('00000002','2016-10-05','2015-11-30','gelistet','0000002','00000002'),('00000003','2016-05-22','2016-06-11','gelistet','0000002','00000001'),('00000004','2016-10-09','2016-10-31','geliefert','0000003','00000001');
/*!40000 ALTER TABLE `auftrag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kunde`
--

DROP TABLE IF EXISTS `kunde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kunde` (
  `kundennr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `vorname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nachname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `geschlecht` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `geburtstag` date DEFAULT NULL,
  `kundengrp` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `standort` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`kundennr`),
  KEY `fk_kunde_standort_idx` (`standort`),
  KEY `fk_kunde_kundengruppe_idx` (`kundengrp`),
  CONSTRAINT `fk_kunde_kundengruppe` FOREIGN KEY (`kundengrp`) REFERENCES `kundengruppe` (`kundengruppe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kunde_standort` FOREIGN KEY (`standort`) REFERENCES `standort` (`standortsnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kunde`
--

LOCK TABLES `kunde` WRITE;
/*!40000 ALTER TABLE `kunde` DISABLE KEYS */;
INSERT INTO `kunde` VALUES ('0000001','Susanne','Herrmann','w','1982-02-02','B','00113'),('0000002','Gerd','Schneider','m','1958-01-01',NULL,'00112'),('0000003','Gerhard','Kofler','m','1958-05-05','C','00111');
/*!40000 ALTER TABLE `kunde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kundengruppe`
--

DROP TABLE IF EXISTS `kundengruppe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kundengruppe` (
  `kundengruppe` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `bezeichnung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`kundengruppe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kundengruppe`
--

LOCK TABLES `kundengruppe` WRITE;
/*!40000 ALTER TABLE `kundengruppe` DISABLE KEYS */;
INSERT INTO `kundengruppe` VALUES ('A','Gruppe1'),('B','Gruppe2'),('C','Gruppe3'),('D','Gruppe4');
/*!40000 ALTER TABLE `kundengruppe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land`
--

DROP TABLE IF EXISTS `land`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `land` (
  `landnr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `land` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`landnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land`
--

LOCK TABLES `land` WRITE;
/*!40000 ALTER TABLE `land` DISABLE KEYS */;
INSERT INTO `land` VALUES ('048','Österreich'),('049','Deutschland'),('050','Schweden');
/*!40000 ALTER TABLE `land` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieferant`
--

DROP TABLE IF EXISTS `lieferant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieferant` (
  `lieferantennr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `standort` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lieferantennr`),
  KEY `fk_lieferant_standort_idx` (`standort`),
  CONSTRAINT `fk_lieferant_standort` FOREIGN KEY (`standort`) REFERENCES `standort` (`standortsnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieferant`
--

LOCK TABLES `lieferant` WRITE;
/*!40000 ALTER TABLE `lieferant` DISABLE KEYS */;
INSERT INTO `lieferant` VALUES ('0001','HP','00109'),('0002','Microsoft','00110'),('0003','HPE','00109');
/*!40000 ALTER TABLE `lieferant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitarbeiter`
--

DROP TABLE IF EXISTS `mitarbeiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitarbeiter` (
  `mitarbeiternr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `vorname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nachname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `geburtstagsdatum` date DEFAULT NULL,
  `geschlecht` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `einstellung` date DEFAULT NULL,
  `einsatzort` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abteilung` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mitarbeiternr`),
  KEY `fk_mitarbeiter_warenhaus_idx` (`einsatzort`),
  KEY `fk_mitarbeiter_abteilung_idx` (`abteilung`),
  CONSTRAINT `fk_mitarbeiter_abteilung` FOREIGN KEY (`abteilung`) REFERENCES `abteilung` (`abteilungsnummer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mitarbeiter_warenhaus` FOREIGN KEY (`einsatzort`) REFERENCES `warenhaus` (`warenhausnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitarbeiter`
--

LOCK TABLES `mitarbeiter` WRITE;
/*!40000 ALTER TABLE `mitarbeiter` DISABLE KEYS */;
INSERT INTO `mitarbeiter` VALUES ('00000001','Norbert','Bauer','1962-01-10','m','2012-03-12','01','11'),('00000002','Carola','Graf','1985-04-01','w','2013-07-22','02','12'),('00000003','Hubert','Schulze','1960-01-01','m','2014-11-12','01','13'),('00000004','Simone','Stein','1997-03-03','w','2011-04-07','03','13');
/*!40000 ALTER TABLE `mitarbeiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ort`
--

DROP TABLE IF EXISTS `ort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ort` (
  `plz` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `stadt` varchar(139) COLLATE utf8_unicode_ci NOT NULL,
  `land` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`plz`),
  KEY `fk_ort_land_idx` (`land`),
  CONSTRAINT `fk_ort_land` FOREIGN KEY (`land`) REFERENCES `land` (`landnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ort`
--

LOCK TABLES `ort` WRITE;
/*!40000 ALTER TABLE `ort` DISABLE KEYS */;
INSERT INTO `ort` VALUES ('02233','Köln','049'),('1050','Wien','048'),('12623','Berlin','049'),('71034','Böblingen','049'),('80993','München','049'),('90402','Nürnberg','049'),('91052','Erlangen','049'),('S-16493','Kista','050');
/*!40000 ALTER TABLE `ort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `positionsnr` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `positionsmenge` int(3) DEFAULT NULL,
  `positionswert` decimal(10,2) DEFAULT NULL,
  `einzelpreis` decimal(10,2) DEFAULT NULL,
  `einzelpreisrabatt` decimal(10,2) DEFAULT NULL,
  `artikel` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `auftrag` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`positionsnr`),
  KEY `fk_artikel_position_idx` (`artikel`),
  KEY `fk_position_auftrag_idx` (`auftrag`),
  CONSTRAINT `fk_position_artikel` FOREIGN KEY (`artikel`) REFERENCES `artikel` (`artikelnr`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_auftrag` FOREIGN KEY (`auftrag`) REFERENCES `auftrag` (`auftragsnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('1',3,540.00,200.00,10.00,'2','00000001'),('2',5,500.00,100.00,NULL,'4','00000001'),('3',1,380.00,400.00,5.00,'1','00000002'),('4',3,450.00,150.00,NULL,'3','00000002'),('5',1,380.00,400.00,5.00,'1','00000003'),('6',2,360.00,200.00,10.00,'2','00000003'),('7',1,150.00,150.00,NULL,'3','00000003'),('8',4,400.00,100.00,NULL,'4','00000004');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standort`
--

DROP TABLE IF EXISTS `standort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standort` (
  `standortsnr` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ort` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `strasse` varchar(52) COLLATE utf8_unicode_ci NOT NULL,
  `hausnummer` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`standortsnr`),
  KEY `fk_standort_ort_idx` (`ort`),
  CONSTRAINT `fk_standort_ort` FOREIGN KEY (`ort`) REFERENCES `ort` (`plz`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standort`
--

LOCK TABLES `standort` WRITE;
/*!40000 ALTER TABLE `standort` DISABLE KEYS */;
INSERT INTO `standort` VALUES ('00109','71034','Herrenberger Straße','140'),('00110','S-16493','Box','27'),('00111','1050','Schönbrunner Straße','1'),('00112','80993','Triebstraße','11a'),('00113','91052','Lange Zeile','88'),('00901','12623','Warenstraße','111'),('00902','02233','Warenhausstraße','4'),('00903','90402','Warehouse','13');
/*!40000 ALTER TABLE `standort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warenhaus`
--

DROP TABLE IF EXISTS `warenhaus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warenhaus` (
  `warenhausnr` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `standort` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`warenhausnr`),
  KEY `fk_warenhaus_standort_idx` (`standort`),
  CONSTRAINT `fk_warenhaus_standort` FOREIGN KEY (`standort`) REFERENCES `standort` (`standortsnr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warenhaus`
--

LOCK TABLES `warenhaus` WRITE;
/*!40000 ALTER TABLE `warenhaus` DISABLE KEYS */;
INSERT INTO `warenhaus` VALUES ('01','Warenhaus A','00901'),('02','Warenhaus B','00902'),('03','Warenhaus C','00903');
/*!40000 ALTER TABLE `warenhaus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `aufgabe_1`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_1` AS select `lieferant`.`lieferantennr` AS `lieferantennr`,`lieferant`.`name` AS `name`,`lieferant`.`standort` AS `standort` from (`lieferant` left join `artikel` on((`lieferant`.`lieferantennr` = `artikel`.`lieferant`))) where isnull(`artikel`.`lieferant`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_10`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_10` AS select `lieferant`.`lieferantennr` AS `lieferantennr`,`lieferant`.`name` AS `name` from `lieferant` where (`lieferant`.`name` like 'M%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_11`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_11`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_11` AS select distinct `standort`.`standortsnr` AS `standortsnr`,`ort`.`stadt` AS `stadt` from ((((`abteilung` join `mitarbeiter` on((`mitarbeiter`.`abteilung` = `abteilung`.`abteilungsnummer`))) join `warenhaus` on((`warenhaus`.`warenhausnr` = `mitarbeiter`.`einsatzort`))) join `standort` on((`warenhaus`.`standort` = `standort`.`standortsnr`))) join `ort` on((`ort`.`plz` = `standort`.`ort`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_12`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_12`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_12` AS select `kunde`.`kundennr` AS `kundennr`,`kunde`.`vorname` AS `vorname`,`kunde`.`nachname` AS `nachname`,`kunde`.`geschlecht` AS `geschlecht`,`kunde`.`geburtstag` AS `geburtstag`,`kunde`.`kundengrp` AS `kundengrp`,`kunde`.`standort` AS `standort` from `kunde` where ((`kunde`.`vorname` <= 'L') or (`kunde`.`nachname` <= 'L')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_13`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_13`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_13` AS select `artikel`.`artikelnr` AS `artikelnr`,`artikel`.`bezeichnung` AS `bezeichnung`,`artikel`.`farbe` AS `farbe`,`artikel`.`preis` AS `preis`,`artikel`.`gewicht` AS `gewicht`,`artikel`.`einheit` AS `einheit`,`artikel`.`groesse` AS `groesse`,`artikel`.`artikelgrp` AS `artikelgrp`,`artikel`.`lieferant` AS `lieferant` from `artikel` where (`artikel`.`bezeichnung` like '%an%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_14`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_14`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_14` AS select `lieferant`.`lieferantennr` AS `lieferantennr`,`lieferant`.`name` AS `name`,`lieferant`.`standort` AS `standort` from `lieferant` where (`lieferant`.`name` >= 'H') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_15`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_15`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_15` AS select `kunde`.`kundennr` AS `kundennr`,`kunde`.`vorname` AS `vorname`,`kunde`.`nachname` AS `nachname`,`kunde`.`kundengrp` AS `kundengrp`,`standort`.`strasse` AS `strasse`,`standort`.`hausnummer` AS `hausnummer` from (`kunde` join `standort` on((`standort`.`standortsnr` = `kunde`.`standort`))) where (`standort`.`strasse` like '%an%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_16`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_16`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_16` AS select `mitarbeiter`.`mitarbeiternr` AS `mitarbeiternr`,`mitarbeiter`.`vorname` AS `vorname`,`mitarbeiter`.`nachname` AS `nachname` from (`mitarbeiter` left join `auftrag` on((`auftrag`.`mitarbeiter` = `mitarbeiter`.`mitarbeiternr`))) where isnull(`auftrag`.`auftragsnr`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_17`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_17`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_17` AS select `kunde`.`kundennr` AS `kundennr`,`kunde`.`vorname` AS `vorname`,`kunde`.`nachname` AS `nachname` from (`kunde` join `standort` on((`standort`.`standortsnr` = `kunde`.`standort`))) where (`standort`.`ort` between 1000 and 80500) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_18`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_18` AS select `auftrag`.`auftragsnr` AS `auftragsnr` from `auftrag` where (`auftrag`.`auftragsnr` <= '00000002') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_19`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_19`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_19` AS select `auftrag`.`auftragsnr` AS `auftragsnr`,`auftrag`.`auftragsdatum` AS `auftragsdatum`,`auftrag`.`liederdatum` AS `liederdatum`,`auftrag`.`status` AS `status`,`auftrag`.`kunde` AS `kunde`,`auftrag`.`mitarbeiter` AS `mitarbeiter` from (`auftrag` left join `mitarbeiter` on((`mitarbeiter`.`mitarbeiternr` = `auftrag`.`mitarbeiter`))) where isnull(`auftrag`.`mitarbeiter`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_2`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_2` AS select `artikel`.`artikelnr` AS `artikelnr`,`artikel`.`bezeichnung` AS `bezeichnung`,`artikel`.`farbe` AS `farbe`,`artikel`.`preis` AS `preis`,`artikel`.`gewicht` AS `gewicht`,`artikel`.`einheit` AS `einheit`,`artikel`.`groesse` AS `groesse`,`artikel`.`artikelgrp` AS `artikelgrp`,`artikel`.`lieferant` AS `lieferant` from `artikel` where (`artikel`.`preis` >= 200) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_20`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_20` AS select `artikel`.`preis` AS `preis` from `artikel` where (`artikel`.`preis` between 100 and 200) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_21`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_21`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_21` AS select `artikel`.`artikelnr` AS `artikelnr`,`artikel`.`groesse` AS `groesse` from `artikel` where (`artikel`.`groesse` like '%x%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_22`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_22`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_22` AS select `artikel`.`bezeichnung` AS `bezeichnung` from `artikel` where (`artikel`.`bezeichnung` like 'E_%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_23`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_23`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_23` AS select `artikel`.`bezeichnung` AS `bezeichnung` from `artikel` where (`artikel`.`bezeichnung` > 'R') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_24`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_24`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_24` AS select `auftrag`.`auftragsnr` AS `auftragsnr`,`auftrag`.`auftragsdatum` AS `auftragsdatum`,`auftrag`.`liederdatum` AS `liederdatum`,`auftrag`.`status` AS `status`,`auftrag`.`kunde` AS `kunde`,`auftrag`.`mitarbeiter` AS `mitarbeiter` from `auftrag` where (`auftrag`.`auftragsdatum` < '2016-10-09') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_25`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_25` AS select `artikelgruppe`.`bezeichnung` AS `bezeichnung` from `artikelgruppe` where (`artikelgruppe`.`bezeichnung` <> 'Maus') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_26`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_26`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_26` AS select `auftrag`.`auftragsnr` AS `auftragsnr`,`auftrag`.`auftragsdatum` AS `auftragsdatum`,`auftrag`.`liederdatum` AS `liederdatum`,`auftrag`.`status` AS `status`,`auftrag`.`kunde` AS `kunde`,`auftrag`.`mitarbeiter` AS `mitarbeiter` from `auftrag` where (`auftrag`.`status` = 'offen') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_27`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_27`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_27` AS select `artikel`.`farbe` AS `farbe` from `artikel` where (`artikel`.`farbe` <> 'schwarz') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_28`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_28`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_28` AS select `kunde`.`kundennr` AS `kundennr` from `kunde` where (`kunde`.`kundennr` < 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_29`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_29`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_29` AS select distinct `position`.`positionswert` AS `positionswert` from `position` where (`position`.`positionswert` > 180) order by `position`.`positionswert` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_3`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_3` AS select `position`.`positionsnr` AS `positionsnr`,`position`.`positionsmenge` AS `positionsmenge` from `position` where (`position`.`positionsmenge` <= 2) order by `position`.`positionsmenge` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_30`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_30`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_30` AS select `artikel`.`artikelnr` AS `artikelnr`,`artikel`.`bezeichnung` AS `bezeichnung`,`artikel`.`farbe` AS `farbe` from `artikel` where (`artikel`.`farbe` = 'schwarz') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_31`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_31`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_31` AS select `kunde`.`kundennr` AS `kundennr`,`kunde`.`vorname` AS `vorname`,`kunde`.`nachname` AS `nachname`,`kunde`.`geschlecht` AS `geschlecht`,`kunde`.`geburtstag` AS `geburtstag`,`kunde`.`kundengrp` AS `kundengrp`,`kunde`.`standort` AS `standort` from `kunde` where (`kunde`.`geschlecht` = 'm') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_32`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_32`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_32` AS select `auftrag`.`auftragsnr` AS `auftragsnr`,`auftrag`.`auftragsdatum` AS `auftragsdatum`,`auftrag`.`liederdatum` AS `liederdatum`,`auftrag`.`status` AS `status`,`auftrag`.`kunde` AS `kunde`,`auftrag`.`mitarbeiter` AS `mitarbeiter` from `auftrag` where (`auftrag`.`status` <> 'offen') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_33`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_33`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_33` AS select `artikel`.`preis` AS `preis` from `artikel` where (`artikel`.`preis` < 150) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_34`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_34`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_34` AS select `standort`.`ort` AS `ort`,`kunde`.`kundennr` AS `kundennr` from (`standort` left join `kunde` on((`kunde`.`standort` = `standort`.`standortsnr`))) where (`standort`.`ort` > 80500) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_4`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_4` AS select `position`.`positionsnr` AS `positionsnr`,`position`.`positionsmenge` AS `positionsmenge`,`position`.`positionswert` AS `positionswert`,`position`.`einzelpreis` AS `einzelpreis`,`position`.`einzelpreisrabatt` AS `einzelpreisrabatt`,`position`.`artikel` AS `artikel`,`position`.`auftrag` AS `auftrag` from `position` where isnull(`position`.`einzelpreisrabatt`) order by `position`.`positionsmenge` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_5`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_5` AS select `kunde`.`kundennr` AS `kundennr`,`kunde`.`vorname` AS `vorname`,`kunde`.`nachname` AS `nachname`,`kunde`.`geschlecht` AS `geschlecht`,`kunde`.`geburtstag` AS `geburtstag`,`kunde`.`kundengrp` AS `kundengrp`,`kunde`.`standort` AS `standort` from `kunde` where ((`kunde`.`vorname` like '%ei%') or (`kunde`.`nachname` like '%ei%')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_6`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_6` AS select `kunde`.`kundennr` AS `kundennr`,`kunde`.`vorname` AS `vorname`,`kunde`.`nachname` AS `nachname`,`ort`.`stadt` AS `stadt` from ((`kunde` join `standort` on((`kunde`.`standort` = `standort`.`standortsnr`))) join `ort` on((`ort`.`plz` = `standort`.`ort`))) where (`ort`.`stadt` in ('Erlangen','München')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_7`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_7` AS select `auftrag`.`auftragsnr` AS `auftragsnr`,`auftrag`.`auftragsdatum` AS `auftragsdatum` from `auftrag` where (`auftrag`.`auftragsdatum` between '2016-09-01' and '2016-12-31') order by `auftrag`.`auftragsnr` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_8`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_8` AS select `artikel`.`artikelnr` AS `artikelnr`,`artikel`.`gewicht` AS `gewicht` from `artikel` where (`artikel`.`gewicht` >= 40) order by `artikel`.`gewicht` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aufgabe_9`
--

/*!50001 DROP VIEW IF EXISTS `aufgabe_9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aufgabe_9` AS select `kunde`.`vorname` AS `vorname`,`kunde`.`nachname` AS `nachname` from `kunde` where (`kunde`.`kundengrp` is not null) */;
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

-- Dump completed on 2017-03-22 22:57:56
