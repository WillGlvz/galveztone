-- MySQL dump 10.16  Distrib 10.1.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ventas
-- ------------------------------------------------------
-- Server version	10.1.14-MariaDB

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `id_admin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom_admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ape_admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_admin` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contra_admin` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credito`
--

DROP TABLE IF EXISTS `credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credito` (
  `id_credito` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_credito` date NOT NULL,
  `cant_fardos_credito` int(4) unsigned NOT NULL,
  `promo_credito` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cant_a_entr_cred` decimal(6,2) unsigned NOT NULL,
  `cliente_credito` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `tel_cliente_credito` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `debe_cliente_credito` decimal(6,2) unsigned NOT NULL,
  `estado_credito` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `coment_credito` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int(10) unsigned NOT NULL,
  `id_emp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_credito`),
  KEY `id_admin_credito` (`id_admin`),
  KEY `id_emp_credito` (`id_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credito`
--

LOCK TABLES `credito` WRITE;
/*!40000 ALTER TABLE `credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `id_emp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom_emp` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ape_emp` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dui_emp` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `contacto_emp` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frutsis`
--

DROP TABLE IF EXISTS `frutsis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frutsis` (
  `id_frutsi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_frutsi` date NOT NULL,
  `tipo_ventaf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_frutsi` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `salida_frutsi` int(5) unsigned NOT NULL,
  `devueltos_frutsi` int(5) unsigned NOT NULL,
  `vendio_frutsi` int(5) unsigned NOT NULL,
  `entrego_frutsi` decimal(6,2) unsigned NOT NULL,
  `esperaba_frutsi` decimal(6,2) unsigned NOT NULL,
  `debe_frutsi` decimal(6,2) NOT NULL,
  `estado_frutsi` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comision_frutsi` decimal(6,2) unsigned NOT NULL,
  `neto_frutsi` decimal(6,2) unsigned NOT NULL,
  `coment_frutsi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_emp` int(10) unsigned NOT NULL,
  `id_admin` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_frutsi`),
  KEY `id_emp_frut` (`id_emp`),
  KEY `id_admin_frut` (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frutsis`
--

LOCK TABLES `frutsis` WRITE;
/*!40000 ALTER TABLE `frutsis` DISABLE KEYS */;
/*!40000 ALTER TABLE `frutsis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mayoristas`
--

DROP TABLE IF EXISTS `mayoristas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mayoristas` (
  `id_mayoreo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_mayoreo` date NOT NULL,
  `salida_fardos_may` int(4) unsigned NOT NULL,
  `dev_fardos_may` int(4) unsigned NOT NULL,
  `monto3_may` decimal(6,2) unsigned DEFAULT NULL,
  `cant1_may` int(4) unsigned NOT NULL,
  `cant2_may` int(4) unsigned NOT NULL,
  `cant3_may` int(4) unsigned NOT NULL,
  `monto_venta1_may` decimal(6,2) unsigned NOT NULL,
  `monto_venta2_may` decimal(6,2) unsigned NOT NULL,
  `monto_venta3_may` decimal(6,2) unsigned NOT NULL,
  `total_venta_may` decimal(6,2) unsigned NOT NULL,
  `total_fardos_may` int(4) unsigned NOT NULL,
  `entregado_mayo` decimal(6,2) unsigned NOT NULL,
  `ganancia_vend_may` decimal(6,2) NOT NULL,
  `saldo_neto_may` decimal(6,2) NOT NULL,
  `coment_mayo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int(10) unsigned NOT NULL,
  `id_emp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_mayoreo`),
  KEY `id_admin_may` (`id_admin`),
  KEY `id_emp_may` (`id_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mayoristas`
--

LOCK TABLES `mayoristas` WRITE;
/*!40000 ALTER TABLE `mayoristas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mayoristas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refrescos`
--

DROP TABLE IF EXISTS `refrescos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refrescos` (
  `id_refre` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_refre` date NOT NULL,
  `tipo_ventar` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_refre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `salida_refre` int(5) unsigned NOT NULL,
  `devueltos_refre` int(5) unsigned NOT NULL,
  `vendio_refre` int(5) unsigned NOT NULL,
  `entrego_refre` decimal(6,2) unsigned NOT NULL,
  `esperaba_refre` decimal(6,2) unsigned NOT NULL,
  `debe_refre` decimal(6,2) unsigned NOT NULL,
  `estado_refre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comision_refre` decimal(6,2) unsigned NOT NULL,
  `neto_refre` decimal(6,2) unsigned NOT NULL,
  `coment_refre` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_emp` int(10) unsigned NOT NULL,
  `id_admin` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_refre`),
  KEY `id_emp_refre` (`id_emp`),
  KEY `id_admin_refre` (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refrescos`
--

LOCK TABLES `refrescos` WRITE;
/*!40000 ALTER TABLE `refrescos` DISABLE KEYS */;
/*!40000 ALTER TABLE `refrescos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rutas` (
  `id_ruta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_ruta` date NOT NULL,
  `cant_salida_ruta` int(5) unsigned NOT NULL,
  `devol_ruta` int(5) unsigned NOT NULL,
  `vendidos_ruta` int(5) unsigned NOT NULL,
  `cantidad_esp_ruta` decimal(6,2) unsigned NOT NULL,
  `entregado_ruta` decimal(6,2) unsigned NOT NULL,
  `ganancia_vend_ruta` decimal(6,2) NOT NULL,
  `sueldo_vend_ruta` decimal(6,2) unsigned NOT NULL,
  `gas_ruta` int(5) unsigned NOT NULL,
  `saldo_neto_ruta` decimal(6,2) NOT NULL,
  `coment_ruta` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_admin` int(10) unsigned NOT NULL,
  `id_emp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_ruta`),
  KEY `id_admin_ruta` (`id_admin`),
  KEY `id_emp_ruta` (`id_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutas`
--

LOCK TABLES `rutas` WRITE;
/*!40000 ALTER TABLE `rutas` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventaplanta`
--

DROP TABLE IF EXISTS `ventaplanta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventaplanta` (
  `id_ventap` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_ventap` date NOT NULL,
  `cliente_ventap` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_ventap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fardos_vendidos_ventap` int(4) unsigned NOT NULL,
  `monto_ventap` decimal(6,2) unsigned NOT NULL,
  `estado_ventap` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `coment_vplanta` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_admin` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_ventap`),
  KEY `id_admin_ventap` (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventaplanta`
--

LOCK TABLES `ventaplanta` WRITE;
/*!40000 ALTER TABLE `ventaplanta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventaplanta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-13 13:11:24
