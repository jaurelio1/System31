-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 29-Jul-2018 às 21:15
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS system31;
USE system31;
--
-- Database: `system31`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `cpf` varchar(50) NOT NULL,
  `rg` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `num_home` int(11) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cod_condom` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cod_condom` (`cod_condom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`cpf`, `rg`, `nome`, `sexo`, `email`, `telefone`, `senha`, `data_nascimento`, `rua`, `num_home`, `bairro`, `uf`, `cep`, `cidade`, `cod_condom`) VALUES
('09915396400', '387945912', 'João', 'M', 'joao@hotmail.com', '81989541212', '123456', '1995-09-12', 'Nilton Senhorinho', 50, 'Centro', 'PB', 77777888, 'Campina Grande', 1),
('09915391234', '387945123', 'Maria', 'F', 'maria@hotmail.com', '81989540000', '654321', '1995-12-30', 'Arruda Vasconscelos', 100, 'Dinamérica', 'PB', 99999888, 'Campina Grande', 2),
('09915312345', '387941234', 'José', 'M', 'jose@hotmail.com', '81989541111', '000000', '1955-01-22', 'Governador Valadares', 234, 'Bodocongó', 'PB', 66666888, 'Campina Grande', 3),
('09915123456', '387912345', 'Francisca', 'F', 'francisca@hotmail.com', '81989542222', '102030', '1980-10-13', 'Maria Lidia', 510, 'São Pedro', 'PE', 55555888, 'Belo Jardim', 4),
('09911234567', '387123456', 'Antonio', 'M', 'antonio@hotmail.com', '81989543333', '5555555', '1990-05-20', 'Torres Maciel', 201, 'Cabo Branco', 'PB', 44444888, 'João Pessoa', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `boleto`
--

DROP TABLE IF EXISTS `boleto`;
CREATE TABLE IF NOT EXISTS `boleto` (
  `cpf_titular` varchar(50) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  `data_validade` date DEFAULT NULL,
  `pago` tinyint(1) DEFAULT NULL,
  KEY `cpf_titular` (`cpf_titular`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `boleto`
--

INSERT INTO `boleto` (`cpf_titular`, `tipo`, `data_validade`, `pago`) VALUES
('12345678955', 'A', '2018-07-30', 0),
('12345678955', 'C', '2018-07-30', 0),
('12345678955', 'A', '2018-06-30', 1),
('12345678955', 'C', '2018-06-30', 1),
('12345678922', 'A', '2018-07-30', 0),
('12345678922', 'C', '2018-07-30', 0),
('12345678922', 'A', '2018-05-30', 0),
('12345678922', 'C', '2018-05-30', 0),
('12345678123', 'A', '2018-07-30', 0),
('12345678123', 'C', '2018-07-30', 0),
('12345678123', 'A', '2017-07-30', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `condominio`
--

DROP TABLE IF EXISTS `condominio`;
CREATE TABLE IF NOT EXISTS `condominio` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `qtd_imoveis` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `condominio`
--

INSERT INTO `condominio` (`codigo`, `nome`, `uf`, `cidade`, `bairro`, `rua`, `numero`, `cep`, `qtd_imoveis`) VALUES
(1, 'Vale Do Sol', 'PB', 'Campina Grande', 'Centro', 'Maria das Graças', 100, 58418215, 5),
(2, 'Lua Mar', 'PB', 'Campina Grande', 'São José', 'Av. professor Almeida Barreto', 150, 58400328, 7),
(3, 'Riacho', 'PB', 'Campina Grande', 'Dinamérica', 'João Fonseca', 2510, 58418000, 10),
(4, 'Beija Flor', 'PE', 'Belo Jardim', 'Centro', 'Siqueira Campos', 1250, 55155250, 15),
(5, 'Rio Dourado', 'PB', 'João Pessoa', 'Cabo Branco', 'Lirios dos Campos', 1234, 50000123, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

DROP TABLE IF EXISTS `imovel`;
CREATE TABLE IF NOT EXISTS `imovel` (
  `numero_imovel` int(11) NOT NULL,
  `cod_condom` int(11) NOT NULL,
  `taxa_condominio` decimal(10,2) DEFAULT NULL,
  `valor_aluguel` decimal(10,2) DEFAULT NULL,
  `vagas_garagem` int(11) DEFAULT NULL,
  `qtd_quartos` int(11) DEFAULT '1',
  `qtd_banheiros` int(11) DEFAULT '1',
  `qtd_suites` int(11) DEFAULT NULL,
  `varanda` tinyint(1) DEFAULT NULL,
  `aluguel_ou_venda` char(1) DEFAULT NULL,
  `area_metros_quadrado` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero_imovel`,`cod_condom`),
  KEY `cod_condom` (`cod_condom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`numero_imovel`, `cod_condom`, `taxa_condominio`, `valor_aluguel`, `vagas_garagem`, `qtd_quartos`, `qtd_banheiros`, `qtd_suites`, `varanda`, `aluguel_ou_venda`, `area_metros_quadrado`) VALUES
(1, 1, '100.00', '500.00', 1, 2, 1, 0, 0, 'A', 40),
(2, 1, '100.00', '500.00', 1, 2, 1, 0, 0, 'A', 40),
(3, 1, '100.00', '500.00', 1, 2, 1, 0, 0, 'A', 40),
(4, 1, '100.00', '500.00', 1, 2, 1, 0, 0, 'A', 40),
(5, 1, '100.00', '500.00', 1, 2, 1, 0, 0, 'A', 40),
(10, 2, '200.00', '700.00', 2, 2, 1, 1, 0, 'A', 50),
(20, 2, '200.00', '700.00', 2, 2, 1, 1, 0, 'A', 50),
(30, 2, '200.00', '700.00', 2, 2, 1, 1, 0, 'A', 50),
(40, 2, '200.00', '700.00', 2, 2, 1, 1, 0, 'A', 50),
(50, 2, '200.00', '700.00', 2, 2, 1, 1, 0, 'A', 50),
(60, 2, '200.00', '700.00', 2, 2, 1, 1, 0, 'A', 50),
(70, 2, '200.00', '700.00', 2, 2, 1, 1, 0, 'A', 50),
(101, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(102, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(103, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(104, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(105, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(106, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(107, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(108, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(109, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(110, 3, '150.00', '400.00', 0, 1, 1, 0, 0, 'V', 35),
(201, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(202, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(203, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(204, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(205, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(206, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(207, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(208, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(209, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(210, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(211, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(212, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(213, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(214, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(215, 4, '300.00', '1000.00', 4, 5, 2, 3, 0, 'A', 95),
(1001, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1002, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1003, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1004, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1005, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1006, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1007, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1008, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1009, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1010, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1011, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1012, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1013, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1014, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1015, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1016, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1017, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1018, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1019, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45),
(1020, 5, '125.00', '480.00', 1, 1, 1, 1, 0, 'A', 45);

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador_dependendente`
--

DROP TABLE IF EXISTS `morador_dependendente`;
CREATE TABLE IF NOT EXISTS `morador_dependendente` (
  `cpf` varchar(50) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `cpf_titular` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cpf_titular` (`cpf_titular`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `morador_dependendente`
--

INSERT INTO `morador_dependendente` (`cpf`, `nome`, `sexo`, `email`, `telefone`, `cpf_titular`) VALUES
('00011122233', 'Fábio', 'M', 'fabio@academico.ifpb.edu.br', '835544332211', '12345678955'),
('00011122244', 'Sara', 'F', 'sara@academico.ifpb.edu.br', '835544332299', '12345678911'),
('00011122255', 'Vilma', 'F', 'vilma@academico.ifpb.edu.br', '835544332288', '12345678123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `morador_titular`
--

DROP TABLE IF EXISTS `morador_titular`;
CREATE TABLE IF NOT EXISTS `morador_titular` (
  `cpf` varchar(50) NOT NULL,
  `senha` varchar(50) DEFAULT '123456',
  `nome` varchar(50) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `num_imovel` int(11) DEFAULT NULL,
  `cod_condom` int(11) DEFAULT NULL,
  `renda` decimal(10,2) DEFAULT NULL,
  `sindico` tinyint(1) DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `cod_condom` (`cod_condom`),
  KEY `num_imovel` (`num_imovel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `morador_titular`
--

INSERT INTO `morador_titular` (`cpf`, `senha`, `nome`, `sexo`, `num_imovel`, `cod_condom`, `renda`, `sindico`, `email`, `telefone`) VALUES
('12345678955', '123456', 'Bruno', 'M', 1, 1, '1000.00', 0, 'bruno@gmail.com', '83977551122'),
('12345678911', '123456', 'Carlos', 'M', 2, 1, '1000.00', 0, 'carlos@gmail.com', '83977551122'),
('12345678944', '123456', 'Samantha', 'F', 10, 2, '5000.00', 0, 'samantha@gmail.com', '83977551122'),
('12345678933', '123456', 'Vinicius', 'M', 20, 2, '5000.00', 0, 'vinicius@gmail.com', '83977551122'),
('12345678922', '123456', 'Rafaela', 'F', 101, 3, '4000.00', 0, 'rafaela@gmail.com', '83977551122'),
('12345678966', '123456', 'Vitor', 'M', 102, 3, '4000.00', 0, 'vitor@gmail.com', '83977551122'),
('12345678988', '123456', 'Vitoria', 'F', 201, 4, '10000.00', 0, 'vitoria@gmail.com', '83977551122'),
('12345678977', '123456', 'Raul', 'M', 202, 4, '10000.00', 0, 'raul@gmail.com', '83977551122'),
('12345678999', '123456', 'Marcela', 'F', 1001, 5, '1500.00', 0, 'marcela@gmail.com', '83977551122'),
('12345678123', '123456', 'Carla', 'F', 1005, 5, '1500.00', 0, 'carla@gmail.com', '83977551122');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mor_condom_imo`
--

DROP TABLE IF EXISTS `mor_condom_imo`;
CREATE TABLE IF NOT EXISTS `mor_condom_imo` (
  `cpf_morador` varchar(50) DEFAULT NULL,
  `cod_condom` int(11) DEFAULT NULL,
  `num_imovel` int(11) DEFAULT NULL,
  KEY `cpf_morador` (`cpf_morador`),
  KEY `cod_condom` (`cod_condom`),
  KEY `num_imovel` (`num_imovel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
