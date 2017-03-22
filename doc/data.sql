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
-- Dumping data for table `abteilung`
--

LOCK TABLES `abteilung` WRITE;
/*!40000 ALTER TABLE `abteilung` DISABLE KEYS */;
INSERT INTO `abteilung` VALUES ('11','Verkauf',NULL),('12','Verwaltung',NULL),('13','Wartung',NULL),('14','Lager',NULL),('15','Kundendienst',NULL);
/*!40000 ALTER TABLE `abteilung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` VALUES ('1','ProBook','schwarz',400.00,2040.00,'Zoll','13,3','A','0001'),('2','Enterprise_500','wei§',200.00,42200.00,'mm','470x440x160','D','0001'),('3','Scanjet','schwarz',150.00,2200.00,'mm','60x280x460','B','0002'),('4','Touch','schwarz',100.00,0.09,'mm','50x111x36','C','0002'),('5','Officejet','grau',150.00,NULL,'mm','350x448x206','D','0001'),('6','SpaceMouse','blank',200.00,NULL,NULL,NULL,'X','0002');
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `artikelgruppe`
--

LOCK TABLES `artikelgruppe` WRITE;
/*!40000 ALTER TABLE `artikelgruppe` DISABLE KEYS */;
INSERT INTO `artikelgruppe` VALUES ('A','Laptop'),('B','Scanner'),('C','Maus'),('D','Drucker'),('E','Tastatur'),('X','Undefiniert');
/*!40000 ALTER TABLE `artikelgruppe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auftrag`
--

LOCK TABLES `auftrag` WRITE;
/*!40000 ALTER TABLE `auftrag` DISABLE KEYS */;
INSERT INTO `auftrag` VALUES ('00000001','2016-07-11','2016-08-22','offen','0000001',NULL),('00000002','2016-10-05','2015-11-30','gelistet','0000002','00000002'),('00000003','2016-05-22','2016-06-11','gelistet','0000002','00000001'),('00000004','2016-10-09','2016-10-31','geliefert','0000003','00000001');
/*!40000 ALTER TABLE `auftrag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kunde`
--

LOCK TABLES `kunde` WRITE;
/*!40000 ALTER TABLE `kunde` DISABLE KEYS */;
INSERT INTO `kunde` VALUES ('0000001','Susanne','Herrmann','w','1982-02-02','B','00113'),('0000002','Gerd','Schneider','m','1958-01-01',NULL,'00112'),('0000003','Gerhard','Kofler','m','1958-05-05','C','00111');
/*!40000 ALTER TABLE `kunde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kundengruppe`
--

LOCK TABLES `kundengruppe` WRITE;
/*!40000 ALTER TABLE `kundengruppe` DISABLE KEYS */;
INSERT INTO `kundengruppe` VALUES ('A','Gruppe1'),('B','Gruppe2'),('C','Gruppe3'),('D','Gruppe4');
/*!40000 ALTER TABLE `kundengruppe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `land`
--

LOCK TABLES `land` WRITE;
/*!40000 ALTER TABLE `land` DISABLE KEYS */;
INSERT INTO `land` VALUES ('048','Österreich'),('049','Deutschland'),('050','Schweden');
/*!40000 ALTER TABLE `land` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `lieferant`
--

LOCK TABLES `lieferant` WRITE;
/*!40000 ALTER TABLE `lieferant` DISABLE KEYS */;
INSERT INTO `lieferant` VALUES ('0001','HP','00109'),('0002','Microsoft','00110'),('0003','HPE','00109');
/*!40000 ALTER TABLE `lieferant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mitarbeiter`
--

LOCK TABLES `mitarbeiter` WRITE;
/*!40000 ALTER TABLE `mitarbeiter` DISABLE KEYS */;
INSERT INTO `mitarbeiter` VALUES ('00000001','Norbert','Bauer','1962-01-10','m','2012-03-12','01','11'),('00000002','Carola','Graf','1985-04-01','w','2013-07-22','02','12'),('00000003','Hubert','Schulze','1960-01-01','m','2014-11-12','01','13'),('00000004','Simone','Stein','1997-03-03','w','2011-04-07','03','13');
/*!40000 ALTER TABLE `mitarbeiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ort`
--

LOCK TABLES `ort` WRITE;
/*!40000 ALTER TABLE `ort` DISABLE KEYS */;
INSERT INTO `ort` VALUES ('02233','Köln','049'),('1050','Wien','048'),('12623','Berlin','049'),('71034','Böblingen','049'),('80993','München','049'),('90402','Nürnberg','049'),('91052','Erlangen','049'),('S-16493','Kista','050');
/*!40000 ALTER TABLE `ort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('1',3,540.00,200.00,10.00,'2','00000001'),('2',5,500.00,100.00,NULL,'4','00000001'),('3',1,380.00,400.00,5.00,'1','00000002'),('4',3,450.00,150.00,NULL,'3','00000002'),('5',1,380.00,400.00,5.00,'1','00000003'),('6',2,360.00,200.00,10.00,'2','00000003'),('7',1,150.00,150.00,NULL,'3','00000003'),('8',4,400.00,100.00,NULL,'4','00000004');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `standort`
--

LOCK TABLES `standort` WRITE;
/*!40000 ALTER TABLE `standort` DISABLE KEYS */;
INSERT INTO `standort` VALUES ('00109','71034','Herrenberger Straße','140'),('00110','S-16493','Box','27'),('00111','1050','Schönbrunner Straße','1'),('00112','80993','Triebstraße','11a'),('00113','91052','Lange Zeile','88'),('00901','12623','Warenstraße','111'),('00902','02233','Warenhausstraße','4'),('00903','90402','Warehouse','13');
/*!40000 ALTER TABLE `standort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `warenhaus`
--

LOCK TABLES `warenhaus` WRITE;
/*!40000 ALTER TABLE `warenhaus` DISABLE KEYS */;
INSERT INTO `warenhaus` VALUES ('01','Warenhaus A','00901'),('02','Warenhaus B','00902'),('03','Warenhaus C','00903');
/*!40000 ALTER TABLE `warenhaus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22 23:00:44
