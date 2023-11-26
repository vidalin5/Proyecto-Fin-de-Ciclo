-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2023 a las 20:22:03
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
-- Estructura de tabla para la tabla `khns_recursoshumanos_informacion_noticias`
--

CREATE TABLE `khns_recursoshumanos_informacion_noticias` (
  `rowid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `link` text NOT NULL,
  `link_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `khns_recursoshumanos_informacion_noticias`
--

INSERT INTO `khns_recursoshumanos_informacion_noticias` (`rowid`, `titulo`, `descripcion`, `date_creation`, `tms`, `link`, `link_img`) VALUES
(1, 'Guerra Israel', 'Nueva información sobre la guerra', '2023-11-25 17:24:28', '2023-11-25 17:24:28', 'https://elpais.com/internacional/2023-11-25/guerra-entre-israel-y-gaza-en-directo.html', 'https://imagenes.elpais.com/resizer/M09yQGhPsIjLwaUa004PlH8M4L8=/414x233/cloudfront-eu-central-1.images.arcpublishing.com/prisa/VT22JQPFG5AV3DPHBUHN5MHHZM.jpg'),
(2, 'Guerra Rusia', 'Informacion', '2023-11-25 17:43:08', '2023-11-25 17:43:08', 'https://elpais.com/internacional/2023-11-25/rusia-lanza-contra-kiev-la-mayor-oleada-de-drones-bomba-de-toda-la-guerra.html', ''),
(3, 'Cine', 'Informacion de cine', '2023-11-25 17:43:55', '2023-11-25 17:43:55', 'https://elpais.com/smoda/moda/2023-11-25/de-las-faldas-de-braveheart-a-los-shorts-de-dirty-dancing-los-errores-de-vestuario-mas-llamativos-del-cine.html', ''),
(4, 'Fernando Alonso', 'Formula 1', '2023-11-25 17:44:59', '2023-11-25 17:44:59', 'https://elpais.com/deportes/formula-1/2023-11-25/fernando-alonso-principio-y-fin-de-aston-martin-en-la-formula-1.html', 'https://imagenes.elpais.com/resizer/iqf3DdX4jpqZMumuavYhPNllywc=/414x311/filters:focal(1725x650:1735x660)/cloudfront-eu-central-1.images.arcpublishing.com/prisa/F7QQCIYYMTYHB7ISANDNCQ2ZNI.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `khns_recursoshumanos_informacion_noticias`
--
ALTER TABLE `khns_recursoshumanos_informacion_noticias`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_recursoshumanos_informacion_noticias_rowid` (`rowid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `khns_recursoshumanos_informacion_noticias`
--
ALTER TABLE `khns_recursoshumanos_informacion_noticias`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
