-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db_autocall
-- Tempo de geração: 28/11/2021 às 22:24
-- Versão do servidor: 10.6.4-MariaDB-1:10.6.4+maria~focal
-- Versão do PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste`
--
CREATE DATABASE IF NOT EXISTS `teste` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `teste`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codigo_carro` int(11) NOT NULL,
  `nome_carro` varchar(255) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codigo_carro`, `nome_carro`, `tipo`) VALUES
(1, 'Ferrari', 'Esportivo'),
(2, 'Ford Ka Sedan', 'Sedan'),
(3, 'Kombi', 'Comercial');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `codigo_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(255) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`codigo_fornecedor`, `nome_fornecedor`, `cidade`) VALUES
(1, 'Superpeças', 'Vitória'),
(2, 'Peçauto', 'Vitória'),
(3, 'Minha AutoPeça', 'Vitória'),
(4, 'MercadoCar', 'Rio de Janeiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecimento`
--

CREATE TABLE `fornecimento` (
  `codigo_fornecedor` int(11) NOT NULL,
  `codigo_peca` int(11) NOT NULL,
  `codigo_carro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `fornecimento`
--

INSERT INTO `fornecimento` (`codigo_fornecedor`, `codigo_peca`, `codigo_carro`) VALUES
(1, 3, 3),
(2, 1, 3),
(4, 2, 2),
(2, 1, 2),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `peca`
--

CREATE TABLE `peca` (
  `codigo_peca` int(11) NOT NULL,
  `nome_peca` varchar(255) NOT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `peca`
--

INSERT INTO `peca` (`codigo_peca`, `nome_peca`, `preco`) VALUES
(1, 'Motor', '1500.00'),
(2, 'Parachoque', '1300.00'),
(3, 'Motor', '1000.00'),
(4, 'Motor', '2500.00'),
(5, 'Motor', '92100.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codigo_carro`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`codigo_fornecedor`);

--
-- Índices de tabela `fornecimento`
--
ALTER TABLE `fornecimento`
  ADD KEY `codigo_fornecedor` (`codigo_fornecedor`),
  ADD KEY `codigo_peca` (`codigo_peca`),
  ADD KEY `codigo_carro` (`codigo_carro`);

--
-- Índices de tabela `peca`
--
ALTER TABLE `peca`
  ADD PRIMARY KEY (`codigo_peca`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codigo_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `codigo_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `peca`
--
ALTER TABLE `peca`
  MODIFY `codigo_peca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `fornecimento`
--
ALTER TABLE `fornecimento`
  ADD CONSTRAINT `fornecimento_ibfk_1` FOREIGN KEY (`codigo_fornecedor`) REFERENCES `fornecedor` (`codigo_fornecedor`),
  ADD CONSTRAINT `fornecimento_ibfk_2` FOREIGN KEY (`codigo_peca`) REFERENCES `peca` (`codigo_peca`),
  ADD CONSTRAINT `fornecimento_ibfk_3` FOREIGN KEY (`codigo_carro`) REFERENCES `carro` (`codigo_carro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
