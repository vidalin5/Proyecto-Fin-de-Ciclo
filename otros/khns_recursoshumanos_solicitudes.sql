-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2023 a las 20:22:06
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
-- Estructura de tabla para la tabla `khns_recursoshumanos_solicitudes`
--

CREATE TABLE `khns_recursoshumanos_solicitudes` (
  `rowid` int(11) NOT NULL,
  `fk_solicitante` int(11) DEFAULT NULL,
  `fk_solicitado` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `urgencia` varchar(20) NOT NULL,
  `vista` int(11) NOT NULL,
  `cerrada` int(11) NOT NULL,
  `fecha_cerrada` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `khns_recursoshumanos_solicitudes`
--

INSERT INTO `khns_recursoshumanos_solicitudes` (`rowid`, `fk_solicitante`, `fk_solicitado`, `tipo`, `descripcion`, `urgencia`, `vista`, `cerrada`, `fecha_cerrada`) VALUES
(1, 1, 14, 'Documento', 'Entregar documentación del proyecto', 'Urgente', 1, 0, NULL),
(2, 1, 2, 'Documento', 'Hay que rellenar los partes', 'Urgente', 0, 1, '2023-11-25 18:21:54'),
(3, 1, 14, 'Tarea', 'Terminar cuanto antes la tarea 2', 'Urgente', 0, 0, NULL),
(4, 1, 14, 'Otro', 'Rellenar las encuestas', 'Sin prisa', 0, 0, NULL),
(5, 15, 14, 'Documento', 'Entregar Documento 2910', 'Urgente', 0, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `khns_recursoshumanos_solicitudes`
--
ALTER TABLE `khns_recursoshumanos_solicitudes`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_recursoshumanos_solicitudes_rowid` (`rowid`),
  ADD KEY `khns_recursoshumanos_solicitudes_fk_solicitante` (`fk_solicitante`),
  ADD KEY `khns_recursoshumanos_solicitudes_fk_solicitado` (`fk_solicitado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `khns_recursoshumanos_solicitudes`
--
ALTER TABLE `khns_recursoshumanos_solicitudes`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `khns_recursoshumanos_solicitudes`
--
ALTER TABLE `khns_recursoshumanos_solicitudes`
  ADD CONSTRAINT `khns_recursoshumanos_solicitudes_fk_solicitado` FOREIGN KEY (`fk_solicitado`) REFERENCES `khns_user` (`rowid`),
  ADD CONSTRAINT `khns_recursoshumanos_solicitudes_fk_solicitante` FOREIGN KEY (`fk_solicitante`) REFERENCES `khns_user` (`rowid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
