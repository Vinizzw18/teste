-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/03/2026 às 20:50
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `monitoramento_producao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `registros_producao`
--

CREATE TABLE `registros_producao` (
  `id` int(11) NOT NULL,
  `maquina_id` varchar(50) NOT NULL,
  `pecas_boas` int(11) NOT NULL DEFAULT 0,
  `pecas_defeituosas` int(11) NOT NULL DEFAULT 0,
  `status` enum('Operando','Parada') NOT NULL DEFAULT 'Parada',
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `registros_producao`
--

INSERT INTO `registros_producao` (`id`, `maquina_id`, `pecas_boas`, `pecas_defeituosas`, `status`, `data`) VALUES
(1, 'CNC-01', 150, 2, 'Operando', '2026-03-30 08:00:00'),
(2, 'INJ-02', 300, 5, 'Operando', '2026-03-30 08:00:00'),
(3, 'CNC-01', 145, 1, 'Operando', '2026-03-30 09:00:00'),
(4, 'INJ-02', 0, 0, 'Parada', '2026-03-30 09:00:00'),
(5, 'ROBO-03', 50, 0, 'Operando', '2026-03-30 09:00:00'),
(6, 'CNC-01', 152, 3, 'Operando', '2026-03-30 10:00:00'),
(7, 'INJ-02', 280, 10, 'Operando', '2026-03-30 10:00:00'),
(8, 'ROBO-03', 55, 1, 'Operando', '2026-03-30 10:00:00'),
(9, 'CNC-01', 10, 0, 'Parada', '2026-03-30 11:00:00'),
(10, 'ROBO-03', 52, 2, 'Operando', '2026-03-30 11:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `registros_producao`
--
ALTER TABLE `registros_producao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `registros_producao`
--
ALTER TABLE `registros_producao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
