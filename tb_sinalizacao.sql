-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/11/2024 às 01:43
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_vigia_chuva`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_sinalizacao`
--

CREATE TABLE `tb_sinalizacao` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `ativo` char(3) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `data_hora` datetime NOT NULL,
  `ponto_referencia` varchar(255) NOT NULL,
  `grau_alagamento` varchar(10) NOT NULL,
  `bairro` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_sinalizacao`
--

INSERT INTO `tb_sinalizacao` (`id`, `nome`, `ativo`, `latitude`, `longitude`, `data_hora`, `ponto_referencia`, `grau_alagamento`, `bairro`) VALUES
(1, 'Desconhecido', 'SIM', '-24.096320', '-46.624276', '2024-10-19 22:10:21', 'av xxx', 'leve', ''),
(2, 'Desconhecido', 'SIM', '-24.095869', '-46.623901', '2024-10-19 22:11:57', 'rua 11', 'grave', ''),
(3, 'Desconhecido', 'SIM', '-24.119378', '-46.688547', '2024-10-19 22:15:53', 'regina maria', 'leve', ''),
(4, 'Desconhecido', 'SIM', '-24.107000', '-46.652005', '2024-10-19 22:18:00', 'rua minas gerais', 'medio', ''),
(5, 'miguel', 'SIM', '-24.107176', '-46.645095', '2024-10-19 22:22:30', 'av xxx', 'medio', ''),
(6, 'miguel', 'SIM', '-24.114413', '-46.667433', '2024-10-19 22:29:43', 'rua xxxxx', 'medio', ''),
(7, 'gabriel cara', 'SIM', '-24.101170', '-46.637126', '2024-10-19 22:42:29', 'pista em frente ao vera', 'grave', ''),
(8, 'gabriel cara', 'SIM', '-24.095767', '-46.624882', '2024-10-19 23:03:23', 'xxxxx', 'medio', ''),
(9, 'toninohn', 'SIM', '-24.114756', '-46.664139', '2024-10-19 23:48:03', 'perto do postinho', 'medio', ''),
(19, 'melissa', 'SIM', '-24.099674', '-46.660051', '2024-10-20 17:32:13', 'av xxx', 'leve', ''),
(20, 'melissa', 'SIM', '-24.100105', '-46.654687', '2024-10-20 17:34:18', 'aaaa', 'leve', ''),
(21, 'melissa', 'SIM', '-24.105134', '-46.653131', '2024-10-20 17:34:54', 'aaaaa', 'leve', ''),
(22, 'melissa', 'SIM', '-24.102123', '-46.648378', '2024-10-20 17:37:46', '7 de setembro', 'medio', ''),
(23, 'melissa', 'SIM', '-24.109017', '-46.650052', '2024-10-20 18:11:06', 'lado praia', 'leve', ''),
(24, 'melissa', 'SIM', '-24.124959', '-46.685264', '2024-10-20 18:26:00', 'rua um', 'grave', ''),
(25, 'melissa', 'SIM', '-24.106148', '-46.650031', '2024-10-20 18:41:57', 'av xxx', 'medio', ''),
(28, 'melissa', 'SIM', '-24.105487', '-46.650943', '2024-10-20 19:01:07', 'rua minas gerais', 'medio', ''),
(29, 'melissa', 'SIM', '-24.104302', '-46.650133', '2024-10-20 19:01:53', 'av xxx', 'medio', ''),
(30, 'miguel', 'SIM', '-24.105296', '-46.651232', '2024-11-01 15:05:30', 'rua minas gerais', 'medio', ''),
(31, 'miguel', 'SIM', '-24.104806', '-46.64988', '2024-11-01 15:20:25', 'rua minas gerais', 'grave', ''),
(32, 'miguel', 'SIM', '-24.113375', '-46.662867', '2024-11-01 15:50:40', 'perto da rotatoria', 'leve', ''),
(33, 'miguel', 'SIM', '-24.122239', '-46.678493', '2024-11-01 17:13:57', 'etec ', 'medio', ''),
(34, 'miguel', 'SIM', '-24.094866', '-46.625569', '2024-11-01 17:17:03', 'trevo da pedreira', 'grave', ''),
(35, 'miguel', 'SIM', '-24.095212', '-46.621096', '2024-11-01 17:20:21', 'praça do centro', 'grave', ''),
(36, 'miguel', 'SIM', '-24.109208', '-46.650522', '2024-11-01 17:21:36', 'av são paulo', 'leve', ''),
(37, 'miguel', 'SIM', '-24.11964', '-46.668299', '2024-11-01 17:22:14', 'lado praia', 'grave', ''),
(38, 'miguel', 'SIM', '-24.122228', '-46.679499', '2024-11-01 17:22:50', 'perto da etec', 'medio', ''),
(39, 'miguel', 'SIM', '-24.098612', '-46.641154', '2024-11-01 17:23:55', 'vera cruz', 'medio', ''),
(40, 'miguel', 'SIM', '-24.09353', '-46.650089', '2024-11-01 17:24:47', 'vera', 'medio', ''),
(41, 'miguel', 'SIM', '-24.096619', '-46.652884', '2024-11-22 17:34:25', 'av atlantica', 'medio', ''),
(42, 'melissa', 'SIM', '-24.108606', '-46.656675', '2024-11-23 18:50:50', 'rua xx', 'medio', ''),
(49, 'melissa', 'SIM', '-24.107568', '-46.649194', '2024-11-23 19:12:44', 'av xxx', 'medio', ''),
(53, 'melissa', 'SIM', '-24.099557', '-46.64104', '2024-11-23 19:20:37', 'perto da igrejinha', 'medio', ''),
(58, 'melissa', 'SIM', '-24.110473', '-46.659222', '2024-11-24 16:32:41', 'perto do mercadinho', 'grave', ''),
(63, 'vanessa', 'SIM', '-24.10304', '-46.645346', '2024-11-24 17:03:44', 'na frente do laricas', 'medio', ''),
(65, 'daniel cara', 'SIM', '-24.103913', '-46.643236', '2024-11-24 17:14:35', 'na frente do galpão eudorado', 'grave', ''),
(66, 'daniel cara', 'SIM', '-24.10273', '-46.650889', '2024-11-24 23:44:25', 'vila atlantica', 'leve', ''),
(67, 'vanessa', 'SIM', '-24.113544', '-46.663801', '2024-11-25 01:20:02', 'rotatoria', 'medio', 'itapoan');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_sinalizacao`
--
ALTER TABLE `tb_sinalizacao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_sinalizacao`
--
ALTER TABLE `tb_sinalizacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
