-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 13-Dez-2016 às 21:28
-- Versão do servidor: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupom`
--

CREATE TABLE `cupom` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `vendedor` int(11) NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cupom`
--

INSERT INTO `cupom` (`id`, `data`, `vendedor`, `valor_total`, `status`) VALUES
(1, '2016-12-09 20:12:24', 1, '0.00', ''),
(2, '2016-12-09 20:13:04', 1, '0.00', ''),
(3, '2016-12-09 20:41:04', 1, '0.00', ''),
(4, '2016-12-09 20:41:05', 1, '0.00', ''),
(5, '2016-12-09 20:54:55', 1, '0.00', ''),
(6, '2016-12-09 21:02:52', 1, '0.00', 'NOVO'),
(7, '2016-12-09 21:08:54', 1, '0.00', 'NOVO'),
(8, '2016-12-12 18:48:00', 1, '0.00', 'NOVO'),
(9, '2016-12-12 18:48:17', 1, '0.00', 'NOVO'),
(10, '2016-12-12 18:50:39', 1, '0.00', 'NOVO'),
(11, '2016-12-12 18:50:41', 1, '0.00', 'NOVO'),
(12, '2016-12-12 18:50:46', 1, '0.00', 'NOVO'),
(13, '2016-12-12 18:52:10', 1, '0.00', 'NOVO'),
(14, '2016-12-12 18:55:45', 1, '0.00', 'NOVO'),
(15, '2016-12-12 19:13:52', 1, '0.00', 'NOVO'),
(16, '2016-12-12 21:54:18', 1, '0.00', 'NOVO'),
(17, '2016-12-13 19:04:19', 1, '0.00', 'NOVO'),
(18, '2016-12-13 19:04:22', 1, '0.00', 'NOVO'),
(19, '2016-12-13 19:07:46', 1, '0.00', 'NOVO'),
(20, '2016-12-13 19:38:16', 1, '0.00', 'CANCELADO'),
(21, '2016-12-13 19:56:06', 1, '225.00', 'FINALIZADO'),
(22, '2016-12-13 20:22:44', 1, '485.00', 'FINALIZADO'),
(23, '2016-12-13 20:23:19', 1, '815.00', 'FINALIZADO'),
(24, '2016-12-13 20:30:36', 1, '0.00', 'CANCELADO'),
(25, '2016-12-13 21:08:28', 1, '0.00', 'NOVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupom_item`
--

CREATE TABLE `cupom_item` (
  `id` int(11) NOT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `item_cod` int(11) NOT NULL,
  `descricao_item` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_unitario` decimal(10,2) NOT NULL,
  `ordem_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `cupom_item`
--

INSERT INTO `cupom_item` (`id`, `genero_id`, `item_cod`, `descricao_item`, `quantidade`, `valor_unitario`, `ordem_item`) VALUES
(1, 15, 3, 'Qual seu numero', 1, '150.00', 1),
(2, 15, 3, 'Qual seu numero', 1, '150.00', 2),
(3, 15, 3, 'Qual seu numero', 1, '150.00', 3),
(4, 15, 3, 'Qual seu numero', 1, '150.00', 4),
(5, 15, 1, 'Um Amor pra Recordar', 1, '35.00', 5),
(6, 15, 1, 'Um Amor pra Recordar', 1, '35.00', 6),
(7, 15, 3, 'Qual seu numero', 1, '150.00', 7),
(8, 15, 3, 'Qual seu numero', 1, '150.00', 8),
(9, 15, 3, 'Qual seu numero', 1, '150.00', 9),
(10, 15, 3, 'Qual seu numero', 1, '150.00', 10),
(11, 15, 3, 'Qual seu numero', 1, '150.00', 11),
(12, 15, 3, 'Qual seu numero', 1, '150.00', 12),
(13, 15, 3, 'Qual seu numero', 1, '150.00', 13),
(14, 15, 3, 'Qual seu numero', 1, '150.00', 14),
(15, 15, 3, 'Qual seu numero', 1, '150.00', 15),
(16, 15, 3, 'Qual seu numero', 1, '150.00', 16),
(17, 15, 3, 'Qual seu numero', 1, '150.00', 17),
(18, 15, 3, 'Qual seu numero', 1, '150.00', 18),
(19, 15, 3, 'Qual seu numero', 1, '150.00', 19),
(20, 15, 3, 'Qual seu numero', 1, '150.00', 20),
(21, 15, 3, 'Qual seu numero', 1, '150.00', 21),
(22, 15, 3, 'Qual seu numero', 1, '150.00', 22),
(23, 15, 3, 'Qual seu numero', 1, '150.00', 23),
(24, 15, 3, 'Qual seu numero', 1, '150.00', 24),
(25, 15, 3, 'Qual seu numero', 1, '150.00', 25),
(26, 15, 3, 'Qual seu numero', 1, '150.00', 26),
(27, 15, 3, 'Qual seu numero', 1, '150.00', 27),
(28, 15, 3, 'Qual seu numero', 1, '150.00', 28),
(29, 15, 3, 'Qual seu numero', 1, '150.00', 29),
(30, 15, 3, 'Qual seu numero', 1, '150.00', 30),
(31, 15, 1, 'Um Amor pra Recordar', 1, '35.00', 31),
(32, 15, 1, 'Um Amor pra Recordar', 1, '35.00', 32),
(33, 15, 1, 'Um Amor pra Recordar', 1, '35.00', 33),
(34, 15, 3, 'Qual seu numero', 1, '150.00', 34),
(35, 15, 1, 'Um Amor pra Recordar', 1, '35.00', 35),
(36, 16, 1, 'Um Amor pra Recordar', 1, '35.00', 1),
(37, 16, 2, 'A cabana', 1, '50.00', 2),
(38, 16, 3, 'Qual seu numero', 1, '150.00', 3),
(39, 16, 4, 'O Exorcista', 1, '20.00', 4),
(40, 16, 5, 'Cidade de Vidro', 1, '25.00', 5),
(41, 16, 6, 'Arte da Guerra', 1, '150.00', 6),
(42, 18, 5, 'Cidade de Vidro', 1, '25.00', 1),
(43, 18, 1, 'Um Amor pra Recordar', 1, '35.00', 2),
(44, 18, 1, 'Um Amor pra Recordar', 1, '35.00', 3),
(45, 18, 6, 'Arte da Guerra', 1, '150.00', 4),
(46, 18, 5, 'Cidade de Vidro', 1, '25.00', 5),
(47, 18, 5, 'Cidade de Vidro', 1, '25.00', 6),
(48, 18, 5, 'Cidade de Vidro', 1, '25.00', 7),
(49, 18, 5, 'Cidade de Vidro', 1, '25.00', 8),
(50, 18, 5, 'Cidade de Vidro', 1, '25.00', 9),
(51, 18, 5, 'Cidade de Vidro', 1, '25.00', 10),
(52, 18, 5, 'Cidade de Vidro', 1, '25.00', 11),
(53, 18, 5, 'Cidade de Vidro', 1, '25.00', 12),
(54, 18, 5, 'Cidade de Vidro', 1, '25.00', 13),
(55, 18, 5, 'Cidade de Vidro', 1, '25.00', 14),
(56, 18, 5, 'Cidade de Vidro', 1, '25.00', 15),
(57, 18, 5, 'Cidade de Vidro', 1, '25.00', 16),
(58, 18, 5, 'Cidade de Vidro', 1, '25.00', 17),
(59, 18, 5, 'Cidade de Vidro', 1, '25.00', 18),
(60, 18, 5, 'Cidade de Vidro', 1, '25.00', 19),
(61, 19, 1, 'Um Amor pra Recordar', 1, '35.00', 1),
(62, 19, 2, 'A cabana', 1, '50.00', 2),
(63, 19, 2, 'A cabana', 1, '50.00', 3),
(64, 19, 5, 'Cidade de Vidro', 1, '25.00', 4),
(65, 19, 5, 'Cidade de Vidro', 1, '25.00', 5),
(66, 20, 1, 'Um Amor pra Recordar', 1, '35.00', 1),
(67, 20, 5, 'Cidade de Vidro', 1, '25.00', 2),
(68, 21, 2, 'A cabana', 1, '50.00', 1),
(69, 21, 6, 'Arte da Guerra', 1, '150.00', 2),
(70, 21, 5, 'Cidade de Vidro', 1, '25.00', 3),
(71, 22, 1, 'Um Amor pra Recordar', 1, '35.00', 1),
(72, 22, 2, 'A cabana', 1, '50.00', 2),
(73, 22, 3, 'Qual seu numero', 1, '150.00', 3),
(74, 22, 4, 'O Exorcista', 1, '20.00', 4),
(75, 22, 4, 'O Exorcista', 1, '20.00', 5),
(76, 22, 5, 'Cidade de Vidro', 1, '25.00', 6),
(77, 22, 6, 'Arte da Guerra', 1, '150.00', 7),
(78, 22, 1, 'Um Amor pra Recordar', 1, '35.00', 8),
(79, 23, 1, 'Um Amor pra Recordar', 1, '35.00', 1),
(80, 23, 2, 'A cabana', 1, '50.00', 2),
(81, 23, 3, 'Qual seu numero', 1, '150.00', 3),
(82, 23, 4, 'O Exorcista', 1, '20.00', 4),
(83, 23, 4, 'O Exorcista', 1, '20.00', 5),
(84, 23, 4, 'O Exorcista', 1, '20.00', 6),
(85, 23, 4, 'O Exorcista', 1, '20.00', 7),
(86, 23, 4, 'O Exorcista', 1, '20.00', 8),
(87, 23, 4, 'O Exorcista', 1, '20.00', 9),
(88, 23, 4, 'O Exorcista', 1, '20.00', 10),
(89, 23, 4, 'O Exorcista', 1, '20.00', 11),
(90, 23, 4, 'O Exorcista', 1, '20.00', 12),
(91, 23, 4, 'O Exorcista', 1, '20.00', 13),
(92, 23, 4, 'O Exorcista', 1, '20.00', 14),
(93, 23, 4, 'O Exorcista', 1, '20.00', 15),
(94, 23, 4, 'O Exorcista', 1, '20.00', 16),
(95, 23, 4, 'O Exorcista', 1, '20.00', 17),
(96, 23, 4, 'O Exorcista', 1, '20.00', 18),
(97, 23, 4, 'O Exorcista', 1, '20.00', 19),
(98, 23, 4, 'O Exorcista', 1, '20.00', 20),
(99, 23, 4, 'O Exorcista', 1, '20.00', 21),
(100, 23, 4, 'O Exorcista', 1, '20.00', 22),
(101, 23, 4, 'O Exorcista', 1, '20.00', 23),
(102, 23, 4, 'O Exorcista', 1, '20.00', 24),
(103, 23, 4, 'O Exorcista', 1, '20.00', 25),
(104, 23, 4, 'O Exorcista', 1, '20.00', 26),
(105, 23, 4, 'O Exorcista', 1, '20.00', 27),
(106, 23, 4, 'O Exorcista', 1, '20.00', 28),
(107, 23, 4, 'O Exorcista', 1, '20.00', 29),
(108, 23, 4, 'O Exorcista', 1, '20.00', 30),
(109, 23, 4, 'O Exorcista', 1, '20.00', 31),
(110, 23, 4, 'O Exorcista', 1, '20.00', 32),
(111, 24, 1, 'Um Amor pra Recordar', 1, '35.00', 1),
(112, 24, 2, 'A cabana', 1, '50.00', 2),
(113, 24, 3, 'Qual seu numero', 1, '150.00', 3),
(114, 24, 9999, 'Estorno do Item: 2', 1, '-50.00', 4),
(115, 24, 1, 'Um Amor pra Recordar', 1, '35.00', 5),
(116, 24, 1, 'Um Amor pra Recordar', 1, '35.00', 6),
(117, 24, 2, 'A cabana', 1, '50.00', 7),
(118, 24, 2, 'A cabana', 1, '50.00', 8),
(119, 24, 2, 'A cabana', 1, '50.00', 9),
(120, 24, 1, 'Um Amor pra Recordar', 1, '35.00', 10),
(121, 24, 2, 'A cabana', 1, '50.00', 11),
(122, 24, 1, 'Um Amor pra Recordar', 1, '35.00', 12),
(123, 25, 1, 'Um Amor pra Recordar', 1, '35.00', 1),
(124, 25, 1, 'Um Amor pra Recordar', 1, '35.00', 2),
(125, 25, 2, 'A cabana', 1, '50.00', 3),
(126, 25, 2, 'A cabana', 1, '50.00', 4),
(127, 25, 2, 'A cabana', 1, '50.00', 5),
(128, 25, 2, 'A cabana', 1, '50.00', 6),
(129, 25, 2, 'A cabana', 1, '50.00', 7),
(130, 25, 2, 'A cabana', 1, '50.00', 8),
(131, 25, 2, 'A cabana', 1, '50.00', 9),
(132, 25, 2, 'A cabana', 1, '50.00', 10),
(133, 25, 5, 'Cidade de Vidro', 1, '25.00', 11),
(134, 25, 1, 'Um Amor pra Recordar', 1, '35.00', 12),
(135, 25, 1, 'Um Amor pra Recordar', 1, '35.00', 13),
(136, 25, 1, 'Um Amor pra Recordar', 1, '35.00', 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id`, `nome`) VALUES
(1, 'Romance'),
(2, 'Ficção'),
(3, 'didáticos‎'),
(4, 'Drama'),
(5, 'Comédia'),
(6, 'Terror'),
(7, 'Fantasia'),
(8, 'teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `genero_id`, `nome`, `quantidade`, `preco`, `tipo`, `imagem`) VALUES
(1, 1, 'Um Amor pra Recordar', 47, '35.00', 'Livro', 'http://lorempixel.com/240/240/'),
(2, 4, 'A cabana', 47, '50.00', 'Livro', 'http://lorempixel.com/240/240'),
(3, 5, 'Qual seu numero', 28, '150.00', 'Livro', 'http://lorempixel.com/240/240'),
(4, 6, 'O Exorcista', 20, '20.00', 'Livro', 'http://lorempixel.com/240/240'),
(5, 2, 'Cidade de Vidro', 28, '25.00', 'Livro', 'http://lorempixel.com/240/240'),
(6, 4, 'Arte da Guerra', 48, '150.00', 'Livro', '../img/image.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cupom`
--
ALTER TABLE `cupom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupom_item`
--
ALTER TABLE `cupom_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_82B6429FBCE7B795` (`genero_id`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3E52435BCE7B795` (`genero_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cupom`
--
ALTER TABLE `cupom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `cupom_item`
--
ALTER TABLE `cupom_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cupom_item`
--
ALTER TABLE `cupom_item`
  ADD CONSTRAINT `FK_82B6429FBCE7B795` FOREIGN KEY (`genero_id`) REFERENCES `cupom` (`id`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `FK_3E52435BCE7B795` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
