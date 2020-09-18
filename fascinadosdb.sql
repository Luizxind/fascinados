-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 18-Set-2020 às 14:01
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fascinadosdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `banidos`
--

DROP TABLE IF EXISTS `banidos`;
CREATE TABLE IF NOT EXISTS `banidos` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `identidade` bigint NOT NULL,
  `nome` varchar(100) NOT NULL,
  `motivo` text NOT NULL,
  `dataatuacao` datetime(6) NOT NULL,
  `bypor` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`,`identidade`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banidos`
--

INSERT INTO `banidos` (`cod`, `identidade`, `nome`, `motivo`, `dataatuacao`, `bypor`) VALUES
(1, 794059490, 'A7 xorinn', 'Saida injustificada', '2020-09-18 00:00:00.000000', 'Luiz'),
(2, 1754788155, 'FCN ESTRAK', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(3, 1664666818, 'FCN HARRY', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(4, 196635087, 'KAUAHS12', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(5, 354515300, 'FCN CHAPADO', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(6, 124094646, 'Vapo Hokage', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(7, 138176910, 'VIX Padilha', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(8, 172696016, 'Vix Igao', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(9, 541000573, 'VIx LUIZ', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(10, 755713402, 'DR FELIPIN', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(11, 1610291722, 'BFC Apelao', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(12, 1914304001, 'cerol1274936', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(13, 1864852271, 'eric395bc', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(14, 1812690640, 'AndreaS3709D', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(15, 2000518238, 'GatusSa0126T', 'Saida sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(16, 1682296122, 'Joanzin MF', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(17, 2291895954, 'Gaabi', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(18, 2119622873, 'MELIODA1234', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(19, 165145104, 'FUZI SUKI', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(20, 747325994, 'T2N?TWO99', 'Saida sem Justificativa', '2020-09-18 00:00:00.000000', 'Luiz'),
(21, 556096764, 'FCN TOODY', 'Saida Sem justificativa', '2020-09-18 00:00:00.000000', 'Luiz');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

DROP TABLE IF EXISTS `historico`;
CREATE TABLE IF NOT EXISTS `historico` (
  `cod` int NOT NULL AUTO_INCREMENT,
  `identidade` bigint NOT NULL,
  `tipo` tinyint NOT NULL,
  `valor` float NOT NULL,
  `data` datetime(6) NOT NULL,
  `hora` time(6) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `identidade` int NOT NULL,
  `nome` varchar(60) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `guilda` varchar(15) NOT NULL,
  `tipomembro` varchar(15) NOT NULL,
  `rank` varchar(15) NOT NULL,
  `whats` int NOT NULL,
  `saldo` float NOT NULL,
  `regisip` int NOT NULL,
  `lastip` int NOT NULL,
  `dataderegistro` datetime(6) NOT NULL,
  `atividade` text NOT NULL,
  PRIMARY KEY (`codigo`,`identidade`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codigo`, `identidade`, `nome`, `senha`, `guilda`, `tipomembro`, `rank`, `whats`, `saldo`, `regisip`, `lastip`, `dataderegistro`, `atividade`) VALUES
(1, 1025345203, 'Pedro Airon', '1234', 'FCN-e-SPORTs', 'Comum', 'Mestre', 1234, 0, 1, 1, '2020-08-01 00:00:00.000000', 'Membro da guilda'),
(3, 1212, 'Luiz', '1234', '', '', '', 0, 0, 0, 0, '0000-00-00 00:00:00.000000', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
