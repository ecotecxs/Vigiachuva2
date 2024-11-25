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
-- Estrutura para tabela `tb_comentarios`
--

CREATE TABLE `tb_comentarios` (
  `id_comentario` int(11) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `comentario` text NOT NULL,
  `ponto_referencia` varchar(255) NOT NULL,
  `grau_alagamento` varchar(50) NOT NULL,
  `data_hora` datetime DEFAULT current_timestamp(),
  `id_sinalizacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tb_comentarios`
--

INSERT INTO `tb_comentarios` (`id_comentario`, `nome_usuario`, `comentario`, `ponto_referencia`, `grau_alagamento`, `data_hora`, `id_sinalizacao`) VALUES
(8, 'melissa', 'já esta começando a encher, no fundo da rua principalmente.', '7 de setembro', 'medio', '2024-10-20 17:37:46', 22),
(12, 'miguel', 'começando a alagar', 'perto da rotatoria', 'leve', '2024-11-01 15:50:40', 32),
(13, 'miguel', 'começou a alagar, valeta já esta cheia de água', 'etec ', 'medio', '2024-11-01 17:13:57', 33),
(14, 'miguel', 'muito cheio, carro nenhum passa', 'trevo da pedreira', 'grave', '2024-11-01 17:17:03', 34),
(15, 'miguel', 'muito cheio por aqui', 'praça do centro', 'grave', '2024-11-01 17:20:21', 35),
(20, 'vanessa', 'muito ceios, os motoboys não passam mais', 'na frente do laricas', 'medio', '2024-11-24 17:03:44', 63),
(21, 'daniel cara', 'muito cheio, monteiro esta toda alagada', 'na frente do galpão eudorado', 'grave', '2024-11-24 17:14:35', 65);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_comentarios`
--
ALTER TABLE `tb_comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_sinalizacao` (`id_sinalizacao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_comentarios`
--
ALTER TABLE `tb_comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_comentarios`
--
ALTER TABLE `tb_comentarios`
  ADD CONSTRAINT `tb_comentarios_ibfk_1` FOREIGN KEY (`id_sinalizacao`) REFERENCES `tb_sinalizacao` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
