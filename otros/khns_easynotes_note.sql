-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2023 a las 20:21:49
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
-- Estructura de tabla para la tabla `khns_easynotes_note`
--

CREATE TABLE `khns_easynotes_note` (
  `rowid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` int(11) NOT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fk_user_creat` int(11) NOT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `fk_project` int(11) NOT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `khns_easynotes_note`
--
ALTER TABLE `khns_easynotes_note`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_easynotes_note_rowid` (`rowid`),
  ADD KEY `khns_easynotes_note_category` (`category`),
  ADD KEY `khns_easynotes_note_fk_user_creat` (`fk_user_creat`),
  ADD KEY `khns_easynotes_note_fk_user_modif` (`fk_user_modif`),
  ADD KEY `khns_easynotes_note_fk_user` (`fk_user`),
  ADD KEY `khns_easynotes_note_fk_project` (`fk_project`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `khns_easynotes_note`
--
ALTER TABLE `khns_easynotes_note`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `khns_easynotes_note`
--
ALTER TABLE `khns_easynotes_note`
  ADD CONSTRAINT `khns_easynotes_note_category` FOREIGN KEY (`category`) REFERENCES `khns_easynotes_note_categories` (`rowid`),
  ADD CONSTRAINT `khns_easynotes_note_fk_project` FOREIGN KEY (`fk_project`) REFERENCES `khns_projet` (`rowid`),
  ADD CONSTRAINT `khns_easynotes_note_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `khns_user` (`rowid`),
  ADD CONSTRAINT `khns_easynotes_note_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `khns_user` (`rowid`),
  ADD CONSTRAINT `khns_easynotes_note_fk_user_modif` FOREIGN KEY (`fk_user_modif`) REFERENCES `khns_user` (`rowid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
