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
-- Estrutura para tabela `tb_pontos`
--

CREATE TABLE `tb_pontos` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  `pontos` int(11) DEFAULT 0,
  `data_atualizacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_pontos`
--

INSERT INTO `tb_pontos` (`id`, `nome_usuario`, `pontos`, `data_atualizacao`) VALUES
(1, 'melissa', 18, '2024-11-23 18:48:35'),
(4, 'gabriel cara', 0, '2024-11-24 13:23:18'),
(10, 'vanessa', 20, '2024-11-24 16:03:44'),
(12, 'daniel cara', 10, '2024-11-24 16:14:35');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_pontos`
--
ALTER TABLE `tb_pontos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_usuario` (`nome_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_pontos`
--
ALTER TABLE `tb_pontos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
