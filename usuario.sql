-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 18-Set-2020 às 04:11
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fascinadosdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `codigo` int(15) NOT NULL,
  `identidade` int(15) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `guilda` varchar(15) NOT NULL,
  `tipomembro` varchar(15) NOT NULL,
  `rank` varchar(15) NOT NULL,
  `whats` int(16) NOT NULL,
  `saldo` float NOT NULL,
  `regisip` int(30) NOT NULL,
  `lastip` int(30) NOT NULL,
  `dataderegistro` datetime(6) NOT NULL,
  `atividade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codigo`, `identidade`, `nome`, `senha`, `guilda`, `tipomembro`, `rank`, `whats`, `saldo`, `regisip`, `lastip`, `dataderegistro`, `atividade`) VALUES
(1, 1025345203, 'Pedro Airon', '1234', 'FCN-e-SPORTs', 'Comum', 'Mestre', 1234, 0, 1, 1, '2020-08-01 00:00:00.000000', 'Membro da guilda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`,`identidade`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codigo` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
