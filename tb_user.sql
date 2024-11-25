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
-- Estrutura para tabela `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `foto_perfil` varchar(300) DEFAULT NULL,
  `denuncias` int(11) DEFAULT 0,
  `status` enum('ativo','banido') DEFAULT 'ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nm_user`, `email`, `senha`, `dt_nascimento`, `foto_perfil`, `denuncias`, `status`) VALUES
(3, 'miguel', 'miguel@gmail.com', '$2y$10$HigIYJukPi0zzlf2NDY1FO9f35QX1txsOVhVpzI544AkPyQMb/vKW', '2007-02-27', 'img/coala.png', 0, 'ativo'),
(4, 'daniel cara', 'daniel@gmail.com', '$2y$10$XsRAkTQVkrkqE5RTkGKc9encsbQwzmD0a321YZ4QIggVeGX3uJlWe', '2014-11-26', 'img/moldura.png', 0, 'ativo'),
(5, 'gabriel cara', 'gabriel@gmail.com', '$2y$10$95Lydj49.2zYyLFOnFOqKeFiMUJjujlY5niavUGcD/1hij6.bMGW6', '2014-11-26', 'img/moldura.png', 0, 'ativo'),
(6, 'eduardo', 'edusambaqui@hotmai.com', '$2y$10$zdiPQ/WidiPnzBEv45fC7egs3gNsH1DPtoEA/bR9eMVNrIcM4qfqS', '1976-04-07', 'img/pascoa.png', 0, 'ativo'),
(7, 'vanessa', 'vanessa@gmail.com', '$2y$10$gundeGngAZrinxpQEmEZD.b247PiIX1pXvJvp4KzKKGQAy.h03Xuy', '1976-03-15', 'img/moldura.png', 0, 'ativo'),
(8, 'odete', 'odete@gmail.com', '$2y$10$Q2rr2W4p3bv7PTfAizWIIeZOvaE0tYuBVKUQyZImpBLQnJ/0cAO5K', '0000-00-00', NULL, 0, 'ativo'),
(9, 'toninho', 'toninho@gmail.com', '$2y$10$tu6pzpTFYVYvSENUjaqoUujOVwvuFG1zTaYBsO//M3AGfVznn5BYe', '0000-00-00', NULL, 0, 'ativo'),
(10, 'melissa', 'melissa@gmail.com', '$2y$10$acuH9Wd1VyNJTG1CmvX8QOoHicVZLXX4WUOt2zGQD4O5AMyCJxkJS', '2006-09-26', 'img/cachorro.png', 0, 'ativo'),
(11, 'julia', 'julia@gmail.com', '$2y$10$HymvAN9IAs48HTynT1T.a.tKX9IhAtXhykbHNqp/hWEDChOI9enNy', '2006-10-14', NULL, 0, 'ativo'),
(12, 'gabriela', 'gabriela@gmail.com', '$2y$10$feSkQLU.MwKwycHX0Ht69uTR85Xrj.8Vl4DdYRNOZ3ERJZLAj3ZNa', '2007-01-08', NULL, 0, 'ativo'),
(13, 'jonatan', 'jonatan@gmail.com', '$2y$10$LKQc2LmrCD2xJAKAv45GTuPfzjYCvWg3YoyX0my54zpISAj4E1mVm', '2005-05-15', NULL, 0, 'ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
