-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2023 a las 20:21:29
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
-- Estructura de tabla para la tabla `khns_notas_nota`
--

CREATE TABLE `khns_notas_nota` (
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
-- Volcado de datos para la tabla `khns_notas_nota`
--

INSERT INTO `khns_notas_nota` (`rowid`, `label`, `description`, `category`, `date_creation`, `tms`, `fk_user_creat`, `fk_user_modif`, `note`, `fk_user`, `priority`, `fk_project`, `deleted`) VALUES
(4, 'Hacer Diagrama', NULL, 5, '2023-11-25 11:28:10', '2023-11-25 11:28:10', 1, NULL, 'Desarrollar Diagrama de la Web', NULL, 1, 8, NULL),
(5, 'Implementar Módulos', NULL, 1, '2023-11-25 11:29:12', '2023-11-25 11:29:12', 1, NULL, 'Terminar de implementarlos', NULL, 1, 7, NULL),
(6, 'Diseñar Web', NULL, 5, '2023-11-25 11:29:44', '2023-11-25 11:29:56', 1, NULL, '', NULL, 3, 3, NULL),
(7, 'Plugins Nuevos', NULL, 3, '2023-11-25 11:31:12', '2023-11-26 19:24:02', 1, NULL, 'Comprarlos Ya', NULL, 2, 2, NULL),
(8, 'Hablar con Cliente', NULL, 2, '2023-11-25 11:31:45', '2023-11-25 11:31:45', 1, NULL, 'Para concretar puntos', NULL, 1, 3, NULL),
(9, 'Prueba creación de tarea', NULL, 1, '2023-11-25 13:49:04', '2023-11-25 14:00:12', 1, NULL, 'Para probar la creación de tarea dentro del proyecto elegido', NULL, 1, 8, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `khns_notas_nota`
--
ALTER TABLE `khns_notas_nota`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_notas_nota_rowid` (`rowid`),
  ADD KEY `khns_notas_nota_category` (`category`),
  ADD KEY `khns_notas_nota_fk_user_creat` (`fk_user_creat`),
  ADD KEY `khns_notas_nota_fk_user_modif` (`fk_user_modif`),
  ADD KEY `khns_notas_nota_fk_user` (`fk_user`),
  ADD KEY `khns_notas_nota_fk_project` (`fk_project`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `khns_notas_nota`
--
ALTER TABLE `khns_notas_nota`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `khns_notas_nota`
--
ALTER TABLE `khns_notas_nota`
  ADD CONSTRAINT `khns_notas_nota_category` FOREIGN KEY (`category`) REFERENCES `khns_notas_nota_categories` (`rowid`),
  ADD CONSTRAINT `khns_notas_nota_fk_project` FOREIGN KEY (`fk_project`) REFERENCES `khns_projet` (`rowid`),
  ADD CONSTRAINT `khns_notas_nota_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `khns_user` (`rowid`),
  ADD CONSTRAINT `khns_notas_nota_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `khns_user` (`rowid`),
  ADD CONSTRAINT `khns_notas_nota_fk_user_modif` FOREIGN KEY (`fk_user_modif`) REFERENCES `khns_user` (`rowid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
