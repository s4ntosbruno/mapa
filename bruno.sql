-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2022 às 01:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bruno`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `protocolo`
--

CREATE TABLE `protocolo` (
  `numero` int(11) NOT NULL,
  `solicitante` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `ano` year(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `dataCadastro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `protocolo`
--

INSERT INTO `protocolo` (`numero`, `solicitante`, `descricao`, `email`, `ano`, `status`, `dataCadastro`) VALUES
(1, 'José', 'foi pescar', 'jose@jose.com', 2002, 0, '2022-09-15 19:30:00'),
(12, 'Maria da Silva', 'porco', 'maria@maria.com', 2022, 1, '0000-00-00 00:00:00'),
(13, 'Maria da Silva', 'porco', 'maria@maria.com', 2022, 1, '15/09/2022 06:43:03'),
(14, 'bruno', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:20:48'),
(15, 'br', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:23:45'),
(16, 'bruno', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:25:09'),
(17, 'bruno', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:25:28'),
(18, 'bruno', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:25:36'),
(19, 'bruno2', 'pescar peixe 2', 'bruno@bruno2.com', 2022, 1, '15/09/2022 07:25:50'),
(20, 'bruno', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:27:27'),
(21, 'bruno', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:33:04'),
(22, 'larissa almeida rodrigues', 'jogar tft', 'larissa@larissa.com', 2022, 1, '15/09/2022 07:52:55'),
(23, 'larissa almeida rodrigues', 'jogar tft', 'larissa@larissa.com', 2022, 1, '15/09/2022 07:55:13'),
(24, 'bruno', 'pescar peixe', 'asdasd@gmal.com', 2022, 1, '15/09/2022 07:55:22'),
(25, 'bruno', 'asd', 'asdasd@gmal.com', 2022, 1, '15/09/2022 07:57:47'),
(26, 'bruno', 'asd', 'asdasd@gmal.com', 2022, 1, '15/09/2022 07:58:16'),
(27, 'bruno', 'pescar peixe', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:58:25'),
(28, 'bruno', 'pescar peixe12', 'bruno@bruno.com', 2022, 1, '15/09/2022 07:58:31');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `protocolo`
--
ALTER TABLE `protocolo`
  ADD PRIMARY KEY (`numero`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `protocolo`
--
ALTER TABLE `protocolo`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
