CREATE DATABASE  IF NOT EXISTS `veterinaria` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `veterinaria`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: veterinaria
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `dosis`
--

DROP TABLE IF EXISTS `dosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosis` (
  `idVacuna` int(11) NOT NULL,
  `Dosis` int(11) NOT NULL,
  `Edad` int(11) NOT NULL,
  `UnidadDias` int(11) NOT NULL,
  `Unidad` varchar(45) NOT NULL,
  PRIMARY KEY (`idVacuna`,`Dosis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosis`
--

LOCK TABLES `dosis` WRITE;
/*!40000 ALTER TABLE `dosis` DISABLE KEYS */;
INSERT INTO `dosis` VALUES (1,1,6,7,'s'),(1,2,10,7,'s'),(2,1,8,7,'s'),(2,2,12,7,'s'),(3,1,16,7,'s');
/*!40000 ALTER TABLE `dosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duenios`
--

DROP TABLE IF EXISTS `duenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duenios` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `CP` int(11) NOT NULL,
  `Departamento` varchar(45) DEFAULT NULL,
  `Piso` int(11) DEFAULT NULL,
  `CodArea` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Mail` varchar(45) DEFAULT NULL,
  `FechaNacimiento` date NOT NULL,
  `Imagen` varchar(45) DEFAULT NULL,
  `Sexo` tinyint(4) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duenios`
--

LOCK TABLES `duenios` WRITE;
/*!40000 ALTER TABLE `duenios` DISABLE KEYS */;
INSERT INTO `duenios` VALUES (365,'GES','SGS','GSEG',2111,'',NULL,11,14235621,'JGFU','2015-06-11',NULL,0),(13245,'N','PER','KJHKJH',1414,'',4,11,556464,'jflh@ckc.com','2015-06-11','13245',0),(13456,'SEG','TEHERHE','SEG',1414,'',NULL,11,655556,'GELGSGR','2015-06-11',NULL,0),(123456,'NICOLAS','PEREZ','CALLE FALSA',1414,'',NULL,11,45678426,'NICOPEREZ@GMAIL.COM','2015-06-11',NULL,1),(789456,'FSEG','ROBERTO','ERGE',2501,'',4,11,48592168,'GEPRIUH@HOTMAIL.COM','2015-07-03','789456',0),(13655724,'Sil','Herz','yatay 240',1185,'',NULL,5555,55555555,'kajsdajksh@sjhaljhfjk','2015-08-14','13655724',1),(14744347,'JAVIER','PERCHUK','HONORIO PUEYRREDON 737',1405,'',4,11,54223969,'JPERCHUK@TELECENTRO.COM.AR','1961-01-28',NULL,0),(40808251,'NICOLAS','BARAK','GAVILAN 1180',1406,'C',1,11,64730989,'NICOBA2B@HOTMAIL.COM','1997-12-13','40808251',0),(40809048,'GASTON','VIDAL','CALLE FALSA',1411,'4',9,11,61347712,'cota@ort.edu.ar','2015-07-03','40809048',0),(40935978,'FLORENCIA','LAFUENTE','AV. MEDRANO 600',1452,'24',8,11,44157268,'FLORL49@HOTMAIL.COM','1998-02-04','40935978',1),(41003258,'MAGALI','PECHENY','JDJBQJD 1234',9999,'',NULL,11,39781542,'MAGUIPECHENY@HOTMAIL.COM','2015-07-03','41003258',0),(41009188,'FEDERICO','STEINBERG','NI IDEA',6839,'44',7,11,42345252,'LAWEA@GMAIL.COM','2013-10-21','41009188',0),(41127835,'Federico','Perchuk','Honorio Pueyrredon 737',1405,'',4,11,63806470,'fperchuk@hotmail.com','1998-03-26','41127835',0),(41129142,'Nayla','Winter','Camarones 4707',1407,'',NULL,15,62538985,'naylawinter@gmail.com','2015-05-25','41129142',1),(41395926,'JOEL','TELIAS','AASASDASD 12',4554,'AS',4,11,41579689,'TITOCARROÑA@GSDFSDF.CACA','2015-07-03','41395926',0);
/*!40000 ALTER TABLE `duenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedades` (
  `idenfermedades` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Especie` int(11) NOT NULL,
  PRIMARY KEY (`idenfermedades`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedades`
--

LOCK TABLES `enfermedades` WRITE;
/*!40000 ALTER TABLE `enfermedades` DISABLE KEYS */;
INSERT INTO `enfermedades` VALUES (1,'Rabia',1),(2,'Otitits',1);
/*!40000 ALTER TABLE `enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `idespecialidad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idespecialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Veterinario'),(2,'Cirugia'),(3,'Cardiologia');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especies`
--

DROP TABLE IF EXISTS `especies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especies` (
  `idespecie` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idespecie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especies`
--

LOCK TABLES `especies` WRITE;
/*!40000 ALTER TABLE `especies` DISABLE KEYS */;
INSERT INTO `especies` VALUES (1,'CANINO'),(2,'FELINO');
/*!40000 ALTER TABLE `especies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historiaclinica`
--

DROP TABLE IF EXISTS `historiaclinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historiaclinica` (
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Peso` double DEFAULT NULL,
  `Temperatura` double DEFAULT NULL,
  `idenfermedad` int(11) DEFAULT NULL,
  `matricula` int(11) NOT NULL,
  `mascota` int(11) NOT NULL,
  `detalle` longtext NOT NULL,
  `veterinaria` int(11) NOT NULL,
  PRIMARY KEY (`Fecha`,`mascota`,`Hora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiaclinica`
--

LOCK TABLES `historiaclinica` WRITE;
/*!40000 ALTER TABLE `historiaclinica` DISABLE KEYS */;
INSERT INTO `historiaclinica` VALUES ('2015-08-14','02:16:00',27,39,1,123456789,6,'Control medico',1),('2015-08-14','02:21:00',23,4,2,123456789,6,'Esta mejorando poco a poco :)',2),('2015-08-14','10:10:00',NULL,NULL,NULL,123456789,6,'Control medico',3),('2015-08-14','10:12:00',26,36,NULL,123456789,6,'todo ok',1),('2015-08-14','10:36:00',32,12,NULL,123456789,6,'Control medico',1),('2015-08-14','11:28:00',NULL,NULL,NULL,123456789,6,'SASDA',4),('2015-08-14','11:29:00',NULL,NULL,NULL,123456789,6,'HOLA',2),('2015-08-14','09:42:00',25,NULL,NULL,123456789,12,'Control medico',1),('2015-08-14','11:37:00',1,39,NULL,46842381,13,'Control medico Otitis',3),('2015-09-17','17:12:00',14,NULL,NULL,123456789,6,'Control medico',2),('2015-09-25','11:52:00',60,24,NULL,0,15,'Hoy vino por una consulta pero como no se encontro con ningun otro perro en la resepcion se retiro antes.',2);
/*!40000 ALTER TABLE `historiaclinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion`
--

DROP TABLE IF EXISTS `informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informacion` (
  `Alertas` longtext,
  `Observaciones` longtext,
  `Mascota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion`
--

LOCK TABLES `informacion` WRITE;
/*!40000 ALTER TABLE `informacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascotas` (
  `idmascotas` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Especie` int(11) NOT NULL,
  `Raza` int(11) NOT NULL,
  `Pelaje` int(11) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `PesoInicial` double NOT NULL,
  `Sexo` tinyint(4) NOT NULL,
  `Castrado` tinyint(4) NOT NULL,
  `Fallecio` tinyint(4) NOT NULL,
  `FechaFallecimiento` date DEFAULT NULL,
  `Imagen` varchar(45) DEFAULT NULL,
  `Duenio` int(11) NOT NULL,
  `Usuario` int(11) NOT NULL,
  PRIMARY KEY (`idmascotas`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (5,'Coco',1,2,4,'2015-05-05',0.64,0,0,0,NULL,NULL,41127835,96),(6,'Billy',1,8,2,'2014-03-07',2,0,0,1,'2015-08-13','41127835-6',41127835,123456789),(8,'Luli',1,3,5,'2014-03-01',4,0,0,1,'2015-07-27','13245-8',13245,0),(9,'Perri',1,27,7,'2015-07-27',12,0,1,0,NULL,'13245-9',13245,123456789),(10,'afwfa',1,1,1,'2015-07-27',33,1,1,0,NULL,'13245-1',13245,0),(11,'tomy',1,25,5,'2010-01-01',7,0,1,0,NULL,'40809048-1',40809048,123456789),(12,'Noecxiste',2,2,6,'2015-08-04',25,1,1,0,NULL,'41129142-1',41129142,123456789),(13,'Zamba',2,1,4,'2015-08-14',0.5,0,0,0,NULL,'13655724-1',13655724,46842381),(14,'Cali',1,28,3,'2015-08-14',0.25,0,0,0,NULL,'13655724-1',13655724,46842381),(15,'Malki',1,27,12,'2015-10-02',62,0,1,0,NULL,'41127835-15',41127835,123456789);
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelaje`
--

DROP TABLE IF EXISTS `pelaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelaje` (
  `idpelaje` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idpelaje`),
  UNIQUE KEY `idpelaje_UNIQUE` (`idpelaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelaje`
--

LOCK TABLES `pelaje` WRITE;
/*!40000 ALTER TABLE `pelaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razas`
--

DROP TABLE IF EXISTS `razas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `razas` (
  `idrazas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tamanio` int(11) NOT NULL,
  `especie` int(11) NOT NULL,
  PRIMARY KEY (`idrazas`,`especie`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razas`
--

LOCK TABLES `razas` WRITE;
/*!40000 ALTER TABLE `razas` DISABLE KEYS */;
INSERT INTO `razas` VALUES (1,'Affenpinscher',1,1),(2,'Airedale terrier',3,1),(3,'Akita',3,1),(4,'Akita americano',3,1),(5,'Alano español',3,1),(6,'American Staffordshire terrier',2,1),(7,'Antiguo perro de muestra danés',2,1),(8,'Bobtail',3,1),(9,'Australian silky terrier',1,1),(10,'Azawakh',3,1),(11,'Basenji',2,1),(12,'Basset artesiano de Normandía',2,1),(13,'Basset azul de Gascuña',2,1),(14,'Basset hound',2,1),(15,'Basset leonado de Bretaña',2,1),(16,'Beagle',2,1),(17,'Beagle-Harrier',2,1),(18,'Bedlington terrier',2,1),(19,'Bichón boloñés',1,1),(20,'Bichón de pelo rizado',2,1),(21,'Bichón habanero',2,1),(22,'Bichón maltés',1,1),(23,'Billy',3,1),(24,'Boerboel',4,1),(25,'Border terrier',1,1),(26,'Boston Terrier',2,1),(27,'Boxer',3,1),(28,'Boyero australiano',3,1),(29,'Boyero de Appenzell',3,1),(30,'Boyero de Entlebuch',3,1),(31,'Boyero de Flandes',3,1),(32,'Boyero de las Ardenas',1,1),(33,'Boyero de montaña bernés',4,1),(34,'Braco alemán',3,1),(35,'Braco de Ariege',3,1),(36,'Braco de Auvernia',3,1),(37,'Braco de Bourbonnais',3,1),(38,'Braco de Weimar',3,1),(39,'Braco francés tipo Gascuña',3,1),(40,'Braco francés tipo Pirineos',2,1),(41,'Braco húngaro',2,1),(42,'Braco italiano',3,1),(43,'Braco Saint-Germain',3,1),(44,'Briquet grifón vendeano',2,1),(45,'Buhund noruego',2,1),(46,'Bull terrier',2,1),(47,'Bulldog',2,1),(48,'Bulldog americano',2,1),(49,'Bulldog francés',2,1),(50,'Bullmastiff',4,1),(51,'Gato alemán de pelo largo',5,2),(52,'Gato american wirehair',5,2);
/*!40000 ALTER TABLE `razas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamanios`
--

DROP TABLE IF EXISTS `tamanios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tamanios` (
  `idtamanios` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtamanios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamanios`
--

LOCK TABLES `tamanios` WRITE;
/*!40000 ALTER TABLE `tamanios` DISABLE KEYS */;
INSERT INTO `tamanios` VALUES (1,'Pequeño'),(2,'Mediano'),(3,'Grande'),(4,'Gigante'),(5,'No definido');
/*!40000 ALTER TABLE `tamanios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposvacunas`
--

DROP TABLE IF EXISTS `tiposvacunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposvacunas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposvacunas`
--

LOCK TABLES `tiposvacunas` WRITE;
/*!40000 ALTER TABLE `tiposvacunas` DISABLE KEYS */;
INSERT INTO `tiposvacunas` VALUES (1,'Oral'),(2,'Inyectable'),(3,'Inhaladas intranasales');
/*!40000 ALTER TABLE `tiposvacunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `TipoUsuario` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'Veterinario'),(2,'Recepcionista'),(3,'Administrador');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idmatricula` int(11) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Mail` varchar(45) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Especialidad` int(11) DEFAULT NULL,
  `Usuario` int(11) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `TipoUsuario` int(11) NOT NULL,
  PRIMARY KEY (`Usuario`,`Password`,`TipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (46842381,'Silvia','Herzovich','sherzo@ort.edu.ar',1111111111,2,13655724,'sherzo',1),(123456789,'Federico','Perchuk','fperchuk@hotmail.com',1553257987,1,41127835,'holavete',2),(NULL,'Martin','Selem','martuselem@gmail.com',1538128054,3,41247599,'yelenteamo',3);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacunas`
--

DROP TABLE IF EXISTS `vacunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacunas` (
  `idvacuna` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Tipo` int(11) NOT NULL,
  PRIMARY KEY (`idvacuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacunas`
--

LOCK TABLES `vacunas` WRITE;
/*!40000 ALTER TABLE `vacunas` DISABLE KEYS */;
INSERT INTO `vacunas` VALUES (1,'Triple',1),(2,'Parvovirus',1),(3,'Rabia',1);
/*!40000 ALTER TABLE `vacunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacunasaplicadas`
--

DROP TABLE IF EXISTS `vacunasaplicadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacunasaplicadas` (
  `idvacuna` int(11) NOT NULL,
  `idMascota` int(11) NOT NULL,
  `FechaAplicacion` date NOT NULL,
  `HoraAplicacion` time NOT NULL,
  `Medico` int(11) NOT NULL,
  `Dosis` int(11) NOT NULL,
  PRIMARY KEY (`idMascota`,`FechaAplicacion`,`HoraAplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacunasaplicadas`
--

LOCK TABLES `vacunasaplicadas` WRITE;
/*!40000 ALTER TABLE `vacunasaplicadas` DISABLE KEYS */;
INSERT INTO `vacunasaplicadas` VALUES (1,5,'2015-10-18','19:57:14',123456789,1),(1,5,'2015-10-18','19:57:17',123456789,2),(1,5,'2015-10-18','19:57:21',123456789,3),(1,6,'2015-10-16','01:32:08',123456789,1),(1,6,'2015-10-16','01:32:11',123456789,2),(2,6,'2015-10-16','01:32:22',123456789,1),(2,6,'2015-10-16','01:32:24',123456789,2),(3,6,'2015-10-16','01:32:44',123456789,1),(3,15,'2015-10-18','19:53:00',123456789,2),(2,15,'2015-11-20','09:20:22',123456789,1);
/*!40000 ALTER TABLE `vacunasaplicadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinarias`
--

DROP TABLE IF EXISTS `veterinarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veterinarias` (
  `idveterinaria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` int(11) NOT NULL,
  PRIMARY KEY (`idveterinaria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinarias`
--

LOCK TABLES `veterinarias` WRITE;
/*!40000 ALTER TABLE `veterinarias` DISABLE KEYS */;
INSERT INTO `veterinarias` VALUES (1,'Honorio','Av Dr Honorio Pueyrredón 315',49037421),(2,'Kimey','Av. Díaz Vélez 5342',49830987),(3,'Mundovet','Av P Goyena 389',49238980),(4,'Sweet Dog Style','Av A Gallardo 1073',48541235);
/*!40000 ALTER TABLE `veterinarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'veterinaria'
--
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Duenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Duenio`(IN `pDni` INT(11), IN `pNombre` VARCHAR(45), IN `pApellido` VARCHAR(45), IN `pDireccion` VARCHAR(45), IN `pCP` INT(11), IN `pDepartamento` VARCHAR(45), IN `pPiso` INT(11), IN `pCodArea` INT(11), IN `pTelefono` INT(11), IN `pMail` VARCHAR(45), IN `pFechaNacimiento` DATE, IN `pImagen` VARCHAR(45), IN `pSexo` TINYINT(2))
BEGIN


UPDATE `veterinaria`.`duenios`


SET


`Nombre` = pNombre,


`Apellido` = pApellido,


`Direccion` = pDireccion,


`CP` = pCP,


`Departamento` = pDepartamento,


`Piso` = pPiso,


`CodArea` = pCodArea,


`Telefono` = pTelefono,


`Mail` = pMail,


`FechaNacimiento` = pFechaNacimiento,


`Imagen` = pImagen,


`Sexo` = pSexo


WHERE `DNI` = pDni;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Historia_Clinica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Historia_Clinica`(in pFecha date, in pHora time, in pPeso double, in pTemperatura double, in pEnfermedad int(11), in pMatricula int(11), in pMascota int(11), in pDetalle longtext)
BEGIN
update historiaclinica
set peso=pPeso, temperatura=pTemperatura, idenfermedad=pEnfermedad, matricula=pMatricula, detalle=pDetalle
where fecha=pFecha and hora=pHora and mascota=pMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Informacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Informacion`(in pAlertas longtext, pObservaciones longtext, pMascota int)
BEGIN
update informacion
set Alertas=pAlertas, Observaciones=pObservaciones
where Mascota=pMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Mascota`(in pIdmascotas int(11), in pNombre varchar(45), in pEspecie int(11), in pRaza int(11),in pPelaje int(11),in pFechaNacimiento date, in pPesoInicial double, in pSexo tinyint(4), in pCastrado tinyint(4), in pFallecio tinyint(4), in pImagen varchar(45),in pDuenio int(11), in pFechaFallecimiento date,in pUsuario int(11))
BEGIN

update `veterinaria`.`mascotas`

set 

Nombre=pNombre,

Especie=pEspecie,

Raza=pRaza,

Pelaje=pPelaje,

FechaNacimiento=pFechaNacimiento,

PesoInicial=pPesoInicial,

Sexo=pSexo,

Castrado=pCastrado,

Fallecio=pFallecio,

Imagen=pImagen,

Duenio=pDuenio,

FechaFallecimiento=pFechaFallecimiento,

Usuario=pUsuario

where idmascotas=pIdmascotas;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Aplicar_Vacuna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Aplicar_Vacuna`(in pIdvacuna int, in pIdmascota int,in pFechaAplicacion date, in pHoraAplicacion time,in pMedico int, in pDosis int)
BEGIN
insert into vacunasaplicadas
values(pIdvacuna, pIdmascota, pFechaAplicacion, pHoraAplicacion, pMedico, pDosis);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Mascota`(





	in pId int(11)





)
BEGIN





delete from mascotas





where idmascotas=pId;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Vacuna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Vacuna`(in pIdMascota int, in pFechaAplicacion date, in pHoraAplicacion time)
BEGIN
delete from vacunasaplicadas
where idMascota=pIdMascota and FechaAplicacion =pFechaAplicacion and HoraAplicacion =pHoraAplicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Visita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Visita`(in pFecha date, in pHora time, in pMascota int)
BEGIN
Delete from historiaclinica
where Fecha=pFecha and Hora=pHora and mascota=pMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Grabar_Informacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Grabar_Informacion`(in pAlertas longtext, in pObservaciones longtext, in pMascota int)
BEGIN
insert into informacion
values(pAlertas, pObservaciones, pMascota);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Duenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Duenio`(IN `pDni` INT(11), IN `pNombre` VARCHAR(45), IN `pApellido` VARCHAR(45), IN `pDireccion` VARCHAR(45), IN `pCP` INT(11), IN `pDepartamento` VARCHAR(45), IN `pPiso` INT(11), IN `pCodArea` INT(11), IN `pTelefono` INT(11), IN `pMail` VARCHAR(45), IN `pFechaNacimiento` DATE, IN `pImagen` VARCHAR(45), IN `pSexo` TINYINT(2))
BEGIN





insert into duenios





values





(





	pDni,





    pNombre,





    pApellido,





    pDireccion,





    pCP,





    pDepartamento,





    pPiso,





    pCodArea,





    pTelefono,





    pMail,





    pFechaNacimiento,





    pImagen,


    pSexo





);





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Mascota`(IN `pNombre` VARCHAR(45), IN `pEspecie` INT(11), IN `pRaza` INT(11), IN `pPelaje` INT(11), IN `pFechaNacimiento` DATE, IN `pPesoInicial` DOUBLE, IN `pSexo` TINYINT(4), IN `pCastrado` TINYINT(4), IN `pFallecio` TINYINT(4), IN `pFechaFallecimiento` DATE, IN `pImagen` VARCHAR(45), IN `pDuenio` INT(11), IN `pUsuario` INT(11))
BEGIN















insert into mascotas















values















(















	null,















	pNombre,















	pEspecie,















	pRaza,















	pPelaje,















	pFechaNacimiento,















	pPesoInicial,















	pSexo,















	pCastrado,















	pFallecio,















	pFechaFallecimiento,















	pImagen,















	pDuenio,















	pUsuario















); 















END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Raza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Raza`(in pNombre varchar(45), in pTamanio int, in pEspecie int)
BEGIN
insert into razas
values (null,pNombre, pTamanio, pEspecie);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Duenios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Duenios`()
BEGIN


SELECT * FROM duenios;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Enfermedades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Enfermedades`()
BEGIN
select * from enfermedades;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Especies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Especies`()
BEGIN


SELECT * FROM especies;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Tamanios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Tamanios`()
BEGIN
select *
from tamanios;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Tipos_Vacunas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Tipos_Vacunas`()
BEGIN
select * from tiposvacunas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Listar_Veterinarias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Listar_Veterinarias`()
BEGIN
select *
from veterinarias;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LogIn_Usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LogIn_Usuarios`(IN pUsuario INT(11), IN pPassword VARCHAR(45))
BEGIN

SELECT * FROM usuarios

WHERE Usuario=pUsuario AND Password = pPassword;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Cant_Dosis_Por_Vacuna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Cant_Dosis_Por_Vacuna`(in pIdVacuna int)
BEGIN
select count(*) as CantDosis from dosis
where idVacuna=pIdVacuna;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Dosis_Por_VacunaDosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Dosis_Por_VacunaDosis`(in pVacuna int, in pDosis int)
BEGIN
select *
from dosis
where idVacuna =pVacuna and Dosis=pDosis;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Duenio_Por_Dni` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Duenio_Por_Dni`(





	in pDni int(11)





)
BEGIN





SELECT * FROM duenios





WHERE DNI = pDni;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Duenio_Por_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Duenio_Por_Mascota`(in pIdMascota int)
BEGIN
select DNI, duenios.Nombre, Apellido, Direccion, CP, Departamento, Piso, CodArea, Telefono, Mail, Duenios.FechaNacimiento, Duenios.Imagen, Duenios.Sexo from duenios
inner join mascotas on duenios.DNI = mascotas.Duenio
where idmascotas=pIdMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Enfermedad_Por_Id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Enfermedad_Por_Id`(in pId int)
BEGIN
select nombre from enfermedades
where idenfermedades=pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Fecha_Siguiente_Dosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Fecha_Siguiente_Dosis`(in pIdMascota int, in pIdVacuna int, in UltDosis int)
BEGIN
CALL `veterinaria`.`Obtener_Ultima_Dosis_Por_MascotaVacuna`(pIdVacuna, pIdMascota);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Fecha_Ultima_Visita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Fecha_Ultima_Visita`()
BEGIN
select Fecha from historiaclinica
order by Fecha desc limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Historias_clinicas_Por_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Historias_clinicas_Por_Mascota`(in pMascota int)
BEGIN
select historiaclinica.Fecha, historiaclinica.Hora, historiaclinica.Peso, historiaclinica.Temperatura, enfermedades.Nombre as Enfermedad, usuarios.Nombre, usuarios.Apellido, historiaclinica.detalle, veterinarias.Nombre  as Veterinaria from historiaclinica
left join enfermedades on historiaclinica.idenfermedad=enfermedades.idenfermedades inner join usuarios on historiaclinica.matricula=usuarios.idmatricula inner join veterinarias on historiaclinica.veterinaria=veterinarias.idveterinaria
where mascota=pMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Historia_Clinicas_Por_MascotaFechaHora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Historia_Clinicas_Por_MascotaFechaHora`(in pFecha date, in pHora time, in pMascota int)
BEGIN
select * from historiaclinica
where fecha=pFecha and hora=pHora and mascota=pMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Id_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Id_Mascota`(in pNombre varchar(45))
BEGIN
select idmascotas from mascotas
where Nombre=pNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Informacion_Por_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Informacion_Por_Mascota`(in pMascota int)
BEGIN
select *
from informacion
where Mascota=pMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Mascotas_Por_Duenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Mascotas_Por_Duenio`(





	in pDuenio int(11)





)
BEGIN





SELECT * FROM mascotas





WHERE Duenio = pDuenio;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Mascota_Por_Codigo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Mascota_Por_Codigo`(





	in pIdmascotas int(11)





)
BEGIN





select * from mascotas





where idmascotas = pIdmascotas;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Mascota_Por_Id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Mascota_Por_Id`(IN pId INT(11))
BEGIN

SELECT * FROM mascotas

WHERE idmascotas = pId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Razas_Por_Especie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Razas_Por_Especie`(


	IN pEspecie int(11)


)
BEGIN


SELECT * FROM razas


WHERE especie=pEspecie;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_TamanioRaza_Por_idRaza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_TamanioRaza_Por_idRaza`(in pIdrazas int(11))
BEGIN

select tamanios.Nombre

from razas

inner join tamanios

on razas.tamanio=tamanios.idtamanios

where razas.idrazas=pIdrazas;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Ultima_Dosis_Por_MascotaVacuna` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Ultima_Dosis_Por_MascotaVacuna`(in pIdvacuna int, in pIdmascota int)
BEGIN
select count(*) as Dosis from vacunasaplicadas 
where idvacuna=pIdvacuna and idMascota=pIdmascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Ultimo_Id_Mascotas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Ultimo_Id_Mascotas`()
BEGIN

SELECT LAST_INSERT_ID() as idmascotas

FROM mascotas;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Vacunas_Por_Mascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Vacunas_Por_Mascota`(in pMascota int)
BEGIN
select tiposvacunas.Tipo, vacunas.Nombre as Vacuna, vacunasaplicadas.FechaAplicacion, vacunasaplicadas.HoraAplicacion, vacunasaplicadas.Dosis, CONCAT(usuarios.Nombre, " ",usuarios.Apellido) as Doctor
from tiposvacunas
inner join vacunas on vacunas.Tipo=tiposvacunas.id
inner join vacunasaplicadas on vacunasaplicadas.idvacuna=vacunas.idvacuna
inner join mascotas on vacunasaplicadas.idMascota = mascotas.idmascotas
inner join dosis on vacunasaplicadas.dosis=Dosis.Dosis and vacunasaplicadas.idvacuna=dosis.idVacuna
inner join usuarios on vacunasaplicadas.Medico=usuarios.idmatricula
where vacunasaplicadas.idMascota=pMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Vacunas_Por_Tipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Vacunas_Por_Tipo`(in pTipo int)
BEGIN
select * from vacunas
where Tipo=pTipo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Vacuna_Aplicada_Por_IdYMascota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Vacuna_Aplicada_Por_IdYMascota`(in pIdvacuna int, in pIdMascota int)
BEGIN
select * from vacunasaplicadas
where idvacuna=pIdvacuna and idMascota=pIdMascota;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Obtener_Veterinaria_Por_Id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Obtener_Veterinaria_Por_Id`(in pId int)
BEGIN
select *
from veterinarias
where idveterinaria=pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Historia_Clinica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Historia_Clinica`(in pFecha date, in pHora time, in pPeso double, in pTemperatura double, in pEnfermedad int(11), in pMatricula int(11), in pMascota int(11), in pDetalle longtext)
BEGIN
insert into historiaclinica
values (pFecha, pHora, pPeso, pTemperatura, pEnfermedad, pMatricula, pMascota, pDetalle);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 11:52:29
