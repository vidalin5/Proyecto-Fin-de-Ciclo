-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2023 a las 20:21:40
-- Versión del servidor: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbs4297935`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `khns_notas_nota_comment`
--

CREATE TABLE `khns_notas_nota_comment` (
  `rowid` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fk_note` int(11) NOT NULL,
  `fk_user_creat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `khns_notas_nota_comment`
--

INSERT INTO `khns_notas_nota_comment` (`rowid`, `label`, `date_creation`, `tms`, `fk_note`, `fk_user_creat`) VALUES
(2, 'Terminar pronto', '2023-11-26 17:41:51', '2023-11-26 17:41:51', 9, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `khns_notas_nota_comment`
--
ALTER TABLE `khns_notas_nota_comment`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_notas_nota_comment_rowid` (`rowid`),
  ADD KEY `khns_notas_nota_comment_fk_note` (`fk_note`),
  ADD KEY `khns_notas_nota_comment_fk_user_creat` (`fk_user_creat`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `khns_notas_nota_comment`
--
ALTER TABLE `khns_notas_nota_comment`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `khns_notas_nota_comment`
--
ALTER TABLE `khns_notas_nota_comment`
  ADD CONSTRAINT `khns_notas_nota_comment_fk_note` FOREIGN KEY (`fk_note`) REFERENCES `khns_notas_nota` (`rowid`),
  ADD CONSTRAINT `khns_notas_nota_comment_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `khns_user` (`rowid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
