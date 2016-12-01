-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: localhost    Database: colegios
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,2,'add_permission','Can add permission'),(5,2,'change_permission','Can change permission'),(6,2,'delete_permission','Can delete permission'),(7,3,'add_group','Can add group'),(8,3,'change_group','Can change group'),(9,3,'delete_group','Can delete group'),(10,4,'add_user','Can add user'),(11,4,'change_user','Can change user'),(12,4,'delete_user','Can delete user'),(13,5,'add_contenttype','Can add content type'),(14,5,'change_contenttype','Can change content type'),(15,5,'delete_contenttype','Can delete content type'),(16,6,'add_session','Can add session'),(17,6,'change_session','Can change session'),(18,6,'delete_session','Can delete session'),(19,7,'add_categorias','Can add categorias'),(20,7,'change_categorias','Can change categorias'),(21,7,'delete_categorias','Can delete categorias'),(22,8,'add_contenido','Can add contenido'),(23,8,'change_contenido','Can change contenido'),(24,8,'delete_contenido','Can delete contenido'),(25,9,'add_galeria','Can add galeria'),(26,9,'change_galeria','Can change galeria'),(27,9,'delete_galeria','Can delete galeria'),(28,10,'add_estudiantes','Can add estudiantes'),(29,10,'change_estudiantes','Can change estudiantes'),(30,10,'delete_estudiantes','Can delete estudiantes'),(31,11,'add_profile','Can add profile'),(32,11,'change_profile','Can change profile'),(33,11,'delete_profile','Can delete profile'),(34,12,'add_notificaciones','Can add notificaciones'),(35,12,'change_notificaciones','Can change notificaciones'),(36,12,'delete_notificaciones','Can delete notificaciones'),(37,13,'add_institucional','Can add institucional'),(38,13,'change_institucional','Can change institucional'),(39,13,'delete_institucional','Can delete institucional'),(40,14,'add_tokens','Can add tokens'),(41,14,'change_tokens','Can change tokens'),(42,14,'delete_tokens','Can delete tokens'),(43,15,'add_application','Can add application'),(44,15,'change_application','Can change application'),(45,15,'delete_application','Can delete application'),(46,16,'add_grant','Can add grant'),(47,16,'change_grant','Can change grant'),(48,16,'delete_grant','Can delete grant'),(49,17,'add_accesstoken','Can add access token'),(50,17,'change_accesstoken','Can change access token'),(51,17,'delete_accesstoken','Can delete access token'),(52,18,'add_refreshtoken','Can add refresh token'),(53,18,'change_refreshtoken','Can change refresh token'),(54,18,'delete_refreshtoken','Can delete refresh token'),(55,19,'add_docentes','Can add docentes'),(56,19,'change_docentes','Can change docentes'),(57,19,'delete_docentes','Can delete docentes'),(58,20,'add_megusta','Can add megusta'),(59,20,'change_megusta','Can change megusta'),(60,20,'delete_megusta','Can delete megusta');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$pWfHmd030Kma$rleMZgCGh6HLfZhk8AbH8iEaeevT0wKGRLQF5kYQMQU=','2016-08-14 07:04:08',1,'Jonathan','Sanchez','dayessisanchez@gmail.com',1,1,'2016-06-16 22:41:39','dayessi'),(31,'pbkdf2_sha256$24000$GlQfR7bkRBIJ$hSgUqvvHU1/F4JkZIj3I8mWOrZOks43ZD1Y+e/SGfhw=','2016-07-30 22:05:09',1,'App Escuela','','contacto@appescuela.com',1,1,'2016-07-28 20:52:19','Colegio'),(37,'pbkdf2_sha256$24000$cqhREm2JcanK$ad/7ZOSySvt6iax1d29QhreTvwEfs13FgD1hmdJG8wI=',NULL,0,'Diego lara','Montealegre','devdflm@gmail.com',0,1,'2016-08-12 19:46:42','diegolara');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `categoria` varchar(144) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (24,1,'Kinder 1'),(25,1,'Primero A'),(26,1,'Segundo B'),(27,2,'Basketball'),(28,2,'Fútbol'),(29,2,'Ninguna');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenido`
--

DROP TABLE IF EXISTS `contenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(144) NOT NULL,
  `contenido` text NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `autor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contenido_52be3978` (`autor_id`),
  KEY `contenido_acaeb2d6` (`grupo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenido`
--

LOCK TABLES `contenido` WRITE;
/*!40000 ALTER TABLE `contenido` DISABLE KEYS */;
INSERT INTO `contenido` VALUES (38,'Hola kinder 1','Kinder 1',24,'2016-08-12 19:47:49',26),(39,'Medio Kinder','hola',24,'2016-08-12 19:48:22',26),(40,'Segundo','Prueba 1',26,'2016-08-12 19:49:09',26),(41,'Tercera prueba','Hola',24,'2016-08-12 19:49:59',26),(42,'Prueba kinder','asdasd',24,'2016-08-12 19:58:44',26),(43,'Recargado','sdfsdfsf',24,'2016-08-12 20:20:06',26),(44,'Prueba tokens','Hola',24,'2016-08-12 20:21:38',26),(45,'Hola','Hola kinder',24,'2016-08-12 20:23:50',26),(46,'adf','asdf',24,'2016-08-12 20:26:04',26),(47,'hola prescolar','prueba de push',24,'2016-08-12 21:27:57',26),(48,'Demo Aaron','HOli',24,'2016-08-12 23:07:34',26),(49,'DEmo demo demo','qdsa',24,'2016-08-12 23:08:15',26);
/*!40000 ALTER TABLE `contenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` text,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` text NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'1','dayessi',2,'Changed first_name and last_name.',4,1,'2016-06-16 22:55:49'),(2,'1','Estudiantes object',1,'Añadido.',10,1,'2016-06-17 04:03:17'),(3,'2','Estudiantes object',1,'Añadido.',10,1,'2016-06-17 04:03:26'),(4,'2','Estudiantes object',2,'Modificado/a electivas.',10,1,'2016-06-17 04:20:41'),(5,'2','jonathan',3,'',4,1,'2016-06-17 05:27:45'),(6,'3','jonathan',3,'',4,1,'2016-06-17 05:29:13'),(7,'4','jonathan',3,'',4,1,'2016-06-17 05:30:15'),(8,'5','jonathan',3,'',4,1,'2016-06-17 05:30:48'),(9,'6','jonathan',3,'',4,1,'2016-06-17 05:31:33'),(10,'7','jonathan',3,'',4,1,'2016-06-17 05:32:04'),(11,'8','jonathan',3,'',4,1,'2016-06-17 05:32:33'),(12,'9','jonathan',3,'',4,1,'2016-06-17 05:35:32'),(13,'1','Notificaciones object',1,'Añadido.',12,1,'2016-06-17 06:40:21'),(14,'1','Contenido object',1,'Añadido.',8,1,'2016-06-17 07:57:38'),(15,'1','Galeria object',3,'',9,1,'2016-06-21 00:41:42'),(16,'10','Estudiantes object',3,'',10,1,'2016-06-21 05:24:26'),(17,'9','Estudiantes object',3,'',10,1,'2016-06-21 05:24:36'),(18,'12','Estudiantes object',2,'Modificado/a electivas.',10,1,'2016-06-21 05:32:19'),(19,'13','jesus',1,'Añadido.',4,1,'2016-06-21 14:25:59'),(20,'13','jesus',2,'Modificado/a first_name.',4,1,'2016-06-21 14:26:12'),(21,'6','Diana Marcela',2,'Modificado/a rol.',11,1,'2016-07-07 05:10:34'),(22,'5','Diego Fernando',2,'Modificado/a rol.',11,1,'2016-07-07 05:10:44'),(23,'7','Ariadna',2,'Modificado/a rol.',11,1,'2016-07-07 05:13:36'),(24,'4','Jonathan Dayessi',2,'Modificado/a rol.',11,1,'2016-07-07 05:13:56'),(25,'9','Jonathan',1,'Añadido.',11,1,'2016-07-07 06:32:39'),(26,'15','dmunoz',2,'Modificado/a password.',4,1,'2016-07-08 05:35:24'),(27,'15','dmunoz',2,'Modificado/a is_active.',4,1,'2016-07-08 05:36:04'),(28,'1','Tokens object',1,'Añadido.',14,1,'2016-07-09 17:59:45'),(29,'2','Notificaciones object',3,'',12,1,'2016-07-09 22:33:05'),(30,'4','m2v9OSSmlj0JvoxsqSWPrMexMMlRpv',2,'Modificado/a expires.',17,1,'2016-07-10 17:37:44'),(31,'3','Notificaciones object',3,'',12,1,'2016-07-10 18:44:52'),(32,'4','Notificaciones object',3,'',12,1,'2016-07-10 18:46:41'),(33,'5','Notificaciones object',3,'',12,1,'2016-07-10 18:47:50'),(34,'6','Notificaciones object',2,'Modificado/a estudiantes.',12,1,'2016-07-10 18:48:57'),(35,'6','Notificaciones object',3,'',12,1,'2016-07-10 18:49:03'),(36,'7','Notificaciones object',3,'',12,1,'2016-07-10 18:49:49'),(37,'8','Notificaciones object',3,'',12,1,'2016-07-10 18:51:10'),(38,'1','Tokens object',2,'Modificado/a token.',14,1,'2016-07-11 15:31:06'),(39,'11','devferlara',2,'Modificado/a password.',4,1,'2016-07-11 16:27:07'),(40,'12','dimacopa',2,'Modificado/a password.',4,1,'2016-07-11 16:28:53'),(41,'2','Tokens object',1,'Añadido.',14,1,'2016-07-12 03:23:54'),(42,'12','iys2rcJ9RV6dglsEu5msL7fl6gLvS7',2,'Modificado/a expires.',17,1,'2016-07-12 08:29:48'),(43,'1','Megusta object',1,'Añadido.',20,1,'2016-07-12 08:35:15'),(44,'2','Megusta object',1,'Añadido.',20,1,'2016-07-12 08:55:24'),(45,'4','Tokens object',3,'',14,1,'2016-07-12 16:19:09'),(46,'3','Tokens object',3,'',14,1,'2016-07-12 16:19:09'),(47,'2','Tokens object',3,'',14,1,'2016-07-12 16:19:10'),(48,'1','Tokens object',3,'',14,1,'2016-07-12 16:19:10'),(49,'2','KJo1BbRTRCykzxTyOtH89I3pHcb6yQ',2,'Modificado/a expires.',17,1,'2016-07-12 17:08:23'),(50,'16','william',2,'Modificado/a password.',4,1,'2016-07-12 17:19:45'),(51,'16','william',2,'Modificado/a is_active.',4,1,'2016-07-12 17:46:17'),(52,'12','dimacopa',2,'Modificado/a password.',4,1,'2016-07-12 20:20:48'),(53,'12','dimacopa',2,'Modificado/a password.',4,1,'2016-07-12 20:31:18'),(54,'12','dimacopa',2,'Modificado/a is_active.',4,1,'2016-07-12 20:32:44'),(55,'6','Tokens object',3,'',14,1,'2016-07-12 22:05:20'),(56,'17','klinger',2,'Modificado/a is_active.',4,1,'2016-07-13 05:50:42'),(57,'27','sjR6imAjOWAKZoC8E0m9Hc1W4X2fDH',2,'Modificado/a expires.',17,1,'2016-07-13 16:03:43'),(58,'27','sjR6imAjOWAKZoC8E0m9Hc1W4X2fDH',2,'No ha cambiado ningún campo.',17,1,'2016-07-13 18:46:53'),(59,'28','RdoDGuKcG9IY2kTjPYZI78H3T3YnRk',2,'Modificado/a expires.',17,1,'2016-07-14 12:59:41'),(60,'28','RdoDGuKcG9IY2kTjPYZI78H3T3YnRk',2,'Modificado/a expires.',17,1,'2016-07-14 13:05:15'),(61,'28','RdoDGuKcG9IY2kTjPYZI78H3T3YnRk',3,'',17,1,'2016-07-14 13:09:38'),(62,'27','sjR6imAjOWAKZoC8E0m9Hc1W4X2fDH',3,'',17,1,'2016-07-14 13:09:38'),(63,'26','CwAEJ0e0NU11w31JhLvVy0hcsCT4L9',3,'',17,1,'2016-07-14 13:09:38'),(64,'25','iuuVY9A1WViDdmpbQ9GE6cLAJr5RWm',3,'',17,1,'2016-07-14 13:09:38'),(65,'24','p9tXlTXmh8pz1KgOOzi8U7nZg2aEs8',3,'',17,1,'2016-07-14 13:09:38'),(66,'23','gRfaQrjdVs2zrSEB0k4n5jX34B5u9A',3,'',17,1,'2016-07-14 13:09:38'),(67,'22','XUCL0qIEvpNvmELxBkOGNB9InPGiiN',3,'',17,1,'2016-07-14 13:09:38'),(68,'21','kDNFCx3fLcwDtaVdCE2D1GolrbIK28',3,'',17,1,'2016-07-14 13:09:38'),(69,'20','SdHXrX8chKRrV4iUrPWOVXnmBrlygA',3,'',17,1,'2016-07-14 13:09:38'),(70,'19','bLR2HWoFQ2kD3pNCOKpC2pJtmZKCFZ',3,'',17,1,'2016-07-14 13:09:38'),(71,'18','UBL84li4pKzZfEr4qXRjGAJsArryS8',3,'',17,1,'2016-07-14 13:09:38'),(72,'17','SI7Bg3O9UMXniK43ytJh1TzduIIZjP',3,'',17,1,'2016-07-14 13:09:38'),(73,'16','okrqwA4cfwBunYYDGMUAh8QzV7Kwxh',3,'',17,1,'2016-07-14 13:09:38'),(74,'15','CtoLzAYp48Vw8bGYghtPeRFpVuXSrM',3,'',17,1,'2016-07-14 13:09:38'),(75,'14','nZBE8NejDakEfKT1GWPzSzWIvdGMEj',3,'',17,1,'2016-07-14 13:09:38'),(76,'13','dtMaIcUwEFVRu3pOTwNKz2ImbuxKzI',3,'',17,1,'2016-07-14 13:09:38'),(77,'12','iys2rcJ9RV6dglsEu5msL7fl6gLvS7',3,'',17,1,'2016-07-14 13:09:38'),(78,'11','i0haAEsyEOiBITL0wWtc42OSBfnwwa',3,'',17,1,'2016-07-14 13:09:38'),(79,'10','Xx12UJuj8PwvTmHVw8WcxczEza1mLe',3,'',17,1,'2016-07-14 13:09:38'),(80,'9','PyjCb1tVCEjNxFnyeK0rUBvaKwvuZz',3,'',17,1,'2016-07-14 13:09:38'),(81,'8','mgXFOmFxXxga5u3umyPrG0dJxik1MC',3,'',17,1,'2016-07-14 13:09:38'),(82,'7','SNIVZSEB8gSzpHpUgYpKMUB3fnQ2hS',3,'',17,1,'2016-07-14 13:09:38'),(83,'6','XPMHHmb5Oh8zahzYT5KNn5ZC3KEKt1',3,'',17,1,'2016-07-14 13:09:38'),(84,'5','jsJlMOkReIEReLkVHn45BEg9jvmuWZ',3,'',17,1,'2016-07-14 13:09:38'),(85,'4','m2v9OSSmlj0JvoxsqSWPrMexMMlRpv',3,'',17,1,'2016-07-14 13:09:38'),(86,'3','cTTXarzRc8WKtt0I0r2xHWsYgbsodh',3,'',17,1,'2016-07-14 13:09:38'),(87,'2','KJo1BbRTRCykzxTyOtH89I3pHcb6yQ',3,'',17,1,'2016-07-14 13:09:38'),(88,'1','WTOfZxfRWZ7mTooAJV6XiiHLGXWJHA',3,'',17,1,'2016-07-14 13:09:38'),(89,'7','The Killers',3,'',8,1,'2016-07-14 22:55:51'),(90,'6','Demo Lunes',3,'',8,1,'2016-07-14 22:55:51'),(91,'5','Contenido docente',3,'',8,1,'2016-07-14 22:55:51'),(92,'4','XVII Conversatorio para el desarrollo sostenible del agro.',3,'',8,1,'2016-07-14 22:55:51'),(93,'3','Partido',3,'',8,1,'2016-07-14 22:55:51'),(94,'2','Fotos',3,'',8,1,'2016-07-14 22:55:51'),(95,'3','Docentes object',3,'',19,1,'2016-07-14 22:56:06'),(96,'2','Docentes object',3,'',19,1,'2016-07-14 22:56:06'),(97,'1','Docentes object',3,'',19,1,'2016-07-14 22:56:06'),(98,'13','Emily Lara',3,'',10,1,'2016-07-14 22:56:15'),(99,'12','Sofia Sanchez',3,'',10,1,'2016-07-14 22:56:15'),(100,'11','Sara Sanchez',3,'',10,1,'2016-07-14 22:56:15'),(101,'7','Aaron David Lara',3,'',10,1,'2016-07-14 22:56:15'),(102,'83','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(103,'82','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(104,'81','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(105,'80','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(106,'79','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(107,'78','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(108,'77','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(109,'76','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(110,'75','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(111,'74','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(112,'73','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(113,'72','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(114,'71','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(115,'70','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(116,'69','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(117,'68','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(118,'67','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(119,'66','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(120,'65','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(121,'64','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(122,'63','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(123,'62','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(124,'61','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(125,'60','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(126,'59','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(127,'58','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(128,'57','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(129,'56','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(130,'55','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(131,'54','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(132,'53','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(133,'52','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(134,'51','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(135,'50','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(136,'49','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(137,'48','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(138,'47','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(139,'46','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(140,'45','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(141,'44','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(142,'43','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(143,'42','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(144,'41','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(145,'40','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(146,'39','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(147,'38','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(148,'37','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(149,'36','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(150,'35','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(151,'34','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(152,'33','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(153,'32','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(154,'31','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(155,'30','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(156,'29','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(157,'28','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(158,'27','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(159,'26','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(160,'25','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(161,'24','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(162,'23','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(163,'22','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(164,'21','Notificaciones object',3,'',12,1,'2016-07-14 22:56:30'),(165,'20','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(166,'19','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(167,'18','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(168,'17','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(169,'16','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(170,'15','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(171,'14','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(172,'13','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(173,'12','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(174,'11','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(175,'10','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(176,'9','Notificaciones object',3,'',12,1,'2016-07-14 22:56:31'),(177,'11','Carlos',3,'',11,1,'2016-07-14 22:58:08'),(178,'10','Willitiam',3,'',11,1,'2016-07-14 22:58:08'),(179,'8','Darwin',3,'',11,1,'2016-07-14 22:58:08'),(180,'7','Ariadna',3,'',11,1,'2016-07-14 22:58:08'),(181,'6','Diana Marcela',3,'',11,1,'2016-07-14 22:58:08'),(182,'5','Diego Fernando',3,'',11,1,'2016-07-14 22:58:08'),(183,'4','Jonathan Dayessi',3,'',11,1,'2016-07-14 22:58:08'),(184,'14','ari',3,'',4,1,'2016-07-14 23:08:07'),(185,'11','devferlara',3,'',4,1,'2016-07-14 23:08:07'),(186,'12','dimacopa',3,'',4,1,'2016-07-14 23:08:07'),(187,'15','dmunoz',3,'',4,1,'2016-07-14 23:08:07'),(188,'13','jesus',3,'',4,1,'2016-07-14 23:08:07'),(189,'10','jonathan',3,'',4,1,'2016-07-14 23:08:07'),(190,'17','klinger',3,'',4,1,'2016-07-14 23:08:07'),(191,'16','william',3,'',4,1,'2016-07-14 23:08:07'),(192,'10','Secundaria',3,'',7,1,'2016-07-14 23:34:20'),(193,'9','Clases de Karate',3,'',7,1,'2016-07-14 23:34:20'),(194,'8','Futbol',3,'',7,1,'2016-07-14 23:34:20'),(195,'7','Septimo',3,'',7,1,'2016-07-14 23:34:20'),(196,'4','Quinto A',3,'',7,1,'2016-07-14 23:34:20'),(197,'3','Natacion',3,'',7,1,'2016-07-14 23:34:20'),(198,'2','Decimo',3,'',7,1,'2016-07-14 23:34:20'),(199,'18','diego',2,'Modificado/a is_active.',4,1,'2016-07-14 23:44:03'),(200,'20','mariacarolina',2,'Modificado/a is_active.',4,1,'2016-07-15 00:35:09'),(201,'21','onix@appschool.com',2,'No ha cambiado ningún campo.',4,1,'2016-07-15 00:35:14'),(202,'20','mariacarolina',2,'Modificado/a is_active.',4,1,'2016-07-15 14:48:23'),(203,'20','mariacarolina',2,'Modificado/a is_active.',4,1,'2016-07-24 15:48:12'),(204,'28','chelo',2,'Modificado/a password.',4,1,'2016-07-25 16:02:00'),(205,'28','chelo',2,'Modificado/a is_active.',4,1,'2016-07-25 16:02:20'),(206,'49','MRoepqyKRNqxnUnDROmkgR5MyYIPR4',3,'',17,1,'2016-07-25 21:58:21'),(207,'48','i9CCXWhBYSNLzpQYKuLka1kAUgnhkJ',3,'',17,1,'2016-07-25 21:58:21'),(208,'47','6gi33y4L3QvfnRI4TtW6Fi4U3fJ9T4',3,'',17,1,'2016-07-25 21:58:21'),(209,'46','WhkbTiOfwLg95BTrjm0RKdrPq3bKf1',3,'',17,1,'2016-07-25 21:58:21'),(210,'45','BbQjvRC0iKINXF8moToaiRIaAGicpP',3,'',17,1,'2016-07-25 21:58:21'),(211,'44','yJns82jZHAHIFj7XpWIIguc8awmjAZ',3,'',17,1,'2016-07-25 21:58:21'),(212,'43','xn1mvbllnieYU7jxpdXIagaeQQgmi8',3,'',17,1,'2016-07-25 21:58:21'),(213,'42','nuJzBtvMgRj7vSlCPAYiB1RUWoluRp',3,'',17,1,'2016-07-25 21:58:21'),(214,'41','oW0CWTZ94cGRtX2uVpb8ZwJVpteXvp',3,'',17,1,'2016-07-25 21:58:21'),(215,'40','NV2p7ZBGgItdyvezYEEQsk6nuCFeJn',3,'',17,1,'2016-07-25 21:58:21'),(216,'39','z7rJDBFwscNzMcDX4lIhQQEyAMEpxG',3,'',17,1,'2016-07-25 21:58:21'),(217,'38','7mZqItrMR62sDHaN4gzLbk3e2Ox4d9',3,'',17,1,'2016-07-25 21:58:21'),(218,'37','DwpbCWZdjEuZZlgefNRQOsJTruvg6V',3,'',17,1,'2016-07-25 21:58:21'),(219,'36','a0Pwu8t3ZBtvJRBCfuOIlA2P9GRnSw',3,'',17,1,'2016-07-25 21:58:21'),(220,'35','8iweRlzOA6iPYKUfJ7kMp5SB3waBiW',3,'',17,1,'2016-07-25 21:58:21'),(221,'34','Is9ClBbnkLYW0QKDGe1jZ4utdCc7eU',3,'',17,1,'2016-07-25 21:58:21'),(222,'33','5G5pEGSM1y72J22H41UgNcCQtJP85M',3,'',17,1,'2016-07-25 21:58:21'),(223,'32','aiqwVXrnxgfpnxmY7MkItsQ5i73Vtw',3,'',17,1,'2016-07-25 21:58:21'),(224,'50','nzjKB7wjMfVpOaWZjSJjQL96VpVY5x',3,'',17,1,'2016-07-25 22:00:28'),(225,'51','aXK0asvmdSpOrhmlyTii9rfMgIRJde',3,'',17,1,'2016-07-25 22:13:54'),(226,'52','BmutYtqOTPAZq1st7LbyhomepOzS8r',3,'',17,1,'2016-07-26 00:23:45'),(227,'53','TgqB1QYbTL3WFDDPW9QQtz4yDXdvLi',3,'',17,1,'2016-07-26 00:29:04'),(228,'54','MYp3FqFcufPz4QzWIGXMOe7gs9pnjx',3,'',17,1,'2016-07-26 00:32:38'),(229,'55','ECGF0LFaBpP45jAQZhbRCbRsUBOdw2',3,'',17,1,'2016-07-26 00:36:53'),(230,'56','nSp356h3pS0CQ6vUiW8e256PIUtifQ',3,'',17,1,'2016-07-26 00:38:13'),(231,'57','UYxM6BTVtbhvkOO4td0dYZnyr5ZrgN',3,'',17,1,'2016-07-26 00:41:06'),(232,'61','9KdKL8ut13lRD2KkuzMOjm1yAQIDiQ',3,'',17,1,'2016-07-26 16:40:07'),(233,'59','CWHrw4hX7R0YC74HQ2ZVpokATpDKA1',3,'',17,1,'2016-07-26 16:40:07'),(234,'58','MxMNnV5dfMg5z0mJsaMvEGhKQc3yYr',3,'',17,1,'2016-07-26 16:40:07'),(235,'63','PCXifwCpKmA7wQ5QPoYYXLepJ9Jo8B',3,'',17,1,'2016-07-26 19:15:03'),(236,'65','A66BKuMBck7yx9lnITcpGyC55ffK4f',3,'',17,1,'2016-07-26 19:15:56'),(237,'67','H31wAG0BR7nAO2uW0xyM2p7BwXZVF3',3,'',18,1,'2016-07-26 20:09:58'),(238,'69','po6h665doKSHKE5kkYQ20rwg7Hecsh',3,'',17,1,'2016-07-26 20:12:48'),(239,'67','HRZ15wup76uPm4AtG52eg3f5TMUESp',3,'',17,1,'2016-07-26 20:12:48'),(240,'71','GzRvL6Th2ZJlRzDhD5HfxtuolzIcnE',3,'',17,1,'2016-07-26 20:15:16'),(241,'75','NaycmxCeOJNN02zeiv9Qqa3uO4Ku5n',3,'',17,1,'2016-07-26 20:55:57'),(242,'74','N0dCCjWrtzL3A9rgcvIk9unWUoq47W',3,'',17,1,'2016-07-26 20:56:03'),(243,'73','Xh791MFJC8IXeHUObi0G48cUA7v3Xe',3,'',17,1,'2016-07-26 20:56:03'),(244,'77','LJJiuLltHAVrrHyuU6tA0lrOqwtjQu',3,'',17,1,'2016-07-26 20:58:02'),(245,'78','IeM13kREMLCoyzp39SffQDczZo5gjZ',3,'',17,1,'2016-07-26 20:58:54'),(246,'25','ari@miladidy.com',3,'',4,1,'2016-07-28 15:18:28'),(247,'28','chelo',3,'',4,1,'2016-07-28 15:18:28'),(248,'24','cxpicks@hotmail.com',3,'',4,1,'2016-07-28 15:18:28'),(249,'18','diego',3,'',4,1,'2016-07-28 15:18:28'),(250,'19','ijesusme@gmail.com',3,'',4,1,'2016-07-28 15:18:28'),(251,'23','karla@doterra.com.mx',3,'',4,1,'2016-07-28 15:18:28'),(252,'22','maestrojuan',3,'',4,1,'2016-07-28 15:18:28'),(253,'20','mariacarolina',3,'',4,1,'2016-07-28 15:18:28'),(254,'26','missadriana@colegioboston.com',3,'',4,1,'2016-07-28 15:18:28'),(255,'21','onix@appschool.com',3,'',4,1,'2016-07-28 15:18:28'),(256,'27','papajuan@hotmail.com',3,'',4,1,'2016-07-28 15:18:28'),(257,'29','sebas',3,'',4,1,'2016-07-28 15:18:28'),(258,'21','Grupo Prueba',3,'',7,1,'2016-07-28 15:19:04'),(259,'20','Fútbol',3,'',7,1,'2016-07-28 15:19:04'),(260,'19','Primaria 1B',3,'',7,1,'2016-07-28 15:19:04'),(261,'18','Primaria 1A',3,'',7,1,'2016-07-28 15:19:04'),(262,'17','Natación',3,'',7,1,'2016-07-28 15:19:04'),(263,'16','Secundaria 2A',3,'',7,1,'2016-07-28 15:19:04'),(264,'15','Secundaria 1A',3,'',7,1,'2016-07-28 15:19:04'),(265,'14','Secundaria 2B',3,'',7,1,'2016-07-28 15:19:04'),(266,'13','Secundaria 1B',3,'',7,1,'2016-07-28 15:19:04'),(267,'12','Karate',3,'',7,1,'2016-07-28 15:19:04'),(268,'11','Preescolar',3,'',7,1,'2016-07-28 15:19:04'),(269,'9','Jonathan',3,'',11,1,'2016-07-28 15:19:52'),(270,'24','Jonathan',1,'Añadido.',11,1,'2016-07-28 15:23:33'),(271,'30','diego',3,'',4,1,'2016-07-28 20:42:07'),(272,'23','Ninguna',3,'',7,1,'2016-07-28 20:42:29'),(273,'22','Parvulos',3,'',7,1,'2016-07-28 20:42:29'),(274,'24','Jonathan',3,'',11,1,'2016-07-28 20:43:18'),(275,'26','Jonathan',1,'Añadido.',11,1,'2016-07-28 20:43:51'),(276,'31','Colegio',1,'Añadido.',4,1,'2016-07-28 20:52:19'),(277,'27','',1,'Añadido.',11,1,'2016-07-28 20:53:17'),(278,'27','',2,'Modificado/a foto.',11,1,'2016-07-28 20:53:32'),(279,'31','Colegio',2,'Modificado/a first_name y email.',4,1,'2016-07-28 20:54:00'),(280,'33','jesus@rescateweb.com',2,'Modificado/a is_active.',4,1,'2016-07-28 21:17:14'),(281,'31','Colegio',2,'Modificado/a is_staff y is_superuser.',4,1,'2016-07-28 22:14:24'),(282,'114','QGGt4UtbIXo8GaBjrcGAIfz7btEpBX',3,'',17,1,'2016-08-10 20:02:28'),(283,'113','PfJXVr5RkhogeZ9SZsoNIA79xWByVU',3,'',17,1,'2016-08-10 20:02:28'),(284,'112','xN1C9de095Spa1xVIxkXsSwXTOxafu',3,'',17,1,'2016-08-10 20:02:28'),(285,'104','WX5F4ie4qFn2b5fn9kg2iz95lEdQnc',3,'',17,1,'2016-08-10 20:02:28'),(286,'103','oSJ9sxw37w5eYdLlh5uqjMu5UIkfIX',3,'',17,1,'2016-08-10 20:02:28'),(287,'101','0XZYyGMFoW2FV10OFZC458R0p8ON7I',3,'',17,1,'2016-08-10 20:02:28'),(288,'100','2l1Yl5v11ea261d8p1idbvOT0VG0QO',3,'',17,1,'2016-08-10 20:02:28'),(289,'99','epnM7SawdSgs0bSPbqQzYL5b2LGR0W',3,'',17,1,'2016-08-10 20:02:28'),(290,'98','dXLAIJXt6hUlQxp0R0GmLqfUQCP9PD',3,'',17,1,'2016-08-10 20:02:28'),(291,'97','X9nqh9m7nrFSuRX81rrUOnr8ocPcRX',3,'',17,1,'2016-08-10 20:02:28'),(292,'95','8LiWOQRj5kfMc28jIizueWSCiyFXJ1',3,'',17,1,'2016-08-10 20:02:28'),(293,'18','Tokens object',3,'',14,1,'2016-08-10 20:06:34'),(294,'17','Tokens object',3,'',14,1,'2016-08-10 20:06:34'),(295,'115','M4uel4hPnTLp8NppGfuIxjCe8Kyyfz',3,'',17,1,'2016-08-10 20:06:52'),(296,'31','hola mundo2',3,'',8,1,'2016-08-10 21:07:04'),(297,'30','hola mundo',3,'',8,1,'2016-08-10 21:07:04'),(298,'36','diegolara',3,'',4,1,'2016-08-12 01:21:54'),(299,'32','jbarrero',3,'',4,1,'2016-08-12 01:21:54'),(300,'33','jesus@rescateweb.com',3,'',4,1,'2016-08-12 01:21:54'),(301,'35','misshope@email.com',3,'',4,1,'2016-08-12 01:21:54'),(302,'34','nilson',3,'',4,1,'2016-08-12 01:21:54'),(303,'37','Noruego',3,'',8,1,'2016-08-12 01:22:07'),(304,'36','Aguilas',3,'',8,1,'2016-08-12 01:22:07'),(305,'35','Demito',3,'',8,1,'2016-08-12 01:22:07'),(306,'34','Suicide Squad',3,'',8,1,'2016-08-12 01:22:07'),(307,'33','Vaso',3,'',8,1,'2016-08-12 01:22:07'),(308,'32','hola mundo',3,'',8,1,'2016-08-12 01:22:07'),(309,'29','Hola Mundo 1',3,'',8,1,'2016-08-12 01:22:07'),(310,'28','segundo',3,'',8,1,'2016-08-12 01:22:07'),(311,'27','Segundo tercera prueba',3,'',8,1,'2016-08-12 01:22:07'),(312,'26','Prueba segundo',3,'',8,1,'2016-08-12 01:22:07'),(313,'25','Prueba diego',3,'',8,1,'2016-08-12 01:22:07'),(314,'24','Prueba diego',3,'',8,1,'2016-08-12 01:22:07'),(315,'23','Prueba 2.55',3,'',8,1,'2016-08-12 01:22:07'),(316,'22','Demo nuevo',3,'',8,1,'2016-08-12 01:22:07'),(317,'21','Demo 3',3,'',8,1,'2016-08-12 01:22:07'),(318,'20','Prueba post',3,'',8,1,'2016-08-12 01:22:07'),(319,'19','Contenido grupo 1',3,'',8,1,'2016-08-12 01:22:07'),(320,'18','Contenido grupo 1',3,'',8,1,'2016-08-12 01:22:07'),(321,'17','hola mundo',3,'',8,1,'2016-08-12 01:22:07'),(322,'15','Se ha inaugurado el centro de computo Apple',3,'',8,1,'2016-08-12 01:22:07'),(323,'14','Nuevas Intalaciones del Colegio Abiertas',3,'',8,1,'2016-08-12 01:22:07'),(324,'153','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(325,'152','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(326,'151','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(327,'150','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(328,'149','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(329,'148','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(330,'147','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(331,'146','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(332,'145','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(333,'144','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(334,'143','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(335,'142','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(336,'141','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(337,'140','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(338,'139','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39'),(339,'138','Notificaciones object',3,'',12,1,'2016-08-12 01:22:39');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'inicio','categorias'),(8,'inicio','contenido'),(19,'inicio','docentes'),(10,'inicio','estudiantes'),(9,'inicio','galeria'),(13,'inicio','institucional'),(20,'inicio','megusta'),(12,'inicio','notificaciones'),(11,'inicio','profile'),(14,'inicio','tokens'),(17,'oauth2_provider','accesstoken'),(15,'oauth2_provider','application'),(16,'oauth2_provider','grant'),(18,'oauth2_provider','refreshtoken'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-06-16 22:40:02'),(2,'auth','0001_initial','2016-06-16 22:40:03'),(3,'admin','0001_initial','2016-06-16 22:40:03'),(4,'admin','0002_logentry_remove_auto_add','2016-06-16 22:40:04'),(5,'contenttypes','0002_remove_content_type_name','2016-06-16 22:40:04'),(6,'auth','0002_alter_permission_name_max_length','2016-06-16 22:40:04'),(7,'auth','0003_alter_user_email_max_length','2016-06-16 22:40:04'),(8,'auth','0004_alter_user_username_opts','2016-06-16 22:40:05'),(9,'auth','0005_alter_user_last_login_null','2016-06-16 22:40:05'),(10,'auth','0006_require_contenttypes_0002','2016-06-16 22:40:05'),(11,'auth','0007_alter_validators_add_error_messages','2016-06-16 22:40:05'),(12,'inicio','0001_initial','2016-06-16 22:40:05'),(13,'sessions','0001_initial','2016-06-16 22:40:05'),(14,'inicio','0002_remove_profile_rol','2016-06-17 00:35:23'),(15,'inicio','0003_estudiantes_acudiente','2016-06-17 04:07:43'),(16,'inicio','0004_estudiantes_electivas','2016-06-17 04:19:00'),(17,'inicio','0005_auto_20160617_0133','2016-06-17 06:33:46'),(18,'inicio','0006_auto_20160617_1221','2016-06-17 17:21:28'),(19,'oauth2_provider','0001_initial','2016-06-17 17:21:28'),(20,'oauth2_provider','0002_08_updates','2016-06-17 17:21:29'),(21,'inicio','0007_auto_20160621_0012','2016-06-21 05:12:07'),(22,'inicio','0008_auto_20160621_0025','2016-06-21 05:25:30'),(23,'inicio','0009_auto_20160707_0007','2016-07-07 05:07:30'),(24,'inicio','0010_auto_20160707_0051','2016-07-07 05:51:57'),(25,'inicio','0011_auto_20160709_1247','2016-07-09 17:48:03'),(26,'inicio','0012_notificaciones_estudiantes','2016-07-09 18:18:49'),(27,'inicio','0013_auto_20160710_1231','2016-07-10 17:31:19'),(28,'inicio','0014_notificaciones_remitente','2016-07-10 18:44:09'),(29,'inicio','0015_contenido_fecha','2016-07-10 21:38:06'),(30,'inicio','0016_auto_20160710_1652','2016-07-10 21:53:01'),(31,'inicio','0017_auto_20160711_1032','2016-07-11 15:33:00'),(32,'inicio','0018_auto_20160726_1708','2016-07-26 22:08:33');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` text NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02w7cxjx5t6iiqlch58hpg4dp0wjwtvh','ZmMyMTkzNjNjYmU5ZThmODI2YWZhYjkxY2Q4ZGFmMDVkZDhjNWMwMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0NDdmNTAwZDZiM2RiNmQwMDM5YjU3ZGM1MGExNWQyMjM2MjY3OTUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-22 05:31:30'),('125gd9vdhzr199vv88199nrq42c0embj','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-27 04:53:23'),('3b2w9lz8paar6psxo1i3mk6a671cpvfe','MjJiMDdiOTkwMmJhNDczMzYyODI5YWQ3YjE1YzQ5MGZkZjZlODJhZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWYzMWU4MTI3MGYyZjMyODhlZGExMGIxZGM4ZGY0M2E3NjA0ZDYzMiIsIl9hdXRoX3VzZXJfaWQiOiIyNSJ9','2016-07-30 13:12:27'),('4o8bq7lknkle01spkbomye0yalo9f54p','OTljNmU1ODQwZWRkYzI3MmZlNzY2ZjMyOGZjZjVjN2JjMTE4YjdiNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyYWU1ZThiZjMzNmVjZjM3NTc1OTNlMTRiMDNjNmM0Njc2MjljZjEiLCJfYXV0aF91c2VyX2lkIjoiMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-07-21 19:58:00'),('5ffcxuy4tybpwlioivygeeh37a0no0b1','M2I3MDlhYjAxMDQyNjBhNjcxZjAxMjMwZGYwNGRkYTFjYjE2ZjhhMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjQ1MzBlY2NiMjFiODI4YzU5YTFkZmEyMWFlOTY5ODMxZmRkMDBmNSIsIl9hdXRoX3VzZXJfaWQiOiIyMCJ9','2016-07-30 19:09:15'),('6dai7vfajubpg1l0sgitthvaizn1fgdp','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-08-11 15:16:05'),('8zbaalp3i6w7odgek2sbitemc3596qkf','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-26 20:28:49'),('959umjwl1xfyly0pfnryffz457pgr7cc','NjI4NzYzNDAzMjVmMWM2NjE3Y2MxNmVhNzM3YWNmNjJmM2NiNmJkMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3NDQ3ZjUwMGQ2YjNkYjZkMDAzOWI1N2RjNTBhMTVkMjIzNjI2Nzk1In0=','2016-07-25 15:42:53'),('9drdxgpff9azuiheujoac07p755wnn6c','MWU5Y2YxMzZiNjBmMjk5YjRlYmQ1MTMzN2I4NGZjODZjYzBkMGYzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NDQ3ZjUwMGQ2YjNkYjZkMDAzOWI1N2RjNTBhMTVkMjIzNjI2Nzk1In0=','2016-07-01 15:16:27'),('9yqjb5vabh1vhq80ro2ihg20c6txj6di','MWUzYmM0ZTA2NGI2NjBhNWRjM2JmNzcwMmZmMDVhNjA3MzM4MGY3Yjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTQ0Mzg3N2ZkZDc3YzM1YTJhMDY1OWY2ZDdjZDBiZjc1ZWM3OGVkNSIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2016-07-30 23:50:42'),('bgwzve6tmgz6ijkp6lcr9du20ck6q58v','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-26 02:31:46'),('cpelip2bmic1goe47fjeb1tidzskso8n','MzlhOTNkNDc4MjM0YzAwODdmZWIwZTMzNDRkMDJlNTI4NzcyZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0NDdmNTAwZDZiM2RiNmQwMDM5YjU3ZGM1MGExNWQyMjM2MjY3OTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-04 21:20:04'),('d6tvhvosg4nnab05k2my3tmo6vdc8k2f','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-07 15:49:24'),('dagnixfmzh7wz58imzf0fpzo5v4evuxw','ZmMyMTkzNjNjYmU5ZThmODI2YWZhYjkxY2Q4ZGFmMDVkZDhjNWMwMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0NDdmNTAwZDZiM2RiNmQwMDM5YjU3ZGM1MGExNWQyMjM2MjY3OTUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-08-25 16:24:15'),('e8436ip61fmbmtbfa8ym6zo3v4mfksol','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-23 17:57:31'),('gpnx89346knvhdnpu9eqrh1llkkq1js5','ZmMyMTkzNjNjYmU5ZThmODI2YWZhYjkxY2Q4ZGFmMDVkZDhjNWMwMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0NDdmNTAwZDZiM2RiNmQwMDM5YjU3ZGM1MGExNWQyMjM2MjY3OTUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-25 14:57:43'),('hremhbjo9686j2x8sygpbkb27574ya96','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-21 05:02:19'),('k6x6md591lxizcysqih7znznaliqu287','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-08-10 14:56:11'),('l3fzm30a99vg8esmhw4cgkxb7211tae1','ZmMyMTkzNjNjYmU5ZThmODI2YWZhYjkxY2Q4ZGFmMDVkZDhjNWMwMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0NDdmNTAwZDZiM2RiNmQwMDM5YjU3ZGM1MGExNWQyMjM2MjY3OTUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-08-25 18:54:33'),('lzsmf1kg5zxnpzs8tze8lu5nrodyi7im','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-05 14:08:37'),('m4o1wvwoii47kh0pttffiv53nvyap0r8','MWU5Y2YxMzZiNjBmMjk5YjRlYmQ1MTMzN2I4NGZjODZjYzBkMGYzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NDQ3ZjUwMGQ2YjNkYjZkMDAzOWI1N2RjNTBhMTVkMjIzNjI2Nzk1In0=','2016-08-26 19:45:46'),('mf0gingxak5a2j0e2ycyj4jogjsxh3jl','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-29 00:01:51'),('nuw0gbd5613nda8dve4vthfd2kuevbfh','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-30 19:20:44'),('p5en0rnwua67hr03rfjv9l4ij5jn4dn9','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-26 08:29:14'),('p7jozczqpjlve0x24pb8acm9mkp59bdh','MzlhOTNkNDc4MjM0YzAwODdmZWIwZTMzNDRkMDJlNTI4NzcyZjk1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0NDdmNTAwZDZiM2RiNmQwMDM5YjU3ZGM1MGExNWQyMjM2MjY3OTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-27 06:55:43'),('ptxmb74kn56x0nzkuv4q5stlk26mjo7a','ZTI2YzM1Y2FlMjI1M2YyMTI5YTkxZGUzNTkxM2Q4ZDZmZjljZDViNzp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfaGFzaCI6IjVhODJiNGQyYjUyYjY5NTg5NTA4MTg3YzQyOTU2M2E2YzFkMmJhMWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-07-05 14:46:14'),('pzkaqoefi6ehygmu6a4qf6e61y0v6s2a','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-24 21:00:50'),('qi9b4e2hglyi3ah52a4xc1cuav2hj8na','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-29 14:48:08'),('qrk56u1ro6lk0zduwdb4kxfeo6xqah3x','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-08-08 16:05:56'),('rr09c3lt528mnt53pm30emrkf85qvalr','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-08-11 00:54:24'),('surbgsy8ypvx4hiwrndb64kjxtprp4ta','MDJiNDJlZmNhZDI2NWFmNjU1MGFhNDI0ODBiZGY3Zjg4MTdhNzg0NTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWUwZTIxNDI2MTE1ZThkYmU2YWUyNTQxYTMwNjk0YTA0ODdmYzBjZSJ9','2016-07-22 05:36:10'),('t1beqzvkukc5iavwn0vrdql5aiter384','MWU5Y2YxMzZiNjBmMjk5YjRlYmQ1MTMzN2I4NGZjODZjYzBkMGYzMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NDQ3ZjUwMGQ2YjNkYjZkMDAzOWI1N2RjNTBhMTVkMjIzNjI2Nzk1In0=','2016-07-01 15:15:34'),('usxcxdv4jmqqfchhnb1duzc33vekyf9l','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-24 15:51:47'),('wcpzu7nwrhx9tam9my0j5j32b55i1jc9','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-05 14:17:59'),('wj15zm2y8baitnu55wc3rcy6h56o2wo7','Y2Y2YzlhYjdjOTFlNGM2YmNjZDgyODEzZGFkNDJlMzRiNDljMTBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-27 07:32:04'),('yp11ykhet46sy2k89980zk1oq3ootgu4','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-07-27 15:44:44'),('ytabgu60gmi1k5naxehkz6u51onmd3rs','OGY3N2E1MDFhN2IzOTk0OWQ5YWMwMTUxMTFiM2IxMmY5MDhhOGRkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzQ0N2Y1MDBkNmIzZGI2ZDAwMzliNTdkYzUwYTE1ZDIyMzYyNjc5NSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-08-28 07:04:09'),('zctx6o10a5uqr110xfbs7z6mie8588wh','ZmMyMTkzNjNjYmU5ZThmODI2YWZhYjkxY2Q4ZGFmMDVkZDhjNWMwMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0NDdmNTAwZDZiM2RiNmQwMDM5YjU3ZGM1MGExNWQyMjM2MjY3OTUiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-07-05 03:43:47');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes_categorias`
--

DROP TABLE IF EXISTS `docentes_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docentes_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docentes_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `docentes_categorias_docentes_id_38b240f1_uniq` (`docentes_id`,`categorias_id`),
  KEY `docentes_categorias_d5f8a66b` (`categorias_id`),
  KEY `docentes_categorias_dd2629db` (`docentes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes_categorias`
--

LOCK TABLES `docentes_categorias` WRITE;
/*!40000 ALTER TABLE `docentes_categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `docentes_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estudiante` varchar(144) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `acudiente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `estudiantes_ad8d63fb` (`acudiente_id`),
  KEY `estudiantes_daf3833b` (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (29,'Aaron',24,33);
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes_electivas`
--

DROP TABLE IF EXISTS `estudiantes_electivas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes_electivas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estudiantes_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estudiantes_electivas_estudiantes_id_0610cb31_uniq` (`estudiantes_id`,`categorias_id`),
  KEY `estudiantes_electivas_301cb2b2` (`estudiantes_id`),
  KEY `estudiantes_electivas_d5f8a66b` (`categorias_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes_electivas`
--

LOCK TABLES `estudiantes_electivas` WRITE;
/*!40000 ALTER TABLE `estudiantes_electivas` DISABLE KEYS */;
INSERT INTO `estudiantes_electivas` VALUES (22,29,27);
/*!40000 ALTER TABLE `estudiantes_electivas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenido_id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galeria_0a9ab757` (`contenido_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucional`
--

DROP TABLE IF EXISTS `institucional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colegio` varchar(144) NOT NULL,
  `direccion` varchar(144) NOT NULL,
  `telefono` int(11) NOT NULL,
  `ciudad` varchar(144) NOT NULL,
  `email` varchar(254) NOT NULL,
  `facebook` varchar(144) NOT NULL,
  `twitter` varchar(144) NOT NULL,
  `horarios` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucional`
--

LOCK TABLES `institucional` WRITE;
/*!40000 ALTER TABLE `institucional` DISABLE KEYS */;
INSERT INTO `institucional` VALUES (1,'Colegio Cancún','Avenida Cancún',780967,'Cancún - Quintana Roo','jesus@rescateweb.com','facebook.com/cancun','twitter.com/cancun','Lunes a viernes jornada continua.');
/*!40000 ALTER TABLE `institucional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_gusta`
--

DROP TABLE IF EXISTS `me_gusta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `me_gusta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenido_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `me_gusta_0a9ab757` (`contenido_id`),
  KEY `me_gusta_e8701ad4` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_gusta`
--

LOCK TABLES `me_gusta` WRITE;
/*!40000 ALTER TABLE `me_gusta` DISABLE KEYS */;
INSERT INTO `me_gusta` VALUES (19,49,33);
/*!40000 ALTER TABLE `me_gusta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechayhora` datetime NOT NULL,
  `contenido` text NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `remitente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notificaciones_daf3833b` (`categoria_id`),
  KEY `notificaciones_fe56e730` (`remitente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (154,'2016-08-12 19:47:06','Hola',24,26);
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones_estudiantes`
--

DROP TABLE IF EXISTS `notificaciones_estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones_estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificaciones_id` int(11) NOT NULL,
  `estudiantes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notificaciones_estudiantes_notificaciones_id_eeef45f2_uniq` (`notificaciones_id`,`estudiantes_id`),
  KEY `notificaciones_estudiantes_301cb2b2` (`estudiantes_id`),
  KEY `notificaciones_estudiantes_a7c88afb` (`notificaciones_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones_estudiantes`
--

LOCK TABLES `notificaciones_estudiantes` WRITE;
/*!40000 ALTER TABLE `notificaciones_estudiantes` DISABLE KEYS */;
INSERT INTO `notificaciones_estudiantes` VALUES (162,154,29);
/*!40000 ALTER TABLE `notificaciones_estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `scope` text NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_provider_accesstoken_6bc0a4eb` (`application_id`),
  KEY `oauth2_provider_accesstoken_94a08da1` (`token`),
  KEY `oauth2_provider_accesstoken_e8701ad4` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (139,'jO0Mspbd3O254UTMaKbIVyEzzRxhlS','2016-08-13 05:46:48','write read',1,37),(140,'hYJO1GSgYtMIPgHjhDyJhOJ6HhODxE','2016-08-13 06:18:35','write read',1,37),(141,'w70D46GLilQJHvIKJQSbdcC65jMSwv','2016-08-13 10:00:23','read write',1,37),(142,'Zt6voUfDRi6pHwT5ZYkRFwXFVXrdI8','2016-08-14 06:11:11','read write',1,37),(143,'mLhj4dqKdzBI0zBazQEbOrUQRAYTt2','2016-08-14 09:27:12','read write',1,37),(144,'He39TdRCk9MCLb1LodJsKBuLMCLyCG','2016-08-14 10:46:44','read write',1,37);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` text NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_9d667c2b` (`client_secret`),
  KEY `oauth2_provider_application_e8701ad4` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'JnGGyDAdbUCYBvSNtMSFdbcoA1MkLdFs7QrZUSyK','','confidential','password','1lMmPXbJhIhoUMGo6vO4wU2YpLSXvF4Mwj75V8a5aGGWd4Iy7my48FWspnYgVTnjPmPiPRdaWKFWK1l2BwZWCkOg3DOipi47DLV0TsduFmDkCZAUY8EXaprLlcBOmzrq','Colegios App',0,1);
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` text NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth2_provider_grant_6bc0a4eb` (`application_id`),
  KEY `oauth2_provider_grant_c1336794` (`code`),
  KEY `oauth2_provider_grant_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  KEY `oauth2_provider_refreshtoken_6bc0a4eb` (`application_id`),
  KEY `oauth2_provider_refreshtoken_94a08da1` (`token`),
  KEY `oauth2_provider_refreshtoken_e8701ad4` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (139,'OtRSCRt7SossN9B19PdKDW72VdueN1',139,1,37),(140,'TLB4WqRpAC2cjX1mgX6Of91S2wF2uh',140,1,37),(141,'JBqFGF1s6jXPKIC6W8rVMyvj7eENAs',141,1,37),(142,'VsfiRu3qEZPz5WX8xNzlVabNBveh92',142,1,37),(143,'RnRFwm5DRnt2e135dS0eP94xe3p1oo',143,1,37),(144,'heZ2GIQfZWKpzsF5nCZK9kLMjFAa4n',144,1,37);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(144) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rol` int(11) NOT NULL,
  `facebook` varchar(144) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `twitter` varchar(144) DEFAULT NULL,
  `cedula` varchar(144) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (26,234234,'234234',1,1,'fb.me/industrial','dprofile.jpg','tw.co/industrial','234234'),(27,670,'xxxx',31,1,'xxxxx','media/img/docentes/247432-ic_launcher.png','xxxxx','xxxxxxx'),(33,2147483647,'Cra 21',37,3,NULL,'dprofile.jpg',NULL,'44534535');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plataforma` int(11) NOT NULL,
  `acudiente_id` int(11) NOT NULL,
  `device` varchar(144) NOT NULL,
  `token` varchar(244) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tokens_ad8d63fb` (`acudiente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (22,1,33,'996c3d2d81b54e2','fHrG5WDk6CE:APA91bGL-JK3dMl5b8GgiI6sIoBNlOCQ4rS3vNmWnF-Wg2zP4w1671NJ1bmJ5ev5uvHGMm8SltM7eHpURCqECx3C3zAAoPI0POuIGXI4_kC0qucImOYG4nMcvQrHk3RGsKpxpOSrMWVx'),(23,1,33,'c64668245db97aa7','cUD-1U0OJbo:APA91bFVfG9F7tZoLgQG4z1Ej-AMB5n1PO5TNhrqI8RdTf58Td0WUZ0_gvMGlXE97Pz5g7q_FCsoqdl4-Vb24Xlhk218Mz0OIoFrE5L4B5SQbGxLZ1O4WHXG_i5nw_QvJW7j368xGR90');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-14  2:14:15
