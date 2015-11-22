-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2015 a las 09:13:35
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `digiarch`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carpetas`
--

CREATE TABLE IF NOT EXISTS `carpetas` (
`idCarpeta` int(11) NOT NULL,
  `Carpeta` varchar(500) DEFAULT NULL,
  `IdProyecto` int(11) DEFAULT NULL,
  `Observacion` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carpetas`
--

INSERT INTO `carpetas` (`idCarpeta`, `Carpeta`, `IdProyecto`, `Observacion`) VALUES
(1, '123', 7, 'nulo'),
(2, 'viajes', 8, 'nulo'),
(3, 'viajes', 8, 'nulo'),
(10, 'viaje_cuzco', 12, 'nulo'),
(11, 'enero', 12, 'nulo'),
(12, 'febrero', 12, 'nulo'),
(13, 'cumple', 15, 'nulo'),
(14, 'Jefe', 15, 'nulo'),
(15, 'Amigo', 15, 'nulo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE IF NOT EXISTS `documentos` (
`iddocumento` int(11) NOT NULL,
  `ruta` varchar(250) DEFAULT NULL,
  `idCarpeta` int(11) DEFAULT NULL,
  `idproyecto` int(11) DEFAULT NULL,
  `nombreArchivo` varchar(250) DEFAULT NULL,
  `peso` varchar(100) DEFAULT NULL,
  `formato` varchar(100) DEFAULT NULL,
  `fechacreacion` datetime DEFAULT NULL,
  `fecahModificacion` datetime DEFAULT NULL,
  `idPersonal` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE IF NOT EXISTS `proyecto` (
`idProyecto` int(11) NOT NULL,
  `CarpetaProyecto` varchar(500) DEFAULT NULL,
  `nombre_proyecto` varchar(255) NOT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `CarpetaProyecto`, `nombre_proyecto`, `fecha`) VALUES
(12, 'D:\\Proyectos', 'proyecto_2010', '2015-11-21 23:35:26'),
(15, 'D:\\Proyectos', 'proyecto_2011', '2015-11-21 23:39:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carpetas`
--
ALTER TABLE `carpetas`
 ADD PRIMARY KEY (`idCarpeta`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
 ADD PRIMARY KEY (`iddocumento`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
 ADD PRIMARY KEY (`idProyecto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carpetas`
--
ALTER TABLE `carpetas`
MODIFY `idCarpeta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
MODIFY `iddocumento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
