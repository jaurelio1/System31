-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: system31
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `cpf` varchar(50) NOT NULL,
  `rg` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `num_home` int(11) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cod_condom` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cod_condom` (`cod_condom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES ('9915396400','387945912','João','M','casado','joao@hotmail.com','81989541212','123456','1995-09-12','Nilton Senhorinho',50,'Centro',77777888,'Campina Grande',1),('9915391234','387945123','Maria','F','casado','maria@hotmail.com','81989540000','654321','1995-12-30','Arruda Vasconscelos',100,'Dinamérica',99999888,'Campina Grande',2),('9915312345','387941234','José','M','solteiro','jose@hotmail.com','81989541111','000000','1955-01-22','Governador Valadares',234,'Bodocongó',66666888,'Campina Grande',3),('9915123456','387912345','Francisca','F','casado','francisca@hotmail.com','81989542222','102030','1980-10-13','Maria Lidia',510,'Malvinas',55555888,'Belo Jardim',4),('9911234567','387123456','Antonio','M','solteiro','antonio@hotmail.com','81989543333','5555555','1990-05-20','Torres Maciel',201,'Centro',44444888,'João Pessoa',5);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condominio`
--

DROP TABLE IF EXISTS `condominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condominio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `qtd_imoveis` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condominio`
--

LOCK TABLES `condominio` WRITE;
/*!40000 ALTER TABLE `condominio` DISABLE KEYS */;
INSERT INTO `condominio` VALUES (1,'Vale Do Sol','Campina Grande','Centro','Maria das Graças',100,58418215,5),(2,'Lua Mar','Campina Grande','São José','Av. professor Almeida Barreto',150,58400328,7),(3,'Riacho','Campina Grande','Dinamérica','João Fonseca',2510,58418000,10),(4,'Beija Flor','Belo Jardim','Centro','Siqueira Campos',1250,55155250,15),(5,'Rio Dourado','João Pessoa','Cabo Branco','Lirios dos Campos',1234,50000123,20);
/*!40000 ALTER TABLE `condominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imovel`
--

DROP TABLE IF EXISTS `imovel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imovel` (
  `numero_imovel` int(11) NOT NULL,
  `cod_condom` int(11) NOT NULL,
  `taxa_condominio` decimal(10,2) DEFAULT NULL,
  `valor_aluguel` decimal(10,2) DEFAULT NULL,
  `vagas_garagem` int(11) DEFAULT NULL,
  `qtd_quartos` int(11) DEFAULT '1',
  `qtd_banheiros` int(11) DEFAULT '1',
  `qtd_suites` int(11) DEFAULT NULL,
  `varanda` tinyint(1) DEFAULT NULL,
  `manutencao` tinyint(1) DEFAULT NULL,
  `aluguel_ou_venda` char(1) DEFAULT NULL,
  `area_metros_quadrado` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero_imovel`,`cod_condom`),
  KEY `cod_condom` (`cod_condom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imovel`
--

LOCK TABLES `imovel` WRITE;
/*!40000 ALTER TABLE `imovel` DISABLE KEYS */;
INSERT INTO `imovel` VALUES (1,1,100.00,500.00,1,2,1,0,0,0,'A',40),(2,1,100.00,500.00,1,2,1,0,0,0,'A',40),(3,1,100.00,500.00,1,2,1,0,0,0,'A',40),(4,1,100.00,500.00,1,2,1,0,0,0,'A',40),(5,1,100.00,500.00,1,2,1,0,0,0,'A',40),(10,2,200.00,700.00,2,2,1,1,0,0,'A',50),(20,2,200.00,700.00,2,2,1,1,0,0,'A',50),(30,2,200.00,700.00,2,2,1,1,0,0,'A',50),(40,2,200.00,700.00,2,2,1,1,0,0,'A',50),(50,2,200.00,700.00,2,2,1,1,0,0,'A',50),(60,2,200.00,700.00,2,2,1,1,0,0,'A',50),(70,2,200.00,700.00,2,2,1,1,0,0,'A',50),(101,3,150.00,400.00,0,1,1,0,0,0,'V',35),(102,3,150.00,400.00,0,1,1,0,0,0,'V',35),(103,3,150.00,400.00,0,1,1,0,0,0,'V',35),(104,3,150.00,400.00,0,1,1,0,0,0,'V',35),(105,3,150.00,400.00,0,1,1,0,0,0,'V',35),(106,3,150.00,400.00,0,1,1,0,0,0,'V',35),(107,3,150.00,400.00,0,1,1,0,0,0,'V',35),(108,3,150.00,400.00,0,1,1,0,0,0,'V',35),(109,3,150.00,400.00,0,1,1,0,0,0,'V',35),(110,3,150.00,400.00,0,1,1,0,0,0,'V',35),(201,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(202,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(203,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(204,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(205,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(206,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(207,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(208,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(209,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(210,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(211,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(212,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(213,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(214,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(215,4,300.00,1000.00,4,5,2,3,1,0,'A',95),(1001,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1002,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1003,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1004,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1005,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1006,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1007,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1008,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1009,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1010,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1011,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1012,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1013,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1014,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1015,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1016,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1017,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1018,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1019,5,125.00,480.00,1,1,1,1,1,0,'A',45),(1020,5,125.00,480.00,1,1,1,1,1,0,'A',45);
/*!40000 ALTER TABLE `imovel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `morador_dependendente`
--

DROP TABLE IF EXISTS `morador_dependendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `morador_dependendente` (
  `cpf` varchar(50) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `sindico` tinyint(1) DEFAULT '0',
  `cpf_titular` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cpf_titular` (`cpf_titular`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morador_dependendente`
--

LOCK TABLES `morador_dependendente` WRITE;
/*!40000 ALTER TABLE `morador_dependendente` DISABLE KEYS */;
INSERT INTO `morador_dependendente` VALUES ('11122233','Fábio','M','fabio@academico.ifpb.edu.br','835544332211',0,'1234567855'),('11122244','Sara','F','sara@academico.ifpb.edu.br','835544332299',0,'1234567811'),('11122255','Vilma','F','vilma@academico.ifpb.edu.br','835544332288',0,'1234567123');
/*!40000 ALTER TABLE `morador_dependendente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `morador_titular`
--

DROP TABLE IF EXISTS `morador_titular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `morador_titular` (
  `cpf` varchar(50) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `num_imovel` int(11) DEFAULT NULL,
  `cod_condom` int(11) DEFAULT NULL,
  `renda` decimal(10,2) DEFAULT NULL,
  `inadimplencia` tinyint(1) DEFAULT '0',
  `sindico` tinyint(1) DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cod_condom` (`cod_condom`),
  KEY `num_imovel` (`num_imovel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morador_titular`
--

LOCK TABLES `morador_titular` WRITE;
/*!40000 ALTER TABLE `morador_titular` DISABLE KEYS */;
INSERT INTO `morador_titular` VALUES ('12345678955','Bruno','M',0,1,1000.00,0,0,'bruno@gmail.com','83977551122'),('12345678911','Carlos','M',1,1,1000.00,0,0,'carlos@gmail.com','83977551122'),('12345678944','Samantha','F',10,2,5000.00,0,0,'samantha@gmail.com','83977551122'),('12345678933','Vinicius','M',20,2,5000.00,0,0,'vinicius@gmail.com','83977551122'),('12345678922','Rafaela','F',100,3,4000.00,0,0,'rafaela@gmail.com','83977551122'),('12345678966','Vitor','M',101,3,4000.00,0,0,'vitor@gmail.com','83977551122'),('12345678988','Vitoria','F',200,4,10000.00,0,0,'vitoria@gmail.com','83977551122'),('12345678977','Raul','M',201,4,10000.00,0,0,'raul@gmail.com','83977551122'),('12345678999','Marcela','F',1000,5,1500.00,0,0,'marcela@gmail.com','83977551122'),('12345678123','Carla','F',1005,5,1500.00,0,0,'carla@gmail.com','83977551122');
/*!40000 ALTER TABLE `morador_titular` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-28 16:41:25
