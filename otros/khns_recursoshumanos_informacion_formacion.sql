-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2023 a las 20:22:01
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
-- Estructura de tabla para la tabla `khns_recursoshumanos_informacion_formacion`
--

CREATE TABLE `khns_recursoshumanos_informacion_formacion` (
  `rowid` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `link` text NOT NULL,
  `link_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `khns_recursoshumanos_informacion_formacion`
--

INSERT INTO `khns_recursoshumanos_informacion_formacion` (`rowid`, `titulo`, `descripcion`, `date_creation`, `tms`, `link`, `link_img`) VALUES
(2, 'Cursos informatica', 'Para aprender programacion', '2023-11-25 17:46:52', '2023-11-25 17:46:52', 'https://www.udemy.com/es/courses/it-and-software/?p=17&utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA-WebIndex_la.ES_cc.ES&utm_term=_._ag_118544153909_._ad_504916203273_._kw__._de_c_._dm__._pl__._ti_dsa-46635476817_._li_1005456_._pd__._&matchtype=&gad_source=1&gclid=EAIaIQobChMIo6m3mNrfggMVqDkGAB3XAAvVEAAYAyAAEgLom_D_BwE', ''),
(3, 'Cursos complutense', 'Cursos de informatica', '2023-11-25 17:48:02', '2023-11-25 17:48:02', 'https://cursosinformatica.ucm.es/', 'https://discoveryformacion.com/wp-content/uploads/2021/01/Curso-Ofimatica.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `khns_recursoshumanos_informacion_formacion`
--
ALTER TABLE `khns_recursoshumanos_informacion_formacion`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_recursoshumanos_informacion_formacion_rowid` (`rowid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `khns_recursoshumanos_informacion_formacion`
--
ALTER TABLE `khns_recursoshumanos_informacion_formacion`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
