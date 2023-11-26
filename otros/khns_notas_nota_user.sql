-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2023 a las 20:21:45
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
-- Estructura de tabla para la tabla `khns_notas_nota_user`
--

CREATE TABLE `khns_notas_nota_user` (
  `rowid` int(11) NOT NULL,
  `idnote` int(11) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `khns_notas_nota_user`
--

INSERT INTO `khns_notas_nota_user` (`rowid`, `idnote`, `iduser`) VALUES
(19, 4, 1),
(20, 4, 9),
(21, 4, 7),
(22, 5, 13),
(23, 5, 2),
(27, 6, 1),
(28, 6, 10),
(29, 6, 12),
(36, 8, 1),
(37, 8, 2),
(38, 8, 3),
(39, 8, 12),
(45, 7, 1),
(46, 7, 7),
(47, 7, 10),
(48, 7, 14),
(49, 9, 14);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `khns_notas_nota_user`
--
ALTER TABLE `khns_notas_nota_user`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_notas_nota_user_rowid` (`rowid`),
  ADD KEY `khns_notas_nota_user_idnote` (`idnote`),
  ADD KEY `khns_notas_nota_user_iduser` (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `khns_notas_nota_user`
--
ALTER TABLE `khns_notas_nota_user`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `khns_notas_nota_user`
--
ALTER TABLE `khns_notas_nota_user`
  ADD CONSTRAINT `khns_notas_nota_user_idnote` FOREIGN KEY (`idnote`) REFERENCES `khns_notas_nota` (`rowid`),
  ADD CONSTRAINT `khns_notas_nota_user_iduser` FOREIGN KEY (`iduser`) REFERENCES `khns_user` (`rowid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
