-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: my_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add collection',7,'add_collection'),(26,'Can change collection',7,'change_collection'),(27,'Can delete collection',7,'delete_collection'),(28,'Can view collection',7,'view_collection'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add allergeni',9,'add_allergeni'),(34,'Can change allergeni',9,'change_allergeni'),(35,'Can delete allergeni',9,'delete_allergeni'),(36,'Can view allergeni',9,'view_allergeni'),(37,'Can add tipo prodotto',10,'add_tipoprodotto'),(38,'Can change tipo prodotto',10,'change_tipoprodotto'),(39,'Can delete tipo prodotto',10,'delete_tipoprodotto'),(40,'Can view tipo prodotto',10,'view_tipoprodotto'),(41,'Can add commanda',11,'add_commanda'),(42,'Can change commanda',11,'change_commanda'),(43,'Can delete commanda',11,'delete_commanda'),(44,'Can view commanda',11,'view_commanda'),(45,'Can add conto',12,'add_conto'),(46,'Can change conto',12,'change_conto'),(47,'Can delete conto',12,'delete_conto'),(48,'Can view conto',12,'view_conto'),(49,'Can add conto bakup',13,'add_contobakup'),(50,'Can change conto bakup',13,'change_contobakup'),(51,'Can delete conto bakup',13,'delete_contobakup'),(52,'Can view conto bakup',13,'view_contobakup'),(53,'Can add tavolo',14,'add_tavolo'),(54,'Can change tavolo',14,'change_tavolo'),(55,'Can delete tavolo',14,'delete_tavolo'),(56,'Can view tavolo',14,'view_tavolo'),(57,'Can add product allergeni',15,'add_productallergeni'),(58,'Can change product allergeni',15,'change_productallergeni'),(59,'Can delete product allergeni',15,'delete_productallergeni'),(60,'Can view product allergeni',15,'view_productallergeni'),(61,'Can add ordine',16,'add_ordine'),(62,'Can change ordine',16,'change_ordine'),(63,'Can delete ordine',16,'delete_ordine'),(64,'Can view ordine',16,'view_ordine'),(65,'Can add elemento ordine',17,'add_elementoordine'),(66,'Can change elemento ordine',17,'change_elementoordine'),(67,'Can delete elemento ordine',17,'delete_elementoordine'),(68,'Can view elemento ordine',17,'view_elementoordine'),(69,'Can add tagged item',18,'add_taggeditem'),(70,'Can change tagged item',18,'change_taggeditem'),(71,'Can delete tagged item',18,'delete_taggeditem'),(72,'Can view tagged item',18,'view_taggeditem'),(73,'Can add tag',19,'add_tag'),(74,'Can change tag',19,'change_tag'),(75,'Can delete tag',19,'delete_tag'),(76,'Can view tag',19,'view_tag'),(77,'Can add review',20,'add_review'),(78,'Can change review',20,'change_review'),(79,'Can delete review',20,'delete_review'),(80,'Can view review',20,'view_review');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$sZIIFWsMYDUErhhn4MIJgb$9dPdodNVIVfaeYwqnAdLF2Rvu6CB+ygIpCTBhSWvJQ0=','2023-12-30 09:44:52.054279',1,'root','','','ser.sebastiani@gmail.com',1,1,'2023-11-25 19:14:51.440862');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_allergeni`
--

DROP TABLE IF EXISTS `commanda_allergeni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_allergeni` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_allergeni`
--

LOCK TABLES `commanda_allergeni` WRITE;
/*!40000 ALTER TABLE `commanda_allergeni` DISABLE KEYS */;
INSERT INTO `commanda_allergeni` VALUES (1,'Glutine',1),(2,'Uova',2),(3,'Latticini',3),(4,'Pesce',4),(5,'Molluschi',5),(6,'Crostacei',6),(7,'Frutta a guscio',7),(8,'Arachidi',8),(9,'Soia',9),(10,'Sesamo',10),(11,'Senape',11),(12,'Lupini',12),(13,'Anidride solforosa e solfit',13);
/*!40000 ALTER TABLE `commanda_allergeni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_collection`
--

DROP TABLE IF EXISTS `commanda_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_collection` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_collection`
--

LOCK TABLES `commanda_collection` WRITE;
/*!40000 ALTER TABLE `commanda_collection` DISABLE KEYS */;
INSERT INTO `commanda_collection` VALUES (1,'Pizzeria'),(2,'Cucina'),(3,'Bar');
/*!40000 ALTER TABLE `commanda_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_commanda`
--

DROP TABLE IF EXISTS `commanda_commanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_commanda` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `product_id` bigint NOT NULL,
  `tavolo_id` bigint NOT NULL,
  `production_status` varchar(1) NOT NULL,
  `note` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `commanda_commanda_product_id_aa47c602_fk_commanda_product_id` (`product_id`),
  KEY `commanda_commanda_tavolo_id_32f3008b` (`tavolo_id`),
  CONSTRAINT `commanda_commanda_product_id_aa47c602_fk_commanda_product_id` FOREIGN KEY (`product_id`) REFERENCES `commanda_product` (`id`),
  CONSTRAINT `commanda_commanda_tavolo_id_32f3008b_fk_commanda_tavolo_id` FOREIGN KEY (`tavolo_id`) REFERENCES `commanda_tavolo` (`id`),
  CONSTRAINT `commanda_commanda_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_commanda`
--

LOCK TABLES `commanda_commanda` WRITE;
/*!40000 ALTER TABLE `commanda_commanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `commanda_commanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_product`
--

DROP TABLE IF EXISTS `commanda_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `price` decimal(6,2) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `collection_id` bigint NOT NULL,
  `tipo_prodotto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `commanda_product_collection_id_28e45272_fk_commanda_` (`collection_id`),
  KEY `commanda_product_tipo_prodotto_id_10e1a6e3_fk_commanda_` (`tipo_prodotto_id`),
  CONSTRAINT `commanda_product_collection_id_28e45272_fk_commanda_` FOREIGN KEY (`collection_id`) REFERENCES `commanda_collection` (`id`),
  CONSTRAINT `commanda_product_tipo_prodotto_id_10e1a6e3_fk_commanda_` FOREIGN KEY (`tipo_prodotto_id`) REFERENCES `commanda_tipoprodotto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_product`
--

LOCK TABLES `commanda_product` WRITE;
/*!40000 ALTER TABLE `commanda_product` DISABLE KEYS */;
INSERT INTO `commanda_product` VALUES (2,'Primo Ragù','Ragù.',8.00,'2024-01-04 11:28:04.989000',2,7),(3,'Primo Pesto','Pesto.',8.00,'2024-01-04 11:27:58.475106',2,7),(4,'Primo Penne alla zingara','Ragù panna e porcini.',9.00,'2024-01-04 11:28:55.130154',2,7),(5,'Coca piccola','Coca piccola.',3.00,'2023-11-25 22:36:02.279041',3,2),(6,'Coca media','Coca media.',4.00,'2023-11-25 22:35:57.543923',3,2),(7,'Pizza Margherita','Pomodoro, mozzarella.',6.50,'2024-01-04 11:30:14.877875',1,9),(8,'Pizza Marinara','Pomodoro, aglio, origano.',6.00,'2024-01-04 11:30:01.218130',1,9),(9,'Pizza Salamino piccante','Pomodoro, mozzarella, salame piccante.',8.00,'2024-01-04 11:31:53.596853',1,9),(10,'Calsone classico','Prosciutto cotto, mozzarella.',9.00,'2024-01-04 11:35:51.467403',1,11),(11,'Pizza Bomba','Pomodoro, mozzarella, salamino, capperi, peperoncino, nduja.',10.00,'2024-01-04 11:37:01.602019',1,13),(12,'Pizza Prosciutto cotto','Pomodoro, mozzarella, prosciutto cotto.',7.50,'2024-01-04 11:30:35.396900',1,9),(13,'Pizza Prosciutto crudo','Pomodoro, mozzarella, prosciutto crudo',8.00,'2024-01-04 11:31:41.217496',1,9),(14,'Pizza Prosciutto e funghi','Pomodoro, mozzarella, prosciutto cotto, funghi.',8.50,'2024-01-04 11:32:22.954122',1,9),(15,'Pizza Napoli','Pomodoro, mozzarella, capperi, acciughe.',9.00,'2024-01-04 11:35:40.312858',1,9),(16,'Pizza Vera Napoli','Pomodoro, mozzarella, capperi, pomodori ciliegini, aglio, origano.',8.00,'2024-01-04 11:31:32.948486',1,9),(17,'Pizza 4 stagioni:','Pomodoro, mozzarella, prosciutto cotto, funghi, carciofi, olive.',9.00,'2024-01-04 11:35:30.941782',1,9),(18,'Primo Pomodoro','Pomodoro.',6.50,'2024-01-04 11:26:55.536387',2,7),(19,'Primo Arrabbiata','Arrabbiata.',7.00,'2024-01-04 11:27:15.918818',2,7),(20,'Primo Rosè','Rosè.',7.00,'2024-01-04 11:27:06.507414',2,7),(21,'Primo Nduja','Nduja.',8.00,'2024-01-04 11:27:51.175791',2,7),(22,'Primo  4 formaggi','4 formaggi.',8.00,'2024-01-04 11:27:40.375338',2,7),(23,'Primo Panna e prosciutto cotto','Panna e prosciutto cotto.',8.00,'2024-01-04 11:27:29.132924',2,7),(24,'Acqua 50 cl','Acqua 50 cl.',1.50,'2023-11-26 00:39:09.207674',3,1),(25,'Acqua 1 L','Acqua 1 L.',1.50,'2023-11-26 00:40:11.149111',3,1),(26,'Lattina','Lattina Coca',2.50,'2024-01-07 01:35:37.192310',3,1),(27,'Caraffa 1 L Coca','Caraffa 1 L Coca.',9.00,'2023-11-26 00:43:02.090800',3,2),(28,'Birra piccola','Birra piccola.',3.50,'2023-11-26 00:42:04.402628',3,2),(29,'Birra media','Birra media.',4.50,'2023-11-26 00:42:29.549749',3,2),(30,'Caraffa 1 L Birra','Caraffa 1 L Birra.',10.00,'2023-11-26 00:43:27.363917',3,2),(31,'Konig Ludwig hell 0.5l','Konig Ludwig hell 0.5l.',4.00,'2023-11-26 00:44:06.803787',3,3),(32,'Ceres  33 cl','Ceres  33 cl.',3.00,'2023-11-26 00:44:30.992550',3,3),(33,'Beck’s   33 cl','Beck’s   33 cl.',3.00,'2023-11-26 00:44:56.716478',3,3),(34,'Tennent’s','Tennent’s.',3.00,'2023-11-26 00:45:16.538643',3,3),(35,'Moretti  66 cl','Moretti  66 cl.',3.00,'2023-11-26 00:45:34.878840',3,3),(36,'Haineken  66 cl','Haineken  66 cl',4.00,'2023-11-26 00:46:03.955299',3,3),(37,'La Pieve Rosso Toscano','La Pieve Rosso Toscano',6.00,'2023-11-26 00:46:33.684105',3,4),(38,'Chianti docg superiore','Chianti docg superiore',10.00,'2023-11-26 00:46:55.107590',3,4),(39,'Negroamaro  Salento','Negroamaro  Salento',12.00,'2023-11-26 00:47:35.888648',3,4),(40,'La Pieve bianco','La Pieve bianco',6.00,'2023-11-26 00:48:02.046274',3,15),(41,'Pinot Grigio','Pinot Grigio',10.00,'2023-11-26 00:48:20.505006',3,15),(42,'Chardonnay La Pieve','Chardonnay La Pieve',12.00,'2023-11-26 00:48:37.630133',3,15),(43,'Pizza Capricciosa','Pomodoro, mozzarella, prosciutto cotto, funghi, carciofi, olive, wurstel.',9.00,'2024-01-04 11:35:17.711182',1,9),(44,'Pizza Salsiccia','Pomodoro, mozzarella, salsiccia',8.00,'2024-01-04 11:31:20.745348',1,9),(45,'Pizza Speck e mascarpone','Pomodoro, mozzarella, speck , mascarpone.',8.00,'2024-01-04 11:31:10.114274',1,9),(46,'Pizza 4 formaggi','Pomodoro, mozzarella, scamorza, grana, gorgonzola.',9.00,'2024-01-04 11:35:07.232921',1,9),(47,'Pizza Speck e scamorza','Pomodoro, mozzarella, speck, scamorza.',8.00,'2024-01-04 11:30:50.990571',1,9),(48,'Pizza Vegetariana','Pomodoro, mozzarella, zucchine, melanzane, peperoni.',7.00,'2024-01-04 11:30:25.578587',1,9),(49,'Pizza Tonno e cipolla','Pomodoro, mozzarella, tonno, cipolla.',9.00,'2024-01-04 11:34:41.247321',1,9),(50,'Pizza Rucolina','Pomodoro, mozzarella, crudo e rucola.',8.50,'2024-01-04 11:32:11.173173',1,9),(51,'Antipasto Classico Bruschette','Tagliere di bruschette miste con sformatini.',9.00,'2024-01-07 01:41:19.843349',2,5),(52,'Antipasto Classico Salumi','Selezione di salumi toscani, formaggi, sottoli, crostini, zonzelle.',9.00,'2024-01-07 01:40:58.222282',2,5),(53,'Antipasto Nespolo','Selezione di formaggi con marmellate e miele, crostini, mozzarelline fior di latte, prosciutto crudo, zonzelle .',9.00,'2024-01-04 11:24:18.090733',2,5),(54,'Antipasto Piccante','Selezione di formaggi con marmellate e miele, crostini, mozzarelline fior di latte, prosciutto crudo, zonzelle .',9.00,'2024-01-04 11:23:10.919225',2,5),(55,'Antipasto Gustoso','Prosciutto crudo, gorgonzola, stracchino, rucola, zonzelle.',9.00,'2024-01-04 11:28:18.826056',2,5),(56,'Gran Tagliere','Per due persone, a scelta tra classico, nespolo, gustoso e piccante.',22.00,'2024-01-04 11:25:33.402701',2,5),(57,'Insalatona','Insalata mista, tonno, mozzarella, pomodori, olive nere.',10.00,'2024-01-04 11:29:14.854548',2,8),(58,'Insalata di mare','Insalata mista, frutti di mare, pomodori, olive nere, prezzemolo.',12.00,'2024-01-07 00:48:16.079111',2,8),(59,'Insalatona di tacchino','Insalata mista, tacchino arrosto, pomodoro, mozzarella.',10.00,'2024-01-04 11:29:06.145140',2,8),(60,'Insalatona di salmone','Insalata mista, salmone affumicato, pomodoro, mozzarella, olive nere.',12.00,'2024-01-04 11:25:09.463657',2,8),(61,'Pizza Biancaneve','Mozzarella.',6.00,'2024-01-04 11:29:38.618469',1,10),(62,'Pizza Nespolo','Mozzarella, pomodoro a fette, prosciutto crudo, grana.',9.00,'2024-01-04 11:34:11.820345',1,9),(63,'Pizza Bianca Inverno','Mozzarella, patatine fritte, funghi, rosmarino.',10.00,'2024-01-04 11:36:50.789314',1,10),(64,'Pizza Porcini','Mozzarella, funghi porcini.',11.00,'2024-01-04 11:37:23.818356',1,10),(65,'Pizza Salsiccia e friarielli','Mozzarella, salsiccia, friarielli.',9.00,'2024-01-04 11:34:27.885981',1,9),(66,'Covaccino all’olio','Sale, olio.',5.00,'2023-12-11 11:06:36.715442',1,10),(68,'Calzone Ripieno','Prosciutto cotto, mozzarella, funghi, carciofi, olive.',10.00,'2024-01-04 11:36:36.859858',1,11),(69,'Calzone Ricottino','Mozzarella, salamino piccante, ricotta, pepe.',9.00,'2024-01-04 11:33:08.982269',1,11),(70,'Diavolo d’un calzone','Pomodoro, mozzarella, salamino piccante,capperi, parmigiano, peperoncino.',10.00,'2024-01-04 11:36:13.987111',1,11),(71,'Pizza Andy','Mozzarella in cottura e prosciutto cotto in uscita.',9.00,'2024-01-04 11:32:51.851742',1,12),(72,'Pizza Emma','Mozzarella in cottura, prosciutto crudo in uscita.',9.00,'2024-01-04 11:32:43.331596',1,11),(73,'Pizza Maialona','Pomodoro, mozzarella, prosciutto cotto, salamino, salsiccia, wurstel.',10.00,'2024-01-04 11:36:00.883279',1,13),(74,'Pizza Amore','Pomodoro, mozzarella, salamino piccante, peperoni, olive.',9.00,'2024-01-04 11:32:34.758296',1,13),(75,'Pizza Frutti di mare','Pomodoro, mozzarella, salamino piccante, peperoni, olive.',11.00,'2024-01-04 11:37:11.047901',1,13),(76,'Pizza Gorgonzola','Pomodoro, mozzarella, gorgonzola.',8.50,'2024-01-04 11:32:02.679496',1,13),(81,'altro Bar','',1.00,'2024-01-05 09:12:31.274888',3,16),(82,'altro Cucina','',1.00,'2024-01-05 09:13:10.972606',2,7),(83,'altro Pizzeria','',1.00,'2024-01-05 09:13:42.981963',1,9);
/*!40000 ALTER TABLE `commanda_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_product_allergeni`
--

DROP TABLE IF EXISTS `commanda_product_allergeni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_product_allergeni` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `allergeni_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `commanda_product_allergeni_product_id_allergeni_id_6903695b_uniq` (`product_id`,`allergeni_id`),
  KEY `commanda_product_all_allergeni_id_dcf2a516_fk_commanda_` (`allergeni_id`),
  CONSTRAINT `commanda_product_all_allergeni_id_dcf2a516_fk_commanda_` FOREIGN KEY (`allergeni_id`) REFERENCES `commanda_allergeni` (`id`),
  CONSTRAINT `commanda_product_all_product_id_68e94c9a_fk_commanda_` FOREIGN KEY (`product_id`) REFERENCES `commanda_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_product_allergeni`
--

LOCK TABLES `commanda_product_allergeni` WRITE;
/*!40000 ALTER TABLE `commanda_product_allergeni` DISABLE KEYS */;
INSERT INTO `commanda_product_allergeni` VALUES (7,2,13),(21,3,3),(22,3,7),(17,4,1),(14,4,2),(18,4,3),(15,4,13),(25,7,1),(26,7,2),(27,8,1),(28,9,1),(29,9,3),(30,10,1),(31,10,3),(32,11,1),(33,11,3),(34,11,13),(35,12,1),(36,12,3),(37,13,1),(38,13,3),(39,14,1),(40,14,3),(41,15,1),(42,15,3),(43,15,4),(44,15,13),(45,16,1),(46,16,3),(47,16,13),(48,17,1),(49,17,3),(50,17,13),(59,20,3),(63,22,3),(64,23,3),(65,43,1),(66,43,3),(67,43,13),(68,44,1),(69,44,13),(70,45,1),(71,45,3),(72,46,1),(73,46,3),(74,47,1),(75,47,3),(76,48,1),(77,48,3),(78,49,1),(79,49,3),(80,49,4),(81,50,1),(82,50,3),(83,51,1),(84,51,2),(85,51,3),(86,51,13),(87,52,1),(88,52,3),(89,52,13),(90,53,1),(91,53,3),(92,53,13),(93,54,1),(94,54,3),(95,54,13),(96,55,1),(97,55,3),(98,57,3),(99,57,13),(100,58,3),(101,58,4),(102,58,5),(103,58,6),(104,58,13),(105,59,3),(106,59,13),(107,60,3),(108,60,4),(109,60,13),(110,61,1),(111,61,3),(112,62,1),(113,62,3),(114,63,1),(115,63,3),(116,64,1),(117,64,3),(118,64,13),(119,65,1),(120,65,3),(121,65,13),(122,66,1),(125,68,1),(126,68,3),(127,68,13),(128,69,1),(129,69,3),(130,70,1),(131,70,3),(132,70,13),(133,71,1),(134,71,3),(135,72,1),(136,72,3),(137,73,1),(138,73,3),(139,74,1),(140,74,3),(141,74,13),(142,75,1),(143,75,3),(144,75,4),(145,75,5),(146,75,6),(147,75,13),(148,76,1),(149,76,3);
/*!40000 ALTER TABLE `commanda_product_allergeni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_review`
--

DROP TABLE IF EXISTS `commanda_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `commanda_review_product_id_f97d8b46_fk_commanda_product_id` (`product_id`),
  CONSTRAINT `commanda_review_product_id_f97d8b46_fk_commanda_product_id` FOREIGN KEY (`product_id`) REFERENCES `commanda_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_review`
--

LOCK TABLES `commanda_review` WRITE;
/*!40000 ALTER TABLE `commanda_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `commanda_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_tavolo`
--

DROP TABLE IF EXISTS `commanda_tavolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_tavolo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `commanda_tavolo_nome_2bd8baae_uniq` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_tavolo`
--

LOCK TABLES `commanda_tavolo` WRITE;
/*!40000 ALTER TABLE `commanda_tavolo` DISABLE KEYS */;
/*!40000 ALTER TABLE `commanda_tavolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanda_tipoprodotto`
--

DROP TABLE IF EXISTS `commanda_tipoprodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanda_tipoprodotto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `collection_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `commanda_tipoprodott_collection_id_885fb5aa_fk_commanda_` (`collection_id`),
  CONSTRAINT `commanda_tipoprodott_collection_id_885fb5aa_fk_commanda_` FOREIGN KEY (`collection_id`) REFERENCES `commanda_collection` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanda_tipoprodotto`
--

LOCK TABLES `commanda_tipoprodotto` WRITE;
/*!40000 ALTER TABLE `commanda_tipoprodotto` DISABLE KEYS */;
INSERT INTO `commanda_tipoprodotto` VALUES (1,'Bibite','Bibite',3),(2,'Bibite alla spina','Bibite alla spina',3),(3,'Birre','Birre',3),(4,'Vini rossi','Vini rossi',3),(5,'Antipasti','Antipasti',2),(7,'Primi','Primi Piatti',2),(8,'Insalatone','Le nostre insalatone',2),(9,'Pizze','Le nostre pizze',1),(10,'Pizze binache','Le bianche',1),(11,'Calzoni','I calzoni',1),(12,'Panozzi','I panozzi',1),(13,'Specialità','Le specialità',1),(14,'Mega pizze','Le mega pizze',1),(15,'Vini bianchi','Vini bianchi',3),(16,'altro','altro',3);
/*!40000 ALTER TABLE `commanda_tipoprodotto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-11-25 19:44:17.661279','13','1 - Anidride solforosa e solfit',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(2,'2023-11-25 19:44:23.928717','8','2 - Arachidi',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(3,'2023-11-25 19:44:51.009484','6','3 - Crostacei',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(4,'2023-11-25 19:44:51.011677','7','4 - Frutta a guscio',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(5,'2023-11-25 19:44:51.013996','1','5 - Glutine',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(6,'2023-11-25 19:44:51.016938','3','6 - Latticini',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(7,'2023-11-25 19:44:51.019495','12','7 - Lupini',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(8,'2023-11-25 19:44:51.021741','5','8 - Molluschi',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(9,'2023-11-25 19:44:51.023394','4','9 - Pesce',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(10,'2023-11-25 19:44:51.025197','11','10 - Senape',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(11,'2023-11-25 19:44:51.027582','10','11 - Sesamo',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(12,'2023-11-25 19:44:51.029401','9','12 - Soia',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(13,'2023-11-25 19:44:51.031245','2','13 - Uova',2,'[{\"changed\": {\"fields\": [\"Number\"]}}]',9,1),(14,'2023-11-25 19:46:11.069303','1','Ragù',1,'[{\"added\": {}}]',8,1),(15,'2023-11-25 19:59:53.241951','1','Ragù',3,'',8,1),(16,'2023-11-25 20:00:58.253020','2','Ragù',1,'[{\"added\": {}}]',8,1),(17,'2023-11-25 20:01:44.338017','3','Pesto',1,'[{\"added\": {}}]',8,1),(18,'2023-11-25 20:02:57.864305','4','Penne alla zingara',1,'[{\"added\": {}}]',8,1),(19,'2023-11-25 20:07:22.893648','5','Coca piccola',1,'[{\"added\": {}}]',8,1),(20,'2023-11-25 20:07:45.246579','6','Coca media',1,'[{\"added\": {}}]',8,1),(21,'2023-11-25 20:12:56.429187','4','Penne alla zingara',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(22,'2023-11-25 20:13:11.982922','3','Pesto',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(23,'2023-11-25 20:14:10.352448','2','Ragù',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(24,'2023-11-25 20:15:44.299461','7','Margherita',1,'[{\"added\": {}}]',8,1),(25,'2023-11-25 20:16:31.680257','8','Marinara',1,'[{\"added\": {}}]',8,1),(26,'2023-11-25 20:17:22.613454','9','Salamino piccante',1,'[{\"added\": {}}]',8,1),(27,'2023-11-25 20:18:48.575289','10','Calsone classico',1,'[{\"added\": {}}]',8,1),(28,'2023-11-25 20:20:32.952681','11','Bomba',1,'[{\"added\": {}}]',8,1),(29,'2023-11-25 20:47:30.716357','1','Tavolo object (1)',1,'[{\"added\": {}}]',14,1),(30,'2023-11-25 20:48:25.382247','1','Tavolo object (1)',3,'',14,1),(31,'2023-11-25 20:51:48.507183','2','Tavolo object (2)',1,'[{\"added\": {}}]',14,1),(32,'2023-11-25 20:52:01.493976','3','Tavolo object (3)',1,'[{\"added\": {}}]',14,1),(33,'2023-11-25 20:52:12.050901','4','Tavolo object (4)',1,'[{\"added\": {}}]',14,1),(34,'2023-11-25 20:52:26.097482','5','Tavolo object (5)',1,'[{\"added\": {}}]',14,1),(35,'2023-11-25 20:54:00.167656','1','Commanda object (1)',1,'[{\"added\": {}}]',11,1),(36,'2023-11-25 20:54:15.549671','1','Commanda object (1)',3,'',11,1),(37,'2023-11-25 20:59:50.749759','2','Commanda object (2)',1,'[{\"added\": {}}]',11,1),(38,'2023-11-25 21:00:27.988881','2','Commanda object (2)',3,'',11,1),(39,'2023-11-25 21:02:13.210737','3','Commanda object (3)',1,'[{\"added\": {}}]',11,1),(40,'2023-11-25 21:02:24.702975','4','Commanda object (4)',1,'[{\"added\": {}}]',11,1),(41,'2023-11-25 21:18:53.958149','4','Order for rospigliosi - Total: $6.50',3,'',11,1),(42,'2023-11-25 21:19:01.146118','3','Order for rospigliosi - Total: $10.00',3,'',11,1),(43,'2023-11-25 21:19:16.264596','5','Order for rospigliosi - Total: $13.00',1,'[{\"added\": {}}]',11,1),(44,'2023-11-25 21:19:35.355218','5','Order for rospigliosi - Total: $19.00',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(45,'2023-11-25 21:19:42.469873','5','Order for rospigliosi - Total: $16.00',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(46,'2023-11-25 21:19:57.503934','5','Order for rospigliosi - Total: $20.00',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(47,'2023-11-25 21:20:06.723416','5','Order for rospigliosi - Total: $10.00',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(48,'2023-11-25 21:20:12.880673','5','Order for rospigliosi - Total: $4.00',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(49,'2023-11-25 21:20:35.527721','5','Order for rospigliosi - Total: $4.00',3,'',11,1),(50,'2023-11-25 21:20:55.872623','6','Order for rospigliosi - Total: $4.00',1,'[{\"added\": {}}]',11,1),(51,'2023-11-25 21:21:04.340127','6','Order for rospigliosi - Total: $6.00',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(52,'2023-11-25 21:21:11.848301','6','Order for rospigliosi - Total: $6.50',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(53,'2023-11-25 21:21:21.320368','6','Order for rospigliosi - Total: $29.50',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(54,'2023-11-25 21:21:31.260820','6','Order for rospigliosi - Total: $44.50',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(55,'2023-11-25 21:21:38.927054','6','Order for rospigliosi - Total: $31.50',2,'[{\"changed\": {\"fields\": [\"Product\"]}}]',11,1),(56,'2023-11-25 21:21:49.902091','6','Order for rospigliosi - Total: $31.50',3,'',11,1),(57,'2023-11-25 21:22:14.668561','7','Order for rospigliosi - Total: $7.00',1,'[{\"added\": {}}]',11,1),(58,'2023-11-25 21:34:49.422014','7','Commanda object (7)',2,'[]',11,1),(59,'2023-11-25 21:40:31.571751','8','Commanda object (8)',1,'[{\"added\": {}}]',11,1),(60,'2023-11-25 21:40:43.464841','8','Commanda object (8)',3,'',11,1),(61,'2023-11-25 22:04:21.573410','9','Commanda object (9)',1,'[{\"added\": {}}]',11,1),(62,'2023-11-25 22:04:46.552879','10','Commanda object (10)',1,'[{\"added\": {}}]',11,1),(63,'2023-11-25 22:05:40.393946','10','Commanda object (10)',3,'',11,1),(64,'2023-11-25 22:05:40.403302','9','Commanda object (9)',3,'',11,1),(65,'2023-11-25 22:19:18.721828','1','Ordine object (1)',1,'[{\"added\": {}}]',16,1),(66,'2023-11-25 22:19:59.811333','2','Ordine object (2)',1,'[{\"added\": {}}]',16,1),(67,'2023-11-25 22:20:30.856743','1','Ordine object (1)',3,'',16,1),(68,'2023-11-25 22:20:38.423730','2','Ordine object (2)',2,'[{\"changed\": {\"fields\": [\"Quantity\"]}}]',16,1),(69,'2023-11-25 22:21:42.283057','3','Ordine object (3)',1,'[{\"added\": {}}]',16,1),(70,'2023-11-25 22:22:46.888888','4','Ordine object (4)',1,'[{\"added\": {}}]',16,1),(71,'2023-11-25 22:23:40.287174','3','Ordine object (3)',3,'',16,1),(72,'2023-11-25 22:24:02.606426','5','Ordine object (5)',1,'[{\"added\": {}}]',16,1),(73,'2023-11-25 22:24:24.411091','2','rospigliosi',3,'',14,1),(74,'2023-11-25 22:25:08.832996','6','Ordine object (6)',1,'[{\"added\": {}}]',16,1),(75,'2023-11-25 22:25:31.120963','5','spinelli',3,'',14,1),(76,'2023-11-25 22:29:37.433043','12','Prosciutto cotto',1,'[{\"added\": {}}]',8,1),(77,'2023-11-25 22:30:16.707900','13','Prosciutto crudo',1,'[{\"added\": {}}]',8,1),(78,'2023-11-25 22:31:05.279691','14','Prosciutto e funghi',1,'[{\"added\": {}}]',8,1),(79,'2023-11-25 22:31:57.432336','15','Napoli',1,'[{\"added\": {}}]',8,1),(80,'2023-11-25 22:33:00.461835','16','Vera napoli',1,'[{\"added\": {}}]',8,1),(81,'2023-11-25 22:33:50.149812','17','4 stagioni:',1,'[{\"added\": {}}]',8,1),(82,'2023-11-25 22:33:55.518855','12','Prosciutto cotto',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(83,'2023-11-25 22:34:04.874093','9','Salamino piccante',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(84,'2023-11-25 22:35:44.377614','11','Bomba',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(85,'2023-11-25 22:35:50.255874','10','Calsone classico',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(86,'2023-11-25 22:35:57.547565','6','Coca media',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(87,'2023-11-25 22:36:02.281445','5','Coca piccola',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(88,'2023-11-25 22:36:11.222691','7','Margherita',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(89,'2023-11-25 22:36:20.533935','8','Marinara',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(90,'2023-11-25 22:36:28.850918','15','Napoli',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(91,'2023-11-25 22:36:34.378158','4','Penne alla zingara',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(92,'2023-11-25 22:36:39.593965','3','Pesto',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(93,'2023-11-25 22:36:44.262645','12','Prosciutto cotto',2,'[]',8,1),(94,'2023-11-25 22:36:49.433659','14','Prosciutto e funghi',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(95,'2023-11-25 22:36:54.657279','2','Ragù',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(96,'2023-11-25 22:36:58.568550','9','Salamino piccante',2,'[]',8,1),(97,'2023-11-25 22:37:16.568628','16','Vera napoli',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(98,'2023-11-25 22:37:20.757804','4','Penne alla zingara',2,'[]',8,1),(99,'2023-11-25 22:37:23.352946','4','Penne alla zingara',2,'[]',8,1),(100,'2023-11-25 22:37:28.312669','14','Prosciutto e funghi',2,'[]',8,1),(101,'2023-11-25 22:38:10.452772','4','2',3,'',14,1),(102,'2023-11-25 22:38:10.462156','3','1',3,'',14,1),(103,'2023-11-25 22:38:35.776042','6','rospigliosi',1,'[{\"added\": {}}]',14,1),(104,'2023-11-25 22:38:50.622512','7','Ordine object (7)',1,'[{\"added\": {}}]',16,1),(105,'2023-11-25 22:46:47.083494','8','Ordine object (8)',1,'[{\"added\": {}}]',16,1),(106,'2023-11-25 23:58:15.416804','7','spinelli',1,'[{\"added\": {}}]',14,1),(107,'2023-11-25 23:58:26.776977','9','Ordine object (9)',1,'[{\"added\": {}}]',16,1),(108,'2023-11-26 00:32:00.532020','18','Pomodoro',1,'[{\"added\": {}}]',8,1),(109,'2023-11-26 00:32:37.856276','19','Arrabbiata',1,'[{\"added\": {}}]',8,1),(110,'2023-11-26 00:34:30.169577','20','Rosè',1,'[{\"added\": {}}]',8,1),(111,'2023-11-26 00:34:51.544122','21','Nduja',1,'[{\"added\": {}}]',8,1),(112,'2023-11-26 00:35:37.754981','2','Ragù',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(113,'2023-11-26 00:35:53.324130','18','Pomodoro',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(114,'2023-11-26 00:36:09.278969','19','Arrabbiata',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(115,'2023-11-26 00:36:18.173605','20','Rosè',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(116,'2023-11-26 00:36:29.681500','21','Nduja',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(117,'2023-11-26 00:36:47.097873','3','Pesto',2,'[{\"changed\": {\"fields\": [\"Allergeni\"]}}]',8,1),(118,'2023-11-26 00:37:30.285547','22','4 formaggi',1,'[{\"added\": {}}]',8,1),(119,'2023-11-26 00:37:59.648950','23','Panna e prosciutto cotto',1,'[{\"added\": {}}]',8,1),(120,'2023-11-26 00:39:09.210671','24','Acqua 50 cl',1,'[{\"added\": {}}]',8,1),(121,'2023-11-26 00:39:52.952563','25','Acqua 1 L',1,'[{\"added\": {}}]',8,1),(122,'2023-11-26 00:40:11.152196','25','Acqua 1 L',2,'[{\"changed\": {\"fields\": [\"Price\"]}}]',8,1),(123,'2023-11-26 00:40:29.155452','26','Lattina Coca',1,'[{\"added\": {}}]',8,1),(124,'2023-11-26 00:41:30.247110','27','Caraffa 1 L',1,'[{\"added\": {}}]',8,1),(125,'2023-11-26 00:42:04.405286','28','Birra piccola',1,'[{\"added\": {}}]',8,1),(126,'2023-11-26 00:42:29.552705','29','Birra media',1,'[{\"added\": {}}]',8,1),(127,'2023-11-26 00:43:02.093795','27','Caraffa 1 L Coca',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',8,1),(128,'2023-11-26 00:43:27.366939','30','Caraffa 1 L Birra',1,'[{\"added\": {}}]',8,1),(129,'2023-11-26 00:44:06.806986','31','Konig Ludwig hell 0.5l',1,'[{\"added\": {}}]',8,1),(130,'2023-11-26 00:44:30.996179','32','Ceres  33 cl',1,'[{\"added\": {}}]',8,1),(131,'2023-11-26 00:44:56.720241','33','Beck’s   33 cl',1,'[{\"added\": {}}]',8,1),(132,'2023-11-26 00:45:16.541284','34','Tennent’s',1,'[{\"added\": {}}]',8,1),(133,'2023-11-26 00:45:34.881479','35','Moretti  66 cl',1,'[{\"added\": {}}]',8,1),(134,'2023-11-26 00:46:03.958241','36','Haineken  66 cl',1,'[{\"added\": {}}]',8,1),(135,'2023-11-26 00:46:33.687345','37','La Pieve Rosso Toscano',1,'[{\"added\": {}}]',8,1),(136,'2023-11-26 00:46:55.111083','38','Chianti docg superiore',1,'[{\"added\": {}}]',8,1),(137,'2023-11-26 00:47:35.891318','39','Negroamaro  Salento',1,'[{\"added\": {}}]',8,1),(138,'2023-11-26 00:48:02.049347','40','La Pieve bianco',1,'[{\"added\": {}}]',8,1),(139,'2023-11-26 00:48:20.508702','41','Pinot Grigio',1,'[{\"added\": {}}]',8,1),(140,'2023-11-26 00:48:37.633022','42','Chardonnay La Pieve',1,'[{\"added\": {}}]',8,1),(141,'2023-11-26 01:03:11.961156','43','Capricciosa',1,'[{\"added\": {}}]',8,1),(142,'2023-11-26 01:04:01.935890','44','Salsiccia',1,'[{\"added\": {}}]',8,1),(143,'2023-11-26 01:05:33.979924','45','Speck e mascarpone',1,'[{\"added\": {}}]',8,1),(144,'2023-11-26 01:10:28.426441','10','Ordine object (10)',1,'[{\"added\": {}}]',16,1),(145,'2023-11-26 01:13:18.292316','6','rospigliosi',2,'[]',14,1),(146,'2023-11-26 01:23:26.112137','46','4 formaggi - Pizze',1,'[{\"added\": {}}]',8,1),(147,'2023-11-26 01:24:23.860808','47','Speck e scamorza - Pizze',1,'[{\"added\": {}}]',8,1),(148,'2023-11-26 01:25:10.928380','48','Vegetariana - Pizze',1,'[{\"added\": {}}]',8,1),(149,'2023-11-26 01:26:43.757918','49','Tonno e cipolla - Pizze',1,'[{\"added\": {}}]',8,1),(150,'2023-11-26 01:27:33.587785','50','Rucolina - Pizze',1,'[{\"added\": {}}]',8,1),(151,'2023-11-26 01:36:29.184560','10','Ordine object (10)',3,'',16,1),(152,'2023-11-26 01:36:29.197658','9','Ordine object (9)',3,'',16,1),(153,'2023-11-26 01:36:40.522549','8','Ordine object (8)',3,'',16,1),(154,'2023-11-26 01:40:10.959986','6','rospigliosi_bis',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',14,1),(155,'2023-11-26 01:44:43.904922','11','Ordine object (11)',1,'[{\"added\": {}}]',16,1),(156,'2023-11-26 01:44:58.677075','12','Ordine object (12)',1,'[{\"added\": {}}]',16,1),(157,'2023-11-26 01:45:55.265396','6','rospigliosi',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',14,1),(158,'2023-11-26 01:47:29.939043','12','Ordine object (12)',3,'',16,1),(159,'2023-11-26 01:47:37.470577','11','Ordine object (11)',2,'[{\"changed\": {\"fields\": [\"Quantity\"]}}]',16,1),(160,'2023-11-26 01:51:11.142926','8','sebastiani',1,'[{\"added\": {}}]',14,1),(161,'2023-11-26 01:51:28.271278','13','Ordine object (13)',1,'[{\"added\": {}}]',16,1),(162,'2023-11-26 01:52:10.699898','14','Ordine object (14)',1,'[{\"added\": {}}]',16,1),(163,'2023-11-26 01:53:03.428380','13','Ordine object (13)',3,'',16,1),(164,'2023-11-26 01:53:19.544202','14','Ordine object (14)',2,'[]',16,1),(165,'2023-11-26 01:56:17.498509','15','Ordine object (15)',1,'[{\"added\": {}}]',16,1),(166,'2023-11-26 01:59:05.564854','15','Ordine object (15)',2,'[{\"changed\": {\"fields\": [\"Quantity\"]}}]',16,1),(167,'2023-11-26 01:59:10.643893','14','Ordine object (14)',2,'[{\"changed\": {\"fields\": [\"Quantity\"]}}]',16,1),(168,'2023-11-26 01:59:20.974851','15','Ordine object (15)',2,'[{\"changed\": {\"fields\": [\"Quantity\"]}}]',16,1),(169,'2023-11-26 02:05:08.487755','16','Ordine object (16)',1,'[{\"added\": {}}]',16,1),(170,'2023-11-26 02:06:30.589289','17','Ordine object (17)',1,'[{\"added\": {}}]',16,1),(171,'2023-11-26 17:24:37.652501','9','test',1,'[{\"added\": {}}]',14,1),(172,'2023-11-27 06:47:25.031656','9','test',3,'',14,1),(173,'2023-11-27 06:48:46.059873','18','Ordine object (18)',1,'[{\"added\": {}}]',16,1),(174,'2023-11-27 06:49:53.596848','10','test',1,'[{\"added\": {}}]',14,1),(175,'2023-11-27 07:24:21.390691','10','test',3,'',14,1),(176,'2023-12-11 10:05:19.523278','51','Rustico - Antipasti',1,'[{\"added\": {}}]',8,1),(177,'2023-12-11 10:09:21.190541','52','Classico - Antipasti',1,'[{\"added\": {}}]',8,1),(178,'2023-12-11 10:18:10.046714','53','Nespolo - Antipasti',1,'[{\"added\": {}}]',8,1),(179,'2023-12-11 10:19:03.354388','54','Piccante - Antipasti',1,'[{\"added\": {}}]',8,1),(180,'2023-12-11 10:20:00.092074','55','Gustoso - Antipasti',1,'[{\"added\": {}}]',8,1),(181,'2023-12-11 10:20:46.471642','56','Gran Tagliere - Antipasti',1,'[{\"added\": {}}]',8,1),(182,'2023-12-11 10:21:44.447793','57','Insalatona - Insalatone',1,'[{\"added\": {}}]',8,1),(183,'2023-12-11 10:23:21.529387','58','Insalata di mare - Insalatone',1,'[{\"added\": {}}]',8,1),(184,'2023-12-11 10:26:46.134838','59','Insalatona di tacchino - Insalatone',1,'[{\"added\": {}}]',8,1),(185,'2023-12-11 10:27:36.916956','60','Insalatona di salmone - Insalatone',1,'[{\"added\": {}}]',8,1),(186,'2023-12-11 10:29:16.325282','61','Biancaneve - Pizze binache',1,'[{\"added\": {}}]',8,1),(187,'2023-12-11 10:29:57.006790','62','Nespolo - Pizze binache',1,'[{\"added\": {}}]',8,1),(188,'2023-12-11 11:04:37.977725','63','Inverno - Pizze binache',1,'[{\"added\": {}}]',8,1),(189,'2023-12-11 11:05:18.216602','64','Porcini - Pizze binache',1,'[{\"added\": {}}]',8,1),(190,'2023-12-11 11:06:01.252225','65','Salsiccia e friarielli - Pizze binache',1,'[{\"added\": {}}]',8,1),(191,'2023-12-11 11:06:36.719624','66','Covaccino all’olio - Pizze binache',1,'[{\"added\": {}}]',8,1),(192,'2023-12-11 14:46:46.880044','67','Classico - Calzoni',1,'[{\"added\": {}}]',8,1),(193,'2023-12-11 14:47:19.431988','68','Ripieno - Calzoni',1,'[{\"added\": {}}]',8,1),(194,'2023-12-11 14:47:57.407946','69','Ricottino - Calzoni',1,'[{\"added\": {}}]',8,1),(195,'2023-12-11 14:48:35.294216','70','Diavolo d’un calzone - Calzoni',1,'[{\"added\": {}}]',8,1),(196,'2023-12-11 14:49:27.701517','71','Andy - Panozzi',1,'[{\"added\": {}}]',8,1),(197,'2023-12-11 14:49:59.793505','72','Emma - Calzoni',1,'[{\"added\": {}}]',8,1),(198,'2023-12-11 14:50:54.034101','73','Maialona - Specialità',1,'[{\"added\": {}}]',8,1),(199,'2023-12-11 16:41:04.996330','74','Amore - Specialità',1,'[{\"added\": {}}]',8,1),(200,'2023-12-11 16:41:53.309938','75','Frutti di mare - Specialità',1,'[{\"added\": {}}]',8,1),(201,'2023-12-11 16:42:31.360182','76','Gorgonzola - Specialità',1,'[{\"added\": {}}]',8,1),(202,'2023-12-11 16:49:26.806906','19','Ordine object (19)',1,'[{\"added\": {}}]',16,1),(203,'2023-12-11 16:57:53.440923','19','Ordine object (19)',3,'',16,1),(204,'2023-12-11 16:57:53.453726','16','Ordine object (16)',3,'',16,1),(205,'2023-12-11 16:57:53.464985','11','Ordine object (11)',3,'',16,1),(206,'2023-12-11 16:57:53.476480','7','Ordine object (7)',3,'',16,1),(207,'2023-12-11 16:58:22.871658','18','Ordine object (18)',3,'',16,1),(208,'2023-12-11 16:58:22.882432','17','Ordine object (17)',3,'',16,1),(209,'2023-12-11 16:58:22.891997','15','Ordine object (15)',3,'',16,1),(210,'2023-12-11 16:58:22.901437','14','Ordine object (14)',3,'',16,1),(211,'2023-12-11 17:00:23.793749','22','Ordine object (22)',1,'[{\"added\": {}}]',16,1),(212,'2023-12-11 17:01:16.094441','23','Ordine object (23)',1,'[{\"added\": {}}]',16,1),(213,'2023-12-11 17:12:07.597927','23','Ordine object (23)',2,'[]',16,1),(214,'2023-12-11 17:12:12.721712','23','Ordine object (23)',2,'[]',16,1),(215,'2023-12-11 17:14:54.238829','24','Ordine object (24)',1,'[{\"added\": {}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (1)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (2)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (3)\"}}]',16,1),(216,'2023-12-11 17:17:35.538564','23','Ordine object (23)',3,'',16,1),(217,'2023-12-11 17:17:40.610790','22','Ordine object (22)',3,'',16,1),(218,'2023-12-11 17:18:21.528759','24','Ordine object (24)',2,'[{\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (1)\", \"fields\": [\"Quantity\"]}}]',16,1),(219,'2023-12-11 17:19:25.828706','24','Ordine object (24)',2,'[{\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (1)\", \"fields\": [\"Product\"]}}]',16,1),(220,'2023-12-11 17:19:42.060200','24','Ordine object (24)',2,'[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (4)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (5)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (6)\"}}]',16,1),(221,'2023-12-11 17:20:11.415835','24','Ordine object (24)',2,'[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]',16,1),(222,'2023-12-11 17:20:24.260989','24','Ordine object (24)',2,'[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]',16,1),(223,'2023-12-11 17:21:19.143869','24','Ordine object (24)',2,'[]',16,1),(224,'2023-12-11 17:21:37.451315','11','test',1,'[{\"added\": {}}]',14,1),(225,'2023-12-11 17:22:40.434226','25','Ordine object (25)',1,'[{\"added\": {}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (7)\"}}]',16,1),(226,'2023-12-11 17:23:37.860065','25','Ordine object (25)',2,'[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (8)\"}}]',16,1),(227,'2023-12-11 17:29:15.102437','25','Ordine object (25)',2,'[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (9)\"}}, {\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (8)\", \"fields\": [\"Product\"]}}]',16,1),(228,'2023-12-11 17:29:23.517468','24','Ordine object (24)',2,'[]',16,1),(229,'2023-12-11 17:29:34.664529','25','Ordine object (25)',2,'[{\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (7)\", \"fields\": [\"Quantity\"]}}]',16,1),(230,'2023-12-11 17:42:09.466352','24','Ordine object (24)',2,'[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (10)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (11)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (12)\"}}]',16,1),(231,'2023-12-11 17:46:48.476485','24','Ordine object (24)',2,'[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]',16,1),(232,'2023-12-11 18:56:00.669825','24','Ordine object (24)',2,'[{\"changed\": {\"fields\": [\"Tavolo\"]}}]',16,1),(233,'2023-12-11 18:56:13.123778','24','Ordine object (24)',2,'[{\"changed\": {\"fields\": [\"Tavolo\"]}}]',16,1),(234,'2023-12-11 22:39:24.135348','1','Tag object (1)',1,'[{\"added\": {}}]',19,1),(235,'2023-12-11 22:43:10.861633','25','Ordine object (25)',2,'[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]',16,1),(236,'2023-12-17 20:28:05.456143','25','Ordine object (25)',2,'[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (13)\"}}]',16,1),(237,'2023-12-18 00:02:28.784527','24','Ordine object (24)',2,'[{\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (11)\", \"fields\": [\"Quantity\"]}}]',16,1),(238,'2023-12-18 00:16:54.777027','1','Commanda object (1)',1,'[{\"added\": {}}]',11,1),(239,'2024-01-04 11:22:18.586722','55','Gustoso',2,'[{\"changed\": {\"fields\": [\"Collection\"]}}]',8,1),(240,'2024-01-04 11:23:10.925306','54','Antipasto Piccante',2,'[{\"changed\": {\"fields\": [\"Title\", \"Collection\"]}}]',8,1),(241,'2024-01-04 11:24:18.115515','53','Antipasto Nespolo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Collection\"]}}]',8,1),(242,'2024-01-04 11:24:38.088505','59','Insalatona di tacchino',2,'[{\"changed\": {\"fields\": [\"Collection\"]}}]',8,1),(243,'2024-01-04 11:24:50.510699','57','Insalatona',2,'[{\"changed\": {\"fields\": [\"Collection\"]}}]',8,1),(244,'2024-01-04 11:25:09.480539','60','Insalatona di salmone',2,'[{\"changed\": {\"fields\": [\"Collection\"]}}]',8,1),(245,'2024-01-04 11:25:33.405958','56','Gran Tagliere',2,'[{\"changed\": {\"fields\": [\"Collection\"]}}]',8,1),(246,'2024-01-04 11:25:47.895883','18','Pasta Pomodoro',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(247,'2024-01-04 11:26:02.056256','20','Pasta Rosè',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(248,'2024-01-04 11:26:14.726832','19','Arrabbiata',2,'[]',8,1),(249,'2024-01-04 11:26:27.730054','23','Pasta Panna e prosciutto cotto',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(250,'2024-01-04 11:26:42.806401','22','Pasta 4 formaggi',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(251,'2024-01-04 11:26:55.541614','18','Primo Pomodoro',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(252,'2024-01-04 11:27:06.511358','20','Primo Rosè',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(253,'2024-01-04 11:27:15.924441','19','Primo Arrabbiata',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(254,'2024-01-04 11:27:29.138134','23','Primo Panna e prosciutto cotto',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(255,'2024-01-04 11:27:40.379168','22','Primo  4 formaggi',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(256,'2024-01-04 11:27:51.179011','21','Primo Nduja',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(257,'2024-01-04 11:27:58.481312','3','Primo Pesto',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(258,'2024-01-04 11:28:04.993709','2','Primo Ragù',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(259,'2024-01-04 11:28:18.834167','55','Antipasto Gustoso',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(260,'2024-01-04 11:28:34.414008','52','Antipasto Classico',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(261,'2024-01-04 11:28:42.959362','51','Antipasto Rustico',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(262,'2024-01-04 11:28:55.133352','4','Primo Penne alla zingara',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(263,'2024-01-04 11:29:06.149052','59','Insalatona di tacchino',2,'[]',8,1),(264,'2024-01-04 11:29:14.858176','57','Insalatona',2,'[]',8,1),(265,'2024-01-04 11:29:38.624695','61','Pizza Biancaneve',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(266,'2024-01-04 11:30:01.221927','8','Pizza Marinara',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(267,'2024-01-04 11:30:14.882403','7','Pizza Margherita',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(268,'2024-01-04 11:30:25.590876','48','Pizza Vegetariana',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(269,'2024-01-04 11:30:35.405605','12','Pizza Prosciutto cotto',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(270,'2024-01-04 11:30:50.995006','47','Pizza Speck e scamorza',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(271,'2024-01-04 11:31:10.116760','45','Pizza Speck e mascarpone',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(272,'2024-01-04 11:31:20.749875','44','Pizza Salsiccia',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(273,'2024-01-04 11:31:32.953471','16','Pizza Vera Napoli',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(274,'2024-01-04 11:31:41.221590','13','Pizza Prosciutto crudo',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(275,'2024-01-04 11:31:53.600860','9','Pizza Salamino piccante',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(276,'2024-01-04 11:32:02.682671','76','Pizza Gorgonzola',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(277,'2024-01-04 11:32:11.176689','50','Pizza Rucolina',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(278,'2024-01-04 11:32:22.957291','14','Pizza Prosciutto e funghi',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(279,'2024-01-04 11:32:34.762790','74','Pizza Amore',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(280,'2024-01-04 11:32:43.334504','72','Pizza Emma',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(281,'2024-01-04 11:32:51.854215','71','Pizza Andy',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(282,'2024-01-04 11:33:08.986707','69','Calzone Ricottino',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(283,'2024-01-04 11:33:17.870005','67','Calzone Classico',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(284,'2024-01-04 11:33:38.720695','65','Pizza Bianca Salsiccia e friarielli',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(285,'2024-01-04 11:33:51.140239','62','Pizza Bianca Nespolo',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(286,'2024-01-04 11:34:11.824628','62','Pizza Nespolo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Tipo prodotto\"]}}]',8,1),(287,'2024-01-04 11:34:27.891037','65','Pizza Salsiccia e friarielli',2,'[{\"changed\": {\"fields\": [\"Title\", \"Tipo prodotto\"]}}]',8,1),(288,'2024-01-04 11:34:41.251850','49','Pizza Tonno e cipolla',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(289,'2024-01-04 11:35:07.239595','46','Pizza 4 formaggi',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(290,'2024-01-04 11:35:17.717749','43','Pizza Capricciosa',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(291,'2024-01-04 11:35:30.945148','17','Pizza 4 stagioni:',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(292,'2024-01-04 11:35:40.320208','15','Pizza Napoli',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(293,'2024-01-04 11:35:51.469954','10','Calsone classico',2,'[]',8,1),(294,'2024-01-04 11:36:00.886158','73','Pizza Maialona',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(295,'2024-01-04 11:36:13.990962','70','Diavolo d’un calzone',2,'[]',8,1),(296,'2024-01-04 11:36:36.862594','68','Calzone Ripieno',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(297,'2024-01-04 11:36:50.793474','63','Pizza Bianca Inverno',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(298,'2024-01-04 11:37:01.605572','11','Pizza Bomba',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(299,'2024-01-04 11:37:11.050181','75','Pizza Frutti di mare',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(300,'2024-01-04 11:37:23.822583','64','Pizza Porcini',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(301,'2024-01-04 14:28:36.695574','88','sdsdffsddsfdsfsdsfsddsffsdf',3,'',14,1),(302,'2024-01-04 14:28:36.784534','87','sdsdffsddsfdsfsdsfsddsf',3,'',14,1),(303,'2024-01-04 14:28:36.823028','86','sdsdffsddsfdsfs',3,'',14,1),(304,'2024-01-04 14:28:36.868949','85','sdsdffsddsf',3,'',14,1),(305,'2024-01-04 14:28:36.944601','84','sdsdffsd',3,'',14,1),(306,'2024-01-04 14:28:37.061377','83','sdsdf',3,'',14,1),(307,'2024-01-04 14:28:37.182378','82','sdfsdfgdfhsdhsdhfghfghsfhfhfgh',3,'',14,1),(308,'2024-01-04 14:28:37.304412','81','sdfsdfgdfhsdhsdhfghfghsfhfhfg',3,'',14,1),(309,'2024-01-04 14:28:37.486022','80','sdfsdfgdfhsdhsdhfghfghsfhfh',3,'',14,1),(310,'2024-01-04 14:28:37.563754','79','sdfsdfgdfhsdhsdhfghfghsfhf',3,'',14,1),(311,'2024-01-04 14:28:37.605981','78','sdfsdfgdfhsdhsdhfghfghsfh',3,'',14,1),(312,'2024-01-04 14:29:21.811589','91','sdsdffsddsfdsfsdsfsddsffsdfdsfsdfsdfsdfs',3,'',14,1),(313,'2024-01-04 14:29:21.830665','90','sdsdffsddsfdsfsdsfsddsffsdfdsfsdf',3,'',14,1),(314,'2024-01-04 14:29:21.839835','89','sdsdffsddsfdsfsdsfsddsffsdfdsf',3,'',14,1),(315,'2024-01-04 14:29:21.849139','77','sdfsdfgdfhsdhsdhfghfghs',3,'',14,1),(316,'2024-01-04 14:29:21.858359','76','sdfsdfgdfhsdhsdhfghfg',3,'',14,1),(317,'2024-01-04 14:29:21.875402','75','sdfsdfgdfhsdhsdhfgh',3,'',14,1),(318,'2024-01-04 14:29:21.885399','74','sdfsdfgdfhsdhsdh',3,'',14,1),(319,'2024-01-04 14:29:21.894103','73','sdfsdfgdfhsdh',3,'',14,1),(320,'2024-01-04 14:29:21.903283','72','sdfsdfgdf',3,'',14,1),(321,'2024-01-04 14:29:21.910284','71','sdf',3,'',14,1),(322,'2024-01-04 14:29:21.922593','69','sdfggf',3,'',14,1),(323,'2024-01-04 14:29:21.933383','68','sd',3,'',14,1),(324,'2024-01-04 14:29:21.944940','67','nuovo tavolo vvss',3,'',14,1),(325,'2024-01-04 14:29:21.955111','66','nuovo tavolo vv',3,'',14,1),(326,'2024-01-04 14:29:21.972606','65','test8',3,'',14,1),(327,'2024-01-04 14:29:21.981903','64','nuovo tavolo fgg',3,'',14,1),(328,'2024-01-04 14:29:21.989247','63','sssf',3,'',14,1),(329,'2024-01-04 14:29:21.998770','62','nuovo tavoloddas',3,'',14,1),(330,'2024-01-04 14:29:22.008336','61','nuovo tavolodf',3,'',14,1),(331,'2024-01-04 14:29:22.019109','60','nuovo tavolod',3,'',14,1),(332,'2024-01-04 14:29:22.028827','59','nuovo tavolos',3,'',14,1),(333,'2024-01-04 14:29:22.039144','58','ecco3',3,'',14,1),(334,'2024-01-04 14:29:22.049883','57','ecco',3,'',14,1),(335,'2024-01-04 14:29:22.059663','56','sss',3,'',14,1),(336,'2024-01-04 14:29:22.074584','55','sadasf',3,'',14,1),(337,'2024-01-04 14:29:22.085471','54','dsfg',3,'',14,1),(338,'2024-01-04 14:29:22.094102','53','xzs',3,'',14,1),(339,'2024-01-04 14:29:22.103996','52','9999',3,'',14,1),(340,'2024-01-04 14:29:22.114553','51','hhh',3,'',14,1),(341,'2024-01-04 14:29:22.128089','50','888',3,'',14,1),(342,'2024-01-04 14:29:22.137873','49','aqq',3,'',14,1),(343,'2024-01-04 14:29:22.149433','48','sadasd',3,'',14,1),(344,'2024-01-04 14:29:22.161038','47','sadasdasdas',3,'',14,1),(345,'2024-01-04 14:29:22.171415','46','eccomihhhjghj',3,'',14,1),(346,'2024-01-04 14:29:22.181821','45','hgjghkhjk',3,'',14,1),(347,'2024-01-04 14:30:03.877925','104','cvbnc',3,'',14,1),(348,'2024-01-04 14:30:03.897782','103','dsadasdasf',3,'',14,1),(349,'2024-01-04 14:30:03.911399','102','sdsdaf',3,'',14,1),(350,'2024-01-04 14:30:03.923679','101','dsad',3,'',14,1),(351,'2024-01-04 14:30:03.933955','100','Tettodsf',3,'',14,1),(352,'2024-01-04 14:30:03.944123','99','Tetto',3,'',14,1),(353,'2024-01-04 14:30:03.953820','98','Zampa2',3,'',14,1),(354,'2024-01-04 14:30:03.966717','93','ciao',3,'',14,1),(355,'2024-01-04 14:30:03.976959','92','df',3,'',14,1),(356,'2024-01-04 14:30:03.991341','44','eccomihh',3,'',14,1),(357,'2024-01-04 14:30:04.006633','43','eccomi',3,'',14,1),(358,'2024-01-04 14:30:04.018368','42','nuovo tavodsfdsfsdlo',3,'',14,1),(359,'2024-01-04 14:30:04.027545','41','tresd',3,'',14,1),(360,'2024-01-04 14:30:04.038968','40','bbbbbb',3,'',14,1),(361,'2024-01-04 14:30:04.050720','39','aaaaa',3,'',14,1),(362,'2024-01-04 14:30:04.066794','38','sdagdgff',3,'',14,1),(363,'2024-01-04 14:30:04.077279','37','sdsdadgadf',3,'',14,1),(364,'2024-01-04 14:30:04.087487','36','ghjhkhgk',3,'',14,1),(365,'2024-01-04 14:30:04.110299','35','nuovo tavolo bis',3,'',14,1),(366,'2024-01-04 14:30:04.123931','34','vai',3,'',14,1),(367,'2024-01-04 14:30:04.133627','33','fghfg',3,'',14,1),(368,'2024-01-04 14:30:04.146627','32','sebasss',3,'',14,1),(369,'2024-01-04 14:30:04.157331','31','new',3,'',14,1),(370,'2024-01-04 14:30:04.170964','29','sjfdsfjnòsa',3,'',14,1),(371,'2024-01-04 14:30:04.194821','27','sinelli',3,'',14,1),(372,'2024-01-04 14:30:04.206870','25','Sammy2',3,'',14,1),(373,'2024-01-04 14:30:04.217278','22','test',3,'',14,1),(374,'2024-01-05 02:40:25.656733','16','altro',1,'[{\"added\": {}}]',10,1),(375,'2024-01-05 02:40:40.582541','81','altro',1,'[{\"added\": {}}]',8,1),(376,'2024-01-05 09:12:31.279707','81','altro Bar',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(377,'2024-01-05 09:13:10.976994','82','altro Cucina',1,'[{\"added\": {}}]',8,1),(378,'2024-01-05 09:13:42.992950','83','altro Pizzeria',1,'[{\"added\": {}}]',8,1),(379,'2024-01-07 00:47:37.566825','58','Insalata di mare',2,'[{\"changed\": {\"fields\": [\"Collection\"]}}]',8,1),(380,'2024-01-07 00:48:16.082249','58','Insalata di mare',2,'[]',8,1),(381,'2024-01-07 01:35:37.197095','26','Lattina',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(382,'2024-01-07 01:40:05.186949','51','classico',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(383,'2024-01-07 01:40:58.225194','52','Antipasto Classico Salumi',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(384,'2024-01-07 01:41:19.846495','51','Antipasto Classico Bruschette',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1),(385,'2024-01-07 01:41:49.806362','67','Calzone Classico',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'commanda','allergeni'),(7,'commanda','collection'),(11,'commanda','commanda'),(12,'commanda','conto'),(13,'commanda','contobakup'),(17,'commanda','elementoordine'),(16,'commanda','ordine'),(8,'commanda','product'),(15,'commanda','productallergeni'),(20,'commanda','review'),(14,'commanda','tavolo'),(10,'commanda','tipoprodotto'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(19,'tags','tag'),(18,'tags','taggeditem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-25 19:11:51.677998'),(2,'auth','0001_initial','2023-11-25 19:11:53.078595'),(3,'admin','0001_initial','2023-11-25 19:11:53.357221'),(4,'admin','0002_logentry_remove_auto_add','2023-11-25 19:11:53.370269'),(5,'admin','0003_logentry_add_action_flag_choices','2023-11-25 19:11:53.386804'),(6,'contenttypes','0002_remove_content_type_name','2023-11-25 19:11:53.528821'),(7,'auth','0002_alter_permission_name_max_length','2023-11-25 19:11:53.645919'),(8,'auth','0003_alter_user_email_max_length','2023-11-25 19:11:53.682449'),(9,'auth','0004_alter_user_username_opts','2023-11-25 19:11:53.694311'),(10,'auth','0005_alter_user_last_login_null','2023-11-25 19:11:53.789672'),(11,'auth','0006_require_contenttypes_0002','2023-11-25 19:11:53.798877'),(12,'auth','0007_alter_validators_add_error_messages','2023-11-25 19:11:53.811717'),(13,'auth','0008_alter_user_username_max_length','2023-11-25 19:11:53.943527'),(14,'auth','0009_alter_user_last_name_max_length','2023-11-25 19:11:54.053261'),(15,'auth','0010_alter_group_name_max_length','2023-11-25 19:11:54.082760'),(16,'auth','0011_update_proxy_permissions','2023-11-25 19:11:54.095708'),(17,'auth','0012_alter_user_first_name_max_length','2023-11-25 19:11:54.203239'),(18,'commanda','0001_initial','2023-11-25 19:11:55.330414'),(19,'commanda','0002_allergeni_product_allergeni','2023-11-25 19:11:55.509190'),(20,'commanda','0003_remove_product_allergeni_product_allergeni','2023-11-25 19:11:55.904298'),(21,'commanda','0004_alter_allergeni_options_alter_product_options_and_more','2023-11-25 19:11:55.918950'),(22,'commanda','0005_alter_product_allergeni','2023-11-25 19:11:55.932691'),(23,'commanda','0006_tipoprodotto_product_tipo_prodotto','2023-11-25 19:11:56.105744'),(24,'commanda','0007_tipoprodotto_description','2023-11-25 19:11:56.148250'),(25,'commanda','0008_alter_product_description','2023-11-25 19:11:56.246304'),(26,'commanda','0009_alter_product_description','2023-11-25 19:11:56.258365'),(27,'commanda','0010_allergeni_number','2023-11-25 19:11:56.321255'),(28,'commanda','0011_commanda_conto_contobakup_tavolo_and_more','2023-11-25 19:11:57.594242'),(29,'commanda','0012_alter_collection_options','2023-11-25 19:11:57.602922'),(30,'sessions','0001_initial','2023-11-25 19:11:57.693305'),(31,'commanda','0013_alter_product_tipo_prodotto','2023-11-25 19:56:14.426008'),(32,'commanda','0014_productallergeni','2023-11-25 19:56:14.864256'),(33,'commanda','0015_delete_productallergeni','2023-11-25 19:59:09.982793'),(34,'commanda','0016_alter_allergeni_options_remove_commanda_product_and_more','2023-11-25 20:58:10.342314'),(35,'commanda','0017_remove_commanda_product','2023-11-25 21:54:46.985598'),(36,'commanda','0018_commanda_product','2023-11-25 21:56:10.592329'),(37,'commanda','0019_remove_commanda_quantity','2023-11-25 22:03:49.657376'),(38,'commanda','0020_ordine_delete_commanda','2023-11-25 22:17:06.338582'),(39,'commanda','0021_alter_ordine_quantity','2023-11-25 22:21:16.593975'),(40,'commanda','0022_alter_product_price','2023-12-10 18:12:08.491380'),(41,'commanda','0023_remove_ordine_product_remove_ordine_quantity','2023-12-11 17:00:12.199879'),(42,'commanda','0024_alter_ordine_tavolo_elementoordine','2023-12-11 17:03:08.883980'),(43,'commanda','0025_ordine_payment_status_ordine_placed_at_and_more','2023-12-11 17:11:00.257749'),(44,'tags','0001_initial','2023-12-11 19:02:01.345997'),(45,'commanda','0026_tipoprodotto_collection','2023-12-11 22:54:31.937285'),(46,'commanda','0027_alter_tipoprodotto_collection','2023-12-11 22:56:13.485131'),(47,'commanda','0028_alter_tipoprodotto_collection','2023-12-11 22:57:33.690838'),(48,'commanda','0029_alter_ordine_tavolo','2023-12-17 22:58:44.092046'),(49,'commanda','0030_alter_product_allergeni','2023-12-17 22:58:44.107198'),(50,'commanda','0031_commanda','2023-12-18 00:13:26.344381'),(51,'commanda','0032_remove_conto_tavolo_delete_contobakup_and_more','2023-12-30 11:43:03.763063'),(52,'commanda','0033_remove_commanda_payment_status','2023-12-30 11:47:06.191532'),(53,'commanda','0034_alter_tavolo_nome','2023-12-30 11:52:20.489840'),(54,'commanda','0035_alter_commanda_tavolo','2023-12-30 12:48:33.612647'),(55,'commanda','0036_alter_commanda_tavolo','2023-12-30 12:52:27.993370'),(56,'commanda','0037_review','2023-12-30 17:31:08.743274'),(57,'commanda','0038_alter_review_product','2023-12-30 17:35:41.635479'),(58,'commanda','0039_commanda_production_status','2024-01-04 11:18:50.716624'),(59,'commanda','0040_tavolo_locked','2024-01-04 14:32:37.437780'),(60,'commanda','0041_commanda_note','2024-01-04 22:32:58.444102'),(61,'commanda','0042_alter_commanda_note','2024-01-04 22:43:12.936287'),(62,'commanda','0043_alter_commanda_note','2024-01-04 22:46:15.485627'),(63,'commanda','0044_alter_commanda_note','2024-01-05 02:15:27.328239'),(64,'commanda','0045_alter_commanda_production_status','2024-01-05 17:40:18.056808');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('iagdag2ecjruzgm20xdipplv4zgvn9mt','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcm2el3Q0gPajvId2i3zlNv6zIj3xV-0MGvPdPzcrh_BxVG_dZGW4tIzqiAwYFLKAmK0CY4AoGyiMkGomCyQ4-FRPZJSa8n0tZJqdj7A-14N90:1r6y7L:9IexXHKv-R6EeKlWfTe1RMMpLaXDxrIBPGvYmcwv9O8','2023-12-09 19:15:03.808932'),('oetw5rugln9c4xqas40ytrqp77nfv2xp','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcm2el3Q0gPajvId2i3zlNv6zIj3xV-0MGvPdPzcrh_BxVG_dZGW4tIzqiAwYFLKAmK0CY4AoGyiMkGomCyQ4-FRPZJSa8n0tZJqdj7A-14N90:1rCO7g:moqLnUcmCheBt-unM0lpiE8ZJkPn3e4uWStDrvJKkcY','2023-12-24 18:01:48.187837'),('u6tz8njcnm1873296xn0zw3bhvckaubv','.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcm2el3Q0gPajvId2i3zlNv6zIj3xV-0MGvPdPzcrh_BxVG_dZGW4tIzqiAwYFLKAmK0CY4AoGyiMkGomCyQ4-FRPZJSa8n0tZJqdj7A-14N90:1rJVtk:9bEwkxEgGtFw74mK7SKeRic6N7sIWd9QRCTjq07b0aY','2024-01-13 09:44:52.066872');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_tag`
--

DROP TABLE IF EXISTS `tags_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_tag`
--

LOCK TABLES `tags_tag` WRITE;
/*!40000 ALTER TABLE `tags_tag` DISABLE KEYS */;
INSERT INTO `tags_tag` VALUES (1,'testo');
/*!40000 ALTER TABLE `tags_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_taggeditem`
--

DROP TABLE IF EXISTS `tags_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_taggeditem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_taggeditem_content_type_id_03c84c71_fk_django_co` (`content_type_id`),
  KEY `tags_taggeditem_tag_id_31864f91_fk_tags_tag_id` (`tag_id`),
  CONSTRAINT `tags_taggeditem_content_type_id_03c84c71_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `tags_taggeditem_tag_id_31864f91_fk_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags_tag` (`id`),
  CONSTRAINT `tags_taggeditem_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_taggeditem`
--

LOCK TABLES `tags_taggeditem` WRITE;
/*!40000 ALTER TABLE `tags_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 14:22:33
