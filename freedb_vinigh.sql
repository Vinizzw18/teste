-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: sql.freedb.tech
-- Tempo de geração: 02/04/2026 às 19:01
-- Versão do servidor: 8.0.45-0ubuntu0.22.04.1
-- Versão do PHP: 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `freedb_vinigh`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nome` varchar(150) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `datanasc` date NOT NULL,
  `genero` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `celular`, `datanasc`, `genero`) VALUES
(2, 'Ida', '44998547521', '2026-03-23', 'M');

-- --------------------------------------------------------

--
-- Estrutura para tabela `registros_producao`
--

CREATE TABLE `registros_producao` (
  `id` int NOT NULL,
  `maquina_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pecas_boas` int NOT NULL DEFAULT '0',
  `pecas_defeituosas` int NOT NULL DEFAULT '0',
  `status` enum('Operando','Parada') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Parada',
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `registros_producao`
--

INSERT INTO `registros_producao` (`id`, `maquina_id`, `pecas_boas`, `pecas_defeituosas`, `status`, `data`, `data_registro`) VALUES
(1, 'CNC-01', 150, 2, 'Operando', '2026-03-30 08:00:00', '2026-03-30 20:08:36'),
(2, 'INJ-02', 300, 5, 'Operando', '2026-03-30 08:00:00', '2026-03-30 20:08:36'),
(3, 'CNC-01', 145, 1, 'Operando', '2026-03-30 09:00:00', '2026-03-30 20:08:36'),
(5, 'ROBO-03', 50, 0, 'Operando', '2026-03-30 09:00:00', '2026-03-30 20:08:36'),
(6, 'CNC-01', 152, 3, 'Operando', '2026-03-30 10:00:00', '2026-03-30 20:08:36'),
(7, 'INJ-02', 280, 10, 'Operando', '2026-03-30 10:00:00', '2026-03-30 20:08:36'),
(8, 'ROBO-03', 55, 1, 'Operando', '2026-03-30 10:00:00', '2026-03-30 20:08:36'),
(9, 'CNC-01', 10, 0, 'Parada', '2026-03-30 11:00:00', '2026-03-30 20:08:36'),
(10, 'ROBO-03', 52, 2, 'Operando', '2026-03-30 11:00:00', '2026-03-30 20:08:36'),
(11, 'GNAC-22', 145, 7, 'Operando', '2026-03-30 19:19:04', '2026-03-30 20:08:36'),
(13, 'CNC-01', 300, 4, 'Parada', '2026-04-02 00:00:00', '2026-04-02 17:24:54'),
(15, 'INJ-02', 600, 10, 'Operando', '2026-04-02 00:00:00', '2026-04-02 17:51:40'),
(16, 'ROBO-12', 321, 5, 'Operando', '2026-04-02 00:00:00', '2026-04-02 17:52:56'),
(17, 'VTN-81', 3204, 65, 'Operando', '2026-04-02 18:15:09', '2026-04-02 18:15:09'),
(18, 'CNC-12', 11, 11, 'Parada', '2026-04-02 18:16:31', '2026-04-02 18:16:31'),
(19, 'NCA-12', 643, 21, 'Parada', '2026-04-02 00:00:00', '2026-04-02 18:20:04'),
(20, 'PIE-09', 0, 50, 'Parada', '2026-04-02 00:00:00', '2026-04-02 18:20:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('gerente','funcionario') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'gerente', '1', 'gerente'),
(2, 'funcionario', '1', 'funcionario');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `registros_producao`
--
ALTER TABLE `registros_producao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `registros_producao`
--
ALTER TABLE `registros_producao`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
