CREATE DATABASE  IF NOT EXISTS `reposiunia` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `reposiunia`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: reposiunia
-- ------------------------------------------------------
-- Server version	5.6.31-log

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
-- Table structure for table `archivo`
--

DROP TABLE IF EXISTS `archivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archivo` (
  `idArchivo` int(11) NOT NULL AUTO_INCREMENT,
  `urlLocal` varchar(45) DEFAULT NULL,
  `urlWeb` varchar(45) DEFAULT NULL,
  `archivo` longblob,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idArchivo`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivo`
--

LOCK TABLES `archivo` WRITE;
/*!40000 ALTER TABLE `archivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `archivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archivodenuncia`
--

DROP TABLE IF EXISTS `archivodenuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archivodenuncia` (
  `idArchivoDenuncia` int(11) NOT NULL AUTO_INCREMENT,
  `idArchivo` int(11) DEFAULT NULL,
  `idDenuncia` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idArchivoDenuncia`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivodenuncia`
--

LOCK TABLES `archivodenuncia` WRITE;
/*!40000 ALTER TABLE `archivodenuncia` DISABLE KEYS */;
INSERT INTO `archivodenuncia` VALUES (13,140,37,'A'),(14,141,38,'A'),(15,142,39,'A'),(16,143,41,'A'),(17,144,42,'A'),(18,145,43,'A'),(19,150,44,'A'),(20,154,45,'A'),(21,155,46,'A'),(22,156,47,'A');
/*!40000 ALTER TABLE `archivodenuncia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archivopublicacion`
--

DROP TABLE IF EXISTS `archivopublicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archivopublicacion` (
  `idArchivoPublicacion` int(11) NOT NULL AUTO_INCREMENT,
  `idArchivo` int(11) DEFAULT NULL,
  `idPublicacion` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idArchivoPublicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivopublicacion`
--

LOCK TABLES `archivopublicacion` WRITE;
/*!40000 ALTER TABLE `archivopublicacion` DISABLE KEYS */;
INSERT INTO `archivopublicacion` VALUES (17,30,3,'PTE','A'),(18,31,3,'INPIN','A'),(19,32,4,'TE','A'),(20,33,5,'TE','A'),(21,34,5,'PTE','A'),(22,35,5,'PIN','A'),(23,36,4,'PIN','A'),(24,37,5,'ARCI','A'),(25,38,5,'INPIN','A'),(26,39,4,'PTE','A'),(27,40,4,'ARCI','A'),(28,41,4,'INPIN','A'),(35,48,6,'PTE','A'),(44,57,3,'TE','A'),(45,58,3,'ARCI','A'),(55,68,6,'INPIN','A'),(56,69,6,'ARCI','A'),(57,70,6,'TE','A'),(59,72,6,'PIN','A'),(116,129,13,'TE','A'),(117,130,13,'PTE','A'),(126,139,3,'PIN','A'),(131,151,2,'TE','A'),(132,152,2,'PTE','A'),(133,153,2,'PIN','A'),(134,157,2,'INPIN','A'),(135,158,2,'ARCI','A');
/*!40000 ALTER TABLE `archivopublicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archivossolicitados`
--

DROP TABLE IF EXISTS `archivossolicitados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archivossolicitados` (
  `idArchivoSolicitado` int(11) NOT NULL AUTO_INCREMENT,
  `idSolicitante` int(11) DEFAULT NULL,
  `idArchivoPublicacion` int(11) DEFAULT NULL,
  `fechaSolicitud` date DEFAULT NULL,
  `respuesta` varchar(45) DEFAULT NULL,
  `fechaRespuesta` date DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idArchivoSolicitado`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivossolicitados`
--

LOCK TABLES `archivossolicitados` WRITE;
/*!40000 ALTER TABLE `archivossolicitados` DISABLE KEYS */;
INSERT INTO `archivossolicitados` VALUES (1,2,3,'2016-03-22','ATENDIDOWEB','2016-02-20','A'),(2,2,3,'2016-03-22','NOATENDIDO','2016-03-22','A'),(3,2,3,'2016-03-22','NOATENDIDO','2016-03-22','A'),(4,2,3,'2016-03-22','NOATENDIDO','2016-03-22','A'),(5,2,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(6,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(7,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(8,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(9,2,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(10,2,3,'2016-03-22','ATENDIDOWEB','2016-02-20','A'),(12,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(13,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(14,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(15,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(16,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(17,1,3,'2016-03-22','NOATENDIDO','2016-03-22','A'),(18,1,3,'2016-03-22','NOATENDIDO','2016-03-22','A'),(19,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(20,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(21,1,2,'2016-03-22','NOATENDIDO','2016-03-22','A'),(22,1,1,'2016-03-22','NOATENDIDO','2016-03-22','A'),(23,2,1,'2016-03-22','NOATENDIDO','2016-03-22','A'),(24,8,118,'2016-06-22','RECHAZADO','2016-06-28','A'),(25,9,118,'2016-06-22','RECHAZADO','2016-06-28','A'),(26,10,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(27,11,118,'2016-06-22','RECHAZADO','2016-06-28','A'),(28,12,118,'2016-06-22','RECHAZADO','2016-06-28','A'),(29,13,118,'2016-06-22','RECHAZADO','2016-06-28','A'),(30,14,124,'2016-06-22','NOATENDIDO','2016-06-22','A'),(31,15,124,'2016-06-22','NOATENDIDO','2016-06-22','A'),(32,16,119,'2016-06-22','RECHAZADO','2016-06-28','A'),(33,17,119,'2016-06-22','RECHAZADO','2016-06-28','A'),(34,18,119,'2016-06-22','NOATENDIDO','2016-06-22','A'),(35,19,119,'2016-06-22','NOATENDIDO','2016-06-22','A'),(36,20,119,'2016-06-22','NOATENDIDO','2016-06-22','A'),(37,21,119,'2016-06-22','NOATENDIDO','2016-06-22','A'),(38,22,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(39,23,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(40,24,125,'2016-06-22','NOATENDIDO','2016-06-22','A'),(41,1,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(42,1,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(43,25,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(44,26,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(45,27,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(46,28,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(47,29,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(48,30,118,'2016-06-22','NOATENDIDO','2016-06-22','A'),(49,31,124,'2016-06-22','NOATENDIDO','2016-06-22','A');
/*!40000 ALTER TABLE `archivossolicitados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areainvestigacion`
--

DROP TABLE IF EXISTS `areainvestigacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areainvestigacion` (
  `idAreaInvestigacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idAreaInvestigacion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areainvestigacion`
--

LOCK TABLES `areainvestigacion` WRITE;
/*!40000 ALTER TABLE `areainvestigacion` DISABLE KEYS */;
INSERT INTO `areainvestigacion` VALUES (1,'ECOSISTEMAS AMAZONICOS TERRESTRES','A'),(2,'ECOSISTEMAS AMAZONICOS ACUATICOS','A'),(3,'ANALISIS Y EVALUACION DE RECURSOS  AGROINDUSTRIALES','A'),(4,'TECNOLOGIAS AGROINDUSTRIALES','A'),(5,'INGENIERIA DE PROCESOS EN LA AGROINDUSTRIA','A'),(6,'AGRONEGOCIOS Y GESTION AGROINDUSTRIAL SOSTENIBLES','A'),(7,'ETNO-BIOLOGIA Y CIENCIAS SOCIALES','A'),(8,'INNOVACION PSICOPEDAGOGICA INTERCULTURAL','A'),(9,'EDUCACION AMBIENTAL','A'),(10,'BILINGUISMO E INTERCULTURALIDAD AMAZONICA','A'),(11,'CIENCIAS SOCIALES Y EDUCACION INTERCULTURAL','A'),(12,'ARTE AMAZONICO Y EDUCACION','A');
/*!40000 ALTER TABLE `areainvestigacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) DEFAULT NULL,
  `idEscuela` int(11) DEFAULT NULL,
  `profesion` varchar(45) DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  `grado` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,1,1,'AGROFORESTAL',' FAUNAAA','MAGISTER','A'),(2,2,2,'AGROFORESTAL ACUICOLA XXXXXXXX',' FAUNA Y FLORA ','ING','A'),(3,3,1,'agroforestal',' fauna','DOCTOR','A'),(4,4,1,'agroforestal',' fauna','PHD','A'),(5,5,1,'agroforestal',' fauna','LICENCIADO','A'),(6,6,1,'agroforestal',' fauna','LICENCIADO','A'),(7,7,1,'agroforestal',' fauna','ING','A'),(9,8,1,'agroforestal',' fauna','MAGISTER','A'),(10,9,2,'agroforestal',' fauna','magister','A'),(11,10,1,'agroforestal',' fauna','magister','A'),(12,11,2,'agroforestal',' fauna','magister','A'),(13,12,1,'sdsd','sdsds','sdsd','A'),(14,13,1,'sdsd','sdsds','sdsd','A'),(15,14,2,'agroforestal',' fauna','magister','A'),(16,15,2,'agroforestal',' fauna','magister','A'),(17,16,2,'fgdg','dgfgf','dfgfdg','A'),(18,17,2,'fgdg','dgfgf','dfgfdg','A'),(19,18,2,'fgdg','dgfgf','dfgfdg','A'),(20,19,2,'fgdg','dgfgf','dfgfdg','A'),(21,20,2,'agroforestal','fauna','magister','A'),(22,21,2,'agroforestal',' fauna','magister','A'),(24,23,2,'agroforestal',' fauna','magister','A'),(26,27,5,'ING. SISTEMAS','TECNO','BACHILLER','A'),(28,29,1,'ING. SISTEMAS','TELECOMUNICACIONES','BACHILLER','A'),(29,30,3,'ing. acuicola','arboles','bachiller','A');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autorpublicacion`
--

DROP TABLE IF EXISTS `autorpublicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autorpublicacion` (
  `idAutorPublicacion` int(11) NOT NULL AUTO_INCREMENT,
  `idAutor` int(11) DEFAULT NULL,
  `idPublicacion` int(11) DEFAULT NULL,
  `tipoAutor` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idAutorPublicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autorpublicacion`
--

LOCK TABLES `autorpublicacion` WRITE;
/*!40000 ALTER TABLE `autorpublicacion` DISABLE KEYS */;
INSERT INTO `autorpublicacion` VALUES (1,1,2,'PRINCIPAL','A'),(8,6,1,'PRINCIPAL','A'),(10,13,1,'TESISTA','A'),(11,17,1,'TESISTA','A'),(12,18,1,'TESISTA','A'),(13,19,2,'TESISTA','A'),(14,21,2,'COLABORADOR','A'),(15,22,2,'COLABORADOR','A'),(19,22,3,'COLABORADOR','A'),(20,15,5,'PRINCIPAL','A'),(21,5,4,'PRINCIPAL','A'),(22,22,4,'COLABORADOR','A'),(24,22,5,'COLABORADOR','A'),(35,22,6,'COLABORADOR','A'),(37,29,2,'TESISTA','A'),(38,1,3,'PRINCIPAL','A');
/*!40000 ALTER TABLE `autorpublicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncia`
--

DROP TABLE IF EXISTS `denuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denuncia` (
  `idDenuncia` int(11) NOT NULL AUTO_INCREMENT,
  `idDenunciante` int(11) DEFAULT NULL,
  `idArchivoPublicacion` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idDenuncia`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncia`
--

LOCK TABLES `denuncia` WRITE;
/*!40000 ALTER TABLE `denuncia` DISABLE KEYS */;
INSERT INTO `denuncia` VALUES (37,55,45,'2016-06-27','PLAGIO','A'),(38,56,45,'2016-06-27','AUTORIA','A'),(39,57,18,'2016-06-27','AUTORIA','A'),(40,58,18,'2016-06-27','AUTORIA','A'),(41,59,45,'2016-06-27','PLAGIOPART','A'),(42,60,44,'2016-06-27','AUTORIA','A'),(43,61,119,'2016-06-27','PLAGIO','A'),(44,62,129,'2016-07-30','AUTORIA','A'),(45,63,131,'2016-07-30','AUTORIA','A'),(46,64,133,'2016-07-30','PLAGIOPART','A'),(47,65,132,'2016-07-30','AUTORIA','A');
/*!40000 ALTER TABLE `denuncia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denunciante`
--

DROP TABLE IF EXISTS `denunciante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denunciante` (
  `idDenunciante` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idDenunciante`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denunciante`
--

LOCK TABLES `denunciante` WRITE;
/*!40000 ALTER TABLE `denunciante` DISABLE KEYS */;
INSERT INTO `denunciante` VALUES (1,11,'A'),(2,12,'A'),(3,13,'A'),(4,14,'A'),(5,15,'A'),(6,20,'N'),(7,17,'A'),(8,21,'A'),(9,24,'A'),(10,49,'A'),(11,50,'A'),(12,51,'A'),(13,52,'A'),(14,53,'A'),(15,54,'A'),(16,55,'A'),(17,56,'A'),(18,57,'A'),(19,58,'A'),(20,59,'A'),(21,60,'A'),(22,61,'A'),(23,62,'A'),(24,63,'A'),(25,64,'A'),(26,65,'A'),(27,66,'A'),(28,67,'A'),(29,68,'A'),(30,69,'A'),(31,70,'A'),(32,71,'A'),(33,72,'A'),(34,73,'A'),(35,74,'A'),(36,75,'A'),(37,76,'A'),(38,77,'A'),(39,78,'A'),(40,79,'A'),(41,80,'A'),(42,81,'A'),(43,82,'A'),(44,83,'A'),(45,84,'A'),(46,85,'A'),(47,86,'A'),(48,87,'A'),(49,88,'A'),(50,89,'A'),(51,90,'A'),(52,91,'A'),(53,92,'A'),(54,93,'A'),(55,94,'A'),(56,95,'A'),(57,96,'A'),(58,97,'A'),(59,98,'A'),(60,99,'A'),(61,100,'A'),(62,104,'A'),(63,105,'A'),(64,106,'A'),(65,107,'A');
/*!40000 ALTER TABLE `denunciante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escuela`
--

DROP TABLE IF EXISTS `escuela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escuela` (
  `idEscuela` int(11) NOT NULL AUTO_INCREMENT,
  `idFacultad` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idEscuela`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuela`
--

LOCK TABLES `escuela` WRITE;
/*!40000 ALTER TABLE `escuela` DISABLE KEYS */;
INSERT INTO `escuela` VALUES (1,1,'EDUCACION PRIMARIA BILINGUE','A'),(2,1,'EDUCACION INICIAL BILINGUE','A'),(3,2,'INGENIERIA AGROINDUSTRIAL','A'),(4,2,'INGENIERIA AGROFORESTAL ACUICOLA','A');
/*!40000 ALTER TABLE `escuela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultad` (
  `idFacultad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idFacultad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` VALUES (1,'EDUCACION INTERCULTURAL Y HUMANIDADES','A'),(2,'INGENIERIA Y CIENCIAS AMBIENTALES','A');
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineainvestigacion`
--

DROP TABLE IF EXISTS `lineainvestigacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineainvestigacion` (
  `idLineaInvestigacion` int(11) NOT NULL AUTO_INCREMENT,
  `idAreaInvestigacion` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idLineaInvestigacion`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineainvestigacion`
--

LOCK TABLES `lineainvestigacion` WRITE;
/*!40000 ALTER TABLE `lineainvestigacion` DISABLE KEYS */;
INSERT INTO `lineainvestigacion` VALUES (1,1,'SILVICULTURA Y MANEJO DE ESPECIES FORESTALES MADERABLES','A'),(2,1,'MANEJO DE BOSQUES NATURALES TROPICALES','A'),(3,1,'ECOLOGIA, CONSERVACION Y MANEJO DE FAUNA SILVESTRE','A'),(4,1,'SERVICIOS AMBIENTALES','A'),(5,1,'SISTEMAS AGROFORESTALES','A'),(6,1,'RESTAURACION Y MANEJO DE ECOSISTEMAS TERRESTRES','A'),(7,1,'CULTIVOS TROPICALES ALIMENTICIOS E INDUSTRIALES','A'),(8,1,'RECUPERACION, CONSERVACION, REMEDIACION, FERTILIZACION Y MANEJO DE SUELOS','A'),(9,1,'SANIDAD VEGETAL','A'),(10,1,'APROVECHAMIENTO DE PRODUCTOS FORESTALES Y AGRICOLAS','A'),(11,1,'BIOTECNOLOGIA DE ESPECIES FORESTALES','A'),(12,1,'SOCIOECONOMIA DE SISTEMAS PRODUCTIVOS','A'),(13,2,'MANEJO DE RECURSOS HIDROBIOLOGICOS AMAZONICOS EN ECOSISTEMAS NATUALES','A'),(14,2,'MANEJO DE RECURSOS HIDROBIOLOGICOS AMAZONICOS EN ECOSISTEMAS ARTIFICIALES','A'),(15,2,'RESTAURACION Y MANEJO DE ECOSISTEMAS ACUATICOS','A'),(16,2,'SANIDAD ACUICOLA','A'),(17,2,'MEJORAMIENTO GENETICO DE ESPECIES ACUICOLAS','A'),(18,3,'CARACTERIZACION FISICA, QUIMICA Y BIOLOGICA DE RECURSOS CON POTENCIAL AGROINDUSTRIAL','A'),(19,3,'ALIMENTOS FUNCIONALES Y COMPUESTOS BIOACTIVOS','A'),(20,3,'EVALUACION SENSORIAL','A'),(21,3,'MICROBIOLOGIA DE ALIMENTOS','A'),(22,3,'EVALUACION NUTRICIONAL TOXICOLOGICA','A'),(23,4,'TECNOLOGIA DE FRUTAS Y HORTALIZAS','A'),(24,4,'TECNOLOGIA DE FRUTAS Y PRODUCTOS CARNICOS','A'),(25,4,'TECNOLOGIA DE FRUTAS Y PRODUCTOS LACTEOS','A'),(26,4,'TECNOLOGIA DE RECURSOS HIDROBIOLOGICOS','A'),(27,4,'TECNOLOGIA DE CEREALES, RAICES Y TUBERCULOS','A'),(28,4,'TECNOLOGIA DE ACEITES Y GRASAS','A'),(29,4,'TECNOLOGIA DE PRODUCTOS AGROINDUSTRIALES NO ALIMENTARIOS','A'),(30,4,'DESARROLLO TECNOLOGICO DE PRODUCTOS BIOENERGETICOS','A'),(31,4,'APLICACION DE TECNOLOGIAS EMERGENTES EN LA AGROINDUSTRIA','A'),(32,4,'TECNOLOGIA DE TINTES Y COLORANTES NATURALES','A'),(33,4,'TECNOLOGIA DE BIOPOLIMEROS','A'),(34,4,'BIOTECNOLOGIA AGROINDUSTRIAL','A'),(35,5,'DISE√É¬±O Y AUTOMATIZACION DE PROCESOS AGROINDUSTRIALES','A'),(36,5,'OPTIMIZACION DE PROCESOS AGROINDUSTRIALES','A'),(37,5,'MODALEMIENTO Y PLANIFICACION INTEGRADA PARA SISTEMAS DE PRODUCCION AGROINDUSTRIAL','A'),(38,5,'PROPIEDADES FISICAS, MECANICAS Y TERMICAS DE PRODUCTOS AGROINDUSTRIALES','A'),(39,5,'EMBALAJE Y ESTABILIDAD DE ALIMENTOS','A'),(40,5,'DISE√É¬±O Y DESARROLLO DE NUEVOS PRODUCTOS','A'),(41,6,'AGRONEGOCIOS','A'),(42,6,'GESTION DE LA CALIDAD E INOCUIDAD','A'),(43,6,'SEGURIDAD ALIMENTARIA Y CAMBIO CLIMATICO','A'),(44,7,'ESTUDIOS BIODIVERSIDAD, ETNOBOTANICA, ETNO-ZOOLOGIA','A'),(45,7,'ESTUDIOS ANTROPOLOGICOS','A'),(46,7,'CONSERVACION IN-SITU, EX SITU Y PROGRAMACION DE PLANTAS MEDICINALES','A'),(47,7,'QUIMICA Y ETNO-FARMACEUTICA','A'),(48,7,'FITOQUIMICO, TOXICOLOGIA Y DOSIS','A'),(49,7,'BIOENSAYOS, ANALISIS Y ESTANDARIZACION QUIMICA','A'),(50,7,'PRUEBAS PRE CLINICAS','A'),(51,7,'TRATAMIENTOS Y PRUEBAS CLINICAS','A'),(52,7,'CIENCIAS BIOMEDICAS','A'),(53,7,'MEDICINA TRADICIONAL Y OCCIDENTAL','A'),(54,8,'ESTRATEGIAS METODOLOGICAS INTERCULTURALES','A'),(55,8,'CONOCIMIENTOS LOCALES Y DIVERSIFICACION INTERCULTURAL','A'),(56,8,'INTERCULTURALIDAD EN LOS PROCESOS DE ENSE√É¬±ANZA Y APRENDIZAJE','A'),(57,8,'CONDUCTAS Y RELACIONES INTERPERSONALES','A'),(58,9,'ESTRATEGIAS PARA MEJORAR LA CONCIENCIA ECOLOGICA','A'),(59,9,'PRACTICAS SALUDABLES ANCESTRALES','A'),(60,10,'TRATAMIENTO DE LENGUAS','A'),(61,10,'ENSE√É¬±ANZA DE LENGUAS INDIGENAS COMO SEGUNDA LENGUA','A'),(62,10,'ESTUDIOS EVALUATIVOS DE LA EDUCACION INTERCULTURAL BILINGUE EN LA EDUCACION FORMAL','A'),(63,11,'COSMOVISION AMAZONICA Y EDUCACION','A'),(64,11,'CULTURA POPULAR Y EDUCACION','A'),(65,11,'HISTORIA DE LAS CULTURAS INDIGENAS','A'),(66,11,'SISTEMATIZACION DE CULTURAS AMAZONICAS','A'),(67,12,'ARTES PLASTICAS AMAZONICAS','A'),(68,12,'MUSICA AMAZONICA','A'),(69,12,'TEXTILES','A'),(70,12,'CREACION LITERARIA','A');
/*!40000 ALTER TABLE `lineainvestigacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` char(9) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'EDEHERR','ROSSETTI','43056714','F','JR. CASTILLA # 225','22342434','EDERCIN@GMAIL.COM','A'),(2,'ROSETT','MORALES','45454545','F','JHJHJ','1212121','rrrQkhjhj','A'),(3,'JUAN','ponce','43056715','M','aca toy','942154007','edercin@qqqqq','A'),(4,'PEDRO','ponce','43056716','M','aca toy','942154007','edercin@qqqqq','A'),(5,'FAVIAN','ponce morales','43056717','M','aca toy','942154007','edercin@qqqqq','A'),(6,'JONAS','ponce','43056718','M','aca toy','942154007','edercin@qqqqq','A'),(7,'EEQUIEL','ponce','43056719','M','aca toy','942154007','edercin@qqqqq','A'),(8,'ISAIAS','ponce','43056720','M','aca toy','942154007','edercin@qqqqq','A'),(9,'TOMAS','ponce','43056721','M','aca toy','942154007','edercin@qqqqq','A'),(10,'LEON','ponce','43056722','M','aca toy','942154007','edercin@qqqqq','A'),(11,'JUDAS','ponce','43056723','M','aca toy aqui','942154007','edercin@hotmail.com','A'),(12,'DAVID','ponce','43056724','M','aca toy','942154007','edercin@qqqqq','A'),(13,'YONY','ponce','43056725','M','aca toy','942154007','edercin@qqqqq','A'),(14,'OCTAVIO','ponce','43056726','M','aca toy','942154007','edercin@qqqqq','A'),(15,'GILBERTO','ponce','43056727','M','aca toy','942154007','edercin@qqqqq','A'),(16,'LUIS','ponce','43056728','M','aca toy','942154007','edercin@qqqqq','A'),(17,'CESAR','ponce','43056729','M','aca toy aqui','942154007','edercin@qqqqq','A'),(18,'GEORGE','ponce','43056730','M','aca toy aqui, jeje','942154007','edercin@qqqqq.unia.pe','A'),(19,'HIRAM','ponce tema','43056731','M','aca toy','942154007','edercin@qqqqq','A'),(20,'SERGIO','ponce','43056732','M','aca toy aqui','942154007','edercin@unia.edu.pe','A'),(21,'POOL','ponce','43056733','M','aca toy','942154007','edercin@gmail.com','A'),(23,'CRISTIAN','ponce','43056735','M','aca toy','942154007','edercin@qqqqq','A'),(25,'ALNA','ponce','43056737','M','aca toy','942154007','edercin@qqqqq','A'),(26,'POCHO','ponce','43056738','M','aca toy','942154007','edercin@qqqqq','A'),(27,'EDEHER','ROSSETTI','99999999','M','JR. CASTILLA','1212122','EDERCIN@GMAIL.COM','A'),(29,'JACINTO','PANFILO','89898989','F','JR. CASTILLA','961030029','edercin@gmail.com','A'),(30,'luis','perea','00000001','F','Jr. Castilla','5456132','edercin@gmail.com','A'),(31,'EDEHER','Rossetti','67676767','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(32,'atanasio','portocarrero','54367890','M','jr castilla','98989989','ssddd@jkjk','A'),(33,'atanasio','portocarrero','12332156','M','jr castilla','98989989','ssddd@jkjk','A'),(34,'EDEHER','Rossetti','23232323','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(35,'EDEHER','Rossetti','14623578','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(36,'EDEHER','Rossetti','98765421','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(37,'EDEHER','Rossetti','11110000','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(38,'EDEHER','Rossetti','12121212','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(39,'EDEHER','Rossetti','67676767','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(40,'EDEHER','Rossetti','00000088','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(41,'EDEHER','Rossetti','00001111','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(42,'EDEHER','Rossetti','67676767','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(43,'EDEHER','Rossetti','89898989','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(44,'atanasio','portocarrero','78787878','M','jr castilla','43056714','ssddd@jkjk','A'),(45,'EDEHER','Rossetti','21212121','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(46,'EDEHER','Rossetti','67891242','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(47,'EDEHER','Rossetti','56565656','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(48,'edeher rossetti','ponces','43056799','M','jr castilla','456123','@@@@@@@@','A'),(49,'edeher 333','ponce','43053434','M','aca toy','942154007','edercin@qqqqq prueba','A'),(50,'edeher 333','ponce','43056767','M','aca toy','942154007','edercin@qqqqq prueba','A'),(51,'edeher 333','ponce','43058989','M','aca toy','942154007','edercin@qqqqq prueba','A'),(52,'pedro','favian','03030303','F','vbvbv','546465','@@@@@@@','A'),(53,'pedro','favian','03030303','F','vbvbv','546465','@@@@@@@','A'),(54,'pedro','favian','03030303','F','vbvbv','546465','@@@@@@@','A'),(55,'pedro','favian','03030303','F','vbvbv','546465','@@@@@@@','A'),(59,'Edeher','Rossetti','43231234','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(60,'Edeher','Rossetti','67678990','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(62,'Edeher','Rossetti','45645669','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(63,'Edeher','Rossetti','45645669','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(64,'Edeher','Rossetti','65432178','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(65,'Edeher','Rossetti','89753100','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(66,'Edeher','Rossetti','99998887','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(67,'Edeher','Rossetti','22222333','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(68,'Edeher','Rossetti','6666777','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(69,'Edeher','Rossetti','43546576','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(70,'Edeher','Rossetti','76879809','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(71,'Edeher','Rossetti','56565656','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(72,'Edeher','Rossetti','44441111','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(73,'Edeher','Rossetti','67545454','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(74,'Edeher','Rossetti','98098087','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(75,'Edeher','Rossetti','12121212','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(76,'Edeher','Rossetti','56565656','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(77,'Edeher','Rossetti','41235123','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(78,'Edeher','Rossetti','32323231','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(79,'Edeher','Rossetti','23233121','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(80,'Edeher','Rossetti','54453213','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(81,'Edeher','Rossetti','12121212','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(82,'Edeher','Rossetti','89896565','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(83,'Edeher','Rossetti','34343478','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(84,'Edeher','Rossetti','32323212','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(85,'Edeher','Rossetti','12121212','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(86,'Edeher','Rossetti','23323234','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(87,'Edeher','Rossetti','32342345','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(88,'Edeher','Rossetti','23232334','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(89,'Edeher','Rossetti','34345445','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(90,'Edeher','Rossetti','87877878','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(91,'Edeher','Rossetti','23232323','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(92,'Edeher','Rossetti','34343434','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(93,'Edeher','Rossetti','34343434','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(94,'Edeher','Rossetti','23232323','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(95,'Edeher','Rossetti','433345','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(96,'Edeher','Rossetti','34434455','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(97,'Edeher','Rossetti','34343434','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(98,'Edeher','Rossetti','34343434','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(99,'Edeher','Rossetti','34343434','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(100,'Edeher','Rossetti','23333333','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(101,'edeher tema ','ponce tema','43052564','M','aca toy','942154007','edercin@qqqqq','A'),(102,'EDEHER','ROSSETTI','45454545','F','JR. CASTILLA','961030029','EDERCIN@GMAIL.COM','A'),(103,'EDEHER','ROSSETTI','2322323','F','JR. CASTILLA','961030029','EDERCIN@GMAIL.COM','A'),(104,'Edeher','Rossetti','23454332','F','Jr. Castilla','+51961030029','eer@erere','A'),(105,'Edeher','Rossetti','34565412','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(106,'Edeher','Rossetti','34533675','F','Jr. Castilla','961030029','edercin@gmail.com','A'),(107,'Edeher','Rossetti','45452323','F','Jr. Castilla','961030029','edercin@gmail.com','A');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion` (
  `idPublicacion` int(11) NOT NULL AUTO_INCREMENT,
  `idLineaInvestigacion` int(11) DEFAULT NULL,
  `titulo` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `fechaCarga` date DEFAULT NULL,
  `fechaPublicacion` date DEFAULT NULL,
  `estado` char(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idPublicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (2,7,'A√É¬ëO COMUNICACI√É¬ìN\r\n                        \r\n                        ','2016-05-01','2016-05-01','A'),(3,5,'BUQUEDA DE ALGASS\r\n                        \r\n                        \r\n                        ','2016-03-28','2016-02-10','A'),(4,1,'QEWQREW\r\n                        \r\n                        ','2016-03-28','2016-02-20','A'),(5,1,'EDEHER PONCE                                   \r\n                        \r\n                        \r','2016-05-24','2016-05-10','A'),(6,2,'ALGOTITASZZZZZZ                                     \r\n                        ','2016-06-15','2016-06-06','A'),(13,2,'XZXZZV','2016-06-15','2016-06-06','A'),(14,14,'NUEVESITOSS','2016-07-01','2016-06-07','A'),(15,6,'sss','2016-01-01','2015-12-02','A'),(16,8,'ghggh','2016-02-25','2015-11-02','A'),(17,9,'cvvc','2016-04-24','2015-06-25','A'),(18,1,'DFGDFGDDFDFGDSSD\r\n                        ','2016-07-05','2016-07-11','A'),(35,63,'LOS MATERIALES RECICLADOS Y SU EFECTO EN LA NOCI√É¬ìN DE CONSERVACI√É¬ìN DEL MEDIO AMBIENTE EN NI√É¬ëOS DE 5 A√É¬ëOS DE LA    I.E.I. √Ç¬Ä¬úSANTA ROSA√Ç¬Ä¬ù N√Ç¬∞ 235 - PUCALLPA √Ç¬Ä¬ì 2015','2016-07-12','2016-07-18','A'),(36,1,'A√ëO a√±o √ÅRBOL √°rbol','2016-07-28','2016-02-20','A');
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `rolename` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`rolename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitante`
--

DROP TABLE IF EXISTS `solicitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitante` (
  `idSolicitante` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) DEFAULT NULL,
  `tipoEntidad` varchar(45) DEFAULT NULL,
  `entidad` varchar(45) DEFAULT NULL,
  `areaTrabajo` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idSolicitante`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitante`
--

LOCK TABLES `solicitante` WRITE;
/*!40000 ALTER TABLE `solicitante` DISABLE KEYS */;
INSERT INTO `solicitante` VALUES (1,1,'SERVICIOS','uni','investigacion vicepresidencia','A'),(2,3,'SERVICIOS','mci','informatica','A'),(3,16,'SERVICIOS','unu','investigacion','A'),(4,17,'SERVICIOS','uni','investigacion','A'),(5,17,'SERVICIOS','uni','investigacion','A'),(6,18,'SERVICIOS','uni','investigacion vicepresidencia','N'),(7,19,'SERVICIOS','mci','informatica','A'),(8,31,'SERVICIOS','fg','fg','A'),(9,32,'COMERCIALIZADORA','credicomp','ventas','A'),(10,33,'COMERCIALIZADORA','credicomp','ventas','A'),(11,34,'MANUFACTURERA','ssd','sdsd','A'),(12,35,'MANUFACTURERA','ssd','sdsd','A'),(13,36,'MANUFACTURERA','ssd','sdsd','A'),(14,37,'MANUFACTURERA','ddd','ddd','A'),(15,38,'MANUFACTURERA','ddd','ddd','A'),(16,39,'SERVICIOS','fg','fgf','A'),(17,40,'SERVICIOS','fg','fgf','A'),(18,41,'SERVICIOS','fg','fgf','A'),(19,42,'SERVICIOS','fg','fgf','A'),(20,43,'MANUFACTURERA','dfdf','dfdf','A'),(21,44,'MANUFACTURERA','dfdf','dfdf','A'),(22,45,'SERVICIOS','l√É¬±l√É¬±','jhjh','A'),(23,46,'SERVICIOS','l√É¬±l√É¬±','jhjh','A'),(24,47,'SERVICIOS','hjg','jghgj','A'),(25,48,'SERVICIOS','servisgene','ventas','A'),(26,48,'SERVICIOS','servisgene','ventas','A'),(27,48,'SERVICIOS','servisgene','ventas','A'),(28,48,'SERVICIOS','servisgene','ventas','A'),(29,44,'COMERCIALIZADORA','credicomp','ventas','A'),(30,1,'COMERCIALIZADORA','credicomp','ventas','A'),(31,1,'EDUCACIONAL','HHH','HHH','A'),(32,101,'SERVICIOS','mci','informatica','A'),(33,102,'SERVICIOS','FGF','FFG','A'),(34,103,'SERVICIOS','DSS','SDSD','A');
/*!40000 ALTER TABLE `solicitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temassugeridos`
--

DROP TABLE IF EXISTS `temassugeridos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temassugeridos` (
  `idTemasSugeridos` int(11) NOT NULL AUTO_INCREMENT,
  `idSolicitante` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `tema` varchar(45) DEFAULT NULL,
  `areaTematica` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idTemasSugeridos`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temassugeridos`
--

LOCK TABLES `temassugeridos` WRITE;
/*!40000 ALTER TABLE `temassugeridos` DISABLE KEYS */;
INSERT INTO `temassugeridos` VALUES (1,7,'2016-04-07','buscando a forest','pelicula','A'),(2,1,'2016-04-07','ya se cambio','cambiazo','A'),(3,1,'2016-04-07','buscando a forest','pelicula','N'),(4,1,'2016-04-07','buscando a forest','pelicula','N'),(5,1,'2016-04-07','buscando a forest','pelicula','N'),(6,1,'2016-04-07','buscando a forest','pelicula','N'),(7,1,'2016-04-07','buscando a forest','pelicula','N'),(8,1,'2016-04-07','buscando a forest','pelicula','N'),(9,1,'2016-04-07','buscando a forest','pelicula','N'),(10,1,'2016-04-07','buscando a forest','pelicula','N'),(11,32,'2016-06-28','buscando a forest','pelicula','A'),(12,33,'2016-06-28','FGFF','FGG','A'),(13,34,'2016-07-06','SDSSDS','SDSD','A');
/*!40000 ALTER TABLE `temassugeridos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('prasadkharkar','password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `username` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `rolename` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`username`,`rolename`),
  KEY `users_roles_fk2` (`rolename`),
  CONSTRAINT `users_roles_fk1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `users_roles_fk2` FOREIGN KEY (`rolename`) REFERENCES `roles` (`rolename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES ('prasadkharkar','user');
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `idPersona` int(11) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasena` blob,
  `tipo` char(1) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (11,4,'pedro','Ñ¬dµÜÆôL∏»q üÙ±©','U','A'),(12,1,'eponce','89j!�8HcA��O�R�','A','A'),(13,1,'edeher','89j!�8HcA��O�R�','U','A');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visita`
--

DROP TABLE IF EXISTS `visita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visita` (
  `idVisita` int(11) NOT NULL AUTO_INCREMENT,
  `idArchivoPublicacion` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idVisita`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
INSERT INTO `visita` VALUES (9,17,'2016-05-25','A'),(10,18,'2016-05-25','A'),(11,17,'2016-05-25','A'),(12,44,'2016-05-25','A'),(13,17,'2016-05-25','A'),(14,18,'2016-05-25','A'),(15,17,'2016-05-25','A'),(16,44,'2016-05-25','A'),(17,18,'2016-05-25','A'),(18,18,'2016-05-25','A'),(19,18,'2016-05-25','A'),(20,44,'2016-05-25','A'),(21,17,'2016-05-25','A'),(22,44,'2016-05-25','A'),(23,45,'2016-05-25','A'),(25,33,'2016-05-25','A'),(26,43,'2016-05-25','A'),(27,49,'2016-05-25','A'),(28,19,'2016-05-25','A'),(29,23,'2016-05-25','A'),(30,26,'2016-05-25','A'),(31,27,'2016-05-25','A'),(32,28,'2016-05-25','A'),(33,21,'2016-05-25','A'),(34,20,'2016-05-25','A'),(35,24,'2016-05-25','A'),(36,25,'2016-05-25','A'),(37,17,'2016-05-25','A'),(39,33,'2016-05-25','A'),(41,18,'2016-05-26','A'),(43,33,'2016-05-26','A'),(45,33,'2016-05-26','A'),(49,33,'2016-05-30','A'),(50,19,'2016-06-03','A'),(51,18,'2016-06-06','A'),(52,17,'2016-06-06','A'),(53,17,'2016-06-06','A'),(57,43,'2016-06-09','A'),(59,33,'2016-06-09','A'),(60,33,'2016-06-09','A'),(61,49,'2016-06-09','A'),(62,19,'2016-06-10','A'),(64,17,'2016-06-15','A'),(65,19,'2016-06-15','A'),(67,69,'2016-06-16','A'),(68,88,'2016-06-16','A'),(69,113,'2016-06-16','A'),(70,114,'2016-06-16','A'),(71,115,'2016-06-16','A'),(72,35,'2016-06-16','A'),(73,56,'2016-06-16','A'),(74,57,'2016-06-16','A'),(75,59,'2016-06-16','A'),(76,118,'2016-06-17','A'),(77,119,'2016-06-17','A'),(78,124,'2016-06-17','A'),(79,125,'2016-06-17','A'),(80,118,'2016-06-17','A'),(81,118,'2016-06-17','A'),(82,118,'2016-06-23','A'),(83,118,'2016-06-23','A'),(84,118,'2016-06-24','A'),(85,118,'2016-07-01','A'),(86,119,'2016-04-15','A'),(87,120,'2016-04-18','A'),(88,121,'2016-03-21','A'),(89,15,'2016-07-04','A'),(90,16,'2016-07-04','A'),(91,16,'2016-07-04','A'),(92,16,'2016-07-04','A'),(93,17,'2016-07-06','A'),(94,15,'2016-07-06','A'),(95,15,'2016-07-06','A'),(96,15,'2016-07-06','A'),(97,119,'2016-07-06','A'),(98,16,'2016-07-06','A'),(99,26,'2016-07-06','A'),(100,28,'2016-07-06','A'),(101,15,'2016-07-07','A'),(102,15,'2016-07-07','A'),(103,15,'2016-07-12','A'),(104,127,'2016-07-28','A'),(105,127,'2016-07-28','A'),(106,128,'2016-07-30','A'),(107,129,'2016-07-30','A'),(108,130,'2016-07-30','A'),(109,129,'2016-07-30','A'),(110,132,'2016-07-30','A'),(111,132,'2016-07-30','A'),(112,132,'2016-07-30','A'),(113,132,'2016-07-30','A'),(114,133,'2016-07-30','A'),(115,132,'2016-07-30','A'),(116,132,'2016-07-30','A'),(117,131,'2016-07-30','A'),(118,132,'2016-07-30','A'),(119,131,'2016-07-30','A'),(120,132,'2016-07-30','A'),(121,26,'2016-07-30','A'),(122,131,'2016-08-07','A'),(123,131,'2016-08-07','A'),(124,131,'2016-10-06','A');
/*!40000 ALTER TABLE `visita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reposiunia'
--

--
-- Dumping routines for database 'reposiunia'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_all`( )
BEGIN 
  
select 
	
	idArchivoDenuncia,
        denuncia.idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,archivo,
 denuncia.fecha,denuncia.descripcion as 'descripcion2',urlLocal as 'urlLocalD', urlWeb as 'urlWebD',archivo as 'archivoD'
   

  from archivo,archivodenuncia,denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion

where  archivodenuncia.idDenuncia=denuncia.idDenuncia
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion

 
and archivodenuncia.estado='A';

 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_bco`(in VidArchivoDenuncia int(11) )
BEGIN 
  
select 
	
	idArchivoDenuncia,
        denuncia.idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,archivo,
 denuncia.fecha,denuncia.descripcion as 'descripcion2',urlLocal as 'urlLocalD', urlWeb as 'urlWebD',archivo as 'archivoD'
   

  from archivo,archivodenuncia,denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion

where idArchivoDenuncia =VidArchivoDenuncia and 
 archivodenuncia.idDenuncia=denuncia.idDenuncia
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and archivodenuncia.estado='A';

 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_bco1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_bco1`(in VidDenuncia int(11) )
BEGIN 
  
select 
	
	idArchivoDenuncia,
        denuncia.idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,archivo,
 denuncia.fecha,denuncia.descripcion as 'descripcion2',urlLocal as 'urlLocalD', urlWeb as 'urlWebD',archivo as 'archivoD'
   

  from archivo,archivodenuncia,denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion

where denuncia.idDenuncia=VidDenuncia and
 archivodenuncia.idDenuncia=denuncia.idDenuncia
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and archivodenuncia.estado='A';

 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_bcoArchi` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_bcoArchi`(
			in VidArchivoDenuncia int(11) 
)
BEGIN 
  
 select 
	
	archivo

  from archivo,archivodenuncia,denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion

where idArchivoDenuncia =VidArchivoDenuncia and 
 archivodenuncia.idDenuncia=denuncia.idDenuncia
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and archivodenuncia.estado='A';

 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_bcoArchi2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_bcoArchi2`(
			in VidDenuncia int(11) 
)
BEGIN 
  
 select 
	
	archivo

  from archivo,archivodenuncia,denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion

where 
denuncia.idDenuncia =VidDenuncia 
and 
 archivodenuncia.idDenuncia=denuncia.idDenuncia
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and archivodenuncia.estado='A';

 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_e`(
					in VidArchivoDenuncia int(11)
   
                )
BEGIN 
 delete archivo,archivodenuncia
  from archivo ,archivodenuncia
 where archivodenuncia.idArchivoDenuncia=VidArchivoDenuncia 
  and archivo.idArchivo=archivodenuncia.idArchivo;
  
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_m`(
					
                    in VidArchivoDenuncia INT(11),
                    in VidDenuncia int(11),
					IN  VurlLocal  VARCHAR(45)   , 
                    IN  VurlWeb   VARCHAR(45)  ,
                    
					 in Varchivo longblob
				   
                )
BEGIN 

UPDATE
archivo ,archivodenuncia
SET 
 idDenuncia=VidDenuncia,
 urlLocal=VurlLocal, 
 urlWeb=VurlWeb,
 archivo=Varchivo
 


where  idArchivoDenuncia=VidArchivoDenuncia and archivo.idArchivo=archivodenuncia.idArchivo;

         
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_n`(
					in VidDenuncia INT(11),
                    
					IN  VurlLocal  VARCHAR(45)   , 
                    IN  VurlWeb   VARCHAR(45) ,     
					in Varchivo longblob
                )
BEGIN 

   declare id integer;
   INSERT INTO archivo (urlLocal , urlWeb,archivo,estado) 
 
	
VALUES  ( VurlLocal, VurlWeb,Varchivo,'A') ; 

   set id=last_insert_id();
   insert into  archivodenuncia (idArchivo,idDenuncia,estado)
values (id,VidDenuncia,'A');

         
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivodenuncia_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivodenuncia_n1`(
					in VidDenuncia INT(11),
                    IN  VurlLocal  VARCHAR(45)   , 
                    IN  VurlWeb   VARCHAR(45) ,     
					in Varchivo longblob
)
begin
  declare id integer;
  declare id2 integer;
  
 INSERT INTO archivo (urlLocal , urlWeb,archivo,estado) 
 VALUES  ( VurlLocal, VurlWeb,Varchivo,'A') ; 
   set id=last_insert_id();
   
insert into  archivodenuncia (idArchivo,idDenuncia,estado)
values (id,VidDenuncia,'A');

set id2=last_insert_id();

select 
	
	idArchivoDenuncia,
        denuncia.idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,archivo,
 denuncia.fecha,denuncia.descripcion as 'descripcion2',urlLocal as 'urlLocalD', urlWeb as 'urlWebD',archivo as 'archivoD'
   

  from archivo,archivodenuncia,denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion

where idArchivoDenuncia =id2 and 
 archivodenuncia.idDenuncia=denuncia.idDenuncia
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and archivodenuncia.estado='A';

 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_all`(

		
)
begin
  select 
	
	idArchivoPublicacion,
    publicacion.idPublicacion, 
		lineainvestigacion.idlineaInvestigacion,
			areainvestigacion.idAreaInvestigacion,
            areainvestigacion.descripcion as 'area', 
		lineainvestigacion.descripcion as 'linea', 
        titulo, fechaCarga, fechaPublicacion,

    archivopublicacion.descripcion,
    urlLocal,
    urlWeb,archivo

  from archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion

where 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 
 
and Archivopublicacion.estado='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_bcArchi` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_bcArchi`(
in VidArchivoPublicacion int(11)
		
)
begin
   select 
	
	archivo

  from archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion

where 

 Archivopublicacion.idArchivoPublicacion =VidArchivoPublicacion
and archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 
 
and Archivopublicacion.estado='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_bco`(
in VidArchivoPublicacion int(11)
		
)
begin
   select 
	
	idArchivoPublicacion,
    publicacion.idPublicacion, 
		lineainvestigacion.idlineaInvestigacion,
			areainvestigacion.idAreaInvestigacion,
            areainvestigacion.descripcion as 'area', 
		lineainvestigacion.descripcion as 'linea', 
        titulo, fechaCarga, fechaPublicacion,

    archivopublicacion.descripcion,
    urlLocal,
    urlWeb,archivo

  from archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion

where 
 idArchivoPublicacion=VidArchivoPublicacion
 and archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 
 
and Archivopublicacion.estado='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_bco1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_bco1`(
in VidPublicacion int(11)
		
)
begin
   select 
	
	idArchivoPublicacion,
    publicacion.idPublicacion, 
		lineainvestigacion.idlineaInvestigacion,
			areainvestigacion.idAreaInvestigacion,
            areainvestigacion.descripcion as 'area', 
		lineainvestigacion.descripcion as 'linea', 
        titulo, fechaCarga, fechaPublicacion,

    archivopublicacion.descripcion,
    urlLocal,
    urlWeb,archivo

  from archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion

where 

Archivopublicacion.idPublicacion=VidPublicacion
and archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 
 
and Archivopublicacion.estado='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_e`(
in VidArchivoPublicacion int(11)
		
)
begin
  delete archivopublicacion,archivo
  from archivopublicacion, archivo 
  
 where  
		idArchivoPublicacion=VidArchivoPublicacion 
  and 
		archivo.idArchivo=archivopublicacion.idArchivo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_m`(
in VidArchivoPublicacion int(11),
		in VidPublicacion int(11),
        in Vdescripcion varchar(45),
        in VurlLocal varchar(45),
        in VurlWeb varchar(45),
        in Varchivo longblob
)
begin
 update archivo, archivopublicacion
set

    urlLocal=VurlLocal ,  
    urlWeb=VurlWeb,
    archivo=Varchivo,
	
	idPublicacion=VidPublicacion,
    descripcion=Vdescripcion

where  idArchivoPublicacion=VidArchivoPublicacion

 and archivo.idArchivo=archivopublicacion.idArchivo;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_n`(
		in VidPublicacion int(11),
        in Vdescripcion varchar(45),
        in VurlLocal varchar(45),
        in VurlWeb varchar(45),
        in Varchivo longblob
)
begin
 declare id integer;
 if not exists ( select *from archivopublicacion where idPublicacion=VidPublicacion and descripcion=Vdescripcion  and estado='A')then
   INSERT INTO archivo (urlLocal , urlWeb,archivo,estado ) 
 
	
VALUES  ( VurlLocal, VurlWeb,Varchivo,'A' ) ; 

   set id=last_insert_id();
   insert into  archivopublicacion (idArchivo,idPublicacion,descripcion,estado)
values (id,VidPublicacion,Vdescripcion,'A');

end if;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivopublicacion_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivopublicacion_n1`(
		in VidPublicacion int(11),
        in Vdescripcion varchar(45),
        in VurlLocal varchar(45),
        in VurlWeb varchar(45),
        in Varchivo longblob
)
begin
 declare id integer;
  declare id2 integer;
  if not exists ( select *from archivopublicacion where idPublicacion=VidPublicacion and descripcion=Vdescripcion  and estado='A')then
   INSERT INTO archivo (urlLocal , urlWeb,archivo,estado ) 
 
	
VALUES  ( VurlLocal, VurlWeb,Varchivo,'A' ) ; 

   set id=last_insert_id();
  
   insert into  archivopublicacion (idArchivo,idPublicacion,descripcion,estado)
values (id,VidPublicacion,Vdescripcion,'A');
set id2=last_insert_id();
 end if;
 select 
	
	idArchivoPublicacion,
    publicacion.idPublicacion, 
		lineainvestigacion.idlineaInvestigacion,
			areainvestigacion.idAreaInvestigacion,
            areainvestigacion.descripcion as 'area', 
		lineainvestigacion.descripcion as 'linea', 
        titulo, fechaCarga, fechaPublicacion,

    archivopublicacion.descripcion,
    urlLocal,
    urlWeb

  from archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion

where 
 idArchivoPublicacion=id2
 and archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 
 
and Archivopublicacion.estado='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_all`(
			
            )
begin 
select 
idArchivoSolicitado,
solicitante.idSolicitante, tipoEntidad, entidad,areaTrabajo,nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion,
  publicacion.idPublicacion,
			lineainvestigacion.idlineaInvestigacion,
				areainvestigacion.idAreaInvestigacion,
                areainvestigacion.descripcion as 'area', 
			lineainvestigacion.descripcion as 'linea', 
            titulo, fechaCarga, 
            fechaPublicacion,
  archivopublicacion.descripcion ,urlLocal,urlWeb,
fechaSolicitud,
respuesta,
fechaRespuesta

from archivossolicitados,solicitante,persona,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion, archivo
where 
 archivossolicitados.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivossolicitados.idSolicitante=solicitante.idSolicitante
and solicitante.idPersona=persona.idPersona
and archivopublicacion.idArchivo=archivo.idArchivo
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and 
 archivossolicitados.estado='A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_bco`(
			in VidArchivoSolicitado int(11)
            )
begin 
select 
idArchivoSolicitado,
solicitante.idSolicitante, tipoEntidad, entidad,areaTrabajo,nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion,
  publicacion.idPublicacion,
			lineainvestigacion.idlineaInvestigacion,
				areainvestigacion.idAreaInvestigacion,
                areainvestigacion.descripcion as 'area', 
			lineainvestigacion.descripcion as 'linea', 
            titulo, fechaCarga, 
            fechaPublicacion,
  archivopublicacion.descripcion ,urlLocal,urlWeb,
fechaSolicitud,
respuesta,
fechaRespuesta

from archivossolicitados,solicitante,persona,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion, archivo
where 
idArchivoSolicitado=VidArchivoSolicitado 
and archivossolicitados.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivossolicitados.idSolicitante=solicitante.idSolicitante
and solicitante.idPersona=persona.idPersona
and archivopublicacion.idArchivo=archivo.idArchivo
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and 
 archivossolicitados.estado='A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_bco1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_bco1`(
			in VidSolicitante int(11)
            )
begin 
select 
idArchivoSolicitado,
solicitante.idSolicitante, tipoEntidad, entidad,areaTrabajo,nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion,
  publicacion.idPublicacion,
			lineainvestigacion.idlineaInvestigacion,
				areainvestigacion.idAreaInvestigacion,
                areainvestigacion.descripcion as 'area', 
			lineainvestigacion.descripcion as 'linea', 
            titulo, fechaCarga, 
            fechaPublicacion,
  archivopublicacion.descripcion ,urlLocal,urlWeb,
fechaSolicitud,
respuesta,
fechaRespuesta

from archivossolicitados,solicitante,persona,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion, archivo
where 
solicitante.idSolicitante=VidSolicitante 
and archivossolicitados.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivossolicitados.idSolicitante=solicitante.idSolicitante
and solicitante.idPersona=persona.idPersona
and archivopublicacion.idArchivo=archivo.idArchivo
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and 
 archivossolicitados.estado='A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_bco2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_bco2`(
			in VidArchivoPublicacion int(11)
            )
begin 
select 
idArchivoSolicitado,
solicitante.idSolicitante, tipoEntidad, entidad,areaTrabajo,nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion,
  publicacion.idPublicacion,
			lineainvestigacion.idlineaInvestigacion,
				areainvestigacion.idAreaInvestigacion,
                areainvestigacion.descripcion as 'area', 
			lineainvestigacion.descripcion as 'linea', 
            titulo, fechaCarga, 
            fechaPublicacion,
  archivopublicacion.descripcion ,urlLocal,urlWeb,
fechaSolicitud,
respuesta,
fechaRespuesta

from archivossolicitados,solicitante,persona,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion, archivo
where 
archivopublicacion.idArchivoPublicacion=VidArchivoPublicacion 
and archivossolicitados.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivossolicitados.idSolicitante=solicitante.idSolicitante
and solicitante.idPersona=persona.idPersona
and archivopublicacion.idArchivo=archivo.idArchivo
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and 
 archivossolicitados.estado='A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_e`(
		in VidArchivoSolicitado int(11)
        
)
begin 
delete from  archivossolicitados 

 where  idArchivoSolicitado= VidArchivoSolicitado;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_m`(
		in VidArchivoSolicitado int(11),
		in Vrespuesta varchar(45),
        in VfechaRespuesta date,
        in VidSolicitante int(11),
        in VidArchivoPublicacion int(11)
        
)
begin 
update archivossolicitados
set

 idSolicitante=VidSolicitante, 
 idArchivoPublicacion=VidArchivoPublicacion, 
 respuesta=Vrespuesta, 
 fechaRespuesta=VfechaRespuesta 
 
 where 
 idArchivoSolicitado= VidArchivoSolicitado;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_n`(
		in VidSolicitante int(11),
        in VidArchivoPublicacion int(11)
        
        
)
begin 
insert into archivossolicitados(idSolicitante, idArchivoPublicacion, fechaSolicitud, respuesta, fechaRespuesta, estado )
values (VidSolicitante,VidArchivoPublicacion,curdate(),'NOATENDIDO',CURDATE(),'A');

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_n1`(
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VtipoEntidad varchar(45),
                    in Ventidad varchar(45),
                    in VareaTrabajo varchar(45),
                    
                    in VidArchivoPublicacion int(11)
   
                )
BEGIN 

declare id integer;
declare id1 integer;
declare id2 integer;
   INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
 
	
VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

   set id=last_insert_id();
   
   insert into  solicitante (idPersona,tipoEntidad,entidad,areaTrabajo,estado)
values (id,VtipoEntidad,Ventidad,VareaTrabajo,'A');
set id1=last_insert_id();

insert into archivossolicitados(idSolicitante, idArchivoPublicacion, fechaSolicitud, respuesta, fechaRespuesta, estado )
values (id1,VidArchivoPublicacion,curdate(),'NOATENDIDO',CURDATE(),'A');
set id2=last_insert_id();
select 
idArchivoSolicitado,
solicitante.idSolicitante, tipoEntidad, entidad,areaTrabajo,nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion,
  publicacion.idPublicacion,
			lineainvestigacion.idlineaInvestigacion,
				areainvestigacion.idAreaInvestigacion,
                areainvestigacion.descripcion as 'area', 
			lineainvestigacion.descripcion as 'linea', 
            titulo, fechaCarga, 
            fechaPublicacion,
  archivopublicacion.descripcion ,urlLocal,urlWeb,
fechaSolicitud,
respuesta,
fechaRespuesta

from archivossolicitados,solicitante,persona,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion, archivo
where 
idArchivoSolicitado=id2
and archivossolicitados.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivossolicitados.idSolicitante=solicitante.idSolicitante
and solicitante.idPersona=persona.idPersona
and archivopublicacion.idArchivo=archivo.idArchivo
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and 
 archivossolicitados.estado='A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_n2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_n2`(
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VtipoEntidad varchar(45),
                    in Ventidad varchar(45),
                    in VareaTrabajo varchar(45),
                    
                    in VidArchivoPublicacion int(11)
   
                )
BEGIN 

declare id integer;
declare id1 integer;
declare id2 integer;

if not exists ( select idPersona from Persona where dni=Vdni)			  
 then 
			INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
			 
			VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

			   set id=last_insert_id();
			   
			   insert into  solicitante (idPersona,tipoEntidad,entidad,areaTrabajo,estado)
			values (id,VtipoEntidad,Ventidad,VareaTrabajo,'A');
			set id1=last_insert_id();

			insert into archivossolicitados(idSolicitante, idArchivoPublicacion, fechaSolicitud, respuesta, fechaRespuesta, estado )
			values (id1,VidArchivoPublicacion,curdate(),'NOATENDIDO',CURDATE(),'A');
			set id2=last_insert_id();


else 
		set id= (select idPersona from Persona where dni=Vdni);
		update persona set
        nombres=Vnombres,
        apellidos=Vapellidos,
        dni=Vdni,
        sexo=Vsexo,
        direccion=Vdireccion,
        telefono=Vtelefono,
        correo=Vcorreo
        where idPersona=id;
        			
			insert into  solicitante (idPersona,tipoEntidad,entidad,areaTrabajo,estado)
			values (id,VtipoEntidad,Ventidad,VareaTrabajo,'A');
			set id1=last_insert_id();
			   
			insert into archivossolicitados(idSolicitante, idArchivoPublicacion, fechaSolicitud, respuesta, fechaRespuesta, estado )
			values (id1,VidArchivoPublicacion,curdate(),'NOATENDIDO',CURDATE(),'A');
			set id2=last_insert_id();

end if;

select 
idArchivoSolicitado,
solicitante.idSolicitante, tipoEntidad, entidad,areaTrabajo,nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion,
  publicacion.idPublicacion,
			lineainvestigacion.idlineaInvestigacion,
				areainvestigacion.idAreaInvestigacion,
                areainvestigacion.descripcion as 'area', 
			lineainvestigacion.descripcion as 'linea', 
            titulo, fechaCarga, 
            fechaPublicacion,
  archivopublicacion.descripcion ,urlLocal,urlWeb,
fechaSolicitud,
respuesta,
fechaRespuesta

from archivossolicitados,solicitante,persona,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion, archivo
where 
idArchivoSolicitado=id2
and archivossolicitados.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivossolicitados.idSolicitante=solicitante.idSolicitante
and solicitante.idPersona=persona.idPersona
and archivopublicacion.idArchivo=archivo.idArchivo
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and 
 archivossolicitados.estado='A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_archivossolicitados_RESPUESTA` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_archivossolicitados_RESPUESTA`(
		in VidArchivoSolicitado int(11),
		in Vrespuesta varchar(45)
       
        
)
begin 
update archivossolicitados
set
 respuesta=Vrespuesta, 
 fechaRespuesta=curdate()
 where 
 idArchivoSolicitado= VidArchivoSolicitado;
 
 select 
idArchivoSolicitado,
solicitante.idSolicitante, tipoEntidad, entidad,areaTrabajo,nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion,
  publicacion.idPublicacion,
			lineainvestigacion.idlineaInvestigacion,
				areainvestigacion.idAreaInvestigacion,
                areainvestigacion.descripcion as 'area', 
			lineainvestigacion.descripcion as 'linea', 
            titulo, fechaCarga, 
            fechaPublicacion,
  archivopublicacion.descripcion ,urlLocal,urlWeb,
fechaSolicitud,
respuesta,
fechaRespuesta

from archivossolicitados,solicitante,persona,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion, archivo
where 
idArchivoSolicitado=VidArchivoSolicitado 
and archivossolicitados.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivossolicitados.idSolicitante=solicitante.idSolicitante
and solicitante.idPersona=persona.idPersona
and archivopublicacion.idArchivo=archivo.idArchivo
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and 
 archivossolicitados.estado='A';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_areainvestigacion_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_areainvestigacion_all`(
		

)
begin
select
idAreaInvestigacion,
descripcion
from areainvestigacion
where  estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_areainvestigacion_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_areainvestigacion_bco`(
		in VidAreaInvestigacion int(11)

)
begin
select
idAreaInvestigacion,
descripcion
from areainvestigacion
where idAreaInvestigacion=VidAreaInvestigacion and estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_areainvestigacion_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_areainvestigacion_e`(
		in VidAreaInvestigacion int(11)
        )
begin
delete from areainvestigacion
where idAreaInvestigacion=VidAreaInvestigacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_areainvestigacion_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_areainvestigacion_m`(

			in VidAreaInvestigacion int(11),
            in Vdescripcion varchar(100)
)
begin 
update areainvestigacion
set
descripcion=Vdescripcion

where 
idAreaInvestigacion=VidAreaInvestigacion;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_areainvestigacion_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_areainvestigacion_n`(
		in Vdescripcion varchar(100)

)
begin
insert into areainvestigacion(descripcion,estado)
values(Vdescripcion,'A');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_all`(
			
            )
begin
select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
 publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion

tipoAutor
 
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' ; 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_bco`(
			in VidAutorPublicacion int(11)
            )
begin
select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
 publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
 
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where idAutorPublicacion=VidAutorPublicacion
 and AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' ; 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_bco1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_bco1`(
			in VidPublicacion int(11)
            )
begin
select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
 
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where autorpublicacion.idPublicacion=VidPublicacion
 and AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' ; 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_bco2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_bco2`(
			in VidAutor int(11)
            )
begin
select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
 
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where autorpublicacion.idAutor=VidAutor
 and AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' ; 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_bco3` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_bco3`(
			in VidPublicacion int(11)
            )
begin
select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
 
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where autorpublicacion.idPublicacion=VidPublicacion
 and AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' and autorpublicacion.tipoAutor='PRINCIPAL' ; 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_bco4` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_bco4`(
			in VidAutorPublicacion int(11),
            in VidPublicacion int(11)
            )
begin
select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
 
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where 
 autorpublicacion.idAutorPublicacion=VidAutorPublicacion and
 autorpublicacion.idPublicacion=VidPublicacion
 and AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A'  ; 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_bco5` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_bco5`(
			in Vtipoautor varchar(45)
            )
begin
select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
 
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where 
 autorpublicacion.tipoAutor=Vtipoautor
 and AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' ; 
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_e`(
			in VidAutorPublicacion int(11))
BEGIN 
  DELETE FROM autorpublicacion

WHERE 
idAutorPublicacion=VidAutorPublicacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_n`(
					IN  Vnombres  VARCHAR(45)   ,
					IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidEscuela int(11),
                   
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45),
                    
                    in VidLineaInvestigacion int(11),
					in Vtitulo varchar(100),
					in VfechaPublicacion date,
                    
					in VtipoAutor varchar(45)
                    )
begin
declare id integer;
declare id2 integer;
declare id3 integer;

	insert into persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
	values  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

  set id=last_insert_id();
   
   insert into autor(idPersona,idEscuela,profesion,especialidad,grado,estado)
   values(id,Videscuela,Vprofesion,Vespecialidad,Vgrado,'A');
   
  set id2=last_insert_id();
  
   
	insert into publicacion (idLineaInvestigacion,  titulo,fechaCarga,fechaPublicacion, estado )
	values (VidLineaInvestigacion, Vtitulo,curdate(),VfechaPublicacion,'A');
  set id3=last_insert_id();
    
    insert into autorpublicacion (idAutor,idPublicacion,tipoAutor,estado)
    values(id2,id3,VtipoAutor,'A');
    
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_n1`(
					IN  VidAutor int(11),
                    
                    in VidLineaInvestigacion int(11),
					in Vtitulo varchar(100),
					in VfechaPublicacion date,
					in VtipoAutor varchar(45)
                    )
begin

declare id integer;

	
  
   
	insert into publicacion (idLineaInvestigacion,  titulo,fechaCarga,fechaPublicacion, estado )
	values (VidLineaInvestigacion, Vtitulo,curdate(),VfechaPublicacion,'A');
  set id=last_insert_id();
    
    insert into autorpublicacion (idAutor,idPublicacion,tipoAutor,estado)
    values(VidAutor,id,VtipoAutor,'A');
    
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_n2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_n2`(
					IN  VidAutor int(11),
                    
                    in VidPublicacion int(11),
                    in VtipoAutor varchar(45)
                    )
begin


    
    insert into autorpublicacion (idAutor,idPublicacion,tipoAutor ,estado)
    values(VidAutor,VidPublicacion, VtipoAutor,'A');
    
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_n3` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_n3`(

					IN  Vnombres  VARCHAR(45)   ,
					IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidEscuela int(11),
                   
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45),
                    
                    in VidPublicacion int(11),
                    
                     in VtipoAutor varchar(45)
                    )
begin
declare id integer;
declare id2 integer;

	insert into persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
	values  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

  set id=last_insert_id();
   
   insert into autor(idPersona,idEscuela,profesion,especialidad,grado,estado)
   values(id,Videscuela,VtipoAutor,Vprofesion,Vespecialidad,Vgrado,'A');
   
  set id2=last_insert_id();
  
    
    insert into autorpublicacion (idAutor,idPublicacion, tipoAutor,estado)
    values(id2,VidPublicacion, VtipoAutor,'A');
    
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_nbcon` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_nbcon`(
				in VidAutor int(11),
                in VidPublicacion int (11),
                in VtipoAutor varchar(45)
)
begin 
declare id integer;
if not exists ( select idAutorPublicacion from autorpublicacion where idAutor=VidAutor 
						and  idPublicacion=VidPublicacion )
   then 
		  if not exists (select idAutorPublicacion from autorpublicacion where idPublicacion=VidPublicacion
						and  tipoAutor='PRINCIPAL'  )
			then
				
				insert into autorpublicacion(idAutor,idPublicacion,tipoAutor,estado)
				values (VidAutor, VidPublicacion,VtipoAutor,'A');
                set id=last_insert_id();
			end if;
  end if;
  select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
 publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where idAutorPublicacion=id
 and
 AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' ; 
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autorpublicacion_nbcon1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autorpublicacion_nbcon1`(
					/*datos de persona */
                    IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    /*datos de escuela*/
                    in VidEscuela int(11),
                    
                    /*datos de autor*/
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45),
                    
                    /*datos de la publicacion*/
                    in VidPublicacion int(11),
                    /*tipo de autor*/
                    in VtipoAutor varchar(45)
                    /* RECIBE 13 DATOS*/
                    )
begin


declare id integer;
declare id1 integer;
declare id2 integer;
if not exists ( select *from persona where dni=Vdni)
	then

          INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
		  VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

		   set id=last_insert_id(); 
           
		   insert into autor(idPersona,idEscuela,profesion,especialidad,grado,estado)
		   values(id,Videscuela,Vprofesion,Vespecialidad,Vgrado,'A');
           
		   set id1=last_insert_id();
  
   
if not exists (select idAutorPublicacion from autorpublicacion where idPublicacion=VidPublicacion
						and  vtipoAutor='PRINCIPAL' AND tipoAutor=VtipoAutor )
			then
				
				insert into autorpublicacion(idAutor,idPublicacion,tipoAutor,estado)
				values (id1, VidPublicacion,VtipoAutor,'A');
                set id2=last_insert_id();
			
end if;
 end if;
  select  idAutorPublicacion,
 AutorPublicacion.idAutor,
 escuela.idEscuela,
	facultad.idFacultad,facultad.descripcion as 'descripcion1',
 escuela.descripcion as 'descripcion2',
 profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
publicacion.idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

tipoAutor
  
 from autorpublicacion,persona,autor,escuela,facultad,publicacion,lineainvestigacion,areainvestigacion
 where idAutorPublicacion=id2
 and AutorPublicacion.idAutor=autor.idAutor
 and AutorPublicacion.idPublicacion=publicacion.idPublicacion
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
 and autorpublicacion.estado='A' ; 
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_all`(
					
                    
                    )
BEGIN 
select
 idAutor,escuela.idEscuela,facultad.idFacultad,facultad.descripcion as 'descripcion1',escuela.descripcion as 'descripcion2',profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, autor, escuela,facultad where

  persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad 
 and autor.estado='A'
 order by nombres;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_bco`(
					in VidAutor int(11)
                    
                    )
BEGIN 
 select
 idAutor,escuela.idEscuela,facultad.idFacultad,facultad.descripcion as 'descripcion1',escuela.descripcion as 'descripcion2',profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, autor, escuela,facultad
 where idAutor=VidAutor
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad 
 and autor.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_bcodni` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_bcodni`(

			in Vdni char(9)


)
begin
select
 idAutor,escuela.idEscuela,facultad.idFacultad,facultad.descripcion as 'descripcion1',escuela.descripcion as 'descripcion2',profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, autor, escuela,facultad
 where dni=Vdni
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad 
 and autor.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_e`(
					in VidAutor int(11)
                    
                    )
BEGIN 
 delete persona,autor
  from persona ,autor
 where autor.idAutor=VidAutor 
  and autor.idPersona=persona.idPersona;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_m`(
					in VidAutor int(11),
                    
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidEscuela int(11),
                    
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45)
                    )
begin
update persona, autor set
 nombres=Vnombres, 
 apellidos=Vapellidos,
 dni=Vdni,
 sexo=Vsexo,
 direccion=Vdireccion,
 telefono=Vtelefono,
 correo=Vcorreo,
 
 idEscuela=Videscuela,
  
 profesion=Vprofesion,
 especialidad=Vespecialidad,
 grado=Vgrado
 
  where idAutor=VidAutor and persona.idPersona=autor.idPersona;
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_m1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_m1`(
					in VidAutor int(11),
                    
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidEscuela int(11),
                    
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45)
                    )
begin
update persona, autor set
 nombres=Vnombres, 
 apellidos=Vapellidos,
 dni=Vdni,
 sexo=Vsexo,
 direccion=Vdireccion,
 telefono=Vtelefono,
 correo=Vcorreo,
 
 idEscuela=Videscuela,
  
 profesion=Vprofesion,
 especialidad=Vespecialidad,
 grado=Vgrado
 
  where idAutor=VidAutor and persona.idPersona=autor.idPersona;
   select
 idAutor,escuela.idEscuela,facultad.idFacultad,facultad.descripcion as 'descripcion1',escuela.descripcion as 'descripcion2',profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, autor, escuela,facultad
 where idAutor=VidAutor
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad 
 and autor.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_n`(
IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidEscuela int(11),
                    
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45)
                    )
begin
declare id integer;
  INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
 
	
VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

   set id=last_insert_id();
   insert into autor(idPersona,idEscuela,profesion,especialidad,grado,estado)
   values(id,Videscuela,Vprofesion,Vespecialidad,Vgrado,'A');
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_n1`(
					in VidPersona int(11),
					in VidEscuela int(11),
                   
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45)
                    )
begin

   insert into autor(idPersona,idEscuela,profesion,especialidad,grado,estado)
   values(VidPersona,Videscuela,Vprofesion,Vespecialidad,Vgrado,'A');
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_autor_nbcon` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autor_nbcon`(
                    IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidEscuela int(11),
                    
                    in Vprofesion varchar(45),
                    in Vespecialidad varchar(45),
                    in Vgrado varchar(45)
                    )
begin


declare id integer;
declare id1 integer;
if not exists ( select *from persona where dni=Vdni and estado='A')then

  INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
 
	
      VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

   set id=last_insert_id();
   insert into autor(idPersona,idEscuela,profesion,especialidad,grado,estado)
   values(id,Videscuela,Vprofesion,Vespecialidad,Vgrado,'A');
   set id1=last_insert_id();
   end if;
   
select
 idAutor,escuela.idEscuela,facultad.idFacultad,facultad.descripcion as 'descripcion1',escuela.descripcion as 'descripcion2',profesion,especialidad,grado,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, autor, escuela,facultad
 where idAutor=id1 
 and persona.idPersona=autor.idPersona 
 and escuela.idEscuela=autor.idEscuela 
 and escuela.idFacultad=facultad.idFacultad 
 and autor.estado='A';
   
   
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_buqueda_autor` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_buqueda_autor`(

			in buscar varchar(45)
            )
begin
select titulo,nombres,areainvestigacion.descripcion, lineainvestigacion.descripcion,facultad.descripcion,escuela.descripcion  
from persona, autor,publicacion, lineaInvestigacion,facultad, escuela,autorpublicacion,areainvestigacion where

persona.nombres like '%buscar%' and 

autorpublicacion.idAutor=autor.idAutor and
autorpublicacion.idPublicacion=publicacion.idPublicacion and
autor.idPersona=persona.idPersona and
autor.idEscuela=escuela.idEscuela and
escuela.idFacultad=facultad.idFacultad and
publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion and
lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_buqueda_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_buqueda_bco`(

			in buscar varchar(45)
            )
begin
select titulo,nombres,areainvestigacion.descripcion,lineainvestigacion.descripcion,facultad.descripcion,escuela.descripcion  
from persona, autor,publicacion, lineaInvestigacion,facultad, escuela,autorpublicacion, areainvestigacion where

persona.nombres like '%buscar%' or publicacion.titulo like '%buscar%' or areainvestigacion.descripcion like '%buscar%' or

lineainvestigacion.descripcion like '%buscar%' or facultad.descripcion like'%buscar%' or escuela.descripcion like '%buscar%' and 

autorpublicacion.idAutor=autor.idAutor and
autorpublicacion.idPublicacion=publicacion.idPublicacion and
autor.idPersona=persona.idPersona and
autor.idEscuela=escuela.idEscuela and
escuela.idFacultad=facultad.idFacultad and
publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion and
lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cantidad` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cantidad`(
	in nombre varchar(45)
)
begin
Select  count(distinct idAutor)cantidad 
from autorpublicacion
where 
tipoAutor=nombre ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_crear_n2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crear_n2`(

         in VidLineaInvestigacion int(11),
        in Vtitulo varchar(100),
        in VfechaPublicacion date
)
begin
declare id integer;
insert into publicacion (idLineaInvestigacion,  titulo,fechaCarga,fechaPublicacion, estado )

values (VidLineaInvestigacion, Vtitulo,curdate(),VfechaPublicacion,'A');
set id=last_insert_id();

select
idPublicacion, lineainvestigacion.descripcion, titulo, fechaCarga, fechaPublicacion
from publicacion, lineainvestigacion

where idPublicacion=id 
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion 
and publicacion.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denunciante_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denunciante_all`(
					
                    
                    )
BEGIN 
 select
 idDenunciante,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, denunciante
 where  persona.idPersona=denunciante.idPersona 
 and denunciante.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denunciante_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denunciante_bco`(
					in VidDenunciante int(11)
                    
                    )
BEGIN 
 select
 idDenunciante,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, denunciante
 where idDenunciante=VidDenunciante and persona.idPersona=denunciante.idPersona 
 and denunciante.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denunciante_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denunciante_e`(
					in VidDenunciante int(11)
                    
					
                    
                    )
begin
update denunciante set
estado='N'
 
 
  where idDenunciante=VidDenunciante ;
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denunciante_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denunciante_m`(
					in VidDenunciante int(11),
                    
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45)
                    
                    
                    )
begin
update persona , denunciante set
 nombres=Vnombres, 
 apellidos=Vapellidos,
 dni=Vdni,
 sexo=Vsexo,
 direccion=Vdireccion,
 telefono=Vtelefono,
 correo=Vcorreo
 
 
  where denunciante.idDenunciante=VidDenunciante and persona.idPersona=denunciante.idPersona;
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denunciante_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denunciante_n`(

					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45)
                    )
begin
 
   declare id integer;
  INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
 
	
VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

   set id=last_insert_id();
   insert into denunciante(idPersona,estado)
   values(id,'A');
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denunciante_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denunciante_n1`(

					IN  VidPersona int(11)
                    )
begin
 
  
   insert into denunciante(idPersona,estado)
   values(VidPersona,'A');
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_all`(
		
)
begin 
select
idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,
 denuncia.fecha,denuncia.descripcion as 'descripcion2'

from 
denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion,archivo


where 
denuncia.idDenunciante=denunciante.idDenunciante
and persona.idPersona=denunciante.idPersona
 
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and denuncia.estado ='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_bco`(
		in VidDenuncia int(11)
)
begin 
select
idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,
 denuncia.fecha,denuncia.descripcion as 'descripcion2'

from 
denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion,archivo


where 
idDenuncia=VidDenuncia 
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and denuncia.estado ='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_bco1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_bco1`(
		in VidArchivoPublicacion int(11)
)
begin 
select
idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,
 denuncia.fecha,denuncia.descripcion as 'descripcion2'

from 
denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion,archivo


where 
archivopublicacion.idArchivoPublicacion=VidArchivoPublicacion

and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and denuncia.estado ='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_m`(

					in VidDenuncia int (11),
                    in Vdescripcion varchar(200)
                    )
begin
 
    update  denuncia 
    set descripcion=Vdescripcion
    where idDenuncia=VidDenuncia;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_mEstado` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_mEstado`(

					in VidDenuncia int (11)
                    )
begin
 
    update  denuncia 
    set estado='N'
    where idDenuncia=VidDenuncia;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_n`(

					IN  Vnombres  VARCHAR(45)   ,
					IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidArchivoPublicacion int(11),
                    
                    in Vdescripcion varchar(200)
                    )
begin
declare id integer;
declare id2 integer;

	insert into persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
	values  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

 set id=last_insert_id();
   
   insert into denunciante(idPersona,estado)
   values(id,'A');
   
  set id2=last_insert_id();
      
    insert into denuncia (idDenunciante,idArchivoPublicacion,fecha,descripcion,estado)
    values(id2, VidArchivoPublicacion,curdate(),Vdescripcion,'A');
    
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_n1`(

					in VidDenunciante int(11),
                    
                    in VidArchivoPublicacion int(11),
                    
                    in Vdescripcion varchar(200)
                    )
begin
 
    insert into denuncia (idDenunciante,idArchivoPublicacion,fecha,descripcion,estado)
    values(VidDenunciante,VidArchivoPublicacion,curdate(),Vdescripcion,'A');
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_denuncia_n2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_denuncia_n2`(

					IN  Vnombres  VARCHAR(45)   ,
					IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VidArchivoPublicacion int(11),
                    
                    in Vdescripcion varchar(200)
                    )
begin
declare id integer;
declare id2 integer;
declare id3 integer;

	insert into persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
	values  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

 set id=last_insert_id();
   
   insert into denunciante(idPersona,estado)
   values(id,'A');
   
  set id2=last_insert_id();
      
    insert into denuncia (idDenunciante,idArchivoPublicacion,fecha,descripcion,estado)
    values(id2, VidArchivoPublicacion,curdate(),Vdescripcion,'A');
    set id3=last_insert_id();
    
select
idDenuncia,denunciante.idDenunciante, nombres,apellidos,dni,sexo,direccion,telefono,correo,
archivopublicacion.idArchivoPublicacion, 
publicacion.idPublicacion, 
lineainvestigacion.idlineaInvestigacion,
areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', 
lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion,

archivopublicacion.descripcion as 'descripcion1', urlLocal,urlWeb,
 denuncia.fecha,denuncia.descripcion as 'descripcion2'

from 
denuncia , denunciante, persona, archivopublicacion,areaInvestigacion,lineaInvestigacion,publicacion,archivo


where 
idDenuncia=id3
and persona.idPersona=denunciante.idPersona
and denuncia.idDenunciante=denunciante.idDenunciante
and denuncia.idArchivoPublicacion=archivopublicacion.idArchivoPublicacion
and archivopublicacion.idPublicacion=publicacion.idPublicacion
and  archivopublicacion.idArchivo=archivo.idArchivo
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
and denuncia.estado ='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_escuelas_bcofa` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_escuelas_bcofa`(
in VidFacultad int(11)
				
)
begin
select idEscuela, facultad.idFacultad,facultad.descripcion as 'facultad',facultad.estado as 'estado1',escuela.descripcion as 'escuela',escuela.estado as 'estado2'
from escuela, facultad

where escuela.idFacultad=VidFacultad 
and escuela.idFacultad=facultad.idFacultad 
and escuela.estado='A' and facultad.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_escuela_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_escuela_all`(
			
				
)
begin
select idEscuela, facultad.descripcion as 'facultad',escuela.descripcion as 'escuela'
from escuela, facultad

where  escuela.idFacultad=facultad.idFacultad and escuela.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_escuela_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_escuela_bco`(
				in VidEscuela int(11)
				
)
begin
select idEscuela, facultad.idFacultad,facultad.descripcion as 'facultad',escuela.descripcion as 'escuela'
from escuela, facultad

where idEscuela=VidEscuela and escuela.idFacultad=facultad.idFacultad and escuela.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_escuela_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_escuela_e`(
			
				in VidEscuela int(11)
)
begin
update escuela set 
estado='N'
where idEscuela=VidEscuela;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_escuela_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_escuela_m`(
				in VidEscuela int(11),
				in VidFacultad int(11),
                in Vdescripcion varchar(45)
)
begin
update escuela set 

idFacultad=VidFacultad,
descripcion=Vdescripcion

where idEscuela=VidEscuela;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_escuela_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_escuela_n`(

				in VidFacultad int(11),
                in Vdescripcion varchar(45)
)
begin
insert into escuela(idFacultad,descripcion,estado)
values (VidFacultad,Vdescripcion,'A');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_facultad_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_facultad_all`(
           
            )
begin
select idFacultad,descripcion from facultad
where  estado='A';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_facultad_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_facultad_bco`(
            in VidFacultad int(11)
            )
begin
select idFacultad,descripcion from facultad
where idFacultad=VidFacultad and estado='A';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_facultad_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_facultad_e`(
            in VidFacultad int(11)
            )
begin
update facultad set
estado='N'
where idFacultad=VidFacultad;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_facultad_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_facultad_m`(
            in VidFacultad int(11),
			in Vdescripcion varchar(45)
            )
begin
update facultad set
descripcion=Vdescripcion
where idFacultad=VidFacultad;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_facultad_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_facultad_n`(
			in Vdescripcion varchar(45))
begin
insert into facultad(descripcion,estado)
values (Vdescripcion,'A');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lineainvestigacion_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lineainvestigacion_all`(
		
)
begin 
select idLineaInvestigacion,areainvestigacion.idAreaInvestigacion, areainvestigacion.descripcion as 'descripcion1',
 lineainvestigacion.descripcion as 'descripcion2'
 from 
lineainvestigacion, areainvestigacion


where lineainvestigacion.idAreaInvestigacion= areainvestigacion.idAreaInvestigacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lineainvestigacion_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lineainvestigacion_bco`(
		in VidLineaInvestigacion int (11)
)
begin 
select idLineaInvestigacion,areainvestigacion.idAreaInvestigacion, areainvestigacion.descripcion as 'descripcion1',
 lineainvestigacion.descripcion as 'descripcion2'
 from 
lineainvestigacion, areainvestigacion


where idLineaInvestigacion=VidLineaInvestigacion 
and lineainvestigacion.idAreaInvestigacion= areainvestigacion.idAreaInvestigacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lineainvestigacion_bco2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lineainvestigacion_bco2`(
		in VidAreaInvestigacion int (11)
)
begin 
select idLineaInvestigacion, areainvestigacion.idAreaInvestigacion, areainvestigacion.descripcion as 'descripcion1',
 lineainvestigacion.descripcion as 'descripcion2'
 from 
lineainvestigacion, areainvestigacion


where lineainvestigacion.idAreaInvestigacion=VidAreaInvestigacion 
and lineainvestigacion.idAreaInvestigacion= areainvestigacion.idAreaInvestigacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lineainvestigacion_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lineainvestigacion_e`(
		in VidLineaInvestigacion int (11)
)
begin 
delete from lineainvestigacion

where idLineaInvestigacion=VidLineaInvestigacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lineainvestigacion_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lineainvestigacion_m`(
		in VidLineaInvestigacion int (11),
		in VidAreaInvestigacion int (11),
        in Vdescripcion varchar(100)
)
begin 
update lineainvestigacion set 

idAreaInvestigacion=VidAreaInvestigacion,
descripcion=Vdescripcion

where idLineaInvestigacion=VidLineaInvestigacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lineainvestigacion_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_lineainvestigacion_n`(
		in VidAreainvestigacion int (11),
        in Vdescripcion varchar(100)
)
begin 
insert into lineainvestigacion(idAreaInvestigacion,descripcion,estado)
values (VidAreaInvestigacion,Vdescripcion,'A');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicaciones_nroautores` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicaciones_nroautores`()
begin
Select  count(distinct idAutor)cantidad 
from autorpublicacion
where 
tipoAutor='PRINCIPAL' ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicaciones_nrocolaboradores` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicaciones_nrocolaboradores`()
begin
Select  count(distinct idAutor)cantidad 
from autorpublicacion
where 
tipoAutor='COLABORADOR' ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicaciones_nropublicaciones` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicaciones_nropublicaciones`()
begin
Select  count(idPublicacion)cantidad 
from publicacion;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicaciones_nrotesistas` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicaciones_nrotesistas`()
begin
Select  count(distinct idAutor)cantidad 
from autorpublicacion
where 
tipoAutor='TESISTA' ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicaciones_total_anio_actual` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicaciones_total_anio_actual`()
BEGIN
Select  
CASE  when 
MONTH(fechaCarga) = 1 THEN "ENERO"
WHEN MONTH(fechaCarga) = 2 THEN "FEBRERO"
WHEN MONTH(fechaCarga) = 3 THEN "MARZO"
WHEN MONTH(fechaCarga) = 4 THEN "ABRIL"
WHEN MONTH(fechaCarga) = 5 THEN "MAYO"
WHEN MONTH(fechaCarga) = 6 THEN "JUNIO"
WHEN MONTH(fechaCarga) = 7 THEN "JULIO"
WHEN MONTH(fechaCarga) = 8 THEN "AGOSTO"
WHEN MONTH(fechaCarga) = 9 THEN "SETIEMBRE"
WHEN MONTH(fechaCarga) = 10 THEN "OCTUBRE"
WHEN MONTH(fechaCarga) = 11 THEN "NOVIEMBRE"
WHEN MONTH(fechaCarga) = 12 THEN "DICIEMBRE" end AS titulo
 ,count(MONTH(fechaCarga))cantidad 
from publicacion
where year(fechaCarga)=year(curdate())
group by MONTH(fechaCarga);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_all`(
		)
begin 
select
idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion
from publicacion, lineainvestigacion,areainvestigacion

where  publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion 
and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
and publicacion.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_bco`(
		in VidPublicacion int (11))
begin 
select
idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion
from publicacion, lineainvestigacion,areainvestigacion

where idPublicacion=VidPublicacion
and  publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion 
and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
and publicacion.estado='A';
 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_bcoxArea` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_bcoxArea`(
		in VidAreaInvestigacion int (11)
        )
begin 
select
idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion
from publicacion, lineainvestigacion,areainvestigacion

where 
areainvestigacion.idAreaInvestigacion=VidAreaInvestigacion
and  publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion 
and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
and publicacion.estado='A';
 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_bcoxLinea` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_bcoxLinea`(
		in VidLineaInvestigacion int (11)
        )
begin 
select
idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion
from publicacion, lineainvestigacion,areainvestigacion

where 
lineainvestigacion.idLineaInvestigacion=VidLineaInvestigacion
and  publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion 
and 	lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
and publicacion.estado='A';
 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_e`(
		in VidPublicacion int (11))
begin 
delete from publicacion

where idPublicacion=VidPublicacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_m` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_m`(
		in VidPublicacion int (11),
		in VidLineaInvestigacion int(11),
        in Vtitulo varchar(300),
      
        in VfechaPublicacion date)
begin 
update publicacion set

idLineaInvestigacion=VidLineaInvestigacion,  
titulo=Vtitulo,

fechaPublicacion=VfechaPublicacion 

where idPublicacion=VidPublicacion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_m2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_m2`(

		in VidPublicacion int (11),
		in VidLineaInvestigacion int(11),
        in Vtitulo varchar(300),
        
        in VfechaPublicacion date)
begin 
update publicacion set

idLineaInvestigacion=VidLineaInvestigacion,  
titulo=Vtitulo,

fechaPublicacion=VfechaPublicacion 

where idPublicacion=VidPublicacion;
select
idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion
from publicacion, lineainvestigacion,areainvestigacion

where idPublicacion=VidPublicacion
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion 
and lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
and publicacion.estado='A';
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_n`(
		in VidLineaInvestigacion int(11),
        in Vtitulo varchar(100),
        in VfechaPublicacion date)
begin 

insert into publicacion (idLineaInvestigacion,  titulo,fechaCarga,fechaPublicacion, estado )

values (VidLineaInvestigacion, Vtitulo,curdate(),VfechaPublicacion,'A');
       
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_publicacion_n2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_publicacion_n2`(
		in VidLineaInvestigacion int(11),
        in Vtitulo varchar(300),
        in VfechaPublicacion date
)
begin
declare id integer;

if not exists ( select *from publicacion where titulo=Vtitulo and estado='A')then
   
insert into publicacion (idLineaInvestigacion,  titulo,fechaCarga,fechaPublicacion, estado )

values (VidLineaInvestigacion, Vtitulo,curdate(),VfechaPublicacion,'A');
set id=last_insert_id();

end if;

select
idPublicacion, lineainvestigacion.idlineaInvestigacion,areainvestigacion.idAreaInvestigacion,areainvestigacion.descripcion as 'area', lineainvestigacion.descripcion as 'linea', titulo, fechaCarga, fechaPublicacion
from publicacion, lineainvestigacion,areainvestigacion

where idPublicacion=id 
and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion 
and lineainvestigacion.idAreaInvestigacion =areainvestigacion.idAreaInvestigacion
and publicacion.estado='A';
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_solicitante_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_solicitante_all`(
)
begin 
 select
 idSolicitante,tipoEntidad, entidad,areaTrabajo,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, solicitante
 where  persona.idPersona=solicitante.idPersona 
 and solicitante.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_solicitante_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_solicitante_bco`(

					in VidSolicitante int(11)
		
)
begin 
 select
 idSolicitante,tipoEntidad, entidad,areaTrabajo,
 nombres,apellidos,dni,sexo,direccion,telefono,correo
 
 from persona, solicitante
 where idSolicitante=VidSolicitante and persona.idPersona=solicitante.idPersona 
 and solicitante.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_solicitante_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_solicitante_e`(

					in VidSolicitante int(11)
		
)
begin 

update solicitante set
estado='N'
 
 
  where idSolicitante=VidSolicitante ;
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_solicitante_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_solicitante_m`(

					in VidSolicitante int(11),
                    
                    IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VtipoEntidad varchar(45),
                    in Ventidad varchar(45),
                    in VareaTrabajo varchar(45)
		
)
begin 

update persona , solicitante set
 nombres=Vnombres, 
 apellidos=Vapellidos,
 dni=Vdni,
 sexo=Vsexo,
 direccion=Vdireccion,
 telefono=Vtelefono,
 correo=Vcorreo,
 
 tipoEntidad=VtipoEntidad,
 entidad=Ventidad,
 areaTrabajo=VareaTrabajo
 
 where idSolicitante=VidSolicitante and persona.idPersona=solicitante.idPersona;
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_solicitante_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_solicitante_n`(

					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VtipoEntidad varchar(45),
                    in Vendtidad varchar(45),
                    in VareaTrabajo varchar(45)
		
)
begin 

   declare id integer;
  INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
 
	
VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

   set id=last_insert_id();
   insert into solicitante(idPersona,tipoEntidad,entidad,areaTrabajo,estado)
   values(id,VtipoEntidad,Vendtidad,VareaTrabajo,'A');
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_solicitante_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_solicitante_n1`(

					in VidPersona int(11),
                    
                    in VtipoEntidad varchar(45),
                    in Vendtidad varchar(45),
                    in VareaTrabajo varchar(45)
		
)
begin 

   insert into solicitante(idPersona,tipoEntidad,entidad,areaTrabajo,estado)
   values(VidPersona,VtipoEntidad,Vendtidad,VareaTrabajo,'A');
   end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_all`(
					
                 
                    
                    )
begin
select 
idTemasSugeridos,solicitante.idSolicitante,tipoEntidad, entidad,areaTrabajo,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
 fecha,tema,areaTematica 
 
 
 
 
 from persona, solicitante, temassugeridos

where 
 persona.idPersona=solicitante.idPersona 
and solicitante.idSolicitante=temassugeridos.idSolicitante and temassugeridos.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_all2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_all2`(
					
                 in idSolicitante int (11)
                    
                    )
begin

select 
idTemasSugeridos,solicitante.idSolicitante,tipoEntidad, entidad,areaTrabajo,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
 fecha,tema,areaTematica 
 
  
 from persona, solicitante, temassugeridos
where 
temassugeridos.idSolicitante=idSolicitante 
and
 persona.idPersona=solicitante.idPersona 
and solicitante.idSolicitante=temassugeridos.idSolicitante and temassugeridos.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_bco`(
					
                    in VidTemasSugeridos int (45)
                    
                    
                    )
begin
select 
idTemasSugeridos,solicitante.idSolicitante,tipoEntidad, entidad,areaTrabajo,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
 fecha,tema,areaTematica 
 from persona, solicitante, temassugeridos
where 
idTemasSugeridos=VidTemasSugeridos 
and
 persona.idPersona=solicitante.idPersona 
and solicitante.idSolicitante=temassugeridos.idSolicitante and temassugeridos.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_e`(
					
                    in VidTemasSugeridos int (45)
                    
                    
                    )
begin
update temassugeridos set 


estado='N'

where 
idTemasSugeridos=VidTemasSugeridos;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_m`(
					
                    in VidTemasSugeridos int (45),
                    in Vtema varchar(45),
                    in VareaTematica varchar(45)
                    
                    )
begin
update temassugeridos set 


tema=Vtema,
areaTematica=VareaTematica

where 
idTemasSugeridos=VidTemasSugeridos;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_n`(
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VtipoEntidad varchar(45),
                    in Ventidad varchar(45),
                    in VareaTrabajo varchar(45),
                    
                    in Vtema varchar(45),
                    in VareaTematica varchar(45)
                    
                    )
begin
declare id integer;
declare id1 integer;
   INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
 
	
VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

   set id=last_insert_id();
   
   insert into  solicitante (idPersona,tipoEntidad,entidad,areaTrabajo,estado)
values (id,VtipoEntidad,Ventidad,VareaTrabajo,'A');
set id1=last_insert_id();

insert into temassugeridos (idSolicitante, fecha, tema,areaTematica,estado)
values(id1,curdate(),Vtema,VareaTematica,'A');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_n1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_n1`(
					
                    in VidSolicitante int(11),
                    in Vtema varchar(45),
                    in VareaTematica varchar(45)
                    
                    )
begin


insert into temassugeridos (idSolicitante, fecha, tema,areaTematica,estado)
values(VidSolicitante,curdate(),Vtema,VareaTematica,'A');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temasugerido_n2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temasugerido_n2`(
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in VtipoEntidad varchar(45),
                    in Ventidad varchar(45),
                    in VareaTrabajo varchar(45),
                    
                    in Vtema varchar(45),
                    in VareaTematica varchar(45)
                    
                    )
begin
declare id integer;
declare id1 integer;
declare id2 integer;
   INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
 
	
VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

   set id=last_insert_id();
   
   insert into  solicitante (idPersona,tipoEntidad,entidad,areaTrabajo,estado)
values (id,VtipoEntidad,Ventidad,VareaTrabajo,'A');
set id1=last_insert_id();

insert into temassugeridos (idSolicitante, fecha, tema,areaTematica,estado)
values(id1,curdate(),Vtema,VareaTematica,'A');
set id2=last_insert_id();

select 
idTemasSugeridos,solicitante.idSolicitante,tipoEntidad, entidad,areaTrabajo,
 nombres,apellidos,dni,sexo,direccion,telefono,correo,
 fecha,tema,areaTematica 
 from persona, solicitante, temassugeridos
where 
idTemasSugeridos=id2 
and
 persona.idPersona=solicitante.idPersona 
and solicitante.idSolicitante=temassugeridos.idSolicitante and temassugeridos.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_all`(
					
                   
					
					)
begin 
select idUsuario, nombres,usuario, contrasena,tipo from usuario, persona
where 
 persona.idPersona=usuario.idPersona and usuario.estado='A' ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_bco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_bco`(

		in VidUsuario int(11),
        in Vcontrasena varchar(45)
        )
begin
SELECT idUsuario,idPersona,usuario, 
       contrasena ,tipo,estado
FROM   usuario where idUsuario=VidUsuario and
 CAST(AES_DECRYPT(contrasena, 'uniavpi2040') AS CHAR(50))=Vcontrasena COLLATE 'utf8_general_ci';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_bco1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_bco1`(

		in VidUsuario int(11),
        in Vcontrasena varchar(45)
        )
begin
SELECT idUsuario,idPersona,usuario, 
       CAST(AES_DECRYPT(contrasena, 'uniavpi2040') AS CHAR(50)) as contrasena ,tipo,estado
FROM   usuario where idUsuario=VidUsuario and 
 CAST(AES_DECRYPT(contrasena, 'uniavpi2040') AS CHAR(50))=Vcontrasena COLLATE 'utf8_general_ci';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_e`(
					
                    in VidUsuario int(11)
					
					)
begin 
update usuario set
usuario.estado='N'
where
idUsuario=VidUsuario ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_m` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_m`(
					
                    in VidUsuario int(11),
					
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in Vusuario varchar(45),
                    in Vcontrasena varchar(45),
                    in Vtipo char(1))
begin 
update persona, usuario set
nombres=Vnombres,
apellidos=Vapellidos,
dni=Vdni,
sexo=Vsexo,
direccion=Vdireccion,
telefono=Vtelefono,
correo=Vcorreo,

usuario=Vusuario,
contrasena=AES_ENCRYPT(Vcontrasena,'uniavpi2040'),
tipo=Vtipo
where 
idUsuario=VidUsuario and usuario.idPersona=persona.idPersona;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_m1` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_m1`(
					
                    in VidUsuario int(11),
                    in Vtipo char(1)
					
					)
begin 
update usuario set
tipo=Vtipo
where 
idUsuario=VidUsuario  ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_n` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_n`(
					IN  Vnombres  VARCHAR(45)   , 
                    IN  Vapellidos  VARCHAR(45) ,
                    IN Vdni CHAR(8),
                    IN Vsexo VARCHAR(45),
                    IN Vdireccion VARCHAR(45),
					IN Vtelefono VARCHAR(45),
					IN Vcorreo VARCHAR(45),
                    
                    in Vusuario varchar(45),
                    in Vcontrasena blob,
                    in Vtipo char(1))
begin 
declare id integer;
declare id1 integer;
if not exists (select * from persona where persona.dni=Vdni COLLATE 'utf8_general_ci' and persona.estado='A' COLLATE 'utf8_general_ci')then

	INSERT INTO persona (nombres, apellidos,dni,sexo,direccion,telefono,correo,estado ) 
	 
		
	VALUES  ( Vnombres, Vapellidos,Vdni,Vsexo,Vdireccion,Vtelefono,Vcorreo,'A' ) ; 

	set id=last_insert_id();
    
	if not exists(select * from usuario where usuario.usuario=Vusuario COLLATE 'utf8_general_ci') then
		
		insert into usuario(idPersona,usuario,contrasena,tipo,estado)
		values(id,Vusuario,AES_ENCRYPT(Vcontrasena,'uniavpi2040'),Vtipo,'A');
		set id1=last_insert_id();
    
	end if;
    
end if;
    SELECT idUsuario,idPersona,usuario, 
       contrasena ,tipo,estado
FROM   usuario where idUsuario=id1 ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_n1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_n1`(
					IN  VidPersona int (11),
                    
                    in Vusuario varchar(45),
                    in Vcontrasena varchar(45),
                    in Vtipo char(1))
begin 
declare id integer;

if not exists ( select *from usuario where usuario.usuario =Vusuario collate utf8_general_ci and estado='A')then

insert into usuario(idPersona,usuario,contrasena,tipo,estado)
values(VidPersona,Vusuario,AES_ENCRYPT(Vcontrasena,'uniavpi2040'),Vtipo,'A');
set id=last_insert_id();
end if;
SELECT idUsuario,idPersona,usuario, 
       contrasena ,tipo,estado
FROM   usuario where idUsuario=id ;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usuario_validar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuario_validar`(
		in Vusuario varchar(45),
        in Vcontrasena varchar(45)
		)
begin
SELECT idUsuario,persona.idPersona,nombres,apellidos,dni,sexo,direccion,telefono,correo,usuario, 
       tipo
FROM   usuario, persona where usuario.idPersona=persona.idPersona and usuario.usuario =Vusuario COLLATE 'utf8_general_ci' and
 CAST(AES_DECRYPT(contrasena, 'uniavpi2040') AS CHAR(50))=Vcontrasena COLLATE 'utf8_general_ci' and usuario.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_nrosolicitudes` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_nrosolicitudes`()
begin
Select  count(idArchivoSolicitado)cantidad 
from archivossolicitados;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_nrotemassugeridos` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_nrotemassugeridos`()
begin
Select  count(idTemasSugeridos)cantidad 
from temassugeridos;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_nrovisitas` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_nrovisitas`()
begin
Select  count(idVisita)cantidad 
from visita;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_top_5_titulo` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_top_5_titulo`()
begin
Select  titulo,count(titulo)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by titulo
having count(titulo)>0
LIMIT 0,5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_top_5_titulo2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_top_5_titulo2`()
begin
Select publicacion.idPublicacion, titulo,count(titulo)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by titulo
having count(titulo)>0
order by cantidad desc
LIMIT 0,5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_top_5_tituloxitem` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_top_5_tituloxitem`(
	in pos int(11)
  )
begin
declare p integer;
set p=pos-1;
Select  publicacion.idPublicacion, titulo,count(titulo)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by titulo
having count(titulo)>0
order by cantidad desc
LIMIT p,1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_top_5_tituloxitemXMES` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_top_5_tituloxitemXMES`(
	in pos int(11), in mes int(45)
  )
begin
declare p integer;
set p=pos-1;
Select  publicacion.idPublicacion, titulo,count(titulo)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
month(visita.fecha)=mes and
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by titulo
having count(titulo)>0
order by cantidad desc
LIMIT p,1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_top_5_XMES` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_top_5_XMES`(
		in mes int(45)

					)
begin
Select titulo,count(titulo)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
month(visita.fecha)=mes
and
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by titulo
having count(titulo)>0
order by cantidad desc
LIMIT 0,5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_top_5_XMES2` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_top_5_XMES2`(
		in mes int(45)

					)
begin
Select publicacion.idPublicacion, titulo,count(titulo)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
month(visita.fecha)=mes
and
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by titulo
having count(titulo)>0
order by cantidad desc
LIMIT 0,5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_total_anio_actual` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_total_anio_actual`()
BEGIN
Select  
CASE  when 
MONTH(FECHA) = 1 THEN "ENERO"
WHEN MONTH(FECHA) = 2 THEN "FEBRERO"
WHEN MONTH(FECHA) = 3 THEN "MARZO"
WHEN MONTH(FECHA) = 4 THEN "ABRIL"
WHEN MONTH(FECHA) = 5 THEN "MAYO"
WHEN MONTH(FECHA) = 6 THEN "JUNIO"
WHEN MONTH(FECHA) = 7 THEN "JULIO"
WHEN MONTH(FECHA) = 8 THEN "AGOSTO"
WHEN MONTH(FECHA) = 9 THEN "SETIEMBRE"
WHEN MONTH(FECHA) = 10 THEN "OCTUBRE"
WHEN MONTH(FECHA) = 11 THEN "NOVIEMBRE"
WHEN MONTH(FECHA) = 12 THEN "DICIEMBRE" end AS titulo
 ,count(MONTH(FECHA))cantidad 
from visita 
where year(fecha)=year(curdate())
group by MONTH(FECHA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visitas_xanio_top5` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visitas_xanio_top5`()
begin
Select year(FECHA),count(year(FECHA))cantidad 
from visita 
group by year(fecha)
LIMIT 0,5;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visita_all` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visita_all`(
					
               
                    
                    )
begin
select idVisita, 

archivopublicacion.idArchivoPublicacion,
    publicacion.idPublicacion, 
		lineainvestigacion.idlineaInvestigacion,
			areainvestigacion.idAreaInvestigacion,
            areainvestigacion.descripcion as 'area', 
		lineainvestigacion.descripcion as 'linea', 
        titulo, fechaCarga, fechaPublicacion,

    archivopublicacion.descripcion,
    urlLocal,
    urlWeb

, fecha


 from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion

where  
visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion

and visita.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visita_bco` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visita_bco`(
					
                 in VidVisita int (11)
                    
                    )
begin
select idVisita, 

archivopublicacion.idArchivoPublicacion,
    publicacion.idPublicacion, 
		lineainvestigacion.idlineaInvestigacion,
			areainvestigacion.idAreaInvestigacion,
            areainvestigacion.descripcion as 'area', 
		lineainvestigacion.descripcion as 'linea', 
        titulo, fechaCarga, fechaPublicacion,

    archivopublicacion.descripcion,
    urlLocal,
    urlWeb

, fecha


 from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion

where
 idVisita=VidVisita

 and visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visita_e` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visita_e`(
					
                 in VidVisita int (11)
                    
                    )
begin
update visita set
estado='N'

where idVisita=VidVisita;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visita_m` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visita_m`(
					
                 in VidVisita int (11),
                 in VidArchivoPublicacion int (11)
                    
                    )
begin
update visita set
idArchivoPublicacion=VidArchivoPublicacion

where idVisita=VidVisita;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visita_n` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visita_n`(
					
                 in VidArchivoPublicacion int (11)
                    
                    )
begin
insert into visita(idArchivoPublicacion, fecha,estado)
values (VidArchivoPublicacion,curdate(),'A');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visita_top5_xtipodearchivo` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visita_top5_xtipodearchivo`(
			in VidPublicacion int(11)
            )
begin
Select  archivopublicacion.descripcion,count(archivopublicacion.descripcion)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
publicacion.idPublicacion=VidPublicacion and
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by archivopublicacion.descripcion;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_visita_top5_xtipodearchivoxmes` */;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_visita_top5_xtipodearchivoxmes`(
			in VidPublicacion int(11),in mes int(45)
            )
begin
Select  archivopublicacion.descripcion,count(archivopublicacion.descripcion)cantidad 
from visita, archivo,archivopublicacion,publicacion,lineainvestigacion,areainvestigacion 


where
month(visita.fecha)=mes and
publicacion.idPublicacion=VidPublicacion and
  visita.idArchivoPublicacion= archivopublicacion.idArchivoPublicacion 
 and 
 archivo.idArchivo=Archivopublicacion.idArchivo
 and archivopublicacion.idPublicacion=publicacion.idPublicacion
 and publicacion.idLineaInvestigacion=lineainvestigacion.idLineaInvestigacion
 and lineainvestigacion.idAreaInvestigacion=areainvestigacion.idAreaInvestigacion
 and visita.estado='A'
 group by archivopublicacion.descripcion;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `reposiunia` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-28 17:05:17
