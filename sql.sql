-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: boundless
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.3

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
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,105,'Header',0,0,0),(2,105,'Column 1',0,0,0),(3,105,'Column 2',0,0,0),(4,105,'Column 3',0,0,0),(5,105,'Column 4',0,0,0),(6,104,'Primary',0,0,0),(7,104,'Secondary 1',0,0,0),(8,104,'Secondary 2',0,0,0),(9,104,'Secondary 3',0,0,0),(10,104,'Secondary 4',0,0,0),(11,104,'Secondary 5',0,0,0),(12,120,'Main',0,0,0),(13,121,'Main',0,0,0),(14,122,'Main',0,0,0),(15,123,'Main',0,0,0),(16,123,'Sidebar',0,0,0),(17,123,'Thumbnail Image',0,0,0),(18,123,'Header Image',0,0,0),(19,124,'Header Image',0,0,0),(20,125,'Header Image',0,0,0),(21,126,'Header Image',0,0,0),(22,1,'Header',0,0,0),(23,1,'Sidebar',0,0,0),(24,1,'Main',0,0,0),(25,1,'Header Image',0,0,0),(26,127,'Header',0,0,0),(27,127,'Sidebar',0,0,0),(28,127,'Main',0,0,0),(29,127,'Header Image',0,0,0),(30,131,'Header',0,0,0),(31,131,'Sidebar',0,0,0),(32,131,'Main',0,0,0),(33,131,'Header Image',0,0,0),(34,130,'Header',0,0,0),(35,130,'Sidebar',0,0,0),(36,130,'Main',0,0,0),(37,130,'Header Image',0,0,0),(38,129,'Header',0,0,0),(39,129,'Sidebar',0,0,0),(40,129,'Main',0,0,0),(41,129,'Header Image',0,0,0),(42,128,'Main',0,0,0),(43,128,'Sidebar',0,0,0),(44,128,'Header Image',0,0,0),(45,133,'Header Image',0,0,0),(46,133,'Main',0,0,0),(47,133,'Thumbnail Image',0,0,0),(48,133,'Sidebar',0,0,0),(49,132,'Main',0,0,0),(50,132,'Sidebar',0,0,0),(51,132,'Header Image',0,0,0),(52,1,'Site Name',0,0,1),(53,1,'Header Nav',0,0,0),(54,127,'Site Name',0,0,1),(55,127,'Header Nav',0,0,1),(56,128,'Site Name',0,0,1),(57,128,'Header Nav',0,0,1),(58,129,'Site Name',0,0,1),(59,129,'Header Nav',0,0,1),(60,132,'Site Name',0,0,1),(61,132,'Header Nav',0,0,1),(62,133,'Site Name',0,0,1),(63,133,'Header Nav',0,0,1),(64,131,'Site Name',0,0,1),(65,131,'Header Nav',0,0,1),(66,1,'post1',0,0,0),(67,1,'entry1',0,0,0),(68,1,'post2',0,0,0),(69,1,'entry2',0,0,0),(70,1,'footer',0,0,0),(71,1,'post',0,0,0),(72,1,'entry',0,0,0),(73,1,'content',0,0,0),(74,135,'Header Image',0,0,0),(75,135,'Thumbnail Image',0,0,0),(76,135,'Main',0,0,0),(77,118,'Header Nav',0,0,0),(78,118,'Header',0,0,0),(79,136,'Header Image',0,0,0),(80,136,'Thumbnail Image',0,0,0),(81,136,'Main',0,0,0),(82,137,'Header Image',0,0,0),(83,137,'header',0,0,0),(84,137,'content',0,0,0),(85,137,'sidebar',0,0,0),(86,137,'footer',0,0,0),(87,116,'Main',0,0,0),(88,137,'content : Layout 1 : Cell 1',0,0,0),(89,137,'content : Layout 1 : Cell 2',0,0,0),(90,137,'content : Layout 1 : Cell 3',0,0,0),(91,137,'content : Layout 1 : Cell 4',0,0,0),(92,137,'content : Layout 2 : Cell 1',0,0,0),(94,127,'content',0,0,0),(95,127,'footer',0,0,0),(96,128,'header',0,0,0),(97,128,'content',0,0,0),(98,128,'footer',0,0,0),(99,129,'content',0,0,0),(100,129,'footer',0,0,0),(101,139,'Header Image',0,0,0),(102,139,'Thumbnail Image',0,0,0),(103,139,'Main',0,0,0),(104,130,'content',0,0,0),(105,130,'footer',0,0,0),(106,140,'Header Image',0,0,0),(107,140,'header',0,0,0),(108,140,'content',0,0,0),(109,140,'sidebar',0,0,0),(110,140,'footer',0,0,0),(111,141,'Main',0,0,0),(112,142,'Header Image',0,0,0),(113,142,'header',0,0,0),(114,142,'content',0,0,0),(115,142,'sidebar',0,0,0),(116,142,'footer',0,0,0),(117,1,'navigation',0,0,0),(118,1,'header-wrapper',0,0,0),(119,1,'galery-wrapper',0,0,0),(120,1,'gallery-nav',0,0,0),(121,1,'subheader1',0,0,0),(122,1,'column-455 m-right-70 m-top-50',0,0,0),(123,1,'column-455  m-top-50',0,0,0),(124,1,'subheader2',0,0,0),(125,1,'column-640  m-top-50',0,0,0),(126,1,'column-300 m-left-40 m-top-50',0,0,0),(127,1,'column-455 m-right-70 m-top-70',0,0,0),(128,1,'column-455 m-top-70',0,0,0),(129,1,'subheader3',0,0,0),(130,1,'column-640 m-top-50',0,0,0),(131,1,'column-300_2 m-left-40 m-top-50',0,0,0),(132,1,'showcase-sub-container',0,0,0),(133,1,'subheader4',0,0,0),(134,1,'column-640_4 m-top-50',0,0,0),(135,1,'column-300_4 m-left-40 m-top-50',0,0,0),(136,1,'column-300_4 m-left-55 m-top-40',0,0,0),(137,1,'column-300_4 m-top-55 m-right-40',0,0,0),(138,1,'column-300_4 m-top-55',0,0,0),(139,1,'subheader6',0,0,0),(140,1,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0),(141,1,'column-525_6 m-top-50',0,0,0),(142,1,'footer_logo',0,0,0),(143,1,'column-300_4_2 m-top-55 m-right-40',0,0,0),(144,1,'m-bottom-40',0,0,0),(145,1,'column-455 m-right-70 m-top-70 list1',0,0,0),(146,1,'column-455 m-right-70 m-top-70 list2',0,0,0),(147,1,'column-455 m-right-70 m-top-70 list3',0,0,0),(148,1,'column-455 m-right-70 m-top-70 list4',0,0,0),(149,1,'pic-frame rounded 1',0,0,0),(150,1,'pic-frame rounded 2',0,0,0),(151,1,'pic-frame rounded 3',0,0,0),(152,1,'pic-frame rounded 4',0,0,0),(153,1,'pic-frame rounded 5',0,0,0),(154,1,'pic-frame rounded 6',0,0,0),(155,1,'pic-frame rounded 7',0,0,0),(156,1,'pic-frame rounded 8',0,0,0),(157,1,'pic-frame rounded 9',0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0),(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0),(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0),(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0),(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0),(12,'width','Width',1,1,0,0,0,1,6,3,0),(13,'height','Height',1,1,0,0,0,1,6,3,0),(14,'tags','Tags',1,1,0,0,0,1,8,1,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(5,2,1),(6,2,2),(7,1,4),(8,2,3),(9,2,4);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'Page Header','page_header',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2012-11-27 19:50:18',1,2),(2,4,'2012-11-27 19:50:18',1,2),(3,3,'2012-11-27 19:50:19',1,2),(4,4,'2012-11-27 19:50:19',1,2),(5,3,'2012-11-27 19:50:19',1,2),(6,4,'2012-11-27 19:50:19',1,2),(7,3,'2012-11-27 19:50:19',1,2),(8,3,'2012-11-27 19:50:19',1,2),(9,4,'2012-11-27 19:50:20',1,2),(10,3,'2012-11-27 19:50:20',1,2),(11,4,'2012-11-27 19:50:20',1,2),(12,3,'2012-11-27 19:50:20',1,2),(13,4,'2012-11-27 19:50:20',1,2),(14,3,'2012-11-27 19:50:20',1,2),(15,4,'2012-11-27 19:50:21',1,2),(16,3,'2012-11-27 19:50:21',1,2),(17,4,'2012-11-27 19:50:21',1,2),(18,3,'2012-11-27 19:50:21',1,2),(19,4,'2012-11-27 19:50:21',1,2),(20,5,'2012-11-27 19:50:21',1,3),(21,3,'2012-11-27 19:50:22',1,2),(22,4,'2012-11-27 19:50:22',1,2),(23,3,'2012-11-27 19:50:22',1,2),(24,3,'2012-11-27 19:50:22',1,2),(25,4,'2012-11-27 19:50:22',1,2),(26,3,'2012-11-27 19:50:22',1,2),(27,4,'2012-11-27 19:50:22',1,2),(28,3,'2012-11-27 19:50:23',1,2),(29,4,'2012-11-27 19:50:23',1,2),(30,3,'2012-11-27 19:50:23',1,2),(31,5,'2012-11-27 19:50:23',1,3),(32,4,'2012-11-27 19:50:23',1,2),(33,3,'2012-11-27 19:50:23',1,2),(34,5,'2012-11-27 19:50:24',1,3),(35,4,'2012-11-27 19:50:24',1,2),(36,3,'2012-11-27 19:50:25',1,2),(37,4,'2012-11-27 19:50:25',1,2),(38,3,'2012-11-27 19:50:25',1,2),(39,3,'2012-11-27 19:50:25',1,2),(40,4,'2012-11-27 19:50:25',1,2),(41,3,'2012-11-27 19:50:25',1,2),(42,4,'2012-11-27 19:50:25',1,2),(43,3,'2012-11-27 19:50:26',1,2),(44,4,'2012-11-27 19:50:26',1,2),(45,3,'2012-11-27 19:50:26',1,2),(46,4,'2012-11-27 19:50:26',1,2),(47,3,'2012-11-27 19:50:26',1,2),(48,4,'2012-11-27 19:50:26',1,2),(49,3,'2012-11-27 19:50:27',1,2),(50,3,'2012-11-27 19:50:27',1,2),(51,3,'2012-11-27 19:50:27',1,2),(52,3,'2012-11-27 19:50:27',1,2),(53,4,'2012-11-27 19:50:27',1,2),(54,3,'2012-11-27 19:50:27',1,2),(55,4,'2012-11-27 19:50:28',1,2),(56,3,'2012-11-27 19:50:28',1,2),(57,4,'2012-11-27 19:50:28',1,2),(58,3,'2012-11-27 19:50:28',1,2),(59,4,'2012-11-27 19:50:28',1,2),(60,4,'2012-11-27 19:50:28',1,2),(61,3,'2012-11-27 19:50:28',1,2),(62,4,'2012-11-27 19:50:29',1,2),(63,4,'2012-11-27 19:50:29',1,2),(64,5,'2012-11-27 19:50:29',1,3),(65,8,'2012-11-27 19:50:29',1,3),(66,3,'2012-11-27 19:50:29',1,2),(67,4,'2012-11-27 19:50:29',1,2),(68,5,'2012-11-27 19:50:30',1,3),(69,5,'2012-11-27 19:50:30',1,3),(70,3,'2012-11-27 19:50:30',1,2),(71,3,'2012-11-27 19:50:30',1,2),(72,3,'2012-11-27 19:50:30',1,2),(73,3,'2012-11-27 19:50:30',1,2),(74,3,'2012-11-27 19:50:30',1,2),(75,5,'2012-11-27 19:50:31',1,3),(76,3,'2012-11-27 19:50:31',1,2),(77,3,'2012-11-27 19:50:31',1,2),(78,3,'2012-11-27 19:50:31',1,2),(79,3,'2012-11-27 19:50:31',1,2),(80,3,'2012-11-27 19:50:31',1,2),(81,3,'2012-11-27 19:50:32',1,2),(82,3,'2012-11-27 19:50:33',1,2),(83,3,'2012-11-27 19:50:33',1,2),(84,3,'2012-11-27 19:50:33',1,2),(85,3,'2012-11-27 19:50:33',1,2),(86,3,'2012-11-27 19:50:33',1,2),(87,3,'2012-11-27 19:50:33',1,2),(88,3,'2012-11-27 19:50:34',1,2),(89,3,'2012-11-27 19:50:34',1,2),(90,3,'2012-11-27 19:50:34',1,2),(91,3,'2012-11-27 19:50:34',1,2),(92,3,'2012-11-27 19:50:34',1,2),(93,3,'2012-11-27 19:50:34',1,2),(94,3,'2012-11-27 19:50:34',1,2),(95,3,'2012-11-27 19:50:35',1,2),(96,3,'2012-11-27 19:50:35',1,2),(97,3,'2012-11-27 19:50:35',1,2),(98,3,'2012-11-27 19:50:36',1,2),(99,3,'2012-11-27 19:50:36',1,2),(100,3,'2012-11-27 19:50:36',1,2),(101,3,'2012-11-27 19:50:36',1,2),(102,3,'2012-11-27 19:50:36',1,2),(103,3,'2012-11-27 19:50:36',1,2),(104,3,'2012-11-27 19:50:36',1,2),(105,3,'2012-11-27 19:50:37',1,2),(106,3,'2012-11-27 19:50:37',1,2),(107,8,'2012-11-27 19:50:37',1,3),(108,3,'2012-11-27 19:50:37',1,2),(109,3,'2012-11-27 19:50:37',1,2),(110,3,'2012-11-27 19:50:37',1,2),(111,3,'2012-11-27 19:50:37',1,2),(112,3,'2012-11-27 19:50:37',1,2),(113,3,'2012-11-27 19:50:38',1,2),(114,3,'2012-11-27 19:50:38',1,2),(115,3,'2012-11-27 19:50:38',1,2),(116,5,'2012-11-27 19:50:39',1,3),(117,5,'2012-11-27 19:50:42',1,3),(118,8,'2012-11-27 19:50:42',1,3),(119,12,'2012-11-27 19:50:56',1,6),(120,13,'2012-11-27 19:50:56',1,6),(121,12,'2012-11-27 19:50:57',1,6),(122,13,'2012-11-27 19:50:58',1,6),(123,12,'2012-11-27 19:50:59',1,6),(124,13,'2012-11-27 19:51:00',1,6),(125,12,'2012-11-27 19:51:01',1,6),(126,13,'2012-11-27 19:51:01',1,6),(127,12,'2012-11-27 19:51:03',1,6),(128,13,'2012-11-27 19:51:04',1,6),(129,12,'2012-11-27 19:51:05',1,6),(130,13,'2012-11-27 19:51:05',1,6),(131,12,'2012-11-27 19:51:06',1,6),(132,13,'2012-11-27 19:51:06',1,6),(133,12,'2012-11-27 19:51:07',1,6),(134,13,'2012-11-27 19:51:08',1,6),(135,14,'2012-11-27 19:51:28',1,8),(136,14,'2012-11-27 19:51:31',1,8),(137,5,'2012-11-27 19:51:32',1,3),(138,6,'2012-11-27 19:51:32',1,3),(139,8,'2012-11-27 19:51:32',1,3),(140,14,'2012-11-27 19:51:33',1,8),(141,14,'2012-11-28 19:42:32',1,8),(142,14,'2012-11-28 19:46:52',1,8),(143,12,'2012-11-28 20:11:54',1,6),(144,13,'2012-11-28 20:11:54',1,6),(145,12,'2012-11-28 20:17:49',1,6),(146,13,'2012-11-28 20:17:49',1,6),(147,12,'2012-11-28 20:29:29',1,6),(148,13,'2012-11-28 20:29:29',1,6),(149,14,'2012-11-29 02:02:30',1,8),(150,12,'2012-11-29 18:48:26',1,6),(151,13,'2012-11-29 18:48:27',1,6),(152,12,'2012-11-29 18:48:37',1,6),(153,13,'2012-11-29 18:48:38',1,6),(154,12,'2012-11-29 18:48:48',1,6),(155,13,'2012-11-29 18:48:48',1,6),(156,12,'2012-11-29 18:49:03',1,6),(157,13,'2012-11-29 18:49:03',1,6),(158,12,'2012-11-30 20:54:19',1,6),(159,13,'2012-11-30 20:54:19',1,6),(160,12,'2012-11-30 20:54:39',1,6),(161,13,'2012-11-30 20:54:40',1,6),(162,10,'2012-12-07 13:35:51',1,3),(163,11,'2012-12-07 13:35:51',1,3),(164,10,'2012-12-07 13:37:02',1,3),(165,11,'2012-12-07 13:37:02',1,3),(166,12,'2012-12-10 11:23:00',2,6),(167,13,'2012-12-10 11:23:01',2,6),(168,12,'2012-12-10 11:59:08',2,6),(169,13,'2012-12-10 11:59:08',2,6),(170,12,'2012-12-10 12:02:18',2,6),(171,13,'2012-12-10 12:02:18',2,6),(172,12,'2012-12-10 12:22:11',2,6),(173,13,'2012-12-10 12:22:11',2,6),(174,12,'2012-12-10 12:33:44',2,6),(175,13,'2012-12-10 12:33:45',2,6),(176,12,'2012-12-10 12:40:50',2,6),(177,13,'2012-12-10 12:40:50',2,6),(178,12,'2012-12-10 15:45:01',2,6),(179,13,'2012-12-10 15:45:01',2,6),(180,12,'2012-12-10 15:50:36',2,6),(181,13,'2012-12-10 15:50:36',2,6),(182,12,'2012-12-10 16:29:43',2,6),(183,13,'2012-12-10 16:29:43',2,6),(184,12,'2012-12-10 16:29:53',2,6),(185,13,'2012-12-10 16:29:54',2,6),(186,12,'2012-12-10 16:42:07',2,6),(187,13,'2012-12-10 16:42:07',2,6),(188,12,'2012-12-10 16:42:38',2,6),(189,13,'2012-12-10 16:42:38',2,6),(190,12,'2012-12-10 16:42:45',2,6),(191,13,'2012-12-10 16:42:45',2,6),(192,12,'2012-12-10 16:55:28',2,6),(193,13,'2012-12-10 16:55:28',2,6),(194,12,'2012-12-10 16:55:36',2,6),(195,13,'2012-12-10 16:55:37',2,6);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,53,24,'DUPLICATE'),(2,54,25,'DUPLICATE'),(3,55,26,'DUPLICATE'),(4,56,54,'DUPLICATE'),(5,58,53,'DUPLICATE'),(7,67,66,'DUPLICATE'),(8,68,56,'DUPLICATE'),(9,69,55,'DUPLICATE'),(10,70,16,'DUPLICATE'),(11,71,15,'DUPLICATE'),(12,72,13,'DUPLICATE'),(13,73,16,'DUPLICATE'),(14,74,15,'DUPLICATE'),(15,75,13,'DUPLICATE'),(16,77,68,'DUPLICATE'),(17,78,77,'DUPLICATE'),(18,79,78,'DUPLICATE'),(19,80,76,'DUPLICATE'),(20,90,89,'DUPLICATE'),(21,91,90,'DUPLICATE'),(22,93,92,'DUPLICATE'),(23,101,100,'DUPLICATE'),(24,102,101,'DUPLICATE'),(25,104,69,'DUPLICATE'),(26,105,91,'DUPLICATE'),(27,108,107,'DUPLICATE'),(28,109,105,'DUPLICATE'),(29,110,104,'DUPLICATE'),(30,111,109,'DUPLICATE'),(31,112,16,'DUPLICATE'),(32,113,15,'DUPLICATE'),(33,114,13,'DUPLICATE'),(34,115,110,'DUPLICATE'),(35,116,115,'DUPLICATE'),(36,123,111,'DUPLICATE'),(37,124,119,'DUPLICATE'),(38,125,120,'DUPLICATE'),(39,131,130,'DUPLICATE'),(40,132,131,'DUPLICATE'),(41,136,135,'DUPLICATE'),(42,149,148,'DUPLICATE'),(43,161,149,'DUPLICATE'),(44,162,161,'DUPLICATE'),(45,163,162,'DUPLICATE'),(46,171,133,'DUPLICATE'),(47,172,171,'DUPLICATE'),(48,173,172,'DUPLICATE'),(49,174,173,'DUPLICATE'),(50,175,174,'DUPLICATE'),(51,176,175,'DUPLICATE'),(53,178,164,'DUPLICATE'),(54,179,166,'DUPLICATE'),(55,180,167,'DUPLICATE'),(56,181,168,'DUPLICATE'),(57,182,176,'DUPLICATE'),(58,183,182,'DUPLICATE'),(59,185,184,'DUPLICATE'),(60,186,185,'DUPLICATE'),(61,189,188,'DUPLICATE'),(62,190,178,'DUPLICATE'),(63,191,190,'DUPLICATE'),(64,192,191,'DUPLICATE'),(65,193,192,'DUPLICATE'),(66,194,181,'DUPLICATE'),(67,195,194,'DUPLICATE'),(68,196,193,'DUPLICATE'),(69,197,196,'DUPLICATE'),(70,198,197,'DUPLICATE'),(71,199,198,'DUPLICATE'),(72,200,199,'DUPLICATE'),(73,201,195,'DUPLICATE'),(74,202,200,'DUPLICATE'),(75,203,179,'DUPLICATE'),(76,204,180,'DUPLICATE'),(77,205,201,'DUPLICATE'),(78,206,204,'DUPLICATE'),(79,207,142,'DUPLICATE'),(80,208,202,'DUPLICATE'),(81,209,205,'DUPLICATE'),(82,210,208,'DUPLICATE'),(83,211,210,'DUPLICATE'),(84,212,203,'DUPLICATE'),(85,213,143,'DUPLICATE'),(86,214,156,'DUPLICATE'),(87,215,157,'DUPLICATE'),(88,216,158,'DUPLICATE'),(89,217,153,'DUPLICATE'),(90,218,154,'DUPLICATE'),(91,219,155,'DUPLICATE'),(92,220,217,'DUPLICATE'),(93,221,151,'DUPLICATE'),(94,222,152,'DUPLICATE'),(95,223,211,'DUPLICATE'),(96,224,212,'DUPLICATE'),(97,225,206,'DUPLICATE'),(98,226,209,'DUPLICATE'),(99,227,222,'DUPLICATE'),(100,228,138,'DUPLICATE'),(101,229,228,'DUPLICATE'),(102,230,139,'DUPLICATE'),(103,231,230,'DUPLICATE'),(104,232,220,'DUPLICATE'),(105,233,218,'DUPLICATE'),(106,234,219,'DUPLICATE'),(107,235,231,'DUPLICATE'),(108,236,215,'DUPLICATE'),(109,237,216,'DUPLICATE'),(110,238,170,'DUPLICATE'),(111,239,169,'DUPLICATE'),(112,240,239,'DUPLICATE'),(113,241,240,'DUPLICATE'),(114,242,241,'DUPLICATE'),(115,243,238,'DUPLICATE'),(116,245,244,'DUPLICATE'),(117,251,229,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,1,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,2,600,465,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,3,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,4,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,5,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,6,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,7,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,8,400,200,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,9,350,480,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,10,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,11,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,12,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,13,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,14,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,15,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,16,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,17,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,18,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,19,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,20,400,210,0),(28,'date_archive','Blog Date Archive','Displays month archive for pages',1,0,0,0,21,500,350,0),(29,'asmiller_gallery','Galleria Image Gallery','Display a beautiful image gallery (Galleria plugin)',1,0,0,0,22,550,400,1);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2012-11-27 19:50:38','2012-11-27 19:50:38',NULL,'1',9,1),(2,'','2012-11-27 19:50:38','2012-11-27 19:50:38',NULL,'1',9,1),(3,'','2012-11-27 19:50:38','2012-11-27 19:50:39',NULL,'1',9,1),(4,'','2012-11-27 19:50:39','2012-11-27 19:50:39',NULL,'1',9,1),(5,'','2012-11-27 19:50:39','2012-11-27 19:50:39',NULL,'1',9,1),(6,'','2012-11-27 19:50:40','2012-11-27 19:50:40',NULL,'1',6,1),(7,'','2012-11-27 19:50:40','2012-11-27 19:50:40',NULL,'1',7,1),(8,'','2012-11-27 19:50:40','2012-11-27 19:50:41',NULL,'1',5,1),(9,'','2012-11-27 19:50:41','2012-11-27 19:50:41',NULL,'1',5,1),(10,'','2012-11-27 19:50:41','2012-11-27 19:50:42',NULL,'1',4,1),(11,'','2012-11-27 19:50:42','2012-11-27 19:50:42',NULL,'1',3,1),(12,'','2012-11-27 19:50:42','2012-11-27 19:50:42',NULL,'1',5,1),(13,'Blog Content','2012-11-27 19:51:17','2012-11-27 19:51:18',NULL,'1',9,1),(14,'','2012-11-27 19:51:18','2012-11-27 19:51:18',NULL,'1',25,1),(15,'Thumbnail Image','2012-11-27 19:51:18','2012-11-27 19:51:18',NULL,'1',18,1),(16,'Header Image','2012-11-27 19:51:18','2012-11-27 19:51:18',NULL,'1',18,1),(17,'','2012-11-27 19:51:19','2012-11-27 19:51:19',NULL,'1',18,1),(18,'','2012-11-27 19:51:19','2012-11-27 19:51:20',NULL,'1',18,1),(19,'','2012-11-27 19:51:20','2012-11-27 19:51:20',NULL,'1',18,1),(20,'','2012-11-27 19:51:20','2012-11-27 19:51:20',NULL,'1',8,1),(21,'','2012-11-27 19:51:20','2012-11-27 19:51:20',NULL,'1',9,1),(22,'','2012-11-27 19:51:20','2012-11-27 19:51:20',NULL,'1',8,1),(23,'','2012-11-27 19:51:20','2012-11-27 19:51:20',NULL,'1',9,1),(24,'','2012-11-27 19:51:20','2012-11-27 19:51:21',NULL,'1',9,1),(25,'','2012-11-27 19:51:21','2012-11-27 19:51:21',NULL,'1',9,1),(26,'','2012-11-27 19:51:21','2012-11-27 19:51:21',NULL,'1',9,1),(27,'','2012-11-27 19:51:21','2012-11-27 19:51:22',NULL,'1',9,1),(28,'','2012-11-27 19:51:22','2012-11-27 19:51:22',NULL,'1',18,1),(29,'','2012-11-27 19:51:22','2012-11-27 19:51:22',NULL,'1',9,1),(30,'','2012-11-27 19:51:22','2012-11-27 19:51:23',NULL,'1',2,1),(31,'','2012-11-27 19:51:23','2012-11-27 19:51:24',NULL,'1',9,1),(32,'','2012-11-27 19:51:24','2012-11-27 19:51:24',NULL,'1',9,1),(33,'','2012-11-27 19:51:24','2012-11-27 19:51:24',NULL,'1',2,1),(34,'','2012-11-27 19:51:24','2012-11-27 19:51:25',NULL,'1',16,1),(35,'','2012-11-27 19:51:25','2012-11-27 19:51:25',NULL,'1',9,1),(36,'','2012-11-27 19:51:25','2012-11-27 19:51:25',NULL,'1',2,1),(37,'','2012-11-27 19:51:25','2012-11-27 19:51:26',NULL,'1',9,1),(38,'','2012-11-27 19:51:26','2012-11-27 19:51:26',NULL,'1',14,1),(39,'','2012-11-27 19:51:26','2012-11-27 19:51:26',NULL,'1',9,1),(40,'','2012-11-27 19:51:26','2012-11-27 19:51:27',NULL,'1',9,1),(41,'','2012-11-27 19:51:27','2012-11-27 19:51:27',NULL,'1',8,1),(42,'','2012-11-27 19:51:27','2012-11-27 19:51:27',NULL,'1',22,1),(43,'','2012-11-27 19:51:27','2012-11-27 19:51:27','blog_index_thumbnail.php','1',20,1),(44,'','2012-11-27 19:51:27','2012-11-27 19:51:28',NULL,'1',9,1),(45,'','2012-11-27 19:51:28','2012-11-27 19:51:28',NULL,'1',25,1),(46,'','2012-11-27 19:51:28','2012-11-27 19:51:28',NULL,'1',28,1),(47,'Header Image','2012-11-27 19:51:28','2012-11-27 19:51:29',NULL,'1',18,1),(48,'Blog Content','2012-11-27 19:51:29','2012-11-27 19:51:30',NULL,'1',9,1),(49,'Thumbnail Image','2012-11-27 19:51:30','2012-11-27 19:51:31',NULL,'1',18,1),(50,'','2012-11-27 19:51:31','2012-11-27 19:51:31',NULL,'1',22,1),(51,'','2012-11-27 19:51:31','2012-11-27 19:51:32',NULL,'1',25,1),(52,'','2012-11-27 19:51:32','2012-11-27 19:51:32',NULL,'1',28,1),(53,'','2012-11-28 02:09:20','2012-11-28 02:09:20',NULL,'1',9,1),(54,'','2012-11-28 02:17:31','2012-11-28 02:17:51',NULL,'1',9,1),(55,'','2012-11-28 02:19:47','2012-11-28 02:24:34',NULL,'1',9,1),(56,'','2012-11-28 02:21:04','2012-11-28 02:24:18',NULL,'1',9,1),(58,'','2012-11-28 02:33:27','2012-11-28 02:33:27',NULL,'1',9,1),(59,NULL,'2012-11-28 02:34:25','2012-11-28 02:34:25',NULL,'1',17,1),(60,NULL,'2012-11-28 18:51:58','2012-11-28 18:51:58',NULL,'1',17,1),(62,NULL,'2012-11-28 18:56:39','2012-11-28 18:56:39',NULL,'1',9,1),(64,NULL,'2012-11-28 19:04:00','2012-11-28 19:04:00',NULL,'1',9,1),(65,NULL,'2012-11-28 19:04:15','2012-11-28 19:04:15',NULL,'1',9,1),(66,NULL,'2012-11-28 19:06:01','2012-11-28 19:06:12',NULL,'1',9,1),(67,NULL,'2012-11-28 19:10:49','2012-11-28 19:10:49',NULL,'1',9,1),(68,'','2012-11-28 19:22:41','2012-11-28 19:30:12',NULL,'1',9,1),(69,'','2012-11-28 19:27:03','2012-11-28 19:27:22',NULL,'1',9,1),(70,'Header Image','2012-11-28 19:42:20','2012-11-28 19:42:39',NULL,'1',18,1),(71,'Thumbnail Image','2012-11-28 19:42:20','2012-11-28 19:42:39',NULL,'1',18,1),(72,'Blog Content','2012-11-28 19:42:20','2012-11-28 19:42:39',NULL,'1',9,1),(73,'Header Image','2012-11-28 19:46:40','2012-11-28 19:47:14',NULL,'1',18,1),(74,'Thumbnail Image','2012-11-28 19:46:40','2012-11-28 19:47:14',NULL,'1',18,1),(75,'Blog Content','2012-11-28 19:46:41','2012-11-28 19:47:15',NULL,'1',9,1),(76,NULL,'2012-11-28 19:53:12','2012-11-28 19:53:32',NULL,'1',9,1),(77,'','2012-11-28 19:55:34','2012-11-28 19:55:34',NULL,'1',9,1),(78,'','2012-11-28 19:56:32','2012-11-28 19:56:33',NULL,'1',9,1),(79,'','2012-11-28 19:58:39','2012-11-28 19:58:40',NULL,'1',9,1),(80,NULL,'2012-11-28 20:04:53','2012-11-28 20:04:53',NULL,'1',9,1),(84,NULL,'2012-11-28 20:18:02','2012-11-28 20:20:46',NULL,'1',18,1),(85,NULL,'2012-11-28 20:21:37','2012-11-28 20:24:41',NULL,'1',9,1),(86,NULL,'2012-11-28 20:27:34','2012-11-28 20:30:30',NULL,'1',23,1),(88,NULL,'2012-11-28 20:33:32','2012-11-28 20:33:32',NULL,'1',9,1),(89,NULL,'2012-11-28 20:35:36','2012-11-28 20:36:01',NULL,'1',9,1),(90,NULL,'2012-11-28 20:38:48','2012-11-28 20:38:48',NULL,'1',9,1),(91,NULL,'2012-11-28 20:39:50','2012-11-28 20:40:11',NULL,'1',9,1),(92,NULL,'2012-11-28 23:52:46','2012-11-28 23:53:34',NULL,'1',14,1),(93,NULL,'2012-11-28 23:54:41','2012-11-28 23:56:23',NULL,'1',14,1),(94,NULL,'2012-11-29 00:10:35','2012-11-29 00:11:01',NULL,'1',14,1),(100,NULL,'2012-11-29 01:16:39','2012-11-29 01:16:39',NULL,'1',10,1),(101,NULL,'2012-11-29 01:18:26','2012-11-29 01:19:46',NULL,'1',10,1),(102,NULL,'2012-11-29 01:20:45','2012-11-29 01:20:46',NULL,'1',10,1),(104,'','2012-11-29 01:27:38','2012-11-29 01:27:38',NULL,'1',9,1),(105,NULL,'2012-11-29 01:29:11','2012-11-29 01:29:11',NULL,'1',9,1),(106,NULL,'2012-11-29 01:32:22','2012-11-29 01:32:22',NULL,'1',2,1),(107,NULL,'2012-11-29 01:48:11','2012-11-29 01:48:11',NULL,'1',29,1),(108,NULL,'2012-11-29 01:50:53','2012-11-29 01:50:53',NULL,'1',29,1),(109,NULL,'2012-11-29 01:54:48','2012-11-29 01:54:48',NULL,'1',9,1),(110,'','2012-11-29 01:59:05','2012-11-29 01:59:06',NULL,'1',9,1),(111,NULL,'2012-11-29 02:00:36','2012-11-29 02:00:36',NULL,'1',9,1),(112,'Header Image','2012-11-29 02:02:16','2012-11-29 02:02:36',NULL,'1',18,1),(113,'Thumbnail Image','2012-11-29 02:02:17','2012-11-29 02:02:36',NULL,'1',18,1),(114,'Blog Content','2012-11-29 02:02:18','2012-11-29 02:02:36',NULL,'1',9,1),(115,'','2012-11-29 02:11:29','2012-11-29 02:11:29',NULL,'1',9,1),(116,'','2012-11-29 02:12:47','2012-11-29 02:12:48',NULL,'1',9,1),(117,NULL,'2012-11-29 02:14:15','2012-11-29 02:14:15',NULL,'1',9,1),(118,NULL,'2012-11-29 02:15:01','2012-11-29 02:15:01',NULL,'1',15,1),(119,NULL,'2012-11-29 02:26:45','2012-11-29 02:26:45',NULL,'1',9,1),(120,NULL,'2012-11-29 02:27:20','2012-11-29 02:27:20',NULL,'1',9,1),(122,NULL,'2012-11-29 02:29:03','2012-11-29 02:29:03',NULL,'1',2,1),(123,NULL,'2012-11-29 18:30:59','2012-11-29 18:31:00',NULL,'1',9,1),(124,NULL,'2012-11-29 18:34:06','2012-11-29 18:37:56',NULL,'1',9,1),(125,NULL,'2012-11-29 18:35:15','2012-11-29 18:35:15',NULL,'1',9,1),(126,NULL,'2012-11-29 18:36:03','2012-11-29 18:36:03',NULL,'1',2,1),(127,NULL,'2012-11-29 18:39:52','2012-11-29 18:39:52',NULL,'1',2,1),(128,NULL,'2012-11-29 18:45:12','2012-11-29 18:45:12',NULL,'1',2,1),(129,NULL,'2012-11-29 18:49:45','2012-11-29 18:49:45',NULL,'1',23,1),(130,NULL,'2012-11-29 21:55:07','2012-11-29 21:55:07',NULL,'1',9,1),(131,NULL,'2012-11-29 22:00:07','2012-11-29 22:04:07',NULL,'1',9,1),(132,NULL,'2012-11-29 23:01:23','2012-11-29 23:01:23',NULL,'1',9,1),(133,NULL,'2012-11-29 23:03:35','2012-11-29 23:03:35',NULL,'1',9,1),(134,NULL,'2012-11-29 23:04:31','2012-11-29 23:05:18',NULL,'1',9,1),(135,NULL,'2012-11-29 23:29:41','2012-11-29 23:29:41',NULL,'1',9,1),(136,NULL,'2012-11-29 23:30:41','2012-11-29 23:30:41',NULL,'1',9,1),(137,NULL,'2012-11-29 23:31:00','2012-11-29 23:31:00',NULL,'1',9,1),(138,NULL,'2012-11-29 23:33:54','2012-11-29 23:33:54',NULL,'1',9,1),(139,NULL,'2012-11-29 23:35:13','2012-11-29 23:35:13',NULL,'1',9,1),(140,NULL,'2012-11-29 23:39:57','2012-11-29 23:39:57',NULL,'1',9,1),(141,NULL,'2012-11-29 23:40:26','2012-11-29 23:40:26',NULL,'1',9,1),(142,NULL,'2012-11-29 23:40:53','2012-11-29 23:40:53',NULL,'1',9,1),(143,NULL,'2012-11-29 23:41:39','2012-11-29 23:41:39',NULL,'1',9,1),(144,NULL,'2012-11-29 23:42:46','2012-11-29 23:42:46',NULL,'1',9,1),(145,NULL,'2012-11-29 23:43:35','2012-11-29 23:43:35',NULL,'1',9,1),(146,NULL,'2012-11-29 23:44:07','2012-11-29 23:44:07',NULL,'1',9,1),(147,NULL,'2012-11-29 23:44:30','2012-11-29 23:44:30',NULL,'1',9,1),(148,NULL,'2012-11-29 23:47:18','2012-11-29 23:47:18',NULL,'1',9,1),(149,NULL,'2012-11-29 23:55:55','2012-11-29 23:55:56',NULL,'1',9,1),(150,NULL,'2012-11-29 23:57:14','2012-11-29 23:57:14',NULL,'1',9,1),(151,NULL,'2012-11-29 23:57:41','2012-11-29 23:57:41',NULL,'1',9,1),(152,NULL,'2012-11-29 23:58:03','2012-11-29 23:58:03',NULL,'1',9,1),(153,NULL,'2012-11-29 23:59:12','2012-11-29 23:59:12',NULL,'1',9,1),(154,NULL,'2012-11-30 00:04:01','2012-11-30 00:04:01',NULL,'1',9,1),(155,NULL,'2012-11-30 00:04:55','2012-11-30 00:04:55',NULL,'1',9,1),(156,NULL,'2012-11-30 00:05:42','2012-11-30 00:05:42',NULL,'1',9,1),(157,NULL,'2012-11-30 00:06:42','2012-11-30 00:06:42',NULL,'1',9,1),(158,NULL,'2012-11-30 00:07:28','2012-11-30 00:07:28',NULL,'1',9,1),(159,NULL,'2012-11-30 00:08:06','2012-11-30 00:08:06',NULL,'1',9,1),(160,NULL,'2012-11-30 00:13:12','2012-11-30 00:13:12',NULL,'1',9,1),(161,NULL,'2012-11-30 00:15:36','2012-11-30 00:15:37',NULL,'1',9,1),(162,NULL,'2012-11-30 00:17:26','2012-11-30 00:17:26',NULL,'1',9,1),(163,NULL,'2012-11-30 00:27:39','2012-11-30 00:27:39',NULL,'1',9,1),(164,NULL,'2012-11-30 00:40:01','2012-11-30 00:40:01',NULL,'1',9,1),(166,NULL,'2012-11-30 00:42:43','2012-11-30 00:42:43',NULL,'1',9,1),(167,NULL,'2012-11-30 00:43:19','2012-11-30 00:43:19',NULL,'1',9,1),(168,NULL,'2012-11-30 00:43:56','2012-11-30 00:43:56',NULL,'1',9,1),(169,NULL,'2012-11-30 00:52:12','2012-11-30 00:52:12',NULL,'1',9,1),(170,NULL,'2012-11-30 00:56:19','2012-11-30 00:56:19',NULL,'1',9,1),(171,NULL,'2012-11-30 01:18:53','2012-11-30 01:18:53',NULL,'1',9,1),(172,NULL,'2012-11-30 01:21:02','2012-11-30 01:21:02',NULL,'1',9,1),(173,NULL,'2012-11-30 01:24:29','2012-11-30 01:24:29',NULL,'1',9,1),(174,NULL,'2012-11-30 01:48:54','2012-11-30 01:48:55',NULL,'1',9,1),(175,NULL,'2012-11-30 01:52:12','2012-11-30 01:52:12',NULL,'1',9,1),(176,NULL,'2012-11-30 01:55:34','2012-11-30 01:55:34',NULL,'1',9,1),(178,NULL,'2012-11-30 19:30:48','2012-11-30 19:30:49',NULL,'1',9,1),(179,NULL,'2012-11-30 19:31:13','2012-11-30 19:31:13',NULL,'1',9,1),(180,NULL,'2012-11-30 19:31:29','2012-11-30 19:31:29',NULL,'1',9,1),(181,NULL,'2012-11-30 19:31:46','2012-11-30 19:31:47',NULL,'1',9,1),(182,NULL,'2012-11-30 20:35:30','2012-11-30 20:35:31',NULL,'1',9,1),(183,NULL,'2012-11-30 20:50:51','2012-11-30 20:50:52',NULL,'1',9,1),(184,NULL,'2012-11-30 20:55:15','2012-11-30 20:55:15',NULL,'1',23,1),(185,NULL,'2012-11-30 20:58:12','2012-11-30 20:58:12',NULL,'1',23,1),(186,NULL,'2012-11-30 21:00:30','2012-11-30 21:00:30',NULL,'1',23,1),(187,NULL,'2012-11-30 21:04:17','2012-11-30 21:04:17',NULL,'1',29,1),(188,NULL,'2012-11-30 21:36:56','2012-11-30 21:36:56',NULL,'1',9,1),(189,NULL,'2012-11-30 21:39:56','2012-11-30 21:39:57',NULL,'1',9,1),(190,NULL,'2012-12-03 18:19:34','2012-12-03 18:19:35',NULL,'1',9,1),(191,NULL,'2012-12-03 18:29:56','2012-12-03 18:31:29',NULL,'1',9,1),(192,NULL,'2012-12-03 18:33:26','2012-12-03 18:33:26',NULL,'1',9,1),(193,NULL,'2012-12-03 18:42:12','2012-12-03 18:48:50',NULL,'1',9,1),(194,NULL,'2012-12-03 19:26:56','2012-12-03 19:27:28',NULL,'1',9,1),(195,NULL,'2012-12-03 19:36:05','2012-12-03 19:36:05',NULL,'1',9,1),(196,NULL,'2012-12-03 21:50:04','2012-12-03 21:50:04',NULL,'1',9,1),(197,NULL,'2012-12-03 21:53:19','2012-12-03 21:53:19',NULL,'1',9,1),(198,NULL,'2012-12-03 23:43:07','2012-12-03 23:45:53',NULL,'1',9,1),(199,NULL,'2012-12-03 23:51:39','2012-12-03 23:51:39',NULL,'1',9,1),(200,NULL,'2012-12-04 19:09:05','2012-12-04 19:09:05',NULL,'1',9,1),(201,NULL,'2012-12-04 19:10:10','2012-12-04 19:10:10',NULL,'1',9,1),(202,NULL,'2012-12-10 10:41:52','2012-12-10 10:41:52',NULL,'1',9,1),(203,NULL,'2012-12-10 10:42:11','2012-12-10 10:42:11',NULL,'1',9,1),(204,NULL,'2012-12-10 10:42:36','2012-12-10 10:45:14',NULL,'1',9,1),(205,NULL,'2012-12-10 10:42:51','2012-12-10 10:42:51',NULL,'1',9,1),(206,NULL,'2012-12-10 10:47:48','2012-12-10 11:07:04',NULL,'1',9,1),(207,NULL,'2012-12-10 10:51:22','2012-12-10 10:51:22',NULL,'1',9,1),(208,NULL,'2012-12-10 10:55:53','2012-12-10 10:58:58',NULL,'1',9,1),(209,NULL,'2012-12-10 11:09:45','2012-12-10 11:09:45',NULL,'1',9,1),(210,NULL,'2012-12-10 11:11:16','2012-12-10 11:11:16',NULL,'1',9,1),(211,NULL,'2012-12-10 11:12:10','2012-12-10 11:12:21',NULL,'1',9,1),(212,NULL,'2012-12-10 11:14:22','2012-12-10 11:16:07',NULL,'1',9,1),(213,NULL,'2012-12-10 11:24:59','2012-12-10 11:24:59',NULL,'1',9,1),(214,NULL,'2012-12-10 11:26:48','2012-12-10 11:26:48',NULL,'1',9,1),(215,NULL,'2012-12-10 11:28:54','2012-12-10 11:28:54',NULL,'1',9,1),(216,NULL,'2012-12-10 11:29:49','2012-12-10 11:37:50',NULL,'1',9,1),(217,NULL,'2012-12-10 11:39:43','2012-12-10 11:39:43',NULL,'1',9,1),(218,NULL,'2012-12-10 11:41:05','2012-12-10 11:41:05',NULL,'1',9,1),(219,NULL,'2012-12-10 11:42:08','2012-12-10 11:42:40',NULL,'1',9,1),(220,NULL,'2012-12-10 11:44:50','2012-12-10 11:45:22',NULL,'1',9,1),(221,NULL,'2012-12-10 11:47:34','2012-12-10 11:47:34',NULL,'1',9,1),(222,NULL,'2012-12-10 11:50:37','2012-12-10 11:51:53',NULL,'1',9,1),(223,NULL,'2012-12-10 11:59:23','2012-12-10 12:02:26',NULL,'1',9,1),(224,NULL,'2012-12-10 12:22:21','2012-12-10 12:22:21',NULL,'1',9,1),(225,NULL,'2012-12-10 12:33:50','2012-12-10 12:37:18',NULL,'1',9,1),(226,NULL,'2012-12-10 12:41:03','2012-12-10 12:41:33',NULL,'1',9,1),(227,NULL,'2012-12-10 12:55:23','2012-12-10 12:55:55',NULL,'1',9,1),(228,NULL,'2012-12-10 13:01:49','2012-12-10 13:02:38',NULL,'1',9,1),(229,NULL,'2012-12-10 15:16:08','2012-12-10 15:20:05',NULL,'1',9,1),(230,NULL,'2012-12-10 15:23:30','2012-12-10 15:24:02',NULL,'1',9,1),(231,NULL,'2012-12-10 15:25:23','2012-12-10 15:29:45',NULL,'1',9,1),(232,NULL,'2012-12-10 15:31:21','2012-12-10 15:31:21',NULL,'1',9,1),(233,NULL,'2012-12-10 15:31:36','2012-12-10 15:31:36',NULL,'1',9,1),(234,NULL,'2012-12-10 15:31:48','2012-12-10 15:31:48',NULL,'1',9,1),(235,NULL,'2012-12-10 15:32:17','2012-12-10 15:32:18',NULL,'1',9,1),(236,NULL,'2012-12-10 15:38:58','2012-12-10 15:39:16',NULL,'1',9,1),(237,NULL,'2012-12-10 15:39:58','2012-12-10 15:39:58',NULL,'1',9,1),(238,NULL,'2012-12-10 15:41:33','2012-12-10 15:42:16',NULL,'1',9,1),(239,NULL,'2012-12-10 15:45:41','2012-12-10 15:45:41',NULL,'1',9,1),(240,NULL,'2012-12-10 15:51:17','2012-12-10 15:52:11',NULL,'1',9,1),(241,NULL,'2012-12-10 16:32:02','2012-12-10 16:32:02',NULL,'1',9,1),(242,NULL,'2012-12-10 16:33:31','2012-12-10 16:34:03',NULL,'1',9,1),(243,NULL,'2012-12-10 16:44:23','2012-12-10 16:45:29',NULL,'1',9,1),(244,NULL,'2012-12-10 16:55:05','2012-12-10 16:56:45',NULL,'1',9,2),(245,NULL,'2012-12-10 17:04:24','2012-12-10 17:04:24',NULL,'1',9,2),(246,NULL,'2012-12-10 17:07:14','2012-12-10 17:07:29',NULL,'1',9,2),(247,NULL,'2012-12-10 17:08:16','2012-12-10 17:08:50',NULL,'1',9,2),(248,NULL,'2012-12-10 17:09:29','2012-12-10 17:09:29',NULL,'1',9,2),(249,NULL,'2012-12-10 17:10:14','2012-12-10 17:10:14',NULL,'1',9,2),(250,NULL,'2012-12-10 17:12:07','2012-12-10 17:12:20',NULL,'1',9,2),(251,NULL,'2012-12-12 18:38:25','2012-12-12 18:38:25',NULL,'1',9,1);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (3,1,3,1),(3,1,4,2),(4,1,3,3),(4,1,4,4),(5,1,3,5),(5,1,4,6),(6,1,3,7),(7,1,3,8),(7,1,4,9),(8,1,3,10),(8,1,4,11),(9,1,3,12),(9,1,4,13),(11,1,3,14),(11,1,4,15),(12,1,3,16),(12,1,4,17),(13,1,3,18),(13,1,4,19),(14,1,3,21),(14,1,4,22),(14,1,5,20),(15,1,3,23),(16,1,3,24),(16,1,4,25),(17,1,3,26),(17,1,4,27),(18,1,3,28),(18,1,4,29),(19,1,3,30),(19,1,4,32),(19,1,5,31),(20,1,3,33),(20,1,4,35),(20,1,5,34),(21,1,3,36),(21,1,4,37),(22,1,3,38),(23,1,3,39),(23,1,4,40),(24,1,3,41),(24,1,4,42),(25,1,3,43),(25,1,4,44),(26,1,3,45),(26,1,4,46),(28,1,3,47),(28,1,4,48),(29,1,3,49),(30,1,3,50),(31,1,3,51),(32,1,3,52),(32,1,4,53),(34,1,3,54),(34,1,4,55),(35,1,3,56),(35,1,4,57),(36,1,3,58),(37,1,4,59),(38,1,4,60),(40,1,3,61),(40,1,4,62),(41,1,4,63),(42,1,5,64),(42,1,8,65),(43,1,3,66),(43,1,4,67),(44,1,5,68),(45,1,5,69),(46,1,3,70),(47,1,3,71),(48,1,3,72),(49,1,3,73),(50,1,3,74),(51,1,5,75),(53,1,3,76),(54,1,3,77),(55,1,3,78),(56,1,3,79),(57,1,3,80),(58,1,3,81),(60,1,3,82),(61,1,3,83),(62,1,3,84),(63,1,3,85),(64,1,3,86),(66,1,3,87),(67,1,3,88),(68,1,3,89),(70,1,3,90),(71,1,3,91),(72,1,3,92),(73,1,3,93),(76,1,3,94),(77,1,3,95),(78,1,3,96),(79,1,3,97),(81,1,3,98),(82,1,3,99),(83,1,3,100),(84,1,3,101),(85,1,3,102),(86,1,3,103),(87,1,3,104),(88,1,3,105),(89,1,3,106),(90,1,8,107),(91,1,3,108),(92,1,3,109),(93,1,3,110),(94,1,3,111),(95,1,3,112),(96,1,3,113),(98,1,3,114),(99,1,3,115),(104,1,5,117),(104,1,8,118),(105,1,5,116),(128,1,14,135),(132,1,5,137),(132,1,6,138),(132,1,8,139),(132,1,14,140),(133,1,14,136),(135,1,14,141),(136,1,14,142),(139,1,14,149);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_tags` text,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0,NULL),(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0,NULL),(5,NULL,NULL,'blog drafts,composer','icon-book',0,0,NULL,0,0,NULL),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0,NULL),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0,NULL),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0,NULL),(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0,NULL),(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0,NULL),(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0,NULL),(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0,NULL),(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0,NULL),(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0,NULL),(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0,NULL),(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0,NULL),(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0,NULL),(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0,NULL),(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0,NULL),(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0,NULL),(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0,NULL),(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0,NULL),(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0,NULL),(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0,NULL),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0,NULL),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0,NULL),(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0,NULL),(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0,NULL),(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0,NULL),(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0,NULL),(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0,NULL),(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0,NULL),(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0,NULL),(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0,NULL),(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0,NULL),(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0,NULL),(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0,NULL),(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0,NULL),(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0,NULL),(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL),(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL),(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0,NULL),(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0,NULL),(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0,NULL),(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0,NULL),(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0,NULL),(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL),(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0,NULL),(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0,NULL),(55,NULL,NULL,'tinymce, content block, fonts, editor, tinymce, content, overlay',NULL,0,0,NULL,0,0,NULL),(56,NULL,NULL,'translate, translation, internationalization, multilingual, translate',NULL,0,0,NULL,0,0,NULL),(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0,NULL),(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0,NULL),(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0,NULL),(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0,NULL),(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0,NULL),(63,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0,NULL),(64,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0,NULL),(66,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,NULL),(67,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,NULL),(68,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0,NULL),(70,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0,NULL),(71,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0,NULL),(72,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0,NULL),(73,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0,NULL),(76,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0,NULL),(77,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0,NULL),(78,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0,NULL),(79,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0,NULL),(81,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0,NULL),(82,NULL,NULL,'member profile, member page,community, forums, social, avatar',NULL,0,0,NULL,0,0,NULL),(83,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0,NULL),(84,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0,NULL),(85,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0,NULL),(86,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0,NULL),(87,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0,NULL),(88,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0,NULL),(89,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0,NULL),(90,NULL,NULL,NULL,NULL,0,0,NULL,1,0,NULL),(91,NULL,NULL,'overrides, system info, debug, support,help',NULL,0,0,NULL,0,0,NULL),(92,NULL,NULL,'errors,exceptions, develop, support, help',NULL,0,0,NULL,0,0,NULL),(93,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, errors, log',NULL,0,0,NULL,0,0,NULL),(94,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0,NULL),(95,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0,NULL),(96,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0,NULL),(98,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0,NULL),(99,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0,NULL),(104,NULL,NULL,NULL,NULL,1,0,NULL,1,0,NULL),(105,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL),(127,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(128,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\n'),(129,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(130,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(131,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(132,NULL,NULL,NULL,NULL,1,1,NULL,1,0,'\n'),(133,NULL,NULL,NULL,NULL,0,0,NULL,0,0,'\ncomposer\nhello\nworld\nfirst post\n'),(137,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(140,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(141,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL),(142,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaLayouts`
--

LOCK TABLES `CollectionVersionAreaLayouts` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` DISABLE KEYS */;
INSERT INTO `CollectionVersionAreaLayouts` VALUES (1,137,3,'content',1,1,1),(2,137,4,'content',2,1,1),(3,137,5,'content',3,1,1),(4,137,6,'content',4,1,1),(5,137,7,'content',4,1,1),(6,137,7,'content',5,2,2),(7,137,8,'content',4,1,1),(8,137,8,'content',5,2,2),(9,137,9,'content',4,1,1),(10,137,9,'content',5,2,2),(11,137,10,'content',4,1,1),(12,137,10,'content',5,2,2),(13,137,11,'content',4,1,1),(14,137,11,'content',5,2,2),(15,137,12,'content',4,1,1),(16,137,12,'content',5,2,2),(17,137,13,'content',4,1,1),(18,137,13,'content',5,2,2),(19,137,14,'content',4,1,1),(20,137,14,'content',5,2,2),(22,137,15,'content',5,1,2),(23,137,16,'content',5,1,2),(24,137,17,'content',5,1,2),(25,137,18,'content',5,1,2),(26,137,19,'content',5,1,2),(27,137,20,'content',5,1,2);
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (1,2,25,'Sidebar',0),(1,2,26,'Sidebar',0),(1,2,27,'Main',0),(1,2,28,'Header Image',0),(1,2,53,'header',0),(1,3,26,'Sidebar',0),(1,3,27,'Main',0),(1,3,28,'Header Image',0),(1,3,53,'header',0),(1,3,54,'sidebar',0),(1,4,27,'Main',0),(1,4,28,'Header Image',0),(1,4,53,'header',0),(1,4,55,'sidebar',0),(1,4,56,'sidebar',0),(1,5,27,'Main',0),(1,5,28,'Header Image',0),(1,5,55,'sidebar',0),(1,5,56,'sidebar',0),(1,5,58,'header',0),(1,6,27,'Main',0),(1,6,28,'Header Image',0),(1,6,55,'sidebar',0),(1,6,56,'sidebar',0),(1,6,58,'header',0),(1,7,27,'Main',0),(1,7,28,'Header Image',0),(1,7,55,'sidebar',0),(1,7,56,'sidebar',0),(1,7,58,'header',0),(1,8,27,'Main',0),(1,8,28,'Header Image',0),(1,8,55,'sidebar',0),(1,8,56,'sidebar',0),(1,8,58,'header',0),(1,10,27,'Main',0),(1,10,28,'Header Image',0),(1,10,55,'Sidebar',0),(1,10,56,'Sidebar',0),(1,10,58,'Header',0),(1,10,62,'post',0),(1,10,64,'content',0),(1,10,65,'content',0),(1,10,67,'footer',0),(1,11,27,'Main',0),(1,11,28,'Header Image',0),(1,11,58,'Header',0),(1,11,62,'post',0),(1,11,64,'content',0),(1,11,65,'content',0),(1,11,67,'footer',0),(1,11,68,'sidebar',0),(1,11,69,'sidebar',0),(1,12,27,'Main',0),(1,12,28,'Header Image',0),(1,12,58,'Header',0),(1,12,62,'post',0),(1,12,64,'content',0),(1,12,65,'content',0),(1,12,67,'footer',0),(1,12,69,'sidebar',0),(1,12,77,'sidebar',0),(1,13,27,'Main',0),(1,13,28,'Header Image',0),(1,13,58,'Header',0),(1,13,62,'post',0),(1,13,64,'content',0),(1,13,65,'content',0),(1,13,67,'footer',0),(1,13,69,'sidebar',0),(1,13,78,'sidebar',0),(1,14,27,'Main',0),(1,14,28,'Header Image',0),(1,14,58,'Header',0),(1,14,62,'post',0),(1,14,64,'content',0),(1,14,65,'content',0),(1,14,67,'footer',0),(1,14,69,'sidebar',0),(1,14,79,'sidebar',0),(1,15,27,'Main',0),(1,15,28,'Header Image',0),(1,15,58,'Header',0),(1,15,62,'post',0),(1,15,64,'content',0),(1,15,65,'content',0),(1,15,67,'footer',0),(1,15,69,'sidebar',0),(1,15,79,'sidebar',0),(1,16,27,'Main',0),(1,16,28,'Header Image',0),(1,16,58,'Header',0),(1,16,62,'post',0),(1,16,64,'content',0),(1,16,65,'content',0),(1,16,67,'footer',0),(1,16,69,'sidebar',0),(1,16,79,'sidebar',0),(1,17,27,'Main',0),(1,17,28,'Header Image',0),(1,17,58,'Header',0),(1,17,62,'post',0),(1,17,64,'content',0),(1,17,65,'content',0),(1,17,67,'footer',0),(1,17,69,'sidebar',0),(1,17,79,'sidebar',0),(1,17,101,'header',0),(1,18,27,'Main',0),(1,18,28,'Header Image',0),(1,18,58,'Header',0),(1,18,62,'post',0),(1,18,64,'content',0),(1,18,65,'content',0),(1,18,67,'footer',0),(1,18,69,'sidebar',0),(1,18,79,'sidebar',0),(1,18,102,'header',0),(1,19,27,'Main',0),(1,19,28,'Header Image',0),(1,19,58,'Header',0),(1,19,62,'post',0),(1,19,64,'content',0),(1,19,65,'content',0),(1,19,67,'footer',0),(1,19,79,'sidebar',0),(1,19,104,'sidebar',0),(1,20,27,'Main',0),(1,20,28,'Header Image',0),(1,20,58,'Header',0),(1,20,62,'post',0),(1,20,64,'content',0),(1,20,65,'content',0),(1,20,67,'footer',0),(1,20,79,'sidebar',0),(1,20,104,'sidebar',0),(1,21,27,'Main',0),(1,21,28,'Header Image',0),(1,21,58,'Header',0),(1,21,62,'post',0),(1,21,64,'content',0),(1,21,65,'content',0),(1,21,67,'footer',0),(1,21,79,'sidebar',0),(1,21,106,'sidebar',0),(1,21,110,'sidebar',0),(1,22,27,'Main',0),(1,22,28,'Header Image',0),(1,22,58,'Header',0),(1,22,62,'post',0),(1,22,64,'content',0),(1,22,65,'content',0),(1,22,67,'footer',0),(1,22,79,'sidebar',0),(1,22,110,'sidebar',0),(1,23,27,'Main',0),(1,23,28,'Header Image',0),(1,23,58,'Header',0),(1,23,62,'post',0),(1,23,64,'content',0),(1,23,65,'content',0),(1,23,67,'footer',0),(1,23,79,'sidebar',0),(1,23,115,'sidebar',0),(1,24,27,'Main',0),(1,24,28,'Header Image',0),(1,24,58,'Header',0),(1,24,62,'post',0),(1,24,64,'content',0),(1,24,65,'content',0),(1,24,67,'footer',0),(1,24,79,'sidebar',0),(1,24,116,'sidebar',0),(1,25,27,'Main',0),(1,25,28,'Header Image',0),(1,25,58,'Header',0),(1,25,62,'post',0),(1,25,64,'content',0),(1,25,65,'content',0),(1,25,67,'footer',0),(1,25,79,'sidebar',0),(1,25,116,'sidebar',0),(1,26,27,'Main',0),(1,26,28,'Header Image',0),(1,26,58,'Header',0),(1,26,62,'post',0),(1,26,64,'content',0),(1,26,65,'content',0),(1,26,67,'footer',0),(1,26,126,'sidebar',0),(1,27,27,'Main',0),(1,27,28,'Header Image',0),(1,27,58,'Header',0),(1,27,62,'post',0),(1,27,64,'content',0),(1,27,65,'content',0),(1,27,67,'footer',0),(1,27,126,'sidebar',0),(1,28,27,'Main',0),(1,28,28,'Header Image',0),(1,28,58,'Header',0),(1,28,62,'post',0),(1,28,64,'content',0),(1,28,65,'content',0),(1,28,67,'footer',0),(1,28,126,'sidebar',0),(1,28,131,'header-wrapper',0),(1,29,27,'Main',0),(1,29,28,'Header Image',0),(1,29,58,'Header',0),(1,29,62,'post',0),(1,29,64,'content',0),(1,29,65,'content',0),(1,29,67,'footer',0),(1,29,126,'sidebar',0),(1,29,132,'header-wrapper',0),(1,30,27,'Main',0),(1,30,28,'Header Image',0),(1,30,58,'Header',0),(1,30,62,'post',0),(1,30,64,'content',0),(1,30,65,'content',0),(1,30,67,'footer',0),(1,30,126,'sidebar',0),(1,30,132,'header-wrapper',0),(1,31,27,'Main',0),(1,31,28,'Header Image',0),(1,31,58,'Header',0),(1,31,62,'post',0),(1,31,64,'content',0),(1,31,65,'content',0),(1,31,67,'footer',0),(1,31,126,'sidebar',0),(1,31,132,'header-wrapper',0),(1,31,133,'header-wrapper',0),(1,31,134,'header-wrapper',0),(1,32,27,'Main',0),(1,32,28,'Header Image',0),(1,32,58,'Header',0),(1,32,62,'post',0),(1,32,64,'content',0),(1,32,65,'content',0),(1,32,67,'footer',0),(1,32,126,'sidebar',0),(1,32,132,'header-wrapper',0),(1,32,133,'header-wrapper',0),(1,32,134,'header-wrapper',0),(1,32,136,'header-wrapper',0),(1,33,27,'Main',0),(1,33,28,'Header Image',0),(1,33,58,'Header',0),(1,33,62,'post',0),(1,33,64,'content',0),(1,33,65,'content',0),(1,33,67,'footer',0),(1,33,126,'sidebar',0),(1,33,132,'header-wrapper',0),(1,33,133,'header-wrapper',0),(1,33,134,'header-wrapper',0),(1,33,136,'header-wrapper',0),(1,33,137,'subheader1',0),(1,34,27,'Main',0),(1,34,28,'Header Image',0),(1,34,58,'Header',0),(1,34,62,'post',0),(1,34,64,'content',0),(1,34,65,'content',0),(1,34,67,'footer',0),(1,34,126,'sidebar',0),(1,34,132,'header-wrapper',0),(1,34,133,'header-wrapper',0),(1,34,134,'header-wrapper',0),(1,34,136,'header-wrapper',0),(1,34,137,'subheader1',0),(1,34,138,'column-455 m-right-70 m-top-50',0),(1,34,139,'column-455  m-top-50',0),(1,35,27,'Main',0),(1,35,28,'Header Image',0),(1,35,58,'Header',0),(1,35,62,'post',0),(1,35,64,'content',0),(1,35,65,'content',0),(1,35,67,'footer',0),(1,35,126,'sidebar',0),(1,35,132,'header-wrapper',0),(1,35,133,'header-wrapper',0),(1,35,134,'header-wrapper',0),(1,35,136,'header-wrapper',0),(1,35,137,'subheader1',0),(1,35,138,'column-455 m-right-70 m-top-50',0),(1,35,139,'column-455  m-top-50',0),(1,35,140,'subheader2',0),(1,35,141,'column-640  m-top-50',0),(1,35,142,'column-300 m-left-40 m-top-50',0),(1,35,143,'column-455 m-right-70 m-top-70',0),(1,35,144,'column-455 m-top-70',0),(1,35,145,'subheader3',0),(1,35,146,'column-640 m-top-50',0),(1,35,147,'column-300_2 m-left-40 m-top-50',0),(1,35,149,'showcase-sub-container',0),(1,36,27,'Main',0),(1,36,28,'Header Image',0),(1,36,58,'Header',0),(1,36,62,'post',0),(1,36,64,'content',0),(1,36,65,'content',0),(1,36,67,'footer',0),(1,36,126,'sidebar',0),(1,36,132,'header-wrapper',0),(1,36,133,'header-wrapper',0),(1,36,134,'header-wrapper',0),(1,36,136,'header-wrapper',0),(1,36,137,'subheader1',0),(1,36,138,'column-455 m-right-70 m-top-50',0),(1,36,139,'column-455  m-top-50',0),(1,36,140,'subheader2',0),(1,36,141,'column-640  m-top-50',0),(1,36,142,'column-300 m-left-40 m-top-50',0),(1,36,143,'column-455 m-right-70 m-top-70',0),(1,36,144,'column-455 m-top-70',0),(1,36,145,'subheader3',0),(1,36,146,'column-640 m-top-50',0),(1,36,147,'column-300_2 m-left-40 m-top-50',0),(1,36,149,'showcase-sub-container',0),(1,37,27,'Main',0),(1,37,28,'Header Image',0),(1,37,58,'Header',0),(1,37,62,'post',0),(1,37,64,'content',0),(1,37,65,'content',0),(1,37,67,'footer',0),(1,37,126,'sidebar',0),(1,37,132,'header-wrapper',0),(1,37,133,'header-wrapper',0),(1,37,134,'header-wrapper',0),(1,37,136,'header-wrapper',0),(1,37,137,'subheader1',0),(1,37,138,'column-455 m-right-70 m-top-50',0),(1,37,139,'column-455  m-top-50',0),(1,37,140,'subheader2',0),(1,37,141,'column-640  m-top-50',0),(1,37,142,'column-300 m-left-40 m-top-50',0),(1,37,143,'column-455 m-right-70 m-top-70',0),(1,37,144,'column-455 m-top-70',0),(1,37,145,'subheader3',0),(1,37,146,'column-640 m-top-50',0),(1,37,147,'column-300_2 m-left-40 m-top-50',0),(1,37,149,'showcase-sub-container',0),(1,37,150,'subheader4',0),(1,37,151,'column-640_4 m-top-50',0),(1,37,152,'column-300_4 m-left-40 m-top-50',0),(1,37,153,'column-300_4 m-left-55 m-top-40',0),(1,38,27,'Main',0),(1,38,28,'Header Image',0),(1,38,58,'Header',0),(1,38,62,'post',0),(1,38,64,'content',0),(1,38,65,'content',0),(1,38,67,'footer',0),(1,38,126,'sidebar',0),(1,38,132,'header-wrapper',0),(1,38,133,'header-wrapper',0),(1,38,134,'header-wrapper',0),(1,38,136,'header-wrapper',0),(1,38,137,'subheader1',0),(1,38,138,'column-455 m-right-70 m-top-50',0),(1,38,139,'column-455  m-top-50',0),(1,38,140,'subheader2',0),(1,38,141,'column-640  m-top-50',0),(1,38,142,'column-300 m-left-40 m-top-50',0),(1,38,143,'column-455 m-right-70 m-top-70',0),(1,38,144,'column-455 m-top-70',0),(1,38,145,'subheader3',0),(1,38,146,'column-640 m-top-50',0),(1,38,147,'column-300_2 m-left-40 m-top-50',0),(1,38,149,'showcase-sub-container',0),(1,38,150,'subheader4',0),(1,38,151,'column-640_4 m-top-50',0),(1,38,152,'column-300_4 m-left-40 m-top-50',0),(1,38,153,'column-300_4 m-left-55 m-top-40',0),(1,38,154,'column-300_4_2 m-top-55 m-right-40',0),(1,38,155,'column-300_4 m-top-55',0),(1,38,156,'subheader6',0),(1,38,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,38,158,'column-525_6 m-top-50',0),(1,38,159,'footer_logo',0),(1,39,27,'Main',0),(1,39,28,'Header Image',0),(1,39,58,'Header',0),(1,39,62,'post',0),(1,39,64,'content',0),(1,39,65,'content',0),(1,39,67,'footer',0),(1,39,126,'sidebar',0),(1,39,132,'header-wrapper',0),(1,39,133,'header-wrapper',0),(1,39,134,'header-wrapper',0),(1,39,136,'header-wrapper',0),(1,39,137,'subheader1',0),(1,39,138,'column-455 m-right-70 m-top-50',0),(1,39,139,'column-455  m-top-50',0),(1,39,140,'subheader2',0),(1,39,141,'column-640  m-top-50',0),(1,39,142,'column-300 m-left-40 m-top-50',0),(1,39,143,'column-455 m-right-70 m-top-70',0),(1,39,144,'column-455 m-top-70',0),(1,39,145,'subheader3',0),(1,39,146,'column-640 m-top-50',0),(1,39,147,'column-300_2 m-left-40 m-top-50',0),(1,39,150,'subheader4',0),(1,39,151,'column-640_4 m-top-50',0),(1,39,152,'column-300_4 m-left-40 m-top-50',0),(1,39,153,'column-300_4 m-left-55 m-top-40',0),(1,39,154,'column-300_4_2 m-top-55 m-right-40',0),(1,39,155,'column-300_4 m-top-55',0),(1,39,156,'subheader6',0),(1,39,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,39,158,'column-525_6 m-top-50',0),(1,39,159,'footer_logo',0),(1,39,160,'m-bottom-40',0),(1,39,161,'showcase-sub-container',0),(1,40,27,'Main',0),(1,40,28,'Header Image',0),(1,40,58,'Header',0),(1,40,62,'post',0),(1,40,64,'content',0),(1,40,65,'content',0),(1,40,67,'footer',0),(1,40,126,'sidebar',0),(1,40,132,'header-wrapper',0),(1,40,133,'header-wrapper',0),(1,40,134,'header-wrapper',0),(1,40,136,'header-wrapper',0),(1,40,137,'subheader1',0),(1,40,138,'column-455 m-right-70 m-top-50',0),(1,40,139,'column-455  m-top-50',0),(1,40,140,'subheader2',0),(1,40,141,'column-640  m-top-50',0),(1,40,142,'column-300 m-left-40 m-top-50',0),(1,40,143,'column-455 m-right-70 m-top-70',0),(1,40,144,'column-455 m-top-70',0),(1,40,145,'subheader3',0),(1,40,146,'column-640 m-top-50',0),(1,40,147,'column-300_2 m-left-40 m-top-50',0),(1,40,150,'subheader4',0),(1,40,151,'column-640_4 m-top-50',0),(1,40,152,'column-300_4 m-left-40 m-top-50',0),(1,40,153,'column-300_4 m-left-55 m-top-40',0),(1,40,154,'column-300_4_2 m-top-55 m-right-40',0),(1,40,155,'column-300_4 m-top-55',0),(1,40,156,'subheader6',0),(1,40,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,40,158,'column-525_6 m-top-50',0),(1,40,159,'footer_logo',0),(1,40,160,'m-bottom-40',0),(1,40,162,'showcase-sub-container',0),(1,41,27,'Main',0),(1,41,28,'Header Image',0),(1,41,58,'Header',0),(1,41,62,'post',0),(1,41,64,'content',0),(1,41,65,'content',0),(1,41,67,'footer',0),(1,41,126,'sidebar',0),(1,41,132,'header-wrapper',0),(1,41,133,'header-wrapper',0),(1,41,134,'header-wrapper',0),(1,41,136,'header-wrapper',0),(1,41,137,'subheader1',0),(1,41,138,'column-455 m-right-70 m-top-50',0),(1,41,139,'column-455  m-top-50',0),(1,41,140,'subheader2',0),(1,41,141,'column-640  m-top-50',0),(1,41,142,'column-300 m-left-40 m-top-50',0),(1,41,143,'column-455 m-right-70 m-top-70',0),(1,41,144,'column-455 m-top-70',0),(1,41,145,'subheader3',0),(1,41,146,'column-640 m-top-50',0),(1,41,147,'column-300_2 m-left-40 m-top-50',0),(1,41,150,'subheader4',0),(1,41,151,'column-640_4 m-top-50',0),(1,41,152,'column-300_4 m-left-40 m-top-50',0),(1,41,153,'column-300_4 m-left-55 m-top-40',0),(1,41,154,'column-300_4_2 m-top-55 m-right-40',0),(1,41,155,'column-300_4 m-top-55',0),(1,41,156,'subheader6',0),(1,41,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,41,158,'column-525_6 m-top-50',0),(1,41,159,'footer_logo',0),(1,41,160,'m-bottom-40',0),(1,41,163,'showcase-sub-container',0),(1,42,27,'Main',0),(1,42,28,'Header Image',0),(1,42,58,'Header',0),(1,42,62,'post',0),(1,42,64,'content',0),(1,42,65,'content',0),(1,42,67,'footer',0),(1,42,126,'sidebar',0),(1,42,132,'header-wrapper',0),(1,42,133,'header-wrapper',0),(1,42,134,'header-wrapper',0),(1,42,136,'header-wrapper',0),(1,42,137,'subheader1',0),(1,42,138,'column-455 m-right-70 m-top-50',0),(1,42,139,'column-455  m-top-50',0),(1,42,140,'subheader2',0),(1,42,141,'column-640  m-top-50',0),(1,42,142,'column-300 m-left-40 m-top-50',0),(1,42,143,'column-455 m-right-70 m-top-70',0),(1,42,144,'column-455 m-top-70',0),(1,42,145,'subheader3',0),(1,42,146,'column-640 m-top-50',0),(1,42,147,'column-300_2 m-left-40 m-top-50',0),(1,42,150,'subheader4',0),(1,42,151,'column-640_4 m-top-50',0),(1,42,152,'column-300_4 m-left-40 m-top-50',0),(1,42,153,'column-300_4 m-left-55 m-top-40',0),(1,42,154,'column-300_4_2 m-top-55 m-right-40',0),(1,42,155,'column-300_4 m-top-55',0),(1,42,156,'subheader6',0),(1,42,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,42,158,'column-525_6 m-top-50',0),(1,42,159,'footer_logo',0),(1,42,160,'m-bottom-40',0),(1,42,163,'showcase-sub-container',0),(1,43,27,'Main',0),(1,43,28,'Header Image',0),(1,43,58,'Header',0),(1,43,62,'post',0),(1,43,64,'content',0),(1,43,65,'content',0),(1,43,67,'footer',0),(1,43,126,'sidebar',0),(1,43,132,'header-wrapper',0),(1,43,133,'header-wrapper',0),(1,43,134,'header-wrapper',0),(1,43,136,'header-wrapper',0),(1,43,137,'subheader1',0),(1,43,138,'column-455 m-right-70 m-top-50',0),(1,43,139,'column-455  m-top-50',0),(1,43,140,'subheader2',0),(1,43,141,'column-640  m-top-50',0),(1,43,142,'column-300 m-left-40 m-top-50',0),(1,43,143,'column-455 m-right-70 m-top-70',0),(1,43,144,'column-455 m-top-70',0),(1,43,145,'subheader3',0),(1,43,146,'column-640 m-top-50',0),(1,43,147,'column-300_2 m-left-40 m-top-50',0),(1,43,150,'subheader4',0),(1,43,151,'column-640_4 m-top-50',0),(1,43,152,'column-300_4 m-left-40 m-top-50',0),(1,43,153,'column-300_4 m-left-55 m-top-40',0),(1,43,154,'column-300_4_2 m-top-55 m-right-40',0),(1,43,155,'column-300_4 m-top-55',0),(1,43,156,'subheader6',0),(1,43,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,43,158,'column-525_6 m-top-50',0),(1,43,159,'footer_logo',0),(1,43,160,'m-bottom-40',0),(1,43,163,'showcase-sub-container',0),(1,43,164,'column-455 m-right-70 m-top-70 list1',0),(1,44,27,'Main',0),(1,44,28,'Header Image',0),(1,44,58,'Header',0),(1,44,62,'post',0),(1,44,64,'content',0),(1,44,65,'content',0),(1,44,67,'footer',0),(1,44,126,'sidebar',0),(1,44,132,'header-wrapper',0),(1,44,133,'header-wrapper',0),(1,44,134,'header-wrapper',0),(1,44,136,'header-wrapper',0),(1,44,137,'subheader1',0),(1,44,138,'column-455 m-right-70 m-top-50',0),(1,44,139,'column-455  m-top-50',0),(1,44,140,'subheader2',0),(1,44,141,'column-640  m-top-50',0),(1,44,142,'column-300 m-left-40 m-top-50',0),(1,44,143,'column-455 m-right-70 m-top-70',0),(1,44,144,'column-455 m-top-70',0),(1,44,145,'subheader3',0),(1,44,146,'column-640 m-top-50',0),(1,44,147,'column-300_2 m-left-40 m-top-50',0),(1,44,150,'subheader4',0),(1,44,151,'column-640_4 m-top-50',0),(1,44,152,'column-300_4 m-left-40 m-top-50',0),(1,44,153,'column-300_4 m-left-55 m-top-40',0),(1,44,154,'column-300_4_2 m-top-55 m-right-40',0),(1,44,155,'column-300_4 m-top-55',0),(1,44,156,'subheader6',0),(1,44,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,44,158,'column-525_6 m-top-50',0),(1,44,159,'footer_logo',0),(1,44,160,'m-bottom-40',0),(1,44,163,'showcase-sub-container',0),(1,44,164,'column-455 m-right-70 m-top-70 list1',0),(1,44,166,'column-455 m-right-70 m-top-70 list2',0),(1,44,167,'column-455 m-right-70 m-top-70 list3',0),(1,44,168,'column-455 m-right-70 m-top-70 list4',0),(1,45,27,'Main',0),(1,45,28,'Header Image',0),(1,45,58,'Header',0),(1,45,62,'post',0),(1,45,64,'content',0),(1,45,65,'content',0),(1,45,67,'footer',0),(1,45,126,'sidebar',0),(1,45,132,'header-wrapper',0),(1,45,133,'header-wrapper',0),(1,45,134,'header-wrapper',0),(1,45,136,'header-wrapper',0),(1,45,137,'subheader1',0),(1,45,138,'column-455 m-right-70 m-top-50',0),(1,45,139,'column-455  m-top-50',0),(1,45,140,'subheader2',0),(1,45,141,'column-640  m-top-50',0),(1,45,142,'column-300 m-left-40 m-top-50',0),(1,45,143,'column-455 m-right-70 m-top-70',0),(1,45,144,'column-455 m-top-70',0),(1,45,145,'subheader3',0),(1,45,146,'column-640 m-top-50',0),(1,45,147,'column-300_2 m-left-40 m-top-50',0),(1,45,150,'subheader4',0),(1,45,151,'column-640_4 m-top-50',0),(1,45,152,'column-300_4 m-left-40 m-top-50',0),(1,45,153,'column-300_4 m-left-55 m-top-40',0),(1,45,154,'column-300_4_2 m-top-55 m-right-40',0),(1,45,155,'column-300_4 m-top-55',0),(1,45,156,'subheader6',0),(1,45,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,45,158,'column-525_6 m-top-50',0),(1,45,159,'footer_logo',0),(1,45,160,'m-bottom-40',0),(1,45,163,'showcase-sub-container',0),(1,45,164,'column-455 m-right-70 m-top-70 list1',0),(1,45,166,'column-455 m-right-70 m-top-70 list2',0),(1,45,167,'column-455 m-right-70 m-top-70 list3',0),(1,45,168,'column-455 m-right-70 m-top-70 list4',0),(1,45,169,'pic-frame rounded 1',0),(1,46,27,'Main',0),(1,46,28,'Header Image',0),(1,46,58,'Header',0),(1,46,62,'post',0),(1,46,64,'content',0),(1,46,65,'content',0),(1,46,67,'footer',0),(1,46,126,'sidebar',0),(1,46,132,'header-wrapper',0),(1,46,133,'header-wrapper',0),(1,46,137,'subheader1',0),(1,46,138,'column-455 m-right-70 m-top-50',0),(1,46,139,'column-455  m-top-50',0),(1,46,140,'subheader2',0),(1,46,141,'column-640  m-top-50',0),(1,46,142,'column-300 m-left-40 m-top-50',0),(1,46,143,'column-455 m-right-70 m-top-70',0),(1,46,144,'column-455 m-top-70',0),(1,46,145,'subheader3',0),(1,46,146,'column-640 m-top-50',0),(1,46,147,'column-300_2 m-left-40 m-top-50',0),(1,46,150,'subheader4',0),(1,46,151,'column-640_4 m-top-50',0),(1,46,152,'column-300_4 m-left-40 m-top-50',0),(1,46,153,'column-300_4 m-left-55 m-top-40',0),(1,46,154,'column-300_4_2 m-top-55 m-right-40',0),(1,46,155,'column-300_4 m-top-55',0),(1,46,156,'subheader6',0),(1,46,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,46,158,'column-525_6 m-top-50',0),(1,46,159,'footer_logo',0),(1,46,160,'m-bottom-40',0),(1,46,163,'showcase-sub-container',0),(1,46,164,'column-455 m-right-70 m-top-70 list1',0),(1,46,166,'column-455 m-right-70 m-top-70 list2',0),(1,46,167,'column-455 m-right-70 m-top-70 list3',0),(1,46,168,'column-455 m-right-70 m-top-70 list4',0),(1,46,169,'pic-frame rounded 1',0),(1,46,170,'pic-frame rounded 2',0),(1,47,27,'Main',0),(1,47,28,'Header Image',0),(1,47,58,'Header',0),(1,47,62,'post',0),(1,47,64,'content',0),(1,47,65,'content',0),(1,47,67,'footer',0),(1,47,126,'sidebar',0),(1,47,132,'header-wrapper',0),(1,47,137,'subheader1',0),(1,47,138,'column-455 m-right-70 m-top-50',0),(1,47,139,'column-455  m-top-50',0),(1,47,140,'subheader2',0),(1,47,141,'column-640  m-top-50',0),(1,47,142,'column-300 m-left-40 m-top-50',0),(1,47,143,'column-455 m-right-70 m-top-70',0),(1,47,144,'column-455 m-top-70',0),(1,47,145,'subheader3',0),(1,47,146,'column-640 m-top-50',0),(1,47,147,'column-300_2 m-left-40 m-top-50',0),(1,47,150,'subheader4',0),(1,47,151,'column-640_4 m-top-50',0),(1,47,152,'column-300_4 m-left-40 m-top-50',0),(1,47,153,'column-300_4 m-left-55 m-top-40',0),(1,47,154,'column-300_4_2 m-top-55 m-right-40',0),(1,47,155,'column-300_4 m-top-55',0),(1,47,156,'subheader6',0),(1,47,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,47,158,'column-525_6 m-top-50',0),(1,47,159,'footer_logo',0),(1,47,160,'m-bottom-40',0),(1,47,163,'showcase-sub-container',0),(1,47,164,'column-455 m-right-70 m-top-70 list1',0),(1,47,166,'column-455 m-right-70 m-top-70 list2',0),(1,47,167,'column-455 m-right-70 m-top-70 list3',0),(1,47,168,'column-455 m-right-70 m-top-70 list4',0),(1,47,169,'pic-frame rounded 1',0),(1,47,170,'pic-frame rounded 2',0),(1,47,171,'header-wrapper',0),(1,48,27,'Main',0),(1,48,28,'Header Image',0),(1,48,58,'Header',0),(1,48,62,'post',0),(1,48,64,'content',0),(1,48,65,'content',0),(1,48,67,'footer',0),(1,48,126,'sidebar',0),(1,48,132,'header-wrapper',0),(1,48,137,'subheader1',0),(1,48,138,'column-455 m-right-70 m-top-50',0),(1,48,139,'column-455  m-top-50',0),(1,48,140,'subheader2',0),(1,48,141,'column-640  m-top-50',0),(1,48,142,'column-300 m-left-40 m-top-50',0),(1,48,143,'column-455 m-right-70 m-top-70',0),(1,48,144,'column-455 m-top-70',0),(1,48,145,'subheader3',0),(1,48,146,'column-640 m-top-50',0),(1,48,147,'column-300_2 m-left-40 m-top-50',0),(1,48,150,'subheader4',0),(1,48,151,'column-640_4 m-top-50',0),(1,48,152,'column-300_4 m-left-40 m-top-50',0),(1,48,153,'column-300_4 m-left-55 m-top-40',0),(1,48,154,'column-300_4_2 m-top-55 m-right-40',0),(1,48,155,'column-300_4 m-top-55',0),(1,48,156,'subheader6',0),(1,48,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,48,158,'column-525_6 m-top-50',0),(1,48,159,'footer_logo',0),(1,48,160,'m-bottom-40',0),(1,48,163,'showcase-sub-container',0),(1,48,164,'column-455 m-right-70 m-top-70 list1',0),(1,48,166,'column-455 m-right-70 m-top-70 list2',0),(1,48,167,'column-455 m-right-70 m-top-70 list3',0),(1,48,168,'column-455 m-right-70 m-top-70 list4',0),(1,48,169,'pic-frame rounded 1',0),(1,48,170,'pic-frame rounded 2',0),(1,48,172,'header-wrapper',0),(1,49,27,'Main',0),(1,49,28,'Header Image',0),(1,49,58,'Header',0),(1,49,62,'post',0),(1,49,64,'content',0),(1,49,65,'content',0),(1,49,67,'footer',0),(1,49,126,'sidebar',0),(1,49,132,'header-wrapper',0),(1,49,137,'subheader1',0),(1,49,138,'column-455 m-right-70 m-top-50',0),(1,49,139,'column-455  m-top-50',0),(1,49,140,'subheader2',0),(1,49,141,'column-640  m-top-50',0),(1,49,142,'column-300 m-left-40 m-top-50',0),(1,49,143,'column-455 m-right-70 m-top-70',0),(1,49,144,'column-455 m-top-70',0),(1,49,145,'subheader3',0),(1,49,146,'column-640 m-top-50',0),(1,49,147,'column-300_2 m-left-40 m-top-50',0),(1,49,150,'subheader4',0),(1,49,151,'column-640_4 m-top-50',0),(1,49,152,'column-300_4 m-left-40 m-top-50',0),(1,49,153,'column-300_4 m-left-55 m-top-40',0),(1,49,154,'column-300_4_2 m-top-55 m-right-40',0),(1,49,155,'column-300_4 m-top-55',0),(1,49,156,'subheader6',0),(1,49,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,49,158,'column-525_6 m-top-50',0),(1,49,159,'footer_logo',0),(1,49,160,'m-bottom-40',0),(1,49,163,'showcase-sub-container',0),(1,49,164,'column-455 m-right-70 m-top-70 list1',0),(1,49,166,'column-455 m-right-70 m-top-70 list2',0),(1,49,167,'column-455 m-right-70 m-top-70 list3',0),(1,49,168,'column-455 m-right-70 m-top-70 list4',0),(1,49,169,'pic-frame rounded 1',0),(1,49,170,'pic-frame rounded 2',0),(1,49,173,'header-wrapper',0),(1,50,27,'Main',0),(1,50,28,'Header Image',0),(1,50,58,'Header',0),(1,50,62,'post',0),(1,50,64,'content',0),(1,50,65,'content',0),(1,50,67,'footer',0),(1,50,126,'sidebar',0),(1,50,132,'header-wrapper',0),(1,50,137,'subheader1',0),(1,50,138,'column-455 m-right-70 m-top-50',0),(1,50,139,'column-455  m-top-50',0),(1,50,140,'subheader2',0),(1,50,141,'column-640  m-top-50',0),(1,50,142,'column-300 m-left-40 m-top-50',0),(1,50,143,'column-455 m-right-70 m-top-70',0),(1,50,144,'column-455 m-top-70',0),(1,50,145,'subheader3',0),(1,50,146,'column-640 m-top-50',0),(1,50,147,'column-300_2 m-left-40 m-top-50',0),(1,50,150,'subheader4',0),(1,50,151,'column-640_4 m-top-50',0),(1,50,152,'column-300_4 m-left-40 m-top-50',0),(1,50,153,'column-300_4 m-left-55 m-top-40',0),(1,50,154,'column-300_4_2 m-top-55 m-right-40',0),(1,50,155,'column-300_4 m-top-55',0),(1,50,156,'subheader6',0),(1,50,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,50,158,'column-525_6 m-top-50',0),(1,50,159,'footer_logo',0),(1,50,160,'m-bottom-40',0),(1,50,163,'showcase-sub-container',0),(1,50,164,'column-455 m-right-70 m-top-70 list1',0),(1,50,166,'column-455 m-right-70 m-top-70 list2',0),(1,50,167,'column-455 m-right-70 m-top-70 list3',0),(1,50,168,'column-455 m-right-70 m-top-70 list4',0),(1,50,169,'pic-frame rounded 1',0),(1,50,170,'pic-frame rounded 2',0),(1,50,174,'header-wrapper',0),(1,51,27,'Main',0),(1,51,28,'Header Image',0),(1,51,58,'Header',0),(1,51,62,'post',0),(1,51,64,'content',0),(1,51,65,'content',0),(1,51,67,'footer',0),(1,51,126,'sidebar',0),(1,51,132,'header-wrapper',0),(1,51,137,'subheader1',0),(1,51,138,'column-455 m-right-70 m-top-50',0),(1,51,139,'column-455  m-top-50',0),(1,51,140,'subheader2',0),(1,51,141,'column-640  m-top-50',0),(1,51,142,'column-300 m-left-40 m-top-50',0),(1,51,143,'column-455 m-right-70 m-top-70',0),(1,51,144,'column-455 m-top-70',0),(1,51,145,'subheader3',0),(1,51,146,'column-640 m-top-50',0),(1,51,147,'column-300_2 m-left-40 m-top-50',0),(1,51,150,'subheader4',0),(1,51,151,'column-640_4 m-top-50',0),(1,51,152,'column-300_4 m-left-40 m-top-50',0),(1,51,153,'column-300_4 m-left-55 m-top-40',0),(1,51,154,'column-300_4_2 m-top-55 m-right-40',0),(1,51,155,'column-300_4 m-top-55',0),(1,51,156,'subheader6',0),(1,51,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,51,158,'column-525_6 m-top-50',0),(1,51,159,'footer_logo',0),(1,51,160,'m-bottom-40',0),(1,51,163,'showcase-sub-container',0),(1,51,164,'column-455 m-right-70 m-top-70 list1',0),(1,51,166,'column-455 m-right-70 m-top-70 list2',0),(1,51,167,'column-455 m-right-70 m-top-70 list3',0),(1,51,168,'column-455 m-right-70 m-top-70 list4',0),(1,51,169,'pic-frame rounded 1',0),(1,51,170,'pic-frame rounded 2',0),(1,51,175,'header-wrapper',0),(1,52,27,'Main',0),(1,52,28,'Header Image',0),(1,52,58,'Header',0),(1,52,62,'post',0),(1,52,64,'content',0),(1,52,65,'content',0),(1,52,67,'footer',0),(1,52,126,'sidebar',0),(1,52,132,'header-wrapper',0),(1,52,137,'subheader1',0),(1,52,138,'column-455 m-right-70 m-top-50',0),(1,52,139,'column-455  m-top-50',0),(1,52,140,'subheader2',0),(1,52,141,'column-640  m-top-50',0),(1,52,142,'column-300 m-left-40 m-top-50',0),(1,52,143,'column-455 m-right-70 m-top-70',0),(1,52,144,'column-455 m-top-70',0),(1,52,145,'subheader3',0),(1,52,146,'column-640 m-top-50',0),(1,52,147,'column-300_2 m-left-40 m-top-50',0),(1,52,150,'subheader4',0),(1,52,151,'column-640_4 m-top-50',0),(1,52,152,'column-300_4 m-left-40 m-top-50',0),(1,52,153,'column-300_4 m-left-55 m-top-40',0),(1,52,154,'column-300_4_2 m-top-55 m-right-40',0),(1,52,155,'column-300_4 m-top-55',0),(1,52,156,'subheader6',0),(1,52,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,52,158,'column-525_6 m-top-50',0),(1,52,159,'footer_logo',0),(1,52,160,'m-bottom-40',0),(1,52,163,'showcase-sub-container',0),(1,52,164,'column-455 m-right-70 m-top-70 list1',0),(1,52,166,'column-455 m-right-70 m-top-70 list2',0),(1,52,167,'column-455 m-right-70 m-top-70 list3',0),(1,52,168,'column-455 m-right-70 m-top-70 list4',0),(1,52,169,'pic-frame rounded 1',0),(1,52,170,'pic-frame rounded 2',0),(1,52,176,'header-wrapper',0),(1,53,27,'Main',0),(1,53,28,'Header Image',0),(1,53,58,'Header',0),(1,53,62,'post',0),(1,53,64,'content',0),(1,53,65,'content',0),(1,53,67,'footer',0),(1,53,126,'sidebar',0),(1,53,132,'header-wrapper',0),(1,53,137,'subheader1',0),(1,53,138,'column-455 m-right-70 m-top-50',0),(1,53,139,'column-455  m-top-50',0),(1,53,140,'subheader2',0),(1,53,141,'column-640  m-top-50',0),(1,53,142,'column-300 m-left-40 m-top-50',0),(1,53,143,'column-455 m-right-70 m-top-70',0),(1,53,144,'column-455 m-top-70',0),(1,53,145,'subheader3',0),(1,53,146,'column-640 m-top-50',0),(1,53,147,'column-300_2 m-left-40 m-top-50',0),(1,53,150,'subheader4',0),(1,53,151,'column-640_4 m-top-50',0),(1,53,152,'column-300_4 m-left-40 m-top-50',0),(1,53,153,'column-300_4 m-left-55 m-top-40',0),(1,53,154,'column-300_4_2 m-top-55 m-right-40',0),(1,53,155,'column-300_4 m-top-55',0),(1,53,156,'subheader6',0),(1,53,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,53,158,'column-525_6 m-top-50',0),(1,53,159,'footer_logo',0),(1,53,160,'m-bottom-40',0),(1,53,163,'showcase-sub-container',0),(1,53,169,'pic-frame rounded 1',0),(1,53,170,'pic-frame rounded 2',0),(1,53,176,'header-wrapper',0),(1,53,178,'column-455 m-right-70 m-top-70 list1',0),(1,53,179,'column-455 m-right-70 m-top-70 list2',0),(1,53,180,'column-455 m-right-70 m-top-70 list3',0),(1,53,181,'column-455 m-right-70 m-top-70 list4',0),(1,54,27,'Main',0),(1,54,28,'Header Image',0),(1,54,58,'Header',0),(1,54,62,'post',0),(1,54,64,'content',0),(1,54,65,'content',0),(1,54,67,'footer',0),(1,54,126,'sidebar',0),(1,54,132,'header-wrapper',0),(1,54,137,'subheader1',0),(1,54,138,'column-455 m-right-70 m-top-50',0),(1,54,139,'column-455  m-top-50',0),(1,54,140,'subheader2',0),(1,54,141,'column-640  m-top-50',0),(1,54,142,'column-300 m-left-40 m-top-50',0),(1,54,143,'column-455 m-right-70 m-top-70',0),(1,54,144,'column-455 m-top-70',0),(1,54,145,'subheader3',0),(1,54,146,'column-640 m-top-50',0),(1,54,147,'column-300_2 m-left-40 m-top-50',0),(1,54,150,'subheader4',0),(1,54,151,'column-640_4 m-top-50',0),(1,54,152,'column-300_4 m-left-40 m-top-50',0),(1,54,153,'column-300_4 m-left-55 m-top-40',0),(1,54,154,'column-300_4_2 m-top-55 m-right-40',0),(1,54,155,'column-300_4 m-top-55',0),(1,54,156,'subheader6',0),(1,54,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,54,158,'column-525_6 m-top-50',0),(1,54,159,'footer_logo',0),(1,54,160,'m-bottom-40',0),(1,54,163,'showcase-sub-container',0),(1,54,169,'pic-frame rounded 1',0),(1,54,170,'pic-frame rounded 2',0),(1,54,178,'column-455 m-right-70 m-top-70 list1',0),(1,54,179,'column-455 m-right-70 m-top-70 list2',0),(1,54,180,'column-455 m-right-70 m-top-70 list3',0),(1,54,181,'column-455 m-right-70 m-top-70 list4',0),(1,54,182,'header-wrapper',0),(1,55,27,'Main',0),(1,55,28,'Header Image',0),(1,55,58,'Header',0),(1,55,62,'post',0),(1,55,64,'content',0),(1,55,65,'content',0),(1,55,67,'footer',0),(1,55,126,'sidebar',0),(1,55,132,'header-wrapper',0),(1,55,137,'subheader1',0),(1,55,138,'column-455 m-right-70 m-top-50',0),(1,55,139,'column-455  m-top-50',0),(1,55,140,'subheader2',0),(1,55,141,'column-640  m-top-50',0),(1,55,142,'column-300 m-left-40 m-top-50',0),(1,55,143,'column-455 m-right-70 m-top-70',0),(1,55,144,'column-455 m-top-70',0),(1,55,145,'subheader3',0),(1,55,146,'column-640 m-top-50',0),(1,55,147,'column-300_2 m-left-40 m-top-50',0),(1,55,150,'subheader4',0),(1,55,151,'column-640_4 m-top-50',0),(1,55,152,'column-300_4 m-left-40 m-top-50',0),(1,55,153,'column-300_4 m-left-55 m-top-40',0),(1,55,154,'column-300_4_2 m-top-55 m-right-40',0),(1,55,155,'column-300_4 m-top-55',0),(1,55,156,'subheader6',0),(1,55,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,55,158,'column-525_6 m-top-50',0),(1,55,159,'footer_logo',0),(1,55,160,'m-bottom-40',0),(1,55,163,'showcase-sub-container',0),(1,55,169,'pic-frame rounded 1',0),(1,55,170,'pic-frame rounded 2',0),(1,55,178,'column-455 m-right-70 m-top-70 list1',0),(1,55,179,'column-455 m-right-70 m-top-70 list2',0),(1,55,180,'column-455 m-right-70 m-top-70 list3',0),(1,55,181,'column-455 m-right-70 m-top-70 list4',0),(1,55,183,'header-wrapper',0),(1,56,27,'Main',0),(1,56,28,'Header Image',0),(1,56,58,'Header',0),(1,56,62,'post',0),(1,56,64,'content',0),(1,56,65,'content',0),(1,56,67,'footer',0),(1,56,126,'sidebar',0),(1,56,132,'header-wrapper',0),(1,56,137,'subheader1',0),(1,56,138,'column-455 m-right-70 m-top-50',0),(1,56,139,'column-455  m-top-50',0),(1,56,140,'subheader2',0),(1,56,141,'column-640  m-top-50',0),(1,56,142,'column-300 m-left-40 m-top-50',0),(1,56,143,'column-455 m-right-70 m-top-70',0),(1,56,144,'column-455 m-top-70',0),(1,56,145,'subheader3',0),(1,56,146,'column-640 m-top-50',0),(1,56,147,'column-300_2 m-left-40 m-top-50',0),(1,56,150,'subheader4',0),(1,56,151,'column-640_4 m-top-50',0),(1,56,152,'column-300_4 m-left-40 m-top-50',0),(1,56,153,'column-300_4 m-left-55 m-top-40',0),(1,56,154,'column-300_4_2 m-top-55 m-right-40',0),(1,56,155,'column-300_4 m-top-55',0),(1,56,156,'subheader6',0),(1,56,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,56,158,'column-525_6 m-top-50',0),(1,56,159,'footer_logo',0),(1,56,160,'m-bottom-40',0),(1,56,163,'showcase-sub-container',0),(1,56,169,'pic-frame rounded 1',0),(1,56,170,'pic-frame rounded 2',0),(1,56,178,'column-455 m-right-70 m-top-70 list1',0),(1,56,179,'column-455 m-right-70 m-top-70 list2',0),(1,56,180,'column-455 m-right-70 m-top-70 list3',0),(1,56,181,'column-455 m-right-70 m-top-70 list4',0),(1,56,183,'header-wrapper',0),(1,57,27,'Main',0),(1,57,28,'Header Image',0),(1,57,58,'Header',0),(1,57,62,'post',0),(1,57,64,'content',0),(1,57,65,'content',0),(1,57,67,'footer',0),(1,57,126,'sidebar',0),(1,57,132,'header-wrapper',0),(1,57,137,'subheader1',0),(1,57,138,'column-455 m-right-70 m-top-50',0),(1,57,139,'column-455  m-top-50',0),(1,57,140,'subheader2',0),(1,57,141,'column-640  m-top-50',0),(1,57,142,'column-300 m-left-40 m-top-50',0),(1,57,143,'column-455 m-right-70 m-top-70',0),(1,57,144,'column-455 m-top-70',0),(1,57,145,'subheader3',0),(1,57,146,'column-640 m-top-50',0),(1,57,147,'column-300_2 m-left-40 m-top-50',0),(1,57,150,'subheader4',0),(1,57,151,'column-640_4 m-top-50',0),(1,57,152,'column-300_4 m-left-40 m-top-50',0),(1,57,153,'column-300_4 m-left-55 m-top-40',0),(1,57,154,'column-300_4_2 m-top-55 m-right-40',0),(1,57,155,'column-300_4 m-top-55',0),(1,57,156,'subheader6',0),(1,57,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,57,158,'column-525_6 m-top-50',0),(1,57,159,'footer_logo',0),(1,57,160,'m-bottom-40',0),(1,57,163,'showcase-sub-container',0),(1,57,169,'pic-frame rounded 1',0),(1,57,170,'pic-frame rounded 2',0),(1,57,178,'column-455 m-right-70 m-top-70 list1',0),(1,57,179,'column-455 m-right-70 m-top-70 list2',0),(1,57,180,'column-455 m-right-70 m-top-70 list3',0),(1,57,181,'column-455 m-right-70 m-top-70 list4',0),(1,57,183,'header-wrapper',0),(1,57,185,'header-wrapper',0),(1,58,27,'Main',0),(1,58,28,'Header Image',0),(1,58,58,'Header',0),(1,58,62,'post',0),(1,58,64,'content',0),(1,58,65,'content',0),(1,58,67,'footer',0),(1,58,126,'sidebar',0),(1,58,132,'header-wrapper',0),(1,58,137,'subheader1',0),(1,58,138,'column-455 m-right-70 m-top-50',0),(1,58,139,'column-455  m-top-50',0),(1,58,140,'subheader2',0),(1,58,141,'column-640  m-top-50',0),(1,58,142,'column-300 m-left-40 m-top-50',0),(1,58,143,'column-455 m-right-70 m-top-70',0),(1,58,144,'column-455 m-top-70',0),(1,58,145,'subheader3',0),(1,58,146,'column-640 m-top-50',0),(1,58,147,'column-300_2 m-left-40 m-top-50',0),(1,58,150,'subheader4',0),(1,58,151,'column-640_4 m-top-50',0),(1,58,152,'column-300_4 m-left-40 m-top-50',0),(1,58,153,'column-300_4 m-left-55 m-top-40',0),(1,58,154,'column-300_4_2 m-top-55 m-right-40',0),(1,58,155,'column-300_4 m-top-55',0),(1,58,156,'subheader6',0),(1,58,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,58,158,'column-525_6 m-top-50',0),(1,58,159,'footer_logo',0),(1,58,160,'m-bottom-40',0),(1,58,163,'showcase-sub-container',0),(1,58,169,'pic-frame rounded 1',0),(1,58,170,'pic-frame rounded 2',0),(1,58,178,'column-455 m-right-70 m-top-70 list1',0),(1,58,179,'column-455 m-right-70 m-top-70 list2',0),(1,58,180,'column-455 m-right-70 m-top-70 list3',0),(1,58,181,'column-455 m-right-70 m-top-70 list4',0),(1,58,183,'header-wrapper',0),(1,58,186,'header-wrapper',0),(1,59,27,'Main',0),(1,59,28,'Header Image',0),(1,59,58,'Header',0),(1,59,62,'post',0),(1,59,64,'content',0),(1,59,65,'content',0),(1,59,67,'footer',0),(1,59,126,'sidebar',0),(1,59,132,'header-wrapper',0),(1,59,137,'subheader1',0),(1,59,138,'column-455 m-right-70 m-top-50',0),(1,59,139,'column-455  m-top-50',0),(1,59,140,'subheader2',0),(1,59,141,'column-640  m-top-50',0),(1,59,142,'column-300 m-left-40 m-top-50',0),(1,59,143,'column-455 m-right-70 m-top-70',0),(1,59,144,'column-455 m-top-70',0),(1,59,145,'subheader3',0),(1,59,146,'column-640 m-top-50',0),(1,59,147,'column-300_2 m-left-40 m-top-50',0),(1,59,150,'subheader4',0),(1,59,151,'column-640_4 m-top-50',0),(1,59,152,'column-300_4 m-left-40 m-top-50',0),(1,59,153,'column-300_4 m-left-55 m-top-40',0),(1,59,154,'column-300_4_2 m-top-55 m-right-40',0),(1,59,155,'column-300_4 m-top-55',0),(1,59,156,'subheader6',0),(1,59,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,59,158,'column-525_6 m-top-50',0),(1,59,159,'footer_logo',0),(1,59,160,'m-bottom-40',0),(1,59,163,'showcase-sub-container',0),(1,59,169,'pic-frame rounded 1',0),(1,59,170,'pic-frame rounded 2',0),(1,59,178,'column-455 m-right-70 m-top-70 list1',0),(1,59,179,'column-455 m-right-70 m-top-70 list2',0),(1,59,180,'column-455 m-right-70 m-top-70 list3',0),(1,59,181,'column-455 m-right-70 m-top-70 list4',0),(1,59,183,'header-wrapper',0),(1,60,27,'Main',0),(1,60,28,'Header Image',0),(1,60,58,'Header',0),(1,60,62,'post',0),(1,60,64,'content',0),(1,60,65,'content',0),(1,60,67,'footer',0),(1,60,126,'sidebar',0),(1,60,132,'header-wrapper',0),(1,60,137,'subheader1',0),(1,60,138,'column-455 m-right-70 m-top-50',0),(1,60,139,'column-455  m-top-50',0),(1,60,140,'subheader2',0),(1,60,141,'column-640  m-top-50',0),(1,60,142,'column-300 m-left-40 m-top-50',0),(1,60,143,'column-455 m-right-70 m-top-70',0),(1,60,144,'column-455 m-top-70',0),(1,60,145,'subheader3',0),(1,60,146,'column-640 m-top-50',0),(1,60,147,'column-300_2 m-left-40 m-top-50',0),(1,60,150,'subheader4',0),(1,60,151,'column-640_4 m-top-50',0),(1,60,152,'column-300_4 m-left-40 m-top-50',0),(1,60,153,'column-300_4 m-left-55 m-top-40',0),(1,60,154,'column-300_4_2 m-top-55 m-right-40',0),(1,60,155,'column-300_4 m-top-55',0),(1,60,156,'subheader6',0),(1,60,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,60,158,'column-525_6 m-top-50',0),(1,60,159,'footer_logo',0),(1,60,160,'m-bottom-40',0),(1,60,163,'showcase-sub-container',0),(1,60,169,'pic-frame rounded 1',0),(1,60,170,'pic-frame rounded 2',0),(1,60,178,'column-455 m-right-70 m-top-70 list1',0),(1,60,179,'column-455 m-right-70 m-top-70 list2',0),(1,60,180,'column-455 m-right-70 m-top-70 list3',0),(1,60,181,'column-455 m-right-70 m-top-70 list4',0),(1,60,183,'header-wrapper',0),(1,60,186,'header-wrapper',0),(1,61,27,'Main',0),(1,61,28,'Header Image',0),(1,61,58,'Header',0),(1,61,62,'post',0),(1,61,64,'content',0),(1,61,65,'content',0),(1,61,67,'footer',0),(1,61,126,'sidebar',0),(1,61,132,'header-wrapper',0),(1,61,137,'subheader1',0),(1,61,138,'column-455 m-right-70 m-top-50',0),(1,61,139,'column-455  m-top-50',0),(1,61,140,'subheader2',0),(1,61,141,'column-640  m-top-50',0),(1,61,142,'column-300 m-left-40 m-top-50',0),(1,61,143,'column-455 m-right-70 m-top-70',0),(1,61,144,'column-455 m-top-70',0),(1,61,145,'subheader3',0),(1,61,146,'column-640 m-top-50',0),(1,61,147,'column-300_2 m-left-40 m-top-50',0),(1,61,150,'subheader4',0),(1,61,151,'column-640_4 m-top-50',0),(1,61,152,'column-300_4 m-left-40 m-top-50',0),(1,61,153,'column-300_4 m-left-55 m-top-40',0),(1,61,154,'column-300_4_2 m-top-55 m-right-40',0),(1,61,155,'column-300_4 m-top-55',0),(1,61,156,'subheader6',0),(1,61,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,61,158,'column-525_6 m-top-50',0),(1,61,159,'footer_logo',0),(1,61,160,'m-bottom-40',0),(1,61,163,'showcase-sub-container',0),(1,61,169,'pic-frame rounded 1',0),(1,61,170,'pic-frame rounded 2',0),(1,61,178,'column-455 m-right-70 m-top-70 list1',0),(1,61,179,'column-455 m-right-70 m-top-70 list2',0),(1,61,180,'column-455 m-right-70 m-top-70 list3',0),(1,61,181,'column-455 m-right-70 m-top-70 list4',0),(1,61,183,'header-wrapper',0),(1,62,27,'Main',0),(1,62,28,'Header Image',0),(1,62,58,'Header',0),(1,62,62,'post',0),(1,62,64,'content',0),(1,62,65,'content',0),(1,62,67,'footer',0),(1,62,126,'sidebar',0),(1,62,132,'header-wrapper',0),(1,62,137,'subheader1',0),(1,62,138,'column-455 m-right-70 m-top-50',0),(1,62,139,'column-455  m-top-50',0),(1,62,140,'subheader2',0),(1,62,141,'column-640  m-top-50',0),(1,62,142,'column-300 m-left-40 m-top-50',0),(1,62,143,'column-455 m-right-70 m-top-70',0),(1,62,144,'column-455 m-top-70',0),(1,62,145,'subheader3',0),(1,62,146,'column-640 m-top-50',0),(1,62,147,'column-300_2 m-left-40 m-top-50',0),(1,62,150,'subheader4',0),(1,62,151,'column-640_4 m-top-50',0),(1,62,152,'column-300_4 m-left-40 m-top-50',0),(1,62,153,'column-300_4 m-left-55 m-top-40',0),(1,62,154,'column-300_4_2 m-top-55 m-right-40',0),(1,62,155,'column-300_4 m-top-55',0),(1,62,156,'subheader6',0),(1,62,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,62,158,'column-525_6 m-top-50',0),(1,62,159,'footer_logo',0),(1,62,160,'m-bottom-40',0),(1,62,163,'showcase-sub-container',0),(1,62,169,'pic-frame rounded 1',0),(1,62,170,'pic-frame rounded 2',0),(1,62,178,'column-455 m-right-70 m-top-70 list1',0),(1,62,179,'column-455 m-right-70 m-top-70 list2',0),(1,62,180,'column-455 m-right-70 m-top-70 list3',0),(1,62,181,'column-455 m-right-70 m-top-70 list4',0),(1,62,183,'header-wrapper',0),(1,62,189,'header-wrapper',0),(1,63,27,'Main',0),(1,63,28,'Header Image',0),(1,63,58,'Header',0),(1,63,62,'post',0),(1,63,64,'content',0),(1,63,65,'content',0),(1,63,67,'footer',0),(1,63,126,'sidebar',0),(1,63,132,'header-wrapper',0),(1,63,137,'subheader1',0),(1,63,138,'column-455 m-right-70 m-top-50',0),(1,63,139,'column-455  m-top-50',0),(1,63,140,'subheader2',0),(1,63,141,'column-640  m-top-50',0),(1,63,142,'column-300 m-left-40 m-top-50',0),(1,63,143,'column-455 m-right-70 m-top-70',0),(1,63,144,'column-455 m-top-70',0),(1,63,145,'subheader3',0),(1,63,146,'column-640 m-top-50',0),(1,63,147,'column-300_2 m-left-40 m-top-50',0),(1,63,150,'subheader4',0),(1,63,151,'column-640_4 m-top-50',0),(1,63,152,'column-300_4 m-left-40 m-top-50',0),(1,63,153,'column-300_4 m-left-55 m-top-40',0),(1,63,154,'column-300_4_2 m-top-55 m-right-40',0),(1,63,155,'column-300_4 m-top-55',0),(1,63,156,'subheader6',0),(1,63,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,63,158,'column-525_6 m-top-50',0),(1,63,159,'footer_logo',0),(1,63,160,'m-bottom-40',0),(1,63,163,'showcase-sub-container',0),(1,63,169,'pic-frame rounded 1',0),(1,63,170,'pic-frame rounded 2',0),(1,63,179,'column-455 m-right-70 m-top-70 list2',0),(1,63,180,'column-455 m-right-70 m-top-70 list3',0),(1,63,181,'column-455 m-right-70 m-top-70 list4',0),(1,63,183,'header-wrapper',0),(1,63,189,'header-wrapper',0),(1,63,190,'column-455 m-right-70 m-top-70 list1',0),(1,64,27,'Main',0),(1,64,28,'Header Image',0),(1,64,58,'Header',0),(1,64,62,'post',0),(1,64,64,'content',0),(1,64,65,'content',0),(1,64,67,'footer',0),(1,64,126,'sidebar',0),(1,64,132,'header-wrapper',0),(1,64,137,'subheader1',0),(1,64,138,'column-455 m-right-70 m-top-50',0),(1,64,139,'column-455  m-top-50',0),(1,64,140,'subheader2',0),(1,64,141,'column-640  m-top-50',0),(1,64,142,'column-300 m-left-40 m-top-50',0),(1,64,143,'column-455 m-right-70 m-top-70',0),(1,64,144,'column-455 m-top-70',0),(1,64,145,'subheader3',0),(1,64,146,'column-640 m-top-50',0),(1,64,147,'column-300_2 m-left-40 m-top-50',0),(1,64,150,'subheader4',0),(1,64,151,'column-640_4 m-top-50',0),(1,64,152,'column-300_4 m-left-40 m-top-50',0),(1,64,153,'column-300_4 m-left-55 m-top-40',0),(1,64,154,'column-300_4_2 m-top-55 m-right-40',0),(1,64,155,'column-300_4 m-top-55',0),(1,64,156,'subheader6',0),(1,64,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,64,158,'column-525_6 m-top-50',0),(1,64,159,'footer_logo',0),(1,64,160,'m-bottom-40',0),(1,64,163,'showcase-sub-container',0),(1,64,169,'pic-frame rounded 1',0),(1,64,170,'pic-frame rounded 2',0),(1,64,179,'column-455 m-right-70 m-top-70 list2',0),(1,64,180,'column-455 m-right-70 m-top-70 list3',0),(1,64,181,'column-455 m-right-70 m-top-70 list4',0),(1,64,183,'header-wrapper',0),(1,64,189,'header-wrapper',0),(1,64,191,'column-455 m-right-70 m-top-70 list1',0),(1,65,27,'Main',0),(1,65,28,'Header Image',0),(1,65,58,'Header',0),(1,65,62,'post',0),(1,65,64,'content',0),(1,65,65,'content',0),(1,65,67,'footer',0),(1,65,126,'sidebar',0),(1,65,132,'header-wrapper',0),(1,65,137,'subheader1',0),(1,65,138,'column-455 m-right-70 m-top-50',0),(1,65,139,'column-455  m-top-50',0),(1,65,140,'subheader2',0),(1,65,141,'column-640  m-top-50',0),(1,65,142,'column-300 m-left-40 m-top-50',0),(1,65,143,'column-455 m-right-70 m-top-70',0),(1,65,144,'column-455 m-top-70',0),(1,65,145,'subheader3',0),(1,65,146,'column-640 m-top-50',0),(1,65,147,'column-300_2 m-left-40 m-top-50',0),(1,65,150,'subheader4',0),(1,65,151,'column-640_4 m-top-50',0),(1,65,152,'column-300_4 m-left-40 m-top-50',0),(1,65,153,'column-300_4 m-left-55 m-top-40',0),(1,65,154,'column-300_4_2 m-top-55 m-right-40',0),(1,65,155,'column-300_4 m-top-55',0),(1,65,156,'subheader6',0),(1,65,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,65,158,'column-525_6 m-top-50',0),(1,65,159,'footer_logo',0),(1,65,160,'m-bottom-40',0),(1,65,163,'showcase-sub-container',0),(1,65,169,'pic-frame rounded 1',0),(1,65,170,'pic-frame rounded 2',0),(1,65,179,'column-455 m-right-70 m-top-70 list2',0),(1,65,180,'column-455 m-right-70 m-top-70 list3',0),(1,65,181,'column-455 m-right-70 m-top-70 list4',0),(1,65,183,'header-wrapper',0),(1,65,189,'header-wrapper',0),(1,65,192,'column-455 m-right-70 m-top-70 list1',0),(1,66,27,'Main',0),(1,66,28,'Header Image',0),(1,66,58,'Header',0),(1,66,62,'post',0),(1,66,64,'content',0),(1,66,65,'content',0),(1,66,67,'footer',0),(1,66,126,'sidebar',0),(1,66,132,'header-wrapper',0),(1,66,137,'subheader1',0),(1,66,138,'column-455 m-right-70 m-top-50',0),(1,66,139,'column-455  m-top-50',0),(1,66,140,'subheader2',0),(1,66,141,'column-640  m-top-50',0),(1,66,142,'column-300 m-left-40 m-top-50',0),(1,66,143,'column-455 m-right-70 m-top-70',0),(1,66,144,'column-455 m-top-70',0),(1,66,145,'subheader3',0),(1,66,146,'column-640 m-top-50',0),(1,66,147,'column-300_2 m-left-40 m-top-50',0),(1,66,150,'subheader4',0),(1,66,151,'column-640_4 m-top-50',0),(1,66,152,'column-300_4 m-left-40 m-top-50',0),(1,66,153,'column-300_4 m-left-55 m-top-40',0),(1,66,154,'column-300_4_2 m-top-55 m-right-40',0),(1,66,155,'column-300_4 m-top-55',0),(1,66,156,'subheader6',0),(1,66,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,66,158,'column-525_6 m-top-50',0),(1,66,159,'footer_logo',0),(1,66,160,'m-bottom-40',0),(1,66,163,'showcase-sub-container',0),(1,66,169,'pic-frame rounded 1',0),(1,66,170,'pic-frame rounded 2',0),(1,66,179,'column-455 m-right-70 m-top-70 list2',0),(1,66,180,'column-455 m-right-70 m-top-70 list3',0),(1,66,181,'column-455 m-right-70 m-top-70 list4',0),(1,66,183,'header-wrapper',0),(1,66,189,'header-wrapper',0),(1,66,193,'column-455 m-right-70 m-top-70 list1',0),(1,67,27,'Main',0),(1,67,28,'Header Image',0),(1,67,58,'Header',0),(1,67,62,'post',0),(1,67,64,'content',0),(1,67,65,'content',0),(1,67,67,'footer',0),(1,67,126,'sidebar',0),(1,67,132,'header-wrapper',0),(1,67,137,'subheader1',0),(1,67,138,'column-455 m-right-70 m-top-50',0),(1,67,139,'column-455  m-top-50',0),(1,67,140,'subheader2',0),(1,67,141,'column-640  m-top-50',0),(1,67,142,'column-300 m-left-40 m-top-50',0),(1,67,143,'column-455 m-right-70 m-top-70',0),(1,67,144,'column-455 m-top-70',0),(1,67,145,'subheader3',0),(1,67,146,'column-640 m-top-50',0),(1,67,147,'column-300_2 m-left-40 m-top-50',0),(1,67,150,'subheader4',0),(1,67,151,'column-640_4 m-top-50',0),(1,67,152,'column-300_4 m-left-40 m-top-50',0),(1,67,153,'column-300_4 m-left-55 m-top-40',0),(1,67,154,'column-300_4_2 m-top-55 m-right-40',0),(1,67,155,'column-300_4 m-top-55',0),(1,67,156,'subheader6',0),(1,67,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,67,158,'column-525_6 m-top-50',0),(1,67,159,'footer_logo',0),(1,67,160,'m-bottom-40',0),(1,67,163,'showcase-sub-container',0),(1,67,169,'pic-frame rounded 1',0),(1,67,170,'pic-frame rounded 2',0),(1,67,179,'column-455 m-right-70 m-top-70 list2',0),(1,67,180,'column-455 m-right-70 m-top-70 list3',0),(1,67,183,'header-wrapper',0),(1,67,189,'header-wrapper',0),(1,67,193,'column-455 m-right-70 m-top-70 list1',0),(1,67,194,'column-455 m-right-70 m-top-70 list4',0),(1,68,27,'Main',0),(1,68,28,'Header Image',0),(1,68,58,'Header',0),(1,68,62,'post',0),(1,68,64,'content',0),(1,68,65,'content',0),(1,68,67,'footer',0),(1,68,126,'sidebar',0),(1,68,132,'header-wrapper',0),(1,68,137,'subheader1',0),(1,68,138,'column-455 m-right-70 m-top-50',0),(1,68,139,'column-455  m-top-50',0),(1,68,140,'subheader2',0),(1,68,141,'column-640  m-top-50',0),(1,68,142,'column-300 m-left-40 m-top-50',0),(1,68,143,'column-455 m-right-70 m-top-70',0),(1,68,144,'column-455 m-top-70',0),(1,68,145,'subheader3',0),(1,68,146,'column-640 m-top-50',0),(1,68,147,'column-300_2 m-left-40 m-top-50',0),(1,68,150,'subheader4',0),(1,68,151,'column-640_4 m-top-50',0),(1,68,152,'column-300_4 m-left-40 m-top-50',0),(1,68,153,'column-300_4 m-left-55 m-top-40',0),(1,68,154,'column-300_4_2 m-top-55 m-right-40',0),(1,68,155,'column-300_4 m-top-55',0),(1,68,156,'subheader6',0),(1,68,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,68,158,'column-525_6 m-top-50',0),(1,68,159,'footer_logo',0),(1,68,160,'m-bottom-40',0),(1,68,163,'showcase-sub-container',0),(1,68,169,'pic-frame rounded 1',0),(1,68,170,'pic-frame rounded 2',0),(1,68,179,'column-455 m-right-70 m-top-70 list2',0),(1,68,180,'column-455 m-right-70 m-top-70 list3',0),(1,68,183,'header-wrapper',0),(1,68,189,'header-wrapper',0),(1,68,193,'column-455 m-right-70 m-top-70 list1',0),(1,68,195,'column-455 m-right-70 m-top-70 list4',0),(1,69,27,'Main',0),(1,69,28,'Header Image',0),(1,69,58,'Header',0),(1,69,62,'post',0),(1,69,64,'content',0),(1,69,65,'content',0),(1,69,67,'footer',0),(1,69,126,'sidebar',0),(1,69,132,'header-wrapper',0),(1,69,137,'subheader1',0),(1,69,138,'column-455 m-right-70 m-top-50',0),(1,69,139,'column-455  m-top-50',0),(1,69,140,'subheader2',0),(1,69,141,'column-640  m-top-50',0),(1,69,142,'column-300 m-left-40 m-top-50',0),(1,69,143,'column-455 m-right-70 m-top-70',0),(1,69,144,'column-455 m-top-70',0),(1,69,145,'subheader3',0),(1,69,146,'column-640 m-top-50',0),(1,69,147,'column-300_2 m-left-40 m-top-50',0),(1,69,150,'subheader4',0),(1,69,151,'column-640_4 m-top-50',0),(1,69,152,'column-300_4 m-left-40 m-top-50',0),(1,69,153,'column-300_4 m-left-55 m-top-40',0),(1,69,154,'column-300_4_2 m-top-55 m-right-40',0),(1,69,155,'column-300_4 m-top-55',0),(1,69,156,'subheader6',0),(1,69,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,69,158,'column-525_6 m-top-50',0),(1,69,159,'footer_logo',0),(1,69,160,'m-bottom-40',0),(1,69,163,'showcase-sub-container',0),(1,69,169,'pic-frame rounded 1',0),(1,69,170,'pic-frame rounded 2',0),(1,69,179,'column-455 m-right-70 m-top-70 list2',0),(1,69,180,'column-455 m-right-70 m-top-70 list3',0),(1,69,183,'header-wrapper',0),(1,69,189,'header-wrapper',0),(1,69,195,'column-455 m-right-70 m-top-70 list4',0),(1,69,196,'column-455 m-right-70 m-top-70 list1',0),(1,70,27,'Main',0),(1,70,28,'Header Image',0),(1,70,58,'Header',0),(1,70,62,'post',0),(1,70,64,'content',0),(1,70,65,'content',0),(1,70,67,'footer',0),(1,70,126,'sidebar',0),(1,70,132,'header-wrapper',0),(1,70,137,'subheader1',0),(1,70,138,'column-455 m-right-70 m-top-50',0),(1,70,139,'column-455  m-top-50',0),(1,70,140,'subheader2',0),(1,70,141,'column-640  m-top-50',0),(1,70,142,'column-300 m-left-40 m-top-50',0),(1,70,143,'column-455 m-right-70 m-top-70',0),(1,70,144,'column-455 m-top-70',0),(1,70,145,'subheader3',0),(1,70,146,'column-640 m-top-50',0),(1,70,147,'column-300_2 m-left-40 m-top-50',0),(1,70,150,'subheader4',0),(1,70,151,'column-640_4 m-top-50',0),(1,70,152,'column-300_4 m-left-40 m-top-50',0),(1,70,153,'column-300_4 m-left-55 m-top-40',0),(1,70,154,'column-300_4_2 m-top-55 m-right-40',0),(1,70,155,'column-300_4 m-top-55',0),(1,70,156,'subheader6',0),(1,70,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,70,158,'column-525_6 m-top-50',0),(1,70,159,'footer_logo',0),(1,70,160,'m-bottom-40',0),(1,70,163,'showcase-sub-container',0),(1,70,169,'pic-frame rounded 1',0),(1,70,170,'pic-frame rounded 2',0),(1,70,179,'column-455 m-right-70 m-top-70 list2',0),(1,70,180,'column-455 m-right-70 m-top-70 list3',0),(1,70,183,'header-wrapper',0),(1,70,189,'header-wrapper',0),(1,70,195,'column-455 m-right-70 m-top-70 list4',0),(1,70,197,'column-455 m-right-70 m-top-70 list1',0),(1,71,27,'Main',0),(1,71,28,'Header Image',0),(1,71,58,'Header',0),(1,71,62,'post',0),(1,71,64,'content',0),(1,71,65,'content',0),(1,71,67,'footer',0),(1,71,126,'sidebar',0),(1,71,132,'header-wrapper',0),(1,71,137,'subheader1',0),(1,71,138,'column-455 m-right-70 m-top-50',0),(1,71,139,'column-455  m-top-50',0),(1,71,140,'subheader2',0),(1,71,141,'column-640  m-top-50',0),(1,71,142,'column-300 m-left-40 m-top-50',0),(1,71,143,'column-455 m-right-70 m-top-70',0),(1,71,144,'column-455 m-top-70',0),(1,71,145,'subheader3',0),(1,71,146,'column-640 m-top-50',0),(1,71,147,'column-300_2 m-left-40 m-top-50',0),(1,71,150,'subheader4',0),(1,71,151,'column-640_4 m-top-50',0),(1,71,152,'column-300_4 m-left-40 m-top-50',0),(1,71,153,'column-300_4 m-left-55 m-top-40',0),(1,71,154,'column-300_4_2 m-top-55 m-right-40',0),(1,71,155,'column-300_4 m-top-55',0),(1,71,156,'subheader6',0),(1,71,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,71,158,'column-525_6 m-top-50',0),(1,71,159,'footer_logo',0),(1,71,160,'m-bottom-40',0),(1,71,163,'showcase-sub-container',0),(1,71,169,'pic-frame rounded 1',0),(1,71,170,'pic-frame rounded 2',0),(1,71,179,'column-455 m-right-70 m-top-70 list2',0),(1,71,180,'column-455 m-right-70 m-top-70 list3',0),(1,71,183,'header-wrapper',0),(1,71,189,'header-wrapper',0),(1,71,195,'column-455 m-right-70 m-top-70 list4',0),(1,71,198,'column-455 m-right-70 m-top-70 list1',0),(1,72,27,'Main',0),(1,72,28,'Header Image',0),(1,72,58,'Header',0),(1,72,62,'post',0),(1,72,64,'content',0),(1,72,65,'content',0),(1,72,67,'footer',0),(1,72,126,'sidebar',0),(1,72,132,'header-wrapper',0),(1,72,137,'subheader1',0),(1,72,138,'column-455 m-right-70 m-top-50',0),(1,72,139,'column-455  m-top-50',0),(1,72,140,'subheader2',0),(1,72,141,'column-640  m-top-50',0),(1,72,142,'column-300 m-left-40 m-top-50',0),(1,72,143,'column-455 m-right-70 m-top-70',0),(1,72,144,'column-455 m-top-70',0),(1,72,145,'subheader3',0),(1,72,146,'column-640 m-top-50',0),(1,72,147,'column-300_2 m-left-40 m-top-50',0),(1,72,150,'subheader4',0),(1,72,151,'column-640_4 m-top-50',0),(1,72,152,'column-300_4 m-left-40 m-top-50',0),(1,72,153,'column-300_4 m-left-55 m-top-40',0),(1,72,154,'column-300_4_2 m-top-55 m-right-40',0),(1,72,155,'column-300_4 m-top-55',0),(1,72,156,'subheader6',0),(1,72,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,72,158,'column-525_6 m-top-50',0),(1,72,159,'footer_logo',0),(1,72,160,'m-bottom-40',0),(1,72,163,'showcase-sub-container',0),(1,72,169,'pic-frame rounded 1',0),(1,72,170,'pic-frame rounded 2',0),(1,72,179,'column-455 m-right-70 m-top-70 list2',0),(1,72,180,'column-455 m-right-70 m-top-70 list3',0),(1,72,183,'header-wrapper',0),(1,72,189,'header-wrapper',0),(1,72,195,'column-455 m-right-70 m-top-70 list4',0),(1,72,199,'column-455 m-right-70 m-top-70 list1',0),(1,73,27,'Main',0),(1,73,28,'Header Image',0),(1,73,58,'Header',0),(1,73,62,'post',0),(1,73,64,'content',0),(1,73,65,'content',0),(1,73,67,'footer',0),(1,73,126,'sidebar',0),(1,73,132,'header-wrapper',0),(1,73,137,'subheader1',0),(1,73,138,'column-455 m-right-70 m-top-50',0),(1,73,139,'column-455  m-top-50',0),(1,73,140,'subheader2',0),(1,73,141,'column-640  m-top-50',0),(1,73,142,'column-300 m-left-40 m-top-50',0),(1,73,143,'column-455 m-right-70 m-top-70',0),(1,73,144,'column-455 m-top-70',0),(1,73,145,'subheader3',0),(1,73,146,'column-640 m-top-50',0),(1,73,147,'column-300_2 m-left-40 m-top-50',0),(1,73,150,'subheader4',0),(1,73,151,'column-640_4 m-top-50',0),(1,73,152,'column-300_4 m-left-40 m-top-50',0),(1,73,153,'column-300_4 m-left-55 m-top-40',0),(1,73,154,'column-300_4_2 m-top-55 m-right-40',0),(1,73,155,'column-300_4 m-top-55',0),(1,73,156,'subheader6',0),(1,73,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,73,158,'column-525_6 m-top-50',0),(1,73,159,'footer_logo',0),(1,73,160,'m-bottom-40',0),(1,73,163,'showcase-sub-container',0),(1,73,169,'pic-frame rounded 1',0),(1,73,170,'pic-frame rounded 2',0),(1,73,179,'column-455 m-right-70 m-top-70 list2',0),(1,73,180,'column-455 m-right-70 m-top-70 list3',0),(1,73,183,'header-wrapper',0),(1,73,189,'header-wrapper',0),(1,73,200,'column-455 m-right-70 m-top-70 list1',0),(1,73,201,'column-455 m-right-70 m-top-70 list4',0),(1,74,27,'Main',0),(1,74,28,'Header Image',0),(1,74,58,'Header',0),(1,74,62,'post',0),(1,74,64,'content',0),(1,74,65,'content',0),(1,74,67,'footer',0),(1,74,126,'sidebar',0),(1,74,132,'header-wrapper',0),(1,74,137,'subheader1',0),(1,74,138,'column-455 m-right-70 m-top-50',0),(1,74,139,'column-455  m-top-50',0),(1,74,140,'subheader2',0),(1,74,141,'column-640  m-top-50',0),(1,74,142,'column-300 m-left-40 m-top-50',0),(1,74,143,'column-455 m-right-70 m-top-70',0),(1,74,144,'column-455 m-top-70',0),(1,74,145,'subheader3',0),(1,74,146,'column-640 m-top-50',0),(1,74,147,'column-300_2 m-left-40 m-top-50',0),(1,74,150,'subheader4',0),(1,74,151,'column-640_4 m-top-50',0),(1,74,152,'column-300_4 m-left-40 m-top-50',0),(1,74,153,'column-300_4 m-left-55 m-top-40',0),(1,74,154,'column-300_4_2 m-top-55 m-right-40',0),(1,74,155,'column-300_4 m-top-55',0),(1,74,156,'subheader6',0),(1,74,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,74,158,'column-525_6 m-top-50',0),(1,74,159,'footer_logo',0),(1,74,160,'m-bottom-40',0),(1,74,163,'showcase-sub-container',0),(1,74,169,'pic-frame rounded 1',0),(1,74,170,'pic-frame rounded 2',0),(1,74,183,'header-wrapper',0),(1,74,189,'header-wrapper',0),(1,74,202,'column-455 m-right-70 m-top-70 list1',0),(1,74,203,'column-455 m-right-70 m-top-70 list2',0),(1,74,204,'column-455 m-right-70 m-top-70 list3',0),(1,74,205,'column-455 m-right-70 m-top-70 list4',0),(1,75,27,'Main',0),(1,75,28,'Header Image',0),(1,75,58,'Header',0),(1,75,62,'post',0),(1,75,64,'content',0),(1,75,65,'content',0),(1,75,67,'footer',0),(1,75,126,'sidebar',0),(1,75,132,'header-wrapper',0),(1,75,137,'subheader1',0),(1,75,138,'column-455 m-right-70 m-top-50',0),(1,75,139,'column-455  m-top-50',0),(1,75,140,'subheader2',0),(1,75,141,'column-640  m-top-50',0),(1,75,143,'column-455 m-right-70 m-top-70',0),(1,75,144,'column-455 m-top-70',0),(1,75,145,'subheader3',0),(1,75,146,'column-640 m-top-50',0),(1,75,147,'column-300_2 m-left-40 m-top-50',0),(1,75,150,'subheader4',0),(1,75,151,'column-640_4 m-top-50',0),(1,75,152,'column-300_4 m-left-40 m-top-50',0),(1,75,153,'column-300_4 m-left-55 m-top-40',0),(1,75,154,'column-300_4_2 m-top-55 m-right-40',0),(1,75,155,'column-300_4 m-top-55',0),(1,75,156,'subheader6',0),(1,75,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,75,158,'column-525_6 m-top-50',0),(1,75,159,'footer_logo',0),(1,75,160,'m-bottom-40',0),(1,75,163,'showcase-sub-container',0),(1,75,169,'pic-frame rounded 1',0),(1,75,170,'pic-frame rounded 2',0),(1,75,183,'header-wrapper',0),(1,75,189,'header-wrapper',0),(1,75,203,'column-455 m-right-70 m-top-70 list2',0),(1,75,206,'column-455 m-right-70 m-top-70 list3',0),(1,75,207,'column-300 m-left-40 m-top-50',0),(1,75,208,'column-455 m-right-70 m-top-70 list1',0),(1,75,209,'column-455 m-right-70 m-top-70 list4',0),(1,76,27,'Main',0),(1,76,28,'Header Image',0),(1,76,58,'Header',0),(1,76,62,'post',0),(1,76,64,'content',0),(1,76,65,'content',0),(1,76,67,'footer',0),(1,76,126,'sidebar',0),(1,76,132,'header-wrapper',0),(1,76,137,'subheader1',0),(1,76,138,'column-455 m-right-70 m-top-50',0),(1,76,139,'column-455  m-top-50',0),(1,76,140,'subheader2',0),(1,76,141,'column-640  m-top-50',0),(1,76,143,'column-455 m-right-70 m-top-70',0),(1,76,144,'column-455 m-top-70',0),(1,76,145,'subheader3',0),(1,76,146,'column-640 m-top-50',0),(1,76,147,'column-300_2 m-left-40 m-top-50',0),(1,76,150,'subheader4',0),(1,76,151,'column-640_4 m-top-50',0),(1,76,152,'column-300_4 m-left-40 m-top-50',0),(1,76,153,'column-300_4 m-left-55 m-top-40',0),(1,76,154,'column-300_4_2 m-top-55 m-right-40',0),(1,76,155,'column-300_4 m-top-55',0),(1,76,156,'subheader6',0),(1,76,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,76,158,'column-525_6 m-top-50',0),(1,76,159,'footer_logo',0),(1,76,160,'m-bottom-40',0),(1,76,163,'showcase-sub-container',0),(1,76,169,'pic-frame rounded 1',0),(1,76,170,'pic-frame rounded 2',0),(1,76,183,'header-wrapper',0),(1,76,189,'header-wrapper',0),(1,76,203,'column-455 m-right-70 m-top-70 list2',0),(1,76,206,'column-455 m-right-70 m-top-70 list3',0),(1,76,207,'column-300 m-left-40 m-top-50',0),(1,76,209,'column-455 m-right-70 m-top-70 list4',0),(1,76,210,'column-455 m-right-70 m-top-70 list1',0),(1,77,27,'Main',0),(1,77,28,'Header Image',0),(1,77,58,'Header',0),(1,77,62,'post',0),(1,77,64,'content',0),(1,77,65,'content',0),(1,77,67,'footer',0),(1,77,126,'sidebar',0),(1,77,132,'header-wrapper',0),(1,77,137,'subheader1',0),(1,77,138,'column-455 m-right-70 m-top-50',0),(1,77,139,'column-455  m-top-50',0),(1,77,140,'subheader2',0),(1,77,141,'column-640  m-top-50',0),(1,77,143,'column-455 m-right-70 m-top-70',0),(1,77,144,'column-455 m-top-70',0),(1,77,145,'subheader3',0),(1,77,146,'column-640 m-top-50',0),(1,77,147,'column-300_2 m-left-40 m-top-50',0),(1,77,150,'subheader4',0),(1,77,151,'column-640_4 m-top-50',0),(1,77,152,'column-300_4 m-left-40 m-top-50',0),(1,77,153,'column-300_4 m-left-55 m-top-40',0),(1,77,154,'column-300_4_2 m-top-55 m-right-40',0),(1,77,155,'column-300_4 m-top-55',0),(1,77,156,'subheader6',0),(1,77,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,77,158,'column-525_6 m-top-50',0),(1,77,159,'footer_logo',0),(1,77,160,'m-bottom-40',0),(1,77,163,'showcase-sub-container',0),(1,77,169,'pic-frame rounded 1',0),(1,77,170,'pic-frame rounded 2',0),(1,77,183,'header-wrapper',0),(1,77,189,'header-wrapper',0),(1,77,206,'column-455 m-right-70 m-top-70 list3',0),(1,77,207,'column-300 m-left-40 m-top-50',0),(1,77,209,'column-455 m-right-70 m-top-70 list4',0),(1,77,211,'column-455 m-right-70 m-top-70 list1',0),(1,77,212,'column-455 m-right-70 m-top-70 list2',0),(1,78,27,'Main',0),(1,78,28,'Header Image',0),(1,78,58,'Header',0),(1,78,62,'post',0),(1,78,64,'content',0),(1,78,65,'content',0),(1,78,67,'footer',0),(1,78,126,'sidebar',0),(1,78,132,'header-wrapper',0),(1,78,137,'subheader1',0),(1,78,138,'column-455 m-right-70 m-top-50',0),(1,78,139,'column-455  m-top-50',0),(1,78,140,'subheader2',0),(1,78,141,'column-640  m-top-50',0),(1,78,144,'column-455 m-top-70',0),(1,78,145,'subheader3',0),(1,78,146,'column-640 m-top-50',0),(1,78,147,'column-300_2 m-left-40 m-top-50',0),(1,78,150,'subheader4',0),(1,78,151,'column-640_4 m-top-50',0),(1,78,152,'column-300_4 m-left-40 m-top-50',0),(1,78,153,'column-300_4 m-left-55 m-top-40',0),(1,78,154,'column-300_4_2 m-top-55 m-right-40',0),(1,78,155,'column-300_4 m-top-55',0),(1,78,156,'subheader6',0),(1,78,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,78,158,'column-525_6 m-top-50',0),(1,78,159,'footer_logo',0),(1,78,160,'m-bottom-40',0),(1,78,163,'showcase-sub-container',0),(1,78,169,'pic-frame rounded 1',0),(1,78,170,'pic-frame rounded 2',0),(1,78,183,'header-wrapper',0),(1,78,189,'header-wrapper',0),(1,78,206,'column-455 m-right-70 m-top-70 list3',0),(1,78,207,'column-300 m-left-40 m-top-50',0),(1,78,209,'column-455 m-right-70 m-top-70 list4',0),(1,78,211,'column-455 m-right-70 m-top-70 list1',0),(1,78,212,'column-455 m-right-70 m-top-70 list2',0),(1,78,213,'column-455 m-right-70 m-top-70',0),(1,79,27,'Main',0),(1,79,28,'Header Image',0),(1,79,58,'Header',0),(1,79,62,'post',0),(1,79,64,'content',0),(1,79,65,'content',0),(1,79,67,'footer',0),(1,79,126,'sidebar',0),(1,79,132,'header-wrapper',0),(1,79,137,'subheader1',0),(1,79,138,'column-455 m-right-70 m-top-50',0),(1,79,139,'column-455  m-top-50',0),(1,79,140,'subheader2',0),(1,79,141,'column-640  m-top-50',0),(1,79,144,'column-455 m-top-70',0),(1,79,145,'subheader3',0),(1,79,146,'column-640 m-top-50',0),(1,79,147,'column-300_2 m-left-40 m-top-50',0),(1,79,150,'subheader4',0),(1,79,151,'column-640_4 m-top-50',0),(1,79,152,'column-300_4 m-left-40 m-top-50',0),(1,79,159,'footer_logo',0),(1,79,160,'m-bottom-40',0),(1,79,163,'showcase-sub-container',0),(1,79,169,'pic-frame rounded 1',0),(1,79,170,'pic-frame rounded 2',0),(1,79,183,'header-wrapper',0),(1,79,189,'header-wrapper',0),(1,79,206,'column-455 m-right-70 m-top-70 list3',0),(1,79,207,'column-300 m-left-40 m-top-50',0),(1,79,209,'column-455 m-right-70 m-top-70 list4',0),(1,79,211,'column-455 m-right-70 m-top-70 list1',0),(1,79,212,'column-455 m-right-70 m-top-70 list2',0),(1,79,213,'column-455 m-right-70 m-top-70',0),(1,79,214,'subheader6',0),(1,79,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,79,216,'column-525_6 m-top-50',0),(1,79,217,'column-300_4 m-left-55 m-top-40',0),(1,79,218,'column-300_4_2 m-top-55 m-right-40',0),(1,79,219,'column-300_4 m-top-55',0),(1,80,27,'Main',0),(1,80,28,'Header Image',0),(1,80,58,'Header',0),(1,80,62,'post',0),(1,80,64,'content',0),(1,80,65,'content',0),(1,80,67,'footer',0),(1,80,126,'sidebar',0),(1,80,132,'header-wrapper',0),(1,80,137,'subheader1',0),(1,80,138,'column-455 m-right-70 m-top-50',0),(1,80,139,'column-455  m-top-50',0),(1,80,140,'subheader2',0),(1,80,141,'column-640  m-top-50',0),(1,80,144,'column-455 m-top-70',0),(1,80,145,'subheader3',0),(1,80,146,'column-640 m-top-50',0),(1,80,147,'column-300_2 m-left-40 m-top-50',0),(1,80,150,'subheader4',0),(1,80,159,'footer_logo',0),(1,80,160,'m-bottom-40',0),(1,80,163,'showcase-sub-container',0),(1,80,169,'pic-frame rounded 1',0),(1,80,170,'pic-frame rounded 2',0),(1,80,183,'header-wrapper',0),(1,80,189,'header-wrapper',0),(1,80,206,'column-455 m-right-70 m-top-70 list3',0),(1,80,207,'column-300 m-left-40 m-top-50',0),(1,80,209,'column-455 m-right-70 m-top-70 list4',0),(1,80,211,'column-455 m-right-70 m-top-70 list1',0),(1,80,212,'column-455 m-right-70 m-top-70 list2',0),(1,80,213,'column-455 m-right-70 m-top-70',0),(1,80,214,'subheader6',0),(1,80,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,80,216,'column-525_6 m-top-50',0),(1,80,218,'column-300_4_2 m-top-55 m-right-40',0),(1,80,219,'column-300_4 m-top-55',0),(1,80,220,'column-300_4 m-left-55 m-top-40',0),(1,80,221,'column-640_4 m-top-50',0),(1,80,222,'column-300_4 m-left-40 m-top-50',0),(1,81,27,'Main',0),(1,81,28,'Header Image',0),(1,81,58,'Header',0),(1,81,62,'post',0),(1,81,64,'content',0),(1,81,65,'content',0),(1,81,67,'footer',0),(1,81,126,'sidebar',0),(1,81,132,'header-wrapper',0),(1,81,137,'subheader1',0),(1,81,138,'column-455 m-right-70 m-top-50',0),(1,81,139,'column-455  m-top-50',0),(1,81,140,'subheader2',0),(1,81,141,'column-640  m-top-50',0),(1,81,144,'column-455 m-top-70',0),(1,81,145,'subheader3',0),(1,81,146,'column-640 m-top-50',0),(1,81,147,'column-300_2 m-left-40 m-top-50',0),(1,81,150,'subheader4',0),(1,81,159,'footer_logo',0),(1,81,160,'m-bottom-40',0),(1,81,163,'showcase-sub-container',0),(1,81,169,'pic-frame rounded 1',0),(1,81,170,'pic-frame rounded 2',0),(1,81,183,'header-wrapper',0),(1,81,189,'header-wrapper',0),(1,81,206,'column-455 m-right-70 m-top-70 list3',0),(1,81,207,'column-300 m-left-40 m-top-50',0),(1,81,209,'column-455 m-right-70 m-top-70 list4',0),(1,81,212,'column-455 m-right-70 m-top-70 list2',0),(1,81,213,'column-455 m-right-70 m-top-70',0),(1,81,214,'subheader6',0),(1,81,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,81,216,'column-525_6 m-top-50',0),(1,81,218,'column-300_4_2 m-top-55 m-right-40',0),(1,81,219,'column-300_4 m-top-55',0),(1,81,220,'column-300_4 m-left-55 m-top-40',0),(1,81,221,'column-640_4 m-top-50',0),(1,81,222,'column-300_4 m-left-40 m-top-50',0),(1,81,223,'column-455 m-right-70 m-top-70 list1',0),(1,82,27,'Main',0),(1,82,28,'Header Image',0),(1,82,58,'Header',0),(1,82,62,'post',0),(1,82,64,'content',0),(1,82,65,'content',0),(1,82,67,'footer',0),(1,82,126,'sidebar',0),(1,82,132,'header-wrapper',0),(1,82,137,'subheader1',0),(1,82,138,'column-455 m-right-70 m-top-50',0),(1,82,139,'column-455  m-top-50',0),(1,82,140,'subheader2',0),(1,82,141,'column-640  m-top-50',0),(1,82,144,'column-455 m-top-70',0),(1,82,145,'subheader3',0),(1,82,146,'column-640 m-top-50',0),(1,82,147,'column-300_2 m-left-40 m-top-50',0),(1,82,150,'subheader4',0),(1,82,159,'footer_logo',0),(1,82,160,'m-bottom-40',0),(1,82,163,'showcase-sub-container',0),(1,82,169,'pic-frame rounded 1',0),(1,82,170,'pic-frame rounded 2',0),(1,82,183,'header-wrapper',0),(1,82,189,'header-wrapper',0),(1,82,207,'column-300 m-left-40 m-top-50',0),(1,82,213,'column-455 m-right-70 m-top-70',0),(1,82,214,'subheader6',0),(1,82,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,82,216,'column-525_6 m-top-50',0),(1,82,218,'column-300_4_2 m-top-55 m-right-40',0),(1,82,219,'column-300_4 m-top-55',0),(1,82,220,'column-300_4 m-left-55 m-top-40',0),(1,82,221,'column-640_4 m-top-50',0),(1,82,222,'column-300_4 m-left-40 m-top-50',0),(1,82,223,'column-455 m-right-70 m-top-70 list1',0),(1,82,224,'column-455 m-right-70 m-top-70 list2',0),(1,82,225,'column-455 m-right-70 m-top-70 list3',0),(1,82,226,'column-455 m-right-70 m-top-70 list4',0),(1,83,27,'Main',0),(1,83,28,'Header Image',0),(1,83,58,'Header',0),(1,83,62,'post',0),(1,83,64,'content',0),(1,83,65,'content',0),(1,83,67,'footer',0),(1,83,126,'sidebar',0),(1,83,132,'header-wrapper',0),(1,83,137,'subheader1',0),(1,83,138,'column-455 m-right-70 m-top-50',0),(1,83,139,'column-455  m-top-50',0),(1,83,140,'subheader2',0),(1,83,141,'column-640  m-top-50',0),(1,83,144,'column-455 m-top-70',0),(1,83,145,'subheader3',0),(1,83,146,'column-640 m-top-50',0),(1,83,147,'column-300_2 m-left-40 m-top-50',0),(1,83,150,'subheader4',0),(1,83,159,'footer_logo',0),(1,83,160,'m-bottom-40',0),(1,83,163,'showcase-sub-container',0),(1,83,169,'pic-frame rounded 1',0),(1,83,170,'pic-frame rounded 2',0),(1,83,183,'header-wrapper',0),(1,83,189,'header-wrapper',0),(1,83,207,'column-300 m-left-40 m-top-50',0),(1,83,213,'column-455 m-right-70 m-top-70',0),(1,83,214,'subheader6',0),(1,83,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,83,216,'column-525_6 m-top-50',0),(1,83,218,'column-300_4_2 m-top-55 m-right-40',0),(1,83,219,'column-300_4 m-top-55',0),(1,83,220,'column-300_4 m-left-55 m-top-40',0),(1,83,221,'column-640_4 m-top-50',0),(1,83,223,'column-455 m-right-70 m-top-70 list1',0),(1,83,224,'column-455 m-right-70 m-top-70 list2',0),(1,83,225,'column-455 m-right-70 m-top-70 list3',0),(1,83,226,'column-455 m-right-70 m-top-70 list4',0),(1,83,227,'column-300_4 m-left-40 m-top-50',0),(1,84,27,'Main',0),(1,84,28,'Header Image',0),(1,84,58,'Header',0),(1,84,62,'post',0),(1,84,64,'content',0),(1,84,65,'content',0),(1,84,67,'footer',0),(1,84,126,'sidebar',0),(1,84,132,'header-wrapper',0),(1,84,137,'subheader1',0),(1,84,139,'column-455  m-top-50',0),(1,84,140,'subheader2',0),(1,84,141,'column-640  m-top-50',0),(1,84,144,'column-455 m-top-70',0),(1,84,145,'subheader3',0),(1,84,146,'column-640 m-top-50',0),(1,84,147,'column-300_2 m-left-40 m-top-50',0),(1,84,150,'subheader4',0),(1,84,159,'footer_logo',0),(1,84,160,'m-bottom-40',0),(1,84,163,'showcase-sub-container',0),(1,84,169,'pic-frame rounded 1',0),(1,84,170,'pic-frame rounded 2',0),(1,84,183,'header-wrapper',0),(1,84,189,'header-wrapper',0),(1,84,207,'column-300 m-left-40 m-top-50',0),(1,84,213,'column-455 m-right-70 m-top-70',0),(1,84,214,'subheader6',0),(1,84,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,84,216,'column-525_6 m-top-50',0),(1,84,218,'column-300_4_2 m-top-55 m-right-40',0),(1,84,219,'column-300_4 m-top-55',0),(1,84,220,'column-300_4 m-left-55 m-top-40',0),(1,84,221,'column-640_4 m-top-50',0),(1,84,223,'column-455 m-right-70 m-top-70 list1',0),(1,84,224,'column-455 m-right-70 m-top-70 list2',0),(1,84,225,'column-455 m-right-70 m-top-70 list3',0),(1,84,226,'column-455 m-right-70 m-top-70 list4',0),(1,84,227,'column-300_4 m-left-40 m-top-50',0),(1,84,228,'column-455 m-right-70 m-top-50',0),(1,85,27,'Main',0),(1,85,28,'Header Image',0),(1,85,58,'Header',0),(1,85,62,'post',0),(1,85,64,'content',0),(1,85,65,'content',0),(1,85,67,'footer',0),(1,85,126,'sidebar',0),(1,85,132,'header-wrapper',0),(1,85,137,'subheader1',0),(1,85,140,'subheader2',0),(1,85,141,'column-640  m-top-50',0),(1,85,144,'column-455 m-top-70',0),(1,85,145,'subheader3',0),(1,85,146,'column-640 m-top-50',0),(1,85,147,'column-300_2 m-left-40 m-top-50',0),(1,85,150,'subheader4',0),(1,85,159,'footer_logo',0),(1,85,160,'m-bottom-40',0),(1,85,163,'showcase-sub-container',0),(1,85,169,'pic-frame rounded 1',0),(1,85,170,'pic-frame rounded 2',0),(1,85,183,'header-wrapper',0),(1,85,189,'header-wrapper',0),(1,85,207,'column-300 m-left-40 m-top-50',0),(1,85,213,'column-455 m-right-70 m-top-70',0),(1,85,214,'subheader6',0),(1,85,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,85,216,'column-525_6 m-top-50',0),(1,85,218,'column-300_4_2 m-top-55 m-right-40',0),(1,85,219,'column-300_4 m-top-55',0),(1,85,220,'column-300_4 m-left-55 m-top-40',0),(1,85,221,'column-640_4 m-top-50',0),(1,85,223,'column-455 m-right-70 m-top-70 list1',0),(1,85,224,'column-455 m-right-70 m-top-70 list2',0),(1,85,225,'column-455 m-right-70 m-top-70 list3',0),(1,85,226,'column-455 m-right-70 m-top-70 list4',0),(1,85,227,'column-300_4 m-left-40 m-top-50',0),(1,85,229,'column-455 m-right-70 m-top-50',0),(1,85,230,'column-455  m-top-50',0),(1,86,27,'Main',0),(1,86,28,'Header Image',0),(1,86,58,'Header',0),(1,86,62,'post',0),(1,86,64,'content',0),(1,86,65,'content',0),(1,86,67,'footer',0),(1,86,126,'sidebar',0),(1,86,132,'header-wrapper',0),(1,86,137,'subheader1',0),(1,86,140,'subheader2',0),(1,86,141,'column-640  m-top-50',0),(1,86,144,'column-455 m-top-70',0),(1,86,145,'subheader3',0),(1,86,146,'column-640 m-top-50',0),(1,86,147,'column-300_2 m-left-40 m-top-50',0),(1,86,150,'subheader4',0),(1,86,159,'footer_logo',0),(1,86,160,'m-bottom-40',0),(1,86,163,'showcase-sub-container',0),(1,86,169,'pic-frame rounded 1',0),(1,86,170,'pic-frame rounded 2',0),(1,86,183,'header-wrapper',0),(1,86,189,'header-wrapper',0),(1,86,207,'column-300 m-left-40 m-top-50',0),(1,86,213,'column-455 m-right-70 m-top-70',0),(1,86,214,'subheader6',0),(1,86,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,86,216,'column-525_6 m-top-50',0),(1,86,218,'column-300_4_2 m-top-55 m-right-40',0),(1,86,219,'column-300_4 m-top-55',0),(1,86,220,'column-300_4 m-left-55 m-top-40',0),(1,86,221,'column-640_4 m-top-50',0),(1,86,223,'column-455 m-right-70 m-top-70 list1',0),(1,86,224,'column-455 m-right-70 m-top-70 list2',0),(1,86,225,'column-455 m-right-70 m-top-70 list3',0),(1,86,226,'column-455 m-right-70 m-top-70 list4',0),(1,86,227,'column-300_4 m-left-40 m-top-50',0),(1,86,229,'column-455 m-right-70 m-top-50',0),(1,86,231,'column-455  m-top-50',0),(1,87,27,'Main',0),(1,87,28,'Header Image',0),(1,87,58,'Header',0),(1,87,62,'post',0),(1,87,64,'content',0),(1,87,65,'content',0),(1,87,67,'footer',0),(1,87,126,'sidebar',0),(1,87,132,'header-wrapper',0),(1,87,137,'subheader1',0),(1,87,140,'subheader2',0),(1,87,141,'column-640  m-top-50',0),(1,87,144,'column-455 m-top-70',0),(1,87,145,'subheader3',0),(1,87,146,'column-640 m-top-50',0),(1,87,147,'column-300_2 m-left-40 m-top-50',0),(1,87,150,'subheader4',0),(1,87,159,'footer_logo',0),(1,87,160,'m-bottom-40',0),(1,87,163,'showcase-sub-container',0),(1,87,169,'pic-frame rounded 1',0),(1,87,170,'pic-frame rounded 2',0),(1,87,183,'header-wrapper',0),(1,87,189,'header-wrapper',0),(1,87,207,'column-300 m-left-40 m-top-50',0),(1,87,213,'column-455 m-right-70 m-top-70',0),(1,87,214,'subheader6',0),(1,87,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,87,216,'column-525_6 m-top-50',0),(1,87,221,'column-640_4 m-top-50',0),(1,87,223,'column-455 m-right-70 m-top-70 list1',0),(1,87,224,'column-455 m-right-70 m-top-70 list2',0),(1,87,225,'column-455 m-right-70 m-top-70 list3',0),(1,87,226,'column-455 m-right-70 m-top-70 list4',0),(1,87,227,'column-300_4 m-left-40 m-top-50',0),(1,87,229,'column-455 m-right-70 m-top-50',0),(1,87,232,'column-300_4 m-left-55 m-top-40',0),(1,87,233,'column-300_4_2 m-top-55 m-right-40',0),(1,87,234,'column-300_4 m-top-55',0),(1,87,235,'column-455  m-top-50',0),(1,88,27,'Main',0),(1,88,28,'Header Image',0),(1,88,58,'Header',0),(1,88,62,'post',0),(1,88,64,'content',0),(1,88,65,'content',0),(1,88,67,'footer',0),(1,88,126,'sidebar',0),(1,88,132,'header-wrapper',0),(1,88,137,'subheader1',0),(1,88,140,'subheader2',0),(1,88,141,'column-640  m-top-50',0),(1,88,144,'column-455 m-top-70',0),(1,88,145,'subheader3',0),(1,88,146,'column-640 m-top-50',0),(1,88,147,'column-300_2 m-left-40 m-top-50',0),(1,88,150,'subheader4',0),(1,88,159,'footer_logo',0),(1,88,160,'m-bottom-40',0),(1,88,163,'showcase-sub-container',0),(1,88,183,'header-wrapper',0),(1,88,189,'header-wrapper',0),(1,88,207,'column-300 m-left-40 m-top-50',0),(1,88,213,'column-455 m-right-70 m-top-70',0),(1,88,214,'subheader6',0),(1,88,221,'column-640_4 m-top-50',0),(1,88,223,'column-455 m-right-70 m-top-70 list1',0),(1,88,224,'column-455 m-right-70 m-top-70 list2',0),(1,88,225,'column-455 m-right-70 m-top-70 list3',0),(1,88,226,'column-455 m-right-70 m-top-70 list4',0),(1,88,227,'column-300_4 m-left-40 m-top-50',0),(1,88,229,'column-455 m-right-70 m-top-50',0),(1,88,232,'column-300_4 m-left-55 m-top-40',0),(1,88,233,'column-300_4_2 m-top-55 m-right-40',0),(1,88,234,'column-300_4 m-top-55',0),(1,88,235,'column-455  m-top-50',0),(1,88,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,88,237,'column-525_6 m-top-50',0),(1,88,238,'pic-frame rounded 2',0),(1,88,239,'pic-frame rounded 1',0),(1,89,27,'Main',0),(1,89,28,'Header Image',0),(1,89,58,'Header',0),(1,89,62,'post',0),(1,89,64,'content',0),(1,89,65,'content',0),(1,89,67,'footer',0),(1,89,126,'sidebar',0),(1,89,132,'header-wrapper',0),(1,89,137,'subheader1',0),(1,89,140,'subheader2',0),(1,89,141,'column-640  m-top-50',0),(1,89,144,'column-455 m-top-70',0),(1,89,145,'subheader3',0),(1,89,146,'column-640 m-top-50',0),(1,89,147,'column-300_2 m-left-40 m-top-50',0),(1,89,150,'subheader4',0),(1,89,159,'footer_logo',0),(1,89,160,'m-bottom-40',0),(1,89,163,'showcase-sub-container',0),(1,89,183,'header-wrapper',0),(1,89,189,'header-wrapper',0),(1,89,207,'column-300 m-left-40 m-top-50',0),(1,89,213,'column-455 m-right-70 m-top-70',0),(1,89,214,'subheader6',0),(1,89,221,'column-640_4 m-top-50',0),(1,89,223,'column-455 m-right-70 m-top-70 list1',0),(1,89,224,'column-455 m-right-70 m-top-70 list2',0),(1,89,225,'column-455 m-right-70 m-top-70 list3',0),(1,89,226,'column-455 m-right-70 m-top-70 list4',0),(1,89,227,'column-300_4 m-left-40 m-top-50',0),(1,89,229,'column-455 m-right-70 m-top-50',0),(1,89,232,'column-300_4 m-left-55 m-top-40',0),(1,89,233,'column-300_4_2 m-top-55 m-right-40',0),(1,89,234,'column-300_4 m-top-55',0),(1,89,235,'column-455  m-top-50',0),(1,89,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,89,237,'column-525_6 m-top-50',0),(1,89,238,'pic-frame rounded 2',0),(1,89,240,'pic-frame rounded 1',0),(1,90,27,'Main',0),(1,90,28,'Header Image',0),(1,90,58,'Header',0),(1,90,62,'post',0),(1,90,64,'content',0),(1,90,65,'content',0),(1,90,67,'footer',0),(1,90,126,'sidebar',0),(1,90,132,'header-wrapper',0),(1,90,137,'subheader1',0),(1,90,140,'subheader2',0),(1,90,141,'column-640  m-top-50',0),(1,90,144,'column-455 m-top-70',0),(1,90,145,'subheader3',0),(1,90,146,'column-640 m-top-50',0),(1,90,147,'column-300_2 m-left-40 m-top-50',0),(1,90,150,'subheader4',0),(1,90,159,'footer_logo',0),(1,90,160,'m-bottom-40',0),(1,90,163,'showcase-sub-container',0),(1,90,183,'header-wrapper',0),(1,90,189,'header-wrapper',0),(1,90,207,'column-300 m-left-40 m-top-50',0),(1,90,213,'column-455 m-right-70 m-top-70',0),(1,90,214,'subheader6',0),(1,90,221,'column-640_4 m-top-50',0),(1,90,223,'column-455 m-right-70 m-top-70 list1',0),(1,90,224,'column-455 m-right-70 m-top-70 list2',0),(1,90,225,'column-455 m-right-70 m-top-70 list3',0),(1,90,226,'column-455 m-right-70 m-top-70 list4',0),(1,90,227,'column-300_4 m-left-40 m-top-50',0),(1,90,229,'column-455 m-right-70 m-top-50',0),(1,90,232,'column-300_4 m-left-55 m-top-40',0),(1,90,233,'column-300_4_2 m-top-55 m-right-40',0),(1,90,234,'column-300_4 m-top-55',0),(1,90,235,'column-455  m-top-50',0),(1,90,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,90,237,'column-525_6 m-top-50',0),(1,90,238,'pic-frame rounded 2',0),(1,90,241,'pic-frame rounded 1',0),(1,91,27,'Main',0),(1,91,28,'Header Image',0),(1,91,58,'Header',0),(1,91,62,'post',0),(1,91,64,'content',0),(1,91,65,'content',0),(1,91,67,'footer',0),(1,91,126,'sidebar',0),(1,91,132,'header-wrapper',0),(1,91,137,'subheader1',0),(1,91,140,'subheader2',0),(1,91,141,'column-640  m-top-50',0),(1,91,144,'column-455 m-top-70',0),(1,91,145,'subheader3',0),(1,91,146,'column-640 m-top-50',0),(1,91,147,'column-300_2 m-left-40 m-top-50',0),(1,91,150,'subheader4',0),(1,91,159,'footer_logo',0),(1,91,160,'m-bottom-40',0),(1,91,163,'showcase-sub-container',0),(1,91,183,'header-wrapper',0),(1,91,189,'header-wrapper',0),(1,91,207,'column-300 m-left-40 m-top-50',0),(1,91,213,'column-455 m-right-70 m-top-70',0),(1,91,214,'subheader6',0),(1,91,221,'column-640_4 m-top-50',0),(1,91,223,'column-455 m-right-70 m-top-70 list1',0),(1,91,224,'column-455 m-right-70 m-top-70 list2',0),(1,91,225,'column-455 m-right-70 m-top-70 list3',0),(1,91,226,'column-455 m-right-70 m-top-70 list4',0),(1,91,227,'column-300_4 m-left-40 m-top-50',0),(1,91,229,'column-455 m-right-70 m-top-50',0),(1,91,232,'column-300_4 m-left-55 m-top-40',0),(1,91,233,'column-300_4_2 m-top-55 m-right-40',0),(1,91,234,'column-300_4 m-top-55',0),(1,91,235,'column-455  m-top-50',0),(1,91,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,91,237,'column-525_6 m-top-50',0),(1,91,238,'pic-frame rounded 2',0),(1,91,242,'pic-frame rounded 1',0),(1,92,27,'Main',0),(1,92,28,'Header Image',0),(1,92,58,'Header',0),(1,92,62,'post',0),(1,92,64,'content',0),(1,92,65,'content',0),(1,92,67,'footer',0),(1,92,126,'sidebar',0),(1,92,132,'header-wrapper',0),(1,92,137,'subheader1',0),(1,92,140,'subheader2',0),(1,92,141,'column-640  m-top-50',0),(1,92,144,'column-455 m-top-70',0),(1,92,145,'subheader3',0),(1,92,146,'column-640 m-top-50',0),(1,92,147,'column-300_2 m-left-40 m-top-50',0),(1,92,150,'subheader4',0),(1,92,159,'footer_logo',0),(1,92,160,'m-bottom-40',0),(1,92,163,'showcase-sub-container',0),(1,92,183,'header-wrapper',0),(1,92,189,'header-wrapper',0),(1,92,207,'column-300 m-left-40 m-top-50',0),(1,92,213,'column-455 m-right-70 m-top-70',0),(1,92,214,'subheader6',0),(1,92,221,'column-640_4 m-top-50',0),(1,92,223,'column-455 m-right-70 m-top-70 list1',0),(1,92,224,'column-455 m-right-70 m-top-70 list2',0),(1,92,225,'column-455 m-right-70 m-top-70 list3',0),(1,92,226,'column-455 m-right-70 m-top-70 list4',0),(1,92,227,'column-300_4 m-left-40 m-top-50',0),(1,92,229,'column-455 m-right-70 m-top-50',0),(1,92,232,'column-300_4 m-left-55 m-top-40',0),(1,92,233,'column-300_4_2 m-top-55 m-right-40',0),(1,92,234,'column-300_4 m-top-55',0),(1,92,235,'column-455  m-top-50',0),(1,92,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,92,237,'column-525_6 m-top-50',0),(1,92,242,'pic-frame rounded 1',0),(1,92,243,'pic-frame rounded 2',0),(1,93,27,'Main',0),(1,93,28,'Header Image',0),(1,93,58,'Header',0),(1,93,62,'post',0),(1,93,64,'content',0),(1,93,65,'content',0),(1,93,67,'footer',0),(1,93,126,'sidebar',0),(1,93,132,'header-wrapper',0),(1,93,137,'subheader1',0),(1,93,140,'subheader2',0),(1,93,141,'column-640  m-top-50',0),(1,93,144,'column-455 m-top-70',0),(1,93,145,'subheader3',0),(1,93,146,'column-640 m-top-50',0),(1,93,147,'column-300_2 m-left-40 m-top-50',0),(1,93,150,'subheader4',0),(1,93,159,'footer_logo',0),(1,93,160,'m-bottom-40',0),(1,93,163,'showcase-sub-container',0),(1,93,183,'header-wrapper',0),(1,93,189,'header-wrapper',0),(1,93,207,'column-300 m-left-40 m-top-50',0),(1,93,213,'column-455 m-right-70 m-top-70',0),(1,93,214,'subheader6',0),(1,93,221,'column-640_4 m-top-50',0),(1,93,223,'column-455 m-right-70 m-top-70 list1',0),(1,93,224,'column-455 m-right-70 m-top-70 list2',0),(1,93,225,'column-455 m-right-70 m-top-70 list3',0),(1,93,226,'column-455 m-right-70 m-top-70 list4',0),(1,93,227,'column-300_4 m-left-40 m-top-50',0),(1,93,229,'column-455 m-right-70 m-top-50',0),(1,93,232,'column-300_4 m-left-55 m-top-40',0),(1,93,233,'column-300_4_2 m-top-55 m-right-40',0),(1,93,234,'column-300_4 m-top-55',0),(1,93,235,'column-455  m-top-50',0),(1,93,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,93,237,'column-525_6 m-top-50',0),(1,93,242,'pic-frame rounded 1',0),(1,93,243,'pic-frame rounded 2',0),(1,93,245,'pic-frame rounded 3',0),(1,94,27,'Main',0),(1,94,28,'Header Image',0),(1,94,58,'Header',0),(1,94,62,'post',0),(1,94,64,'content',0),(1,94,65,'content',0),(1,94,67,'footer',0),(1,94,126,'sidebar',0),(1,94,132,'header-wrapper',0),(1,94,137,'subheader1',0),(1,94,140,'subheader2',0),(1,94,141,'column-640  m-top-50',0),(1,94,144,'column-455 m-top-70',0),(1,94,145,'subheader3',0),(1,94,146,'column-640 m-top-50',0),(1,94,147,'column-300_2 m-left-40 m-top-50',0),(1,94,150,'subheader4',0),(1,94,159,'footer_logo',0),(1,94,160,'m-bottom-40',0),(1,94,163,'showcase-sub-container',0),(1,94,183,'header-wrapper',0),(1,94,189,'header-wrapper',0),(1,94,207,'column-300 m-left-40 m-top-50',0),(1,94,213,'column-455 m-right-70 m-top-70',0),(1,94,214,'subheader6',0),(1,94,221,'column-640_4 m-top-50',0),(1,94,223,'column-455 m-right-70 m-top-70 list1',0),(1,94,224,'column-455 m-right-70 m-top-70 list2',0),(1,94,225,'column-455 m-right-70 m-top-70 list3',0),(1,94,226,'column-455 m-right-70 m-top-70 list4',0),(1,94,227,'column-300_4 m-left-40 m-top-50',0),(1,94,232,'column-300_4 m-left-55 m-top-40',0),(1,94,233,'column-300_4_2 m-top-55 m-right-40',0),(1,94,234,'column-300_4 m-top-55',0),(1,94,235,'column-455  m-top-50',0),(1,94,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0),(1,94,237,'column-525_6 m-top-50',0),(1,94,242,'pic-frame rounded 1',0),(1,94,243,'pic-frame rounded 2',0),(1,94,245,'pic-frame rounded 3',0),(1,94,246,'pic-frame rounded 4',0),(1,94,247,'pic-frame rounded 5',0),(1,94,248,'pic-frame rounded 6',0),(1,94,249,'pic-frame rounded 7',0),(1,94,250,'pic-frame rounded 8',0),(1,94,251,'column-455 m-right-70 m-top-50',0),(121,2,21,'Main',0),(121,2,22,'Main',0),(127,1,18,'Header Image',0),(128,1,19,'Header Image',0),(129,1,19,'Header Image',0),(130,1,18,'Header Image',0),(131,1,19,'Header Image',0),(132,1,19,'Header Image',0),(133,1,14,'Sidebar',0),(135,1,14,'Sidebar',0),(135,1,70,'Header Image',0),(135,1,71,'Thumbnail Image',0),(135,1,72,'Main',0),(136,1,14,'Sidebar',0),(136,1,73,'Header Image',0),(136,1,74,'Thumbnail Image',0),(136,1,75,'Main',0),(137,1,18,'Header Image',0),(137,2,18,'Header Image',0),(137,3,18,'Header Image',0),(137,3,80,'sidebar',0),(137,4,18,'Header Image',0),(137,4,80,'sidebar',0),(137,4,84,'content : Layout 1 : Cell 1',0),(137,4,85,'content : Layout 1 : Cell 2',0),(137,5,18,'Header Image',0),(137,5,80,'sidebar',0),(137,5,84,'content : Layout 1 : Cell 1',0),(137,5,85,'content : Layout 1 : Cell 2',0),(137,6,18,'Header Image',0),(137,6,80,'sidebar',0),(137,6,84,'content : Layout 1 : Cell 1',0),(137,6,85,'content : Layout 1 : Cell 2',0),(137,7,18,'Header Image',0),(137,7,80,'sidebar',0),(137,7,84,'content : Layout 1 : Cell 1',0),(137,7,85,'content : Layout 1 : Cell 2',0),(137,8,18,'Header Image',0),(137,8,80,'sidebar',0),(137,8,84,'content : Layout 1 : Cell 1',0),(137,8,85,'content : Layout 1 : Cell 2',0),(137,8,88,'content : Layout 2 : Cell 1',0),(137,9,18,'Header Image',0),(137,9,80,'sidebar',0),(137,9,84,'content : Layout 1 : Cell 1',0),(137,9,85,'content : Layout 1 : Cell 2',0),(137,9,88,'content : Layout 2 : Cell 1',0),(137,9,90,'sidebar',0),(137,10,18,'Header Image',0),(137,10,80,'sidebar',0),(137,10,84,'content : Layout 1 : Cell 1',0),(137,10,85,'content : Layout 1 : Cell 2',0),(137,10,88,'content : Layout 2 : Cell 1',0),(137,10,91,'sidebar',0),(137,11,18,'Header Image',0),(137,11,80,'sidebar',0),(137,11,84,'content : Layout 1 : Cell 1',0),(137,11,85,'content : Layout 1 : Cell 2',0),(137,11,88,'content : Layout 2 : Cell 1',0),(137,11,91,'sidebar',0),(137,12,18,'Header Image',0),(137,12,80,'sidebar',0),(137,12,84,'content : Layout 1 : Cell 1',0),(137,12,85,'content : Layout 1 : Cell 2',0),(137,12,88,'content : Layout 2 : Cell 1',0),(137,12,91,'sidebar',0),(137,12,93,'content',0),(137,13,18,'Header Image',0),(137,13,80,'sidebar',0),(137,13,84,'content : Layout 1 : Cell 1',0),(137,13,85,'content : Layout 1 : Cell 2',0),(137,13,88,'content : Layout 2 : Cell 1',0),(137,13,91,'sidebar',0),(137,14,18,'Header Image',0),(137,14,80,'sidebar',0),(137,14,84,'content : Layout 1 : Cell 1',0),(137,14,85,'content : Layout 1 : Cell 2',0),(137,14,88,'content : Layout 2 : Cell 1',0),(137,14,94,'content',0),(137,14,105,'sidebar',0),(137,17,18,'Header Image',0),(137,17,80,'sidebar',0),(137,17,88,'content : Layout 2 : Cell 1',0),(137,17,94,'content',0),(137,17,108,'content : Layout 2 : Cell 1',0),(137,17,109,'sidebar',0),(137,18,18,'Header Image',0),(137,18,80,'sidebar',0),(137,18,88,'content : Layout 2 : Cell 1',0),(137,18,94,'content',0),(137,18,108,'content : Layout 2 : Cell 1',0),(137,18,111,'sidebar',0),(137,19,18,'Header Image',0),(137,19,80,'sidebar',0),(137,19,88,'content : Layout 2 : Cell 1',0),(137,19,94,'content',0),(137,19,108,'content : Layout 2 : Cell 1',0),(137,19,123,'sidebar',0),(137,20,18,'Header Image',0),(137,20,88,'content : Layout 2 : Cell 1',0),(137,20,94,'content',0),(137,20,108,'content : Layout 2 : Cell 1',0),(139,1,14,'Sidebar',0),(139,1,112,'Header Image',0),(139,1,113,'Thumbnail Image',0),(139,1,114,'Main',0),(140,1,18,'Header Image',0),(140,2,18,'Header Image',0),(140,3,18,'Header Image',0),(140,3,117,'content',0),(140,3,118,'content',0),(141,3,124,'Main',0),(141,3,125,'Main',0),(142,1,18,'Header Image',0),(142,2,18,'Header Image',0);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (1,1,24,'Header',0,1,0,0),(1,1,25,'Sidebar',0,1,0,0),(1,1,26,'Sidebar',1,1,0,0),(1,1,27,'Main',0,1,0,0),(1,1,28,'Header Image',0,1,0,0),(1,2,25,'Sidebar',0,0,0,0),(1,2,26,'Sidebar',1,0,0,0),(1,2,27,'Main',0,0,0,0),(1,2,28,'Header Image',0,0,0,0),(1,2,53,'header',0,1,0,0),(1,3,26,'Sidebar',1,0,0,0),(1,3,27,'Main',0,0,0,0),(1,3,28,'Header Image',0,0,0,0),(1,3,53,'header',0,0,0,0),(1,3,54,'sidebar',0,1,0,0),(1,4,27,'Main',0,0,0,0),(1,4,28,'Header Image',0,0,0,0),(1,4,53,'header',0,0,0,0),(1,4,55,'sidebar',1,1,0,0),(1,4,56,'sidebar',0,1,0,0),(1,5,27,'Main',0,0,0,0),(1,5,28,'Header Image',0,0,0,0),(1,5,55,'sidebar',1,0,0,0),(1,5,56,'sidebar',0,0,0,0),(1,5,58,'header',0,1,0,0),(1,6,27,'Main',0,0,0,0),(1,6,28,'Header Image',0,0,0,0),(1,6,55,'sidebar',1,0,0,0),(1,6,56,'sidebar',0,0,0,0),(1,6,58,'header',0,0,0,0),(1,6,59,'post',0,1,0,0),(1,7,27,'Main',0,0,0,0),(1,7,28,'Header Image',0,0,0,0),(1,7,55,'sidebar',1,0,0,0),(1,7,56,'sidebar',0,0,0,0),(1,7,58,'header',0,0,0,0),(1,7,60,'post',0,1,0,0),(1,8,27,'Main',0,0,0,0),(1,8,28,'Header Image',0,0,0,0),(1,8,55,'sidebar',1,0,0,0),(1,8,56,'sidebar',0,0,0,0),(1,8,58,'header',0,0,0,0),(1,8,62,'post',1,1,0,0),(1,9,27,'Main',0,0,0,0),(1,9,28,'Header Image',0,0,0,0),(1,9,55,'Sidebar',1,0,0,0),(1,9,56,'Sidebar',0,0,0,0),(1,9,58,'Header',0,0,0,0),(1,9,62,'post',0,0,0,0),(1,9,64,'content',0,1,0,0),(1,9,65,'content',1,1,0,0),(1,9,66,'footer',0,1,0,0),(1,10,27,'Main',0,0,0,0),(1,10,28,'Header Image',0,0,0,0),(1,10,55,'Sidebar',1,0,0,0),(1,10,56,'Sidebar',0,0,0,0),(1,10,58,'Header',0,0,0,0),(1,10,62,'post',0,0,0,0),(1,10,64,'content',0,0,0,0),(1,10,65,'content',1,0,0,0),(1,10,67,'footer',0,1,0,0),(1,11,27,'Main',0,0,0,0),(1,11,28,'Header Image',0,0,0,0),(1,11,58,'Header',0,0,0,0),(1,11,62,'post',0,0,0,0),(1,11,64,'content',0,0,0,0),(1,11,65,'content',1,0,0,0),(1,11,67,'footer',0,0,0,0),(1,11,68,'sidebar',0,1,0,0),(1,11,69,'sidebar',1,1,0,0),(1,12,27,'Main',0,0,0,0),(1,12,28,'Header Image',0,0,0,0),(1,12,58,'Header',0,0,0,0),(1,12,62,'post',0,0,0,0),(1,12,64,'content',0,0,0,0),(1,12,65,'content',1,0,0,0),(1,12,67,'footer',0,0,0,0),(1,12,69,'sidebar',1,0,0,0),(1,12,77,'sidebar',0,1,0,0),(1,13,27,'Main',0,0,0,0),(1,13,28,'Header Image',0,0,0,0),(1,13,58,'Header',0,0,0,0),(1,13,62,'post',0,0,0,0),(1,13,64,'content',0,0,0,0),(1,13,65,'content',1,0,0,0),(1,13,67,'footer',0,0,0,0),(1,13,69,'sidebar',1,0,0,0),(1,13,78,'sidebar',0,1,0,0),(1,14,27,'Main',0,0,0,0),(1,14,28,'Header Image',0,0,0,0),(1,14,58,'Header',0,0,0,0),(1,14,62,'post',0,0,0,0),(1,14,64,'content',0,0,0,0),(1,14,65,'content',1,0,0,0),(1,14,67,'footer',0,0,0,0),(1,14,69,'sidebar',1,0,0,0),(1,14,79,'sidebar',0,1,0,0),(1,15,27,'Main',0,0,0,0),(1,15,28,'Header Image',0,0,0,0),(1,15,58,'Header',0,0,0,0),(1,15,62,'post',0,0,0,0),(1,15,64,'content',0,0,0,0),(1,15,65,'content',1,0,0,0),(1,15,67,'footer',0,0,0,0),(1,15,69,'sidebar',1,0,0,0),(1,15,79,'sidebar',0,0,0,0),(1,16,27,'Main',0,0,0,0),(1,16,28,'Header Image',0,0,0,0),(1,16,58,'Header',0,0,0,0),(1,16,62,'post',0,0,0,0),(1,16,64,'content',0,0,0,0),(1,16,65,'content',1,0,0,0),(1,16,67,'footer',0,0,0,0),(1,16,69,'sidebar',1,0,0,0),(1,16,79,'sidebar',0,0,0,0),(1,16,100,'header',1,1,0,0),(1,17,27,'Main',0,0,0,0),(1,17,28,'Header Image',0,0,0,0),(1,17,58,'Header',0,0,0,0),(1,17,62,'post',0,0,0,0),(1,17,64,'content',0,0,0,0),(1,17,65,'content',1,0,0,0),(1,17,67,'footer',0,0,0,0),(1,17,69,'sidebar',1,0,0,0),(1,17,79,'sidebar',0,0,0,0),(1,17,101,'header',1,1,0,0),(1,18,27,'Main',0,0,0,0),(1,18,28,'Header Image',0,0,0,0),(1,18,58,'Header',0,0,0,0),(1,18,62,'post',0,0,0,0),(1,18,64,'content',0,0,0,0),(1,18,65,'content',1,0,0,0),(1,18,67,'footer',0,0,0,0),(1,18,69,'sidebar',1,0,0,0),(1,18,79,'sidebar',0,0,0,0),(1,18,102,'header',1,1,0,0),(1,19,27,'Main',0,0,0,0),(1,19,28,'Header Image',0,0,0,0),(1,19,58,'Header',0,0,0,0),(1,19,62,'post',0,0,0,0),(1,19,64,'content',0,0,0,0),(1,19,65,'content',1,0,0,0),(1,19,67,'footer',0,0,0,0),(1,19,79,'sidebar',0,0,0,0),(1,19,104,'sidebar',1,1,0,0),(1,20,27,'Main',0,0,0,0),(1,20,28,'Header Image',0,0,0,0),(1,20,58,'Header',0,0,0,0),(1,20,62,'post',0,0,0,0),(1,20,64,'content',0,0,0,0),(1,20,65,'content',1,0,0,0),(1,20,67,'footer',0,0,0,0),(1,20,79,'sidebar',0,0,0,0),(1,20,104,'sidebar',1,0,0,0),(1,20,106,'sidebar',2,1,0,0),(1,21,27,'Main',0,0,0,0),(1,21,28,'Header Image',0,0,0,0),(1,21,58,'Header',0,0,0,0),(1,21,62,'post',0,0,0,0),(1,21,64,'content',0,0,0,0),(1,21,65,'content',1,0,0,0),(1,21,67,'footer',0,0,0,0),(1,21,79,'sidebar',0,0,0,0),(1,21,106,'sidebar',2,0,0,0),(1,21,110,'sidebar',1,1,0,0),(1,22,27,'Main',0,0,0,0),(1,22,28,'Header Image',0,0,0,0),(1,22,58,'Header',0,0,0,0),(1,22,62,'post',0,0,0,0),(1,22,64,'content',0,0,0,0),(1,22,65,'content',1,0,0,0),(1,22,67,'footer',0,0,0,0),(1,22,79,'sidebar',0,0,0,0),(1,22,110,'sidebar',1,0,0,0),(1,23,27,'Main',0,0,0,0),(1,23,28,'Header Image',0,0,0,0),(1,23,58,'Header',0,0,0,0),(1,23,62,'post',0,0,0,0),(1,23,64,'content',0,0,0,0),(1,23,65,'content',1,0,0,0),(1,23,67,'footer',0,0,0,0),(1,23,79,'sidebar',0,0,0,0),(1,23,115,'sidebar',1,1,0,0),(1,24,27,'Main',0,0,0,0),(1,24,28,'Header Image',0,0,0,0),(1,24,58,'Header',0,0,0,0),(1,24,62,'post',0,0,0,0),(1,24,64,'content',0,0,0,0),(1,24,65,'content',1,0,0,0),(1,24,67,'footer',0,0,0,0),(1,24,79,'sidebar',0,0,0,0),(1,24,116,'sidebar',1,1,0,0),(1,25,27,'Main',0,0,0,0),(1,25,28,'Header Image',0,0,0,0),(1,25,58,'Header',0,0,0,0),(1,25,62,'post',0,0,0,0),(1,25,64,'content',0,0,0,0),(1,25,65,'content',1,0,0,0),(1,25,67,'footer',0,0,0,0),(1,25,79,'sidebar',0,0,0,0),(1,25,116,'sidebar',1,0,0,0),(1,25,126,'sidebar',2,1,0,0),(1,26,27,'Main',0,0,0,0),(1,26,28,'Header Image',0,0,0,0),(1,26,58,'Header',0,0,0,0),(1,26,62,'post',0,0,0,0),(1,26,64,'content',0,0,0,0),(1,26,65,'content',1,0,0,0),(1,26,67,'footer',0,0,0,0),(1,26,126,'sidebar',2,0,0,0),(1,27,27,'Main',0,0,0,0),(1,27,28,'Header Image',0,0,0,0),(1,27,58,'Header',0,0,0,0),(1,27,62,'post',0,0,0,0),(1,27,64,'content',0,0,0,0),(1,27,65,'content',1,0,0,0),(1,27,67,'footer',0,0,0,0),(1,27,126,'sidebar',0,0,0,0),(1,27,130,'header-wrapper',0,1,0,0),(1,28,27,'Main',0,0,0,0),(1,28,28,'Header Image',0,0,0,0),(1,28,58,'Header',0,0,0,0),(1,28,62,'post',0,0,0,0),(1,28,64,'content',0,0,0,0),(1,28,65,'content',1,0,0,0),(1,28,67,'footer',0,0,0,0),(1,28,126,'sidebar',0,0,0,0),(1,28,131,'header-wrapper',0,1,0,0),(1,29,27,'Main',0,0,0,0),(1,29,28,'Header Image',0,0,0,0),(1,29,58,'Header',0,0,0,0),(1,29,62,'post',0,0,0,0),(1,29,64,'content',0,0,0,0),(1,29,65,'content',1,0,0,0),(1,29,67,'footer',0,0,0,0),(1,29,126,'sidebar',0,0,0,0),(1,29,132,'header-wrapper',0,1,0,0),(1,30,27,'Main',0,0,0,0),(1,30,28,'Header Image',0,0,0,0),(1,30,58,'Header',0,0,0,0),(1,30,62,'post',0,0,0,0),(1,30,64,'content',0,0,0,0),(1,30,65,'content',1,0,0,0),(1,30,67,'footer',0,0,0,0),(1,30,126,'sidebar',0,0,0,0),(1,30,132,'header-wrapper',0,0,0,0),(1,30,133,'header-wrapper',1,1,0,0),(1,30,134,'header-wrapper',2,1,0,0),(1,31,27,'Main',0,0,0,0),(1,31,28,'Header Image',0,0,0,0),(1,31,58,'Header',0,0,0,0),(1,31,62,'post',0,0,0,0),(1,31,64,'content',0,0,0,0),(1,31,65,'content',1,0,0,0),(1,31,67,'footer',0,0,0,0),(1,31,126,'sidebar',0,0,0,0),(1,31,132,'header-wrapper',0,0,0,0),(1,31,133,'header-wrapper',1,0,0,0),(1,31,134,'header-wrapper',2,0,0,0),(1,31,135,'header-wrapper',3,1,0,0),(1,32,27,'Main',0,0,0,0),(1,32,28,'Header Image',0,0,0,0),(1,32,58,'Header',0,0,0,0),(1,32,62,'post',0,0,0,0),(1,32,64,'content',0,0,0,0),(1,32,65,'content',1,0,0,0),(1,32,67,'footer',0,0,0,0),(1,32,126,'sidebar',0,0,0,0),(1,32,132,'header-wrapper',0,0,0,0),(1,32,133,'header-wrapper',1,0,0,0),(1,32,134,'header-wrapper',2,0,0,0),(1,32,136,'header-wrapper',3,1,0,0),(1,32,137,'subheader1',0,1,0,0),(1,33,27,'Main',0,0,0,0),(1,33,28,'Header Image',0,0,0,0),(1,33,58,'Header',0,0,0,0),(1,33,62,'post',0,0,0,0),(1,33,64,'content',0,0,0,0),(1,33,65,'content',1,0,0,0),(1,33,67,'footer',0,0,0,0),(1,33,126,'sidebar',0,0,0,0),(1,33,132,'header-wrapper',0,0,0,0),(1,33,133,'header-wrapper',1,0,0,0),(1,33,134,'header-wrapper',2,0,0,0),(1,33,136,'header-wrapper',3,0,0,0),(1,33,137,'subheader1',0,0,0,0),(1,33,138,'column-455 m-right-70 m-top-50',0,1,0,0),(1,33,139,'column-455  m-top-50',0,1,0,0),(1,34,27,'Main',0,0,0,0),(1,34,28,'Header Image',0,0,0,0),(1,34,58,'Header',0,0,0,0),(1,34,62,'post',0,0,0,0),(1,34,64,'content',0,0,0,0),(1,34,65,'content',1,0,0,0),(1,34,67,'footer',0,0,0,0),(1,34,126,'sidebar',0,0,0,0),(1,34,132,'header-wrapper',0,0,0,0),(1,34,133,'header-wrapper',1,0,0,0),(1,34,134,'header-wrapper',2,0,0,0),(1,34,136,'header-wrapper',3,0,0,0),(1,34,137,'subheader1',0,0,0,0),(1,34,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,34,139,'column-455  m-top-50',0,0,0,0),(1,34,140,'subheader2',0,1,0,0),(1,34,141,'column-640  m-top-50',0,1,0,0),(1,34,142,'column-300 m-left-40 m-top-50',0,1,0,0),(1,34,143,'column-455 m-right-70 m-top-70',0,1,0,0),(1,34,144,'column-455 m-top-70',0,1,0,0),(1,34,145,'subheader3',0,1,0,0),(1,34,146,'column-640 m-top-50',0,1,0,0),(1,34,147,'column-300_2 m-left-40 m-top-50',0,1,0,0),(1,34,148,'showcase-sub-container',0,1,0,0),(1,35,27,'Main',0,0,0,0),(1,35,28,'Header Image',0,0,0,0),(1,35,58,'Header',0,0,0,0),(1,35,62,'post',0,0,0,0),(1,35,64,'content',0,0,0,0),(1,35,65,'content',1,0,0,0),(1,35,67,'footer',0,0,0,0),(1,35,126,'sidebar',0,0,0,0),(1,35,132,'header-wrapper',0,0,0,0),(1,35,133,'header-wrapper',1,0,0,0),(1,35,134,'header-wrapper',2,0,0,0),(1,35,136,'header-wrapper',3,0,0,0),(1,35,137,'subheader1',0,0,0,0),(1,35,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,35,139,'column-455  m-top-50',0,0,0,0),(1,35,140,'subheader2',0,0,0,0),(1,35,141,'column-640  m-top-50',0,0,0,0),(1,35,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,35,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,35,144,'column-455 m-top-70',0,0,0,0),(1,35,145,'subheader3',0,0,0,0),(1,35,146,'column-640 m-top-50',0,0,0,0),(1,35,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,35,149,'showcase-sub-container',0,1,0,0),(1,36,27,'Main',0,0,0,0),(1,36,28,'Header Image',0,0,0,0),(1,36,58,'Header',0,0,0,0),(1,36,62,'post',0,0,0,0),(1,36,64,'content',0,0,0,0),(1,36,65,'content',1,0,0,0),(1,36,67,'footer',0,0,0,0),(1,36,126,'sidebar',0,0,0,0),(1,36,132,'header-wrapper',0,0,0,0),(1,36,133,'header-wrapper',1,0,0,0),(1,36,134,'header-wrapper',2,0,0,0),(1,36,136,'header-wrapper',3,0,0,0),(1,36,137,'subheader1',0,0,0,0),(1,36,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,36,139,'column-455  m-top-50',0,0,0,0),(1,36,140,'subheader2',0,0,0,0),(1,36,141,'column-640  m-top-50',0,0,0,0),(1,36,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,36,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,36,144,'column-455 m-top-70',0,0,0,0),(1,36,145,'subheader3',0,0,0,0),(1,36,146,'column-640 m-top-50',0,0,0,0),(1,36,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,36,149,'showcase-sub-container',0,0,0,0),(1,36,150,'subheader4',0,1,0,0),(1,36,151,'column-640_4 m-top-50',0,1,0,0),(1,36,152,'column-300_4 m-left-40 m-top-50',0,1,0,0),(1,36,153,'column-300_4 m-left-55 m-top-40',0,1,0,0),(1,37,27,'Main',0,0,0,0),(1,37,28,'Header Image',0,0,0,0),(1,37,58,'Header',0,0,0,0),(1,37,62,'post',0,0,0,0),(1,37,64,'content',0,0,0,0),(1,37,65,'content',1,0,0,0),(1,37,67,'footer',0,0,0,0),(1,37,126,'sidebar',0,0,0,0),(1,37,132,'header-wrapper',0,0,0,0),(1,37,133,'header-wrapper',1,0,0,0),(1,37,134,'header-wrapper',2,0,0,0),(1,37,136,'header-wrapper',3,0,0,0),(1,37,137,'subheader1',0,0,0,0),(1,37,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,37,139,'column-455  m-top-50',0,0,0,0),(1,37,140,'subheader2',0,0,0,0),(1,37,141,'column-640  m-top-50',0,0,0,0),(1,37,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,37,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,37,144,'column-455 m-top-70',0,0,0,0),(1,37,145,'subheader3',0,0,0,0),(1,37,146,'column-640 m-top-50',0,0,0,0),(1,37,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,37,149,'showcase-sub-container',0,0,0,0),(1,37,150,'subheader4',0,0,0,0),(1,37,151,'column-640_4 m-top-50',0,0,0,0),(1,37,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,37,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,37,154,'column-300_4_2 m-top-55 m-right-40',0,1,0,0),(1,37,155,'column-300_4 m-top-55',0,1,0,0),(1,37,156,'subheader6',0,1,0,0),(1,37,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,1,0,0),(1,37,158,'column-525_6 m-top-50',0,1,0,0),(1,37,159,'footer_logo',0,1,0,0),(1,38,27,'Main',0,0,0,0),(1,38,28,'Header Image',0,0,0,0),(1,38,58,'Header',0,0,0,0),(1,38,62,'post',0,0,0,0),(1,38,64,'content',0,0,0,0),(1,38,65,'content',1,0,0,0),(1,38,67,'footer',0,0,0,0),(1,38,126,'sidebar',0,0,0,0),(1,38,132,'header-wrapper',0,0,0,0),(1,38,133,'header-wrapper',1,0,0,0),(1,38,134,'header-wrapper',2,0,0,0),(1,38,136,'header-wrapper',3,0,0,0),(1,38,137,'subheader1',0,0,0,0),(1,38,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,38,139,'column-455  m-top-50',0,0,0,0),(1,38,140,'subheader2',0,0,0,0),(1,38,141,'column-640  m-top-50',0,0,0,0),(1,38,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,38,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,38,144,'column-455 m-top-70',0,0,0,0),(1,38,145,'subheader3',0,0,0,0),(1,38,146,'column-640 m-top-50',0,0,0,0),(1,38,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,38,149,'showcase-sub-container',0,0,0,0),(1,38,150,'subheader4',0,0,0,0),(1,38,151,'column-640_4 m-top-50',0,0,0,0),(1,38,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,38,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,38,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,38,155,'column-300_4 m-top-55',0,0,0,0),(1,38,156,'subheader6',0,0,0,0),(1,38,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,38,158,'column-525_6 m-top-50',0,0,0,0),(1,38,159,'footer_logo',0,0,0,0),(1,38,160,'m-bottom-40',0,1,0,0),(1,39,27,'Main',0,0,0,0),(1,39,28,'Header Image',0,0,0,0),(1,39,58,'Header',0,0,0,0),(1,39,62,'post',0,0,0,0),(1,39,64,'content',0,0,0,0),(1,39,65,'content',1,0,0,0),(1,39,67,'footer',0,0,0,0),(1,39,126,'sidebar',0,0,0,0),(1,39,132,'header-wrapper',0,0,0,0),(1,39,133,'header-wrapper',1,0,0,0),(1,39,134,'header-wrapper',2,0,0,0),(1,39,136,'header-wrapper',3,0,0,0),(1,39,137,'subheader1',0,0,0,0),(1,39,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,39,139,'column-455  m-top-50',0,0,0,0),(1,39,140,'subheader2',0,0,0,0),(1,39,141,'column-640  m-top-50',0,0,0,0),(1,39,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,39,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,39,144,'column-455 m-top-70',0,0,0,0),(1,39,145,'subheader3',0,0,0,0),(1,39,146,'column-640 m-top-50',0,0,0,0),(1,39,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,39,150,'subheader4',0,0,0,0),(1,39,151,'column-640_4 m-top-50',0,0,0,0),(1,39,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,39,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,39,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,39,155,'column-300_4 m-top-55',0,0,0,0),(1,39,156,'subheader6',0,0,0,0),(1,39,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,39,158,'column-525_6 m-top-50',0,0,0,0),(1,39,159,'footer_logo',0,0,0,0),(1,39,160,'m-bottom-40',0,0,0,0),(1,39,161,'showcase-sub-container',0,1,0,0),(1,40,27,'Main',0,0,0,0),(1,40,28,'Header Image',0,0,0,0),(1,40,58,'Header',0,0,0,0),(1,40,62,'post',0,0,0,0),(1,40,64,'content',0,0,0,0),(1,40,65,'content',1,0,0,0),(1,40,67,'footer',0,0,0,0),(1,40,126,'sidebar',0,0,0,0),(1,40,132,'header-wrapper',0,0,0,0),(1,40,133,'header-wrapper',1,0,0,0),(1,40,134,'header-wrapper',2,0,0,0),(1,40,136,'header-wrapper',3,0,0,0),(1,40,137,'subheader1',0,0,0,0),(1,40,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,40,139,'column-455  m-top-50',0,0,0,0),(1,40,140,'subheader2',0,0,0,0),(1,40,141,'column-640  m-top-50',0,0,0,0),(1,40,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,40,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,40,144,'column-455 m-top-70',0,0,0,0),(1,40,145,'subheader3',0,0,0,0),(1,40,146,'column-640 m-top-50',0,0,0,0),(1,40,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,40,150,'subheader4',0,0,0,0),(1,40,151,'column-640_4 m-top-50',0,0,0,0),(1,40,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,40,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,40,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,40,155,'column-300_4 m-top-55',0,0,0,0),(1,40,156,'subheader6',0,0,0,0),(1,40,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,40,158,'column-525_6 m-top-50',0,0,0,0),(1,40,159,'footer_logo',0,0,0,0),(1,40,160,'m-bottom-40',0,0,0,0),(1,40,162,'showcase-sub-container',0,1,0,0),(1,41,27,'Main',0,0,0,0),(1,41,28,'Header Image',0,0,0,0),(1,41,58,'Header',0,0,0,0),(1,41,62,'post',0,0,0,0),(1,41,64,'content',0,0,0,0),(1,41,65,'content',1,0,0,0),(1,41,67,'footer',0,0,0,0),(1,41,126,'sidebar',0,0,0,0),(1,41,132,'header-wrapper',0,0,0,0),(1,41,133,'header-wrapper',1,0,0,0),(1,41,134,'header-wrapper',2,0,0,0),(1,41,136,'header-wrapper',3,0,0,0),(1,41,137,'subheader1',0,0,0,0),(1,41,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,41,139,'column-455  m-top-50',0,0,0,0),(1,41,140,'subheader2',0,0,0,0),(1,41,141,'column-640  m-top-50',0,0,0,0),(1,41,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,41,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,41,144,'column-455 m-top-70',0,0,0,0),(1,41,145,'subheader3',0,0,0,0),(1,41,146,'column-640 m-top-50',0,0,0,0),(1,41,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,41,150,'subheader4',0,0,0,0),(1,41,151,'column-640_4 m-top-50',0,0,0,0),(1,41,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,41,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,41,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,41,155,'column-300_4 m-top-55',0,0,0,0),(1,41,156,'subheader6',0,0,0,0),(1,41,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,41,158,'column-525_6 m-top-50',0,0,0,0),(1,41,159,'footer_logo',0,0,0,0),(1,41,160,'m-bottom-40',0,0,0,0),(1,41,163,'showcase-sub-container',0,1,0,0),(1,42,27,'Main',0,0,0,0),(1,42,28,'Header Image',0,0,0,0),(1,42,58,'Header',0,0,0,0),(1,42,62,'post',0,0,0,0),(1,42,64,'content',0,0,0,0),(1,42,65,'content',1,0,0,0),(1,42,67,'footer',0,0,0,0),(1,42,126,'sidebar',0,0,0,0),(1,42,132,'header-wrapper',0,0,0,0),(1,42,133,'header-wrapper',1,0,0,0),(1,42,134,'header-wrapper',2,0,0,0),(1,42,136,'header-wrapper',3,0,0,0),(1,42,137,'subheader1',0,0,0,0),(1,42,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,42,139,'column-455  m-top-50',0,0,0,0),(1,42,140,'subheader2',0,0,0,0),(1,42,141,'column-640  m-top-50',0,0,0,0),(1,42,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,42,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,42,144,'column-455 m-top-70',0,0,0,0),(1,42,145,'subheader3',0,0,0,0),(1,42,146,'column-640 m-top-50',0,0,0,0),(1,42,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,42,150,'subheader4',0,0,0,0),(1,42,151,'column-640_4 m-top-50',0,0,0,0),(1,42,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,42,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,42,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,42,155,'column-300_4 m-top-55',0,0,0,0),(1,42,156,'subheader6',0,0,0,0),(1,42,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,42,158,'column-525_6 m-top-50',0,0,0,0),(1,42,159,'footer_logo',0,0,0,0),(1,42,160,'m-bottom-40',0,0,0,0),(1,42,163,'showcase-sub-container',0,0,0,0),(1,42,164,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,43,27,'Main',0,0,0,0),(1,43,28,'Header Image',0,0,0,0),(1,43,58,'Header',0,0,0,0),(1,43,62,'post',0,0,0,0),(1,43,64,'content',0,0,0,0),(1,43,65,'content',1,0,0,0),(1,43,67,'footer',0,0,0,0),(1,43,126,'sidebar',0,0,0,0),(1,43,132,'header-wrapper',0,0,0,0),(1,43,133,'header-wrapper',1,0,0,0),(1,43,134,'header-wrapper',2,0,0,0),(1,43,136,'header-wrapper',3,0,0,0),(1,43,137,'subheader1',0,0,0,0),(1,43,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,43,139,'column-455  m-top-50',0,0,0,0),(1,43,140,'subheader2',0,0,0,0),(1,43,141,'column-640  m-top-50',0,0,0,0),(1,43,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,43,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,43,144,'column-455 m-top-70',0,0,0,0),(1,43,145,'subheader3',0,0,0,0),(1,43,146,'column-640 m-top-50',0,0,0,0),(1,43,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,43,150,'subheader4',0,0,0,0),(1,43,151,'column-640_4 m-top-50',0,0,0,0),(1,43,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,43,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,43,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,43,155,'column-300_4 m-top-55',0,0,0,0),(1,43,156,'subheader6',0,0,0,0),(1,43,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,43,158,'column-525_6 m-top-50',0,0,0,0),(1,43,159,'footer_logo',0,0,0,0),(1,43,160,'m-bottom-40',0,0,0,0),(1,43,163,'showcase-sub-container',0,0,0,0),(1,43,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,43,166,'column-455 m-right-70 m-top-70 list2',0,1,0,0),(1,43,167,'column-455 m-right-70 m-top-70 list3',0,1,0,0),(1,43,168,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,44,27,'Main',0,0,0,0),(1,44,28,'Header Image',0,0,0,0),(1,44,58,'Header',0,0,0,0),(1,44,62,'post',0,0,0,0),(1,44,64,'content',0,0,0,0),(1,44,65,'content',1,0,0,0),(1,44,67,'footer',0,0,0,0),(1,44,126,'sidebar',0,0,0,0),(1,44,132,'header-wrapper',0,0,0,0),(1,44,133,'header-wrapper',1,0,0,0),(1,44,134,'header-wrapper',2,0,0,0),(1,44,136,'header-wrapper',3,0,0,0),(1,44,137,'subheader1',0,0,0,0),(1,44,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,44,139,'column-455  m-top-50',0,0,0,0),(1,44,140,'subheader2',0,0,0,0),(1,44,141,'column-640  m-top-50',0,0,0,0),(1,44,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,44,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,44,144,'column-455 m-top-70',0,0,0,0),(1,44,145,'subheader3',0,0,0,0),(1,44,146,'column-640 m-top-50',0,0,0,0),(1,44,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,44,150,'subheader4',0,0,0,0),(1,44,151,'column-640_4 m-top-50',0,0,0,0),(1,44,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,44,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,44,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,44,155,'column-300_4 m-top-55',0,0,0,0),(1,44,156,'subheader6',0,0,0,0),(1,44,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,44,158,'column-525_6 m-top-50',0,0,0,0),(1,44,159,'footer_logo',0,0,0,0),(1,44,160,'m-bottom-40',0,0,0,0),(1,44,163,'showcase-sub-container',0,0,0,0),(1,44,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,44,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,44,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,44,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,44,169,'pic-frame rounded 1',0,1,0,0),(1,45,27,'Main',0,0,0,0),(1,45,28,'Header Image',0,0,0,0),(1,45,58,'Header',0,0,0,0),(1,45,62,'post',0,0,0,0),(1,45,64,'content',0,0,0,0),(1,45,65,'content',1,0,0,0),(1,45,67,'footer',0,0,0,0),(1,45,126,'sidebar',0,0,0,0),(1,45,132,'header-wrapper',0,0,0,0),(1,45,133,'header-wrapper',1,0,0,0),(1,45,134,'header-wrapper',2,0,0,0),(1,45,136,'header-wrapper',3,0,0,0),(1,45,137,'subheader1',0,0,0,0),(1,45,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,45,139,'column-455  m-top-50',0,0,0,0),(1,45,140,'subheader2',0,0,0,0),(1,45,141,'column-640  m-top-50',0,0,0,0),(1,45,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,45,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,45,144,'column-455 m-top-70',0,0,0,0),(1,45,145,'subheader3',0,0,0,0),(1,45,146,'column-640 m-top-50',0,0,0,0),(1,45,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,45,150,'subheader4',0,0,0,0),(1,45,151,'column-640_4 m-top-50',0,0,0,0),(1,45,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,45,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,45,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,45,155,'column-300_4 m-top-55',0,0,0,0),(1,45,156,'subheader6',0,0,0,0),(1,45,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,45,158,'column-525_6 m-top-50',0,0,0,0),(1,45,159,'footer_logo',0,0,0,0),(1,45,160,'m-bottom-40',0,0,0,0),(1,45,163,'showcase-sub-container',0,0,0,0),(1,45,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,45,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,45,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,45,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,45,169,'pic-frame rounded 1',0,0,0,0),(1,45,170,'pic-frame rounded 2',0,1,0,0),(1,46,27,'Main',0,0,0,0),(1,46,28,'Header Image',0,0,0,0),(1,46,58,'Header',0,0,0,0),(1,46,62,'post',0,0,0,0),(1,46,64,'content',0,0,0,0),(1,46,65,'content',1,0,0,0),(1,46,67,'footer',0,0,0,0),(1,46,126,'sidebar',0,0,0,0),(1,46,132,'header-wrapper',0,0,0,0),(1,46,133,'header-wrapper',1,0,0,0),(1,46,137,'subheader1',0,0,0,0),(1,46,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,46,139,'column-455  m-top-50',0,0,0,0),(1,46,140,'subheader2',0,0,0,0),(1,46,141,'column-640  m-top-50',0,0,0,0),(1,46,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,46,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,46,144,'column-455 m-top-70',0,0,0,0),(1,46,145,'subheader3',0,0,0,0),(1,46,146,'column-640 m-top-50',0,0,0,0),(1,46,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,46,150,'subheader4',0,0,0,0),(1,46,151,'column-640_4 m-top-50',0,0,0,0),(1,46,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,46,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,46,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,46,155,'column-300_4 m-top-55',0,0,0,0),(1,46,156,'subheader6',0,0,0,0),(1,46,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,46,158,'column-525_6 m-top-50',0,0,0,0),(1,46,159,'footer_logo',0,0,0,0),(1,46,160,'m-bottom-40',0,0,0,0),(1,46,163,'showcase-sub-container',0,0,0,0),(1,46,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,46,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,46,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,46,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,46,169,'pic-frame rounded 1',0,0,0,0),(1,46,170,'pic-frame rounded 2',0,0,0,0),(1,47,27,'Main',0,0,0,0),(1,47,28,'Header Image',0,0,0,0),(1,47,58,'Header',0,0,0,0),(1,47,62,'post',0,0,0,0),(1,47,64,'content',0,0,0,0),(1,47,65,'content',1,0,0,0),(1,47,67,'footer',0,0,0,0),(1,47,126,'sidebar',0,0,0,0),(1,47,132,'header-wrapper',0,0,0,0),(1,47,137,'subheader1',0,0,0,0),(1,47,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,47,139,'column-455  m-top-50',0,0,0,0),(1,47,140,'subheader2',0,0,0,0),(1,47,141,'column-640  m-top-50',0,0,0,0),(1,47,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,47,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,47,144,'column-455 m-top-70',0,0,0,0),(1,47,145,'subheader3',0,0,0,0),(1,47,146,'column-640 m-top-50',0,0,0,0),(1,47,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,47,150,'subheader4',0,0,0,0),(1,47,151,'column-640_4 m-top-50',0,0,0,0),(1,47,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,47,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,47,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,47,155,'column-300_4 m-top-55',0,0,0,0),(1,47,156,'subheader6',0,0,0,0),(1,47,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,47,158,'column-525_6 m-top-50',0,0,0,0),(1,47,159,'footer_logo',0,0,0,0),(1,47,160,'m-bottom-40',0,0,0,0),(1,47,163,'showcase-sub-container',0,0,0,0),(1,47,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,47,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,47,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,47,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,47,169,'pic-frame rounded 1',0,0,0,0),(1,47,170,'pic-frame rounded 2',0,0,0,0),(1,47,171,'header-wrapper',1,1,0,0),(1,48,27,'Main',0,0,0,0),(1,48,28,'Header Image',0,0,0,0),(1,48,58,'Header',0,0,0,0),(1,48,62,'post',0,0,0,0),(1,48,64,'content',0,0,0,0),(1,48,65,'content',1,0,0,0),(1,48,67,'footer',0,0,0,0),(1,48,126,'sidebar',0,0,0,0),(1,48,132,'header-wrapper',0,0,0,0),(1,48,137,'subheader1',0,0,0,0),(1,48,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,48,139,'column-455  m-top-50',0,0,0,0),(1,48,140,'subheader2',0,0,0,0),(1,48,141,'column-640  m-top-50',0,0,0,0),(1,48,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,48,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,48,144,'column-455 m-top-70',0,0,0,0),(1,48,145,'subheader3',0,0,0,0),(1,48,146,'column-640 m-top-50',0,0,0,0),(1,48,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,48,150,'subheader4',0,0,0,0),(1,48,151,'column-640_4 m-top-50',0,0,0,0),(1,48,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,48,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,48,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,48,155,'column-300_4 m-top-55',0,0,0,0),(1,48,156,'subheader6',0,0,0,0),(1,48,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,48,158,'column-525_6 m-top-50',0,0,0,0),(1,48,159,'footer_logo',0,0,0,0),(1,48,160,'m-bottom-40',0,0,0,0),(1,48,163,'showcase-sub-container',0,0,0,0),(1,48,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,48,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,48,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,48,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,48,169,'pic-frame rounded 1',0,0,0,0),(1,48,170,'pic-frame rounded 2',0,0,0,0),(1,48,172,'header-wrapper',1,1,0,0),(1,49,27,'Main',0,0,0,0),(1,49,28,'Header Image',0,0,0,0),(1,49,58,'Header',0,0,0,0),(1,49,62,'post',0,0,0,0),(1,49,64,'content',0,0,0,0),(1,49,65,'content',1,0,0,0),(1,49,67,'footer',0,0,0,0),(1,49,126,'sidebar',0,0,0,0),(1,49,132,'header-wrapper',0,0,0,0),(1,49,137,'subheader1',0,0,0,0),(1,49,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,49,139,'column-455  m-top-50',0,0,0,0),(1,49,140,'subheader2',0,0,0,0),(1,49,141,'column-640  m-top-50',0,0,0,0),(1,49,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,49,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,49,144,'column-455 m-top-70',0,0,0,0),(1,49,145,'subheader3',0,0,0,0),(1,49,146,'column-640 m-top-50',0,0,0,0),(1,49,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,49,150,'subheader4',0,0,0,0),(1,49,151,'column-640_4 m-top-50',0,0,0,0),(1,49,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,49,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,49,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,49,155,'column-300_4 m-top-55',0,0,0,0),(1,49,156,'subheader6',0,0,0,0),(1,49,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,49,158,'column-525_6 m-top-50',0,0,0,0),(1,49,159,'footer_logo',0,0,0,0),(1,49,160,'m-bottom-40',0,0,0,0),(1,49,163,'showcase-sub-container',0,0,0,0),(1,49,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,49,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,49,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,49,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,49,169,'pic-frame rounded 1',0,0,0,0),(1,49,170,'pic-frame rounded 2',0,0,0,0),(1,49,173,'header-wrapper',1,1,0,0),(1,50,27,'Main',0,0,0,0),(1,50,28,'Header Image',0,0,0,0),(1,50,58,'Header',0,0,0,0),(1,50,62,'post',0,0,0,0),(1,50,64,'content',0,0,0,0),(1,50,65,'content',1,0,0,0),(1,50,67,'footer',0,0,0,0),(1,50,126,'sidebar',0,0,0,0),(1,50,132,'header-wrapper',0,0,0,0),(1,50,137,'subheader1',0,0,0,0),(1,50,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,50,139,'column-455  m-top-50',0,0,0,0),(1,50,140,'subheader2',0,0,0,0),(1,50,141,'column-640  m-top-50',0,0,0,0),(1,50,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,50,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,50,144,'column-455 m-top-70',0,0,0,0),(1,50,145,'subheader3',0,0,0,0),(1,50,146,'column-640 m-top-50',0,0,0,0),(1,50,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,50,150,'subheader4',0,0,0,0),(1,50,151,'column-640_4 m-top-50',0,0,0,0),(1,50,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,50,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,50,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,50,155,'column-300_4 m-top-55',0,0,0,0),(1,50,156,'subheader6',0,0,0,0),(1,50,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,50,158,'column-525_6 m-top-50',0,0,0,0),(1,50,159,'footer_logo',0,0,0,0),(1,50,160,'m-bottom-40',0,0,0,0),(1,50,163,'showcase-sub-container',0,0,0,0),(1,50,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,50,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,50,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,50,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,50,169,'pic-frame rounded 1',0,0,0,0),(1,50,170,'pic-frame rounded 2',0,0,0,0),(1,50,174,'header-wrapper',1,1,0,0),(1,51,27,'Main',0,0,0,0),(1,51,28,'Header Image',0,0,0,0),(1,51,58,'Header',0,0,0,0),(1,51,62,'post',0,0,0,0),(1,51,64,'content',0,0,0,0),(1,51,65,'content',1,0,0,0),(1,51,67,'footer',0,0,0,0),(1,51,126,'sidebar',0,0,0,0),(1,51,132,'header-wrapper',0,0,0,0),(1,51,137,'subheader1',0,0,0,0),(1,51,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,51,139,'column-455  m-top-50',0,0,0,0),(1,51,140,'subheader2',0,0,0,0),(1,51,141,'column-640  m-top-50',0,0,0,0),(1,51,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,51,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,51,144,'column-455 m-top-70',0,0,0,0),(1,51,145,'subheader3',0,0,0,0),(1,51,146,'column-640 m-top-50',0,0,0,0),(1,51,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,51,150,'subheader4',0,0,0,0),(1,51,151,'column-640_4 m-top-50',0,0,0,0),(1,51,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,51,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,51,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,51,155,'column-300_4 m-top-55',0,0,0,0),(1,51,156,'subheader6',0,0,0,0),(1,51,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,51,158,'column-525_6 m-top-50',0,0,0,0),(1,51,159,'footer_logo',0,0,0,0),(1,51,160,'m-bottom-40',0,0,0,0),(1,51,163,'showcase-sub-container',0,0,0,0),(1,51,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,51,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,51,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,51,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,51,169,'pic-frame rounded 1',0,0,0,0),(1,51,170,'pic-frame rounded 2',0,0,0,0),(1,51,175,'header-wrapper',1,1,0,0),(1,52,27,'Main',0,0,0,0),(1,52,28,'Header Image',0,0,0,0),(1,52,58,'Header',0,0,0,0),(1,52,62,'post',0,0,0,0),(1,52,64,'content',0,0,0,0),(1,52,65,'content',1,0,0,0),(1,52,67,'footer',0,0,0,0),(1,52,126,'sidebar',0,0,0,0),(1,52,132,'header-wrapper',0,0,0,0),(1,52,137,'subheader1',0,0,0,0),(1,52,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,52,139,'column-455  m-top-50',0,0,0,0),(1,52,140,'subheader2',0,0,0,0),(1,52,141,'column-640  m-top-50',0,0,0,0),(1,52,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,52,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,52,144,'column-455 m-top-70',0,0,0,0),(1,52,145,'subheader3',0,0,0,0),(1,52,146,'column-640 m-top-50',0,0,0,0),(1,52,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,52,150,'subheader4',0,0,0,0),(1,52,151,'column-640_4 m-top-50',0,0,0,0),(1,52,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,52,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,52,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,52,155,'column-300_4 m-top-55',0,0,0,0),(1,52,156,'subheader6',0,0,0,0),(1,52,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,52,158,'column-525_6 m-top-50',0,0,0,0),(1,52,159,'footer_logo',0,0,0,0),(1,52,160,'m-bottom-40',0,0,0,0),(1,52,163,'showcase-sub-container',0,0,0,0),(1,52,164,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,52,166,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,52,167,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,52,168,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,52,169,'pic-frame rounded 1',0,0,0,0),(1,52,170,'pic-frame rounded 2',0,0,0,0),(1,52,176,'header-wrapper',1,1,0,0),(1,53,27,'Main',0,0,0,0),(1,53,28,'Header Image',0,0,0,0),(1,53,58,'Header',0,0,0,0),(1,53,62,'post',0,0,0,0),(1,53,64,'content',0,0,0,0),(1,53,65,'content',1,0,0,0),(1,53,67,'footer',0,0,0,0),(1,53,126,'sidebar',0,0,0,0),(1,53,132,'header-wrapper',0,0,0,0),(1,53,137,'subheader1',0,0,0,0),(1,53,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,53,139,'column-455  m-top-50',0,0,0,0),(1,53,140,'subheader2',0,0,0,0),(1,53,141,'column-640  m-top-50',0,0,0,0),(1,53,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,53,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,53,144,'column-455 m-top-70',0,0,0,0),(1,53,145,'subheader3',0,0,0,0),(1,53,146,'column-640 m-top-50',0,0,0,0),(1,53,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,53,150,'subheader4',0,0,0,0),(1,53,151,'column-640_4 m-top-50',0,0,0,0),(1,53,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,53,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,53,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,53,155,'column-300_4 m-top-55',0,0,0,0),(1,53,156,'subheader6',0,0,0,0),(1,53,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,53,158,'column-525_6 m-top-50',0,0,0,0),(1,53,159,'footer_logo',0,0,0,0),(1,53,160,'m-bottom-40',0,0,0,0),(1,53,163,'showcase-sub-container',0,0,0,0),(1,53,169,'pic-frame rounded 1',0,0,0,0),(1,53,170,'pic-frame rounded 2',0,0,0,0),(1,53,176,'header-wrapper',1,0,0,0),(1,53,178,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,53,179,'column-455 m-right-70 m-top-70 list2',0,1,0,0),(1,53,180,'column-455 m-right-70 m-top-70 list3',0,1,0,0),(1,53,181,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,54,27,'Main',0,0,0,0),(1,54,28,'Header Image',0,0,0,0),(1,54,58,'Header',0,0,0,0),(1,54,62,'post',0,0,0,0),(1,54,64,'content',0,0,0,0),(1,54,65,'content',1,0,0,0),(1,54,67,'footer',0,0,0,0),(1,54,126,'sidebar',0,0,0,0),(1,54,132,'header-wrapper',0,0,0,0),(1,54,137,'subheader1',0,0,0,0),(1,54,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,54,139,'column-455  m-top-50',0,0,0,0),(1,54,140,'subheader2',0,0,0,0),(1,54,141,'column-640  m-top-50',0,0,0,0),(1,54,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,54,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,54,144,'column-455 m-top-70',0,0,0,0),(1,54,145,'subheader3',0,0,0,0),(1,54,146,'column-640 m-top-50',0,0,0,0),(1,54,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,54,150,'subheader4',0,0,0,0),(1,54,151,'column-640_4 m-top-50',0,0,0,0),(1,54,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,54,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,54,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,54,155,'column-300_4 m-top-55',0,0,0,0),(1,54,156,'subheader6',0,0,0,0),(1,54,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,54,158,'column-525_6 m-top-50',0,0,0,0),(1,54,159,'footer_logo',0,0,0,0),(1,54,160,'m-bottom-40',0,0,0,0),(1,54,163,'showcase-sub-container',0,0,0,0),(1,54,169,'pic-frame rounded 1',0,0,0,0),(1,54,170,'pic-frame rounded 2',0,0,0,0),(1,54,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,54,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,54,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,54,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,54,182,'header-wrapper',1,1,0,0),(1,55,27,'Main',0,0,0,0),(1,55,28,'Header Image',0,0,0,0),(1,55,58,'Header',0,0,0,0),(1,55,62,'post',0,0,0,0),(1,55,64,'content',0,0,0,0),(1,55,65,'content',1,0,0,0),(1,55,67,'footer',0,0,0,0),(1,55,126,'sidebar',0,0,0,0),(1,55,132,'header-wrapper',0,0,0,0),(1,55,137,'subheader1',0,0,0,0),(1,55,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,55,139,'column-455  m-top-50',0,0,0,0),(1,55,140,'subheader2',0,0,0,0),(1,55,141,'column-640  m-top-50',0,0,0,0),(1,55,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,55,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,55,144,'column-455 m-top-70',0,0,0,0),(1,55,145,'subheader3',0,0,0,0),(1,55,146,'column-640 m-top-50',0,0,0,0),(1,55,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,55,150,'subheader4',0,0,0,0),(1,55,151,'column-640_4 m-top-50',0,0,0,0),(1,55,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,55,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,55,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,55,155,'column-300_4 m-top-55',0,0,0,0),(1,55,156,'subheader6',0,0,0,0),(1,55,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,55,158,'column-525_6 m-top-50',0,0,0,0),(1,55,159,'footer_logo',0,0,0,0),(1,55,160,'m-bottom-40',0,0,0,0),(1,55,163,'showcase-sub-container',0,0,0,0),(1,55,169,'pic-frame rounded 1',0,0,0,0),(1,55,170,'pic-frame rounded 2',0,0,0,0),(1,55,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,55,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,55,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,55,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,55,183,'header-wrapper',1,1,0,0),(1,56,27,'Main',0,0,0,0),(1,56,28,'Header Image',0,0,0,0),(1,56,58,'Header',0,0,0,0),(1,56,62,'post',0,0,0,0),(1,56,64,'content',0,0,0,0),(1,56,65,'content',1,0,0,0),(1,56,67,'footer',0,0,0,0),(1,56,126,'sidebar',0,0,0,0),(1,56,132,'header-wrapper',0,0,0,0),(1,56,137,'subheader1',0,0,0,0),(1,56,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,56,139,'column-455  m-top-50',0,0,0,0),(1,56,140,'subheader2',0,0,0,0),(1,56,141,'column-640  m-top-50',0,0,0,0),(1,56,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,56,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,56,144,'column-455 m-top-70',0,0,0,0),(1,56,145,'subheader3',0,0,0,0),(1,56,146,'column-640 m-top-50',0,0,0,0),(1,56,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,56,150,'subheader4',0,0,0,0),(1,56,151,'column-640_4 m-top-50',0,0,0,0),(1,56,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,56,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,56,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,56,155,'column-300_4 m-top-55',0,0,0,0),(1,56,156,'subheader6',0,0,0,0),(1,56,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,56,158,'column-525_6 m-top-50',0,0,0,0),(1,56,159,'footer_logo',0,0,0,0),(1,56,160,'m-bottom-40',0,0,0,0),(1,56,163,'showcase-sub-container',0,0,0,0),(1,56,169,'pic-frame rounded 1',0,0,0,0),(1,56,170,'pic-frame rounded 2',0,0,0,0),(1,56,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,56,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,56,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,56,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,56,183,'header-wrapper',1,0,0,0),(1,56,184,'header-wrapper',2,1,0,0),(1,57,27,'Main',0,0,0,0),(1,57,28,'Header Image',0,0,0,0),(1,57,58,'Header',0,0,0,0),(1,57,62,'post',0,0,0,0),(1,57,64,'content',0,0,0,0),(1,57,65,'content',1,0,0,0),(1,57,67,'footer',0,0,0,0),(1,57,126,'sidebar',0,0,0,0),(1,57,132,'header-wrapper',0,0,0,0),(1,57,137,'subheader1',0,0,0,0),(1,57,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,57,139,'column-455  m-top-50',0,0,0,0),(1,57,140,'subheader2',0,0,0,0),(1,57,141,'column-640  m-top-50',0,0,0,0),(1,57,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,57,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,57,144,'column-455 m-top-70',0,0,0,0),(1,57,145,'subheader3',0,0,0,0),(1,57,146,'column-640 m-top-50',0,0,0,0),(1,57,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,57,150,'subheader4',0,0,0,0),(1,57,151,'column-640_4 m-top-50',0,0,0,0),(1,57,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,57,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,57,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,57,155,'column-300_4 m-top-55',0,0,0,0),(1,57,156,'subheader6',0,0,0,0),(1,57,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,57,158,'column-525_6 m-top-50',0,0,0,0),(1,57,159,'footer_logo',0,0,0,0),(1,57,160,'m-bottom-40',0,0,0,0),(1,57,163,'showcase-sub-container',0,0,0,0),(1,57,169,'pic-frame rounded 1',0,0,0,0),(1,57,170,'pic-frame rounded 2',0,0,0,0),(1,57,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,57,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,57,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,57,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,57,183,'header-wrapper',1,0,0,0),(1,57,185,'header-wrapper',2,1,0,0),(1,58,27,'Main',0,0,0,0),(1,58,28,'Header Image',0,0,0,0),(1,58,58,'Header',0,0,0,0),(1,58,62,'post',0,0,0,0),(1,58,64,'content',0,0,0,0),(1,58,65,'content',1,0,0,0),(1,58,67,'footer',0,0,0,0),(1,58,126,'sidebar',0,0,0,0),(1,58,132,'header-wrapper',0,0,0,0),(1,58,137,'subheader1',0,0,0,0),(1,58,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,58,139,'column-455  m-top-50',0,0,0,0),(1,58,140,'subheader2',0,0,0,0),(1,58,141,'column-640  m-top-50',0,0,0,0),(1,58,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,58,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,58,144,'column-455 m-top-70',0,0,0,0),(1,58,145,'subheader3',0,0,0,0),(1,58,146,'column-640 m-top-50',0,0,0,0),(1,58,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,58,150,'subheader4',0,0,0,0),(1,58,151,'column-640_4 m-top-50',0,0,0,0),(1,58,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,58,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,58,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,58,155,'column-300_4 m-top-55',0,0,0,0),(1,58,156,'subheader6',0,0,0,0),(1,58,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,58,158,'column-525_6 m-top-50',0,0,0,0),(1,58,159,'footer_logo',0,0,0,0),(1,58,160,'m-bottom-40',0,0,0,0),(1,58,163,'showcase-sub-container',0,0,0,0),(1,58,169,'pic-frame rounded 1',0,0,0,0),(1,58,170,'pic-frame rounded 2',0,0,0,0),(1,58,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,58,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,58,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,58,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,58,183,'header-wrapper',1,0,0,0),(1,58,186,'header-wrapper',2,1,0,0),(1,59,27,'Main',0,0,0,0),(1,59,28,'Header Image',0,0,0,0),(1,59,58,'Header',0,0,0,0),(1,59,62,'post',0,0,0,0),(1,59,64,'content',0,0,0,0),(1,59,65,'content',1,0,0,0),(1,59,67,'footer',0,0,0,0),(1,59,126,'sidebar',0,0,0,0),(1,59,132,'header-wrapper',0,0,0,0),(1,59,137,'subheader1',0,0,0,0),(1,59,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,59,139,'column-455  m-top-50',0,0,0,0),(1,59,140,'subheader2',0,0,0,0),(1,59,141,'column-640  m-top-50',0,0,0,0),(1,59,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,59,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,59,144,'column-455 m-top-70',0,0,0,0),(1,59,145,'subheader3',0,0,0,0),(1,59,146,'column-640 m-top-50',0,0,0,0),(1,59,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,59,150,'subheader4',0,0,0,0),(1,59,151,'column-640_4 m-top-50',0,0,0,0),(1,59,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,59,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,59,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,59,155,'column-300_4 m-top-55',0,0,0,0),(1,59,156,'subheader6',0,0,0,0),(1,59,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,59,158,'column-525_6 m-top-50',0,0,0,0),(1,59,159,'footer_logo',0,0,0,0),(1,59,160,'m-bottom-40',0,0,0,0),(1,59,163,'showcase-sub-container',0,0,0,0),(1,59,169,'pic-frame rounded 1',0,0,0,0),(1,59,170,'pic-frame rounded 2',0,0,0,0),(1,59,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,59,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,59,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,59,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,59,183,'header-wrapper',1,0,0,0),(1,59,187,'header-wrapper',2,1,0,0),(1,60,27,'Main',0,0,0,0),(1,60,28,'Header Image',0,0,0,0),(1,60,58,'Header',0,0,0,0),(1,60,62,'post',0,0,0,0),(1,60,64,'content',0,0,0,0),(1,60,65,'content',1,0,0,0),(1,60,67,'footer',0,0,0,0),(1,60,126,'sidebar',0,0,0,0),(1,60,132,'header-wrapper',0,0,0,0),(1,60,137,'subheader1',0,0,0,0),(1,60,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,60,139,'column-455  m-top-50',0,0,0,0),(1,60,140,'subheader2',0,0,0,0),(1,60,141,'column-640  m-top-50',0,0,0,0),(1,60,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,60,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,60,144,'column-455 m-top-70',0,0,0,0),(1,60,145,'subheader3',0,0,0,0),(1,60,146,'column-640 m-top-50',0,0,0,0),(1,60,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,60,150,'subheader4',0,0,0,0),(1,60,151,'column-640_4 m-top-50',0,0,0,0),(1,60,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,60,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,60,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,60,155,'column-300_4 m-top-55',0,0,0,0),(1,60,156,'subheader6',0,0,0,0),(1,60,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,60,158,'column-525_6 m-top-50',0,0,0,0),(1,60,159,'footer_logo',0,0,0,0),(1,60,160,'m-bottom-40',0,0,0,0),(1,60,163,'showcase-sub-container',0,0,0,0),(1,60,169,'pic-frame rounded 1',0,0,0,0),(1,60,170,'pic-frame rounded 2',0,0,0,0),(1,60,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,60,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,60,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,60,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,60,183,'header-wrapper',1,0,0,0),(1,60,186,'header-wrapper',2,0,0,0),(1,61,27,'Main',0,0,0,0),(1,61,28,'Header Image',0,0,0,0),(1,61,58,'Header',0,0,0,0),(1,61,62,'post',0,0,0,0),(1,61,64,'content',0,0,0,0),(1,61,65,'content',1,0,0,0),(1,61,67,'footer',0,0,0,0),(1,61,126,'sidebar',0,0,0,0),(1,61,132,'header-wrapper',0,0,0,0),(1,61,137,'subheader1',0,0,0,0),(1,61,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,61,139,'column-455  m-top-50',0,0,0,0),(1,61,140,'subheader2',0,0,0,0),(1,61,141,'column-640  m-top-50',0,0,0,0),(1,61,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,61,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,61,144,'column-455 m-top-70',0,0,0,0),(1,61,145,'subheader3',0,0,0,0),(1,61,146,'column-640 m-top-50',0,0,0,0),(1,61,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,61,150,'subheader4',0,0,0,0),(1,61,151,'column-640_4 m-top-50',0,0,0,0),(1,61,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,61,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,61,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,61,155,'column-300_4 m-top-55',0,0,0,0),(1,61,156,'subheader6',0,0,0,0),(1,61,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,61,158,'column-525_6 m-top-50',0,0,0,0),(1,61,159,'footer_logo',0,0,0,0),(1,61,160,'m-bottom-40',0,0,0,0),(1,61,163,'showcase-sub-container',0,0,0,0),(1,61,169,'pic-frame rounded 1',0,0,0,0),(1,61,170,'pic-frame rounded 2',0,0,0,0),(1,61,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,61,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,61,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,61,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,61,183,'header-wrapper',1,0,0,0),(1,61,188,'header-wrapper',2,1,0,0),(1,62,27,'Main',0,0,0,0),(1,62,28,'Header Image',0,0,0,0),(1,62,58,'Header',0,0,0,0),(1,62,62,'post',0,0,0,0),(1,62,64,'content',0,0,0,0),(1,62,65,'content',1,0,0,0),(1,62,67,'footer',0,0,0,0),(1,62,126,'sidebar',0,0,0,0),(1,62,132,'header-wrapper',0,0,0,0),(1,62,137,'subheader1',0,0,0,0),(1,62,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,62,139,'column-455  m-top-50',0,0,0,0),(1,62,140,'subheader2',0,0,0,0),(1,62,141,'column-640  m-top-50',0,0,0,0),(1,62,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,62,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,62,144,'column-455 m-top-70',0,0,0,0),(1,62,145,'subheader3',0,0,0,0),(1,62,146,'column-640 m-top-50',0,0,0,0),(1,62,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,62,150,'subheader4',0,0,0,0),(1,62,151,'column-640_4 m-top-50',0,0,0,0),(1,62,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,62,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,62,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,62,155,'column-300_4 m-top-55',0,0,0,0),(1,62,156,'subheader6',0,0,0,0),(1,62,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,62,158,'column-525_6 m-top-50',0,0,0,0),(1,62,159,'footer_logo',0,0,0,0),(1,62,160,'m-bottom-40',0,0,0,0),(1,62,163,'showcase-sub-container',0,0,0,0),(1,62,169,'pic-frame rounded 1',0,0,0,0),(1,62,170,'pic-frame rounded 2',0,0,0,0),(1,62,178,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,62,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,62,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,62,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,62,183,'header-wrapper',1,0,0,0),(1,62,189,'header-wrapper',2,1,0,0),(1,63,27,'Main',0,0,0,0),(1,63,28,'Header Image',0,0,0,0),(1,63,58,'Header',0,0,0,0),(1,63,62,'post',0,0,0,0),(1,63,64,'content',0,0,0,0),(1,63,65,'content',1,0,0,0),(1,63,67,'footer',0,0,0,0),(1,63,126,'sidebar',0,0,0,0),(1,63,132,'header-wrapper',0,0,0,0),(1,63,137,'subheader1',0,0,0,0),(1,63,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,63,139,'column-455  m-top-50',0,0,0,0),(1,63,140,'subheader2',0,0,0,0),(1,63,141,'column-640  m-top-50',0,0,0,0),(1,63,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,63,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,63,144,'column-455 m-top-70',0,0,0,0),(1,63,145,'subheader3',0,0,0,0),(1,63,146,'column-640 m-top-50',0,0,0,0),(1,63,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,63,150,'subheader4',0,0,0,0),(1,63,151,'column-640_4 m-top-50',0,0,0,0),(1,63,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,63,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,63,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,63,155,'column-300_4 m-top-55',0,0,0,0),(1,63,156,'subheader6',0,0,0,0),(1,63,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,63,158,'column-525_6 m-top-50',0,0,0,0),(1,63,159,'footer_logo',0,0,0,0),(1,63,160,'m-bottom-40',0,0,0,0),(1,63,163,'showcase-sub-container',0,0,0,0),(1,63,169,'pic-frame rounded 1',0,0,0,0),(1,63,170,'pic-frame rounded 2',0,0,0,0),(1,63,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,63,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,63,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,63,183,'header-wrapper',1,0,0,0),(1,63,189,'header-wrapper',2,0,0,0),(1,63,190,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,64,27,'Main',0,0,0,0),(1,64,28,'Header Image',0,0,0,0),(1,64,58,'Header',0,0,0,0),(1,64,62,'post',0,0,0,0),(1,64,64,'content',0,0,0,0),(1,64,65,'content',1,0,0,0),(1,64,67,'footer',0,0,0,0),(1,64,126,'sidebar',0,0,0,0),(1,64,132,'header-wrapper',0,0,0,0),(1,64,137,'subheader1',0,0,0,0),(1,64,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,64,139,'column-455  m-top-50',0,0,0,0),(1,64,140,'subheader2',0,0,0,0),(1,64,141,'column-640  m-top-50',0,0,0,0),(1,64,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,64,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,64,144,'column-455 m-top-70',0,0,0,0),(1,64,145,'subheader3',0,0,0,0),(1,64,146,'column-640 m-top-50',0,0,0,0),(1,64,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,64,150,'subheader4',0,0,0,0),(1,64,151,'column-640_4 m-top-50',0,0,0,0),(1,64,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,64,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,64,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,64,155,'column-300_4 m-top-55',0,0,0,0),(1,64,156,'subheader6',0,0,0,0),(1,64,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,64,158,'column-525_6 m-top-50',0,0,0,0),(1,64,159,'footer_logo',0,0,0,0),(1,64,160,'m-bottom-40',0,0,0,0),(1,64,163,'showcase-sub-container',0,0,0,0),(1,64,169,'pic-frame rounded 1',0,0,0,0),(1,64,170,'pic-frame rounded 2',0,0,0,0),(1,64,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,64,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,64,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,64,183,'header-wrapper',1,0,0,0),(1,64,189,'header-wrapper',2,0,0,0),(1,64,191,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,65,27,'Main',0,0,0,0),(1,65,28,'Header Image',0,0,0,0),(1,65,58,'Header',0,0,0,0),(1,65,62,'post',0,0,0,0),(1,65,64,'content',0,0,0,0),(1,65,65,'content',1,0,0,0),(1,65,67,'footer',0,0,0,0),(1,65,126,'sidebar',0,0,0,0),(1,65,132,'header-wrapper',0,0,0,0),(1,65,137,'subheader1',0,0,0,0),(1,65,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,65,139,'column-455  m-top-50',0,0,0,0),(1,65,140,'subheader2',0,0,0,0),(1,65,141,'column-640  m-top-50',0,0,0,0),(1,65,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,65,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,65,144,'column-455 m-top-70',0,0,0,0),(1,65,145,'subheader3',0,0,0,0),(1,65,146,'column-640 m-top-50',0,0,0,0),(1,65,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,65,150,'subheader4',0,0,0,0),(1,65,151,'column-640_4 m-top-50',0,0,0,0),(1,65,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,65,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,65,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,65,155,'column-300_4 m-top-55',0,0,0,0),(1,65,156,'subheader6',0,0,0,0),(1,65,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,65,158,'column-525_6 m-top-50',0,0,0,0),(1,65,159,'footer_logo',0,0,0,0),(1,65,160,'m-bottom-40',0,0,0,0),(1,65,163,'showcase-sub-container',0,0,0,0),(1,65,169,'pic-frame rounded 1',0,0,0,0),(1,65,170,'pic-frame rounded 2',0,0,0,0),(1,65,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,65,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,65,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,65,183,'header-wrapper',1,0,0,0),(1,65,189,'header-wrapper',2,0,0,0),(1,65,192,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,66,27,'Main',0,0,0,0),(1,66,28,'Header Image',0,0,0,0),(1,66,58,'Header',0,0,0,0),(1,66,62,'post',0,0,0,0),(1,66,64,'content',0,0,0,0),(1,66,65,'content',1,0,0,0),(1,66,67,'footer',0,0,0,0),(1,66,126,'sidebar',0,0,0,0),(1,66,132,'header-wrapper',0,0,0,0),(1,66,137,'subheader1',0,0,0,0),(1,66,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,66,139,'column-455  m-top-50',0,0,0,0),(1,66,140,'subheader2',0,0,0,0),(1,66,141,'column-640  m-top-50',0,0,0,0),(1,66,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,66,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,66,144,'column-455 m-top-70',0,0,0,0),(1,66,145,'subheader3',0,0,0,0),(1,66,146,'column-640 m-top-50',0,0,0,0),(1,66,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,66,150,'subheader4',0,0,0,0),(1,66,151,'column-640_4 m-top-50',0,0,0,0),(1,66,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,66,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,66,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,66,155,'column-300_4 m-top-55',0,0,0,0),(1,66,156,'subheader6',0,0,0,0),(1,66,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,66,158,'column-525_6 m-top-50',0,0,0,0),(1,66,159,'footer_logo',0,0,0,0),(1,66,160,'m-bottom-40',0,0,0,0),(1,66,163,'showcase-sub-container',0,0,0,0),(1,66,169,'pic-frame rounded 1',0,0,0,0),(1,66,170,'pic-frame rounded 2',0,0,0,0),(1,66,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,66,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,66,181,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,66,183,'header-wrapper',1,0,0,0),(1,66,189,'header-wrapper',2,0,0,0),(1,66,193,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,67,27,'Main',0,0,0,0),(1,67,28,'Header Image',0,0,0,0),(1,67,58,'Header',0,0,0,0),(1,67,62,'post',0,0,0,0),(1,67,64,'content',0,0,0,0),(1,67,65,'content',1,0,0,0),(1,67,67,'footer',0,0,0,0),(1,67,126,'sidebar',0,0,0,0),(1,67,132,'header-wrapper',0,0,0,0),(1,67,137,'subheader1',0,0,0,0),(1,67,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,67,139,'column-455  m-top-50',0,0,0,0),(1,67,140,'subheader2',0,0,0,0),(1,67,141,'column-640  m-top-50',0,0,0,0),(1,67,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,67,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,67,144,'column-455 m-top-70',0,0,0,0),(1,67,145,'subheader3',0,0,0,0),(1,67,146,'column-640 m-top-50',0,0,0,0),(1,67,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,67,150,'subheader4',0,0,0,0),(1,67,151,'column-640_4 m-top-50',0,0,0,0),(1,67,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,67,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,67,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,67,155,'column-300_4 m-top-55',0,0,0,0),(1,67,156,'subheader6',0,0,0,0),(1,67,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,67,158,'column-525_6 m-top-50',0,0,0,0),(1,67,159,'footer_logo',0,0,0,0),(1,67,160,'m-bottom-40',0,0,0,0),(1,67,163,'showcase-sub-container',0,0,0,0),(1,67,169,'pic-frame rounded 1',0,0,0,0),(1,67,170,'pic-frame rounded 2',0,0,0,0),(1,67,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,67,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,67,183,'header-wrapper',1,0,0,0),(1,67,189,'header-wrapper',2,0,0,0),(1,67,193,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,67,194,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,68,27,'Main',0,0,0,0),(1,68,28,'Header Image',0,0,0,0),(1,68,58,'Header',0,0,0,0),(1,68,62,'post',0,0,0,0),(1,68,64,'content',0,0,0,0),(1,68,65,'content',1,0,0,0),(1,68,67,'footer',0,0,0,0),(1,68,126,'sidebar',0,0,0,0),(1,68,132,'header-wrapper',0,0,0,0),(1,68,137,'subheader1',0,0,0,0),(1,68,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,68,139,'column-455  m-top-50',0,0,0,0),(1,68,140,'subheader2',0,0,0,0),(1,68,141,'column-640  m-top-50',0,0,0,0),(1,68,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,68,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,68,144,'column-455 m-top-70',0,0,0,0),(1,68,145,'subheader3',0,0,0,0),(1,68,146,'column-640 m-top-50',0,0,0,0),(1,68,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,68,150,'subheader4',0,0,0,0),(1,68,151,'column-640_4 m-top-50',0,0,0,0),(1,68,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,68,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,68,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,68,155,'column-300_4 m-top-55',0,0,0,0),(1,68,156,'subheader6',0,0,0,0),(1,68,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,68,158,'column-525_6 m-top-50',0,0,0,0),(1,68,159,'footer_logo',0,0,0,0),(1,68,160,'m-bottom-40',0,0,0,0),(1,68,163,'showcase-sub-container',0,0,0,0),(1,68,169,'pic-frame rounded 1',0,0,0,0),(1,68,170,'pic-frame rounded 2',0,0,0,0),(1,68,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,68,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,68,183,'header-wrapper',1,0,0,0),(1,68,189,'header-wrapper',2,0,0,0),(1,68,193,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,68,195,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,69,27,'Main',0,0,0,0),(1,69,28,'Header Image',0,0,0,0),(1,69,58,'Header',0,0,0,0),(1,69,62,'post',0,0,0,0),(1,69,64,'content',0,0,0,0),(1,69,65,'content',1,0,0,0),(1,69,67,'footer',0,0,0,0),(1,69,126,'sidebar',0,0,0,0),(1,69,132,'header-wrapper',0,0,0,0),(1,69,137,'subheader1',0,0,0,0),(1,69,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,69,139,'column-455  m-top-50',0,0,0,0),(1,69,140,'subheader2',0,0,0,0),(1,69,141,'column-640  m-top-50',0,0,0,0),(1,69,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,69,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,69,144,'column-455 m-top-70',0,0,0,0),(1,69,145,'subheader3',0,0,0,0),(1,69,146,'column-640 m-top-50',0,0,0,0),(1,69,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,69,150,'subheader4',0,0,0,0),(1,69,151,'column-640_4 m-top-50',0,0,0,0),(1,69,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,69,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,69,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,69,155,'column-300_4 m-top-55',0,0,0,0),(1,69,156,'subheader6',0,0,0,0),(1,69,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,69,158,'column-525_6 m-top-50',0,0,0,0),(1,69,159,'footer_logo',0,0,0,0),(1,69,160,'m-bottom-40',0,0,0,0),(1,69,163,'showcase-sub-container',0,0,0,0),(1,69,169,'pic-frame rounded 1',0,0,0,0),(1,69,170,'pic-frame rounded 2',0,0,0,0),(1,69,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,69,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,69,183,'header-wrapper',1,0,0,0),(1,69,189,'header-wrapper',2,0,0,0),(1,69,195,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,69,196,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,70,27,'Main',0,0,0,0),(1,70,28,'Header Image',0,0,0,0),(1,70,58,'Header',0,0,0,0),(1,70,62,'post',0,0,0,0),(1,70,64,'content',0,0,0,0),(1,70,65,'content',1,0,0,0),(1,70,67,'footer',0,0,0,0),(1,70,126,'sidebar',0,0,0,0),(1,70,132,'header-wrapper',0,0,0,0),(1,70,137,'subheader1',0,0,0,0),(1,70,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,70,139,'column-455  m-top-50',0,0,0,0),(1,70,140,'subheader2',0,0,0,0),(1,70,141,'column-640  m-top-50',0,0,0,0),(1,70,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,70,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,70,144,'column-455 m-top-70',0,0,0,0),(1,70,145,'subheader3',0,0,0,0),(1,70,146,'column-640 m-top-50',0,0,0,0),(1,70,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,70,150,'subheader4',0,0,0,0),(1,70,151,'column-640_4 m-top-50',0,0,0,0),(1,70,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,70,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,70,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,70,155,'column-300_4 m-top-55',0,0,0,0),(1,70,156,'subheader6',0,0,0,0),(1,70,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,70,158,'column-525_6 m-top-50',0,0,0,0),(1,70,159,'footer_logo',0,0,0,0),(1,70,160,'m-bottom-40',0,0,0,0),(1,70,163,'showcase-sub-container',0,0,0,0),(1,70,169,'pic-frame rounded 1',0,0,0,0),(1,70,170,'pic-frame rounded 2',0,0,0,0),(1,70,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,70,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,70,183,'header-wrapper',1,0,0,0),(1,70,189,'header-wrapper',2,0,0,0),(1,70,195,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,70,197,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,71,27,'Main',0,0,0,0),(1,71,28,'Header Image',0,0,0,0),(1,71,58,'Header',0,0,0,0),(1,71,62,'post',0,0,0,0),(1,71,64,'content',0,0,0,0),(1,71,65,'content',1,0,0,0),(1,71,67,'footer',0,0,0,0),(1,71,126,'sidebar',0,0,0,0),(1,71,132,'header-wrapper',0,0,0,0),(1,71,137,'subheader1',0,0,0,0),(1,71,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,71,139,'column-455  m-top-50',0,0,0,0),(1,71,140,'subheader2',0,0,0,0),(1,71,141,'column-640  m-top-50',0,0,0,0),(1,71,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,71,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,71,144,'column-455 m-top-70',0,0,0,0),(1,71,145,'subheader3',0,0,0,0),(1,71,146,'column-640 m-top-50',0,0,0,0),(1,71,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,71,150,'subheader4',0,0,0,0),(1,71,151,'column-640_4 m-top-50',0,0,0,0),(1,71,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,71,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,71,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,71,155,'column-300_4 m-top-55',0,0,0,0),(1,71,156,'subheader6',0,0,0,0),(1,71,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,71,158,'column-525_6 m-top-50',0,0,0,0),(1,71,159,'footer_logo',0,0,0,0),(1,71,160,'m-bottom-40',0,0,0,0),(1,71,163,'showcase-sub-container',0,0,0,0),(1,71,169,'pic-frame rounded 1',0,0,0,0),(1,71,170,'pic-frame rounded 2',0,0,0,0),(1,71,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,71,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,71,183,'header-wrapper',1,0,0,0),(1,71,189,'header-wrapper',2,0,0,0),(1,71,195,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,71,198,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,72,27,'Main',0,0,0,0),(1,72,28,'Header Image',0,0,0,0),(1,72,58,'Header',0,0,0,0),(1,72,62,'post',0,0,0,0),(1,72,64,'content',0,0,0,0),(1,72,65,'content',1,0,0,0),(1,72,67,'footer',0,0,0,0),(1,72,126,'sidebar',0,0,0,0),(1,72,132,'header-wrapper',0,0,0,0),(1,72,137,'subheader1',0,0,0,0),(1,72,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,72,139,'column-455  m-top-50',0,0,0,0),(1,72,140,'subheader2',0,0,0,0),(1,72,141,'column-640  m-top-50',0,0,0,0),(1,72,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,72,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,72,144,'column-455 m-top-70',0,0,0,0),(1,72,145,'subheader3',0,0,0,0),(1,72,146,'column-640 m-top-50',0,0,0,0),(1,72,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,72,150,'subheader4',0,0,0,0),(1,72,151,'column-640_4 m-top-50',0,0,0,0),(1,72,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,72,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,72,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,72,155,'column-300_4 m-top-55',0,0,0,0),(1,72,156,'subheader6',0,0,0,0),(1,72,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,72,158,'column-525_6 m-top-50',0,0,0,0),(1,72,159,'footer_logo',0,0,0,0),(1,72,160,'m-bottom-40',0,0,0,0),(1,72,163,'showcase-sub-container',0,0,0,0),(1,72,169,'pic-frame rounded 1',0,0,0,0),(1,72,170,'pic-frame rounded 2',0,0,0,0),(1,72,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,72,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,72,183,'header-wrapper',1,0,0,0),(1,72,189,'header-wrapper',2,0,0,0),(1,72,195,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,72,199,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,73,27,'Main',0,0,0,0),(1,73,28,'Header Image',0,0,0,0),(1,73,58,'Header',0,0,0,0),(1,73,62,'post',0,0,0,0),(1,73,64,'content',0,0,0,0),(1,73,65,'content',1,0,0,0),(1,73,67,'footer',0,0,0,0),(1,73,126,'sidebar',0,0,0,0),(1,73,132,'header-wrapper',0,0,0,0),(1,73,137,'subheader1',0,0,0,0),(1,73,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,73,139,'column-455  m-top-50',0,0,0,0),(1,73,140,'subheader2',0,0,0,0),(1,73,141,'column-640  m-top-50',0,0,0,0),(1,73,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,73,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,73,144,'column-455 m-top-70',0,0,0,0),(1,73,145,'subheader3',0,0,0,0),(1,73,146,'column-640 m-top-50',0,0,0,0),(1,73,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,73,150,'subheader4',0,0,0,0),(1,73,151,'column-640_4 m-top-50',0,0,0,0),(1,73,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,73,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,73,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,73,155,'column-300_4 m-top-55',0,0,0,0),(1,73,156,'subheader6',0,0,0,0),(1,73,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,73,158,'column-525_6 m-top-50',0,0,0,0),(1,73,159,'footer_logo',0,0,0,0),(1,73,160,'m-bottom-40',0,0,0,0),(1,73,163,'showcase-sub-container',0,0,0,0),(1,73,169,'pic-frame rounded 1',0,0,0,0),(1,73,170,'pic-frame rounded 2',0,0,0,0),(1,73,179,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,73,180,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,73,183,'header-wrapper',1,0,0,0),(1,73,189,'header-wrapper',2,0,0,0),(1,73,200,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,73,201,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,74,27,'Main',0,0,0,0),(1,74,28,'Header Image',0,0,0,0),(1,74,58,'Header',0,0,0,0),(1,74,62,'post',0,0,0,0),(1,74,64,'content',0,0,0,0),(1,74,65,'content',1,0,0,0),(1,74,67,'footer',0,0,0,0),(1,74,126,'sidebar',0,0,0,0),(1,74,132,'header-wrapper',0,0,0,0),(1,74,137,'subheader1',0,0,0,0),(1,74,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,74,139,'column-455  m-top-50',0,0,0,0),(1,74,140,'subheader2',0,0,0,0),(1,74,141,'column-640  m-top-50',0,0,0,0),(1,74,142,'column-300 m-left-40 m-top-50',0,0,0,0),(1,74,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,74,144,'column-455 m-top-70',0,0,0,0),(1,74,145,'subheader3',0,0,0,0),(1,74,146,'column-640 m-top-50',0,0,0,0),(1,74,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,74,150,'subheader4',0,0,0,0),(1,74,151,'column-640_4 m-top-50',0,0,0,0),(1,74,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,74,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,74,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,74,155,'column-300_4 m-top-55',0,0,0,0),(1,74,156,'subheader6',0,0,0,0),(1,74,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,74,158,'column-525_6 m-top-50',0,0,0,0),(1,74,159,'footer_logo',0,0,0,0),(1,74,160,'m-bottom-40',0,0,0,0),(1,74,163,'showcase-sub-container',0,0,0,0),(1,74,169,'pic-frame rounded 1',0,0,0,0),(1,74,170,'pic-frame rounded 2',0,0,0,0),(1,74,183,'header-wrapper',1,0,0,0),(1,74,189,'header-wrapper',2,0,0,0),(1,74,202,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,74,203,'column-455 m-right-70 m-top-70 list2',0,1,0,0),(1,74,204,'column-455 m-right-70 m-top-70 list3',0,1,0,0),(1,74,205,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,75,27,'Main',0,0,0,0),(1,75,28,'Header Image',0,0,0,0),(1,75,58,'Header',0,0,0,0),(1,75,62,'post',0,0,0,0),(1,75,64,'content',0,0,0,0),(1,75,65,'content',1,0,0,0),(1,75,67,'footer',0,0,0,0),(1,75,126,'sidebar',0,0,0,0),(1,75,132,'header-wrapper',0,0,0,0),(1,75,137,'subheader1',0,0,0,0),(1,75,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,75,139,'column-455  m-top-50',0,0,0,0),(1,75,140,'subheader2',0,0,0,0),(1,75,141,'column-640  m-top-50',0,0,0,0),(1,75,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,75,144,'column-455 m-top-70',0,0,0,0),(1,75,145,'subheader3',0,0,0,0),(1,75,146,'column-640 m-top-50',0,0,0,0),(1,75,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,75,150,'subheader4',0,0,0,0),(1,75,151,'column-640_4 m-top-50',0,0,0,0),(1,75,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,75,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,75,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,75,155,'column-300_4 m-top-55',0,0,0,0),(1,75,156,'subheader6',0,0,0,0),(1,75,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,75,158,'column-525_6 m-top-50',0,0,0,0),(1,75,159,'footer_logo',0,0,0,0),(1,75,160,'m-bottom-40',0,0,0,0),(1,75,163,'showcase-sub-container',0,0,0,0),(1,75,169,'pic-frame rounded 1',0,0,0,0),(1,75,170,'pic-frame rounded 2',0,0,0,0),(1,75,183,'header-wrapper',1,0,0,0),(1,75,189,'header-wrapper',2,0,0,0),(1,75,203,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,75,206,'column-455 m-right-70 m-top-70 list3',0,1,0,0),(1,75,207,'column-300 m-left-40 m-top-50',0,1,0,0),(1,75,208,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,75,209,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,76,27,'Main',0,0,0,0),(1,76,28,'Header Image',0,0,0,0),(1,76,58,'Header',0,0,0,0),(1,76,62,'post',0,0,0,0),(1,76,64,'content',0,0,0,0),(1,76,65,'content',1,0,0,0),(1,76,67,'footer',0,0,0,0),(1,76,126,'sidebar',0,0,0,0),(1,76,132,'header-wrapper',0,0,0,0),(1,76,137,'subheader1',0,0,0,0),(1,76,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,76,139,'column-455  m-top-50',0,0,0,0),(1,76,140,'subheader2',0,0,0,0),(1,76,141,'column-640  m-top-50',0,0,0,0),(1,76,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,76,144,'column-455 m-top-70',0,0,0,0),(1,76,145,'subheader3',0,0,0,0),(1,76,146,'column-640 m-top-50',0,0,0,0),(1,76,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,76,150,'subheader4',0,0,0,0),(1,76,151,'column-640_4 m-top-50',0,0,0,0),(1,76,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,76,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,76,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,76,155,'column-300_4 m-top-55',0,0,0,0),(1,76,156,'subheader6',0,0,0,0),(1,76,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,76,158,'column-525_6 m-top-50',0,0,0,0),(1,76,159,'footer_logo',0,0,0,0),(1,76,160,'m-bottom-40',0,0,0,0),(1,76,163,'showcase-sub-container',0,0,0,0),(1,76,169,'pic-frame rounded 1',0,0,0,0),(1,76,170,'pic-frame rounded 2',0,0,0,0),(1,76,183,'header-wrapper',1,0,0,0),(1,76,189,'header-wrapper',2,0,0,0),(1,76,203,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,76,206,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,76,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,76,209,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,76,210,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,77,27,'Main',0,0,0,0),(1,77,28,'Header Image',0,0,0,0),(1,77,58,'Header',0,0,0,0),(1,77,62,'post',0,0,0,0),(1,77,64,'content',0,0,0,0),(1,77,65,'content',1,0,0,0),(1,77,67,'footer',0,0,0,0),(1,77,126,'sidebar',0,0,0,0),(1,77,132,'header-wrapper',0,0,0,0),(1,77,137,'subheader1',0,0,0,0),(1,77,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,77,139,'column-455  m-top-50',0,0,0,0),(1,77,140,'subheader2',0,0,0,0),(1,77,141,'column-640  m-top-50',0,0,0,0),(1,77,143,'column-455 m-right-70 m-top-70',0,0,0,0),(1,77,144,'column-455 m-top-70',0,0,0,0),(1,77,145,'subheader3',0,0,0,0),(1,77,146,'column-640 m-top-50',0,0,0,0),(1,77,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,77,150,'subheader4',0,0,0,0),(1,77,151,'column-640_4 m-top-50',0,0,0,0),(1,77,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,77,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,77,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,77,155,'column-300_4 m-top-55',0,0,0,0),(1,77,156,'subheader6',0,0,0,0),(1,77,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,77,158,'column-525_6 m-top-50',0,0,0,0),(1,77,159,'footer_logo',0,0,0,0),(1,77,160,'m-bottom-40',0,0,0,0),(1,77,163,'showcase-sub-container',0,0,0,0),(1,77,169,'pic-frame rounded 1',0,0,0,0),(1,77,170,'pic-frame rounded 2',0,0,0,0),(1,77,183,'header-wrapper',1,0,0,0),(1,77,189,'header-wrapper',2,0,0,0),(1,77,206,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,77,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,77,209,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,77,211,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,77,212,'column-455 m-right-70 m-top-70 list2',0,1,0,0),(1,78,27,'Main',0,0,0,0),(1,78,28,'Header Image',0,0,0,0),(1,78,58,'Header',0,0,0,0),(1,78,62,'post',0,0,0,0),(1,78,64,'content',0,0,0,0),(1,78,65,'content',1,0,0,0),(1,78,67,'footer',0,0,0,0),(1,78,126,'sidebar',0,0,0,0),(1,78,132,'header-wrapper',0,0,0,0),(1,78,137,'subheader1',0,0,0,0),(1,78,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,78,139,'column-455  m-top-50',0,0,0,0),(1,78,140,'subheader2',0,0,0,0),(1,78,141,'column-640  m-top-50',0,0,0,0),(1,78,144,'column-455 m-top-70',0,0,0,0),(1,78,145,'subheader3',0,0,0,0),(1,78,146,'column-640 m-top-50',0,0,0,0),(1,78,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,78,150,'subheader4',0,0,0,0),(1,78,151,'column-640_4 m-top-50',0,0,0,0),(1,78,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,78,153,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,78,154,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,78,155,'column-300_4 m-top-55',0,0,0,0),(1,78,156,'subheader6',0,0,0,0),(1,78,157,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,78,158,'column-525_6 m-top-50',0,0,0,0),(1,78,159,'footer_logo',0,0,0,0),(1,78,160,'m-bottom-40',0,0,0,0),(1,78,163,'showcase-sub-container',0,0,0,0),(1,78,169,'pic-frame rounded 1',0,0,0,0),(1,78,170,'pic-frame rounded 2',0,0,0,0),(1,78,183,'header-wrapper',1,0,0,0),(1,78,189,'header-wrapper',2,0,0,0),(1,78,206,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,78,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,78,209,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,78,211,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,78,212,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,78,213,'column-455 m-right-70 m-top-70',0,1,0,0),(1,79,27,'Main',0,0,0,0),(1,79,28,'Header Image',0,0,0,0),(1,79,58,'Header',0,0,0,0),(1,79,62,'post',0,0,0,0),(1,79,64,'content',0,0,0,0),(1,79,65,'content',1,0,0,0),(1,79,67,'footer',0,0,0,0),(1,79,126,'sidebar',0,0,0,0),(1,79,132,'header-wrapper',0,0,0,0),(1,79,137,'subheader1',0,0,0,0),(1,79,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,79,139,'column-455  m-top-50',0,0,0,0),(1,79,140,'subheader2',0,0,0,0),(1,79,141,'column-640  m-top-50',0,0,0,0),(1,79,144,'column-455 m-top-70',0,0,0,0),(1,79,145,'subheader3',0,0,0,0),(1,79,146,'column-640 m-top-50',0,0,0,0),(1,79,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,79,150,'subheader4',0,0,0,0),(1,79,151,'column-640_4 m-top-50',0,0,0,0),(1,79,152,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,79,159,'footer_logo',0,0,0,0),(1,79,160,'m-bottom-40',0,0,0,0),(1,79,163,'showcase-sub-container',0,0,0,0),(1,79,169,'pic-frame rounded 1',0,0,0,0),(1,79,170,'pic-frame rounded 2',0,0,0,0),(1,79,183,'header-wrapper',1,0,0,0),(1,79,189,'header-wrapper',2,0,0,0),(1,79,206,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,79,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,79,209,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,79,211,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,79,212,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,79,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,79,214,'subheader6',0,1,0,0),(1,79,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,1,0,0),(1,79,216,'column-525_6 m-top-50',0,1,0,0),(1,79,217,'column-300_4 m-left-55 m-top-40',0,1,0,0),(1,79,218,'column-300_4_2 m-top-55 m-right-40',0,1,0,0),(1,79,219,'column-300_4 m-top-55',0,1,0,0),(1,80,27,'Main',0,0,0,0),(1,80,28,'Header Image',0,0,0,0),(1,80,58,'Header',0,0,0,0),(1,80,62,'post',0,0,0,0),(1,80,64,'content',0,0,0,0),(1,80,65,'content',1,0,0,0),(1,80,67,'footer',0,0,0,0),(1,80,126,'sidebar',0,0,0,0),(1,80,132,'header-wrapper',0,0,0,0),(1,80,137,'subheader1',0,0,0,0),(1,80,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,80,139,'column-455  m-top-50',0,0,0,0),(1,80,140,'subheader2',0,0,0,0),(1,80,141,'column-640  m-top-50',0,0,0,0),(1,80,144,'column-455 m-top-70',0,0,0,0),(1,80,145,'subheader3',0,0,0,0),(1,80,146,'column-640 m-top-50',0,0,0,0),(1,80,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,80,150,'subheader4',0,0,0,0),(1,80,159,'footer_logo',0,0,0,0),(1,80,160,'m-bottom-40',0,0,0,0),(1,80,163,'showcase-sub-container',0,0,0,0),(1,80,169,'pic-frame rounded 1',0,0,0,0),(1,80,170,'pic-frame rounded 2',0,0,0,0),(1,80,183,'header-wrapper',1,0,0,0),(1,80,189,'header-wrapper',2,0,0,0),(1,80,206,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,80,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,80,209,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,80,211,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,80,212,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,80,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,80,214,'subheader6',0,0,0,0),(1,80,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,80,216,'column-525_6 m-top-50',0,0,0,0),(1,80,218,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,80,219,'column-300_4 m-top-55',0,0,0,0),(1,80,220,'column-300_4 m-left-55 m-top-40',0,1,0,0),(1,80,221,'column-640_4 m-top-50',0,1,0,0),(1,80,222,'column-300_4 m-left-40 m-top-50',0,1,0,0),(1,81,27,'Main',0,0,0,0),(1,81,28,'Header Image',0,0,0,0),(1,81,58,'Header',0,0,0,0),(1,81,62,'post',0,0,0,0),(1,81,64,'content',0,0,0,0),(1,81,65,'content',1,0,0,0),(1,81,67,'footer',0,0,0,0),(1,81,126,'sidebar',0,0,0,0),(1,81,132,'header-wrapper',0,0,0,0),(1,81,137,'subheader1',0,0,0,0),(1,81,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,81,139,'column-455  m-top-50',0,0,0,0),(1,81,140,'subheader2',0,0,0,0),(1,81,141,'column-640  m-top-50',0,0,0,0),(1,81,144,'column-455 m-top-70',0,0,0,0),(1,81,145,'subheader3',0,0,0,0),(1,81,146,'column-640 m-top-50',0,0,0,0),(1,81,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,81,150,'subheader4',0,0,0,0),(1,81,159,'footer_logo',0,0,0,0),(1,81,160,'m-bottom-40',0,0,0,0),(1,81,163,'showcase-sub-container',0,0,0,0),(1,81,169,'pic-frame rounded 1',0,0,0,0),(1,81,170,'pic-frame rounded 2',0,0,0,0),(1,81,183,'header-wrapper',1,0,0,0),(1,81,189,'header-wrapper',2,0,0,0),(1,81,206,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,81,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,81,209,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,81,212,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,81,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,81,214,'subheader6',0,0,0,0),(1,81,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,81,216,'column-525_6 m-top-50',0,0,0,0),(1,81,218,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,81,219,'column-300_4 m-top-55',0,0,0,0),(1,81,220,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,81,221,'column-640_4 m-top-50',0,0,0,0),(1,81,222,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,81,223,'column-455 m-right-70 m-top-70 list1',0,1,0,0),(1,82,27,'Main',0,0,0,0),(1,82,28,'Header Image',0,0,0,0),(1,82,58,'Header',0,0,0,0),(1,82,62,'post',0,0,0,0),(1,82,64,'content',0,0,0,0),(1,82,65,'content',1,0,0,0),(1,82,67,'footer',0,0,0,0),(1,82,126,'sidebar',0,0,0,0),(1,82,132,'header-wrapper',0,0,0,0),(1,82,137,'subheader1',0,0,0,0),(1,82,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,82,139,'column-455  m-top-50',0,0,0,0),(1,82,140,'subheader2',0,0,0,0),(1,82,141,'column-640  m-top-50',0,0,0,0),(1,82,144,'column-455 m-top-70',0,0,0,0),(1,82,145,'subheader3',0,0,0,0),(1,82,146,'column-640 m-top-50',0,0,0,0),(1,82,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,82,150,'subheader4',0,0,0,0),(1,82,159,'footer_logo',0,0,0,0),(1,82,160,'m-bottom-40',0,0,0,0),(1,82,163,'showcase-sub-container',0,0,0,0),(1,82,169,'pic-frame rounded 1',0,0,0,0),(1,82,170,'pic-frame rounded 2',0,0,0,0),(1,82,183,'header-wrapper',1,0,0,0),(1,82,189,'header-wrapper',2,0,0,0),(1,82,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,82,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,82,214,'subheader6',0,0,0,0),(1,82,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,82,216,'column-525_6 m-top-50',0,0,0,0),(1,82,218,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,82,219,'column-300_4 m-top-55',0,0,0,0),(1,82,220,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,82,221,'column-640_4 m-top-50',0,0,0,0),(1,82,222,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,82,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,82,224,'column-455 m-right-70 m-top-70 list2',0,1,0,0),(1,82,225,'column-455 m-right-70 m-top-70 list3',0,1,0,0),(1,82,226,'column-455 m-right-70 m-top-70 list4',0,1,0,0),(1,83,27,'Main',0,0,0,0),(1,83,28,'Header Image',0,0,0,0),(1,83,58,'Header',0,0,0,0),(1,83,62,'post',0,0,0,0),(1,83,64,'content',0,0,0,0),(1,83,65,'content',1,0,0,0),(1,83,67,'footer',0,0,0,0),(1,83,126,'sidebar',0,0,0,0),(1,83,132,'header-wrapper',0,0,0,0),(1,83,137,'subheader1',0,0,0,0),(1,83,138,'column-455 m-right-70 m-top-50',0,0,0,0),(1,83,139,'column-455  m-top-50',0,0,0,0),(1,83,140,'subheader2',0,0,0,0),(1,83,141,'column-640  m-top-50',0,0,0,0),(1,83,144,'column-455 m-top-70',0,0,0,0),(1,83,145,'subheader3',0,0,0,0),(1,83,146,'column-640 m-top-50',0,0,0,0),(1,83,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,83,150,'subheader4',0,0,0,0),(1,83,159,'footer_logo',0,0,0,0),(1,83,160,'m-bottom-40',0,0,0,0),(1,83,163,'showcase-sub-container',0,0,0,0),(1,83,169,'pic-frame rounded 1',0,0,0,0),(1,83,170,'pic-frame rounded 2',0,0,0,0),(1,83,183,'header-wrapper',1,0,0,0),(1,83,189,'header-wrapper',2,0,0,0),(1,83,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,83,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,83,214,'subheader6',0,0,0,0),(1,83,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,83,216,'column-525_6 m-top-50',0,0,0,0),(1,83,218,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,83,219,'column-300_4 m-top-55',0,0,0,0),(1,83,220,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,83,221,'column-640_4 m-top-50',0,0,0,0),(1,83,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,83,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,83,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,83,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,83,227,'column-300_4 m-left-40 m-top-50',0,1,0,0),(1,84,27,'Main',0,0,0,0),(1,84,28,'Header Image',0,0,0,0),(1,84,58,'Header',0,0,0,0),(1,84,62,'post',0,0,0,0),(1,84,64,'content',0,0,0,0),(1,84,65,'content',1,0,0,0),(1,84,67,'footer',0,0,0,0),(1,84,126,'sidebar',0,0,0,0),(1,84,132,'header-wrapper',0,0,0,0),(1,84,137,'subheader1',0,0,0,0),(1,84,139,'column-455  m-top-50',0,0,0,0),(1,84,140,'subheader2',0,0,0,0),(1,84,141,'column-640  m-top-50',0,0,0,0),(1,84,144,'column-455 m-top-70',0,0,0,0),(1,84,145,'subheader3',0,0,0,0),(1,84,146,'column-640 m-top-50',0,0,0,0),(1,84,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,84,150,'subheader4',0,0,0,0),(1,84,159,'footer_logo',0,0,0,0),(1,84,160,'m-bottom-40',0,0,0,0),(1,84,163,'showcase-sub-container',0,0,0,0),(1,84,169,'pic-frame rounded 1',0,0,0,0),(1,84,170,'pic-frame rounded 2',0,0,0,0),(1,84,183,'header-wrapper',1,0,0,0),(1,84,189,'header-wrapper',2,0,0,0),(1,84,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,84,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,84,214,'subheader6',0,0,0,0),(1,84,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,84,216,'column-525_6 m-top-50',0,0,0,0),(1,84,218,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,84,219,'column-300_4 m-top-55',0,0,0,0),(1,84,220,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,84,221,'column-640_4 m-top-50',0,0,0,0),(1,84,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,84,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,84,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,84,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,84,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,84,228,'column-455 m-right-70 m-top-50',0,1,0,0),(1,85,27,'Main',0,0,0,0),(1,85,28,'Header Image',0,0,0,0),(1,85,58,'Header',0,0,0,0),(1,85,62,'post',0,0,0,0),(1,85,64,'content',0,0,0,0),(1,85,65,'content',1,0,0,0),(1,85,67,'footer',0,0,0,0),(1,85,126,'sidebar',0,0,0,0),(1,85,132,'header-wrapper',0,0,0,0),(1,85,137,'subheader1',0,0,0,0),(1,85,140,'subheader2',0,0,0,0),(1,85,141,'column-640  m-top-50',0,0,0,0),(1,85,144,'column-455 m-top-70',0,0,0,0),(1,85,145,'subheader3',0,0,0,0),(1,85,146,'column-640 m-top-50',0,0,0,0),(1,85,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,85,150,'subheader4',0,0,0,0),(1,85,159,'footer_logo',0,0,0,0),(1,85,160,'m-bottom-40',0,0,0,0),(1,85,163,'showcase-sub-container',0,0,0,0),(1,85,169,'pic-frame rounded 1',0,0,0,0),(1,85,170,'pic-frame rounded 2',0,0,0,0),(1,85,183,'header-wrapper',1,0,0,0),(1,85,189,'header-wrapper',2,0,0,0),(1,85,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,85,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,85,214,'subheader6',0,0,0,0),(1,85,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,85,216,'column-525_6 m-top-50',0,0,0,0),(1,85,218,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,85,219,'column-300_4 m-top-55',0,0,0,0),(1,85,220,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,85,221,'column-640_4 m-top-50',0,0,0,0),(1,85,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,85,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,85,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,85,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,85,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,85,229,'column-455 m-right-70 m-top-50',0,1,0,0),(1,85,230,'column-455  m-top-50',0,1,0,0),(1,86,27,'Main',0,0,0,0),(1,86,28,'Header Image',0,0,0,0),(1,86,58,'Header',0,0,0,0),(1,86,62,'post',0,0,0,0),(1,86,64,'content',0,0,0,0),(1,86,65,'content',1,0,0,0),(1,86,67,'footer',0,0,0,0),(1,86,126,'sidebar',0,0,0,0),(1,86,132,'header-wrapper',0,0,0,0),(1,86,137,'subheader1',0,0,0,0),(1,86,140,'subheader2',0,0,0,0),(1,86,141,'column-640  m-top-50',0,0,0,0),(1,86,144,'column-455 m-top-70',0,0,0,0),(1,86,145,'subheader3',0,0,0,0),(1,86,146,'column-640 m-top-50',0,0,0,0),(1,86,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,86,150,'subheader4',0,0,0,0),(1,86,159,'footer_logo',0,0,0,0),(1,86,160,'m-bottom-40',0,0,0,0),(1,86,163,'showcase-sub-container',0,0,0,0),(1,86,169,'pic-frame rounded 1',0,0,0,0),(1,86,170,'pic-frame rounded 2',0,0,0,0),(1,86,183,'header-wrapper',1,0,0,0),(1,86,189,'header-wrapper',2,0,0,0),(1,86,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,86,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,86,214,'subheader6',0,0,0,0),(1,86,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,86,216,'column-525_6 m-top-50',0,0,0,0),(1,86,218,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,86,219,'column-300_4 m-top-55',0,0,0,0),(1,86,220,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,86,221,'column-640_4 m-top-50',0,0,0,0),(1,86,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,86,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,86,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,86,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,86,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,86,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,86,231,'column-455  m-top-50',0,1,0,0),(1,87,27,'Main',0,0,0,0),(1,87,28,'Header Image',0,0,0,0),(1,87,58,'Header',0,0,0,0),(1,87,62,'post',0,0,0,0),(1,87,64,'content',0,0,0,0),(1,87,65,'content',1,0,0,0),(1,87,67,'footer',0,0,0,0),(1,87,126,'sidebar',0,0,0,0),(1,87,132,'header-wrapper',0,0,0,0),(1,87,137,'subheader1',0,0,0,0),(1,87,140,'subheader2',0,0,0,0),(1,87,141,'column-640  m-top-50',0,0,0,0),(1,87,144,'column-455 m-top-70',0,0,0,0),(1,87,145,'subheader3',0,0,0,0),(1,87,146,'column-640 m-top-50',0,0,0,0),(1,87,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,87,150,'subheader4',0,0,0,0),(1,87,159,'footer_logo',0,0,0,0),(1,87,160,'m-bottom-40',0,0,0,0),(1,87,163,'showcase-sub-container',0,0,0,0),(1,87,169,'pic-frame rounded 1',0,0,0,0),(1,87,170,'pic-frame rounded 2',0,0,0,0),(1,87,183,'header-wrapper',1,0,0,0),(1,87,189,'header-wrapper',2,0,0,0),(1,87,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,87,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,87,214,'subheader6',0,0,0,0),(1,87,215,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,87,216,'column-525_6 m-top-50',0,0,0,0),(1,87,221,'column-640_4 m-top-50',0,0,0,0),(1,87,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,87,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,87,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,87,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,87,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,87,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,87,232,'column-300_4 m-left-55 m-top-40',0,1,0,0),(1,87,233,'column-300_4_2 m-top-55 m-right-40',0,1,0,0),(1,87,234,'column-300_4 m-top-55',0,1,0,0),(1,87,235,'column-455  m-top-50',0,1,0,0),(1,88,27,'Main',0,0,0,0),(1,88,28,'Header Image',0,0,0,0),(1,88,58,'Header',0,0,0,0),(1,88,62,'post',0,0,0,0),(1,88,64,'content',0,0,0,0),(1,88,65,'content',1,0,0,0),(1,88,67,'footer',0,0,0,0),(1,88,126,'sidebar',0,0,0,0),(1,88,132,'header-wrapper',0,0,0,0),(1,88,137,'subheader1',0,0,0,0),(1,88,140,'subheader2',0,0,0,0),(1,88,141,'column-640  m-top-50',0,0,0,0),(1,88,144,'column-455 m-top-70',0,0,0,0),(1,88,145,'subheader3',0,0,0,0),(1,88,146,'column-640 m-top-50',0,0,0,0),(1,88,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,88,150,'subheader4',0,0,0,0),(1,88,159,'footer_logo',0,0,0,0),(1,88,160,'m-bottom-40',0,0,0,0),(1,88,163,'showcase-sub-container',0,0,0,0),(1,88,183,'header-wrapper',1,0,0,0),(1,88,189,'header-wrapper',2,0,0,0),(1,88,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,88,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,88,214,'subheader6',0,0,0,0),(1,88,221,'column-640_4 m-top-50',0,0,0,0),(1,88,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,88,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,88,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,88,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,88,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,88,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,88,232,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,88,233,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,88,234,'column-300_4 m-top-55',0,0,0,0),(1,88,235,'column-455  m-top-50',0,0,0,0),(1,88,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,1,0,0),(1,88,237,'column-525_6 m-top-50',0,1,0,0),(1,88,238,'pic-frame rounded 2',0,1,0,0),(1,88,239,'pic-frame rounded 1',0,1,0,0),(1,89,27,'Main',0,0,0,0),(1,89,28,'Header Image',0,0,0,0),(1,89,58,'Header',0,0,0,0),(1,89,62,'post',0,0,0,0),(1,89,64,'content',0,0,0,0),(1,89,65,'content',1,0,0,0),(1,89,67,'footer',0,0,0,0),(1,89,126,'sidebar',0,0,0,0),(1,89,132,'header-wrapper',0,0,0,0),(1,89,137,'subheader1',0,0,0,0),(1,89,140,'subheader2',0,0,0,0),(1,89,141,'column-640  m-top-50',0,0,0,0),(1,89,144,'column-455 m-top-70',0,0,0,0),(1,89,145,'subheader3',0,0,0,0),(1,89,146,'column-640 m-top-50',0,0,0,0),(1,89,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,89,150,'subheader4',0,0,0,0),(1,89,159,'footer_logo',0,0,0,0),(1,89,160,'m-bottom-40',0,0,0,0),(1,89,163,'showcase-sub-container',0,0,0,0),(1,89,183,'header-wrapper',1,0,0,0),(1,89,189,'header-wrapper',2,0,0,0),(1,89,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,89,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,89,214,'subheader6',0,0,0,0),(1,89,221,'column-640_4 m-top-50',0,0,0,0),(1,89,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,89,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,89,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,89,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,89,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,89,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,89,232,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,89,233,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,89,234,'column-300_4 m-top-55',0,0,0,0),(1,89,235,'column-455  m-top-50',0,0,0,0),(1,89,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,89,237,'column-525_6 m-top-50',0,0,0,0),(1,89,238,'pic-frame rounded 2',0,0,0,0),(1,89,240,'pic-frame rounded 1',0,1,0,0),(1,90,27,'Main',0,0,0,0),(1,90,28,'Header Image',0,0,0,0),(1,90,58,'Header',0,0,0,0),(1,90,62,'post',0,0,0,0),(1,90,64,'content',0,0,0,0),(1,90,65,'content',1,0,0,0),(1,90,67,'footer',0,0,0,0),(1,90,126,'sidebar',0,0,0,0),(1,90,132,'header-wrapper',0,0,0,0),(1,90,137,'subheader1',0,0,0,0),(1,90,140,'subheader2',0,0,0,0),(1,90,141,'column-640  m-top-50',0,0,0,0),(1,90,144,'column-455 m-top-70',0,0,0,0),(1,90,145,'subheader3',0,0,0,0),(1,90,146,'column-640 m-top-50',0,0,0,0),(1,90,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,90,150,'subheader4',0,0,0,0),(1,90,159,'footer_logo',0,0,0,0),(1,90,160,'m-bottom-40',0,0,0,0),(1,90,163,'showcase-sub-container',0,0,0,0),(1,90,183,'header-wrapper',1,0,0,0),(1,90,189,'header-wrapper',2,0,0,0),(1,90,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,90,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,90,214,'subheader6',0,0,0,0),(1,90,221,'column-640_4 m-top-50',0,0,0,0),(1,90,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,90,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,90,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,90,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,90,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,90,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,90,232,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,90,233,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,90,234,'column-300_4 m-top-55',0,0,0,0),(1,90,235,'column-455  m-top-50',0,0,0,0),(1,90,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,90,237,'column-525_6 m-top-50',0,0,0,0),(1,90,238,'pic-frame rounded 2',0,0,0,0),(1,90,241,'pic-frame rounded 1',0,1,0,0),(1,91,27,'Main',0,0,0,0),(1,91,28,'Header Image',0,0,0,0),(1,91,58,'Header',0,0,0,0),(1,91,62,'post',0,0,0,0),(1,91,64,'content',0,0,0,0),(1,91,65,'content',1,0,0,0),(1,91,67,'footer',0,0,0,0),(1,91,126,'sidebar',0,0,0,0),(1,91,132,'header-wrapper',0,0,0,0),(1,91,137,'subheader1',0,0,0,0),(1,91,140,'subheader2',0,0,0,0),(1,91,141,'column-640  m-top-50',0,0,0,0),(1,91,144,'column-455 m-top-70',0,0,0,0),(1,91,145,'subheader3',0,0,0,0),(1,91,146,'column-640 m-top-50',0,0,0,0),(1,91,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,91,150,'subheader4',0,0,0,0),(1,91,159,'footer_logo',0,0,0,0),(1,91,160,'m-bottom-40',0,0,0,0),(1,91,163,'showcase-sub-container',0,0,0,0),(1,91,183,'header-wrapper',1,0,0,0),(1,91,189,'header-wrapper',2,0,0,0),(1,91,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,91,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,91,214,'subheader6',0,0,0,0),(1,91,221,'column-640_4 m-top-50',0,0,0,0),(1,91,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,91,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,91,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,91,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,91,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,91,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,91,232,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,91,233,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,91,234,'column-300_4 m-top-55',0,0,0,0),(1,91,235,'column-455  m-top-50',0,0,0,0),(1,91,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,91,237,'column-525_6 m-top-50',0,0,0,0),(1,91,238,'pic-frame rounded 2',0,0,0,0),(1,91,242,'pic-frame rounded 1',0,1,0,0),(1,92,27,'Main',0,0,0,0),(1,92,28,'Header Image',0,0,0,0),(1,92,58,'Header',0,0,0,0),(1,92,62,'post',0,0,0,0),(1,92,64,'content',0,0,0,0),(1,92,65,'content',1,0,0,0),(1,92,67,'footer',0,0,0,0),(1,92,126,'sidebar',0,0,0,0),(1,92,132,'header-wrapper',0,0,0,0),(1,92,137,'subheader1',0,0,0,0),(1,92,140,'subheader2',0,0,0,0),(1,92,141,'column-640  m-top-50',0,0,0,0),(1,92,144,'column-455 m-top-70',0,0,0,0),(1,92,145,'subheader3',0,0,0,0),(1,92,146,'column-640 m-top-50',0,0,0,0),(1,92,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,92,150,'subheader4',0,0,0,0),(1,92,159,'footer_logo',0,0,0,0),(1,92,160,'m-bottom-40',0,0,0,0),(1,92,163,'showcase-sub-container',0,0,0,0),(1,92,183,'header-wrapper',1,0,0,0),(1,92,189,'header-wrapper',2,0,0,0),(1,92,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,92,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,92,214,'subheader6',0,0,0,0),(1,92,221,'column-640_4 m-top-50',0,0,0,0),(1,92,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,92,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,92,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,92,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,92,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,92,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,92,232,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,92,233,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,92,234,'column-300_4 m-top-55',0,0,0,0),(1,92,235,'column-455  m-top-50',0,0,0,0),(1,92,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,92,237,'column-525_6 m-top-50',0,0,0,0),(1,92,242,'pic-frame rounded 1',0,0,0,0),(1,92,243,'pic-frame rounded 2',0,1,0,0),(1,92,244,'pic-frame rounded 3',0,1,0,0),(1,93,27,'Main',0,0,0,0),(1,93,28,'Header Image',0,0,0,0),(1,93,58,'Header',0,0,0,0),(1,93,62,'post',0,0,0,0),(1,93,64,'content',0,0,0,0),(1,93,65,'content',1,0,0,0),(1,93,67,'footer',0,0,0,0),(1,93,126,'sidebar',0,0,0,0),(1,93,132,'header-wrapper',0,0,0,0),(1,93,137,'subheader1',0,0,0,0),(1,93,140,'subheader2',0,0,0,0),(1,93,141,'column-640  m-top-50',0,0,0,0),(1,93,144,'column-455 m-top-70',0,0,0,0),(1,93,145,'subheader3',0,0,0,0),(1,93,146,'column-640 m-top-50',0,0,0,0),(1,93,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,93,150,'subheader4',0,0,0,0),(1,93,159,'footer_logo',0,0,0,0),(1,93,160,'m-bottom-40',0,0,0,0),(1,93,163,'showcase-sub-container',0,0,0,0),(1,93,183,'header-wrapper',1,0,0,0),(1,93,189,'header-wrapper',2,0,0,0),(1,93,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,93,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,93,214,'subheader6',0,0,0,0),(1,93,221,'column-640_4 m-top-50',0,0,0,0),(1,93,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,93,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,93,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,93,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,93,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,93,229,'column-455 m-right-70 m-top-50',0,0,0,0),(1,93,232,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,93,233,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,93,234,'column-300_4 m-top-55',0,0,0,0),(1,93,235,'column-455  m-top-50',0,0,0,0),(1,93,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,93,237,'column-525_6 m-top-50',0,0,0,0),(1,93,242,'pic-frame rounded 1',0,0,0,0),(1,93,243,'pic-frame rounded 2',0,0,0,0),(1,93,245,'pic-frame rounded 3',0,1,0,0),(1,93,246,'pic-frame rounded 4',0,1,0,0),(1,93,247,'pic-frame rounded 5',0,1,0,0),(1,93,248,'pic-frame rounded 6',0,1,0,0),(1,93,249,'pic-frame rounded 7',0,1,0,0),(1,93,250,'pic-frame rounded 8',0,1,0,0),(1,94,27,'Main',0,0,0,0),(1,94,28,'Header Image',0,0,0,0),(1,94,58,'Header',0,0,0,0),(1,94,62,'post',0,0,0,0),(1,94,64,'content',0,0,0,0),(1,94,65,'content',1,0,0,0),(1,94,67,'footer',0,0,0,0),(1,94,126,'sidebar',0,0,0,0),(1,94,132,'header-wrapper',0,0,0,0),(1,94,137,'subheader1',0,0,0,0),(1,94,140,'subheader2',0,0,0,0),(1,94,141,'column-640  m-top-50',0,0,0,0),(1,94,144,'column-455 m-top-70',0,0,0,0),(1,94,145,'subheader3',0,0,0,0),(1,94,146,'column-640 m-top-50',0,0,0,0),(1,94,147,'column-300_2 m-left-40 m-top-50',0,0,0,0),(1,94,150,'subheader4',0,0,0,0),(1,94,159,'footer_logo',0,0,0,0),(1,94,160,'m-bottom-40',0,0,0,0),(1,94,163,'showcase-sub-container',0,0,0,0),(1,94,183,'header-wrapper',1,0,0,0),(1,94,189,'header-wrapper',2,0,0,0),(1,94,207,'column-300 m-left-40 m-top-50',0,0,0,0),(1,94,213,'column-455 m-right-70 m-top-70',0,0,0,0),(1,94,214,'subheader6',0,0,0,0),(1,94,221,'column-640_4 m-top-50',0,0,0,0),(1,94,223,'column-455 m-right-70 m-top-70 list1',0,0,0,0),(1,94,224,'column-455 m-right-70 m-top-70 list2',0,0,0,0),(1,94,225,'column-455 m-right-70 m-top-70 list3',0,0,0,0),(1,94,226,'column-455 m-right-70 m-top-70 list4',0,0,0,0),(1,94,227,'column-300_4 m-left-40 m-top-50',0,0,0,0),(1,94,232,'column-300_4 m-left-55 m-top-40',0,0,0,0),(1,94,233,'column-300_4_2 m-top-55 m-right-40',0,0,0,0),(1,94,234,'column-300_4 m-top-55',0,0,0,0),(1,94,235,'column-455  m-top-50',0,0,0,0),(1,94,236,'column-340_6 m-top-50 m-right-115 contact-form contact-us-x',0,0,0,0),(1,94,237,'column-525_6 m-top-50',0,0,0,0),(1,94,242,'pic-frame rounded 1',0,0,0,0),(1,94,243,'pic-frame rounded 2',0,0,0,0),(1,94,245,'pic-frame rounded 3',0,0,0,0),(1,94,246,'pic-frame rounded 4',0,0,0,0),(1,94,247,'pic-frame rounded 5',0,0,0,0),(1,94,248,'pic-frame rounded 6',0,0,0,0),(1,94,249,'pic-frame rounded 7',0,0,0,0),(1,94,250,'pic-frame rounded 8',0,0,0,0),(1,94,251,'column-455 m-right-70 m-top-50',0,1,0,0),(104,1,6,'Primary',0,1,0,0),(104,1,7,'Primary',1,1,0,0),(104,1,8,'Secondary 1',0,1,0,0),(104,1,9,'Secondary 2',0,1,0,0),(104,1,10,'Secondary 3',0,1,0,0),(104,1,11,'Secondary 4',0,1,0,0),(104,1,12,'Secondary 5',0,1,0,0),(105,1,1,'Header',0,1,0,0),(105,1,2,'Column 1',0,1,0,0),(105,1,3,'Column 2',0,1,0,0),(105,1,4,'Column 3',0,1,0,0),(105,1,5,'Column 4',0,1,0,0),(120,1,20,'Main',0,1,0,0),(121,1,21,'Main',0,1,0,0),(121,1,22,'Main',1,1,0,0),(121,2,21,'Main',0,0,0,0),(121,2,22,'Main',1,0,0,0),(122,1,23,'Main',0,1,0,0),(123,1,13,'Main',0,1,0,0),(123,1,14,'Sidebar',0,1,0,0),(123,1,15,'Thumbnail Image',0,1,0,0),(123,1,16,'Header Image',0,1,0,0),(124,1,17,'Header Image',0,1,0,0),(125,1,18,'Header Image',0,1,0,0),(126,1,19,'Header Image',0,1,0,0),(127,1,18,'Header Image',0,0,0,0),(127,1,29,'Header',0,1,0,0),(127,1,30,'Sidebar',0,1,0,0),(127,1,31,'Main',0,1,0,0),(128,1,19,'Header Image',0,0,0,0),(128,1,43,'Main',0,1,0,0),(128,1,44,'Sidebar',0,1,0,0),(128,1,45,'Sidebar',1,1,0,0),(128,1,46,'Sidebar',2,1,0,0),(129,1,19,'Header Image',0,0,0,0),(129,1,39,'Header',0,1,0,0),(129,1,40,'Sidebar',0,1,0,0),(129,1,41,'Sidebar',1,1,0,0),(129,1,42,'Main',0,1,0,0),(130,1,18,'Header Image',0,0,0,0),(130,1,35,'Header',0,1,0,0),(130,1,36,'Sidebar',0,1,0,0),(130,1,37,'Main',0,1,0,0),(130,1,38,'Main',1,1,0,0),(131,1,19,'Header Image',0,0,0,0),(131,1,32,'Header',0,1,0,0),(131,1,33,'Sidebar',0,1,0,0),(131,1,34,'Main',0,1,0,1),(132,1,19,'Header Image',0,0,0,0),(132,1,50,'Main',0,1,0,0),(132,1,51,'Sidebar',0,1,0,0),(132,1,52,'Sidebar',1,1,0,0),(133,1,14,'Sidebar',0,0,0,0),(133,1,47,'Header Image',0,1,0,0),(133,1,48,'Main',0,1,0,0),(133,1,49,'Thumbnail Image',0,1,0,0),(135,1,14,'Sidebar',0,0,0,0),(135,1,70,'Header Image',0,1,0,0),(135,1,71,'Thumbnail Image',0,1,0,0),(135,1,72,'Main',0,1,0,0),(136,1,14,'Sidebar',0,0,0,0),(136,1,73,'Header Image',0,1,0,0),(136,1,74,'Thumbnail Image',0,1,0,0),(136,1,75,'Main',0,1,0,0),(137,1,18,'Header Image',0,0,0,0),(137,2,18,'Header Image',0,0,0,0),(137,2,76,'sidebar',0,1,0,0),(137,3,18,'Header Image',0,0,0,0),(137,3,80,'sidebar',0,1,0,0),(137,3,84,'content : Layout 1 : Cell 1',0,1,0,0),(137,3,85,'content : Layout 1 : Cell 2',0,1,0,0),(137,4,18,'Header Image',0,0,0,0),(137,4,80,'sidebar',0,0,0,0),(137,4,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,4,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,5,18,'Header Image',0,0,0,0),(137,5,80,'sidebar',0,0,0,0),(137,5,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,5,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,6,18,'Header Image',0,0,0,0),(137,6,80,'sidebar',0,0,0,0),(137,6,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,6,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,6,86,'content : Layout 1 : Cell 2',1,1,0,0),(137,7,18,'Header Image',0,0,0,0),(137,7,80,'sidebar',0,0,0,0),(137,7,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,7,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,7,88,'content : Layout 2 : Cell 1',0,1,0,0),(137,8,18,'Header Image',0,0,0,0),(137,8,80,'sidebar',0,0,0,0),(137,8,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,8,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,8,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,8,89,'sidebar',1,1,0,0),(137,9,18,'Header Image',0,0,0,0),(137,9,80,'sidebar',0,0,0,0),(137,9,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,9,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,9,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,9,90,'sidebar',1,1,0,0),(137,10,18,'Header Image',0,0,0,0),(137,10,80,'sidebar',0,0,0,0),(137,10,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,10,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,10,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,10,91,'sidebar',1,1,0,0),(137,11,18,'Header Image',0,0,0,0),(137,11,80,'sidebar',0,0,0,0),(137,11,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,11,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,11,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,11,91,'sidebar',1,0,0,0),(137,11,92,'content',0,1,0,0),(137,12,18,'Header Image',0,0,0,0),(137,12,80,'sidebar',0,0,0,0),(137,12,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,12,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,12,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,12,91,'sidebar',1,0,0,0),(137,12,93,'content',0,1,0,0),(137,13,18,'Header Image',0,0,0,0),(137,13,80,'sidebar',0,0,0,0),(137,13,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,13,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,13,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,13,91,'sidebar',1,0,0,0),(137,13,94,'content',0,1,0,0),(137,14,18,'Header Image',0,0,0,0),(137,14,80,'sidebar',0,0,0,0),(137,14,84,'content : Layout 1 : Cell 1',0,0,0,0),(137,14,85,'content : Layout 1 : Cell 2',0,0,0,0),(137,14,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,14,94,'content',0,0,0,0),(137,14,105,'sidebar',1,1,0,0),(137,15,18,'Header Image',0,0,0,0),(137,15,80,'sidebar',0,0,0,0),(137,15,88,'content : Layout 2 : Cell 1',0,0,0,0),(137,15,94,'content',1,0,0,0),(137,15,105,'sidebar',1,0,0,0),(137,15,107,'content : Layout 2 : Cell 1',1,1,0,0),(137,16,18,'Header Image',0,0,0,0),(137,16,80,'sidebar',0,0,0,0),(137,16,88,'content : Layout 2 : Cell 1',1,0,0,0),(137,16,94,'content',2,0,0,0),(137,16,105,'sidebar',1,0,0,0),(137,16,108,'content : Layout 2 : Cell 1',0,1,0,0),(137,17,18,'Header Image',0,0,0,0),(137,17,80,'sidebar',0,0,0,0),(137,17,88,'content : Layout 2 : Cell 1',1,0,0,0),(137,17,94,'content',0,0,0,0),(137,17,108,'content : Layout 2 : Cell 1',0,0,0,0),(137,17,109,'sidebar',1,1,0,0),(137,18,18,'Header Image',0,0,0,0),(137,18,80,'sidebar',0,0,0,0),(137,18,88,'content : Layout 2 : Cell 1',1,0,0,0),(137,18,94,'content',0,0,0,0),(137,18,108,'content : Layout 2 : Cell 1',0,0,0,0),(137,18,111,'sidebar',1,1,0,0),(137,19,18,'Header Image',0,0,0,0),(137,19,80,'sidebar',0,0,0,0),(137,19,88,'content : Layout 2 : Cell 1',1,0,0,0),(137,19,94,'content',0,0,0,0),(137,19,108,'content : Layout 2 : Cell 1',0,0,0,0),(137,19,123,'sidebar',1,1,0,0),(137,20,18,'Header Image',0,0,0,0),(137,20,88,'content : Layout 2 : Cell 1',1,0,0,0),(137,20,94,'content',0,0,0,0),(137,20,108,'content : Layout 2 : Cell 1',0,0,0,0),(137,20,127,'sidebar',0,1,0,0),(139,1,14,'Sidebar',0,0,0,0),(139,1,112,'Header Image',0,1,0,0),(139,1,113,'Thumbnail Image',0,1,0,0),(139,1,114,'Main',0,1,0,0),(140,1,18,'Header Image',0,0,0,0),(140,2,18,'Header Image',0,0,0,0),(140,2,117,'content',0,1,0,0),(140,2,118,'content',1,1,0,0),(140,3,18,'Header Image',0,0,0,0),(140,3,117,'content',0,0,0,0),(140,3,118,'content',1,0,0,0),(140,3,122,'sidebar',0,1,0,0),(141,2,119,'Main',0,1,0,0),(141,2,120,'Main',1,1,0,0),(141,3,124,'Main',0,1,0,0),(141,3,125,'Main',1,1,0,0),(142,1,18,'Header Image',0,0,0,0),(142,2,18,'Header Image',0,0,0,0),(142,2,128,'sidebar',0,1,0,0),(142,2,129,'content',0,1,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2012-11-27 19:49:18','2012-11-27 19:49:18','Version 1',0,0,1,NULL,6,7,NULL),(1,2,'Home','home','','2012-11-27 19:49:18','2012-11-28 02:09:19','Version 2',0,0,1,1,6,7,NULL),(1,3,'Home','home','','2012-11-27 19:49:18','2012-11-28 02:17:31','Version 3',0,0,1,1,6,7,NULL),(1,4,'Home','home','','2012-11-27 19:49:18','2012-11-28 02:19:47','Version 4',0,0,1,1,6,7,NULL),(1,5,'Home','home','','2012-11-27 19:49:18','2012-11-28 02:33:27','Version 5',0,0,1,1,6,7,NULL),(1,6,'Home','home','','2012-11-27 19:49:18','2012-11-28 02:34:25','Version 6',0,0,1,1,6,7,NULL),(1,7,'Home','home','','2012-11-27 19:49:18','2012-11-28 18:48:02','Version 7',0,0,1,1,6,7,NULL),(1,8,'Home','home','','2012-11-27 19:49:18','2012-11-28 18:55:50','Version 8',0,0,1,1,6,7,NULL),(1,9,'Home','home','','2012-11-27 19:49:18','2012-11-28 19:03:59','Version 9',0,0,1,1,6,7,NULL),(1,10,'Home','home','','2012-11-27 19:49:18','2012-11-28 19:10:48','Version 10',0,0,1,1,6,7,NULL),(1,11,'Home','home','','2012-11-27 19:49:18','2012-11-28 19:22:41','Version 11',0,0,1,1,6,7,NULL),(1,12,'Home','home','','2012-11-27 19:49:18','2012-11-28 19:55:33','Version 12',0,0,1,1,6,7,NULL),(1,13,'Home','home','','2012-11-27 19:49:18','2012-11-28 19:56:32','Version 13',0,0,1,1,6,7,NULL),(1,14,'Home','home','','2012-11-27 19:49:18','2012-11-28 19:58:39','Version 15',0,0,1,1,6,7,NULL),(1,15,'Home','home','','2012-11-27 19:49:18','2012-11-29 00:40:29','Version 15',0,0,1,1,6,7,NULL),(1,16,'Home','home','','2012-11-27 19:49:18','2012-11-29 01:16:38','Version 16',0,0,1,1,6,7,NULL),(1,17,'Home','home','','2012-11-27 19:49:18','2012-11-29 01:18:25','Version 17',0,0,1,1,6,7,NULL),(1,18,'Home','home','','2012-11-27 19:49:18','2012-11-29 01:20:43','Version 18',0,0,1,1,6,7,NULL),(1,19,'Home','home','','2012-11-27 19:49:18','2012-11-29 01:21:23','Version 19',0,0,1,1,6,7,NULL),(1,20,'Home','home','','2012-11-27 19:49:18','2012-11-29 01:32:21','Version 20',0,0,1,1,6,7,NULL),(1,21,'Home','home','','2012-11-27 19:49:18','2012-11-29 01:59:04','Version 21',0,0,1,1,6,7,NULL),(1,22,'Home','home','','2012-11-27 19:49:18','2012-11-29 02:01:50','Version 22',0,0,1,1,6,7,NULL),(1,23,'Home','home','','2012-11-27 19:49:18','2012-11-29 02:11:26','Version 23',0,0,1,1,6,7,NULL),(1,24,'Home','home','','2012-11-27 19:49:18','2012-11-29 02:12:45','Version 24',0,0,1,1,6,7,NULL),(1,25,'Home','home','','2012-11-27 19:49:18','2012-11-29 18:36:01','Version 25',0,0,1,1,6,7,NULL),(1,26,'Home','home','','2012-11-27 19:49:18','2012-11-29 18:38:58','Version 26',0,0,1,1,6,7,NULL),(1,27,'Home','home','','2012-11-27 19:49:18','2012-11-29 21:55:07','Version 27',0,0,1,1,6,7,NULL),(1,28,'Home','home','','2012-11-27 19:49:18','2012-11-29 22:00:06','Version 28',0,0,1,1,6,7,NULL),(1,29,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:01:22','Version 29',0,0,1,1,6,7,NULL),(1,30,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:03:34','Version 30',0,0,1,1,6,7,NULL),(1,31,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:29:40','Version 31',0,0,1,1,6,7,NULL),(1,32,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:30:40','Version 32',0,0,1,1,6,7,NULL),(1,33,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:33:52','Version 33',0,0,1,1,6,7,NULL),(1,34,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:39:55','Version 34',0,0,1,1,6,7,NULL),(1,35,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:55:53','Version 35',0,0,1,1,6,7,NULL),(1,36,'Home','home','','2012-11-27 19:49:18','2012-11-29 23:57:11','Version 36',0,0,1,1,6,7,NULL),(1,37,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:03:56','Version 37',0,0,1,1,6,7,NULL),(1,38,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:13:07','Version 38',0,0,1,1,6,7,NULL),(1,39,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:15:30','Version 39',0,0,1,1,6,7,NULL),(1,40,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:17:21','Version 40',0,0,1,1,6,7,NULL),(1,41,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:27:34','Version 41',0,0,1,1,6,7,NULL),(1,42,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:39:55','Version 42',0,0,1,1,6,7,NULL),(1,43,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:41:51','Version 43',0,0,1,1,6,7,NULL),(1,44,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:52:05','Version 44',0,0,1,1,6,7,NULL),(1,45,'Home','home','','2012-11-27 19:49:18','2012-11-30 00:56:13','Version 45',0,0,1,1,6,7,NULL),(1,46,'Home','home','','2012-11-27 19:49:18','2012-11-30 01:15:50','Version 46',0,0,1,1,6,7,NULL),(1,47,'Home','home','','2012-11-27 19:49:18','2012-11-30 01:18:44','Version 47',0,0,1,1,6,7,NULL),(1,48,'Home','home','','2012-11-27 19:49:18','2012-11-30 01:20:53','Version 48',0,0,1,1,6,7,NULL),(1,49,'Home','home','','2012-11-27 19:49:18','2012-11-30 01:24:17','Version 49',0,0,1,1,6,7,NULL),(1,50,'Home','home','','2012-11-27 19:49:18','2012-11-30 01:48:45','Version 50',0,0,1,1,6,7,NULL),(1,51,'Home','home','','2012-11-27 19:49:18','2012-11-30 01:52:01','Version 51',0,0,1,1,6,7,NULL),(1,52,'Home','home','','2012-11-27 19:49:18','2012-11-30 01:55:23','Version 52',0,0,1,1,6,7,NULL),(1,53,'Home','home','','2012-11-27 19:49:18','2012-11-30 19:30:32','Version 53',0,0,1,1,6,7,NULL),(1,54,'Home','home','','2012-11-27 19:49:18','2012-11-30 20:35:18','Version 54',0,0,1,1,6,7,NULL),(1,55,'Home','home','','2012-11-27 19:49:18','2012-11-30 20:50:39','Version 55',0,0,1,1,6,7,NULL),(1,56,'Home','home','','2012-11-27 19:49:18','2012-11-30 20:55:08','Version 56',0,0,1,1,6,7,NULL),(1,57,'Home','home','','2012-11-27 19:49:18','2012-11-30 20:57:59','Version 57',0,0,1,1,6,7,NULL),(1,58,'Home','home','','2012-11-27 19:49:18','2012-11-30 21:00:15','Version 58',0,0,1,1,6,7,NULL),(1,59,'Home','home','','2012-11-27 19:49:18','2012-11-30 21:02:36','Version 59',0,0,1,1,6,7,NULL),(1,60,'Home','home','','2012-11-27 19:49:18','2012-11-30 21:22:29','Copy of Version: 58',0,0,1,1,6,7,NULL),(1,61,'Home','home','','2012-11-27 19:49:18','2012-11-30 21:35:57','Version 61',0,0,1,1,6,7,NULL),(1,62,'Home','home','','2012-11-27 19:49:18','2012-11-30 21:39:41','Version 62',0,0,1,1,6,7,NULL),(1,63,'Home','home','','2012-11-27 19:49:18','2012-12-03 18:19:25','Version 63',0,0,1,1,6,7,NULL),(1,64,'Home','home','','2012-11-27 19:49:18','2012-12-03 18:29:48','Version 64',0,0,1,1,6,7,NULL),(1,65,'Home','home','','2012-11-27 19:49:18','2012-12-03 18:33:16','Version 65',0,0,1,1,6,7,NULL),(1,66,'Home','home','','2012-11-27 19:49:18','2012-12-03 18:42:02','Version 66',0,0,1,1,6,7,NULL),(1,67,'Home','home','','2012-11-27 19:49:18','2012-12-03 19:26:44','Version 67',0,0,1,1,6,7,NULL),(1,68,'Home','home','','2012-11-27 19:49:18','2012-12-03 19:35:51','Version 68',0,0,1,1,6,7,NULL),(1,69,'Home','home','','2012-11-27 19:49:18','2012-12-03 21:49:50','Version 69',0,0,1,1,6,7,NULL),(1,70,'Home','home','','2012-11-27 19:49:18','2012-12-03 21:53:02','Version 70',0,0,1,1,6,7,NULL),(1,71,'Home','home','','2012-11-27 19:49:18','2012-12-03 23:42:55','Version 71',0,0,1,1,6,7,NULL),(1,72,'Home','home','','2012-11-27 19:49:18','2012-12-03 23:51:23','Version 72',0,0,1,1,6,7,NULL),(1,73,'Home','home','','2012-11-27 19:49:18','2012-12-04 19:08:54','Version 73',0,0,1,1,6,7,NULL),(1,74,'Home','home','','2012-11-27 19:49:18','2012-12-10 10:41:49','Version 74',0,0,2,2,6,7,NULL),(1,75,'Home','home','','2012-11-27 19:49:18','2012-12-10 10:47:41','Version 75',0,0,2,2,6,7,NULL),(1,76,'Home','home','','2012-11-27 19:49:18','2012-12-10 11:11:13','Version 76',0,0,2,NULL,6,7,NULL),(1,77,'Home','home','','2012-11-27 19:49:18','2012-12-10 11:12:06','Version 76',0,0,2,2,6,7,NULL),(1,78,'Home','home','','2012-11-27 19:49:18','2012-12-10 11:24:55','Version 78',0,0,2,2,6,7,NULL),(1,79,'Home','home','','2012-11-27 19:49:18','2012-12-10 11:26:44','Version 79',0,0,2,2,6,7,NULL),(1,80,'Home','home','','2012-11-27 19:49:18','2012-12-10 11:44:44','Version 80',0,0,2,2,6,7,NULL),(1,81,'Home','home','','2012-11-27 19:49:18','2012-12-10 11:59:18','Version 81',0,0,2,2,6,7,NULL),(1,82,'Home','home','','2012-11-27 19:49:18','2012-12-10 12:22:18','Version 82',0,0,2,2,6,7,NULL),(1,83,'Home','home','','2012-11-27 19:49:18','2012-12-10 12:55:18','Version 83',0,0,2,2,6,7,NULL),(1,84,'Home','home','','2012-11-27 19:49:18','2012-12-10 13:01:44','Version 84',0,0,2,2,6,7,NULL),(1,85,'Home','home','','2012-11-27 19:49:18','2012-12-10 15:16:04','Version 85',0,0,2,2,6,7,NULL),(1,86,'Home','home','','2012-11-27 19:49:18','2012-12-10 15:25:19','Version 86',0,0,2,2,6,7,NULL),(1,87,'Home','home','','2012-11-27 19:49:18','2012-12-10 15:31:16','Version 87',0,0,2,2,6,7,NULL),(1,88,'Home','home','','2012-11-27 19:49:18','2012-12-10 15:38:54','Version 88',0,0,2,NULL,6,7,NULL),(1,89,'Home','home','','2012-11-27 19:49:18','2012-12-10 15:51:12','Version 88',0,0,2,2,6,7,NULL),(1,90,'Home','home','','2012-11-27 19:49:18','2012-12-10 16:31:57','Version 90',0,0,2,2,6,7,NULL),(1,91,'Home','home','','2012-11-27 19:49:18','2012-12-10 16:33:27','Version 91',0,0,2,2,6,7,NULL),(1,92,'Home','home','','2012-11-27 19:49:18','2012-12-10 16:44:15','Version 92',0,0,2,2,6,7,NULL),(1,93,'Home','home','','2012-11-27 19:49:18','2012-12-10 17:04:19','Version 93',0,0,2,2,6,7,NULL),(1,94,'Home','home','','2012-11-27 19:49:18','2012-12-12 18:38:18','Version 94',1,0,2,2,6,7,NULL),(2,1,'Dashboard','dashboard','','2012-11-27 19:49:33','2012-11-27 19:49:33','Initial Version',1,0,1,NULL,6,0,NULL),(3,1,'Composer','composer','Write for your site.','2012-11-27 19:49:35','2012-11-27 19:49:35','Initial Version',1,0,1,NULL,6,0,NULL),(4,1,'Write','write','','2012-11-27 19:49:35','2012-11-27 19:49:35','Initial Version',1,0,1,NULL,6,0,NULL),(5,1,'Drafts','drafts','','2012-11-27 19:49:35','2012-11-27 19:49:35','Initial Version',1,0,1,NULL,6,0,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2012-11-27 19:49:35','2012-11-27 19:49:35','Initial Version',1,0,1,NULL,6,0,NULL),(7,1,'Full Sitemap','full','','2012-11-27 19:49:36','2012-11-27 19:49:36','Initial Version',1,0,1,NULL,6,0,NULL),(8,1,'Flat View','explore','','2012-11-27 19:49:36','2012-11-27 19:49:36','Initial Version',1,0,1,NULL,6,0,NULL),(9,1,'Page Search','search','','2012-11-27 19:49:36','2012-11-27 19:49:36','Initial Version',1,0,1,NULL,6,0,NULL),(10,1,'Files','files','All documents and images.','2012-11-27 19:49:37','2012-11-27 19:49:37','Initial Version',1,0,1,NULL,6,0,NULL),(11,1,'File Manager','search','','2012-11-27 19:49:37','2012-11-27 19:49:37','Initial Version',1,0,1,NULL,6,0,NULL),(12,1,'Attributes','attributes','','2012-11-27 19:49:37','2012-11-27 19:49:37','Initial Version',1,0,1,NULL,6,0,NULL),(13,1,'File Sets','sets','','2012-11-27 19:49:38','2012-11-27 19:49:38','Initial Version',1,0,1,NULL,6,0,NULL),(14,1,'Add File Set','add_set','','2012-11-27 19:49:38','2012-11-27 19:49:38','Initial Version',1,0,1,NULL,6,0,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2012-11-27 19:49:38','2012-11-27 19:49:38','Initial Version',1,0,1,NULL,6,0,NULL),(16,1,'Search Users','search','','2012-11-27 19:49:39','2012-11-27 19:49:39','Initial Version',1,0,1,NULL,6,0,NULL),(17,1,'User Groups','groups','','2012-11-27 19:49:39','2012-11-27 19:49:39','Initial Version',1,0,1,NULL,6,0,NULL),(18,1,'Attributes','attributes','','2012-11-27 19:49:39','2012-11-27 19:49:39','Initial Version',1,0,1,NULL,6,0,NULL),(19,1,'Add User','add','','2012-11-27 19:49:40','2012-11-27 19:49:40','Initial Version',1,0,1,NULL,6,0,NULL),(20,1,'Add Group','add_group','','2012-11-27 19:49:40','2012-11-27 19:49:40','Initial Version',1,0,1,NULL,6,0,NULL),(21,1,'Group Sets','group_sets','','2012-11-27 19:49:40','2012-11-27 19:49:40','Initial Version',1,0,1,NULL,6,0,NULL),(22,1,'Reports','reports','Get data from forms and logs.','2012-11-27 19:49:41','2012-11-27 19:49:41','Initial Version',1,0,1,NULL,6,0,NULL),(23,1,'Statistics','statistics','View your site activity.','2012-11-27 19:49:42','2012-11-27 19:49:42','Initial Version',1,0,1,NULL,6,0,NULL),(24,1,'Form Results','forms','Get submission data.','2012-11-27 19:49:42','2012-11-27 19:49:42','Initial Version',1,0,1,NULL,6,0,NULL),(25,1,'Surveys','surveys','','2012-11-27 19:49:42','2012-11-27 19:49:42','Initial Version',1,0,1,NULL,6,0,NULL),(26,1,'Logs','logs','','2012-11-27 19:49:42','2012-11-27 19:49:42','Initial Version',1,0,1,NULL,6,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2012-11-27 19:49:43','2012-11-27 19:49:43','Initial Version',1,0,1,NULL,6,0,NULL),(28,1,'Themes','themes','Reskin your site.','2012-11-27 19:49:43','2012-11-27 19:49:43','Initial Version',1,0,1,NULL,6,0,NULL),(29,1,'Add','add','','2012-11-27 19:49:44','2012-11-27 19:49:44','Initial Version',1,0,1,NULL,6,0,NULL),(30,1,'Inspect','inspect','','2012-11-27 19:49:44','2012-11-27 19:49:44','Initial Version',1,0,1,NULL,6,0,NULL),(31,1,'Customize','customize','','2012-11-27 19:49:44','2012-11-27 19:49:44','Initial Version',1,0,1,NULL,6,0,NULL),(32,1,'Page Types','types','What goes in your site.','2012-11-27 19:49:45','2012-11-27 19:49:45','Initial Version',1,0,1,NULL,6,0,NULL),(33,1,'Add Page Type','add','Add page types to your site.','2012-11-27 19:49:45','2012-11-27 19:49:45','Initial Version',1,0,1,NULL,6,0,NULL),(34,1,'Attributes','attributes','','2012-11-27 19:49:45','2012-11-27 19:49:45','Initial Version',1,0,1,NULL,6,0,NULL),(35,1,'Single Pages','single','','2012-11-27 19:49:46','2012-11-27 19:49:46','Initial Version',1,0,1,NULL,6,0,NULL),(36,1,'Workflow','workflow','','2012-11-27 19:49:46','2012-11-27 19:49:46','Initial Version',1,0,1,NULL,6,0,NULL),(37,1,'Workflow List','list','','2012-11-27 19:49:47','2012-11-27 19:49:47','Initial Version',1,0,1,NULL,6,0,NULL),(38,1,'Waiting for Me','me','','2012-11-27 19:49:47','2012-11-27 19:49:47','Initial Version',1,0,1,NULL,6,0,NULL),(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2012-11-27 19:49:48','2012-11-27 19:49:48','Initial Version',1,0,1,NULL,6,0,NULL),(40,1,'Stacks','stacks','Share content across your site.','2012-11-27 19:49:48','2012-11-27 19:49:48','Initial Version',1,0,1,NULL,6,0,NULL),(41,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2012-11-27 19:49:49','2012-11-27 19:49:49','Initial Version',1,0,1,NULL,6,0,NULL),(42,1,'Stack List','list','','2012-11-27 19:49:49','2012-11-27 19:49:49','Initial Version',1,0,1,NULL,6,0,NULL),(43,1,'Block Types','types','Manage the installed block types in your site.','2012-11-27 19:49:50','2012-11-27 19:49:50','Initial Version',1,0,1,NULL,6,0,NULL),(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2012-11-27 19:49:50','2012-11-27 19:49:50','Initial Version',1,0,1,NULL,6,0,NULL),(45,1,'Dashboard','news','','2012-11-27 19:49:51','2012-11-27 19:49:51','Initial Version',1,0,1,NULL,6,0,NULL),(46,1,'Add Functionality','install','Install add-ons & themes.','2012-11-27 19:49:52','2012-11-27 19:49:52','Initial Version',1,0,1,NULL,6,0,NULL),(47,1,'Update Add-Ons','update','Update your installed packages.','2012-11-27 19:49:52','2012-11-27 19:49:52','Initial Version',1,0,1,NULL,6,0,NULL),(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2012-11-27 19:49:53','2012-11-27 19:49:53','Initial Version',1,0,1,NULL,6,0,NULL),(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2012-11-27 19:49:53','2012-11-27 19:49:53','Initial Version',1,0,1,NULL,6,0,NULL),(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2012-11-27 19:49:53','2012-11-27 19:49:53','Initial Version',1,0,1,NULL,6,0,NULL),(51,1,'System & Settings','system','Secure and setup your site.','2012-11-27 19:49:54','2012-11-27 19:49:54','Initial Version',1,0,1,NULL,6,0,NULL),(52,1,'Basics','basics','Basic information about your website.','2012-11-27 19:49:54','2012-11-27 19:49:54','Initial Version',1,0,1,NULL,6,0,NULL),(53,1,'Site Name','site_name','','2012-11-27 19:49:55','2012-11-27 19:49:55','Initial Version',1,0,1,NULL,6,0,NULL),(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2012-11-27 19:49:55','2012-11-27 19:49:55','Initial Version',1,0,1,NULL,6,0,NULL),(55,1,'Rich Text Editor','editor','','2012-11-27 19:49:56','2012-11-27 19:49:56','Initial Version',1,0,1,NULL,6,0,NULL),(56,1,'Languages','multilingual','','2012-11-27 19:49:56','2012-11-27 19:49:56','Initial Version',1,0,1,NULL,6,0,NULL),(57,1,'Time Zone','timezone','','2012-11-27 19:49:56','2012-11-27 19:49:56','Initial Version',1,0,1,NULL,6,0,NULL),(58,1,'Interface Preferences','interface','','2012-11-27 19:49:57','2012-11-27 19:49:57','Initial Version',1,0,1,NULL,6,0,NULL),(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2012-11-27 19:49:57','2012-11-27 19:49:57','Initial Version',1,0,1,NULL,6,0,NULL),(60,1,'Pretty URLs','urls','','2012-11-27 19:49:58','2012-11-27 19:49:58','Initial Version',1,0,1,NULL,6,0,NULL),(61,1,'Bulk SEO Updater','bulk_seo_tool','','2012-11-27 19:49:58','2012-11-27 19:49:58','Initial Version',1,0,1,NULL,6,0,NULL),(62,1,'Tracking Codes','tracking_codes','','2012-11-27 19:49:58','2012-11-27 19:49:58','Initial Version',1,0,1,NULL,6,0,NULL),(63,1,'Statistics','statistics','','2012-11-27 19:49:59','2012-11-27 19:49:59','Initial Version',1,0,1,NULL,6,0,NULL),(64,1,'Search Index','search_index','','2012-11-27 19:49:59','2012-11-27 19:49:59','Initial Version',1,0,1,NULL,6,0,NULL),(65,1,'Optimization','optimization','Keep your site running well.','2012-11-27 19:50:00','2012-11-27 19:50:00','Initial Version',1,0,1,NULL,6,0,NULL),(66,1,'Cache & Speed Settings','cache','','2012-11-27 19:50:00','2012-11-27 19:50:00','Initial Version',1,0,1,NULL,6,0,NULL),(67,1,'Clear Cache','clear_cache','','2012-11-27 19:50:00','2012-11-27 19:50:00','Initial Version',1,0,1,NULL,6,0,NULL),(68,1,'Automated Jobs','jobs','','2012-11-27 19:50:01','2012-11-27 19:50:01','Initial Version',1,0,1,NULL,6,0,NULL),(69,1,'Permissions & Access','permissions','Control who sees and edits your site.','2012-11-27 19:50:01','2012-11-27 19:50:01','Initial Version',1,0,1,NULL,6,0,NULL),(70,1,'Site Access','site','','2012-11-27 19:50:02','2012-11-27 19:50:02','Initial Version',1,0,1,NULL,6,0,NULL),(71,1,'File Manager Permissions','files','','2012-11-27 19:50:02','2012-11-27 19:50:02','Initial Version',1,0,1,NULL,6,0,NULL),(72,1,'Allowed File Types','file_types','','2012-11-27 19:50:03','2012-11-27 19:50:03','Initial Version',1,0,1,NULL,6,0,NULL),(73,1,'Task Permissions','tasks','','2012-11-27 19:50:03','2012-11-27 19:50:03','Initial Version',1,0,1,NULL,6,0,NULL),(74,1,'User Permissions','users','','2012-11-27 19:50:04','2012-11-27 19:50:04','Initial Version',1,0,1,NULL,6,0,NULL),(75,1,'Advanced Permissions','advanced','','2012-11-27 19:50:04','2012-11-27 19:50:04','Initial Version',1,0,1,NULL,6,0,NULL),(76,1,'IP Blacklist','ip_blacklist','','2012-11-27 19:50:05','2012-11-27 19:50:05','Initial Version',1,0,1,NULL,6,0,NULL),(77,1,'Captcha Setup','captcha','','2012-11-27 19:50:06','2012-11-27 19:50:06','Initial Version',1,0,1,NULL,6,0,NULL),(78,1,'Spam Control','antispam','','2012-11-27 19:50:06','2012-11-27 19:50:06','Initial Version',1,0,1,NULL,6,0,NULL),(79,1,'Maintenance Mode','maintenance_mode','','2012-11-27 19:50:07','2012-11-27 19:50:07','Initial Version',1,0,1,NULL,6,0,NULL),(80,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2012-11-27 19:50:07','2012-11-27 19:50:07','Initial Version',1,0,1,NULL,6,0,NULL),(81,1,'Login Destination','postlogin','','2012-11-27 19:50:08','2012-11-27 19:50:08','Initial Version',1,0,1,NULL,6,0,NULL),(82,1,'Public Profiles','profiles','','2012-11-27 19:50:08','2012-11-27 19:50:08','Initial Version',1,0,1,NULL,6,0,NULL),(83,1,'Public Registration','public_registration','','2012-11-27 19:50:09','2012-11-27 19:50:09','Initial Version',1,0,1,NULL,6,0,NULL),(84,1,'Email','mail','Control how your site send and processes mail.','2012-11-27 19:50:09','2012-11-27 19:50:09','Initial Version',1,0,1,NULL,6,0,NULL),(85,1,'SMTP Method','method','','2012-11-27 19:50:09','2012-11-27 19:50:09','Initial Version',1,0,1,NULL,6,0,NULL),(86,1,'Email Importers','importers','','2012-11-27 19:50:10','2012-11-27 19:50:10','Initial Version',1,0,1,NULL,6,0,NULL),(87,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2012-11-27 19:50:10','2012-11-27 19:50:10','Initial Version',1,0,1,NULL,6,0,NULL),(88,1,'Sets','sets','Group attributes into sets for easier organization','2012-11-27 19:50:11','2012-11-27 19:50:11','Initial Version',1,0,1,NULL,6,0,NULL),(89,1,'Types','types','Choose which attribute types are available for different items.','2012-11-27 19:50:11','2012-11-27 19:50:11','Initial Version',1,0,1,NULL,6,0,NULL),(90,1,'Environment','environment','Advanced settings for web developers.','2012-11-27 19:50:12','2012-11-27 19:50:12','Initial Version',1,0,1,NULL,6,0,NULL),(91,1,'Environment Information','info','','2012-11-27 19:50:12','2012-11-27 19:50:12','Initial Version',1,0,1,NULL,6,0,NULL),(92,1,'Debug Settings','debug','','2012-11-27 19:50:13','2012-11-27 19:50:13','Initial Version',1,0,1,NULL,6,0,NULL),(93,1,'Logging Settings','logging','','2012-11-27 19:50:14','2012-11-27 19:50:14','Initial Version',1,0,1,NULL,6,0,NULL),(94,1,'File Storage Locations','file_storage_locations','','2012-11-27 19:50:14','2012-11-27 19:50:14','Initial Version',1,0,1,NULL,6,0,NULL),(95,1,'Proxy Server','proxy','','2012-11-27 19:50:14','2012-11-27 19:50:14','Initial Version',1,0,1,NULL,6,0,NULL),(96,1,'Backup & Restore','backup_restore','Backup or restore your website.','2012-11-27 19:50:15','2012-11-27 19:50:15','Initial Version',1,0,1,NULL,6,0,NULL),(97,1,'Backup Database','backup','','2012-11-27 19:50:16','2012-11-27 19:50:16','Initial Version',1,0,1,NULL,6,0,NULL),(98,1,'Update concrete5','update','','2012-11-27 19:50:16','2012-11-27 19:50:16','Initial Version',1,0,1,NULL,6,0,NULL),(99,1,'Database XML','database','','2012-11-27 19:50:16','2012-11-27 19:50:16','Initial Version',1,0,1,NULL,6,0,NULL),(100,1,'Composer','composer','','2012-11-27 19:50:17','2012-11-27 19:50:17','Initial Version',1,0,1,NULL,6,0,NULL),(101,1,'',NULL,NULL,'2012-11-27 19:50:17','2012-11-27 19:50:17','Initial Version',1,0,NULL,NULL,0,1,NULL),(102,1,'',NULL,NULL,'2012-11-27 19:50:17','2012-11-27 19:50:17','Initial Version',1,0,NULL,NULL,0,2,NULL),(103,1,'',NULL,NULL,'2012-11-27 19:50:17','2012-11-27 19:50:17','Initial Version',1,0,NULL,NULL,0,3,NULL),(104,1,'Customize Dashboard Home','home','','2012-11-27 19:50:18','2012-11-27 19:50:18','Initial Version',1,0,1,NULL,6,2,NULL),(105,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2012-11-27 19:50:18','2012-11-27 19:50:18','Initial Version',1,0,1,NULL,6,3,NULL),(106,1,'Drafts','!drafts','','2012-11-27 19:50:44','2012-11-27 19:50:44','Initial Version',1,0,1,NULL,6,0,NULL),(107,1,'Trash','!trash','','2012-11-27 19:50:44','2012-11-27 19:50:44','Initial Version',1,0,1,NULL,6,0,NULL),(108,1,'Stacks','!stacks','','2012-11-27 19:50:44','2012-11-27 19:50:44','Initial Version',1,0,1,NULL,6,0,NULL),(109,1,'Login','login','','2012-11-27 19:50:45','2012-11-27 19:50:45','Initial Version',1,0,1,NULL,6,0,NULL),(110,1,'Register','register','','2012-11-27 19:50:47','2012-11-27 19:50:47','Initial Version',1,0,1,NULL,6,0,NULL),(111,1,'Profile','profile','','2012-11-27 19:50:48','2012-11-27 19:50:48','Initial Version',1,0,1,NULL,6,0,NULL),(112,1,'Edit','edit','','2012-11-27 19:50:48','2012-11-27 19:50:48','Initial Version',1,0,1,NULL,6,0,NULL),(113,1,'Avatar','avatar','','2012-11-27 19:50:49','2012-11-27 19:50:49','Initial Version',1,0,1,NULL,6,0,NULL),(114,1,'Messages','messages','','2012-11-27 19:50:49','2012-11-27 19:50:49','Initial Version',1,0,1,NULL,6,0,NULL),(115,1,'Friends','friends','','2012-11-27 19:50:49','2012-11-27 19:50:49','Initial Version',1,0,1,NULL,6,0,NULL),(116,1,'Page Not Found','page_not_found','','2012-11-27 19:50:50','2012-11-27 19:50:50','Initial Version',1,0,1,NULL,6,0,NULL),(117,1,'Page Forbidden','page_forbidden','','2012-11-27 19:50:50','2012-11-27 19:50:50','Initial Version',1,0,1,NULL,6,0,NULL),(118,1,'Download File','download_file','','2012-11-27 19:50:51','2012-11-27 19:50:51','Initial Version',1,0,1,NULL,6,0,NULL),(119,1,'Members','members','','2012-11-27 19:50:52','2012-11-27 19:50:52','Initial Version',1,0,1,NULL,6,0,NULL),(120,1,'Header Nav','header-nav',NULL,'2012-11-27 19:51:10','2012-11-27 19:51:10','Initial Version',1,0,1,NULL,6,1,NULL),(121,1,'Side Nav','side-nav',NULL,'2012-11-27 19:51:11','2012-11-27 19:51:11','Initial Version',1,0,1,NULL,6,1,NULL),(121,2,'Side Nav','side-nav',NULL,'2012-11-27 19:51:11','2012-11-29 01:23:03','New Version 2',0,1,1,NULL,6,1,NULL),(122,1,'Site Name','site-name',NULL,'2012-11-27 19:51:11','2012-11-27 19:51:11','Initial Version',1,0,1,NULL,6,1,NULL),(123,1,'',NULL,NULL,'2012-11-27 19:51:13','2012-11-27 19:51:13','Initial Version',1,0,NULL,NULL,0,4,NULL),(124,1,'',NULL,NULL,'2012-11-27 19:51:13','2012-11-27 19:51:13','Initial Version',1,0,NULL,NULL,0,5,NULL),(125,1,'',NULL,NULL,'2012-11-27 19:51:13','2012-11-27 19:51:13','Initial Version',1,0,NULL,NULL,0,6,NULL),(126,1,'',NULL,NULL,'2012-11-27 19:51:13','2012-11-27 19:51:13','Initial Version',1,0,NULL,NULL,0,7,NULL),(127,1,'About','about','','2012-11-27 19:51:15','2012-11-27 19:51:15','Version 1',1,0,1,NULL,6,6,NULL),(128,1,'Blog','blog','','2012-11-27 19:51:15','2012-11-27 19:51:15','Version 1',1,0,1,NULL,6,7,NULL),(129,1,'Search','search','','2012-11-27 19:51:15','2012-11-27 19:51:15','Initial Version',1,0,1,NULL,6,7,NULL),(130,1,'Contact Us','contact-us','','2012-11-27 19:51:16','2012-11-27 19:51:16','Version 1',1,0,1,NULL,6,6,NULL),(131,1,'Guestbook','guestbook','','2012-11-27 19:51:16','2012-11-27 19:51:16','Initial Version',1,0,1,NULL,6,7,NULL),(132,1,'Blog Archives','blog-archives','','2012-11-27 19:51:16','2012-11-27 19:51:16','Initial Version',1,0,1,NULL,6,7,NULL),(133,1,'Hello World','hello-world','This is my first blog post!','2012-11-27 19:51:17','2012-11-27 19:51:17','Initial Version',1,0,1,NULL,6,4,NULL),(134,1,'',NULL,NULL,'2012-11-27 20:39:13','2012-11-27 20:39:13','Initial Version',1,0,NULL,NULL,0,8,NULL),(135,1,'','','','2012-11-28 19:42:00','2012-11-28 19:42:19','Initial Version',0,1,1,NULL,6,4,NULL),(136,1,'Laws','laws','adsdfsdfsdf','2012-11-28 19:46:00','2012-11-28 19:46:39','Initial Version',0,1,1,NULL,6,4,NULL),(137,1,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 19:48:58','Initial Version',0,0,1,1,6,6,NULL),(137,2,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 19:53:12','Version 2',0,0,1,1,6,6,NULL),(137,3,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:04:53','Version 3',0,0,1,1,6,6,NULL),(137,4,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:25:14','Version 4',0,0,1,1,6,6,NULL),(137,5,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:25:40','Version 5',0,0,1,1,6,6,NULL),(137,6,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:26:22','Version 6',0,0,1,1,6,6,NULL),(137,7,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:31:49','Version 7',0,0,1,1,6,6,NULL),(137,8,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:35:35','Version 8',0,0,1,1,6,6,NULL),(137,9,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:38:47','Version 9',0,0,1,1,6,6,NULL),(137,10,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 20:39:48','Version 10',0,0,1,1,6,6,NULL),(137,11,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 23:52:44','Version 11',0,0,1,1,6,6,NULL),(137,12,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-28 23:54:41','Version 12',0,0,1,1,6,6,NULL),(137,13,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 00:10:09','Version 13',0,0,1,1,6,6,NULL),(137,14,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 01:29:09','Version 14',0,0,1,1,6,6,NULL),(137,15,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 01:46:35','Version 15',0,0,1,1,6,6,NULL),(137,16,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 01:50:51','Version 16',0,0,1,1,6,6,NULL),(137,17,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 01:54:46','Version 17',0,0,1,1,6,6,NULL),(137,18,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 02:00:35','Version 18',0,0,1,1,6,6,NULL),(137,19,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 18:30:59','Version 19',0,0,1,1,6,6,NULL),(137,20,'Laws','laws','sdfsdfsdfsf','2012-11-28 19:48:00','2012-11-29 18:39:41','Version 20',1,0,1,1,6,6,NULL),(139,1,'','','','2012-11-29 02:02:00','2012-11-29 02:02:14','Initial Version',0,1,1,NULL,6,4,NULL),(140,1,'location','location','Where you can find us','2012-11-29 02:09:00','2012-11-29 02:09:46','Initial Version',0,0,1,1,6,6,NULL),(140,2,'location','location','Where you can find us','2012-11-29 02:09:00','2012-11-29 02:14:15','Version 2',0,0,1,1,6,6,NULL),(140,3,'location','location','Where you can find us','2012-11-29 02:09:00','2012-11-29 02:28:03','Version 3',1,0,1,1,6,6,NULL),(141,1,'Menu','menu',NULL,'2012-11-29 02:16:07','2012-11-29 02:16:07','Initial Version',0,0,1,NULL,6,1,NULL),(141,2,'Menu','menu',NULL,'2012-11-29 02:16:07','2012-11-29 02:26:45','New Version 2',0,0,1,1,6,1,NULL),(141,3,'Menu','menu',NULL,'2012-11-29 02:16:07','2012-11-29 18:34:05','New Version 3',1,0,1,1,6,1,NULL),(142,1,'Contact us','contact-us','How you can contact us','2012-11-29 18:44:00','2012-11-29 18:44:28','Initial Version',0,0,1,1,6,6,NULL),(142,2,'Contact us','contact-us','How you can contact us','2012-11-29 18:44:00','2012-11-29 18:45:11','Version 2',1,0,1,1,6,6,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2012-11-27 19:49:18','2012-12-12 18:38:44','home'),(2,'2012-11-27 19:49:33','2012-11-27 19:49:34','dashboard'),(3,'2012-11-27 19:49:35','2012-11-27 19:49:35','composer'),(4,'2012-11-27 19:49:35','2012-11-27 19:49:35','write'),(5,'2012-11-27 19:49:35','2012-11-27 19:49:35','drafts'),(6,'2012-11-27 19:49:35','2012-11-27 19:49:36','sitemap'),(7,'2012-11-27 19:49:36','2012-11-27 19:49:36','full'),(8,'2012-11-27 19:49:36','2012-11-27 19:49:36','explore'),(9,'2012-11-27 19:49:36','2012-11-27 19:49:37','search'),(10,'2012-11-27 19:49:37','2012-11-27 19:49:37','files'),(11,'2012-11-27 19:49:37','2012-11-27 19:49:37','search'),(12,'2012-11-27 19:49:37','2012-11-27 19:49:38','attributes'),(13,'2012-11-27 19:49:38','2012-11-27 19:49:38','sets'),(14,'2012-11-27 19:49:38','2012-11-27 19:49:38','add_set'),(15,'2012-11-27 19:49:38','2012-11-27 19:49:39','users'),(16,'2012-11-27 19:49:39','2012-11-27 19:49:39','search'),(17,'2012-11-27 19:49:39','2012-11-27 19:49:39','groups'),(18,'2012-11-27 19:49:39','2012-11-27 19:49:40','attributes'),(19,'2012-11-27 19:49:40','2012-11-27 19:49:40','add'),(20,'2012-11-27 19:49:40','2012-11-27 19:49:40','add_group'),(21,'2012-11-27 19:49:40','2012-11-27 19:49:41','group_sets'),(22,'2012-11-27 19:49:41','2012-11-27 19:49:41','reports'),(23,'2012-11-27 19:49:42','2012-11-27 19:49:42','statistics'),(24,'2012-11-27 19:49:42','2012-11-27 19:49:42','forms'),(25,'2012-11-27 19:49:42','2012-11-27 19:49:42','surveys'),(26,'2012-11-27 19:49:42','2012-11-27 19:49:43','logs'),(27,'2012-11-27 19:49:43','2012-11-27 19:49:43','pages'),(28,'2012-11-27 19:49:43','2012-11-27 19:49:43','themes'),(29,'2012-11-27 19:49:44','2012-11-27 19:49:44','add'),(30,'2012-11-27 19:49:44','2012-11-27 19:49:44','inspect'),(31,'2012-11-27 19:49:44','2012-11-27 19:49:44','customize'),(32,'2012-11-27 19:49:45','2012-11-27 19:49:45','types'),(33,'2012-11-27 19:49:45','2012-11-27 19:49:45','add'),(34,'2012-11-27 19:49:45','2012-11-27 19:49:46','attributes'),(35,'2012-11-27 19:49:46','2012-11-27 19:49:46','single'),(36,'2012-11-27 19:49:46','2012-11-27 19:49:47','workflow'),(37,'2012-11-27 19:49:47','2012-11-27 19:49:47','list'),(38,'2012-11-27 19:49:47','2012-11-27 19:49:48','me'),(39,'2012-11-27 19:49:48','2012-11-27 19:49:48','blocks'),(40,'2012-11-27 19:49:48','2012-11-27 19:49:48','stacks'),(41,'2012-11-27 19:49:49','2012-11-27 19:49:49','permissions'),(42,'2012-11-27 19:49:49','2012-11-27 19:49:50','list'),(43,'2012-11-27 19:49:50','2012-11-27 19:49:50','types'),(44,'2012-11-27 19:49:50','2012-11-27 19:49:51','extend'),(45,'2012-11-27 19:49:51','2012-11-27 19:49:52','news'),(46,'2012-11-27 19:49:52','2012-11-27 19:49:52','install'),(47,'2012-11-27 19:49:52','2012-11-27 19:49:52','update'),(48,'2012-11-27 19:49:53','2012-11-27 19:49:53','connect'),(49,'2012-11-27 19:49:53','2012-11-27 19:49:53','themes'),(50,'2012-11-27 19:49:53','2012-11-27 19:49:54','add-ons'),(51,'2012-11-27 19:49:54','2012-11-27 19:49:54','system'),(52,'2012-11-27 19:49:54','2012-11-27 19:49:55','basics'),(53,'2012-11-27 19:49:55','2012-11-27 19:49:55','site_name'),(54,'2012-11-27 19:49:55','2012-11-27 19:49:55','icons'),(55,'2012-11-27 19:49:56','2012-11-27 19:49:56','editor'),(56,'2012-11-27 19:49:56','2012-11-27 19:49:56','multilingual'),(57,'2012-11-27 19:49:56','2012-11-27 19:49:57','timezone'),(58,'2012-11-27 19:49:57','2012-11-27 19:49:57','interface'),(59,'2012-11-27 19:49:57','2012-11-27 19:49:58','seo'),(60,'2012-11-27 19:49:58','2012-11-27 19:49:58','urls'),(61,'2012-11-27 19:49:58','2012-11-27 19:49:58','bulk_seo_tool'),(62,'2012-11-27 19:49:58','2012-11-27 19:49:59','tracking_codes'),(63,'2012-11-27 19:49:59','2012-11-27 19:49:59','statistics'),(64,'2012-11-27 19:49:59','2012-11-27 19:49:59','search_index'),(65,'2012-11-27 19:50:00','2012-11-27 19:50:00','optimization'),(66,'2012-11-27 19:50:00','2012-11-27 19:50:00','cache'),(67,'2012-11-27 19:50:00','2012-11-27 19:50:01','clear_cache'),(68,'2012-11-27 19:50:01','2012-11-27 19:50:01','jobs'),(69,'2012-11-27 19:50:01','2012-11-27 19:50:01','permissions'),(70,'2012-11-27 19:50:02','2012-11-27 19:50:02','site'),(71,'2012-11-27 19:50:02','2012-11-27 19:50:03','files'),(72,'2012-11-27 19:50:03','2012-11-27 19:50:03','file_types'),(73,'2012-11-27 19:50:03','2012-11-27 19:50:04','tasks'),(74,'2012-11-27 19:50:04','2012-11-27 19:50:04','users'),(75,'2012-11-27 19:50:04','2012-11-27 19:50:05','advanced'),(76,'2012-11-27 19:50:05','2012-11-27 19:50:06','ip_blacklist'),(77,'2012-11-27 19:50:06','2012-11-27 19:50:06','captcha'),(78,'2012-11-27 19:50:06','2012-11-27 19:50:07','antispam'),(79,'2012-11-27 19:50:07','2012-11-27 19:50:07','maintenance_mode'),(80,'2012-11-27 19:50:07','2012-11-27 19:50:08','registration'),(81,'2012-11-27 19:50:08','2012-11-27 19:50:08','postlogin'),(82,'2012-11-27 19:50:08','2012-11-27 19:50:08','profiles'),(83,'2012-11-27 19:50:09','2012-11-27 19:50:09','public_registration'),(84,'2012-11-27 19:50:09','2012-11-27 19:50:09','mail'),(85,'2012-11-27 19:50:09','2012-11-27 19:50:10','method'),(86,'2012-11-27 19:50:10','2012-11-27 19:50:10','importers'),(87,'2012-11-27 19:50:10','2012-11-27 19:50:11','attributes'),(88,'2012-11-27 19:50:11','2012-11-27 19:50:11','sets'),(89,'2012-11-27 19:50:11','2012-11-27 19:50:11','types'),(90,'2012-11-27 19:50:12','2012-11-27 19:50:12','environment'),(91,'2012-11-27 19:50:12','2012-11-27 19:50:12','info'),(92,'2012-11-27 19:50:13','2012-11-27 19:50:13','debug'),(93,'2012-11-27 19:50:14','2012-11-27 19:50:14','logging'),(94,'2012-11-27 19:50:14','2012-11-27 19:50:14','file_storage_locations'),(95,'2012-11-27 19:50:14','2012-11-27 19:50:15','proxy'),(96,'2012-11-27 19:50:15','2012-11-27 19:50:15','backup_restore'),(97,'2012-11-27 19:50:16','2012-11-27 19:50:16','backup'),(98,'2012-11-27 19:50:16','2012-11-27 19:50:16','update'),(99,'2012-11-27 19:50:16','2012-11-27 19:50:17','database'),(100,'2012-11-27 19:50:17','2012-11-27 19:50:17','composer'),(101,'2012-11-27 19:50:17','2012-11-27 19:50:17',NULL),(102,'2012-11-27 19:50:17','2012-11-27 19:50:17',NULL),(103,'2012-11-27 19:50:17','2012-11-27 19:50:17',NULL),(104,'2012-11-27 19:50:18','2012-11-27 19:50:18','home'),(105,'2012-11-27 19:50:18','2012-11-27 19:50:18','welcome'),(106,'2012-11-27 19:50:44','2012-11-27 19:50:44','!drafts'),(107,'2012-11-27 19:50:44','2012-11-27 19:50:44','!trash'),(108,'2012-11-27 19:50:44','2012-11-27 19:50:45','!stacks'),(109,'2012-11-27 19:50:45','2012-11-27 19:50:46','login'),(110,'2012-11-27 19:50:47','2012-11-27 19:50:48','register'),(111,'2012-11-27 19:50:48','2012-11-27 19:50:48','profile'),(112,'2012-11-27 19:50:48','2012-11-27 19:50:48','edit'),(113,'2012-11-27 19:50:49','2012-11-27 19:50:49','avatar'),(114,'2012-11-27 19:50:49','2012-11-27 19:50:49','messages'),(115,'2012-11-27 19:50:49','2012-11-27 19:50:50','friends'),(116,'2012-11-27 19:50:50','2012-11-27 19:50:50','page_not_found'),(117,'2012-11-27 19:50:50','2012-11-27 19:50:51','page_forbidden'),(118,'2012-11-27 19:50:51','2012-11-27 19:50:52','download_file'),(119,'2012-11-27 19:50:52','2012-11-27 19:50:53','members'),(120,'2012-11-27 19:51:10','2012-11-27 19:51:10','header-nav'),(121,'2012-11-27 19:51:11','2012-11-27 19:51:11','side-nav'),(122,'2012-11-27 19:51:11','2012-11-27 19:51:11','site-name'),(123,'2012-11-27 19:51:13','2012-11-27 19:51:13',NULL),(124,'2012-11-27 19:51:13','2012-11-27 19:51:13',NULL),(125,'2012-11-27 19:51:13','2012-11-27 19:51:13',NULL),(126,'2012-11-27 19:51:13','2012-11-27 19:51:13',NULL),(127,'2012-11-27 19:51:15','2012-11-27 19:51:15','about'),(128,'2012-11-27 19:51:15','2012-11-27 19:51:15','blog'),(129,'2012-11-27 19:51:15','2012-11-27 19:51:16','search'),(130,'2012-11-27 19:51:16','2012-11-29 18:43:52','contact-us'),(131,'2012-11-27 19:51:16','2012-11-27 19:51:16','guestbook'),(132,'2012-11-27 19:51:16','2012-11-27 19:51:17','blog-archives'),(133,'2012-11-27 19:51:17','2012-11-27 19:51:17','hello-world'),(134,'2012-11-27 20:39:13','2012-11-27 20:39:13',NULL),(135,'2012-11-28 19:42:19','2012-11-28 19:42:38',''),(136,'2012-11-28 19:46:39','2012-11-28 19:47:14',''),(137,'2012-11-28 19:48:58','2012-11-29 18:40:03','laws'),(139,'2012-11-29 02:02:14','2012-11-29 02:02:35',''),(140,'2012-11-29 02:09:46','2012-11-29 02:29:11','location'),(141,'2012-11-29 02:16:07','2012-11-29 18:38:02','menu'),(142,'2012-11-29 18:44:28','2012-11-29 18:50:07','contact-us');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerContentLayout`
--

DROP TABLE IF EXISTS `ComposerContentLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerContentLayout`
--

LOCK TABLES `ComposerContentLayout` WRITE;
/*!40000 ALTER TABLE `ComposerContentLayout` DISABLE KEYS */;
INSERT INTO `ComposerContentLayout` VALUES (1,16,0,1,4,'header.php'),(2,15,0,2,4,'thumbnail.php'),(3,13,0,3,4,''),(4,0,14,4,4,NULL);
/*!40000 ALTER TABLE `ComposerContentLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerDrafts`
--

DROP TABLE IF EXISTS `ComposerDrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerDrafts`
--

LOCK TABLES `ComposerDrafts` WRITE;
/*!40000 ALTER TABLE `ComposerDrafts` DISABLE KEYS */;
INSERT INTO `ComposerDrafts` VALUES (135,128),(136,128),(139,128);
/*!40000 ALTER TABLE `ComposerDrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerTypes`
--

DROP TABLE IF EXISTS `ComposerTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerTypes`
--

LOCK TABLES `ComposerTypes` WRITE;
/*!40000 ALTER TABLE `ComposerTypes` DISABLE KEYS */;
INSERT INTO `ComposerTypes` VALUES (4,'PARENT',0,128);
/*!40000 ALTER TABLE `ComposerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('ACCESS_ENTITY_UPDATED','2012-11-28 03:50:56','1354042256',0,0),('ANTISPAM_LOG_SPAM','2012-11-28 03:50:54','1',0,0),('APP_VERSION_LATEST','2012-12-04 02:04:44','5.6.0.2',0,0),('DO_PAGE_REINDEX_CHECK','2012-12-12 18:38:55','0',0,0),('ENABLE_CACHE','2012-11-28 03:50:54','1',0,0),('ENABLE_LOG_EMAILS','2012-11-28 03:50:54','1',0,0),('ENABLE_LOG_ERRORS','2012-11-28 03:50:54','1',0,0),('ENABLE_MARKETPLACE_SUPPORT','2012-11-28 03:50:54','1',0,0),('ENABLE_OVERRIDE_CACHE','2012-11-28 03:50:54','1',0,0),('ENABLE_USER_TIMEZONES','2012-12-01 05:19:14','1',0,0),('ENVIRONMENT_CACHE','2012-12-07 11:36:30','O:11:\"Environment\":7:{s:16:\"\0*\0coreOverrides\";a:15:{i:0;s:19:\"blocks/form/add.php\";i:1;s:30:\"blocks/form/styles_include.php\";i:2;s:20:\"blocks/form/view.php\";i:3;s:26:\"blocks/form/controller.php\";i:4;s:31:\"blocks/form/form_setup_html.php\";i:5;s:20:\"blocks/form/edit.php\";i:6;s:30:\"blocks/form/tools/services.php\";i:7;s:25:\"themes/boundless/view.php\";i:8;s:28:\"themes/boundless/default.php\";i:9;s:36:\"themes/boundless/elements/footer.php\";i:10;s:36:\"themes/boundless/elements/header.php\";i:11;s:25:\"themes/firstheme/view.php\";i:12;s:28:\"themes/firstheme/default.php\";i:13;s:36:\"themes/firstheme/elements/footer.php\";i:14;s:36:\"themes/firstheme/elements/header.php\";}s:15:\"\0*\0corePackages\";a:0:{}s:25:\"\0*\0coreOverridesByPackage\";a:0:{}s:19:\"\0*\0overridesScanned\";b:1;s:18:\"\0*\0cachedOverrides\";a:0:{}s:13:\"\0*\0autoLoaded\";b:0;s:14:\"\0*\0ignoreFiles\";a:1:{i:0;s:8:\"__MACOSX\";}}',0,0),('FULL_PAGE_CACHE_GLOBAL','2012-11-28 03:50:54','0',0,0),('MARKETPLACE_SITE_TOKEN','2012-11-29 09:42:47','F3k296395AUYVZwHqsVf2HGFJxZuHPj67tTkbbnyYuYxxO1e81M9yjIb2alZ8Hhy',0,0),('MARKETPLACE_SITE_URL_TOKEN','2012-11-29 09:42:48','roitlntycgnetp3uv4noklcy',0,0),('NEWSFLOW_LAST_VIEWED','2012-12-04 17:28:58','1354642138',1,0),('SEEN_INTRODUCTION','2012-11-28 03:52:27','1',0,0),('SITE','2012-11-28 03:51:36','Concrete',0,0),('SITE_APP_VERSION','2012-11-28 03:51:36','5.6.0.2',0,0),('SITE_DEBUG_LEVEL','2012-11-28 03:50:54','1',0,0),('SITE_INSTALLED_APP_VERSION','2012-11-28 03:51:36','5.6.0.2',0,0),('URL_REWRITING','2012-12-07 11:21:49','1',0,0);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStylePresets`
--

DROP TABLE IF EXISTS `CustomStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStyleRules`
--

DROP TABLE IF EXISTS `CustomStyleRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStyleRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DashboardHomepage`
--

DROP TABLE IF EXISTS `DashboardHomepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DashboardHomepage` (
  `dbhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbhModule` varchar(255) NOT NULL,
  `dbhDisplayName` varchar(255) DEFAULT NULL,
  `dbhDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DashboardHomepage`
--

LOCK TABLES `DashboardHomepage` WRITE;
/*!40000 ALTER TABLE `DashboardHomepage` DISABLE KEYS */;
/*!40000 ALTER TABLE `DashboardHomepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,12,119),(1,1,13,120),(2,1,12,121),(2,1,13,122),(3,1,12,123),(3,1,13,124),(4,1,12,125),(4,1,13,126),(5,1,12,127),(5,1,13,128),(6,1,12,129),(6,1,13,130),(7,1,12,131),(7,1,13,132),(8,1,12,133),(8,1,13,134),(10,1,12,145),(10,1,13,146),(11,1,12,147),(11,1,13,148),(12,1,12,150),(12,1,13,151),(13,1,12,152),(13,1,13,153),(14,1,12,154),(14,1,13,155),(15,1,12,156),(15,1,13,157),(16,1,12,158),(16,1,13,159),(17,1,12,160),(17,1,13,161),(18,1,12,166),(18,1,13,167),(20,1,12,170),(20,1,13,171),(21,1,12,172),(21,1,13,173),(22,1,12,174),(22,1,13,175),(23,1,12,176),(23,1,13,177),(26,1,12,182),(26,1,13,183),(27,1,12,184),(27,1,13,185),(29,1,12,188),(29,1,13,189),(30,1,12,190),(30,1,13,191),(31,1,12,192),(31,1,13,193),(32,1,12,194),(32,1,13,195);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissions`
--

DROP TABLE IF EXISTS `FilePermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissions`
--

LOCK TABLES `FilePermissions` WRITE;
/*!40000 ALTER TABLE `FilePermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,960.0000,212.0000),(2,960.0000,212.0000),(3,960.0000,212.0000),(4,960.0000,212.0000),(5,960.0000,212.0000),(6,960.0000,212.0000),(7,960.0000,212.0000),(8,150.0000,150.0000),(9,2592.0000,1728.0000),(10,1037.0000,692.0000),(11,146.0000,110.0000),(12,980.0000,350.0000),(13,980.0000,350.0000),(14,980.0000,350.0000),(15,980.0000,350.0000),(16,980.0000,400.0000),(17,980.0000,400.0000),(18,455.0000,397.0000),(19,90.0000,90.0000),(20,90.0000,90.0000),(21,90.0000,90.0000),(22,90.0000,90.0000),(23,90.0000,90.0000),(24,1500.0000,1218.0000),(25,262.0000,262.0000),(26,262.0000,262.0000),(27,262.0000,262.0000),(28,262.0000,262.0000),(29,262.0000,262.0000),(30,262.0000,262.0000),(31,262.0000,262.0000),(32,262.0000,262.0000);
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,36,34),(0,37,35),(0,38,36),(0,39,37),(0,40,38),(0,41,39),(0,42,41),(0,43,40),(0,44,42);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,12),(2,1,1,5,13),(3,2,1,5,12),(4,2,1,5,13),(5,3,1,5,12),(6,3,1,5,13),(7,4,1,5,12),(8,4,1,5,13),(9,5,1,5,12),(10,5,1,5,13),(11,6,1,5,12),(12,6,1,5,13),(13,7,1,5,12),(14,7,1,5,13),(15,8,1,5,12),(16,8,1,5,13),(19,10,1,5,12),(20,10,1,5,13),(21,11,1,5,12),(22,11,1,5,13),(23,12,1,5,12),(24,12,1,5,13),(25,13,1,5,12),(26,13,1,5,13),(27,14,1,5,12),(28,14,1,5,13),(29,15,1,5,12),(30,15,1,5,13),(31,16,1,5,12),(32,16,1,5,13),(33,17,1,5,12),(34,17,1,5,13),(35,18,1,5,12),(36,18,1,5,13),(39,20,1,5,12),(40,20,1,5,13),(41,21,1,5,12),(42,21,1,5,13),(43,22,1,5,12),(44,22,1,5,13),(45,23,1,5,12),(46,23,1,5,13),(51,26,1,5,12),(52,26,1,5,13),(53,27,1,5,12),(54,27,1,5,13),(57,29,1,5,12),(58,29,1,5,13),(59,30,1,5,12),(60,30,1,5,13),(61,31,1,5,12),(62,31,1,5,13),(63,32,1,5,12),(64,32,1,5,13);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'england_village.jpg','241354042255',1,333117,'england_village.jpg','','',1,'2012-11-27 19:50:56',1,1,'2012-11-27 19:50:56',1,1,0,'jpg',1),(2,1,'europe_england_stonehenge.jpg','221354042257',1,286856,'europe_england_stonehenge.jpg','','',1,'2012-11-27 19:50:57',1,1,'2012-11-27 19:50:57',1,1,0,'jpg',1),(3,1,'europe_germany_munich_arch.jpg','641354042259',1,229235,'europe_germany_munich_arch.jpg','','',1,'2012-11-27 19:50:59',1,1,'2012-11-27 19:50:59',1,1,0,'jpg',1),(4,1,'europe_rotterdam_port.jpg','631354042261',1,203784,'europe_rotterdam_port.jpg','','',1,'2012-11-27 19:51:01',1,1,'2012-11-27 19:51:01',1,1,0,'jpg',1),(5,1,'europe_spain_grenada_alhambra.jpg','601354042263',1,320805,'europe_spain_grenada_alhambra.jpg','','',1,'2012-11-27 19:51:03',1,1,'2012-11-27 19:51:03',1,1,0,'jpg',1),(6,1,'europe_valencia_hemispheric.jpg','591354042265',1,262679,'europe_valencia_hemispheric.jpg','','',1,'2012-11-27 19:51:05',1,1,'2012-11-27 19:51:05',1,1,0,'jpg',1),(7,1,'northern_az_lake_powell_house_boats.jpg','341354042266',1,226976,'northern_az_lake_powell_house_boats.jpg','','',1,'2012-11-27 19:51:06',1,1,'2012-11-27 19:51:06',1,1,0,'jpg',1),(8,1,'sh_thumbnail.jpg','761354042267',1,15243,'sh_thumbnail.jpg','','',1,'2012-11-27 19:51:07',1,1,'2012-11-27 19:51:07',1,1,0,'jpg',1),(11,1,'new_grass_004.jpg','781354130969',1,13278,'new_grass_004.jpg','','',1,'2012-11-28 20:29:29',1,1,'2012-11-28 20:29:29',1,1,0,'jpg',1),(10,1,'img_3695_1.jpg','481354130269',1,321612,'img_3695_1.jpg','','',1,'2012-11-28 20:17:49',1,1,'2012-11-28 20:17:49',1,1,0,'jpg',1),(12,1,'1.jpg','621354211306',1,199866,'1.jpg','','',1,'2012-11-29 18:48:26',1,1,'2012-11-29 18:48:26',1,1,0,'jpg',1),(13,1,'2.jpg','731354211317',1,132136,'2.jpg','','',1,'2012-11-29 18:48:37',1,1,'2012-11-29 18:48:37',1,1,0,'jpg',1),(14,1,'3.jpg','151354211328',1,110464,'3.jpg','','',1,'2012-11-29 18:48:48',1,1,'2012-11-29 18:48:48',1,1,0,'jpg',1),(15,1,'4.jpg','861354211343',1,74290,'4.jpg','','',1,'2012-11-29 18:49:03',1,1,'2012-11-29 18:49:03',1,1,0,'jpg',1),(16,1,'slide01.png','191354305259',1,166010,'slide01.png','','',1,'2012-11-30 20:54:19',1,1,'2012-11-30 20:54:19',1,1,0,'png',1),(17,1,'slide02.png','621354305279',1,166010,'slide02.png','','',1,'2012-11-30 20:54:39',1,1,'2012-11-30 20:54:39',1,1,0,'png',1),(18,1,'KUNG-FU.png','771355138580',1,15061,'KUNG-FU.png','','',1,'2012-12-10 11:23:00',2,2,'2012-12-10 11:23:00',1,1,0,'png',1),(20,1,'ICON-01-NEW.png','211355140938',1,1676,'ICON-01-NEW.png','','',1,'2012-12-10 12:02:18',2,2,'2012-12-10 12:02:18',1,1,0,'png',1),(21,1,'ICON-02-NEW.png','901355142131',1,3286,'ICON-02-NEW.png','','',1,'2012-12-10 12:22:11',2,2,'2012-12-10 12:22:11',1,1,0,'png',1),(22,1,'ICON-03-NEW.png','341355142824',1,2089,'ICON-03-NEW.png','','',1,'2012-12-10 12:33:44',2,2,'2012-12-10 12:33:44',1,1,0,'png',1),(23,1,'ICON-04-NEW.png','971355143250',1,3430,'ICON-04-NEW.png','','',1,'2012-12-10 12:40:50',2,2,'2012-12-10 12:40:50',1,1,0,'png',1),(27,1,'SEALSKINZ-THUMB-rollover.jpg','421355156993',1,13660,'SEALSKINZ-THUMB-rollover.jpg','','',1,'2012-12-10 16:29:53',2,2,'2012-12-10 16:29:53',1,1,0,'jpg',1),(26,1,'SEALSKINZ-THUMB.jpg','501355156983',1,26487,'SEALSKINZ-THUMB.jpg','','',1,'2012-12-10 16:29:43',2,2,'2012-12-10 16:29:43',1,1,0,'jpg',1),(29,1,'ASQUITH-THUMB.jpg','411355157758',1,15279,'ASQUITH-THUMB.jpg','','',1,'2012-12-10 16:42:38',2,2,'2012-12-10 16:42:38',1,1,0,'jpg',1),(30,1,'ASQUITH-THUMB-rollover.jpg','911355157765',1,9228,'ASQUITH-THUMB-rollover.jpg','','',1,'2012-12-10 16:42:45',2,2,'2012-12-10 16:42:45',1,1,0,'jpg',1),(31,1,'PAPILLON-THUMB.jpg','501355158528',1,19901,'PAPILLON-THUMB.jpg','','',1,'2012-12-10 16:55:28',2,2,'2012-12-10 16:55:28',1,1,0,'jpg',1),(32,1,'PAPILLON-THUMB-rollover.jpg','461355158535',1,10723,'PAPILLON-THUMB-rollover.jpg','','',1,'2012-12-10 16:55:36',2,2,'2012-12-10 16:55:36',1,1,0,'jpg',1);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2012-11-27 19:50:56',1,0,0,0,NULL),(2,'2012-11-27 19:50:57',1,0,0,0,NULL),(3,'2012-11-27 19:50:59',1,0,0,0,NULL),(4,'2012-11-27 19:51:01',1,0,0,0,NULL),(5,'2012-11-27 19:51:03',1,0,0,0,NULL),(6,'2012-11-27 19:51:05',1,0,0,0,NULL),(7,'2012-11-27 19:51:06',1,0,0,0,NULL),(8,'2012-11-27 19:51:07',1,0,0,0,NULL),(10,'2012-11-28 20:17:49',1,0,0,0,NULL),(11,'2012-11-28 20:29:29',1,0,137,0,NULL),(12,'2012-11-29 18:48:26',1,0,142,0,NULL),(13,'2012-11-29 18:48:37',1,0,0,0,NULL),(14,'2012-11-29 18:48:48',1,0,0,0,NULL),(15,'2012-11-29 18:49:03',1,0,0,0,NULL),(16,'2012-11-30 20:54:19',1,0,1,0,NULL),(17,'2012-11-30 20:54:39',1,0,0,0,NULL),(18,'2012-12-10 11:23:00',2,0,1,0,NULL),(20,'2012-12-10 12:02:18',2,0,0,0,NULL),(21,'2012-12-10 12:22:11',2,0,1,0,NULL),(22,'2012-12-10 12:33:44',2,0,1,0,NULL),(23,'2012-12-10 12:40:50',2,0,1,0,NULL),(26,'2012-12-10 16:29:43',2,0,0,0,NULL),(27,'2012-12-10 16:29:53',2,0,0,0,NULL),(29,'2012-12-10 16:42:38',2,0,0,0,NULL),(30,'2012-12-10 16:42:45',2,0,0,0,NULL),(31,'2012-12-10 16:55:28',2,0,1,0,NULL),(32,'2012-12-10 16:55:35',2,0,0,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL),(3,'Administrators','',0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine','Index the site to allow searching to work quickly and accurately.','2012-11-27 19:49:31',NULL,0,NULL,0,'ENABLED','index_search',1),(2,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2012-11-27 19:49:31',NULL,0,NULL,0,'ENABLED','generate_sitemap',0),(3,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2012-11-27 19:49:31',NULL,0,NULL,0,'ENABLED','process_email',0),(4,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2012-11-27 19:49:31',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPresets`
--

DROP TABLE IF EXISTS `LayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPresets`
--

LOCK TABLES `LayoutPresets` WRITE;
/*!40000 ALTER TABLE `LayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layouts`
--

DROP TABLE IF EXISTS `Layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layouts`
--

LOCK TABLES `Layouts` WRITE;
/*!40000 ALTER TABLE `Layouts` DISABLE KEYS */;
INSERT INTO `Layouts` VALUES (1,1,2,0,'48%',0),(2,1,2,0,'59%',0),(3,1,2,4,'59%',0),(4,1,2,8,'59%',0),(5,1,1,0,'',0);
/*!40000 ALTER TABLE `Layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
INSERT INTO `Logs` VALUES (1,'sent_emails','2012-12-07 11:18:04','**EMAILS ARE ENABLED. THIS EMAIL WAS SENT TO mail()**\nTemplate Used: forgot_password\nTo: mark.horton@boundlesscommerce.co.uk\nFrom: &quot;Forgot Password&quot; &lt;mark.horton@boundlesscommerce.co.uk&gt;\nSubject: Forgot Password\nBody: \n\nDear admin,\n\nYou have requested a new password for the site Concrete \n\nYour username is: admin\n\nYou may change your password at the following address:\n\nhttp://boundless.local/index.php/login/change_password/8tLbEv9AYeE8/\n\nThanks for browsing the site!\n\n\n',NULL,1),(2,'sent_emails','2012-12-07 11:44:40','**EMAILS ARE ENABLED. THIS EMAIL WAS SENT TO mail()**\nTemplate Used: forgot_password\nTo: mark.horton@boundlesscommerce.co.uk\nFrom: &quot;Forgot Password&quot; &lt;mark.horton@boundlesscommerce.co.uk&gt;\nSubject: Forgot Password\nBody: \n\nDear admin,\n\nYou have requested a new password for the site Concrete \n\nYour username is: admin\n\nYou may change your password at the following address:\n\nhttp://boundless.local/login/change_password/bUaKgZwkjVQp/\n\nThanks for browsing the site!\n\n\n',1,1),(3,'exceptions','2012-12-10 11:42:13','Exception Occurred: /home/new/public_html/concrete/core/models/permissions.php:71 Unable to get permission key for view_edit_interface (0)\n\n#0 /home/new/public_html/concrete/tools/edit_block_popup.php(18): Concrete5_Model_Permissions-&gt;__call(\'canViewEditInte...\', Array)\n#1 /home/new/public_html/concrete/tools/edit_block_popup.php(18): Permissions-&gt;canViewEditInterface()\n#2 /home/new/public_html/concrete/startup/tools.php(29): include(\'/home/new/publi...\')\n#3 /home/new/public_html/concrete/dispatcher.php(122): require(\'/home/new/publi...\')\n#4 /home/new/public_html/index.php(2): require(\'/home/new/publi...\')\n#5 {main}\n',2,1),(4,'exceptions','2012-12-10 12:33:59','Exception Occurred: /home/new/public_html/concrete/core/models/permissions.php:71 Unable to get permission key for view_edit_interface (0)\n\n#0 /home/new/public_html/concrete/tools/edit_block_popup.php(18): Concrete5_Model_Permissions-&gt;__call(\'canViewEditInte...\', Array)\n#1 /home/new/public_html/concrete/tools/edit_block_popup.php(18): Permissions-&gt;canViewEditInterface()\n#2 /home/new/public_html/concrete/startup/tools.php(29): include(\'/home/new/publi...\')\n#3 /home/new/public_html/concrete/dispatcher.php(122): require(\'/home/new/publi...\')\n#4 /home/new/public_html/index.php(2): require(\'/home/new/publi...\')\n#5 {main}\n',2,1);
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
INSERT INTO `Packages` VALUES (1,'Galleria image gallery','asmiller_gallery','Easily create amazing image galleries for showcasing your work, presenting your products, or sharing your photos.','2012-11-29 01:44:59',1,'2.0','2.0');
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/users/group_sets','1'),(21,22,'/dashboard/reports','1'),(22,23,'/dashboard/reports/statistics','1'),(23,24,'/dashboard/reports/forms','1'),(24,25,'/dashboard/reports/surveys','1'),(25,26,'/dashboard/reports/logs','1'),(26,27,'/dashboard/pages','1'),(27,28,'/dashboard/pages/themes','1'),(28,29,'/dashboard/pages/themes/add','1'),(29,30,'/dashboard/pages/themes/inspect','1'),(30,31,'/dashboard/pages/themes/customize','1'),(31,32,'/dashboard/pages/types','1'),(32,33,'/dashboard/pages/types/add','1'),(33,34,'/dashboard/pages/attributes','1'),(34,35,'/dashboard/pages/single','1'),(35,36,'/dashboard/workflow','1'),(36,37,'/dashboard/workflow/list','1'),(37,38,'/dashboard/workflow/me','1'),(38,39,'/dashboard/blocks','1'),(39,40,'/dashboard/blocks/stacks','1'),(40,41,'/dashboard/blocks/permissions','1'),(41,42,'/dashboard/blocks/stacks/list','1'),(42,43,'/dashboard/blocks/types','1'),(43,44,'/dashboard/extend','1'),(44,45,'/dashboard/news','1'),(45,46,'/dashboard/extend/install','1'),(46,47,'/dashboard/extend/update','1'),(47,48,'/dashboard/extend/connect','1'),(48,49,'/dashboard/extend/themes','1'),(49,50,'/dashboard/extend/add-ons','1'),(50,51,'/dashboard/system','1'),(51,52,'/dashboard/system/basics','1'),(52,53,'/dashboard/system/basics/site_name','1'),(53,54,'/dashboard/system/basics/icons','1'),(54,55,'/dashboard/system/basics/editor','1'),(55,56,'/dashboard/system/basics/multilingual','1'),(56,57,'/dashboard/system/basics/timezone','1'),(57,58,'/dashboard/system/basics/interface','1'),(58,59,'/dashboard/system/seo','1'),(59,60,'/dashboard/system/seo/urls','1'),(60,61,'/dashboard/system/seo/bulk_seo_tool','1'),(61,62,'/dashboard/system/seo/tracking_codes','1'),(62,63,'/dashboard/system/seo/statistics','1'),(63,64,'/dashboard/system/seo/search_index','1'),(64,65,'/dashboard/system/optimization','1'),(65,66,'/dashboard/system/optimization/cache','1'),(66,67,'/dashboard/system/optimization/clear_cache','1'),(67,68,'/dashboard/system/optimization/jobs','1'),(68,69,'/dashboard/system/permissions','1'),(69,70,'/dashboard/system/permissions/site','1'),(70,71,'/dashboard/system/permissions/files','1'),(71,72,'/dashboard/system/permissions/file_types','1'),(72,73,'/dashboard/system/permissions/tasks','1'),(73,74,'/dashboard/system/permissions/users','1'),(74,75,'/dashboard/system/permissions/advanced','1'),(75,76,'/dashboard/system/permissions/ip_blacklist','1'),(76,77,'/dashboard/system/permissions/captcha','1'),(77,78,'/dashboard/system/permissions/antispam','1'),(78,79,'/dashboard/system/permissions/maintenance_mode','1'),(79,80,'/dashboard/system/registration','1'),(80,81,'/dashboard/system/registration/postlogin','1'),(81,82,'/dashboard/system/registration/profiles','1'),(82,83,'/dashboard/system/registration/public_registration','1'),(83,84,'/dashboard/system/mail','1'),(84,85,'/dashboard/system/mail/method','1'),(85,86,'/dashboard/system/mail/importers','1'),(86,87,'/dashboard/system/attributes','1'),(87,88,'/dashboard/system/attributes/sets','1'),(88,89,'/dashboard/system/attributes/types','1'),(89,90,'/dashboard/system/environment','1'),(90,91,'/dashboard/system/environment/info','1'),(91,92,'/dashboard/system/environment/debug','1'),(92,93,'/dashboard/system/environment/logging','1'),(93,94,'/dashboard/system/environment/file_storage_locations','1'),(94,95,'/dashboard/system/environment/proxy','1'),(95,96,'/dashboard/system/backup_restore','1'),(96,97,'/dashboard/system/backup_restore/backup','1'),(97,98,'/dashboard/system/backup_restore/update','1'),(98,99,'/dashboard/system/backup_restore/database','1'),(99,100,'/dashboard/pages/types/composer','1'),(100,104,'/dashboard/home','1'),(101,105,'/dashboard/welcome','1'),(102,106,'/!drafts','1'),(103,107,'/!trash','1'),(104,108,'/!stacks','1'),(105,109,'/login','1'),(106,110,'/register','1'),(107,111,'/profile','1'),(108,112,'/profile/edit','1'),(109,113,'/profile/avatar','1'),(110,114,'/profile/messages','1'),(111,115,'/profile/friends','1'),(112,116,'/page_not_found','1'),(113,117,'/page_forbidden','1'),(114,118,'/download_file','1'),(115,119,'/members','1'),(116,120,'/!stacks/header-nav','1'),(117,121,'/!stacks/side-nav','1'),(118,122,'/!stacks/site-name','1'),(119,127,'/about','1'),(120,128,'/blog','1'),(121,129,'/search','1'),(123,131,'/about/guestbook','1'),(124,132,'/blog/blog-archives','1'),(125,133,'/blog/hello-world','1'),(151,140,'/about/location','1'),(153,141,'/!stacks/menu','1'),(154,137,'/about/laws','1'),(155,130,'/!trash/contact-us','1'),(157,142,'/about/contact-us','1');
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,45),(1,2,46),(1,3,47),(1,4,48),(1,5,49),(1,6,50),(1,7,51),(1,8,52),(1,9,53),(1,10,54),(1,11,55),(1,12,56),(1,13,57),(1,14,58),(1,15,59),(2,1,18),(2,2,19),(2,3,24),(2,4,20),(2,5,21),(2,6,26),(2,7,28),(2,8,30),(2,9,27),(2,10,31),(2,11,32),(2,12,22),(2,13,25),(2,14,23),(2,15,29),(42,1,33),(109,1,34),(110,1,35);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2012-11-27 19:49:35','2012-11-27 19:50:19',NULL,0),(4,'','Write','','/dashboard/composer/write','2012-11-27 19:49:35','2012-11-27 19:50:19',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2012-11-27 19:49:35','2012-11-27 19:50:19',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2012-11-27 19:49:35','2012-11-27 19:50:19',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2012-11-27 19:49:36','2012-11-27 19:50:20',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2012-11-27 19:49:36','2012-11-27 19:50:20',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2012-11-27 19:49:36','2012-11-27 19:50:20',NULL,0),(11,'','File Manager','','/dashboard/files/search','2012-11-27 19:49:37','2012-11-27 19:50:21',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2012-11-27 19:49:37','2012-11-27 19:50:21',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2012-11-27 19:49:38','2012-11-27 19:50:21',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2012-11-27 19:49:38','2012-11-27 19:50:22',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2012-11-27 19:49:38','2012-11-27 19:50:22',NULL,0),(16,'','Search Users','','/dashboard/users/search','2012-11-27 19:49:39','2012-11-27 19:50:22',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2012-11-27 19:49:39','2012-11-27 19:50:23',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2012-11-27 19:49:39','2012-11-27 19:50:23',NULL,0),(19,'','Add User','','/dashboard/users/add','2012-11-27 19:49:40','2012-11-27 19:50:23',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2012-11-27 19:49:40','2012-11-27 19:50:24',NULL,0),(21,'','Group Sets','','/dashboard/users/group_sets','2012-11-27 19:49:40','2012-11-27 19:50:25',NULL,0),(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2012-11-27 19:49:41','2012-11-27 19:50:25',NULL,0),(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2012-11-27 19:49:42','2012-11-27 19:50:25',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2012-11-27 19:49:42','2012-11-27 19:50:26',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2012-11-27 19:49:42','2012-11-27 19:50:26',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2012-11-27 19:49:42','2012-11-27 19:50:26',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2012-11-27 19:49:43','2012-11-27 19:50:27',NULL,0),(29,'','Add','','/dashboard/pages/themes/add','2012-11-27 19:49:44','2012-11-27 19:50:27',NULL,0),(30,'','Inspect','','/dashboard/pages/themes/inspect','2012-11-27 19:49:44','2012-11-27 19:50:27',NULL,0),(31,'','Customize','','/dashboard/pages/themes/customize','2012-11-27 19:49:44','2012-11-27 19:50:27',NULL,0),(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2012-11-27 19:49:45','2012-11-27 19:50:27',NULL,0),(34,'','Attributes','','/dashboard/pages/attributes','2012-11-27 19:49:45','2012-11-27 19:50:28',NULL,0),(35,'','Single Pages','','/dashboard/pages/single','2012-11-27 19:49:46','2012-11-27 19:50:28',NULL,0),(36,'','Workflow','','/dashboard/workflow','2012-11-27 19:49:46','2012-11-27 19:50:28',NULL,0),(37,'','Workflow List','','/dashboard/workflow/list','2012-11-27 19:49:47','2012-11-27 19:50:28',NULL,0),(38,'','Waiting for Me','','/dashboard/workflow/me','2012-11-27 19:49:47','2012-11-27 19:50:28',NULL,0),(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2012-11-27 19:49:48','2012-11-27 19:50:29',NULL,0),(41,'','Block & Stack Permissions','Control who can add blocks and stacks on your site.','/dashboard/blocks/permissions','2012-11-27 19:49:49','2012-11-27 19:50:29',NULL,0),(42,'','Stack List','','/dashboard/blocks/stacks/list','2012-11-27 19:49:49','2012-11-27 19:50:29',NULL,0),(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2012-11-27 19:49:50','2012-11-27 19:50:30',NULL,0),(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2012-11-27 19:49:50','2012-11-27 19:50:30',NULL,0),(45,'','Dashboard','','/dashboard/news','2012-11-27 19:49:51','2012-11-27 19:50:30',NULL,0),(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2012-11-27 19:49:52','2012-11-27 19:50:30',NULL,0),(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2012-11-27 19:49:52','2012-11-27 19:50:30',NULL,0),(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2012-11-27 19:49:53','2012-11-27 19:50:30',NULL,0),(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2012-11-27 19:49:53','2012-11-27 19:50:30',NULL,0),(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2012-11-27 19:49:53','2012-11-27 19:50:31',NULL,0),(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2012-11-27 19:49:54','2012-11-27 19:50:31',NULL,0),(53,'','Site Name','','/dashboard/system/basics/site_name','2012-11-27 19:49:55','2012-11-27 19:50:31',NULL,0),(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2012-11-27 19:49:55','2012-11-27 19:50:31',NULL,0),(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2012-11-27 19:49:56','2012-11-27 19:50:31',NULL,0),(56,'','Languages','','/dashboard/system/basics/multilingual','2012-11-27 19:49:56','2012-11-27 19:50:31',NULL,0),(57,'','Time Zone','','/dashboard/system/basics/timezone','2012-11-27 19:49:56','2012-11-27 19:50:32',NULL,0),(58,'','Interface Preferences','','/dashboard/system/basics/interface','2012-11-27 19:49:57','2012-11-27 19:50:33',NULL,0),(60,'','Pretty URLs','','/dashboard/system/seo/urls','2012-11-27 19:49:58','2012-11-27 19:50:33',NULL,0),(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2012-11-27 19:49:58','2012-11-27 19:50:33',NULL,0),(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2012-11-27 19:49:58','2012-11-27 19:50:33',NULL,0),(63,'','Statistics','','/dashboard/system/seo/statistics','2012-11-27 19:49:59','2012-11-27 19:50:33',NULL,0),(64,'','Search Index','','/dashboard/system/seo/search_index','2012-11-27 19:49:59','2012-11-27 19:50:33',NULL,0),(66,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2012-11-27 19:50:00','2012-11-27 19:50:34',NULL,0),(67,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2012-11-27 19:50:00','2012-11-27 19:50:34',NULL,0),(68,'','Automated Jobs','','/dashboard/system/optimization/jobs','2012-11-27 19:50:01','2012-11-27 19:50:34',NULL,0),(70,'','Site Access','','/dashboard/system/permissions/site','2012-11-27 19:50:02','2012-11-27 19:50:34',NULL,0),(71,'','File Manager Permissions','','/dashboard/system/permissions/files','2012-11-27 19:50:02','2012-11-27 19:50:34',NULL,0),(72,'','Allowed File Types','','/dashboard/system/permissions/file_types','2012-11-27 19:50:03','2012-11-27 19:50:34',NULL,0),(73,'','Task Permissions','','/dashboard/system/permissions/tasks','2012-11-27 19:50:03','2012-11-27 19:50:34',NULL,0),(76,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2012-11-27 19:50:05','2012-11-27 19:50:35',NULL,0),(77,'','Captcha Setup','','/dashboard/system/permissions/captcha','2012-11-27 19:50:06','2012-11-27 19:50:35',NULL,0),(78,'','Spam Control','','/dashboard/system/permissions/antispam','2012-11-27 19:50:06','2012-11-27 19:50:35',NULL,0),(79,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2012-11-27 19:50:07','2012-11-27 19:50:36',NULL,0),(81,'','Login Destination','','/dashboard/system/registration/postlogin','2012-11-27 19:50:08','2012-11-27 19:50:36',NULL,0),(82,'','Public Profiles','','/dashboard/system/registration/profiles','2012-11-27 19:50:08','2012-11-27 19:50:36',NULL,0),(83,'','Public Registration','','/dashboard/system/registration/public_registration','2012-11-27 19:50:09','2012-11-27 19:50:36',NULL,0),(84,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2012-11-27 19:50:09','2012-11-27 19:50:36',NULL,0),(85,'','SMTP Method','','/dashboard/system/mail/method','2012-11-27 19:50:09','2012-11-27 19:50:36',NULL,0),(86,'','Email Importers','','/dashboard/system/mail/importers','2012-11-27 19:50:10','2012-11-27 19:50:36',NULL,0),(87,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2012-11-27 19:50:10','2012-11-27 19:50:37',NULL,0),(88,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2012-11-27 19:50:11','2012-11-27 19:50:37',NULL,0),(89,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2012-11-27 19:50:11','2012-11-27 19:50:37',NULL,0),(90,'','Environment','Advanced settings for web developers.','/dashboard/system/environment','2012-11-27 19:50:12','2012-11-27 19:50:37',NULL,0),(91,'','Environment Information','','/dashboard/system/environment/info','2012-11-27 19:50:12','2012-11-27 19:50:37',NULL,0),(92,'','Debug Settings','','/dashboard/system/environment/debug','2012-11-27 19:50:13','2012-11-27 19:50:37',NULL,0),(93,'','Logging Settings','','/dashboard/system/environment/logging','2012-11-27 19:50:14','2012-11-27 19:50:37',NULL,0),(94,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2012-11-27 19:50:14','2012-11-27 19:50:37',NULL,0),(95,'','Proxy Server','','/dashboard/system/environment/proxy','2012-11-27 19:50:14','2012-11-27 19:50:38',NULL,0),(96,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2012-11-27 19:50:15','2012-11-27 19:50:38',NULL,0),(98,'','Update concrete5','','/dashboard/system/backup_restore/update','2012-11-27 19:50:16','2012-11-27 19:50:38',NULL,0),(99,'','Database XML','','/dashboard/system/backup_restore/database','2012-11-27 19:50:16','2012-11-27 19:50:38',NULL,0),(105,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2012-11-27 19:50:18','2012-11-27 19:50:40',NULL,0),(104,'','Customize Dashboard Home','','/dashboard/home','2012-11-27 19:50:18','2012-11-27 19:50:42',NULL,0),(1,'Welcome to concrete5!\n                                         Content Management is easy with concrete5\'s in-context editing. Just login and you can change things as you browse your site. \n                                         You can watch videos and learn how to: \n                                        \n                                        Edit&nbsp;this page.\n                                        Add a new page.\n                                        Add some basic functionality, like&nbsp;a Form.\n                                        Finding &amp; adding&nbsp;more functionality and themes.\n                                        \n                                         We\'ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;Sitemap and quickly delete the parts you don\'t want.  greeny grass\r\n design By Free CSS Templates  \r\nAbout This Website\r\nPosted on August 25th, 2007 by admin | Edit \r\n\r\n Greeny Grass is a free template from FCT released under a Creative Commons Attribution 2.5 License. The flower photo is fromt PDPhoto.org. You\'re free to use this template for both commercial or personal use. I only ask that you link back to my site in some way. Enjoy :) \r\n \r\nRead More     Comments (33) \r\n \r\n\r\nRisus Pellentesque Pharetra\r\nPosted on August 25th, 2007 by admin | Edit \r\n\r\n\r\n “Praesent augue mauris, accumsan eget, ornare quis, consequat malesuada, leo.” \r\n\r\n Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam eget ante. Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. \r\n \r\nRead More     Comments (33) \r\n  \r\nAbout This Website\r\nPosted on August 25th, 2007 by admin | Edit \r\n\r\n Greeny Grass is a free template from FCT released under a Creative Commons Attribution 2.5 License. The flower photo is fromt PDPhoto.org. You\'re free to use this template for both commercial or personal use. I only ask that you link back to my site in some way. Enjoy :) \r\n \r\nRead More     Comments (33) \r\n  \r\nAbout This Website\r\nPosted on August 25th, 2007 by admin | Edit \r\n\r\n Greeny Grass is a free template from FCT released under a Creative Commons Attribution 2.5 License. The flower photo is fromt PDPhoto.org. You\'re free to use this template for both commercial or personal use. I only ask that you link back to my site in some way. Enjoy :) \r\n \r\nRead More     Comments (33) \r\n   ©2012 All Rights Reserved.  •  Design by Antonio Boundless Commerce.  \r\n \r\n    \r\n Who We Are. \r\n     \r\n What We Do. \r\n   We will supply you with the tools you need to help you take your business to the next level...  \r\n WEB DESIGN\r\n Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel... \r\n\r\n DATABASE\r\n Sit dolor amet, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo. \r\n\r\n Always On Time\r\n Donec justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, lorem ipsum. \r\n\r\n Photography\r\n Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec. \r\n\r\n   \r\n Check Out Our Portfolio. \r\n   Below is a small sample of some of the work we have completed over the last year...   Terre estere doloremique sei laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis rete et quasi architecto beataes vitae dicta sunt...    \r\n Meet Our Awesome Team. \r\n      © Copyright 2012 DryThemes - Built with love :)  \r\n \r\nNuovo estere doloremque perse\r\n Photography / Print / Marketing \r\n \r\n\r\n \r\nWebus estere doloremque lorem\r\n Website / Print \r\n \r\n\r\n \r\nSone estere doloremque nunc\r\n Marketing / Photography \r\n \r\n\r\n \r\nAgenti estere doloremque amet\r\n Print / Corporate ID \r\n \r\n\r\n \r\nTerre estere doloremque sei perse\r\n Website / Print / Marketing \r\n \r\n\r\n \r\nNulla estere doloremque sense\r\n Marketing / Commercial \r\n \r\n\r\n \r\nSetta estere doloremque noi\r\n App / Mobile \r\n \r\n\r\n \r\nLorem estere doloremque sei\r\n Print / Marketing \r\n \r\n\r\n \r\nDonec estere doloremque lorem\r\n Art / Print / Marketing \r\n  \r\n \r\n \r\n   You want a website that looks good? Of course you do. You want a website that performs well and makes you money ? Naturally. So this is what we do, good looking websites that perform...       \r\n Stay In Touch With Us. \r\n   Now you\'ve read about us, why not meet us? We love design, cool websites and walks in the park..!!   DESIGN &amp; CREATIVE \r\n Engaging &amp; optimised design for all your needs \r\n Web | Print | Digital | Banner Ads | Copywriting | Content | Photography | Product Presentation    STRATEGY &amp; TECHNOLOGY \r\n Building intuitive, useful &amp; accessible solutions \r\n Accessibility | Compliance | Usability | Build | CMS &amp; CRM Systems | Website Stategy    INTEGRATED COMMERCE \r\n E-commerce solutions &amp; multi-channel experts \r\n System Integration | E-commerce Websites | Infra-structure &amp; Hosting | Multi-site Integration   PROFITABLE MARKETING \r\n Attract &amp; engage your customers \r\n SEO | PPC | E-mail Marketing | Social Media | Market Places &amp; Shopping Channels | Affiliates   At the core of Boundless are three individuals whose paths have crossed many times over the years. They have now realised that their combined power could help to improve the e-commerce world!    \r\nMARK HORTON \r\nE-CODE WARRIOR \r\n Mark Horton has too many websites to his name to recall, if its not sitting in a dark corner coding he isn\'t really that interested. If you have a really difficult problem to solve just wind him up and point him in the right direction.    \r\nBECKIE WATERS \r\nDESIGNY DESIGNER \r\n Qualifications and experience up to her eyeballs, not only is Beckie a talented designer she can also knock out some amazing photography. An html whizz she can combine an eye for the best with practical application.    \r\nJulie Fawcett \r\nBusiness Development \r\n Client liaison is the name of the game, a seasoned old timer Julie sold www.sheactive.co.uk a few years back and knows the pain and the routes to success on the client side.    \r\n We understand that your commercial requirements are more than just a website. We can help to shape your social reach, print campaigns, newsletters &amp; SEO needs, as well as analyse and advise you with what is and what isn\'t working. \r\n Perhaps most importantly of all, we have all come from a deep routed e-commerce background and have experienced the highs and lows that come with running an online company. So chances are, we will understand where you\'re coming from and what you are trying to achieve.  \r\nDrop us a line using the contact form \r\nWe have tried to keep things easy to digest throughout this site, so if you would like to have a more in depth chat fill out your details below and we will get back to you. \r\n \r\n  \r\nName *  E-mail *  Subject *  Message * \r\n  \r\n\r\n\r\n\r\n\r\n\r\n\r\n  \r\nUnable to send your email! \r\nPlease enter valid email address! \r\nPlease fill out all the fields in order to send us a message. \r\nYour email has been successfully sent to Kronos©DryThemes! \r\n \r\n\r\n\r\n\r\n\r\n  Nestled in the heart of Brighton, &amp; located just off the seafront \r\nJust because we love the E-commerce world of websites, doesn\'t mean we don\'t like a visitor or two! If you would prefer to talk to a human being and take some time to sus us out for yourself, then give us a call on the number below and come meet the team in our friendly little office. \r\n 15 - 17 Middle Street, Suite 303,  Brighton  East Sussex  BN1 1AL \r\n Phone: +321 123 456 7   E-mail: info@boundlesscommerce.co.uk   Website: www.boundlesscommerce.co.uk \r\n    \r\n SealSkinz  Web / Print / Marketing / Product   \r\n Asquith London Website / Marketing / Product   \r\n Papillon Website / EPOS   \r\n Sheactive Web / Systems / All Marketing   \r\n SportsBraBar Web / Integration / Marketing   \r\n Attractive Web / Integration / Marketing   \r\n Royal Pavilion Brighton Website / Integration   \r\n Cadenhead\'s Whisky Shop Website / Marketing / SEO / PPC  We are a group of talented individuals from Brighton who have come together to combine our mighty powers! \r\nWhether you’re new to the ecommerce world, or simply want to improve the look, feel &amp; usability of your website, our aim is to offer a straightforward ‘no gimmicks’ service. \r\n Our services won’t simply stop at design and build. We’ll guide you through the digital world with simple systems that work for your business. We can integrate any system with your website, in fact we can make your systems all work a lot more efficiently for your business. \r\n Imagine a streamlined process between buying, order management, production of marketing materials and of course your website. We are much more than an e-commerce solutions provider we are a multi-channel specialist and we can definitely take some of the pain from your business and save you money.  ','Home','',NULL,'2012-11-27 19:49:18','2012-12-12 18:38:54',NULL,0),(127,'About Us Learn More\n																 Visit&nbsp;concrete5.org&nbsp;to learn more from the&nbsp;community&nbsp;and the&nbsp;documentation. You can also browse our&nbsp;marketplace&nbsp;for more&nbsp;add-ons&nbsp;and&nbsp;themes&nbsp;to quickly build the site you really need.&nbsp; \n																&nbsp;\n																Getting Help\n																 You can get free help in the forums and post for free to the&nbsp;jobs board.&nbsp; \n																 You can also pay the concrete5 team of developers to help with&nbsp;any problem&nbsp;you run into. We offer training courses&nbsp;and&nbsp;hosting packages, just let us know how we can help.  ','About','','/about','2012-11-27 19:51:15','2012-11-27 19:51:24',NULL,0),(131,'Guestbook ','Guestbook','','/about/guestbook','2012-11-27 19:51:16','2012-11-27 19:51:25',NULL,0),(130,'Contact Us Contact Us\n									 Building a form is easy to do. Learn how to add a form block.  ','Contact Us','','/about/contact-us','2012-11-27 19:51:16','2012-11-27 19:51:26',NULL,0),(129,'Sitemap Site Map ','Search','','/search','2012-11-27 19:51:15','2012-11-27 19:51:27',NULL,0),(128,'Tags ','Blog','','/blog','2012-11-27 19:51:15','2012-11-27 19:51:28',NULL,0),(133,' Here is some sample content! I\'m writing it using composer!  ','Hello World','This is my first blog post!','/blog/hello-world','2012-11-27 19:51:17','2012-11-27 19:51:31',NULL,0),(132,'','Blog Archives','','/blog/blog-archives','2012-11-27 19:51:16','2012-11-27 19:51:33',NULL,0),(137,' Nature\'s Sod Light is a lush, beautiful artificial lawn product designed for the residential homeowner looking for a durable artificial grass solution that also is gentle on the wallet! True to the theme of our Nature\'s Sod Line - it is an olive bi-color grass with an olive green and brown thatch. It is a very thin yarn resulting in a very soft texture - but also constructed with a wider gauge and very high stitch rate - to give it a very plush/full look. By constructing the artificial grass this way we are able to offer the product at the price of a 50 oz per sq yard grass while offering the aesthetic of a 75 oz per sq yard synthetic grass. It is a tremendous value product – the ideal balance of realism, fullness, and price.  Roll width: 15\' Roll length: up to 100\'  ','Laws','sdfsdfsdfsf','/about/laws','2012-11-28 19:48:00','2012-11-29 18:40:12',NULL,0),(141,'\r\n\r\nProduct\r\n\r\nLawns\r\nPutting greens\r\nPlaygrounds\r\nSport Turf\r\nPuppy pads\r\nAccessories\r\nTraining\r\n\r\n\r\n \r\n\r\nMain Menu\r\n\r\nHome\r\nCompany\r\nGalleries\r\nLocation\r\nContact us\r\n\r\n\r\n ','Menu',NULL,'/!stacks/menu','2012-11-29 02:16:07','2012-11-29 18:38:16',NULL,0),(140,' Address: \r\n Town: \r\n Phone:  ','location','Where you can find us','/about/location','2012-11-29 02:09:00','2012-11-29 02:29:15',NULL,0),(142,'','Contact us','How you can contact us','/about/contact-us','2012-11-29 18:44:00','2012-11-29 18:50:13',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageStatistics`
--

DROP TABLE IF EXISTS `PageStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=1321 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
INSERT INTO `PageStatistics` VALUES (1,1,'2012-11-27','2012-11-27 18:52:27',1),(2,105,'2012-11-27','2012-11-27 18:52:33',1),(3,1,'2012-11-27','2012-11-27 18:52:57',1),(4,1,'2012-11-27','2012-11-27 18:54:10',1),(5,2,'2012-11-27','2012-11-27 18:54:41',1),(6,109,'2012-11-27','2012-11-27 18:55:12',1),(7,1,'2012-11-27','2012-11-27 18:55:13',0),(8,109,'2012-11-27','2012-11-27 18:55:23',0),(9,109,'2012-11-27','2012-11-27 18:55:52',0),(10,109,'2012-11-27','2012-11-27 18:56:02',0),(11,1,'2012-11-27','2012-11-27 18:56:07',1),(12,1,'2012-11-27','2012-11-27 19:01:05',1),(13,1,'2012-11-27','2012-11-27 19:01:35',1),(14,1,'2012-11-27','2012-11-27 19:06:55',1),(15,1,'2012-11-27','2012-11-27 19:07:49',1),(16,1,'2012-11-27','2012-11-27 19:16:44',1),(17,127,'2012-11-27','2012-11-27 19:16:53',1),(18,128,'2012-11-27','2012-11-27 19:17:03',1),(19,128,'2012-11-27','2012-11-27 19:17:08',1),(20,128,'2012-11-27','2012-11-27 19:17:31',1),(21,129,'2012-11-27','2012-11-27 19:17:44',1),(22,128,'2012-11-27','2012-11-27 19:17:50',1),(23,127,'2012-11-27','2012-11-27 19:17:54',1),(24,127,'2012-11-27','2012-11-27 19:22:02',1),(25,127,'2012-11-27','2012-11-27 19:22:40',1),(26,127,'2012-11-27','2012-11-27 19:23:06',1),(27,127,'2012-11-27','2012-11-27 19:23:28',1),(28,46,'2012-11-27','2012-11-27 19:35:08',1),(29,48,'2012-11-27','2012-11-27 19:35:18',1),(30,1,'2012-11-27','2012-11-27 19:35:36',1),(31,1,'2012-11-27','2012-11-27 19:35:55',1),(32,1,'2012-11-27','2012-11-27 19:36:17',1),(33,1,'2012-11-27','2012-11-27 19:36:45',1),(34,2,'2012-11-27','2012-11-27 19:38:11',1),(35,28,'2012-11-27','2012-11-27 19:38:18',1),(36,30,'2012-11-27','2012-11-27 19:38:44',1),(37,30,'2012-11-27','2012-11-27 19:39:13',1),(38,28,'2012-11-27','2012-11-27 19:39:22',1),(39,1,'2012-11-27','2012-11-27 19:39:27',1),(40,1,'2012-11-27','2012-11-27 19:39:41',1),(41,127,'2012-11-27','2012-11-27 19:39:47',1),(42,128,'2012-11-27','2012-11-27 20:17:21',1),(43,128,'2012-11-27','2012-11-27 20:17:35',1),(44,128,'2012-11-27','2012-11-27 20:25:04',1),(45,132,'2012-11-27','2012-11-27 20:25:11',1),(46,132,'2012-11-27','2012-11-27 20:25:26',1),(47,133,'2012-11-27','2012-11-27 20:30:13',1),(48,1,'2012-11-27','2012-11-27 20:30:33',1),(49,129,'2012-11-27','2012-11-27 20:30:37',1),(50,131,'2012-11-27','2012-11-27 20:30:49',1),(51,109,'2012-11-27','2012-11-27 23:43:36',1),(52,1,'2012-11-27','2012-11-27 23:43:37',0),(53,109,'2012-11-27','2012-11-27 23:43:44',0),(54,109,'2012-11-27','2012-11-27 23:43:58',0),(55,1,'2012-11-27','2012-11-27 23:43:59',1),(56,1,'2012-11-27','2012-11-28 00:07:07',1),(57,1,'2012-11-27','2012-11-28 00:07:16',1),(58,2,'2012-11-27','2012-11-28 00:07:41',1),(59,40,'2012-11-27','2012-11-28 00:07:57',1),(60,40,'2012-11-27','2012-11-28 00:08:03',1),(61,2,'2012-11-27','2012-11-28 00:08:17',1),(62,32,'2012-11-27','2012-11-28 00:09:54',1),(63,32,'2012-11-27','2012-11-28 00:10:16',1),(64,32,'2012-11-27','2012-11-28 00:10:25',1),(65,2,'2012-11-27','2012-11-28 00:10:31',1),(66,51,'2012-11-27','2012-11-28 00:10:36',1),(67,2,'2012-11-27','2012-11-28 00:11:08',1),(68,28,'2012-11-27','2012-11-28 00:56:04',1),(69,28,'2012-11-27','2012-11-28 01:05:14',1),(70,30,'2012-11-27','2012-11-28 01:05:15',1),(71,28,'2012-11-27','2012-11-28 01:05:59',1),(72,2,'2012-11-27','2012-11-28 01:06:06',1),(73,32,'2012-11-27','2012-11-28 01:06:10',1),(74,33,'2012-11-27','2012-11-28 01:06:15',1),(75,32,'2012-11-27','2012-11-28 01:06:38',1),(76,2,'2012-11-27','2012-11-28 01:07:14',1),(77,28,'2012-11-27','2012-11-28 01:07:28',1),(78,28,'2012-11-27','2012-11-28 01:07:37',1),(79,28,'2012-11-27','2012-11-28 01:07:44',1),(80,1,'2012-11-27','2012-11-28 01:07:52',1),(81,1,'2012-11-27','2012-11-28 01:08:07',1),(82,1,'2012-11-27','2012-11-28 01:09:33',1),(83,1,'2012-11-27','2012-11-28 01:11:58',1),(84,1,'2012-11-27','2012-11-28 01:12:28',1),(85,1,'2012-11-27','2012-11-28 01:13:08',1),(86,1,'2012-11-27','2012-11-28 01:13:26',1),(87,1,'2012-11-27','2012-11-28 01:14:06',1),(88,1,'2012-11-27','2012-11-28 01:14:15',1),(89,1,'2012-11-27','2012-11-28 01:14:53',1),(90,1,'2012-11-27','2012-11-28 01:17:11',1),(91,1,'2012-11-27','2012-11-28 01:17:13',1),(92,1,'2012-11-27','2012-11-28 01:18:34',1),(93,1,'2012-11-27','2012-11-28 01:18:42',1),(94,1,'2012-11-27','2012-11-28 01:18:43',1),(95,1,'2012-11-27','2012-11-28 01:24:43',1),(96,1,'2012-11-27','2012-11-28 01:25:16',1),(97,1,'2012-11-27','2012-11-28 01:26:33',1),(98,1,'2012-11-27','2012-11-28 01:26:38',1),(99,1,'2012-11-27','2012-11-28 01:26:40',1),(100,1,'2012-11-27','2012-11-28 01:28:13',1),(101,1,'2012-11-27','2012-11-28 01:28:19',1),(102,1,'2012-11-27','2012-11-28 01:28:26',1),(103,1,'2012-11-27','2012-11-28 01:28:37',1),(104,109,'2012-11-27','2012-11-28 01:30:02',1),(105,1,'2012-11-27','2012-11-28 01:30:03',0),(106,1,'2012-11-27','2012-11-28 01:30:18',0),(107,109,'2012-11-27','2012-11-28 01:30:58',0),(108,109,'2012-11-27','2012-11-28 01:31:14',0),(109,109,'2012-11-27','2012-11-28 01:31:22',0),(110,1,'2012-11-27','2012-11-28 01:31:28',1),(111,1,'2012-11-27','2012-11-28 01:32:07',1),(112,1,'2012-11-27','2012-11-28 01:32:19',1),(113,1,'2012-11-27','2012-11-28 01:32:38',1),(114,1,'2012-11-27','2012-11-28 01:32:43',1),(115,1,'2012-11-27','2012-11-28 01:33:35',1),(116,1,'2012-11-27','2012-11-28 01:33:48',1),(117,1,'2012-11-27','2012-11-28 01:34:43',1),(118,1,'2012-11-28','2012-11-28 17:03:43',0),(119,109,'2012-11-28','2012-11-28 17:09:20',0),(120,109,'2012-11-28','2012-11-28 17:09:30',0),(121,1,'2012-11-28','2012-11-28 17:09:32',1),(122,2,'2012-11-28','2012-11-28 17:09:39',1),(123,28,'2012-11-28','2012-11-28 17:09:45',1),(124,28,'2012-11-28','2012-11-28 17:09:58',1),(125,28,'2012-11-28','2012-11-28 17:10:02',1),(126,1,'2012-11-28','2012-11-28 17:10:09',1),(127,1,'2012-11-28','2012-11-28 17:10:24',1),(128,2,'2012-11-28','2012-11-28 17:10:34',1),(129,1,'2012-11-28','2012-11-28 17:10:43',1),(130,1,'2012-11-28','2012-11-28 17:11:10',1),(131,1,'2012-11-28','2012-11-28 17:11:12',1),(132,2,'2012-11-28','2012-11-28 17:11:22',1),(133,28,'2012-11-28','2012-11-28 17:11:26',1),(134,28,'2012-11-28','2012-11-28 17:11:30',1),(135,28,'2012-11-28','2012-11-28 17:11:33',1),(136,1,'2012-11-28','2012-11-28 17:11:38',1),(137,1,'2012-11-28','2012-11-28 17:49:53',1),(138,1,'2012-11-28','2012-11-28 17:51:14',1),(139,1,'2012-11-28','2012-11-28 17:52:29',1),(140,1,'2012-11-28','2012-11-28 17:54:45',1),(141,1,'2012-11-28','2012-11-28 17:55:18',1),(142,1,'2012-11-28','2012-11-28 17:55:30',1),(143,1,'2012-11-28','2012-11-28 17:55:31',1),(144,1,'2012-11-28','2012-11-28 17:56:01',1),(145,1,'2012-11-28','2012-11-28 18:01:33',1),(146,1,'2012-11-28','2012-11-28 18:01:45',1),(147,1,'2012-11-28','2012-11-28 18:01:56',1),(148,1,'2012-11-28','2012-11-28 18:02:01',1),(149,1,'2012-11-28','2012-11-28 18:03:21',1),(150,1,'2012-11-28','2012-11-28 18:03:30',1),(151,1,'2012-11-28','2012-11-28 18:06:56',1),(152,1,'2012-11-28','2012-11-28 18:10:29',1),(153,1,'2012-11-28','2012-11-28 18:10:31',1),(154,1,'2012-11-28','2012-11-28 18:15:49',1),(155,1,'2012-11-28','2012-11-28 18:20:05',1),(156,1,'2012-11-28','2012-11-28 18:30:47',1),(157,1,'2012-11-28','2012-11-28 18:31:07',1),(158,1,'2012-11-28','2012-11-28 18:31:15',1),(159,1,'2012-11-28','2012-11-28 18:31:22',1),(160,2,'2012-11-28','2012-11-28 18:32:39',1),(161,40,'2012-11-28','2012-11-28 18:33:12',1),(162,2,'2012-11-28','2012-11-28 18:33:28',1),(163,32,'2012-11-28','2012-11-28 18:34:21',1),(164,1,'2012-11-28','2012-11-28 18:35:46',1),(165,4,'2012-11-28','2012-11-28 18:42:17',1),(166,4,'2012-11-28','2012-11-28 18:42:19',1),(167,4,'2012-11-28','2012-11-28 18:42:22',1),(168,4,'2012-11-28','2012-11-28 18:42:31',1),(169,4,'2012-11-28','2012-11-28 18:42:38',1),(170,2,'2012-11-28','2012-11-28 18:42:40',1),(171,35,'2012-11-28','2012-11-28 18:42:48',1),(172,109,'2012-11-28','2012-11-28 18:43:43',1),(173,35,'2012-11-28','2012-11-28 18:44:07',1),(174,118,'2012-11-28','2012-11-28 18:44:35',1),(175,35,'2012-11-28','2012-11-28 18:44:49',1),(176,35,'2012-11-28','2012-11-28 18:45:34',1),(177,1,'2012-11-28','2012-11-28 18:46:17',1),(178,2,'2012-11-28','2012-11-28 18:46:33',1),(179,4,'2012-11-28','2012-11-28 18:46:37',1),(180,4,'2012-11-28','2012-11-28 18:46:39',1),(181,4,'2012-11-28','2012-11-28 18:46:42',1),(182,4,'2012-11-28','2012-11-28 18:46:51',1),(183,4,'2012-11-28','2012-11-28 18:46:58',1),(184,4,'2012-11-28','2012-11-28 18:47:05',1),(185,7,'2012-11-28','2012-11-28 18:47:12',1),(186,4,'2012-11-28','2012-11-28 18:47:14',1),(187,6,'2012-11-28','2012-11-28 18:49:01',1),(188,7,'2012-11-28','2012-11-28 18:49:02',1),(189,137,'2012-11-28','2012-11-28 18:49:09',1),(190,137,'2012-11-28','2012-11-28 18:49:57',1),(191,137,'2012-11-28','2012-11-28 18:53:42',1),(192,104,'2012-11-28','2012-11-28 18:53:46',1),(193,7,'2012-11-28','2012-11-28 18:54:36',1),(194,1,'2012-11-28','2012-11-28 18:55:05',1),(195,1,'2012-11-28','2012-11-28 18:55:12',1),(196,1,'2012-11-28','2012-11-28 18:55:40',1),(197,1,'2012-11-28','2012-11-28 18:55:55',1),(198,1,'2012-11-28','2012-11-28 18:56:00',1),(199,1,'2012-11-28','2012-11-28 18:56:38',1),(200,1,'2012-11-28','2012-11-28 18:56:47',1),(201,1,'2012-11-28','2012-11-28 18:57:00',1),(202,2,'2012-11-28','2012-11-28 18:57:14',1),(203,7,'2012-11-28','2012-11-28 18:57:18',1),(204,1,'2012-11-28','2012-11-28 18:58:06',1),(205,1,'2012-11-28','2012-11-28 18:58:18',1),(206,1,'2012-11-28','2012-11-28 18:58:45',1),(207,137,'2012-11-28','2012-11-28 18:58:49',1),(208,1,'2012-11-28','2012-11-28 18:59:17',1),(209,137,'2012-11-28','2012-11-28 19:03:57',1),(210,1,'2012-11-28','2012-11-28 19:04:03',1),(211,1,'2012-11-28','2012-11-28 19:04:08',1),(212,1,'2012-11-28','2012-11-28 19:04:28',1),(213,137,'2012-11-28','2012-11-28 19:04:35',1),(214,137,'2012-11-28','2012-11-28 19:04:38',1),(215,137,'2012-11-28','2012-11-28 19:13:36',1),(216,137,'2012-11-28','2012-11-28 19:22:42',1),(217,137,'2012-11-28','2012-11-28 19:23:48',1),(218,137,'2012-11-28','2012-11-28 19:24:58',1),(219,137,'2012-11-28','2012-11-28 19:25:05',1),(220,137,'2012-11-28','2012-11-28 19:25:19',1),(221,137,'2012-11-28','2012-11-28 19:25:27',1),(222,137,'2012-11-28','2012-11-28 19:25:42',1),(223,137,'2012-11-28','2012-11-28 19:25:53',1),(224,137,'2012-11-28','2012-11-28 19:26:04',1),(225,137,'2012-11-28','2012-11-28 19:26:23',1),(226,137,'2012-11-28','2012-11-28 19:31:21',1),(227,137,'2012-11-28','2012-11-28 19:31:39',1),(228,137,'2012-11-28','2012-11-28 19:33:19',1),(229,137,'2012-11-28','2012-11-28 19:33:43',1),(230,137,'2012-11-28','2012-11-28 19:34:07',1),(231,137,'2012-11-28','2012-11-28 19:34:21',1),(232,1,'2012-11-28','2012-11-28 19:34:32',1),(233,1,'2012-11-28','2012-11-28 19:34:37',1),(234,1,'2012-11-28','2012-11-28 19:35:11',1),(235,137,'2012-11-28','2012-11-28 19:35:16',1),(236,137,'2012-11-28','2012-11-28 19:35:20',1),(237,137,'2012-11-28','2012-11-28 19:36:10',1),(238,1,'2012-11-28','2012-11-28 19:36:15',1),(239,137,'2012-11-28','2012-11-28 19:36:22',1),(240,127,'2012-11-28','2012-11-28 19:36:35',1),(241,137,'2012-11-28','2012-11-28 19:36:39',1),(242,127,'2012-11-28','2012-11-28 19:36:48',1),(243,137,'2012-11-28','2012-11-28 19:36:55',1),(244,137,'2012-11-28','2012-11-28 19:36:59',1),(245,1,'2012-11-28','2012-11-28 19:37:03',1),(246,1,'2012-11-28','2012-11-28 19:37:08',1),(247,1,'2012-11-28','2012-11-28 19:37:40',1),(248,137,'2012-11-28','2012-11-28 19:37:49',1),(249,127,'2012-11-28','2012-11-28 19:37:53',1),(250,137,'2012-11-28','2012-11-28 19:38:01',1),(251,127,'2012-11-28','2012-11-28 19:38:09',1),(252,137,'2012-11-28','2012-11-28 19:38:12',1),(253,137,'2012-11-28','2012-11-28 19:38:22',1),(254,137,'2012-11-28','2012-11-28 19:38:28',1),(255,137,'2012-11-28','2012-11-28 19:38:54',1),(256,137,'2012-11-28','2012-11-28 19:39:03',1),(257,137,'2012-11-28','2012-11-28 19:39:09',1),(258,137,'2012-11-28','2012-11-28 19:40:22',1),(259,1,'2012-11-28','2012-11-28 19:40:32',1),(260,1,'2012-11-28','2012-11-28 19:40:44',1),(261,1,'2012-11-28','2012-11-28 19:41:15',1),(262,137,'2012-11-28','2012-11-28 19:41:21',1),(263,137,'2012-11-28','2012-11-28 19:41:28',1),(264,137,'2012-11-28','2012-11-28 19:42:02',1),(265,137,'2012-11-28','2012-11-28 19:42:19',1),(266,137,'2012-11-28','2012-11-28 20:12:51',1),(267,137,'2012-11-28','2012-11-28 20:12:59',1),(268,137,'2012-11-28','2012-11-28 22:33:53',1),(269,137,'2012-11-28','2012-11-28 22:34:55',1),(270,1,'2012-11-28','2012-11-28 22:35:13',1),(271,137,'2012-11-28','2012-11-28 22:35:55',1),(272,137,'2012-11-28','2012-11-28 22:50:50',1),(273,137,'2012-11-28','2012-11-28 22:53:49',1),(274,137,'2012-11-28','2012-11-28 22:54:00',1),(275,137,'2012-11-28','2012-11-28 22:56:39',1),(276,137,'2012-11-28','2012-11-28 23:00:11',1),(277,137,'2012-11-28','2012-11-28 23:00:40',1),(278,137,'2012-11-28','2012-11-28 23:01:32',1),(279,137,'2012-11-28','2012-11-28 23:03:28',1),(280,137,'2012-11-28','2012-11-28 23:03:55',1),(281,137,'2012-11-28','2012-11-28 23:06:26',1),(282,137,'2012-11-28','2012-11-28 23:08:23',1),(283,137,'2012-11-28','2012-11-28 23:09:48',1),(284,137,'2012-11-28','2012-11-28 23:10:01',1),(285,137,'2012-11-28','2012-11-28 23:11:11',1),(286,137,'2012-11-28','2012-11-28 23:13:00',1),(287,137,'2012-11-28','2012-11-28 23:16:02',1),(288,137,'2012-11-28','2012-11-28 23:17:39',1),(289,137,'2012-11-28','2012-11-28 23:18:30',1),(290,137,'2012-11-28','2012-11-28 23:19:04',1),(291,137,'2012-11-28','2012-11-28 23:23:11',1),(292,137,'2012-11-28','2012-11-28 23:23:56',1),(293,137,'2012-11-28','2012-11-28 23:24:41',1),(294,137,'2012-11-28','2012-11-28 23:25:08',1),(295,137,'2012-11-28','2012-11-28 23:26:04',1),(296,137,'2012-11-28','2012-11-28 23:26:36',1),(297,137,'2012-11-28','2012-11-28 23:26:59',1),(298,137,'2012-11-28','2012-11-28 23:29:20',1),(299,137,'2012-11-28','2012-11-28 23:31:47',1),(300,1,'2012-11-28','2012-11-28 23:32:22',1),(301,1,'2012-11-28','2012-11-28 23:32:37',1),(302,1,'2012-11-28','2012-11-28 23:36:43',1),(303,1,'2012-11-28','2012-11-28 23:37:35',1),(304,1,'2012-11-28','2012-11-28 23:41:00',1),(305,137,'2012-11-28','2012-11-28 23:41:06',1),(306,2,'2012-11-28','2012-11-28 23:41:47',1),(307,40,'2012-11-28','2012-11-29 00:00:49',1),(308,40,'2012-11-28','2012-11-29 00:01:00',1),(309,40,'2012-11-28','2012-11-29 00:01:01',1),(310,40,'2012-11-28','2012-11-29 00:01:05',1),(311,40,'2012-11-28','2012-11-29 00:01:07',1),(312,40,'2012-11-28','2012-11-29 00:01:09',1),(313,40,'2012-11-28','2012-11-29 00:01:10',1),(314,40,'2012-11-28','2012-11-29 00:01:12',1),(315,40,'2012-11-28','2012-11-29 00:01:13',1),(316,40,'2012-11-28','2012-11-29 00:01:14',1),(317,138,'2012-11-28','2012-11-29 00:15:52',1),(318,40,'2012-11-28','2012-11-29 00:15:54',1),(319,1,'2012-11-28','2012-11-29 00:16:00',1),(320,1,'2012-11-28','2012-11-29 00:16:14',1),(321,1,'2012-11-28','2012-11-29 00:16:55',1),(322,109,'2012-11-28','2012-11-29 00:17:08',1),(323,1,'2012-11-28','2012-11-29 00:17:10',0),(324,109,'2012-11-28','2012-11-29 00:17:37',0),(325,109,'2012-11-28','2012-11-29 00:17:46',0),(326,1,'2012-11-28','2012-11-29 00:17:51',1),(327,1,'2012-11-28','2012-11-29 00:17:58',1),(328,1,'2012-11-28','2012-11-29 00:19:59',1),(329,1,'2012-11-28','2012-11-29 00:20:10',1),(330,1,'2012-11-28','2012-11-29 00:20:56',1),(331,1,'2012-11-28','2012-11-29 00:21:14',1),(332,40,'2012-11-28','2012-11-29 00:22:20',1),(333,40,'2012-11-28','2012-11-29 00:22:25',1),(334,1,'2012-11-28','2012-11-29 00:23:29',1),(335,1,'2012-11-28','2012-11-29 00:27:47',1),(336,1,'2012-11-28','2012-11-29 00:27:52',1),(337,137,'2012-11-28','2012-11-29 00:28:03',1),(338,137,'2012-11-28','2012-11-29 00:28:16',1),(339,137,'2012-11-28','2012-11-29 00:29:21',1),(340,1,'2012-11-28','2012-11-29 00:29:27',1),(341,137,'2012-11-28','2012-11-29 00:29:35',1),(342,127,'2012-11-28','2012-11-29 00:29:39',1),(343,137,'2012-11-28','2012-11-29 00:29:49',1),(344,127,'2012-11-28','2012-11-29 00:29:56',1),(345,137,'2012-11-28','2012-11-29 00:30:02',1),(346,1,'2012-11-28','2012-11-29 00:30:13',1),(347,137,'2012-11-28','2012-11-29 00:30:36',1),(348,40,'2012-11-28','2012-11-29 00:31:28',1),(349,40,'2012-11-28','2012-11-29 00:31:32',1),(350,1,'2012-11-28','2012-11-29 00:31:59',1),(351,1,'2012-11-28','2012-11-29 00:32:04',1),(352,1,'2012-11-28','2012-11-29 00:32:38',1),(353,1,'2012-11-28','2012-11-29 00:32:45',1),(354,127,'2012-11-28','2012-11-29 00:32:51',1),(355,1,'2012-11-28','2012-11-29 00:33:04',1),(356,128,'2012-11-28','2012-11-29 00:33:09',1),(357,1,'2012-11-28','2012-11-29 00:33:20',1),(358,129,'2012-11-28','2012-11-29 00:33:24',1),(359,1,'2012-11-28','2012-11-29 00:33:37',1),(360,1,'2012-11-28','2012-11-29 00:33:54',1),(361,1,'2012-11-28','2012-11-29 00:34:01',1),(362,40,'2012-11-28','2012-11-29 00:34:11',1),(363,1,'2012-11-28','2012-11-29 00:34:36',1),(364,46,'2012-11-28','2012-11-29 00:45:02',1),(365,46,'2012-11-28','2012-11-29 00:45:13',1),(366,43,'2012-11-28','2012-11-29 00:45:21',1),(367,43,'2012-11-28','2012-11-29 00:45:27',1),(368,43,'2012-11-28','2012-11-29 00:45:40',1),(369,1,'2012-11-28','2012-11-29 00:45:47',1),(370,1,'2012-11-28','2012-11-29 00:45:56',1),(371,137,'2012-11-28','2012-11-29 00:46:02',1),(372,137,'2012-11-28','2012-11-29 00:46:07',1),(373,137,'2012-11-28','2012-11-29 00:49:44',1),(374,137,'2012-11-28','2012-11-29 00:50:22',1),(375,137,'2012-11-28','2012-11-29 00:51:29',1),(376,137,'2012-11-28','2012-11-29 00:51:53',1),(377,127,'2012-11-28','2012-11-29 00:51:58',1),(378,137,'2012-11-28','2012-11-29 00:52:00',1),(379,137,'2012-11-28','2012-11-29 00:52:53',1),(380,1,'2012-11-28','2012-11-29 00:52:57',1),(381,1,'2012-11-28','2012-11-29 00:53:02',1),(382,1,'2012-11-28','2012-11-29 00:53:05',1),(383,1,'2012-11-28','2012-11-29 00:53:08',1),(384,1,'2012-11-28','2012-11-29 00:53:20',1),(385,137,'2012-11-28','2012-11-29 00:53:27',1),(386,137,'2012-11-28','2012-11-29 00:53:37',1),(387,1,'2012-11-28','2012-11-29 00:53:43',1),(388,137,'2012-11-28','2012-11-29 00:53:53',1),(389,127,'2012-11-28','2012-11-29 00:53:58',1),(390,137,'2012-11-28','2012-11-29 00:54:13',1),(391,137,'2012-11-28','2012-11-29 00:54:18',1),(392,137,'2012-11-28','2012-11-29 00:54:56',1),(393,137,'2012-11-28','2012-11-29 00:55:07',1),(394,137,'2012-11-28','2012-11-29 00:55:14',1),(395,137,'2012-11-28','2012-11-29 00:55:19',1),(396,2,'2012-11-28','2012-11-29 00:55:59',1),(397,51,'2012-11-28','2012-11-29 00:56:03',1),(398,1,'2012-11-28','2012-11-29 00:56:41',1),(399,1,'2012-11-28','2012-11-29 00:58:20',1),(400,1,'2012-11-28','2012-11-29 00:59:17',1),(401,1,'2012-11-28','2012-11-29 00:59:24',1),(402,137,'2012-11-28','2012-11-29 00:59:27',1),(403,137,'2012-11-28','2012-11-29 00:59:37',1),(404,137,'2012-11-28','2012-11-29 00:59:46',1),(405,137,'2012-11-28','2012-11-29 00:59:54',1),(406,137,'2012-11-28','2012-11-29 01:00:01',1),(407,137,'2012-11-28','2012-11-29 01:00:45',1),(408,1,'2012-11-28','2012-11-29 01:00:52',1),(409,1,'2012-11-28','2012-11-29 01:01:18',1),(410,137,'2012-11-28','2012-11-29 01:01:24',1),(411,1,'2012-11-28','2012-11-29 01:01:29',1),(412,1,'2012-11-28','2012-11-29 01:01:40',1),(413,1,'2012-11-28','2012-11-29 01:01:57',1),(414,4,'2012-11-28','2012-11-29 01:02:11',1),(415,4,'2012-11-28','2012-11-29 01:02:12',1),(416,4,'2012-11-28','2012-11-29 01:02:19',1),(417,4,'2012-11-28','2012-11-29 01:02:28',1),(418,4,'2012-11-28','2012-11-29 01:02:35',1),(419,7,'2012-11-28','2012-11-29 01:02:39',1),(420,130,'2012-11-28','2012-11-29 01:03:01',1),(421,130,'2012-11-28','2012-11-29 01:03:12',1),(422,1,'2012-11-28','2012-11-29 01:03:22',1),(423,2,'2012-11-28','2012-11-29 01:05:19',1),(424,35,'2012-11-28','2012-11-29 01:05:29',1),(425,35,'2012-11-28','2012-11-29 01:05:50',1),(426,35,'2012-11-28','2012-11-29 01:05:52',1),(427,35,'2012-11-28','2012-11-29 01:06:09',1),(428,35,'2012-11-28','2012-11-29 01:06:11',1),(429,35,'2012-11-28','2012-11-29 01:06:20',1),(430,35,'2012-11-28','2012-11-29 01:06:22',1),(431,90,'2012-11-28','2012-11-29 01:06:41',1),(432,91,'2012-11-28','2012-11-29 01:06:42',1),(433,91,'2012-11-28','2012-11-29 01:06:45',1),(434,1,'2012-11-28','2012-11-29 01:06:54',1),(435,2,'2012-11-28','2012-11-29 01:07:29',1),(436,35,'2012-11-28','2012-11-29 01:07:33',1),(437,2,'2012-11-28','2012-11-29 01:07:42',1),(438,32,'2012-11-28','2012-11-29 01:07:46',1),(439,2,'2012-11-28','2012-11-29 01:08:12',1),(440,8,'2012-11-28','2012-11-29 01:08:22',1),(441,8,'2012-11-28','2012-11-29 01:08:29',1),(442,8,'2012-11-28','2012-11-29 01:08:32',1),(443,127,'2012-11-28','2012-11-29 01:08:38',1),(444,2,'2012-11-28','2012-11-29 01:08:46',1),(445,7,'2012-11-28','2012-11-29 01:08:52',1),(446,6,'2012-11-28','2012-11-29 01:09:49',1),(447,7,'2012-11-28','2012-11-29 01:09:50',1),(448,1,'2012-11-28','2012-11-29 01:10:40',1),(449,1,'2012-11-28','2012-11-29 01:10:55',1),(450,1,'2012-11-28','2012-11-29 01:11:39',1),(451,1,'2012-11-28','2012-11-29 01:11:51',1),(452,1,'2012-11-28','2012-11-29 01:12:05',1),(453,1,'2012-11-28','2012-11-29 01:12:56',1),(454,140,'2012-11-28','2012-11-29 01:13:03',1),(455,140,'2012-11-28','2012-11-29 01:13:13',1),(456,140,'2012-11-28','2012-11-29 01:15:15',1),(457,40,'2012-11-28','2012-11-29 01:15:41',1),(458,40,'2012-11-28','2012-11-29 01:15:44',1),(459,40,'2012-11-28','2012-11-29 01:15:50',1),(460,40,'2012-11-28','2012-11-29 01:15:52',1),(461,40,'2012-11-28','2012-11-29 01:16:07',1),(462,40,'2012-11-28','2012-11-29 01:16:09',1),(463,40,'2012-11-28','2012-11-29 01:16:12',1),(464,1,'2012-11-28','2012-11-29 01:16:52',1),(465,1,'2012-11-28','2012-11-29 01:16:57',1),(466,1,'2012-11-28','2012-11-29 01:17:57',1),(467,2,'2012-11-28','2012-11-29 01:25:14',1),(468,7,'2012-11-28','2012-11-29 01:25:32',1),(469,140,'2012-11-28','2012-11-29 01:25:43',1),(470,7,'2012-11-28','2012-11-29 01:25:50',1),(471,40,'2012-11-28','2012-11-29 01:26:17',1),(472,40,'2012-11-28','2012-11-29 01:26:20',1),(473,141,'2012-11-28','2012-11-29 01:27:29',1),(474,40,'2012-11-28','2012-11-29 01:27:30',1),(475,1,'2012-11-28','2012-11-29 01:27:33',1),(476,140,'2012-11-28','2012-11-29 01:27:47',1),(477,140,'2012-11-28','2012-11-29 01:27:51',1),(478,40,'2012-11-28','2012-11-29 01:28:19',1),(479,1,'2012-11-28','2012-11-29 01:28:26',1),(480,140,'2012-11-28','2012-11-29 01:28:33',1),(481,140,'2012-11-28','2012-11-29 01:28:59',1),(482,140,'2012-11-28','2012-11-29 01:29:12',1),(483,1,'2012-11-28','2012-11-29 01:29:20',1),(484,140,'2012-11-29','2012-11-29 17:10:53',1),(485,1,'2012-11-29','2012-11-29 17:11:05',1),(486,1,'2012-11-29','2012-11-29 17:11:34',1),(487,1,'2012-11-29','2012-11-29 17:11:37',1),(488,1,'2012-11-29','2012-11-29 17:12:24',1),(489,1,'2012-11-29','2012-11-29 17:12:32',1),(490,1,'2012-11-29','2012-11-29 17:12:35',1),(491,1,'2012-11-29','2012-11-29 17:13:30',1),(492,137,'2012-11-29','2012-11-29 17:13:39',1),(493,137,'2012-11-29','2012-11-29 17:13:48',1),(494,137,'2012-11-29','2012-11-29 17:13:49',1),(495,137,'2012-11-29','2012-11-29 17:14:21',1),(496,137,'2012-11-29','2012-11-29 17:14:47',1),(497,1,'2012-11-29','2012-11-29 17:14:57',1),(498,140,'2012-11-29','2012-11-29 17:15:03',1),(499,140,'2012-11-29','2012-11-29 17:15:10',1),(500,40,'2012-11-29','2012-11-29 17:15:27',1),(501,40,'2012-11-29','2012-11-29 17:15:33',1),(502,1,'2012-11-29','2012-11-29 17:15:41',1),(503,137,'2012-11-29','2012-11-29 17:16:43',1),(504,2,'2012-11-29','2012-11-29 17:17:05',1),(505,1,'2012-11-29','2012-11-29 17:17:10',1),(506,1,'2012-11-29','2012-11-29 17:17:21',1),(507,1,'2012-11-29','2012-11-29 17:18:37',1),(508,137,'2012-11-29','2012-11-29 17:18:58',1),(509,137,'2012-11-29','2012-11-29 17:22:14',1),(510,1,'2012-11-29','2012-11-29 17:22:50',1),(511,137,'2012-11-29','2012-11-29 17:24:42',1),(512,137,'2012-11-29','2012-11-29 17:25:20',1),(513,137,'2012-11-29','2012-11-29 17:26:00',1),(514,1,'2012-11-29','2012-11-29 17:26:07',1),(515,140,'2012-11-29','2012-11-29 17:26:14',1),(516,127,'2012-11-29','2012-11-29 17:26:23',1),(517,140,'2012-11-29','2012-11-29 17:26:28',1),(518,140,'2012-11-29','2012-11-29 17:27:17',1),(519,1,'2012-11-29','2012-11-29 17:27:30',1),(520,140,'2012-11-29','2012-11-29 17:27:40',1),(521,127,'2012-11-29','2012-11-29 17:28:40',1),(522,140,'2012-11-29','2012-11-29 17:28:44',1),(523,140,'2012-11-29','2012-11-29 17:28:50',1),(524,137,'2012-11-29','2012-11-29 17:28:58',1),(525,1,'2012-11-29','2012-11-29 17:29:13',1),(526,137,'2012-11-29','2012-11-29 17:29:50',1),(527,137,'2012-11-29','2012-11-29 17:30:01',1),(528,137,'2012-11-29','2012-11-29 17:31:12',1),(529,137,'2012-11-29','2012-11-29 17:31:29',1),(530,1,'2012-11-29','2012-11-29 17:31:35',1),(531,140,'2012-11-29','2012-11-29 17:31:42',1),(532,127,'2012-11-29','2012-11-29 17:32:49',1),(533,140,'2012-11-29','2012-11-29 17:32:51',1),(534,1,'2012-11-29','2012-11-29 17:32:56',1),(535,1,'2012-11-29','2012-11-29 17:32:59',1),(536,137,'2012-11-29','2012-11-29 17:33:04',1),(537,40,'2012-11-29','2012-11-29 17:33:37',1),(538,40,'2012-11-29','2012-11-29 17:33:40',1),(539,1,'2012-11-29','2012-11-29 17:35:23',1),(540,1,'2012-11-29','2012-11-29 17:35:44',1),(541,1,'2012-11-29','2012-11-29 17:35:48',1),(542,1,'2012-11-29','2012-11-29 17:36:14',1),(543,1,'2012-11-29','2012-11-29 17:36:57',1),(544,1,'2012-11-29','2012-11-29 17:37:04',1),(545,140,'2012-11-29','2012-11-29 17:37:13',1),(546,1,'2012-11-29','2012-11-29 17:37:18',1),(547,40,'2012-11-29','2012-11-29 17:37:36',1),(548,40,'2012-11-29','2012-11-29 17:37:39',1),(549,40,'2012-11-29','2012-11-29 17:37:42',1),(550,141,'2012-11-29','2012-11-29 17:38:04',1),(551,40,'2012-11-29','2012-11-29 17:38:05',1),(552,1,'2012-11-29','2012-11-29 17:38:10',1),(553,137,'2012-11-29','2012-11-29 17:38:18',1),(554,1,'2012-11-29','2012-11-29 17:38:26',1),(555,140,'2012-11-29','2012-11-29 17:38:34',1),(556,1,'2012-11-29','2012-11-29 17:38:44',1),(557,1,'2012-11-29','2012-11-29 17:38:50',1),(558,1,'2012-11-29','2012-11-29 17:39:08',1),(559,137,'2012-11-29','2012-11-29 17:39:13',1),(560,127,'2012-11-29','2012-11-29 17:39:18',1),(561,137,'2012-11-29','2012-11-29 17:39:21',1),(562,137,'2012-11-29','2012-11-29 17:39:27',1),(563,137,'2012-11-29','2012-11-29 17:40:05',1),(564,137,'2012-11-29','2012-11-29 17:41:03',1),(565,1,'2012-11-29','2012-11-29 17:41:08',1),(566,140,'2012-11-29','2012-11-29 17:41:13',1),(567,140,'2012-11-29','2012-11-29 17:41:18',1),(568,7,'2012-11-29','2012-11-29 17:41:36',1),(569,130,'2012-11-29','2012-11-29 17:42:04',1),(570,130,'2012-11-29','2012-11-29 17:42:17',1),(571,130,'2012-11-29','2012-11-29 17:42:54',1),(572,1,'2012-11-29','2012-11-29 17:43:09',1),(573,2,'2012-11-29','2012-11-29 17:43:31',1),(574,7,'2012-11-29','2012-11-29 17:43:34',1),(575,6,'2012-11-29','2012-11-29 17:44:30',1),(576,7,'2012-11-29','2012-11-29 17:44:32',1),(577,142,'2012-11-29','2012-11-29 17:44:48',1),(578,142,'2012-11-29','2012-11-29 17:44:57',1),(579,1,'2012-11-29','2012-11-29 17:46:28',1),(580,142,'2012-11-29','2012-11-29 17:50:09',1),(581,142,'2012-11-29','2012-11-29 17:50:40',1),(582,142,'2012-11-29','2012-11-29 17:51:25',1),(583,1,'2012-11-29','2012-11-29 17:51:40',1),(584,142,'2012-11-29','2012-11-29 17:52:18',1),(585,1,'2012-11-29','2012-11-29 17:52:40',1),(586,1,'2012-11-29','2012-11-29 17:52:52',1),(587,1,'2012-11-29','2012-11-29 18:05:38',1),(588,109,'2012-11-29','2012-11-29 18:12:38',1),(589,1,'2012-11-29','2012-11-29 18:12:40',0),(590,1,'2012-11-29','2012-11-29 19:44:47',0),(591,109,'2012-11-29','2012-11-29 19:45:03',0),(592,109,'2012-11-29','2012-11-29 19:45:17',0),(593,1,'2012-11-29','2012-11-29 19:45:20',1),(594,104,'2012-11-29','2012-11-29 19:45:27',1),(595,2,'2012-11-29','2012-11-29 19:45:38',1),(596,49,'2012-11-29','2012-11-29 19:45:47',1),(597,46,'2012-11-29','2012-11-29 19:45:52',1),(598,49,'2012-11-29','2012-11-29 19:46:01',1),(599,2,'2012-11-29','2012-11-29 19:46:10',1),(600,28,'2012-11-29','2012-11-29 19:46:13',1),(601,28,'2012-11-29','2012-11-29 19:47:28',1),(602,28,'2012-11-29','2012-11-29 19:48:39',1),(603,28,'2012-11-29','2012-11-29 20:49:40',1),(604,28,'2012-11-29','2012-11-29 20:51:54',1),(605,28,'2012-11-29','2012-11-29 20:52:05',1),(606,30,'2012-11-29','2012-11-29 20:52:07',1),(607,28,'2012-11-29','2012-11-29 20:52:26',1),(608,28,'2012-11-29','2012-11-29 20:52:31',1),(609,28,'2012-11-29','2012-11-29 20:52:35',1),(610,1,'2012-11-29','2012-11-29 20:52:51',1),(611,1,'2012-11-29','2012-11-29 20:53:05',1),(612,1,'2012-11-29','2012-11-29 20:54:11',1),(613,1,'2012-11-29','2012-11-29 20:54:15',1),(614,1,'2012-11-29','2012-11-29 20:55:30',1),(615,1,'2012-11-29','2012-11-29 20:57:14',1),(616,118,'2012-11-29','2012-11-29 21:02:36',1),(617,118,'2012-11-29','2012-11-29 21:04:04',1),(618,1,'2012-11-29','2012-11-29 21:05:07',1),(619,1,'2012-11-29','2012-11-29 22:00:11',1),(620,1,'2012-11-29','2012-11-29 22:01:31',1),(621,1,'2012-11-29','2012-11-29 22:01:38',1),(622,1,'2012-11-29','2012-11-29 22:05:56',1),(623,1,'2012-11-29','2012-11-29 22:06:11',1),(624,1,'2012-11-29','2012-11-29 22:07:11',1),(625,1,'2012-11-29','2012-11-29 22:07:30',1),(626,1,'2012-11-29','2012-11-29 22:16:40',1),(627,1,'2012-11-29','2012-11-29 22:21:07',1),(628,1,'2012-11-29','2012-11-29 22:26:45',1),(629,1,'2012-11-29','2012-11-29 22:28:48',1),(630,1,'2012-11-29','2012-11-29 22:29:53',1),(631,1,'2012-11-29','2012-11-29 22:30:13',1),(632,1,'2012-11-29','2012-11-29 22:31:08',1),(633,1,'2012-11-29','2012-11-29 22:31:56',1),(634,1,'2012-11-29','2012-11-29 22:35:24',1),(635,1,'2012-11-29','2012-11-29 22:36:36',1),(636,1,'2012-11-29','2012-11-29 22:47:32',1),(637,1,'2012-11-29','2012-11-29 22:54:48',1),(638,1,'2012-11-29','2012-11-29 22:56:05',1),(639,1,'2012-11-29','2012-11-29 22:56:24',1),(640,1,'2012-11-29','2012-11-29 23:00:15',1),(641,1,'2012-11-29','2012-11-29 23:00:31',1),(642,1,'2012-11-29','2012-11-29 23:08:16',1),(643,1,'2012-11-29','2012-11-29 23:08:43',1),(644,1,'2012-11-29','2012-11-29 23:10:06',1),(645,1,'2012-11-29','2012-11-29 23:10:23',1),(646,1,'2012-11-29','2012-11-29 23:10:36',1),(647,1,'2012-11-29','2012-11-29 23:11:10',1),(648,1,'2012-11-29','2012-11-29 23:12:44',1),(649,1,'2012-11-29','2012-11-29 23:14:37',1),(650,1,'2012-11-29','2012-11-29 23:14:55',1),(651,1,'2012-11-29','2012-11-29 23:15:49',1),(652,1,'2012-11-29','2012-11-29 23:16:57',1),(653,1,'2012-11-29','2012-11-29 23:17:34',1),(654,1,'2012-11-29','2012-11-29 23:18:44',1),(655,1,'2012-11-29','2012-11-29 23:23:05',1),(656,1,'2012-11-29','2012-11-29 23:23:15',1),(657,1,'2012-11-29','2012-11-29 23:26:23',1),(658,1,'2012-11-29','2012-11-29 23:26:59',1),(659,1,'2012-11-29','2012-11-29 23:27:46',1),(660,1,'2012-11-29','2012-11-29 23:28:17',1),(661,1,'2012-11-29','2012-11-29 23:38:55',1),(662,1,'2012-11-29','2012-11-29 23:40:24',1),(663,1,'2012-11-29','2012-11-29 23:41:06',1),(664,1,'2012-11-29','2012-11-29 23:44:05',1),(665,1,'2012-11-29','2012-11-29 23:44:36',1),(666,1,'2012-11-29','2012-11-29 23:50:37',1),(667,1,'2012-11-29','2012-11-29 23:52:23',1),(668,1,'2012-11-29','2012-11-29 23:53:04',1),(669,1,'2012-11-29','2012-11-29 23:53:10',1),(670,1,'2012-11-29','2012-11-29 23:56:32',1),(671,1,'2012-11-29','2012-11-30 00:03:57',1),(672,1,'2012-11-29','2012-11-30 00:05:59',1),(673,1,'2012-11-29','2012-11-30 00:07:22',1),(674,1,'2012-11-29','2012-11-30 00:07:33',1),(675,1,'2012-11-29','2012-11-30 00:07:45',1),(676,1,'2012-11-29','2012-11-30 00:14:29',1),(677,1,'2012-11-29','2012-11-30 00:14:39',1),(678,1,'2012-11-29','2012-11-30 00:16:18',1),(679,1,'2012-11-29','2012-11-30 00:16:44',1),(680,1,'2012-11-29','2012-11-30 00:19:08',1),(681,1,'2012-11-29','2012-11-30 00:19:50',1),(682,1,'2012-11-29','2012-11-30 00:20:15',1),(683,1,'2012-11-29','2012-11-30 00:21:13',1),(684,1,'2012-11-29','2012-11-30 00:21:41',0),(685,1,'2012-11-29','2012-11-30 00:22:58',1),(686,1,'2012-11-29','2012-11-30 00:24:42',1),(687,1,'2012-11-29','2012-11-30 00:25:09',1),(688,109,'2012-11-29','2012-11-30 00:25:55',1),(689,1,'2012-11-29','2012-11-30 00:25:56',0),(690,1,'2012-11-29','2012-11-30 00:26:45',0),(691,109,'2012-11-29','2012-11-30 00:46:08',0),(692,109,'2012-11-29','2012-11-30 00:46:24',0),(693,1,'2012-11-29','2012-11-30 00:46:39',1),(694,1,'2012-11-29','2012-11-30 00:47:00',1),(695,1,'2012-11-29','2012-11-30 00:49:06',1),(696,1,'2012-11-29','2012-11-30 00:50:36',1),(697,1,'2012-11-29','2012-11-30 00:50:54',1),(698,1,'2012-11-29','2012-11-30 00:52:25',1),(699,1,'2012-11-29','2012-11-30 00:53:38',1),(700,1,'2012-11-29','2012-11-30 00:55:41',1),(701,1,'2012-11-29','2012-11-30 01:06:26',1),(702,1,'2012-11-29','2012-11-30 01:10:08',1),(703,1,'2012-11-29','2012-11-30 01:12:01',1),(704,1,'2012-11-29','2012-11-30 01:12:30',1),(705,1,'2012-11-29','2012-11-30 01:13:19',1),(706,1,'2012-11-29','2012-11-30 01:14:19',1),(707,1,'2012-11-29','2012-11-30 01:16:35',1),(708,1,'2012-11-29','2012-11-30 01:18:20',1),(709,1,'2012-11-29','2012-11-30 01:19:08',1),(710,1,'2012-11-30','2012-11-30 17:01:32',1),(711,1,'2012-11-30','2012-11-30 17:47:50',1),(712,1,'2012-11-30','2012-11-30 18:07:10',1),(713,1,'2012-11-30','2012-11-30 18:08:39',1),(714,1,'2012-11-30','2012-11-30 18:17:08',1),(715,1,'2012-11-30','2012-11-30 18:27:55',1),(716,1,'2012-11-30','2012-11-30 18:28:16',1),(717,1,'2012-11-30','2012-11-30 18:28:48',1),(718,1,'2012-11-30','2012-11-30 18:32:34',1),(719,1,'2012-11-30','2012-11-30 18:44:35',1),(720,1,'2012-11-30','2012-11-30 18:47:52',1),(721,1,'2012-11-30','2012-11-30 18:52:35',1),(722,1,'2012-11-30','2012-11-30 18:54:38',1),(723,1,'2012-11-30','2012-11-30 18:55:13',1),(724,1,'2012-11-30','2012-11-30 18:57:01',1),(725,1,'2012-11-30','2012-11-30 19:12:06',1),(726,1,'2012-11-30','2012-11-30 19:14:11',1),(727,1,'2012-11-30','2012-11-30 19:14:54',1),(728,1,'2012-11-30','2012-11-30 19:30:03',1),(729,1,'2012-11-30','2012-11-30 19:31:12',1),(730,1,'2012-11-30','2012-11-30 19:33:06',1),(731,1,'2012-11-30','2012-11-30 19:33:22',1),(732,1,'2012-11-30','2012-11-30 19:34:29',1),(733,1,'2012-11-30','2012-11-30 19:37:59',1),(734,1,'2012-11-30','2012-11-30 19:49:46',1),(735,104,'2012-11-30','2012-11-30 19:50:09',1),(736,1,'2012-11-30','2012-11-30 19:51:10',1),(737,1,'2012-11-30','2012-11-30 19:52:26',1),(738,1,'2012-11-30','2012-11-30 19:53:02',1),(739,1,'2012-11-30','2012-11-30 19:53:18',1),(740,1,'2012-11-30','2012-11-30 19:55:29',1),(741,1,'2012-11-30','2012-11-30 19:56:27',1),(742,1,'2012-11-30','2012-11-30 19:56:42',1),(743,1,'2012-11-30','2012-11-30 19:57:04',1),(744,1,'2012-11-30','2012-11-30 19:58:24',1),(745,1,'2012-11-30','2012-11-30 19:59:10',1),(746,1,'2012-11-30','2012-11-30 20:00:41',1),(747,1,'2012-11-30','2012-11-30 20:01:19',1),(748,1,'2012-11-30','2012-11-30 20:05:19',1),(749,1,'2012-11-30','2012-11-30 20:05:57',1),(750,1,'2012-11-30','2012-11-30 20:06:41',1),(751,1,'2012-11-30','2012-11-30 20:07:10',1),(752,1,'2012-11-30','2012-11-30 20:07:53',1),(753,109,'2012-11-30','2012-11-30 20:08:42',1),(754,109,'2012-11-30','2012-11-30 20:08:50',1),(755,1,'2012-11-30','2012-11-30 20:08:51',1),(756,1,'2012-11-30','2012-11-30 20:09:12',0),(757,1,'2012-11-30','2012-11-30 20:10:43',0),(758,1,'2012-11-30','2012-11-30 20:11:23',0),(759,109,'2012-11-30','2012-11-30 20:11:58',0),(760,109,'2012-11-30','2012-11-30 20:12:04',0),(761,1,'2012-11-30','2012-11-30 20:12:06',1),(762,1,'2012-11-30','2012-11-30 20:12:50',0),(763,109,'2012-11-30','2012-11-30 20:13:37',0),(764,109,'2012-11-30','2012-11-30 20:13:43',0),(765,1,'2012-11-30','2012-11-30 20:13:45',1),(766,2,'2012-11-30','2012-11-30 20:16:11',1),(767,7,'2012-11-30','2012-11-30 20:16:18',1),(768,1,'2012-11-30','2012-11-30 20:16:58',1),(769,1,'2012-11-30','2012-11-30 20:17:40',1),(770,2,'2012-11-30','2012-11-30 20:18:48',1),(771,51,'2012-11-30','2012-11-30 20:18:55',1),(772,56,'2012-11-30','2012-11-30 20:19:06',1),(773,56,'2012-11-30','2012-11-30 20:19:07',1),(774,57,'2012-11-30','2012-11-30 20:19:09',1),(775,57,'2012-11-30','2012-11-30 20:19:14',1),(776,57,'2012-11-30','2012-11-30 20:19:17',1),(777,2,'2012-11-30','2012-11-30 20:19:23',1),(778,16,'2012-11-30','2012-11-30 20:19:31',1),(779,16,'2012-11-30','2012-11-30 20:19:36',1),(780,16,'2012-11-30','2012-11-30 20:19:42',1),(781,16,'2012-11-30','2012-11-30 20:19:54',1),(782,2,'2012-11-30','2012-11-30 20:19:58',1),(783,7,'2012-11-30','2012-11-30 20:20:02',1),(784,2,'2012-11-30','2012-11-30 20:20:19',1),(785,51,'2012-11-30','2012-11-30 20:20:26',1),(786,57,'2012-11-30','2012-11-30 20:20:31',1),(787,51,'2012-11-30','2012-11-30 20:20:37',1),(788,58,'2012-11-30','2012-11-30 20:20:57',1),(789,51,'2012-11-30','2012-11-30 20:21:05',1),(790,2,'2012-11-30','2012-11-30 20:21:06',1),(791,7,'2012-11-30','2012-11-30 20:21:13',1),(792,1,'2012-11-30','2012-11-30 20:21:26',1),(793,1,'2012-11-30','2012-11-30 20:21:47',1),(794,1,'2012-11-30','2012-11-30 20:22:13',1),(795,1,'2012-11-30','2012-11-30 20:22:50',1),(796,1,'2012-11-30','2012-11-30 20:23:02',1),(797,1,'2012-11-30','2012-11-30 20:23:32',1),(798,1,'2012-11-30','2012-11-30 20:30:27',1),(799,1,'2012-11-30','2012-11-30 20:30:53',1),(800,1,'2012-11-30','2012-11-30 20:37:07',1),(801,1,'2012-11-30','2012-11-30 20:37:36',1),(802,1,'2012-11-30','2012-11-30 20:40:51',1),(803,1,'2012-11-30','2012-11-30 20:41:15',1),(804,1,'2012-11-30','2012-11-30 20:42:22',1),(805,1,'2012-11-30','2012-11-30 20:43:20',1),(806,1,'2012-11-30','2012-11-30 20:44:58',1),(807,1,'2012-11-30','2012-11-30 20:48:44',1),(808,1,'2012-11-30','2012-11-30 20:49:37',1),(809,1,'2012-11-30','2012-11-30 20:50:25',1),(810,1,'2012-11-30','2012-11-30 22:15:30',1),(811,1,'2012-11-30','2012-11-30 22:20:20',1),(812,1,'2012-11-30','2012-11-30 22:26:33',1),(813,1,'2012-11-30','2012-11-30 22:35:50',1),(814,1,'2012-11-30','2012-11-30 22:37:23',1),(815,1,'2012-11-30','2012-11-30 22:38:25',1),(816,1,'2012-11-30','2012-11-30 22:40:10',1),(817,1,'2012-11-30','2012-11-30 22:40:50',1),(818,1,'2012-11-30','2012-11-30 22:41:50',1),(819,1,'2012-11-30','2012-11-30 22:44:52',1),(820,1,'2012-11-30','2012-11-30 22:46:04',1),(821,1,'2012-11-30','2012-11-30 22:48:18',1),(822,1,'2012-11-30','2012-11-30 22:51:51',1),(823,1,'2012-11-30','2012-11-30 22:54:55',1),(824,1,'2012-11-30','2012-11-30 22:55:45',1),(825,1,'2012-11-30','2012-11-30 22:57:50',1),(826,1,'2012-11-30','2012-11-30 22:58:26',1),(827,1,'2012-11-30','2012-11-30 22:59:11',1),(828,1,'2012-11-30','2012-11-30 23:01:00',1),(829,1,'2012-11-30','2012-11-30 23:01:40',1),(830,1,'2012-11-30','2012-11-30 23:02:15',1),(831,1,'2012-11-30','2012-11-30 23:16:56',1),(832,1,'2012-11-30','2012-11-30 23:18:13',1),(833,1,'2012-11-30','2012-11-30 23:36:00',1),(834,1,'2012-11-30','2012-11-30 23:39:59',1),(835,1,'2012-11-30','2012-11-30 23:43:17',1),(836,1,'2012-11-30','2012-11-30 23:45:15',1),(837,1,'2012-11-30','2012-11-30 23:46:54',1),(838,1,'2012-11-30','2012-11-30 23:48:28',1),(839,1,'2012-11-30','2012-11-30 23:57:08',1),(840,1,'2012-11-30','2012-11-30 23:59:13',1),(841,1,'2012-11-30','2012-11-30 23:59:49',1),(842,1,'2012-11-30','2012-12-01 00:00:43',1),(843,1,'2012-11-30','2012-12-01 00:01:08',1),(844,1,'2012-11-30','2012-12-01 00:02:12',1),(845,1,'2012-11-30','2012-12-01 00:03:50',1),(846,1,'2012-11-30','2012-12-01 00:05:20',1),(847,1,'2012-11-30','2012-12-01 00:06:24',1),(848,1,'2012-11-30','2012-12-01 00:07:18',1),(849,1,'2012-11-30','2012-12-01 00:09:11',1),(850,1,'2012-11-30','2012-12-01 00:11:54',1),(851,1,'2012-11-30','2012-12-01 00:12:44',1),(852,1,'2012-11-30','2012-12-01 00:13:44',1),(853,1,'2012-11-30','2012-12-01 00:14:50',1),(854,1,'2012-11-30','2012-12-01 00:17:31',1),(855,1,'2012-11-30','2012-12-01 00:20:48',1),(856,1,'2012-11-30','2012-12-01 00:21:59',1),(857,1,'2012-11-30','2012-12-01 00:25:26',1),(858,109,'2012-12-03','2012-12-03 17:03:46',0),(859,109,'2012-12-03','2012-12-03 17:04:14',0),(860,1,'2012-12-03','2012-12-03 17:04:17',1),(861,104,'2012-12-03','2012-12-03 17:04:39',1),(862,1,'2012-12-03','2012-12-03 17:10:39',1),(863,1,'2012-12-03','2012-12-03 17:13:28',1),(864,1,'2012-12-03','2012-12-03 17:14:28',1),(865,1,'2012-12-03','2012-12-03 17:16:47',1),(866,1,'2012-12-03','2012-12-03 17:24:21',1),(867,1,'2012-12-03','2012-12-03 17:25:10',1),(868,1,'2012-12-03','2012-12-03 17:26:06',1),(869,1,'2012-12-03','2012-12-03 17:26:52',1),(870,1,'2012-12-03','2012-12-03 17:31:44',1),(871,1,'2012-12-03','2012-12-03 17:32:20',1),(872,1,'2012-12-03','2012-12-03 17:34:54',1),(873,1,'2012-12-03','2012-12-03 17:35:29',1),(874,1,'2012-12-03','2012-12-03 17:36:39',1),(875,1,'2012-12-03','2012-12-03 17:44:29',1),(876,1,'2012-12-03','2012-12-03 17:45:46',1),(877,1,'2012-12-03','2012-12-03 17:46:36',1),(878,1,'2012-12-03','2012-12-03 17:48:14',1),(879,1,'2012-12-03','2012-12-03 17:50:28',1),(880,1,'2012-12-03','2012-12-03 17:52:37',1),(881,1,'2012-12-03','2012-12-03 17:54:02',1),(882,1,'2012-12-03','2012-12-03 17:55:29',1),(883,1,'2012-12-03','2012-12-03 17:56:07',1),(884,1,'2012-12-03','2012-12-03 17:58:50',1),(885,1,'2012-12-03','2012-12-03 17:59:44',1),(886,1,'2012-12-03','2012-12-03 18:00:08',1),(887,1,'2012-12-03','2012-12-03 18:03:23',1),(888,1,'2012-12-03','2012-12-03 18:04:01',1),(889,1,'2012-12-03','2012-12-03 18:04:59',1),(890,1,'2012-12-03','2012-12-03 18:16:48',1),(891,1,'2012-12-03','2012-12-03 18:18:01',1),(892,1,'2012-12-03','2012-12-03 18:18:36',1),(893,1,'2012-12-03','2012-12-03 18:20:09',1),(894,1,'2012-12-03','2012-12-03 18:21:27',1),(895,1,'2012-12-03','2012-12-03 18:22:45',1),(896,1,'2012-12-03','2012-12-03 18:25:07',1),(897,1,'2012-12-03','2012-12-03 18:25:30',1),(898,1,'2012-12-03','2012-12-03 18:27:57',1),(899,1,'2012-12-03','2012-12-03 18:29:06',1),(900,1,'2012-12-03','2012-12-03 18:31:17',1),(901,1,'2012-12-03','2012-12-03 18:32:45',1),(902,1,'2012-12-03','2012-12-03 18:33:16',1),(903,1,'2012-12-03','2012-12-03 18:34:17',1),(904,1,'2012-12-03','2012-12-03 18:35:23',1),(905,1,'2012-12-03','2012-12-03 18:36:52',1),(906,1,'2012-12-03','2012-12-03 18:37:19',1),(907,1,'2012-12-03','2012-12-03 18:38:25',1),(908,1,'2012-12-03','2012-12-03 18:39:00',1),(909,1,'2012-12-03','2012-12-03 18:39:28',1),(910,1,'2012-12-03','2012-12-03 18:40:42',1),(911,1,'2012-12-03','2012-12-03 18:43:17',1),(912,1,'2012-12-03','2012-12-03 18:44:11',1),(913,1,'2012-12-03','2012-12-03 18:45:34',1),(914,1,'2012-12-03','2012-12-03 18:46:30',1),(915,1,'2012-12-03','2012-12-03 18:47:11',1),(916,1,'2012-12-03','2012-12-03 18:48:16',1),(917,1,'2012-12-03','2012-12-03 18:48:58',1),(918,1,'2012-12-03','2012-12-03 18:49:49',1),(919,1,'2012-12-03','2012-12-03 18:50:20',1),(920,1,'2012-12-03','2012-12-03 18:50:51',1),(921,1,'2012-12-03','2012-12-03 18:52:37',1),(922,1,'2012-12-03','2012-12-03 18:54:22',1),(923,1,'2012-12-03','2012-12-03 18:55:14',1),(924,1,'2012-12-03','2012-12-03 18:55:59',1),(925,1,'2012-12-03','2012-12-03 18:58:10',1),(926,1,'2012-12-03','2012-12-03 18:59:02',1),(927,1,'2012-12-03','2012-12-03 18:59:50',1),(928,1,'2012-12-03','2012-12-03 19:00:43',1),(929,1,'2012-12-03','2012-12-03 19:01:36',1),(930,1,'2012-12-03','2012-12-03 19:02:23',1),(931,1,'2012-12-03','2012-12-03 19:03:28',1),(932,1,'2012-12-03','2012-12-03 19:04:00',1),(933,1,'2012-12-03','2012-12-03 19:05:02',1),(934,1,'2012-12-03','2012-12-03 19:06:29',1),(935,1,'2012-12-03','2012-12-03 19:07:50',1),(936,1,'2012-12-03','2012-12-03 19:08:38',1),(937,1,'2012-12-03','2012-12-03 19:09:42',1),(938,1,'2012-12-03','2012-12-03 19:10:13',1),(939,1,'2012-12-03','2012-12-03 19:11:23',1),(940,1,'2012-12-03','2012-12-03 19:12:01',1),(941,1,'2012-12-03','2012-12-03 19:14:37',1),(942,1,'2012-12-03','2012-12-03 19:15:36',1),(943,1,'2012-12-03','2012-12-03 19:16:08',1),(944,1,'2012-12-03','2012-12-03 19:16:53',1),(945,1,'2012-12-03','2012-12-03 19:17:35',1),(946,1,'2012-12-03','2012-12-03 19:18:07',1),(947,1,'2012-12-03','2012-12-03 19:18:29',1),(948,1,'2012-12-03','2012-12-03 19:19:30',1),(949,1,'2012-12-03','2012-12-03 19:21:37',1),(950,1,'2012-12-03','2012-12-03 19:23:04',1),(951,1,'2012-12-03','2012-12-03 19:25:04',1),(952,1,'2012-12-03','2012-12-03 19:26:42',1),(953,1,'2012-12-03','2012-12-03 19:27:18',1),(954,1,'2012-12-03','2012-12-03 19:27:49',1),(955,1,'2012-12-03','2012-12-03 19:31:04',1),(956,1,'2012-12-03','2012-12-03 19:36:02',1),(957,1,'2012-12-03','2012-12-03 19:38:24',1),(958,1,'2012-12-03','2012-12-03 19:41:34',1),(959,1,'2012-12-03','2012-12-03 19:44:04',1),(960,1,'2012-12-03','2012-12-03 19:45:21',1),(961,1,'2012-12-03','2012-12-03 19:46:28',1),(962,1,'2012-12-03','2012-12-03 19:47:49',1),(963,1,'2012-12-03','2012-12-03 19:48:50',1),(964,1,'2012-12-03','2012-12-03 19:49:17',1),(965,1,'2012-12-03','2012-12-03 19:50:32',1),(966,1,'2012-12-03','2012-12-03 19:51:40',1),(967,1,'2012-12-03','2012-12-03 19:52:12',1),(968,1,'2012-12-03','2012-12-03 19:53:17',1),(969,1,'2012-12-03','2012-12-03 19:53:46',1),(970,1,'2012-12-03','2012-12-03 19:55:18',1),(971,1,'2012-12-03','2012-12-03 19:56:07',1),(972,1,'2012-12-03','2012-12-03 19:57:21',1),(973,1,'2012-12-03','2012-12-03 19:58:21',1),(974,1,'2012-12-03','2012-12-03 19:59:38',1),(975,1,'2012-12-03','2012-12-03 20:00:18',1),(976,1,'2012-12-03','2012-12-03 20:01:02',1),(977,1,'2012-12-03','2012-12-03 20:02:09',1),(978,1,'2012-12-03','2012-12-03 20:03:34',1),(979,1,'2012-12-03','2012-12-03 20:04:31',1),(980,1,'2012-12-03','2012-12-03 20:06:32',1),(981,1,'2012-12-03','2012-12-03 20:07:50',1),(982,1,'2012-12-03','2012-12-03 20:09:21',1),(983,1,'2012-12-03','2012-12-03 20:09:56',1),(984,1,'2012-12-03','2012-12-03 20:10:41',1),(985,1,'2012-12-03','2012-12-03 20:11:29',1),(986,1,'2012-12-03','2012-12-03 20:12:03',1),(987,1,'2012-12-03','2012-12-03 20:13:54',1),(988,1,'2012-12-03','2012-12-03 20:14:46',1),(989,1,'2012-12-03','2012-12-03 20:16:14',1),(990,1,'2012-12-03','2012-12-03 20:18:07',1),(991,1,'2012-12-03','2012-12-03 20:18:34',1),(992,1,'2012-12-03','2012-12-03 20:18:56',1),(993,1,'2012-12-03','2012-12-03 20:19:31',1),(994,1,'2012-12-03','2012-12-03 20:20:46',1),(995,1,'2012-12-03','2012-12-03 20:21:28',1),(996,1,'2012-12-03','2012-12-03 20:22:34',1),(997,1,'2012-12-03','2012-12-03 20:23:24',1),(998,1,'2012-12-03','2012-12-03 20:24:26',1),(999,1,'2012-12-03','2012-12-03 20:25:05',1),(1000,1,'2012-12-03','2012-12-03 20:25:18',1),(1001,1,'2012-12-03','2012-12-03 20:26:40',1),(1002,1,'2012-12-03','2012-12-03 20:27:37',1),(1003,1,'2012-12-03','2012-12-03 20:29:08',1),(1004,1,'2012-12-03','2012-12-03 20:31:31',1),(1005,1,'2012-12-03','2012-12-03 20:33:00',1),(1006,1,'2012-12-03','2012-12-03 20:33:32',1),(1007,1,'2012-12-03','2012-12-03 20:34:35',1),(1008,1,'2012-12-03','2012-12-03 20:35:06',1),(1009,1,'2012-12-03','2012-12-03 20:36:44',1),(1010,1,'2012-12-03','2012-12-03 20:37:34',1),(1011,1,'2012-12-03','2012-12-03 20:38:17',1),(1012,1,'2012-12-03','2012-12-03 20:39:17',1),(1013,1,'2012-12-03','2012-12-03 20:40:38',1),(1014,1,'2012-12-03','2012-12-03 20:41:10',1),(1015,1,'2012-12-03','2012-12-03 20:41:39',1),(1016,1,'2012-12-03','2012-12-03 20:47:59',1),(1017,1,'2012-12-03','2012-12-03 20:50:28',1),(1018,1,'2012-12-03','2012-12-03 20:51:11',1),(1019,1,'2012-12-03','2012-12-03 20:52:12',1),(1020,1,'2012-12-03','2012-12-03 20:53:33',1),(1021,1,'2012-12-03','2012-12-03 20:55:10',1),(1022,1,'2012-12-03','2012-12-03 20:57:33',1),(1023,1,'2012-12-03','2012-12-03 21:05:45',1),(1024,1,'2012-12-03','2012-12-03 21:06:18',1),(1025,1,'2012-12-03','2012-12-03 22:16:17',1),(1026,1,'2012-12-03','2012-12-03 22:16:53',1),(1027,1,'2012-12-03','2012-12-03 22:20:58',1),(1028,1,'2012-12-03','2012-12-03 22:21:22',1),(1029,1,'2012-12-03','2012-12-03 22:40:16',1),(1030,1,'2012-12-03','2012-12-03 22:43:50',1),(1031,1,'2012-12-03','2012-12-03 22:46:36',1),(1032,1,'2012-12-03','2012-12-03 22:47:17',1),(1033,1,'2012-12-03','2012-12-03 22:49:26',1),(1034,1,'2012-12-03','2012-12-03 22:49:54',1),(1035,1,'2012-12-03','2012-12-03 22:50:39',1),(1036,1,'2012-12-03','2012-12-03 22:51:51',1),(1037,1,'2012-12-03','2012-12-03 22:55:05',1),(1038,1,'2012-12-03','2012-12-03 22:58:02',1),(1039,1,'2012-12-03','2012-12-03 23:54:36',1),(1040,1,'2012-12-03','2012-12-03 23:55:47',1),(1041,1,'2012-12-03','2012-12-03 23:57:26',1),(1042,1,'2012-12-03','2012-12-04 00:04:23',1),(1043,1,'2012-12-03','2012-12-04 00:04:58',1),(1044,1,'2012-12-03','2012-12-04 01:21:22',1),(1045,1,'2012-12-04','2012-12-04 17:01:55',1),(1046,1,'2012-12-04','2012-12-04 17:03:37',1),(1047,1,'2012-12-04','2012-12-04 17:28:32',1),(1048,104,'2012-12-04','2012-12-04 17:28:54',1),(1049,1,'2012-12-04','2012-12-04 17:31:31',1),(1050,1,'2012-12-04','2012-12-04 17:33:15',1),(1051,1,'2012-12-04','2012-12-04 17:33:58',1),(1052,1,'2012-12-04','2012-12-04 17:35:26',1),(1053,1,'2012-12-04','2012-12-04 17:36:13',1),(1054,1,'2012-12-04','2012-12-04 17:37:42',1),(1055,1,'2012-12-04','2012-12-04 17:43:30',1),(1056,1,'2012-12-04','2012-12-04 17:47:16',1),(1057,1,'2012-12-04','2012-12-04 17:49:17',1),(1058,1,'2012-12-04','2012-12-04 17:51:25',1),(1059,1,'2012-12-04','2012-12-04 18:05:30',1),(1060,1,'2012-12-04','2012-12-04 18:06:23',1),(1061,1,'2012-12-04','2012-12-04 18:07:25',1),(1062,1,'2012-12-04','2012-12-04 18:10:21',1),(1063,1,'2012-12-04','2012-12-04 18:18:46',1),(1064,1,'2012-12-04','2012-12-04 18:20:10',1),(1065,1,'2012-12-04','2012-12-04 18:21:29',1),(1066,1,'2012-12-07','2012-12-07 11:08:41',0),(1067,1,'2012-12-07','2012-12-07 11:09:34',0),(1068,1,'2012-12-07','2012-12-07 11:12:42',0),(1069,1,'2012-12-07','2012-12-07 11:13:00',0),(1070,109,'2012-12-07','2012-12-07 11:17:03',0),(1071,109,'2012-12-07','2012-12-07 11:18:28',0),(1072,109,'2012-12-07','2012-12-07 11:18:56',0),(1073,1,'2012-12-07','2012-12-07 11:18:57',1),(1074,1,'2012-12-07','2012-12-07 11:20:16',1),(1075,2,'2012-12-07','2012-12-07 11:20:33',1),(1076,2,'2012-12-07','2012-12-07 11:20:50',1),(1077,51,'2012-12-07','2012-12-07 11:21:07',1),(1078,60,'2012-12-07','2012-12-07 11:21:19',1),(1079,60,'2012-12-07','2012-12-07 11:21:27',1),(1080,60,'2012-12-07','2012-12-07 11:21:49',1),(1081,2,'2012-12-07','2012-12-07 11:22:44',1),(1082,2,'2012-12-07','2012-12-07 11:22:52',1),(1083,16,'2012-12-07','2012-12-07 11:23:08',1),(1084,2,'2012-12-07','2012-12-07 11:23:15',1),(1085,2,'2012-12-07','2012-12-07 11:25:18',1),(1086,1,'2012-12-07','2012-12-07 11:25:59',1),(1087,1,'2012-12-07','2012-12-07 11:26:49',1),(1088,2,'2012-12-07','2012-12-07 11:29:40',1),(1089,16,'2012-12-07','2012-12-07 11:31:22',1),(1090,1,'2012-12-07','2012-12-07 11:32:34',1),(1091,2,'2012-12-07','2012-12-07 11:32:46',1),(1092,51,'2012-12-07','2012-12-07 11:33:21',1),(1093,67,'2012-12-07','2012-12-07 11:35:59',1),(1094,67,'2012-12-07','2012-12-07 11:36:30',1),(1095,67,'2012-12-07','2012-12-07 11:36:35',1),(1096,51,'2012-12-07','2012-12-07 11:36:51',1),(1097,51,'2012-12-07','2012-12-07 11:42:41',1),(1098,2,'2012-12-07','2012-12-07 11:42:53',1),(1099,1,'2012-12-07','2012-12-07 11:43:09',1),(1100,109,'2012-12-07','2012-12-07 11:43:19',1),(1101,109,'2012-12-07','2012-12-07 11:43:32',1),(1102,109,'2012-12-07','2012-12-07 11:43:40',1),(1103,109,'2012-12-07','2012-12-07 11:44:40',1),(1104,109,'2012-12-07','2012-12-07 11:46:19',0),(1105,109,'2012-12-07','2012-12-07 11:46:31',0),(1106,1,'2012-12-07','2012-12-07 11:46:33',1),(1107,109,'2012-12-07','2012-12-07 13:12:56',1),(1108,2,'2012-12-07','2012-12-07 13:13:10',1),(1109,2,'2012-12-07','2012-12-07 13:14:01',1),(1110,109,'2012-12-07','2012-12-07 13:17:21',1),(1111,1,'2012-12-07','2012-12-07 13:17:21',0),(1112,109,'2012-12-07','2012-12-07 13:17:35',0),(1113,1,'2012-12-07','2012-12-07 13:18:43',0),(1114,1,'2012-12-07','2012-12-07 13:18:45',0),(1115,1,'2012-12-07','2012-12-07 13:18:51',0),(1116,109,'2012-12-07','2012-12-07 13:19:29',0),(1117,109,'2012-12-07','2012-12-07 13:23:15',0),(1118,2,'2012-12-07','2012-12-07 13:23:16',1),(1119,2,'2012-12-07','2012-12-07 13:28:44',1),(1120,2,'2012-12-07','2012-12-07 13:31:35',1),(1121,2,'2012-12-07','2012-12-07 13:31:39',1),(1122,2,'2012-12-07','2012-12-07 13:33:14',1),(1123,1,'2012-12-07','2012-12-07 13:33:19',1),(1124,1,'2012-12-07','2012-12-07 13:33:21',1),(1125,109,'2012-12-07','2012-12-07 13:34:17',1),(1126,1,'2012-12-07','2012-12-07 13:34:17',0),(1127,109,'2012-12-07','2012-12-07 13:34:44',0),(1128,2,'2012-12-07','2012-12-07 13:34:45',1),(1129,28,'2012-12-07','2012-12-07 13:34:51',1),(1130,2,'2012-12-07','2012-12-07 13:34:55',1),(1131,16,'2012-12-07','2012-12-07 13:34:58',1),(1132,19,'2012-12-07','2012-12-07 13:35:02',1),(1133,19,'2012-12-07','2012-12-07 13:35:29',1),(1134,19,'2012-12-07','2012-12-07 13:35:51',1),(1135,16,'2012-12-07','2012-12-07 13:35:52',1),(1136,19,'2012-12-07','2012-12-07 13:36:36',1),(1137,19,'2012-12-07','2012-12-07 13:37:02',1),(1138,16,'2012-12-07','2012-12-07 13:37:03',1),(1139,1,'2012-12-07','2012-12-07 14:04:37',0),(1140,1,'2012-12-07','2012-12-07 14:16:57',0),(1141,109,'2012-12-07','2012-12-07 14:17:05',0),(1142,109,'2012-12-07','2012-12-07 14:17:11',0),(1143,1,'2012-12-07','2012-12-07 14:17:16',2),(1144,1,'2012-12-07','2012-12-07 14:17:26',2),(1145,109,'2012-12-07','2012-12-07 14:17:57',2),(1146,1,'2012-12-07','2012-12-07 14:17:58',0),(1147,1,'2012-12-07','2012-12-07 14:20:28',0),(1148,109,'2012-12-07','2012-12-07 14:52:32',0),(1149,109,'2012-12-07','2012-12-07 14:53:30',0),(1150,1,'2012-12-07','2012-12-07 14:53:32',3),(1151,2,'2012-12-07','2012-12-07 14:58:08',3),(1152,2,'2012-12-07','2012-12-07 14:58:09',3),(1153,1,'2012-12-07','2012-12-07 17:21:58',0),(1154,1,'2012-12-09','2012-12-09 17:05:05',0),(1155,1,'2012-12-10','2012-12-10 09:55:25',0),(1156,109,'2012-12-10','2012-12-10 10:40:21',0),(1157,109,'2012-12-10','2012-12-10 10:40:31',0),(1158,1,'2012-12-10','2012-12-10 10:40:31',2),(1159,1,'2012-12-10','2012-12-10 10:40:44',2),(1160,1,'2012-12-10','2012-12-10 10:45:23',2),(1161,109,'2012-12-10','2012-12-10 10:46:08',2),(1162,109,'2012-12-10','2012-12-10 10:46:13',2),(1163,1,'2012-12-10','2012-12-10 10:46:13',2),(1164,1,'2012-12-10','2012-12-10 10:46:43',2),(1165,1,'2012-12-10','2012-12-10 10:48:04',2),(1166,1,'2012-12-10','2012-12-10 11:10:19',2),(1167,1,'2012-12-10','2012-12-10 11:10:53',2),(1168,1,'2012-12-10','2012-12-10 11:11:33',2),(1169,1,'2012-12-10','2012-12-10 11:11:45',2),(1170,1,'2012-12-10','2012-12-10 11:16:45',2),(1171,1,'2012-12-10','2012-12-10 11:20:26',2),(1172,118,'2012-12-10','2012-12-10 11:24:51',2),(1173,1,'2012-12-10','2012-12-10 11:25:13',2),(1174,1,'2012-12-10','2012-12-10 11:26:18',2),(1175,1,'2012-12-10','2012-12-10 11:42:17',2),(1176,1,'2012-12-10','2012-12-10 11:43:28',2),(1177,1,'2012-12-10','2012-12-10 11:44:04',2),(1178,1,'2012-12-10','2012-12-10 11:52:32',2),(1179,1,'2012-12-10','2012-12-10 11:55:37',2),(1180,118,'2012-12-10','2012-12-10 11:59:15',2),(1181,118,'2012-12-10','2012-12-10 12:01:55',2),(1182,118,'2012-12-10','2012-12-10 12:01:56',2),(1183,118,'2012-12-10','2012-12-10 12:02:24',2),(1184,1,'2012-12-10','2012-12-10 12:03:13',2),(1185,1,'2012-12-10','2012-12-10 12:21:47',2),(1186,118,'2012-12-10','2012-12-10 12:22:16',2),(1187,118,'2012-12-10','2012-12-10 12:33:49',2),(1188,1,'2012-12-10','2012-12-10 12:34:01',2),(1189,118,'2012-12-10','2012-12-10 12:34:16',2),(1190,118,'2012-12-10','2012-12-10 12:34:41',2),(1191,118,'2012-12-10','2012-12-10 12:35:00',2),(1192,118,'2012-12-10','2012-12-10 12:35:34',2),(1193,118,'2012-12-10','2012-12-10 12:35:41',2),(1194,118,'2012-12-10','2012-12-10 12:35:55',2),(1195,118,'2012-12-10','2012-12-10 12:35:58',2),(1196,118,'2012-12-10','2012-12-10 12:36:09',2),(1197,118,'2012-12-10','2012-12-10 12:36:22',2),(1198,118,'2012-12-10','2012-12-10 12:36:37',2),(1199,118,'2012-12-10','2012-12-10 12:37:03',2),(1200,118,'2012-12-10','2012-12-10 12:40:58',2),(1201,118,'2012-12-10','2012-12-10 12:41:09',2),(1202,1,'2012-12-10','2012-12-10 12:41:41',2),(1203,1,'2012-12-10','2012-12-10 12:54:30',2),(1204,1,'2012-12-10','2012-12-10 12:56:20',2),(1205,1,'2012-12-10','2012-12-10 13:00:57',2),(1206,1,'2012-12-10','2012-12-10 13:02:44',2),(1207,1,'2012-12-10','2012-12-10 15:10:45',2),(1208,1,'2012-12-10','2012-12-10 15:24:10',2),(1209,1,'2012-12-10','2012-12-10 15:24:41',2),(1210,1,'2012-12-10','2012-12-10 15:30:01',2),(1211,1,'2012-12-10','2012-12-10 15:30:50',2),(1212,1,'2012-12-10','2012-12-10 15:32:23',2),(1213,1,'2012-12-10','2012-12-10 15:38:14',2),(1214,118,'2012-12-10','2012-12-10 15:45:11',2),(1215,118,'2012-12-10','2012-12-10 15:46:01',2),(1216,1,'2012-12-10','2012-12-10 15:46:21',2),(1217,1,'2012-12-10','2012-12-10 15:46:37',2),(1218,118,'2012-12-10','2012-12-10 15:46:52',2),(1219,118,'2012-12-10','2012-12-10 15:50:42',2),(1220,118,'2012-12-10','2012-12-10 15:51:22',2),(1221,118,'2012-12-10','2012-12-10 15:51:52',2),(1222,1,'2012-12-10','2012-12-10 15:52:30',2),(1223,1,'2012-12-10','2012-12-10 15:56:49',2),(1224,118,'2012-12-10','2012-12-10 15:57:13',2),(1225,118,'2012-12-10','2012-12-10 15:58:11',2),(1226,118,'2012-12-10','2012-12-10 16:29:24',2),(1227,118,'2012-12-10','2012-12-10 16:30:01',2),(1228,118,'2012-12-10','2012-12-10 16:30:22',2),(1229,118,'2012-12-10','2012-12-10 16:31:33',2),(1230,118,'2012-12-10','2012-12-10 16:31:55',2),(1231,1,'2012-12-10','2012-12-10 16:32:12',2),(1232,1,'2012-12-10','2012-12-10 16:32:56',2),(1233,118,'2012-12-10','2012-12-10 16:33:15',2),(1234,118,'2012-12-10','2012-12-10 16:33:15',2),(1235,118,'2012-12-10','2012-12-10 16:33:19',2),(1236,118,'2012-12-10','2012-12-10 16:33:25',2),(1237,118,'2012-12-10','2012-12-10 16:33:42',2),(1238,118,'2012-12-10','2012-12-10 16:33:43',2),(1239,118,'2012-12-10','2012-12-10 16:33:43',2),(1240,118,'2012-12-10','2012-12-10 16:33:44',2),(1241,118,'2012-12-10','2012-12-10 16:34:02',2),(1242,1,'2012-12-10','2012-12-10 16:34:10',2),(1243,1,'2012-12-10','2012-12-10 16:34:34',2),(1244,1,'2012-12-10','2012-12-10 16:41:43',2),(1245,118,'2012-12-10','2012-12-10 16:42:54',2),(1246,118,'2012-12-10','2012-12-10 16:43:03',2),(1247,118,'2012-12-10','2012-12-10 16:43:17',2),(1248,118,'2012-12-10','2012-12-10 16:43:49',2),(1249,118,'2012-12-10','2012-12-10 16:44:35',2),(1250,118,'2012-12-10','2012-12-10 16:45:04',2),(1251,118,'2012-12-10','2012-12-10 16:52:14',2),(1252,118,'2012-12-10','2012-12-10 16:52:15',2),(1253,118,'2012-12-10','2012-12-10 16:54:25',2),(1254,118,'2012-12-10','2012-12-10 16:54:25',2),(1255,118,'2012-12-10','2012-12-10 16:54:25',2),(1256,118,'2012-12-10','2012-12-10 16:54:26',2),(1257,118,'2012-12-10','2012-12-10 16:54:26',2),(1258,118,'2012-12-10','2012-12-10 16:54:26',2),(1259,118,'2012-12-10','2012-12-10 16:54:27',2),(1260,118,'2012-12-10','2012-12-10 16:54:27',2),(1261,118,'2012-12-10','2012-12-10 16:54:27',2),(1262,118,'2012-12-10','2012-12-10 16:55:04',2),(1263,118,'2012-12-10','2012-12-10 16:55:10',2),(1264,118,'2012-12-10','2012-12-10 16:55:15',2),(1265,118,'2012-12-10','2012-12-10 16:55:42',2),(1266,118,'2012-12-10','2012-12-10 16:55:45',2),(1267,118,'2012-12-10','2012-12-10 16:55:54',2),(1268,118,'2012-12-10','2012-12-10 16:56:00',2),(1269,118,'2012-12-10','2012-12-10 16:56:00',2),(1270,118,'2012-12-10','2012-12-10 16:56:01',2),(1271,118,'2012-12-10','2012-12-10 16:56:13',2),(1272,118,'2012-12-10','2012-12-10 16:56:30',2),(1273,1,'2012-12-10','2012-12-10 16:56:56',2),(1274,109,'2012-12-10','2012-12-10 16:58:20',2),(1275,1,'2012-12-10','2012-12-10 16:58:20',0),(1276,109,'2012-12-10','2012-12-10 17:03:35',0),(1277,109,'2012-12-10','2012-12-10 17:03:41',0),(1278,1,'2012-12-10','2012-12-10 17:03:41',2),(1279,1,'2012-12-10','2012-12-10 17:03:56',2),(1280,118,'2012-12-10','2012-12-10 17:04:14',2),(1281,118,'2012-12-10','2012-12-10 17:04:15',2),(1282,118,'2012-12-10','2012-12-10 17:04:15',2),(1283,118,'2012-12-10','2012-12-10 17:04:38',2),(1284,118,'2012-12-10','2012-12-10 17:05:09',2),(1285,118,'2012-12-10','2012-12-10 17:05:47',2),(1286,118,'2012-12-10','2012-12-10 17:06:43',2),(1287,118,'2012-12-10','2012-12-10 17:07:02',2),(1288,118,'2012-12-10','2012-12-10 17:07:21',2),(1289,118,'2012-12-10','2012-12-10 17:07:22',2),(1290,118,'2012-12-10','2012-12-10 17:07:22',2),(1291,118,'2012-12-10','2012-12-10 17:07:40',2),(1292,118,'2012-12-10','2012-12-10 17:08:30',2),(1293,118,'2012-12-10','2012-12-10 17:08:30',2),(1294,118,'2012-12-10','2012-12-10 17:09:05',2),(1295,118,'2012-12-10','2012-12-10 17:09:46',2),(1296,118,'2012-12-10','2012-12-10 17:10:03',2),(1297,118,'2012-12-10','2012-12-10 17:11:08',2),(1298,118,'2012-12-10','2012-12-10 17:12:13',2),(1299,118,'2012-12-10','2012-12-10 17:12:14',2),(1300,1,'2012-12-10','2012-12-10 17:12:44',2),(1301,109,'2012-12-11','2012-12-11 09:29:54',0),(1302,1,'2012-12-11','2012-12-11 09:30:15',0),(1303,1,'2012-12-11','2012-12-11 17:00:45',0),(1304,1,'2012-12-12','2012-12-12 09:16:48',0),(1305,1,'2012-12-12','2012-12-12 10:19:38',0),(1306,109,'2012-12-12','2012-12-12 18:36:18',0),(1307,109,'2012-12-12','2012-12-12 18:36:24',0),(1308,1,'2012-12-12','2012-12-12 18:36:25',2),(1309,1,'2012-12-12','2012-12-12 18:36:31',2),(1310,1,'2012-12-12','2012-12-12 18:38:45',2),(1311,1,'2012-12-17','2012-12-17 20:21:35',0),(1312,1,'2012-12-20','2012-12-20 14:43:10',0),(1313,1,'2012-12-27','2012-12-27 15:54:51',0),(1314,1,'2012-12-27','2012-12-27 15:55:22',0),(1315,1,'2012-12-27','2012-12-27 21:07:00',0),(1316,1,'2012-12-29','2012-12-29 12:58:58',0),(1317,1,'2013-01-01','2013-01-01 12:39:27',0),(1318,1,'2013-01-02','2013-01-02 12:18:25',0),(1319,1,'2013-01-03','2013-01-03 11:23:30',0),(1320,1,'2013-01-03','2013-01-03 14:25:25',0);
/*!40000 ALTER TABLE `PageStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeStyles`
--

DROP TABLE IF EXISTS `PageThemeStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeStyles`
--

LOCK TABLES `PageThemeStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0),(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0),(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0),(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0),(5,'firstheme','Firstheme','My first theme in Concrete5.',0),(6,'boundless','Boundless Commerce','Boundless Commerce web site.',0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeAttributes`
--

DROP TABLE IF EXISTS `PageTypeAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeAttributes`
--

LOCK TABLES `PageTypeAttributes` WRITE;
/*!40000 ALTER TABLE `PageTypeAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'blog_entry','template1.png','Blog Entry',0,0),(5,'full','main.png','Full',0,0),(6,'left_sidebar','template1.png','Left Sidebar',0,0),(7,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(8,'home','main.png','Home',0,0);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,14,0,0,0,-1,'0',0,0),(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,-1,'0',0,1),(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1),(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1),(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1),(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1),(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1),(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1),(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1),(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1),(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1),(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1),(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1),(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1),(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1),(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1),(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1),(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1),(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1),(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1),(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1),(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1),(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1),(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1),(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1),(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1),(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,-1,'0',0,1),(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1),(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1),(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1),(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1),(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1),(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1),(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1),(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1),(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1),(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1),(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1),(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,-1,'0',0,1),(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1),(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1),(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1),(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1),(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1),(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1),(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1),(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1),(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1),(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1),(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1),(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1),(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1),(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1),(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1),(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1),(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1),(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1),(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1),(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,5,1,51,0,-1,'0',0,1),(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1),(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1),(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1),(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1),(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1),(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1),(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,65,0,-1,'0',0,1),(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,65,0,-1,'0',0,1),(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,65,0,-1,'0',0,1),(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1),(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,69,0,-1,'0',0,1),(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,69,0,-1,'0',0,1),(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,69,0,-1,'0',0,1),(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,69,0,-1,'0',0,1),(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,69,0,-1,'0',0,1),(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,69,0,-1,'0',0,1),(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,69,0,-1,'0',0,1),(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,69,0,-1,'0',0,1),(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,69,0,-1,'0',0,1),(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,69,0,-1,'0',0,1),(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1),(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,80,0,-1,'0',0,1),(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,80,0,-1,'0',0,1),(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,80,0,-1,'0',0,1),(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1),(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,84,0,-1,'0',0,1),(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,84,0,-1,'0',0,1),(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1),(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,87,0,-1,'0',0,1),(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,87,0,-1,'0',0,1),(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1),(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,90,0,-1,'0',0,1),(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,90,0,-1,'0',0,1),(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,90,0,-1,'0',0,1),(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,90,0,-1,'0',0,1),(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,90,0,-1,'0',0,1),(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,51,0,-1,'0',0,1),(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,96,0,-1,'0',0,1),(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,96,0,-1,'0',0,1),(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,96,0,-1,'0',0,1),(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1),(101,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(102,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(104,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1),(105,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1),(106,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,3,0,0,0,-1,'0',0,1),(107,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,1,0,0,0,-1,'0',0,1),(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,4,0,0,0,-1,'0',0,1),(109,0,1,0,NULL,NULL,NULL,1,109,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(110,0,1,0,NULL,NULL,NULL,1,110,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(111,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1),(112,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,111,0,-1,'0',0,1),(113,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,111,0,-1,'0',0,1),(114,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,111,0,-1,'0',0,1),(115,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,111,0,-1,'0',0,1),(116,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,-1,'0',0,1),(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,-1,'0',0,1),(120,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,108,0,-1,'0',0,1),(121,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,108,0,-1,'0',0,1),(122,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,108,0,-1,'0',0,1),(123,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(124,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(125,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(126,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(127,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,4,3,1,0,-1,'0',0,0),(128,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,4,1,0,-1,'0',0,0),(129,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,1,0,-1,'0',0,0),(130,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,107,0,-1,'0',0,1),(131,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,127,0,-1,'0',0,0),(132,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,128,0,-1,'0',0,0),(133,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,128,0,-1,'0',0,0),(134,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(135,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,106,0,-1,'0',0,0),(136,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,1,106,0,-1,'0',0,0),(137,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,127,0,-1,'0',0,0),(139,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,2,106,0,-1,'0',0,0),(140,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,127,0,-1,'0',0,0),(141,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,108,0,-1,'0',0,1),(142,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,127,0,-1,'0',0,0);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`),
  KEY `paID_peID` (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(2,1),(3,1),(4,5),(5,6);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,2,1),(3,3,2);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(2,1),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(3,1),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(4,1),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(5,1),(6,6),(6,7);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(28,1,0,10),(29,1,0,10),(30,1,0,10),(31,1,0,10),(32,1,0,10),(33,2,0,10),(34,2,0,10),(34,3,0,10),(35,2,0,10),(36,1,0,10),(36,2,0,10),(37,1,0,10),(38,1,0,10),(39,1,0,10),(40,1,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,2,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,16),(2,17),(3,54),(4,55),(5,56),(6,57),(7,59),(8,60),(9,61),(10,62),(11,63),(12,65),(13,66),(14,67),(15,68),(16,69),(17,70);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'composer_page',NULL),(5,'user',NULL),(6,'file_set',NULL),(7,'file',NULL),(8,'area',NULL),(9,'block_type',NULL),(10,'block',NULL),(11,'admin',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(4,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(5,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(6,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(7,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(8,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0),(9,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(10,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(11,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(12,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(13,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(14,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(15,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(16,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',9,0),(17,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',9,0),(18,'view_area','View Area',0,0,'Can view the area and its contents.',8,0),(19,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',8,0),(20,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',8,0),(21,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0),(22,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',8,0),(23,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',8,0),(24,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',8,0),(25,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',8,0),(26,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0),(27,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',10,0),(28,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',10,0),(29,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',10,0),(30,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',10,0),(31,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',10,0),(32,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',10,0),(33,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0),(34,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',6,0),(35,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0),(36,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(37,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',6,0),(38,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',6,0),(39,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0),(40,'delete_file_set','Delete File Set',0,0,'',6,0),(41,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',6,0),(42,'add_file','Add File',0,1,'Can add files to set.',6,0),(43,'view_file','View Files',0,0,'Can view and download files.',7,0),(44,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0),(45,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0),(46,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0),(47,'copy_file','Copy File',0,0,'Can copy file.',7,0),(48,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0),(49,'delete_file','Delete File',0,0,'Can delete file.',7,0),(50,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(51,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(52,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(53,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(54,'access_user_search','Access User Search',0,1,'',5,0),(55,'edit_user_properties','Edit User Details',0,1,NULL,5,0),(56,'view_user_attributes','View User Attributes',0,1,NULL,5,0),(57,'activate_user','Activate/Deactivate User',0,0,NULL,5,0),(58,'sudo','Sign in as User',0,0,NULL,5,0),(59,'delete_user','Delete User',0,0,NULL,5,0),(60,'access_group_search','Access Group Search',0,0,'',5,0),(61,'edit_groups','Edit Groups',0,0,'',5,0),(62,'assign_user_groups','Assign Groups to User',0,1,'',5,0),(63,'backup','Perform Backups',0,0,NULL,11,0),(64,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0),(65,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(66,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0),(67,'empty_trash','Empty Trash',0,0,NULL,11,0),(68,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(69,'install_packages','Install Packages',0,0,NULL,13,0),(70,'view_newsflow','View Newsflow',0,0,NULL,13,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
INSERT INTO `PileContents` VALUES (1,1,134,'BLOCK',1,'2012-11-29 22:04:42',1);
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2012-11-28 01:26:55',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Nav',20,120),(2,'Side Nav',0,121),(3,'Site Name',20,122),(5,'Menu',0,141);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotifications`
--

DROP TABLE IF EXISTS `SystemNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (10,0,0,1,0,1,0,1,1),(11,0,0,1,0,1,0,2,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
INSERT INTO `UserAttributeValues` VALUES (2,10,162),(2,11,163),(3,10,164),(3,11,165);
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
INSERT INTO `UserGroups` VALUES (2,3,'2012-12-07 13:35:52',NULL),(3,3,'2012-12-07 13:37:03',NULL);
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserOpenIDs`
--

DROP TABLE IF EXISTS `UserOpenIDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserOpenIDs`
--

LOCK TABLES `UserOpenIDs` WRITE;
/*!40000 ALTER TABLE `UserOpenIDs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserOpenIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessList`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessList`
--

LOCK TABLES `UserPermissionAssignGroupAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessListCustom`
--

LOCK TABLES `UserPermissionAssignGroupAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessList`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessList`
--

LOCK TABLES `UserPermissionUserSearchAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessListCustom`
--

LOCK TABLES `UserPermissionUserSearchAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `UserSearchIndexAttributes` VALUES (2,1,1),(3,1,1);
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'mark.horton','mark.horton@boundlesscommerce.co.uk','2b05092537be0a19a76a09aa28e2a981','1',-1,1,'2012-11-27 19:49:11',0,1354887285,1354887284,2130706433,1354886595,16,'Europe/London',NULL),(2,'beckie.waters','beckie.waters@boundlesscommerce.co.uk','d09381df01da66d44748a8cd53da6958','1',-1,1,'2012-12-07 13:35:51',0,1355337385,1355337384,3559565412,1355159021,5,NULL,NULL),(3,'julie.fawcett','julie.fawcett@boundlesscommerce.co.uk','1f9ed412d29d23429fcac9de0fd070b5','1',-1,1,'2012-12-07 13:37:02',0,1354892288,1354892010,787039850,0,1,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersFriends`
--

DROP TABLE IF EXISTS `UsersFriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersFriends`
--

LOCK TABLES `UsersFriends` WRITE;
/*!40000 ALTER TABLE `UsersFriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2012-11-28 01:09:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2012-11-28 01:18:33','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),(3,3,'2012-11-28 01:24:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),(4,4,'2012-11-28 01:33:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"4\";}'),(5,5,'2012-11-28 01:34:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"5\";}'),(6,1,'2012-11-28 17:52:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"1\";}'),(7,2,'2012-11-28 18:01:54','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"2\";}'),(8,3,'2012-11-28 18:06:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"3\";}'),(9,4,'2012-11-28 18:15:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:1:\"4\";}'),(10,5,'2012-11-28 18:30:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:1:\"5\";}'),(11,6,'2012-11-28 18:48:59','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"6\";}'),(12,7,'2012-11-28 18:53:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"7\";}'),(13,8,'2012-11-28 18:55:39','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:1:\"8\";}'),(14,9,'2012-11-28 18:56:45','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:1:\"9\";}'),(15,10,'2012-11-28 18:58:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"10\";}'),(16,11,'2012-11-28 19:24:56','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"11\";}'),(17,12,'2012-11-28 19:25:17','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"12\";}'),(18,13,'2012-11-28 19:25:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"13\";}'),(19,14,'2012-11-28 19:31:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"14\";}'),(20,15,'2012-11-28 19:33:41','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"15\";}'),(21,16,'2012-11-28 19:36:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"16\";}'),(22,17,'2012-11-28 19:38:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"17\";}'),(23,18,'2012-11-28 19:40:20','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"18\";}'),(24,1,'2012-11-28 22:53:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:1:\"1\";}'),(25,2,'2012-11-28 22:56:37','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:1:\"2\";}'),(26,3,'2012-11-28 23:11:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:1:\"3\";}'),(27,4,'2012-11-28 23:36:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:1:\"4\";}'),(28,5,'2012-11-28 23:40:58','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:1:\"5\";}'),(29,6,'2012-11-29 00:15:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"6\";}'),(30,7,'2012-11-29 00:16:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:1:\"7\";}'),(31,8,'2012-11-29 00:19:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:1:\"8\";}'),(32,9,'2012-11-29 00:20:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:1:\"9\";}'),(33,10,'2012-11-29 00:27:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"10\";}'),(34,11,'2012-11-29 00:29:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"11\";}'),(35,12,'2012-11-29 00:32:36','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"12\";}'),(36,13,'2012-11-29 00:49:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"13\";}'),(37,14,'2012-11-29 00:51:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"14\";}'),(38,15,'2012-11-29 00:54:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"15\";}'),(39,16,'2012-11-29 00:59:16','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"16\";}'),(40,17,'2012-11-29 01:00:43','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"17\";}'),(41,18,'2012-11-29 01:01:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"18\";}'),(42,19,'2012-11-29 01:09:47','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"19\";}'),(43,20,'2012-11-29 01:10:10','O:27:\"MovePagePageWorkflowRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"127\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"140\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"20\";}'),(44,21,'2012-11-29 01:11:37','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:2:\"21\";}'),(45,22,'2012-11-29 01:12:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:2:\"22\";}'),(46,23,'2012-11-29 01:15:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"23\";}'),(47,24,'2012-11-29 01:27:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"141\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"24\";}'),(48,25,'2012-11-29 01:29:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"25\";}'),(49,1,'2012-11-29 17:31:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:1:\"1\";}'),(50,2,'2012-11-29 17:36:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:1:\"2\";}'),(51,3,'2012-11-29 17:38:02','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"141\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"3\";}'),(52,4,'2012-11-29 17:39:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:1:\"4\";}'),(53,5,'2012-11-29 17:40:03','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:1:\"5\";}'),(54,6,'2012-11-29 17:43:51','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"130\";s:4:\"wrID\";s:1:\"6\";}'),(55,7,'2012-11-29 17:44:29','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"142\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"7\";}'),(56,8,'2012-11-29 17:50:07','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"142\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"8\";}'),(57,9,'2012-11-29 20:55:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"27\";s:4:\"wrID\";s:1:\"9\";}'),(58,10,'2012-11-29 21:05:05','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"28\";s:4:\"wrID\";s:2:\"10\";}'),(59,11,'2012-11-29 22:01:29','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"29\";s:4:\"wrID\";s:2:\"11\";}'),(60,12,'2012-11-29 22:05:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"30\";s:4:\"wrID\";s:2:\"12\";}'),(61,13,'2012-11-29 22:29:51','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"31\";s:4:\"wrID\";s:2:\"13\";}'),(62,14,'2012-11-29 22:31:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"32\";s:4:\"wrID\";s:2:\"14\";}'),(63,15,'2012-11-29 22:35:23','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"33\";s:4:\"wrID\";s:2:\"15\";}'),(64,16,'2012-11-29 22:47:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"34\";s:4:\"wrID\";s:2:\"16\";}'),(65,17,'2012-11-29 22:56:03','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"35\";s:4:\"wrID\";s:2:\"17\";}'),(66,18,'2012-11-29 23:00:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"36\";s:4:\"wrID\";s:2:\"18\";}'),(67,19,'2012-11-29 23:08:15','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"37\";s:4:\"wrID\";s:2:\"19\";}'),(68,20,'2012-11-29 23:14:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"38\";s:4:\"wrID\";s:2:\"20\";}'),(69,21,'2012-11-29 23:15:48','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"39\";s:4:\"wrID\";s:2:\"21\";}'),(70,22,'2012-11-29 23:17:32','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"40\";s:4:\"wrID\";s:2:\"22\";}'),(71,23,'2012-11-29 23:27:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"41\";s:4:\"wrID\";s:2:\"23\";}'),(72,24,'2012-11-29 23:40:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"42\";s:4:\"wrID\";s:2:\"24\";}'),(73,25,'2012-11-29 23:44:04','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"43\";s:4:\"wrID\";s:2:\"25\";}'),(74,26,'2012-11-29 23:52:21','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"44\";s:4:\"wrID\";s:2:\"26\";}'),(75,27,'2012-11-29 23:56:30','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"45\";s:4:\"wrID\";s:2:\"27\";}'),(76,28,'2012-11-30 00:16:16','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"46\";s:4:\"wrID\";s:2:\"28\";}'),(77,29,'2012-11-30 00:19:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"47\";s:4:\"wrID\";s:2:\"29\";}'),(78,30,'2012-11-30 00:21:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"48\";s:4:\"wrID\";s:2:\"30\";}'),(79,31,'2012-11-30 00:25:07','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"49\";s:4:\"wrID\";s:2:\"31\";}'),(80,32,'2012-11-30 00:49:04','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"50\";s:4:\"wrID\";s:2:\"32\";}'),(81,33,'2012-11-30 00:52:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"51\";s:4:\"wrID\";s:2:\"33\";}'),(82,34,'2012-11-30 00:55:38','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"52\";s:4:\"wrID\";s:2:\"34\";}'),(83,1,'2012-11-30 18:32:32','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"53\";s:4:\"wrID\";s:1:\"1\";}'),(84,2,'2012-11-30 19:37:56','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"54\";s:4:\"wrID\";s:1:\"2\";}'),(85,3,'2012-11-30 19:51:08','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"55\";s:4:\"wrID\";s:1:\"3\";}'),(86,4,'2012-11-30 19:55:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"56\";s:4:\"wrID\";s:1:\"4\";}'),(87,5,'2012-11-30 19:58:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"57\";s:4:\"wrID\";s:1:\"5\";}'),(88,6,'2012-11-30 20:00:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"58\";s:4:\"wrID\";s:1:\"6\";}'),(89,7,'2012-11-30 20:05:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"59\";s:4:\"wrID\";s:1:\"7\";}'),(90,8,'2012-11-30 20:23:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"60\";s:4:\"wrID\";s:1:\"8\";}'),(91,9,'2012-11-30 20:37:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"61\";s:4:\"wrID\";s:1:\"9\";}'),(92,10,'2012-11-30 20:42:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"62\";s:4:\"wrID\";s:2:\"10\";}'),(93,1,'2012-12-03 17:25:08','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"63\";s:4:\"wrID\";s:1:\"1\";}'),(94,2,'2012-12-03 17:31:43','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"64\";s:4:\"wrID\";s:1:\"2\";}'),(95,3,'2012-12-03 17:34:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"65\";s:4:\"wrID\";s:1:\"3\";}'),(96,4,'2012-12-03 17:50:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"66\";s:4:\"wrID\";s:1:\"4\";}'),(97,5,'2012-12-03 18:27:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"67\";s:4:\"wrID\";s:1:\"5\";}'),(98,6,'2012-12-03 18:37:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"68\";s:4:\"wrID\";s:1:\"6\";}'),(99,7,'2012-12-03 20:51:08','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"69\";s:4:\"wrID\";s:1:\"7\";}'),(100,8,'2012-12-03 20:55:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"70\";s:4:\"wrID\";s:1:\"8\";}'),(101,9,'2012-12-03 22:47:14','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"71\";s:4:\"wrID\";s:1:\"9\";}'),(102,10,'2012-12-03 23:54:33','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"72\";s:4:\"wrID\";s:2:\"10\";}'),(103,1,'2012-12-04 18:10:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"73\";s:4:\"wrID\";s:1:\"1\";}'),(104,2,'2012-12-10 10:45:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"74\";s:4:\"wrID\";s:1:\"2\";}'),(105,3,'2012-12-10 11:10:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"75\";s:4:\"wrID\";s:1:\"3\";}'),(106,4,'2012-12-10 11:16:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"77\";s:4:\"wrID\";s:1:\"4\";}'),(107,5,'2012-12-10 11:25:13','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"78\";s:4:\"wrID\";s:1:\"5\";}'),(108,6,'2012-12-10 11:43:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"79\";s:4:\"wrID\";s:1:\"6\";}'),(109,7,'2012-12-10 11:52:32','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"80\";s:4:\"wrID\";s:1:\"7\";}'),(110,8,'2012-12-10 12:03:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"81\";s:4:\"wrID\";s:1:\"8\";}'),(111,9,'2012-12-10 12:41:41','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"82\";s:4:\"wrID\";s:1:\"9\";}'),(112,10,'2012-12-10 12:56:19','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"83\";s:4:\"wrID\";s:2:\"10\";}'),(113,11,'2012-12-10 13:02:43','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"84\";s:4:\"wrID\";s:2:\"11\";}'),(114,12,'2012-12-10 15:24:10','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"85\";s:4:\"wrID\";s:2:\"12\";}'),(115,13,'2012-12-10 15:30:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"86\";s:4:\"wrID\";s:2:\"13\";}'),(116,14,'2012-12-10 15:32:22','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"87\";s:4:\"wrID\";s:2:\"14\";}'),(117,15,'2012-12-10 15:52:29','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"89\";s:4:\"wrID\";s:2:\"15\";}'),(118,16,'2012-12-10 16:32:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"90\";s:4:\"wrID\";s:2:\"16\";}'),(119,17,'2012-12-10 16:34:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"91\";s:4:\"wrID\";s:2:\"17\";}'),(120,18,'2012-12-10 16:56:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"92\";s:4:\"wrID\";s:2:\"18\";}'),(121,19,'2012-12-10 17:12:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"93\";s:4:\"wrID\";s:2:\"19\";}'),(122,1,'2012-12-12 18:38:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"94\";s:4:\"wrID\";s:1:\"1\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (20,1),(31,1),(34,1),(64,1),(65,1),(68,1),(69,1),(75,1),(107,1),(116,1),(117,1),(118,1),(137,1),(138,1),(139,1),(162,1),(163,1),(164,1),(165,1);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(8,0),(9,0),(10,1),(11,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'blog, blogging'),(2,'icon-book'),(3,'new blog, write blog, blogging'),(4,'icon-pencil'),(5,'blog drafts,composer'),(6,'icon-book'),(7,'pages, add page, delete page, copy, move, alias'),(8,'pages, add page, delete page, copy, move, alias'),(9,'icon-home'),(10,'pages, add page, delete page, copy, move, alias, bulk'),(11,'icon-road'),(12,'find page, search page, search, find, pages, sitemap'),(13,'icon-search'),(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(15,'icon-picture'),(16,'file, file attributes, title, attribute, description, rename'),(17,'icon-cog'),(18,'files, category, categories'),(19,'icon-list-alt'),(21,'new file set'),(22,'icon-plus-sign'),(23,'users, groups, people, find, delete user, remove user, change password, password'),(24,'find, search, people, delete user, remove user, change password, password'),(25,'icon-user'),(26,'user, group, people, permissions, access, expire'),(27,'icon-globe'),(28,'user attributes, user data, gather data, registration data'),(29,'icon-cog'),(30,'new user, create'),(32,'icon-plus-sign'),(33,'new user group, new group, group, create'),(35,'icon-plus'),(36,'group set'),(37,'icon-list'),(38,'forms, log, error, email, mysql, exception, survey'),(39,'hits, pageviews, visitors, activity'),(40,'icon-signal'),(41,'forms, questions, response, data'),(42,'icon-briefcase'),(43,'questions, quiz, response'),(44,'icon-tasks'),(45,'forms, log, error, email, mysql, exception, survey, history'),(46,'icon-time'),(47,'new theme, theme, active theme, change theme, template, css'),(48,'icon-font'),(49,'theme'),(50,'page types'),(51,'custom theme, change theme, custom css, css'),(52,'page type defaults, global block, global area, starter, template'),(53,'icon-file'),(54,'page attributes, custom'),(55,'icon-cog'),(56,'single, page, custom, application'),(57,'icon-wrench'),(58,'add workflow, remove workflow'),(59,'icon-list'),(60,'icon-user'),(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(62,'icon-th'),(63,'icon-lock'),(66,'block, refresh, custom'),(67,'icon-wrench'),(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(71,'update, upgrade'),(72,'concrete5.org, my account, marketplace'),(73,'buy theme, new theme, marketplace, template'),(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(76,'website name, title'),(77,'logo, favicon, iphone, icon, bookmark'),(78,'tinymce, content block, fonts, editor, tinymce, content, overlay'),(79,'translate, translation, internationalization, multilingual, translate'),(80,'timezone, profile, locale'),(81,'interface, quick nav, dashboard background, background image'),(82,'vanity, pretty url, seo, pageview, view'),(83,'bulk, seo, change keywords, engine, optimization, search'),(84,'traffic, statistics, google analytics, quant, pageviews, hits'),(85,'turn off statistics, tracking, statistics, pageviews, hits'),(86,'configure search, site search, search option'),(87,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(88,'cache option, turn off cache, no cache, page cache, caching'),(89,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(90,'editors, hide site, offline, private, public, access'),(91,'file options, file manager, upload, modify'),(92,'security, files, media, extension, manager, upload'),(93,'security, actions, administrator, admin, package, marketplace, search'),(94,'security, lock ip, lock out, block ip, address, restrict, access'),(95,'security, registration'),(96,'antispam, block spam, security'),(97,'lock site, under construction, hide, hidden'),(98,'profile, login, redirect, specific, dashboard, administrators'),(99,'member profile, member page,community, forums, social, avatar'),(100,'signup, new user, community'),(101,'smtp, mail settings'),(102,'email server, mail settings, mail configuration, external, internal'),(103,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(104,'attribute configuration'),(105,'attributes, sets'),(106,'attributes, types'),(108,'overrides, system info, debug, support,help'),(109,'errors,exceptions, develop, support, help'),(110,'email, logging, logs, smtp, pop, errors, mysql, errors, log'),(111,'security, alternate storage, hide files'),(112,'network, proxy server'),(113,'export, backup, database, sql, mysql, encryption, restore'),(114,'upgrade, new version, update'),(115,'export, database, xml, starting, points, schema, refresh, custom, tables');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (119,960.0000),(120,212.0000),(121,960.0000),(122,212.0000),(123,960.0000),(124,212.0000),(125,960.0000),(126,212.0000),(127,960.0000),(128,212.0000),(129,960.0000),(130,212.0000),(131,960.0000),(132,212.0000),(133,150.0000),(134,150.0000),(143,2592.0000),(144,1728.0000),(145,1037.0000),(146,692.0000),(147,146.0000),(148,110.0000),(150,980.0000),(151,350.0000),(152,980.0000),(153,350.0000),(154,980.0000),(155,350.0000),(156,980.0000),(157,350.0000),(158,980.0000),(159,400.0000),(160,980.0000),(161,400.0000),(166,455.0000),(167,397.0000),(168,90.0000),(169,90.0000),(170,90.0000),(171,90.0000),(172,90.0000),(173,90.0000),(174,90.0000),(175,90.0000),(176,90.0000),(177,90.0000),(178,1500.0000),(179,1218.0000),(180,262.0000),(181,262.0000),(182,262.0000),(183,262.0000),(184,262.0000),(185,262.0000),(186,262.0000),(187,262.0000),(188,262.0000),(189,262.0000),(190,262.0000),(191,262.0000),(192,262.0000),(193,262.0000),(194,262.0000),(195,262.0000);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
INSERT INTO `atSelectOptions` VALUES (1,14,'composer',0,1),(2,14,'hello',1,1),(3,14,'world',2,1),(4,14,'first post',3,1);
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
INSERT INTO `atSelectOptionsSelected` VALUES (136,1),(136,2),(136,3),(136,4);
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (14,1,'display_asc',1);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,''),(3,''),(4,''),(7,'');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
INSERT INTO `btContentImage` VALUES (15,8,0,0,0,'',0,NULL,''),(16,2,0,960,212,'',0,1,'My concrete5 Blog'),(17,7,0,960,212,'',0,1,''),(18,6,0,960,212,'',0,1,''),(19,4,0,960,212,'',0,1,''),(28,1,0,960,212,'',0,1,''),(47,2,0,960,212,'',0,1,'My concrete5 Blog'),(49,8,0,0,0,'',0,NULL,''),(70,2,0,0,0,'',0,1,'My concrete5 Blog'),(71,8,0,0,0,'',0,NULL,''),(73,2,0,0,0,'',0,1,'My concrete5 Blog'),(74,8,0,0,0,'',0,NULL,''),(84,10,0,277,415,'',0,0,''),(112,2,0,0,0,'',0,1,'My concrete5 Blog'),(113,8,0,0,0,'',0,NULL,'');
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'),(13,'<p>This is my first blog post.</p>'),(21,'<h3>Links:</h3>'),(23,'<h1><a title=\"Home\" \n                                	href=\"{CCM:CID_1}\"\n                                >Concrete</a></h1>'),(24,'<h1>Welcome to concrete5 - an Open Source CMS</h1>'),(25,'<h3>Sidebar</h3>'),(26,'<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title=\"Move blocks in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/blocks-and-areas\" target=\"_blank\">drag and drop blocks</a>&nbsp;like this around your layout.</p>'),(27,'<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5\'s in-context editing. Just <a href=\"{CCM:CID_109}\">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title=\"In-context editing CMS\" href=\"http://www.concrete5.org/documentation/general-topics/in-context-editing/\" target=\"_blank\">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title=\"Add a page in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/add-a-page/\" target=\"_blank\">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title=\"Add a simple form in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/add_a_form\" target=\"_blank\">a Form</a>.</li>\n                                        <li><a title=\"add-on marketplace for concrete5\" href=\"http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/\" target=\"_blank\">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We\'ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href=\"{CCM:CID_6}\">Sitemap</a> and quickly delete the parts you don\'t want.</p>'),(29,'<h1>About Us</h1>'),(31,'<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title=\"concrete5 Content Management System\" href=\"http://www.concrete5.org/\" target=\"_blank\">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title=\"open source content management system\" href=\"http://www.concrete5.org/community\" target=\"_blank\">community</a>&nbsp;and the&nbsp;<a href=\"http://www.concrete5.org/documentation/general-topics/\" target=\"_blank\">documentation</a>. You can also browse our&nbsp;<a title=\"concrete5 marketplace\" href=\"http://www.concrete5.org/marketplace/\" target=\"_blank\">marketplace</a>&nbsp;for more&nbsp;<a title=\"Add-ons for concrete5\" href=\"http://www.concrete5.org/marketplace/addons/\" target=\"_blank\">add-ons</a>&nbsp;and&nbsp;<a title=\"Themes for concrete5\" href=\"http://www.concrete5.org/marketplace/themes/\" target=\"_blank\">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href=\"http://www.concrete5.org/community/forums/\" target=\"_blank\">forums</a> and post for free to the&nbsp;<a href=\"http://www.concrete5.org/community/forums/jobs1/\" target=\"_blank\">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href=\"http://www.concrete5.org/services/support/\" target=\"_blank\">any problem</a>&nbsp;you run into. We offer <a href=\"http://www.concrete5.org/services/training/\" target=\"_blank\">training courses</a>&nbsp;and&nbsp;<a href=\"http://www.concrete5.org/services/hosting/\" target=\"_blank\">hosting packages</a>, just let us know <a href=\"http://www.concrete5.org/services/professional_services/\" target=\"_blank\">how we can help</a>.</p>'),(32,'<h1>Guestbook</h1>'),(35,'<h1>Contact Us</h1>'),(37,'<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href=\"http://www.concrete5.org/documentation/general-topics/add_a_form\" target=\"_blank\">add a form block</a>.</p>'),(39,'<h1>Sitemap</h1>'),(40,'<h3>Site Map</h3>'),(44,'<h3>Tags</h3>'),(48,'<p>Here is some sample content! I\'m writing it using composer!</p>'),(53,'<h1>Welcome to concrete5 </h1>'),(54,'<h3>Categories</h3>'),(55,'<ul>\r\n<li>\r\n<h2>Archives</h2>\r\n<ul>\r\n<li><a href=\"#\">September</a> (23)</li>\r\n<li><a href=\"#\">August</a> (31)</li>\r\n<li><a href=\"#\">July</a> (31)</li>\r\n<li><a href=\"#\">June</a> (30)</li>\r\n<li><a href=\"#\">May</a> (31)</li>\r\n<li><a href=\"#\">April</a> (30)</li>\r\n<li><a href=\"#\">March</a> (31)</li>\r\n<li><a href=\"#\">February</a> (28)</li>\r\n<li><a href=\"#\">January</a> (31)</li>\r\n</ul>\r\n</li>\r\n</ul>'),(56,'<ul>\r\n<li>\r\n<h2>Categories</h2>\r\n<ul>\r\n<li><a href=\"#\">Aliquam libero</a></li>\r\n<li><a href=\"#\">Consectetuer adipiscing elit</a></li>\r\n<li><a href=\"#\">metus aliquam pellentesque</a></li>\r\n<li><a href=\"#\">Suspendisse iaculis mauris</a></li>\r\n<li><a href=\"#\">Urnanet non molestie semper</a></li>\r\n<li><a href=\"#\">Proin gravida orci porttitor</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(58,'<h1>greeny grass</h1>\r\n<p>design By Free CSS Templates</p>'),(59,'<h1 class=\"title\">About This Website</h1>\r\n			<p class=\"byline\"><small>Posted on August 25th, 2007 by <a href=\"#\">admin</a> | <a href=\"#\">Edit</a></small></p>\r\n			<div class=\"entry\">\r\n				<p><strong>Greeny Grass</strong> is a free template from <a href=\"http://www.freecsstemplates.org/\">FCT</a> released under a <a href=\"http://creativecommons.org/licenses/by/2.5/\">Creative Commons Attribution 2.5 License</a>. The flower photo is fromt <a href=\"http://www.pdphoto.org/\">PDPhoto.org</a>. You\'re free to use this template for both commercial or personal use. I only ask that you link back to <a href=\"http://freecsstemplates.org/\">my site</a> in some way. Enjoy :)</p>\r\n			</div>\r\n			<p class=\"meta\"><a href=\"#\" class=\"more\">Read More</a> &nbsp;&nbsp;&nbsp; <a href=\"#\" class=\"comments\">Comments (33)</a></p>'),(60,'<div class=\"post\">\r\n			<h1 class=\"title\">About This Website</h1>\r\n			<p class=\"byline\"><small>Posted on August 25th, 2007 by <a href=\"#\">admin</a> | <a href=\"#\">Edit</a></small></p>\r\n			<div class=\"entry\">\r\n				<p><strong>Greeny Grass</strong> is a free template from <a href=\"http://www.freecsstemplates.org/\">FCT</a> released under a <a href=\"http://creativecommons.org/licenses/by/2.5/\">Creative Commons Attribution 2.5 License</a>. The flower photo is fromt <a href=\"http://www.pdphoto.org/\">PDPhoto.org</a>. You\'re free to use this template for both commercial or personal use. I only ask that you link back to <a href=\"http://freecsstemplates.org/\">my site</a> in some way. Enjoy :)</p>\r\n			</div>\r\n			<p class=\"meta\"><a href=\"#\" class=\"more\">Read More</a> &nbsp;&nbsp;&nbsp; <a href=\"#\" class=\"comments\">Comments (33)</a></p>\r\n		</div>\r\n		<div class=\"post\">\r\n			<h2 class=\"title\">Risus Pellentesque Pharetra</h2>\r\n			<p class=\"byline\"><small>Posted on August 25th, 2007 by <a href=\"#\">admin</a> | <a href=\"#\">Edit</a></small></p>\r\n			<div class=\"entry\">\r\n				<blockquote>\r\n					<p>&#8220;Praesent augue mauris, accumsan eget, ornare quis, consequat malesuada, leo.&#8221;</p>\r\n				</blockquote>\r\n				<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam eget ante. Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. </p>\r\n			</div>\r\n			<p class=\"meta\"><a href=\"#\" class=\"more\">Read More</a> &nbsp;&nbsp;&nbsp; <a href=\"#\" class=\"comments\">Comments (33)</a></p>\r\n		</div>'),(62,'<div class=\"post\">\r\n<h1 class=\"title\">About This Website</h1>\r\n<p class=\"byline\"><small>Posted on August 25th, 2007 by <a href=\"#\">admin</a> | <a href=\"#\">Edit</a></small></p>\r\n<div class=\"entry\">\r\n<p><strong>Greeny Grass</strong> is a free template from <a href=\"http://www.freecsstemplates.org/\">FCT</a> released under a <a href=\"http://creativecommons.org/licenses/by/2.5/\">Creative Commons Attribution 2.5 License</a>. The flower photo is fromt <a href=\"http://www.pdphoto.org/\">PDPhoto.org</a>. You\'re free to use this template for both commercial or personal use. I only ask that you link back to <a href=\"http://freecsstemplates.org/\">my site</a> in some way. Enjoy :)</p>\r\n</div>\r\n<p class=\"meta\"><a class=\"more\" href=\"#\">Read More</a>     <a class=\"comments\" href=\"#\">Comments (33)</a></p>\r\n</div>\r\n<div class=\"post\">\r\n<h2 class=\"title\">Risus Pellentesque Pharetra</h2>\r\n<p class=\"byline\"><small>Posted on August 25th, 2007 by <a href=\"#\">admin</a> | <a href=\"#\">Edit</a></small></p>\r\n<div class=\"entry\">\r\n<blockquote>\r\n<p>“Praesent augue mauris, accumsan eget, ornare quis, consequat malesuada, leo.”</p>\r\n</blockquote>\r\n<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam eget ante. Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia.</p>\r\n</div>\r\n<p class=\"meta\"><a class=\"more\" href=\"#\">Read More</a>     <a class=\"comments\" href=\"#\">Comments (33)</a></p>\r\n</div>'),(64,'<div class=\"post\">\r\n<h1 class=\"title\">About This Website</h1>\r\n<p class=\"byline\"><small>Posted on August 25th, 2007 by <a href=\"#\">admin</a> | <a href=\"#\">Edit</a></small></p>\r\n<div class=\"entry\">\r\n<p><strong>Greeny Grass</strong> is a free template from <a href=\"http://www.freecsstemplates.org/\">FCT</a> released under a <a href=\"http://creativecommons.org/licenses/by/2.5/\">Creative Commons Attribution 2.5 License</a>. The flower photo is fromt <a href=\"http://www.pdphoto.org/\">PDPhoto.org</a>. You\'re free to use this template for both commercial or personal use. I only ask that you link back to <a href=\"http://freecsstemplates.org/\">my site</a> in some way. Enjoy :)</p>\r\n</div>\r\n<p class=\"meta\"><a class=\"more\" href=\"#\">Read More</a>     <a class=\"comments\" href=\"#\">Comments (33)</a></p>\r\n</div>'),(65,'<div class=\"post\">\r\n<h1 class=\"title\">About This Website</h1>\r\n<p class=\"byline\"><small>Posted on August 25th, 2007 by <a href=\"#\">admin</a> | <a href=\"#\">Edit</a></small></p>\r\n<div class=\"entry\">\r\n<p><strong>Greeny Grass</strong> is a free template from <a href=\"http://www.freecsstemplates.org/\">FCT</a> released under a <a href=\"http://creativecommons.org/licenses/by/2.5/\">Creative Commons Attribution 2.5 License</a>. The flower photo is fromt <a href=\"http://www.pdphoto.org/\">PDPhoto.org</a>. You\'re free to use this template for both commercial or personal use. I only ask that you link back to <a href=\"http://freecsstemplates.org/\">my site</a> in some way. Enjoy :)</p>\r\n</div>\r\n<p class=\"meta\"><a class=\"more\" href=\"#\">Read More</a>     <a class=\"comments\" href=\"#\">Comments (33)</a></p>\r\n</div>'),(66,'<p>©2012 All Rights Reserved.  •  Design by Antonio Boundless Commerce.</p>'),(67,'<p>©2012 All Rights Reserved.  •  Design by Antonio Boundless Commerce.</p>'),(68,'<ul>\r\n<li>\r\n<h2>Product</h2>\r\n<ul>\r\n<li><a href=\"#\">Lawns</a></li>\r\n<li><a href=\"#\">Putting greens</a></li>\r\n<li><a href=\"#\">Playgrounds</a></li>\r\n<li><a href=\"#\">Sport Turf</a></li>\r\n<li><a href=\"#\">Puppy pads</a></li>\r\n<li><a href=\"#\">Accessories</a></li>\r\n<li><a href=\"#\">Training</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(69,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"#\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(72,'<p>This is my first blog post.</p>'),(75,'<p>This is my first blog post.</p>'),(76,'<ul>\r\n<li>\r\n<h2>Categories</h2>\r\n<ul>\r\n<li><a href=\"#\">Aliquam libero</a></li>\r\n<li><a href=\"#\">Consectetuer adipiscing elit</a></li>\r\n<li><a href=\"#\">metus aliquam pellentesque</a></li>\r\n<li><a href=\"#\">Suspendisse iaculis mauris</a></li>\r\n<li><a href=\"#\">Urnanet non molestie semper</a></li>\r\n<li><a href=\"#\">Proin gravida orci porttitor</a></li>\r\n</ul>\r\n</li>\r\n<li>\r\n<h2>Archives</h2>\r\n<ul>\r\n<li><a href=\"#\">September</a> (23)</li>\r\n<li><a href=\"#\">August</a> (31)</li>\r\n<li><a href=\"#\">July</a> (31)</li>\r\n<li><a href=\"#\">June</a> (30)</li>\r\n<li><a href=\"#\">May</a> (31)</li>\r\n<li><a href=\"#\">April</a> (30)</li>\r\n<li><a href=\"#\">March</a> (31)</li>\r\n<li><a href=\"#\">February</a> (28)</li>\r\n<li><a href=\"#\">January</a> (31)</li>\r\n</ul>\r\n</li>\r\n</ul>'),(77,'<ul>\r\n<li>\r\n<h2>Product</h2>\r\n<ul>\r\n<li><a href=\"laws\">Lawns</a></li>\r\n<li><a href=\"#\">Putting greens</a></li>\r\n<li><a href=\"#\">Playgrounds</a></li>\r\n<li><a href=\"#\">Sport Turf</a></li>\r\n<li><a href=\"#\">Puppy pads</a></li>\r\n<li><a href=\"#\">Accessories</a></li>\r\n<li><a href=\"#\">Training</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(78,'<ul>\r\n<li>\r\n<h2>Product</h2>\r\n<ul>\r\n<li><a href=\"index.php/laws\">Lawns</a></li>\r\n<li><a href=\"#\">Putting greens</a></li>\r\n<li><a href=\"#\">Playgrounds</a></li>\r\n<li><a href=\"#\">Sport Turf</a></li>\r\n<li><a href=\"#\">Puppy pads</a></li>\r\n<li><a href=\"#\">Accessories</a></li>\r\n<li><a href=\"#\">Training</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(79,'<ul>\r\n<li>\r\n<h2>Product</h2>\r\n<ul>\r\n<li><a href=\"index.php/about/laws\">Lawns</a></li>\r\n<li><a href=\"#\">Putting greens</a></li>\r\n<li><a href=\"#\">Playgrounds</a></li>\r\n<li><a href=\"#\">Sport Turf</a></li>\r\n<li><a href=\"#\">Puppy pads</a></li>\r\n<li><a href=\"#\">Accessories</a></li>\r\n<li><a href=\"#\">Training</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(80,'<ul>\r\n<li>\r\n<h2>Product</h2>\r\n<ul>\r\n<li><a href=\"index.php/about/laws\">Lawns</a></li>\r\n<li><a href=\"#\">Putting greens</a></li>\r\n<li><a href=\"#\">Playgrounds</a></li>\r\n<li><a href=\"#\">Sport Turf</a></li>\r\n<li><a href=\"#\">Puppy pads</a></li>\r\n<li><a href=\"#\">Accessories</a></li>\r\n<li><a href=\"#\">Training</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(85,'<h2>More Views</h2>'),(88,'<p>Nature\'s Sod Light is a lush, beautiful artificial lawn product designed for the residential homeowner looking for a durable artificial grass solution that also is gentle on the wallet! True to the theme of our Nature\'s Sod Line - it is an olive bi-color grass with an olive green and brown thatch. It is a very thin yarn resulting in a very soft texture - but also constructed with a wider gauge and very high stitch rate - to give it a very plush/full look. By constructing the artificial grass this way we are able to offer the product at the price of a 50 oz per sq yard grass while offering the aesthetic of a 75 oz per sq yard synthetic grass. It is a tremendous value product – the ideal balance of realism, fullness, and price.<br /><br />Roll width: 15\'<br />Roll length: up to 100\'</p>'),(89,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(90,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"../index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(91,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"#\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(104,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(105,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(109,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(110,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(111,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"#\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(114,'<p>This is my first blog post.</p>'),(115,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"location.php\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(116,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"index.php/about/location\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(117,'<p><strong>Address:</strong></p>\r\n<p><strong>Town:</strong></p>\r\n<p><strong>Phone:</strong></p>'),(119,'<ul>\r\n<li>\r\n<h2>Product</h2>\r\n<ul>\r\n<li><a href=\"index.php/about/laws\">Lawns</a></li>\r\n<li><a href=\"#\">Putting greens</a></li>\r\n<li><a href=\"#\">Playgrounds</a></li>\r\n<li><a href=\"#\">Sport Turf</a></li>\r\n<li><a href=\"#\">Puppy pads</a></li>\r\n<li><a href=\"#\">Accessories</a></li>\r\n<li><a href=\"#\">Training</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(120,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"index.php/about/location\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(123,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"/concrete/about/location\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(124,'<ul>\r\n<li>\r\n<h2>Product</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php/about/laws\">Lawns</a></li>\r\n<li><a href=\"#\">Putting greens</a></li>\r\n<li><a href=\"#\">Playgrounds</a></li>\r\n<li><a href=\"#\">Sport Turf</a></li>\r\n<li><a href=\"#\">Puppy pads</a></li>\r\n<li><a href=\"#\">Accessories</a></li>\r\n<li><a href=\"#\">Training</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(125,'<ul>\r\n<li>\r\n<h2>Main Menu</h2>\r\n<ul>\r\n<li><a href=\"/concrete/index.php\">Home</a></li>\r\n<li><a href=\"#\">Company</a></li>\r\n<li><a href=\"#\">Galleries</a></li>\r\n<li><a href=\"/concrete/index.php/about/location\">Location</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>\r\n</li>\r\n</ul>'),(130,'<div class=\"header\">\r\n<div class=\"logo\"><img src=\"images/logo/logo.png\" alt=\"logo\" /></div>\r\n</div>'),(131,'<div class=\"header\">\r\n<div class=\"logo\"><img src=\"/concrete/images/logo/logo.png\" alt=\"logo\" /></div>\r\n</div>'),(132,'<div class=\"header\">\r\n<div class=\"logo\"><img src=\"themes/boundless/images/logo/logo.png\" alt=\"logo\" /></div>\r\n</div>'),(133,'<div class=\"gallery\">\r\n<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>\r\n</div>'),(134,''),(135,'<div class=\"subheader-icon\"> </div>\r\n<div class=\"subheader-text\"><img src=\"themes/boundless/images/subheader/ABOUT-US.png\" alt=\"About Us\" /> <span>Who We Are.</span></div>\r\n<div class=\"subheader-separator\"> </div>'),(136,''),(137,'<div class=\"subheader-icon\"> </div>\r\n<div class=\"subheader-text\"><img src=\"themes/boundless/images/subheader/ABOUT-US.png\" alt=\"About Us\" /> <span>Who We Are.</span></div>\r\n<div class=\"subheader-separator\"> </div>'),(138,'<div class=\"m-bottom-40 summary\">We are a small group of freelancers from Brighton who have come together to combine our mighty powers!</div>\r\n<div class=\"m-bottom-40 summary-small\">Sed ut perspiciatis unde omnis iste natus error sit voluptatema accusantium terre estere doloremque laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis et quasi.</div>\r\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatema accusantium terre estere doloremque laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beataes vitae dicta sunt explicabo. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur Quis autem vel enum iure reprehenderit. Sed ut perspiciatis unde omnis iste natus error sit voluptatema accusantium terre estere.</p>'),(139,'<p><img class=\"m-bottom-50\" src=\"themes/boundless/images/about/about_image.png\" alt=\"image_01\" /></p>\r\n<p>Terre estere doloremque laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beataes vitae dicta sunt explicabo. Ut enim ad minima.</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam.</p>'),(140,'<div class=\"subheader-icon\"> </div>\r\n<div class=\"subheader-text\"><img src=\"themes/boundless/images/subheader/SERVICES.png\" alt=\"Services\" /> <span>What We Do.</span></div>\r\n<div class=\"subheader-separator\"> </div>'),(141,'<div class=\"summary\">We will supply you with the tools you need to help you take your business to the next level...</div>'),(142,'<p>Terre estere doloremique sei laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis rete et quasi architecto beataes vitae dicta sunt...</p>'),(143,'<p><img src=\"themes/boundless/images/services/services_image.png\" alt=\"image_02\" /></p>'),(144,'<ul class=\"services-list\">\r\n<li><img src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" /> <span class=\"service-title\">WEB DESIGN</span>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>\r\n</li>\r\n<li><img src=\"themes/boundless/images/services/services_icon_02.png\" alt=\"icon_02\" /> <span class=\"service-title\">DATABASE</span>\r\n<p>Sit dolor amet, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo.</p>\r\n</li>\r\n<li><img src=\"themes/boundless/images/services/services_icon_03.png\" alt=\"icon_03\" /> <span class=\"service-title\">Always On Time</span>\r\n<p>Donec justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, lorem ipsum.</p>\r\n</li>\r\n<li><img src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">Photography</span>\r\n<p>Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec.</p>\r\n</li>\r\n</ul>'),(145,'<div class=\"subheader-icon\"> </div>\r\n<div class=\"subheader-text\"><img src=\"themes/boundless/images/subheader/SHOWCASE.png\" alt=\"Showcase\" /> <span>Check Out Our Portfolio.</span></div>\r\n<div class=\"subheader-separator\"> </div>'),(146,'<div class=\"summary\">Below is a small sample of some of the work we have completed over the last year...</div>'),(147,'<p>Terre estere doloremique sei laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis rete et quasi architecto beataes vitae dicta sunt...</p>'),(148,'<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_01.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_01.jpg\" alt=\"image_01\" /></a></div>\r\n<span>Nuovo estere doloremque perse</span>\r\n<p>Photography / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_02.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_02.jpg\" alt=\"image_02\" /></a></div>\r\n<span>Webus estere doloremque lorem</span>\r\n<p>Website / Print</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_03.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_03.jpg\" alt=\"image_03\" /></a></div>\r\n<span>Sone estere doloremque nunc</span>\r\n<p>Marketing / Photography</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_04.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_04.jpg\" alt=\"image_04\" /></a></div>\r\n<span>Agenti estere doloremque amet</span>\r\n<p>Print / Corporate ID</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_05.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_05.jpg\" alt=\"image_05\" /></a></div>\r\n<span>Terre estere doloremque sei perse</span>\r\n<p>Website / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_06.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_06.jpg\" alt=\"image_06\" /></a></div>\r\n<span>Nulla estere doloremque sense</span>\r\n<p>Marketing / Commercial</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_07.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_07.jpg\" alt=\"image_07\" /></a></div>\r\n<span>Setta estere doloremque noi</span>\r\n<p>App / Mobile</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_08.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_08.jpg\" alt=\"image_08\" /></a></div>\r\n<span>Lorem estere doloremque sei</span>\r\n<p>Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_09.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_09.jpg\" alt=\"image_09\" /></a></div>\r\n<span>Donec estere doloremque lorem</span>\r\n<p>Art / Print / Marketing</p>\r\n</div>'),(149,'<p> </p>\r\n<!--div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_01.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_01.jpg\" alt=\"image_01\" /></a></div>\r\n<span>Nuovo estere doloremque perse</span>\r\n<p>Photography / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_02.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_02.jpg\" alt=\"image_02\" /></a></div>\r\n<span>Webus estere doloremque lorem</span>\r\n<p>Website / Print</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_03.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_03.jpg\" alt=\"image_03\" /></a></div>\r\n<span>Sone estere doloremque nunc</span>\r\n<p>Marketing / Photography</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_04.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_04.jpg\" alt=\"image_04\" /></a></div>\r\n<span>Agenti estere doloremque amet</span>\r\n<p>Print / Corporate ID</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_05.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_05.jpg\" alt=\"image_05\" /></a></div>\r\n<span>Terre estere doloremque sei perse</span>\r\n<p>Website / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_06.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_06.jpg\" alt=\"image_06\" /></a></div>\r\n<span>Nulla estere doloremque sense</span>\r\n<p>Marketing / Commercial</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_07.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_07.jpg\" alt=\"image_07\" /></a></div>\r\n<span>Setta estere doloremque noi</span>\r\n<p>App / Mobile</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_08.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_08.jpg\" alt=\"image_08\" /></a></div>\r\n<span>Lorem estere doloremque sei</span>\r\n<p>Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_09.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_09.jpg\" alt=\"image_09\" /></a></div>\r\n<span>Donec estere doloremque lorem</span>\r\n<p>Art / Print / Marketing</p>\r\n</div-->'),(150,'<div class=\"subheader-icon\"> </div>\r\n<div class=\"subheader-text\"><img src=\"themes/boundless/images/subheader/BOUNDLESS-TEAM.png\" alt=\"Boundless Team\" /> <span>Meet Our Awesome Team.</span></div>\r\n<div class=\"subheader-separator\"> </div>'),(151,'<div class=\"summary\">Per se neque porro quisquam est, quister set dolorem per sei donec nulla est seper donec est lorem ipsum...</div>'),(152,'<p>Terre estere doloremique sei laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis rete et quasi architecto beataes vitae dicta sunt...</p>'),(153,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_01.png\" alt=\"team_01\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">jane johnson doe</div>\r\n<div class=\"team-member-position\">lead designer</div>\r\n<div class=\"socio\"> </div>\r\n<p>Lorem ipsum doloremique sei laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis rete et quasi architecto beataes vitae dicta sunt.</p>'),(154,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_02.png\" alt=\"team_02\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">anna jones doe</div>\r\n<div class=\"team-member-position\">ceo</div>\r\n<div class=\"socio\"> </div>\r\n<p>Terre estere doloremique sei laudantium, totames remeseo aperiam, eaque ipsa quae ab illo inventore veritatis rete et quasi architecto beataes vitae dicta sunt.</p>'),(155,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_03.png\" alt=\"team_03\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">marry jones doe</div>\r\n<div class=\"team-member-position\">developer</div>\r\n<div class=\"socio\"> </div>\r\n<p>Doloremique sei laudantium totames es remeseo aperiam, eaque ipsa quae ab illo inventore veritatis rete et quasi architecto beataes vitae dicta sunt terre estere.</p>'),(156,'<div class=\"subheader-icon\"> </div>\r\n<div class=\"subheader-text\"><img src=\"themes/boundless/images/subheader/CONTACT.png\" alt=\"Contact\" /> <span>Stay In Touch With Us. Don\'t Spam.</span></div>\r\n<div class=\"subheader-separator\"> </div>'),(157,'<div class=\"column-340\">\r\n<div class=\"summary m-bottom-40\">Drop us a line using contact form below</div>\r\n<p class=\"m-bottom-22\">Sed ut perspiciatis unde omnis iste natus error sit voluptatema accusantium terre estere...</p>\r\n</div>\r\n<div class=\"clear\"> </div>\r\n<form id=\"contact-form\" action=\"\" method=\"post\" enctype=\"application/x-www-form-urlencoded\"><label for=\"name\">Name *</label> <input id=\"name\" class=\"rounded\" type=\"text\" name=\"contact[name]\" /> <label for=\"name\">E-mail *</label> <input id=\"email\" class=\"rounded\" type=\"text\" name=\"contact[email]\" /> <label for=\"name\">Subject *</label> <input id=\"subject\" class=\"rounded\" type=\"text\" name=\"contact[subject]\" /> <label for=\"name\">Message *</label> <textarea id=\"message\" class=\"rounded\" name=\"contact[message]\" rows=\"7\" cols=\"42\"></textarea></form>\r\n<p><input id=\"submit-mail\" class=\"submit-btn rounded\" type=\"button\" value=\"SEND\" /></p>\r\n<div id=\"mail-message\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div id=\"mail-message-window\">\r\n<div id=\"mail-message-header\"> </div>\r\n<p id=\"mail-failure\">Unable to send your email!</p>\r\n<p id=\"invalid-email\">Please enter valid email address!</p>\r\n<p id=\"empty-field\">Please fill out all the fields in order to send us a message.</p>\r\n<p id=\"mail-success\">Your email has been successfully sent to Kronos©DryThemes!</p>\r\n<input id=\"mail-message-btn\" class=\"mail-message-btn rounded\" type=\"button\" value=\"OK\" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>'),(158,'<div class=\"summary m-bottom-40\">Nullam dictum felis eu pede mollis pretium. Integer tinci...</div>\r\n<p class=\"m-bottom-22\">Sed ut perspiciatis unde omnis iste natus error sit voluptatema accusantium terre estere doloremque este laudantium ed ut perspiciatis unde omnis iste. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>\r\n<p>Name of the street 123/4 <br /> Name of City <br /> Name of Country</p>\r\n<p>Phone: +321 123 456 7 <br /> Fax: +321 123 456 7 <br /> E-mail: johndoe@yoursitegoeshere.com <br /> Website: www.yoursitegoeshere.com</p>\r\n<div class=\"socio_contact m-top-50\"> </div>'),(159,'<p><img src=\"themes/boundless/images/footer/footer_logo.png\" alt=\"footer_image\" /></p>'),(160,'<p class=\"m-bottom-40\">© Copyright 2012 DryThemes - Built with love :)</p>'),(161,''),(162,'<p> </p>\r\n<!--div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_01.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_01.jpg\" alt=\"image_01\" /></a></div>\r\n<span>Nuovo estere doloremque perse</span>\r\n<p>Photography / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_02.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_02.jpg\" alt=\"image_02\" /></a></div>\r\n<span>Webus estere doloremque lorem</span>\r\n<p>Website / Print</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_03.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_03.jpg\" alt=\"image_03\" /></a></div>\r\n<span>Sone estere doloremque nunc</span>\r\n<p>Marketing / Photography</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_04.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_04.jpg\" alt=\"image_04\" /></a></div>\r\n<span>Agenti estere doloremque amet</span>\r\n<p>Print / Corporate ID</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_05.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_05.jpg\" alt=\"image_05\" /></a></div>\r\n<span>Terre estere doloremque sei perse</span>\r\n<p>Website / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_06.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_06.jpg\" alt=\"image_06\" /></a></div>\r\n<span>Nulla estere doloremque sense</span>\r\n<p>Marketing / Commercial</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_07.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_07.jpg\" alt=\"image_07\" /></a></div>\r\n<span>Setta estere doloremque noi</span>\r\n<p>App / Mobile</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_08.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_08.jpg\" alt=\"image_08\" /></a></div>\r\n<span>Lorem estere doloremque sei</span>\r\n<p>Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_09.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_09.jpg\" alt=\"image_09\" /></a></div>\r\n<span>Donec estere doloremque lorem</span>\r\n<p>Art / Print / Marketing</p>\r\n</div-->'),(163,'<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_01.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_01.jpg\" alt=\"image_01\" /></a></div>\r\n<span>Nuovo estere doloremque perse</span>\r\n<p>Photography / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_02.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_02.jpg\" alt=\"image_02\" /></a></div>\r\n<span>Webus estere doloremque lorem</span>\r\n<p>Website / Print</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_03.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_03.jpg\" alt=\"image_03\" /></a></div>\r\n<span>Sone estere doloremque nunc</span>\r\n<p>Marketing / Photography</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_04.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_04.jpg\" alt=\"image_04\" /></a></div>\r\n<span>Agenti estere doloremque amet</span>\r\n<p>Print / Corporate ID</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_05.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_05.jpg\" alt=\"image_05\" /></a></div>\r\n<span>Terre estere doloremque sei perse</span>\r\n<p>Website / Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_06.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_06.jpg\" alt=\"image_06\" /></a></div>\r\n<span>Nulla estere doloremque sense</span>\r\n<p>Marketing / Commercial</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_07.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_07.jpg\" alt=\"image_07\" /></a></div>\r\n<span>Setta estere doloremque noi</span>\r\n<p>App / Mobile</p>\r\n</div>\r\n<div class=\"pic-frame rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_08.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_08.jpg\" alt=\"image_08\" /></a></div>\r\n<span>Lorem estere doloremque sei</span>\r\n<p>Print / Marketing</p>\r\n</div>\r\n<div class=\"pic-frame nomargin rounded\">\r\n<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_09.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_09.jpg\" alt=\"image_09\" /></a></div>\r\n<span>Donec estere doloremque lorem</span>\r\n<p>Art / Print / Marketing</p>\r\n</div>'),(164,'<p><img src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" /> <span class=\"service-title\">WEB DESIGN</span></p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>'),(166,'<p><img src=\"themes/boundless/images/services/services_icon_02.png\" alt=\"icon_02\" /> <span class=\"service-title\">DATABASE</span></p>\r\n<p>Sit dolor amet, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo.</p>'),(167,'<p><img src=\"themes/boundless/images/services/services_icon_03.png\" alt=\"icon_03\" /> <span class=\"service-title\">Always On Time</span></p>\r\n<p>Donec justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, lorem ipsum.</p>'),(168,'<p><img src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">Photography</span></p>\r\n<p>Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec.</p>'),(169,'<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_01.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_01.jpg\" alt=\"image_01\" /></a></div>\r\n<p><span>Nuovo estere doloremque perse</span></p>\r\n<p>Photography / Print / Marketing</p>'),(170,'<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_02.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_02.jpg\" alt=\"image_02\" /></a></div>\r\n<p><span>Webus estere doloremque lorem</span></p>\r\n<p>Website / Print</p>'),(171,'<div class=\"gallery\">\r\n<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"clear\"> </div>\r\n<div id=\"gallery-nav\"> </div>'),(172,'<div class=\"gallery\">\r\n<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"clear\"> </div>\r\n<div id=\"gallery-nav\"> </div>'),(173,'<div class=\"gallery\">\r\n<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>\r\n</div>'),(174,'<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>'),(175,'<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>'),(176,'<div class=\"gallery\">\r\n<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>\r\n</div>'),(178,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" /> <span class=\"service-title\">WEB DESIGN</span></p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>'),(179,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_02.png\" alt=\"icon_02\" /> <span class=\"service-title\">DATABASE</span></p>\r\n<p>Sit dolor amet, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo.</p>'),(180,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_03.png\" alt=\"icon_03\" /> <span class=\"service-title\">Always On Time</span></p>\r\n<p>Donec justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, lorem ipsum.</p>'),(181,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">Photography</span></p>\r\n<p>Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec.</p>'),(182,'<div class=\"gallery\">\r\n<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>\r\n</div>'),(183,''),(188,'<div class=\"gallery\">\r\n<div style=\"width: 1960px; height: 400px; position: relative; left: 0px; top: 0px;\">\r\n<div class=\"gallery-slide gallery-slide-first\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\" style=\"float: left; position: relative;\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>\r\n</div>'),(189,'<div class=\"gallery\">\r\n<div class=\"gallery-slide gallery-slide-first\"><img src=\"themes/boundless/images/slide/slide01.png\" alt=\"slide 01\" /></div>\r\n<div class=\"gallery-slide\"><img src=\"themes/boundless/images/slide/slide02.png\" alt=\"slide 02\" /></div>\r\n</div>'),(190,'<div id=\"parallax-layer\">\r\n<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" /> <span class=\"service-title\">WEB DESIGN</span></p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>\r\n</div>'),(191,'<div class=\"parallax-layer\">\r\n<p><img class=\"service-title\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>\r\n</div>'),(192,'<ul>\r\n<li class=\"parallax-layer\">\r\n<p><img class=\"service-title\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>\r\n</li>\r\n</ul>'),(193,'<p><img class=\"service-title\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>'),(194,'<p><img style=\"position: absolute;\" src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">Photography</span></p>\r\n<p>Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec.</p>'),(195,'<p><img src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">Photography</span></p>\r\n<p>Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec.</p>'),(196,'<div class=\"parallax-layer\" style=\"width: 455px; height: 330px; position: absolute; top: 0px;\">\r\n<p><img class=\"service-title\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi. Aenean imperdiet. Etiam ultricies nisi vel...</p>\r\n</div>'),(197,'<p><img class=\"service-title\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi.</p>'),(198,'<p class=\"parallax-layer\"><img class=\"service-title\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi.</p>'),(199,'<p><img class=\"service-title\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi.</p>'),(200,'<p><img class=\"service-title\" style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />WEB DESIGN</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi.</p>'),(201,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">Photography</span></p>\r\n<p>Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec.</p>'),(202,'<p><img class=\"service-title\" style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />DESIGN &amp; CREATIVE</p>\r\n<p>Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi.</p>'),(203,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_02.png\" alt=\"icon_02\" /> STRATEGY &amp; TECHNOLOGY</p>\r\n<p>Sit dolor amet, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo.</p>'),(204,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_03.png\" alt=\"icon_03\" /> <span class=\"service-title\">INTEGRATED COMMERCE<br /></span></p>\r\n<p>If all you need is an ecommerce solution – we can do that. But if you are an existing retailer the chances are you already have a number of systems.  We can integrate any system with your website, in fact we can make your systems all work a lot more efficiently for your business.</p>'),(205,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">PROFITABLE MARKETING<br /></span></p>\r\n<p>Justo, fringilla vel, aliquetese nec vulputate eget, arcu. In enim justo, rhoncuse ut imperdiet a, venenatis vitae, justo donec.</p>'),(206,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_03.png\" alt=\"icon_03\" /> <span class=\"service-title\">INTEGRATED COMMERCE<br /></span></p>\r\n<p>E-commerce solutions &amp; multi-channel experts</p>\r\n<p>System Integration | E-commerce Websites | Infra-structure &amp; Hosting | Multi-site Integration</p>'),(207,'<p>You want a website that looks good? Of course you do. You want a website that performs well and makes you money ? Naturally. So this is what we do, good looking websites that perform...</p>'),(208,'<p><img class=\"service-title\" style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />DESIGN &amp; CREATIVE</p>\r\n<p>Engaging &amp; optimised design for all your needs</p>\r\n<p>Web | Print | Digital | Banner Ads | Copywriting | Content | Photography | Product Presentation</p>'),(209,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_04.png\" alt=\"icon_04\" /> <span class=\"service-title\">PROFITABLE MARKETING<br /></span></p>\r\n<p>Attract &amp; engage your customers</p>\r\n<p>SEO | PPC | E-mail Marketing | Social Media | Market Places &amp; Shopping Channels | Affiliates</p>'),(210,'<p><img class=\"service-title\" style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />DESIGN &amp; CREATIVE</p>\r\n<p><em>Engaging &amp; optimised design for all your needs</em></p>\r\n<p>Web | Print | Digital | Banner Ads | Copywriting | Content | Photography | Product Presentation</p>'),(211,'<p><img class=\"service-title\" style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_01.png\" alt=\"icon_01\" />DESIGN &amp; CREATIVE</p>\r\n<p>Engaging &amp; optimised design for all your needs</p>\r\n<p>Web | Print | Digital | Banner Ads | Copywriting | Content | Photography | Product Presentation</p>'),(212,'<p><img style=\"”width: 1000px;\" src=\"themes/boundless/images/services/services_icon_02.png\" alt=\"icon_02\" /> STRATEGY &amp; TECHNOLOGY</p>\r\n<p>Building intuitive, useful &amp; accessible solutions</p>\r\n<p>Accessibility | Compliance | Usability | Build | CMS &amp; CRM Systems | Website Stategy</p>'),(213,'<p><img src=\"{CCM:FID_18}\" alt=\"KUNG-FU.png\" width=\"455\" height=\"397\" /></p>'),(214,'<div class=\"subheader-icon\"> </div>\r\n<div class=\"subheader-text\"><img src=\"themes/boundless/images/subheader/CONTACT.png\" alt=\"Contact\" /> <span>Stay In Touch With Us.</span></div>\r\n<div class=\"subheader-separator\"> </div>'),(215,'<div class=\"column-340\">\r\n<div class=\"summary m-bottom-40\">Drop us a line using contact form below</div>\r\n<p class=\"m-bottom-22\">We have tried to keep things easy to digest throughout this site, so if you would like to have a more in depth chat filling your details below and we will get back to you.</p>\r\n</div>\r\n<div class=\"clear\"> </div>\r\n<form id=\"contact-form\" action=\"\" method=\"post\" enctype=\"application/x-www-form-urlencoded\"><label for=\"name\">Name *</label> <input id=\"name\" class=\"rounded\" type=\"text\" name=\"contact[name]\" /> <label for=\"name\">E-mail *</label> <input id=\"email\" class=\"rounded\" type=\"text\" name=\"contact[email]\" /> <label for=\"name\">Subject *</label> <input id=\"subject\" class=\"rounded\" type=\"text\" name=\"contact[subject]\" /> <label for=\"name\">Message *</label> <textarea id=\"message\" class=\"rounded\" name=\"contact[message]\" rows=\"7\" cols=\"42\"></textarea></form>\r\n<p><input id=\"submit-mail\" class=\"submit-btn rounded\" type=\"button\" value=\"SEND\" /></p>\r\n<div id=\"mail-message\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div id=\"mail-message-window\">\r\n<div id=\"mail-message-header\"> </div>\r\n<p id=\"mail-failure\">Unable to send your email!</p>\r\n<p id=\"invalid-email\">Please enter valid email address!</p>\r\n<p id=\"empty-field\">Please fill out all the fields in order to send us a message.</p>\r\n<p id=\"mail-success\">Your email has been successfully sent to Kronos©DryThemes!</p>\r\n<input id=\"mail-message-btn\" class=\"mail-message-btn rounded\" type=\"button\" value=\"OK\" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>'),(216,'<div class=\"summary m-bottom-40\">Nestled in the heart of Brighton, &amp; located just off the seafront.</div>\r\n<p class=\"m-bottom-22\">Just because we love the E-commerce world of websites, doesn\'t mean we don\'t like a visitor or two! If you prefer to talk to a human being and sus us out for yourself, then give us a call on the number below and come meet the team in our friendly little office.</p>\r\n<p>15 - 17 Middle Street, Suite 303,<br /> Brighton<br /> East Sussex<br /> BN1 1AL</p>\r\n<p>Phone: +321 123 456 7 <br /> Fax: +321 123 456 7 <br /> E-mail: info@boundlesscommerce.co.uk <br /> Website: www.boundlesscommerce.co.uk</p>\r\n<div class=\"socio_contact m-top-50\"> </div>'),(217,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_01.png\" alt=\"team_01\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">MARK HORTON</div>\r\n<div class=\"team-member-position\">E-CODE WARRIOR</div>\r\n<div class=\"socio\"> </div>\r\n<p>Mark Horton has too many websites to his name to recall, if its not sitting in a dark corner coding he isn\'t really that interested. If you have a really difficult problem to solve just wind him up and point him in the right direction.</p>'),(218,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_02.png\" alt=\"team_02\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">BECKIE WATERS</div>\r\n<div class=\"team-member-position\">DESIGNY DESIGNER</div>\r\n<div class=\"socio\"> </div>\r\n<p>Qualifications and experience up to her eyeballs, not only is Beckie a talented designer she can also knock out some amazing photography. An html whizz she can combine an eye for the best with practical application.</p>'),(219,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_03.png\" alt=\"team_03\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">Julie Fawcett</div>\r\n<div class=\"team-member-position\">Business Development</div>\r\n<div class=\"socio\"> </div>\r\n<p>Client liaison is the name of the game, a seasoned old timer Julie sold www.sheactive.co.uk a few years back and knows the pain and the routes to success on the client side.</p>'),(220,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_01.png\" alt=\"team_01\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">MARK HORTON</div>\r\n<div class=\"team-member-position\">E-CODE WARRIOR</div>\r\n<div class=\"socio\"> </div>\r\n<p>Mark Horton has too many websites to his name to recall, if its not sitting in a dark corner coding he isn\'t really that interested. If you have a really difficult problem to solve just wind him up and point him in the right direction.</p>'),(221,'<div class=\"summary\">Now you\'ve read about us, why not meet us? We love design, cool websites and walks in the park..!!</div>'),(222,'<p>At the core of Boundless are three individuals whose paths have crossed many times in the past, and have now realised their combined power could help to change the e-commerce world in a positive way.</p>'),(223,'<p><img src=\"{CCM:FID_20}\" alt=\"ICON-01-NEW.png\" width=\"90\" height=\"90\" />DESIGN &amp; CREATIVE</p>\r\n<p>Engaging &amp; optimised design for all your needs</p>\r\n<p>Web | Print | Digital | Banner Ads | Copywriting | Content | Photography | Product Presentation</p>'),(224,'<p><img src=\"{CCM:FID_21}\" alt=\"ICON-02-NEW.png\" width=\"90\" height=\"90\" /> STRATEGY &amp; TECHNOLOGY</p>\r\n<p>Building intuitive, useful &amp; accessible solutions</p>\r\n<p>Accessibility | Compliance | Usability | Build | CMS &amp; CRM Systems | Website Stategy</p>'),(225,'<p><img src=\"{CCM:FID_22}\" alt=\"ICON-03-NEW.png\" width=\"90\" height=\"90\" /> INTEGRATED COMMERCE</p>\r\n<p>E-commerce solutions &amp; multi-channel experts</p>\r\n<p>System Integration | E-commerce Websites | Infra-structure &amp; Hosting | Multi-site Integration</p>'),(226,'<p><img src=\"{CCM:FID_23}\" alt=\"ICON-04-NEW.png\" width=\"90\" height=\"90\" />PROFITABLE MARKETING</p>\r\n<p>Attract &amp; engage your customers</p>\r\n<p>SEO | PPC | E-mail Marketing | Social Media | Market Places &amp; Shopping Channels | Affiliates</p>'),(227,'<p>At the core of Boundless are three individuals whose paths have crossed many times over the years. They have now realised that their combined power could help to improve the e-commerce world!</p>'),(228,'<div class=\"m-bottom-40 summary\">We are a small group of freelancers from Brighton who have come together to combine our mighty powers!</div>\r\n<div class=\"m-bottom-40 summary-small\">This is what we do... Good looking websites that perform.  We start with your brief, add a few ideas and some experience of our own and come back to you with some great looking designs for all your pages.</div>\r\n<p>This is what we do... Good looking websites that perform.  We start with your brief, add a few ideas and some experience of our own and come back to you with some great looking designs for all your pages.</p>'),(229,'<div class=\"m-bottom-40 summary\">We are a small group of freelancers from Brighton who have come together to combine our mighty powers!</div>\r\n<div class=\"m-bottom-40 summary-small\">Whether you’re new to the ecommerce world, or simply want to improve the look, feel &amp; usability of your website, our aim is to offer a straightforward ‘no gimmicks’ service.</div>\r\n<p>Our services won’t simply stop at design and build. We’ll guide you through the digital world with simple systems that work for your business. We can integrate any system with your website, in fact we can make your systems all work a lot more efficiently for your business.</p>\r\n<p>Imagine a streamlined process between buying, order management, production of marketing materials and of course your website. We are much more than an e-commerce solutions provider we are a multi-channel specialist and we can definitely take some of the pain from your business and save you money.</p>'),(230,'<p><img class=\"m-bottom-50\" src=\"themes/boundless/images/about/about_image.png\" alt=\"image_01\" /></p>\r\n<p>We understand that your commercial requirements are more than just a website. We can help to shape your social reach, print campaigns, newsletters &amp; SEO needs, as well as analyse and advise you with what is and what isn\'t working.</p>\r\n<p>Perhaps most importantly of all, we have all come from a deep routed e-commerce background and have experienced the highs and lows that come with running an online company. So chances are, we will understand where you\'re coming from and what you are trying to achieve.</p>'),(231,'<p><img src=\"themes/boundless/images/about/about_image.png\" alt=\"image_01\" width=\"401\" height=\"347\" /></p>\r\n<p>We understand that your commercial requirements are more than just a website. We can help to shape your social reach, print campaigns, newsletters &amp; SEO needs, as well as analyse and advise you with what is and what isn\'t working.</p>\r\n<p>Perhaps most importantly of all, we have all come from a deep routed e-commerce background and have experienced the highs and lows that come with running an online company. So chances are, we will understand where you\'re coming from and what you are trying to achieve.</p>'),(232,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_01.png\" alt=\"team_01\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">MARK HORTON</div>\r\n<div class=\"team-member-position\">E-CODE WARRIOR</div>\r\n<p>Mark Horton has too many websites to his name to recall, if its not sitting in a dark corner coding he isn\'t really that interested. If you have a really difficult problem to solve just wind him up and point him in the right direction.</p>'),(233,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_02.png\" alt=\"team_02\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">BECKIE WATERS</div>\r\n<div class=\"team-member-position\">DESIGNY DESIGNER</div>\r\n<p>Qualifications and experience up to her eyeballs, not only is Beckie a talented designer she can also knock out some amazing photography. An html whizz she can combine an eye for the best with practical application.</p>'),(234,'<p><img class=\"m-bottom-30\" src=\"themes/boundless/images/team/team_03.png\" alt=\"team_03\" /></p>\r\n<div class=\"team-member-name  m-bottom-10\">Julie Fawcett</div>\r\n<div class=\"team-member-position\">Business Development</div>\r\n<p>Client liaison is the name of the game, a seasoned old timer Julie sold www.sheactive.co.uk a few years back and knows the pain and the routes to success on the client side.</p>'),(235,'<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"themes/boundless/images/about/about_image.png\" alt=\"image_01\" width=\"401\" height=\"347\" /></p>\r\n<p>We understand that your commercial requirements are more than just a website. We can help to shape your social reach, print campaigns, newsletters &amp; SEO needs, as well as analyse and advise you with what is and what isn\'t working.</p>\r\n<p>Perhaps most importantly of all, we have all come from a deep routed e-commerce background and have experienced the highs and lows that come with running an online company. So chances are, we will understand where you\'re coming from and what you are trying to achieve.</p>'),(236,'<div class=\"column-340\">\r\n<div class=\"summary m-bottom-40\">Drop us a line using the contact form</div>\r\n<p class=\"m-bottom-22\">We have tried to keep things easy to digest throughout this site, so if you would like to have a more in depth chat fill out your details below and we will get back to you.</p>\r\n</div>\r\n<div class=\"clear\"> </div>\r\n<form id=\"contact-form\" action=\"\" method=\"post\" enctype=\"application/x-www-form-urlencoded\"><label for=\"name\">Name *</label> <input id=\"name\" class=\"rounded\" type=\"text\" name=\"contact[name]\" /> <label for=\"name\">E-mail *</label> <input id=\"email\" class=\"rounded\" type=\"text\" name=\"contact[email]\" /> <label for=\"name\">Subject *</label> <input id=\"subject\" class=\"rounded\" type=\"text\" name=\"contact[subject]\" /> <label for=\"name\">Message *</label> <textarea id=\"message\" class=\"rounded\" name=\"contact[message]\" rows=\"7\" cols=\"42\"></textarea></form>\r\n<p><input id=\"submit-mail\" class=\"submit-btn rounded\" type=\"button\" value=\"SEND\" /></p>\r\n<div id=\"mail-message\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div id=\"mail-message-window\">\r\n<div id=\"mail-message-header\"> </div>\r\n<p id=\"mail-failure\">Unable to send your email!</p>\r\n<p id=\"invalid-email\">Please enter valid email address!</p>\r\n<p id=\"empty-field\">Please fill out all the fields in order to send us a message.</p>\r\n<p id=\"mail-success\">Your email has been successfully sent to Kronos©DryThemes!</p>\r\n<input id=\"mail-message-btn\" class=\"mail-message-btn rounded\" type=\"button\" value=\"OK\" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>'),(237,'<div class=\"summary m-bottom-40\">Nestled in the heart of Brighton, &amp; located just off the seafront</div>\r\n<p class=\"m-bottom-22\">Just because we love the E-commerce world of websites, doesn\'t mean we don\'t like a visitor or two! If you would prefer to talk to a human being and take some time to sus us out for yourself, then give us a call on the number below and come meet the team in our friendly little office.</p>\r\n<p>15 - 17 Middle Street, Suite 303,<br /> Brighton<br /> East Sussex<br /> BN1 1AL</p>\r\n<p>Phone: +321 123 456 7 <br /> E-mail: info@boundlesscommerce.co.uk <br /> Website: www.boundlesscommerce.co.uk</p>\r\n<div class=\"socio_contact m-top-50\"> </div>'),(238,'<div class=\"pic\"><a title=\"Lorem Ipsum\" href=\"themes/boundless/images/portfolio/originals/portfolio_large_02.jpg\"><img src=\"themes/boundless/images/portfolio/thumbs/portfolio_small_02.jpg\" alt=\"image_02\" /></a></div>\r\n<p><span>Webus estere doloremque lorem</span> <br />Website / Print</p>'),(239,'<div class=\"pic\"><img src=\"{CCM:FID_24}\" alt=\"HOME_SEALSKINZ-use.jpg\" width=\"1500\" height=\"1218\" /></div>\r\n<p><span>SealSkinz</span></p>\r\n<p>Website / Print / Marketing / Photography</p>'),(240,'<div class=\"pic\"><img src=\"{CCM:FID_25}\" alt=\"SEALSKINZ-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>SealSkinz</span> <br />Web / Print / Marketing / Product</p>'),(241,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_27}\';\" src=\"{CCM:FID_26}\" alt=\"SEALSKINZ-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>SealSkinz</span> <br />Web / Print / Marketing / Product</p>'),(242,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_27}\';\" onmouseout=\"this.src=\'{CCM:FID_26}\';\" src=\"{CCM:FID_26}\" alt=\"SEALSKINZ-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>SealSkinz</span> <br />Web / Print / Marketing / Product</p>'),(243,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_30}\';\" onmouseout=\"this.src=\'{CCM:FID_29}\';\" src=\"{CCM:FID_29}\" alt=\"ASQUITH-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>Asquith London</span><br />Website / Marketing / Product</p>'),(244,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_32}\';\" onmouseout=\"this.src=\'{CCM:FID_31}\';\" src=\"{CCM:FID_31}\" alt=\"PAPILLON-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>Papillon</span><br />Website / EPOS</p>'),(245,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_32}\';\" onmouseout=\"this.src=\'{CCM:FID_31}\';\" src=\"{CCM:FID_31}\" alt=\"PAPILLON-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>Papillon</span><br />Website / EPOS</p>'),(246,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_32}\';\" onmouseout=\"this.src=\'{CCM:FID_31}\';\" src=\"{CCM:FID_31}\" alt=\"PAPILLON-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>Sheactive</span><br />Web / Systems / All Marketing</p>'),(247,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_32}\';\" onmouseout=\"this.src=\'{CCM:FID_31}\';\" src=\"{CCM:FID_31}\" alt=\"PAPILLON-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>SportsBraBar</span><br />Web / Integration / Marketing</p>'),(248,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_32}\';\" onmouseout=\"this.src=\'{CCM:FID_31}\';\" src=\"{CCM:FID_31}\" alt=\"PAPILLON-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>Attractive</span><br />Web / Integration / Marketing</p>'),(249,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_32}\';\" onmouseout=\"this.src=\'{CCM:FID_31}\';\" src=\"{CCM:FID_31}\" alt=\"PAPILLON-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>Royal Pavilion Brighton</span><br />Website / Integration</p>'),(250,'<div class=\"pic\"><img onmouseover=\"this.src=\'{CCM:FID_32}\';\" onmouseout=\"this.src=\'{CCM:FID_31}\';\" src=\"{CCM:FID_31}\" alt=\"PAPILLON-THUMB.jpg\" width=\"262\" height=\"262\" /></div>\r\n<p><span>Cadenhead\'s Whisky Shop</span><br />Website / Marketing / SEO / PPC</p>'),(251,'<div class=\"m-bottom-40 summary\">We are a group of talented individuals from Brighton who have come together to combine our mighty powers!</div>\r\n<div class=\"m-bottom-40 summary-small\">Whether you’re new to the ecommerce world, or simply want to improve the look, feel &amp; usability of your website, our aim is to offer a straightforward ‘no gimmicks’ service.</div>\r\n<p>Our services won’t simply stop at design and build. We’ll guide you through the digital world with simple systems that work for your business. We can integrate any system with your website, in fact we can make your systems all work a lot more efficiently for your business.</p>\r\n<p>Imagine a streamlined process between buying, order management, production of marketing materials and of course your website. We are much more than an e-commerce solutions provider we are a multi-channel specialist and we can definitely take some of the pain from your business and save you money.</p>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
INSERT INTO `btCoreStackDisplay` VALUES (30,121),(33,121),(36,121),(106,138),(122,141),(126,141),(127,141),(128,141);
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (8,'A'),(9,'B'),(12,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateArchive`
--

DROP TABLE IF EXISTS `btDateArchive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateArchive` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `numMonths` int(11) DEFAULT '12',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateArchive`
--

LOCK TABLES `btDateArchive` WRITE;
/*!40000 ALTER TABLE `btDateArchive` DISABLE KEYS */;
INSERT INTO `btDateArchive` VALUES (46,'Archives',132,12),(52,'Archives',132,12);
/*!40000 ALTER TABLE `btDateArchive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNav`
--

DROP TABLE IF EXISTS `btDateNav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNav`
--

LOCK TABLES `btDateNav` WRITE;
/*!40000 ALTER TABLE `btDateNav` DISABLE KEYS */;
INSERT INTO `btDateNav` VALUES (100,0,1,1,0,0,'current_page',0,0,0,0,0,0),(101,0,0,0,0,1,'current_page',0,0,0,0,0,0),(102,0,0,0,7,0,'current_page',0,0,0,0,0,0);
/*!40000 ALTER TABLE `btDateNav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlashContent`
--

DROP TABLE IF EXISTS `btFlashContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlashContent`
--

LOCK TABLES `btFlashContent` WRITE;
/*!40000 ALTER TABLE `btFlashContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlashContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
INSERT INTO `btForm` VALUES (38,1354042286,'Contact Us','Thanks!',0,'',0,0,0),(92,1354143159,'Laws','Thanks!',0,'',0,0,0),(93,1354143159,'Laws','Thanks!',0,'',1,137,0),(94,1354144229,'Laws','Thanks!',0,'',1,0,0);
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
INSERT INTO `btFormAnswerSet` VALUES (1,1354143159,'2012-11-28 23:03:54',1);
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
INSERT INTO `btFormAnswers` VALUES (1,1,8,'','Prova invio testo');
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
INSERT INTO `btFormQuestions` VALUES (5,4,38,1354042286,'Name','field','',0,50,3,1),(6,5,38,1354042286,'Email:','email','',0,50,3,1),(7,6,38,1354042286,'What are you contacting us about?','radios','Question%%Comment%%Urgent Issue%%To Say Hello%%Other',0,50,3,1),(8,7,38,1354042286,'Message','text','',0,50,3,1),(9,8,92,1354143159,'Do you need help?','field','',0,50,3,1),(10,8,93,1354143159,'Do you need help?','text','',0,50,3,1),(12,9,94,1354144229,'Do you need help?','text','',0,50,3,0);
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
INSERT INTO `btGoogleMap` VALUES (118,'Where we are','brighton',50.82253,-0.137163,14);
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBook`
--

DROP TABLE IF EXISTS `btGuestBook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBook`
--

LOCK TABLES `btGuestBook` WRITE;
/*!40000 ALTER TABLE `btGuestBook` DISABLE KEYS */;
INSERT INTO `btGuestBook` VALUES (34,0,'Tell us what you think','M jS, Y',1,1,0,'');
/*!40000 ALTER TABLE `btGuestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBookEntries`
--

DROP TABLE IF EXISTS `btGuestBookEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBookEntries`
--

LOCK TABLES `btGuestBookEntries` WRITE;
/*!40000 ALTER TABLE `btGuestBookEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBookEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (20,'display_asc','top',0,0,'none','enough',0,0),(22,'display_asc','second_level',0,0,'all','all',0,0),(41,'display_asc','top',0,0,'all','all',0,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
INSERT INTO `btPageList` VALUES (43,12,'chrono_desc',128,0,0,1,0,4,0,'','',1,0,128);
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
INSERT INTO `btSearch` VALUES (42,'Search This Site','Search','','',''),(50,'Search Blog','Search','/blog','','');
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshow`
--

DROP TABLE IF EXISTS `btSlideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshow`
--

LOCK TABLES `btSlideshow` WRITE;
/*!40000 ALTER TABLE `btSlideshow` DISABLE KEYS */;
INSERT INTO `btSlideshow` VALUES (86,0,'ORDER',NULL,NULL),(129,0,'ORDER',NULL,NULL),(184,0,'ORDER',NULL,NULL),(185,0,'ORDER',NULL,NULL),(186,0,'RANDOM-SET',NULL,NULL);
/*!40000 ALTER TABLE `btSlideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshowImg`
--

DROP TABLE IF EXISTS `btSlideshowImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshowImg`
--

LOCK TABLES `btSlideshowImg` WRITE;
/*!40000 ALTER TABLE `btSlideshowImg` DISABLE KEYS */;
INSERT INTO `btSlideshowImg` VALUES (1,86,11,'',5,2,0,0,110),(2,86,10,'',5,2,0,1,692),(3,129,12,'',5,2,0,0,350),(4,129,13,'',5,2,0,1,350),(5,129,14,'',5,2,0,2,350),(6,129,15,'',5,2,0,3,350),(7,184,17,'',5,2,0,0,400),(8,184,16,'',5,2,0,1,400),(11,185,17,'',5,0,0,0,400),(12,185,16,'',5,0,0,1,400),(15,186,17,'',5,0,0,0,400),(16,186,16,'',5,0,0,1,400);
/*!40000 ALTER TABLE `btSlideshowImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
INSERT INTO `btTags` VALUES (14,'Tags',132,'page',0),(45,'',132,'cloud',0),(51,'Tags',132,'cloud',0);
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btasmillerGallery`
--

DROP TABLE IF EXISTS `btasmillerGallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btasmillerGallery` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `smallThumbs` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '600',
  `maxWidth` int(10) unsigned DEFAULT '800',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btasmillerGallery`
--

LOCK TABLES `btasmillerGallery` WRITE;
/*!40000 ALTER TABLE `btasmillerGallery` DISABLE KEYS */;
INSERT INTO `btasmillerGallery` VALUES (107,0,0,600,800),(108,0,0,300,400),(187,0,0,400,980);
/*!40000 ALTER TABLE `btasmillerGallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btasmillerGalleryImg`
--

DROP TABLE IF EXISTS `btasmillerGalleryImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btasmillerGalleryImg` (
  `GalleryImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  `imgWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`GalleryImgId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btasmillerGalleryImg`
--

LOCK TABLES `btasmillerGalleryImg` WRITE;
/*!40000 ALTER TABLE `btasmillerGalleryImg` DISABLE KEYS */;
INSERT INTO `btasmillerGalleryImg` VALUES (1,107,10,'',0,692,NULL),(2,107,8,'',1,150,NULL),(3,108,10,'',0,692,NULL),(4,108,8,'',1,150,NULL),(5,187,17,'',0,400,NULL),(6,187,16,'',1,400,NULL);
/*!40000 ALTER TABLE `btasmillerGalleryImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'boundless'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-03 14:28:58
