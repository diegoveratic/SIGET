-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 10.1.2.122
-- Tiempo de generación: 14-11-2017 a las 18:11:12
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u908845748_siget`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn`
--

CREATE TABLE `alumn` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `dni` varchar(30) NOT NULL,
  `nacimientofecha` varchar(80) NOT NULL,
  `nacimientolugar` varchar(80) NOT NULL,
  `cp` int(8) NOT NULL,
  `legajo` int(10) NOT NULL,
  `edad` int(2) NOT NULL,
  `nacionalidad` varchar(40) NOT NULL,
  `c1_fullname` varchar(100) DEFAULT NULL,
  `c1_address` varchar(100) DEFAULT NULL,
  `c1_phone` varchar(100) DEFAULT NULL,
  `c1_note` varchar(100) DEFAULT NULL,
  `c2_fullname` varchar(100) DEFAULT NULL,
  `c2_address` varchar(100) DEFAULT NULL,
  `c2_phone` varchar(100) DEFAULT NULL,
  `c2_note` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumn`
--

INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `sexo`, `dni`, `nacimientofecha`, `nacimientolugar`, `cp`, `legajo`, `edad`, `nacionalidad`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `c2_fullname`, `c2_address`, `c2_phone`, `c2_note`, `is_active`, `created_at`, `user_id`) VALUES
(1, '', 'Nicolas', 'Arroyo', 'nicolasarroyo74@gmail.com', '127', '12345', '', '', '', '', 0, 0, 0, '', 'Nicolas Arroyo', '127', '12345', 'Programador', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:06:59', 1),
(2, '', 'Marcos', 'Bogadito', 'marcos@gmail', '136', '1234', '', '', '', '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:39:14', 1),
(3, '', 'Santiago', 'Marcuchi', 'santiago@gmail', 'la loma', '1337', '', '', '', '', 0, 0, 0, '', 'santiago', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 07:12:33', 1),
(4, '', 'MArcos', 'Bogadito', '2323', '23', '222', '', '', '', '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 03:12:18', 2),
(5, '', 'Arroyo', 'Nicolas', 'nicolasarroyo74@gmail.com', '127', '123', '', '', '', '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:26:13', 1),
(6, '', 'Nicolas', 'Arroyo', 'nico@email', '127', '1234', 'Masculino', '4122', '10 de diciembre', 'Quilmes', 1884, 12394, 18, 'Argentina', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 00:52:56', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn_team`
--

CREATE TABLE `alumn_team` (
  `id` int(11) NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumn_team`
--

INSERT INTO `alumn_team` (`id`, `alumn_id`, `team_id`) VALUES
(2, 2, 2),
(3, 3, 1),
(4, 4, 3),
(5, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assistance`
--

CREATE TABLE `assistance` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `assistance`
--

INSERT INTO `assistance` (`id`, `kind_id`, `date_at`, `alumn_id`, `team_id`) VALUES
(1, 1, '2010-05-06', 1, 1),
(2, 4, '2010-05-06', 2, 2),
(3, 3, '2010-05-06', 3, 1),
(4, 1, '2010-05-07', 1, 1),
(5, 2, '2010-05-07', 3, 1),
(7, 1, '2010-05-06', 6, 1),
(8, 1, '2017-09-12', 3, 1),
(9, 2, '2017-09-12', 6, 1),
(10, 1, '2017-09-12', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `behavior`
--

CREATE TABLE `behavior` (
  `id` int(11) NOT NULL,
  `kind_id` int(11) DEFAULT NULL,
  `date_at` date NOT NULL,
  `alumn_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `behavior`
--

INSERT INTO `behavior` (`id`, `kind_id`, `date_at`, `alumn_id`, `team_id`) VALUES
(1, 2, '2010-05-06', 1, 1),
(2, 3, '2010-05-06', 3, 1),
(3, 1, '2017-09-12', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `trimestre` varchar(300) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `block`
--

INSERT INTO `block` (`id`, `name`, `trimestre`, `team_id`) VALUES
(1, 'Ciencias Naturales', '1ÂºTrimestre', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calification`
--

CREATE TABLE `calification` (
  `id` int(11) NOT NULL,
  `val` double DEFAULT NULL,
  `alumn_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calification`
--

INSERT INTO `calification` (`id`, `val`, `alumn_id`, `block_id`) VALUES
(1, 10, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equivalencia`
--

CREATE TABLE `equivalencia` (
  `id` int(11) NOT NULL,
  `dia` int(2) NOT NULL,
  `mes` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `turno` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `informacion` varchar(500) COLLATE latin1_spanish_ci NOT NULL,
  `taller` varchar(200) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `equivalencia`
--

INSERT INTO `equivalencia` (`id`, `dia`, `mes`, `turno`, `informacion`, `taller`) VALUES
(10, 21, 'Abril', 'Mañana', 'Entrega de la Actividad 1', 'Taller 1'),
(11, 22, 'Abril', 'Tarde', 'Entrega de la Actividad 1', 'Taller 1'),
(12, 11, 'Mayo', 'Mañana', 'Evaluacion de la Actividad 1-Entrega de la Actividad 2', 'Taller 1'),
(13, 12, 'Mayo', 'Tarde', 'Evaluacion de la Actividad 1-Entrega de la Actividad 2', 'Taller 1'),
(14, 15, 'Junio', 'Mañana', 'Evaluacion de la Actividad 2-Entrega de la Actividad 3', 'Taller 1'),
(15, 16, 'Junio', 'Tarde', 'Evaluacion de la Actividad 2-Entrega de la Actividad 3', 'Taller 1'),
(16, 6, 'Julio', 'Mañana', 'Evaluacion de la Actividad 3-Culminacion del CIRCUITO DIFERENCIAL', 'Taller 1'),
(17, 7, 'Julio', 'Tarde', 'Evaluacion de la Actividad 3-Culminacion del CIRCUITO DIFERENCIAL', 'Taller 1'),
(18, 17, 'Agosto', 'Mañana', 'Entrega de la Actividad 1', 'Taller 2'),
(19, 18, 'Agosto', 'Tarde', 'Entrega de la Actividad 1', 'Taller 2'),
(20, 14, 'Septiembre', 'Mañana', 'Evaluacion de la Actividad 1-Entrega de la Actividad 2', 'Taller 2'),
(21, 15, 'Septiembre', 'Tarde', 'Evaluacion de la Actividad 1-Entrega de la Actividad 2', 'Taller 2'),
(22, 28, 'Septiembre', 'Mañana', 'Evaluacion de la Actividad 2-Entrega de la Actividad 3', 'Taller 2'),
(23, 29, 'Septiembre', 'Tarde', 'Evaluacion de la Actividad 2-Entrega de la Actividad 3', 'Taller 2'),
(24, 12, 'Octubre', 'Mañana', 'Evaluacion de la Actividad 3-Culminacion del CIRCUITO DIFERENCIAL', 'Taller 2'),
(25, 13, 'Octubre', 'Tarde', 'Evaluacion de la Actividad 3-Culminacion del CIRCUITO DIFERENCIAL', 'Taller 2'),
(26, 17, 'Agosto', 'Mañana', 'Entrega de la Actividad 1', 'Taller 3'),
(27, 18, 'Agosto', 'Tarde', 'Entrega de la Actividad 1', 'Taller 3'),
(28, 14, 'Septiembre', 'Mañana', 'Evaluacion de la Actividad 1-Entrega de la Actividad 2', 'Taller 3'),
(29, 15, 'Septiembre', 'Tarde', 'Evaluacion de la Actividad 1-Entrega de la Actividad 2', 'Taller 3'),
(30, 28, 'Septiembre', 'Mañana', 'Evaluacion de la Actividad 2-Entrega de la Actividad 3', 'Taller 3'),
(31, 29, 'Septiembre', 'Tarde', 'Evaluacion de la Actividad 2-Entrega de la Actividad 3', 'Taller 3'),
(32, 12, 'Octubre', 'Mañana', 'Evaluacion de la Actividad 3-Culminacion del CIRCUITO DIFERENCIAL', 'Taller 3'),
(33, 13, 'Octubre', 'Tarde', 'Evaluacion de la Actividad 3-Culminacion del CIRCUITO DIFERENCIAL', 'Taller 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `matricula` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `telefono` int(20) NOT NULL,
  `telefono1` int(20) NOT NULL,
  `domicilio` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `lugar` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `localidad` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `codigop` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `nombre`, `apellido`, `sexo`, `matricula`, `telefono`, `telefono1`, `domicilio`, `fecha`, `lugar`, `localidad`, `codigop`) VALUES
(1, 'Marcos', 'Bogado', 'Masculino', '41328956', 20895134, 1120895164, '136', '10', 'Berazategui', 'Berazategui', '1884');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_mat` int(3) NOT NULL,
  `nombre_mat` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `ciclo_mat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `año_mat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hs_mat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `modalidad_mat` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_mat`, `nombre_mat`, `ciclo_mat`, `año_mat`, `hs_mat`, `modalidad_mat`) VALUES
(1, 'Ciencias Naturales', 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(2, 'Ciencias Sociales', 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(3, 'Educación Artística', 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(4, 'Educación Física', 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(5, 'Ingles', 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(6, 'Matemática', 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(7, 'Prácticas del Lenguaje', 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(8, 'Construcción Ciudadana', 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(9, 'Procedimientos Técnicos', 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(10, 'Lenguajes Tecnológicos ', 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(11, 'Sistemas Tecnológicos ', 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(12, 'Biología', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(13, 'Construcción de Ciudadanía ', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(14, 'Educación Artística', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(15, 'Educación Física ', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(16, 'Físico Química', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(17, 'Geografía', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(18, 'Historia', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(19, 'Inglés', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(20, 'Matemática', 'Ciclo basico', '2do año', '4hs', 'Formacion General'),
(21, 'Prácticas del Lenguaje', 'Ciclo basico', '2do año', '4hs', 'Formacion General'),
(22, 'Procedimientos Técnicos', 'Ciclo basico', '2do año', '4hs', 'Formacion General'),
(23, 'Lenguajes Tecnológicos ', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(24, 'Sistemas Tecnológicos', 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(25, 'Biología', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(26, 'Construcción de Ciudadanía', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(27, 'Educación Artística', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(28, 'Educación Física', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(29, 'Físico Química', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(30, 'Geografía', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(31, 'Historia', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(32, 'Inglés', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(33, 'Matemática', 'Ciclo basico', '3er año', '4hs', 'Formacion General'),
(34, 'Prácticas del Lenguaje', 'Ciclo basico', '3er año', '4hs', 'Formacion General'),
(35, 'Procedimientos Técnicos', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(36, 'Lenguajes Tecnológicos ', 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(37, 'Sistemas Tecnológicos', 'Ciclo basico', '3er año', '4hs', 'Formacion General'),
(38, 'Literatura', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(39, 'Inglés', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(40, 'Educación Física', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(41, 'Salud y Adolescencia', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(42, 'Historia', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(43, 'Geografía', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(44, 'Matemática Ciclo Superior', 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(45, 'Física', 'Ciclo superior', '4to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(46, 'Química', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(47, 'Tecnologías Electrónicas', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(48, 'Laboratorio de Programación', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(49, 'Laboratorio de Hardware', 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(50, 'Laboratorio de Sistemas Operativos', 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(51, 'Laboratorio de Aplicaciones', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(52, 'Literatura', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(53, 'Inglés', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(54, 'Educación Física', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(55, 'Salud y Adolescencia', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(56, 'Historia', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(57, 'Geografía', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(58, 'Matemática Ciclo Superior', 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Programación'),
(59, 'Física', 'Ciclo superior', '4to año', '3hs', 'Tecnicatura en Programación'),
(60, 'Química', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(61, 'Tecnologías Electrónicas', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(62, 'Laboratorio de Programación', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(63, 'Laboratorio de Hardware', 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Programación'),
(64, 'Laboratorio de Sistemas Operativos', 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Programación'),
(65, 'Laboratorio de Aplicaciones', 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(66, 'Literatura', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(67, 'Inglés', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(68, 'Educación Física', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(69, 'Política y Ciudadanía', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(70, 'Historia', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(71, 'Geografía', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(72, 'Análisis Matemático', 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(73, 'Sistemas Digitales', 'Ciclo superior', '5to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(74, 'Teleinformática', 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(75, 'Laboratorio de Programación', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(76, 'Laboratorio de Hardware', 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(77, 'Laboratorio de Sistemas Operativos', 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(78, 'Laboratorio de Aplicaciones', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(79, 'Literatura', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(80, 'Inglés', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(81, 'Educación Física', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(82, 'Política y Ciudadanía', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(83, 'Historia', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(84, 'Geografía', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(85, 'Análisis Matemático', 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Programación'),
(86, 'Sistemas Digitales', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(87, 'Base de Datos', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(88, 'Modelos y Sistemas', 'Ciclo superior', '5to año', '3hs', 'Tecnicatura en Programación'),
(89, 'Laboratorio de Programación', 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Programación'),
(90, 'Laboratorio de Redes Informáticas', 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Programación'),
(91, 'Laboratorio de Diseño Web', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(92, 'Laboratorio de Diseño de Base de Datos', 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(93, 'Literatura', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(94, 'Inglés', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(95, 'Educación Física', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(96, 'Filosofía', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(97, 'Arte', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(98, 'Matemática Aplicada', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(99, 'Sistemas Digitales', 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(100, 'Investigación Operativa', 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(101, 'Seguridad Informática', 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(102, 'Derechos del Trabajo', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(103, 'Laboratorio de Programación', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(104, 'Laboratorio de Hardware', 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(105, 'Laboratorio de Sistemas Operativos', 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(106, 'Laboratorio de Aplicaciones', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(107, 'Literatura', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(108, 'Inglés', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(109, 'Educación Física', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(110, 'Filosofía', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(111, 'Arte', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(112, 'Matemática Aplicada', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(113, 'Sistemas Digitales', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(114, 'Sistemas de Gestión y Autegestión', 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Programación'),
(115, 'Seguridad Informática', 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Programación'),
(116, 'Derechos del Trabajo', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(117, 'Laboratorio de Programación', 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Programación'),
(118, 'Laboratorio de Procesos Industriales', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(119, 'Laboratorio de Diseño Web Estáticas', 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(120, 'Laboratorio de Diseño Web Dinámicas', 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Programación'),
(121, 'Emprendimientos Productivos y Desarrollo Local', 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(122, 'Evaluación de Proyectos', 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(123, 'Modelos y Sistemas', 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(124, 'Bases de Datos', 'Ciclo superior', '7mo año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(125, 'Proyecto Diseño e Implementacion de Sistemas Computacionales', 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(126, 'Instalación Mantenimiento y Reparación de Sistemas Computacionales', 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(127, 'Instalación Mantenimiento y Reparación de Redes Informáticas', 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(128, 'Emprendimientos Productivos y Desarrollo Local', 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Programación'),
(129, 'Evaluación de Proyectos', 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Programación'),
(130, 'Modelos y Sistemas', 'Ciclo superior', '7mo año', '3hs', 'Tecnicatura en Programación'),
(131, 'Organización y Métodos', 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Programación'),
(132, 'Proyecto Diseño e Implementacion de Sistemas Computacionales', 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Programación'),
(133, 'Proyecto de Desarrollo de Software para Plataformas Móviles', 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Programación'),
(134, 'Proyecto de Implementación de Sitios Web Dinámicos ', 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Programación'),
(135, '', '', '', '', ''),
(136, '', '', '', '', ''),
(137, '', '', '', '', ''),
(139, '', '', '', '', ''),
(140, '', '', '', '', ''),
(141, '', '', '', '', ''),
(142, '', '', '', '', ''),
(143, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesaprevia`
--

CREATE TABLE `mesaprevia` (
  `id` int(11) NOT NULL,
  `materia` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `curso` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `docente` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `mes` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `dia` int(20) NOT NULL,
  `hora` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mesaprevia`
--

INSERT INTO `mesaprevia` (`id`, `materia`, `curso`, `docente`, `mes`, `dia`, `hora`) VALUES
(11, 'Sistemas Tecnológicos', '3º', 'Domene-Machado-Carabajal-Soria-Rodriguez Carlos-Sayes', 'Diciembre', 1, '14:00'),
(12, 'Procedimientos Técnicos', '3º', 'Torrez-Pennino-Gonzalez Almeida-Lopez B.-Yedro-Kupec P.', 'Diciembre', 1, '14:00'),
(13, 'Lenguajes Tecnológicos', '3º', 'Funes-Ramirez E.-Pennino-Yedro-Rodriguez R.-Domene-Abregu', 'Diciembre', 1, '14:00'),
(14, 'Lab. de Sist. Operativos', '6º', 'Ramirez-Samaja-Ramirez E.', 'Diciembre', 1, '14:00'),
(15, 'Lab. de Aplicaciones', '6º', 'Perez-Montes-Ramirez-Pennino', 'Diciembre', 1, '14:00'),
(16, 'Lab. de Hardware', '6º', 'Contreras-Abregu-Ramirez R.-Bouquet', 'Diciembre', 1, '14:00'),
(17, 'Lab. de Programación', '6º', 'Perez-Montes-Ramirez-Pennino', 'Diciembre', 1, '14:00'),
(18, 'Web Dinamicas', '6ºProg', 'Peral-Abregu', 'Diciembre', 1, '14:00'),
(19, 'Procesos Industriales', '6ºProg', 'Peral-Kupec', 'Diciembre', 1, '14:00'),
(20, 'Web Estaticas', '6ºProg', 'Peral-Bouquet', 'Diciembre', 1, '14:00'),
(21, 'Lab. de Programación', '6ºProg', 'Peral-Lupoli', 'Diciembre', 1, '14:00'),
(22, 'Sist. de Gestion', '6ºProg', 'Peral', 'Diciembre', 1, '14:00'),
(23, 'Sistemas Tecnológicos', '1º', 'Querio-Villanueva-Cabrera-Ceresani-Hogstra-Soria-Cejas', 'Diciembre', 4, '14:00'),
(24, 'Procedimientos Técnicos', '1º', 'Torrez Luis-Fernandez Luis-Menta-Fernàndez Cintia-Lòpez B.-Gentiluomo-Soria-Insfran', 'Diciembre', 4, '14:00'),
(25, 'Lenguajes Tecnológicos', '1º', 'Funes-Gomez Gustavo-Garcia Damian-Morel-Cabrera-Hoogstra', 'Diciembre', 4, '14:00'),
(26, 'Lab. de Sist. Operativos', '4º', 'Soria-Hoogstra-Ramirez E.-Pennino-Querio-Maugeri', 'Diciembre', 4, '14:00'),
(27, 'Lab. de Aplicaciones', '4º', 'Sanchez-Soria-Querio-Ramirez E.-Hoogstra-Menta', 'Diciembre', 4, '14:00'),
(28, 'Lab. de Hardware', '4º', 'Soria-Hoogstra-Menta-Ramirez E.-Maugeri', 'Diciembre', 4, '14:00'),
(29, 'Lab. de Programación', '4º', 'Sanchez-Soria-Navarro-Paz-Querio', 'Diciembre', 4, '14:00'),
(30, 'Sistemas Tecnológicos', '2º', 'Gomez Uriel-Machado-Lupoli-Sayes-Lopez-Hoogstra-Castaño-Cabrera', 'Diciembre', 6, '14:00'),
(31, 'Procedimientos Técnicos', '2º', 'Garcia Sergio-Narciso-Contreras-Querio-Peitti-Machado', 'Diciembre', 6, '14:00'),
(32, 'Lenguajes Tecnológicos', '2º', 'Hoogstra-Abregu-Castaño-Garcia Damian-Ceresani-Funes', 'Diciembre', 6, '14:00'),
(33, 'Lab. de Programación', '5º', 'Abregu-Querio', 'Diciembre', 6, '14:00'),
(34, 'Lab. de Redes', '5º', 'Torrez G.-Vera Aranda Diego', 'Diciembre', 6, '14:00'),
(35, 'Lab. de Base de Datos', '5°', 'Paz-Funes', 'Diciembre', 6, '14:00'),
(36, 'Lab. de Sist. Operativos', '5°', 'Querio-Ramirez R.-Ramirez E.-Vera Aranda-Abregu', 'Diciembre', 6, '14:00'),
(37, 'Lab. de Aplicaciones', '5°', 'Contreras-Garcia D.-Abregu-Ramirez E.-Ramirez R.', 'Diciembre', 6, '14:00'),
(38, 'Lab. de Hardware', '5°', 'Torrez-Vera Aranda-Kupec E.-Kupec P.-Ramirez R.', 'Diciembre', 6, '14:00'),
(39, 'Lab. de Programación', '5°', 'Bouquet-Funes', 'Diciembre', 6, '14:00'),
(40, 'Tecnologias Electrónicas', '4°', 'Russo-Lupoli-Alcetegaray', 'Diciembre', 1, '8:00'),
(41, 'Teleinformática', '5°', 'Paz Rodriguez Romina', 'Diciembre', 1, '8:00'),
(42, 'Sistemas Digitales', '5°', 'Russo-Rodriguez Carlos-Kupec', 'Diciembre', 1, '8:00'),
(43, 'Modelos y Sistemas', '5°Prog', 'Rodriguez Carlos', 'Diciembre', 1, '8:00'),
(44, 'Base de Datos', '5°Prog', 'Paz', 'Diciembre', 1, '8:00'),
(45, 'Sistemas Digitales', '6°', 'Elizondo Bouquet-Kupec', 'Diciembre', 1, '18:00'),
(46, 'Investigación Operativa', '6°', 'Peral Duilio', 'Diciembre', 1, '18:00'),
(47, 'Seguridad Informática', '6°', 'Pennino', 'Diciembre', 1, '18:00'),
(48, 'Proy. de Sistemas', '7°', 'Funes-Ramirez R.-Correa', 'Diciembre', 1, '18:00'),
(49, 'Im. y R.Redes', '7°', 'Peral-Ramirez R.-Montes-Vera Aranda', 'Diciembre', 1, '18:00'),
(50, 'Im. y R.Sistemas', '7°', 'Ramirez R.-Ramirez E.-Kupec', 'Diciembre', 1, '18:00'),
(51, 'Modelos y Sistemas', '7°', 'Bouquet-Collareda', 'Diciembre', 1, '18:00'),
(52, 'Eval. Proyectos', '7°', 'Matias Gonzales-Elizondo', 'Diciembre', 1, '18:00'),
(53, 'Base de Datos', '7°', 'Bouquet', 'Diciembre', 1, '18:00'),
(54, 'Derecho del Trabajo', '6º', 'Morais-Pas-Guerra', 'Diciembre', 1, '18:00'),
(55, 'Empren. Product.', '7°', 'Pas', 'Diciembre', 1, '18:00'),
(56, 'Organización y Método', '7°Prog', 'Sciaini', 'Diciembre', 1, '18:00'),
(57, 'Plataformas Mòviles', '7ºProg', 'Paparelli-Ferreyra Marisol', 'Diciembre', 1, '18:00'),
(58, 'Sistemas Computacionales', '7ºProg', 'Paz-Correa', 'Diciembre', 1, '18:00'),
(59, 'Web Dinamicas', '7ºProg', 'Perconti-Correa', 'Diciembre', 1, '18:00'),
(60, 'Fisico-Quimica', '2º a 3º', 'Villanueva Claudia-Jara Karina-Alegre-Lameiro-Cuadra Diego', 'Diciembre', 4, '8:00'),
(61, 'Fisica', '4º', 'Preves-Viazzi', 'Diciembre', 4, '8:00'),
(62, 'Quimica', '4º', 'Alegre-Alessi-Lameiro', 'Diciembre', 4, '8:00'),
(63, 'Ciencias Naturales', '1º', 'Apaolaza Valeria-Villanueva-Coronel L.', 'Diciembre', 4, '8:00'),
(64, 'Biologia', '2º a 3º', 'Aguirre-Coronel-Villanueva', 'Diciembre', 4, '8:00'),
(65, 'Salud y Adolescencia', '4º', 'Villanueva-Astudillo', 'Diciembre', 4, '8:00'),
(66, 'Matematica', '1º a 2º', 'Goynich-Apaolaza V.-Paz K.-Lavallen-Malenda', 'Diciembre', 5, '8:00'),
(67, 'Matematica', '3º a 4º', 'Malenda-Goynich-Lavallen-Aranda', 'Diciembre', 5, '8:00'),
(68, 'Matematica', '5º a 6º', 'Nocetti-Lopez-Calderon Gimenez-Gonzales Martin', 'Diciembre', 5, '8:00'),
(69, 'Practicas del Lenguaje', '1º a 3º', 'Jara Stella-Silva-Nacimiento-Basoalto-Luca-Moreyra-Bejarano-Montoya Patricia', 'Diciembre', 5, '8:00'),
(70, 'Literatura', '4º a 6º', 'Basoalto-Ramirez Hernan-Sancho-Silva-Jara-Juarez Liliana-Medina', 'Diciembre', 5, '8:00'),
(71, 'Ingles', '1º a 6º', 'Vargas-Amaya-Leiva-Prino-Linzoain-Cantero-Toledo-Correia-Aquino-Pieri F.-Paz Solange', 'Diciembre', 5, '8:00'),
(72, 'Educacion Fisica', '1º a 6º', 'Romero S.Orellano-Velazquez-Miranda-rodriquez Adrian-Risel Pablo-Cómodo-Kowalszuck', 'Diciembre', 5, '8:00'),
(73, 'Educacion Artística', '1º a 3º', 'Guari-Blanco-Maurizi-Durante-Alegre Nelly-Claro', 'Diciembre', 5, '8:00'),
(74, 'Arte', '6º', 'Vilte-Blanco-Maurizi', 'Diciembre', 5, '8:00'),
(75, 'Ciencias Sociales', '1º', 'Suss-Ibarra-Lopez A.-Kondraciewicz', 'Diciembre', 6, '8:00'),
(77, 'Historia', '2º a 5º', 'Cancinos-Suss-Ibarra-Bastías-Vulcano-Martinez R.-Kondraciewicz-Barreto-Volpe', 'Diciembre', 6, '8:00'),
(79, 'Politica y Ciudadania', '5º', 'Pila-Vallejos Hilda-Suss-Peralta Mabel', 'Diciembre', 6, '8:00'),
(80, 'Geografia', '2º a 5º', 'Romero J.-Jimenez-Alcorta-Spienco-Planes-Sena-Reynaldo-Veliz-Pacheco', 'Diciembre', 6, '8:00'),
(81, 'Filosofia', '6º', 'Ferrari Damian-Colautti-Suarez', 'Diciembre', 6, '8:00'),
(82, 'Constr. de la Ciudadania', '1º a 3º', 'Murcia-Da Silva-Neira-Peralta-Silva Gomez', 'Diciembre', 6, '8:00'),
(83, 'Matemática', '1° a 3°', 'Goynich-Aranda-Malenda', 'Febrero', 20, '8:00'),
(84, 'Lengua extranjera', '1° a 3°', 'Frazao Claudia', 'Febrero', 20, '8:00'),
(85, 'Literatura', '1° a 3°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(86, 'Proyecto y produccion', '3°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(87, 'Filosofía y formación et. y ', '1° a 2°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(88, 'Cult. y est. contemp.', '3°', 'Maurizi Luciana', 'Febrero', 20, '18:00'),
(89, 'Procesos Productivos', '2°', 'Peralta Mabel', 'Febrero', 21, '8:00'),
(90, 'Tecnologías De Gestión', '2°', 'Peralta Mabel', 'Febrero', 21, '8:00'),
(91, 'Historia Mundial', '1°', 'Pereyra Nestor', 'Febrero', 21, '8:00'),
(92, 'Geografía Mundial', '2°', 'Pereyra Nestor', 'Febrero', 21, '8:00'),
(93, 'Educación Física', '1° a 3°', 'Miranda C.', 'Febrero', 21, '8:00'),
(94, 'Química', '1°', 'Valdivieso Fernando', 'Febrero', 21, '13:00'),
(95, 'Física', '1°', 'Ostapchuk Daniela', 'Febrero', 21, '13:00'),
(96, 'TTP -Modulos A,B y C ', '1° a 3°', 'Ramírez R.', 'Febrero', 21, '18:00'),
(97, 'Algoritmos y Est. de Datos', '1° a 2°', 'Paz Karina', 'Febrero', 21, '8:00'),
(98, 'TIC', '3°', 'Paz Karina', 'Febrero', 21, '8:00'),
(99, 'Tec. de Control', '2°', 'Sayes Norman', 'Febrero', 21, '13:00'),
(100, 'Tec. de los Materiales', '1°', 'Sayes Norman', 'Febrero', 21, '13:00'),
(101, 'Física', '1°', 'Ostapchuk Daniela', 'Febrero', 21, '13:00'),
(102, 'Gestión de los Ambitos', '3°', 'Pas Darío', 'Febrero', 21, '18:00'),
(103, 'Modelos y Sistemas', '3°', 'Bouquet Ariel', 'Febrero', 21, '18:00'),
(104, 'ECI 1 y 2', '3°', 'Bouquet Ariel', 'Febrero', 21, '18:00'),
(105, 'Matemática', '1° a 3°', 'Aranda-Goynich-Malenda', 'Febrero', 20, '8:00'),
(106, 'Ciencas Básicas', '1° a 2°', 'Aranda-Goynich-Malenda', 'Febrero', 20, '8:00'),
(107, 'Lengua y Literatura', '1° a 3°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(108, 'Recursos Humanos', '3°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(109, 'Prob. Soc. Contemp.', '3°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(110, 'Tecnología y Sociedad', '1° a 3°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(111, 'Educación Cívica', '1°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(112, 'Historia-Geografía', '1° a 2°', 'Pereyra Nestor', 'Febrero', 20, '8:00'),
(113, 'InglÃ©s', '1° a 3°', 'Frazao Claudia', 'Febrero', 20, '8:00'),
(114, 'Econ. Proc. Prod.', '1° a 3°', 'Peralta Mabel', 'Febrero', 21, '8:00'),
(115, 'Química', '3°', 'Valdivieso Fernando', 'Febrero', 21, '13:00'),
(116, 'Biología', '1°', 'Ostapchuk Daniela', 'Febrero', 21, '13:00'),
(117, 'Física', '2°', 'Valdivieso Fernando', 'Febrero', 21, '13:00'),
(118, 'Informática Especializada', '1° a 3°', 'Ramírez Ricardo', 'Febrero', 21, '18:00'),
(119, 'Sistemas Tecnológicos', '1°', 'Querio - Villanueva - Cabrera - Ceresani - Hogstra - Soria - Cejas', 'Febrero', 19, '14:00'),
(120, 'Procedimientos Técnicos', '1°', 'Torres Luis - Fernandez Luis -Menta-Fernández, Cintia-López, B. - Gentiluomo -Soria-Insfran-', 'Febrero', 19, '14:00'),
(121, 'Lenguajes Tecnológicos', '1°', 'Funes- Gomez Gustavo - Garcia Damian - Morel - Cabrera -Hoogstra ', 'Febrero', 19, '14:00'),
(122, 'Lab. De Sist. Operativos', '4°', 'Soria-Hoogstra-Ramírez, E-Penino-Querio-Maugeri', 'Febrero', 19, '14:00'),
(123, 'Lab. de Aplicaciones', '4°', 'Sanchez-Soria-Querio- Ramírez, E.Hoogstra-Menta', 'Febrero', 19, '14:00'),
(124, 'Lab. de Hardware', '4°', 'Soria- Hoogstra-Menta-Ramírez, E-Maugeri ', 'Febrero', 19, '14:00'),
(125, 'Lab. de Programación', '4°', 'Sanchez-Soria-Navarro-Paz-Querio ', 'Febrero', 19, '14:00'),
(126, 'Sistemas Tenologicos', '2°', 'Gomez, Uriel - Machado - Lupoli - Sayes -Lopez - Hoogstra - Castaño - Cabrera', 'Febrero', 20, '14:00'),
(127, 'Procedimientos Técnicos', '2°', 'Garcia, Sergio - Narciso - Contreras - Querio - Peitti - Machado', 'Febrero', 20, '14:00'),
(128, 'Lenguajes Tecnológicos', '2°', 'Hoogstra - Abregu - Castaño - Garcia,Damian - Ceresani - Funes', 'Febrero', 20, '14:00'),
(129, 'Lab. de Programación', '5°', '(Orient. En Prog.) Abregu-Querio', 'Febrero', 20, '14:00'),
(130, 'Laborat. de Redes', '5°', '(Orient. En Prog.) Torrez, G- VERA ARANDA DIEGO', 'Febrero', 20, '14:00'),
(131, 'Lab. de Web', '5°', '(Orient. En Prog.) Soria-QUERIO', 'Febrero', 20, '14:00'),
(132, 'Lab. de Base de Datos', '5°', '(Orient. En Prog.) Paz- Funes ', 'Febrero', 20, '14:00'),
(133, 'Lab. De Sist. Operativos', '5°', 'Querio-Ramírez,R-Ramírez, E.-Vera Aranda- Abregu', 'Febrero', 20, '14:00'),
(134, 'Lab. de Aplicaciones', '5°', 'Contreras, GarcÃ­a D- Abregu- Ramírez, Elsa. Ramírez, Ricardo ', 'Febrero', 20, '14:00'),
(135, 'Laboratorio de Hard.', '5°', 'Torrez- Vera Aranda- Kupec E. Kupec P. - Ramírez R. ', 'Febrero', 20, '14:00'),
(136, 'Lab. de Programación', '5°', 'Bouquet- Funes', 'Febrero', 20, '14:00'),
(137, 'Sistemas Tenologicos', '3°', 'Domene - Machado - Marmol - Caiati - Carabajal - Soria - Rodriguez Carlos - Sayes ', 'Febrero', 21, '14:00'),
(138, 'Procedimientos Técnicos', '3°', 'Torrez-Pennino-Gonzalez Almeida - Lopez B.- Yedro - Kupec P', 'Febrero', 21, '14:00'),
(139, 'Lenguajes Tecnológicos', '3°', 'Funes - Ramírez E. - Pennino - Yedro - Rodriguez R. - Domene - Abregu - Funes ', 'Febrero', 21, '14:00'),
(140, 'Lab. De Sist. Operativos', '6°', 'Ramírez, Ric. Samaja-Ramírez E', 'Febrero', 21, '14:00'),
(141, 'Lab. de Aplicaciones', '6°', 'Perez- Montes-Rarmirez-Pennino', 'Febrero', 21, '14:00'),
(142, 'Lab. de Hardware', '6°', 'Contreras-Abregu-Ramírez,R. Bouquet', 'Febrero', 21, '14:00'),
(143, 'Lab. de Programación', '6°', 'Perez-Samaja- Paz -Funes', 'Febrero', 21, '14:00'),
(144, 'Web Dinámicas', '6° Prog', 'Peral - Abregu', 'Febrero', 21, '14:00'),
(145, 'Proc. Industriales', '6° Prog', 'Peral - Kupec', 'Febrero', 21, '14:00'),
(146, 'Web Estáticas', '6° Prog', 'Peral - Bouquet', 'Febrero', 21, '14:00'),
(147, 'Lab. de Programación', '6° Prog', 'Peral - Lupoli', 'Febrero', 21, '14:00'),
(148, 'Sist. de Gestión', '6° Prog', 'Peral', 'Febrero', 21, '14:00'),
(149, 'Físico - Química', '2° a 3°', 'Villanueva, Claudia. - Jara, Karina- Alegre- Lameiro- Cuadra, Diego', 'Febrero', 19, '8:00'),
(150, 'Física', '4°', 'Preves - Viazzi', 'Febrero', 19, '8:00'),
(151, 'Química', '4°', 'Alegre- Alessi- Lameiro ', 'Febrero', 19, '8:00'),
(152, 'Ciencias Naturales', '1°', 'Apaolaza, Valeria- Villanueva-Coronel, L', 'Febrero', 19, '8:00'),
(153, 'Biología', '2° a 3°', 'Aguirre, Coronel, Villanueva ', 'Febrero', 19, '8:00'),
(154, 'Salud y Adolescencia', '4°', 'Villanueva, Claudia. Astudillo', 'Febrero', 19, '8:00'),
(155, 'PrÃ¡cticas del Lenguaje', '1° a 3°', 'Jara Stella - Silva -Nacimiento- Basoalto-Luca-Moreyra-Bejarano - Montoya Patricia', 'Febrero', 20, '8:00'),
(156, 'Literatura', '4° a 6°', 'Basoalto- Ramírez Hernan, Sancho-Silva -Jara - Juarez Liliana- Medina', 'Febrero', 20, '8:00'),
(157, 'InglÃ©s', '1° a 6°', 'Vargas-Amaya-Leiva-Prino-Linzoain- Cantero-Toledo-Correia-Aquino- Pieri F.-Paz Solange- Carrozovargas Cala', 'Febrero', 20, '8:00'),
(158, 'Educación Física', '1° a 6°', 'Romero,S.Orellano- Velazquez -Miranda- Rodriguez Adrian - Risel Pablo - Cómodo - Kowalszuck', 'Febrero', 20, '8:00'),
(159, 'Educación ArtÃ­stica', '1° a 3°', 'Guari- Blanco-Maurizi - Durante - Alegre Nelly - Claro ', 'Febrero', 20, '8:00'),
(160, 'Arte', '6°', 'Vilte - Blanco - Maurizi', 'Febrero', 20, '8:00'),
(161, 'Matemática', '1° a 2°', 'Apaloaza, V. -Goynich- Paz, K- Lavallen-Malenda', 'Febrero', 20, '8:00'),
(162, 'Matemática', '3° a 4°', 'Malenda-Goynich- Lavallen-Aranda', 'Febrero', 20, '8:00'),
(164, 'Matemática', '5° a 6°', 'Nocceti- Lopez-Calderon Gimenez-Gonzalez Martin', 'Febrero', 20, '8:00'),
(165, 'Tecnologías ElectrÃ³nicas', '4°', 'Russo- Lipoli- Alcetegaray', 'Febrero', 21, '8:00'),
(166, 'TeleInformática', '5°', 'Paz, Rodriguez, Romina', 'Febrero', 21, '8:00'),
(167, 'Sistemas Digítales', '5°', 'Russo- Rodriguez Carlos - Kupec', 'Febrero', 21, '8:00'),
(168, 'Modelos y Sistemas', '5° Prog', 'Russo- Rodriguez Carlos - Kupec', 'Febrero', 21, '8:00'),
(169, 'Base de Datos', '5° Prog', 'Paz Karina', 'Febrero', 21, '8:00'),
(170, 'Sistemas Digítales', '6°', 'Elizondo, Bouquet - Kupec', 'Febrero', 21, '18:00'),
(172, 'Investigación Operativa', '6°', 'Peral Duilio', 'Febrero', 21, '18:00'),
(173, 'Seguridad Informática', '6°', 'Pennino', 'Febrero', 21, '18:00'),
(174, 'Proy. de Sistemas', '7°', 'Funes- Ramírez, R.- Correa ', 'Febrero', 21, '18:00'),
(175, 'Im. y R. Redes', '7°', 'Peral- Ramírez,R - Montes - Vera Aranda', 'Febrero', 21, '18:00'),
(176, 'Im. y R. Sistemas', '7°', 'Ramírez,R- Ramírez, E. - Kupec', 'Febrero', 21, '18:00'),
(177, 'Modelos y Sistemas', '7°', 'Bouquet - Collareda', 'Febrero', 21, '18:00'),
(178, 'Eval. Proyectos', '7°', 'Matias Gonzalez - Elizondo', 'Febrero', 21, '18:00'),
(179, 'Base de Datos', '7°', 'Bouquet', 'Febrero', 21, '18:00'),
(180, 'Derecho del Trabajo', '6°', 'Morais- Pas-Guerra', 'Febrero', 21, '18:00'),
(181, 'Emprend. Product.', '7°', 'Pas, Dario', 'Febrero', 21, '18:00'),
(182, 'Organización y Método', '7° Prog', 'Sciaini', 'Febrero', 21, '18:00'),
(183, 'Plataformas Móviles', '7° Prog', 'Paparelli - Ferreyra Marisol', 'Febrero', 21, '18:00'),
(184, 'Sistemas Computacionales', '7° Prog', 'Paz - Correa', 'Febrero', 21, '18:00'),
(185, 'Web Dinámicas', '7° Prog', 'Correa - Perconti ', 'Febrero', 21, '18:00'),
(186, 'Ciencias Sociales', '1°', 'Suss- Ibarra- Lopez, A.-kondraciewicz', 'Febrero', 21, '8:00'),
(187, 'Historia', '2° a 5°', 'Cancinos-Suss-Ibarra- Bastías-Vulcano- Martinez, R-Kondraciewiczbarreto-Volpe', 'Febrero', 21, '8:00'),
(188, 'Política y Ciudadanía', '5°', 'Pila- Vallejos Hilda-Suss- Peralta Mabel ', 'Febrero', 21, '8:00'),
(189, 'Geografía', '2° a 5°', 'Romero, J- Jimenez- Alcorta - Spienco -Planes - Sena - Reynaldo - Veliz - Pachecho', 'Febrero', 21, '8:00'),
(190, 'Filosofía', '6°', 'Ferrari Damian - Colautti - Suarez ', 'Febrero', 21, '8:00'),
(191, 'Constr. de la Ciudadanía', '1° a 3°', 'Murcia- Da Silva-Neira-Peralta - Silva Gomez', 'Febrero', 21, '8:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesaregular`
--

CREATE TABLE `mesaregular` (
  `id` int(11) NOT NULL,
  `materia` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `curso` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `docente` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `mes` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `dia` int(20) NOT NULL,
  `hora` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `mesaregular`
--

INSERT INTO `mesaregular` (`id`, `materia`, `curso`, `docente`, `mes`, `dia`, `hora`) VALUES
(169, 'Ciencias Naturales', '1º1º', 'Apaolaza', 'Febrero', 27, '9:40'),
(170, 'Ciencias Sociales', '1º1º', 'Suss', 'Febrero', 26, '7:30'),
(171, 'Constr. de la Ciudadania', '1º1º', 'Da Silva', 'Febrero', 23, '15:30'),
(172, 'Educacion Artìstica', '1º1º', 'Guari', 'Febrero', 28, '7:30'),
(173, 'Ingles', '1º1º', 'Vargas', 'Febrero', 26, '9:40'),
(174, 'Matematica', '1º1º', 'Apaolaza', 'Febrero', 27, '7:30'),
(175, 'Educacion Fisica', '1º1º', 'Romero G.-Kowalczkuk', 'Febrero', 27, '15:00'),
(176, 'Practicas del Lenguaje', '1º1º', 'Silva G.', 'Febrero', 23, '7:30'),
(177, 'Ciencias Naturales', '1º4º', 'Villanueva', 'Febrero', 26, '9:40'),
(178, 'Ciencias Sociales', '1º4º', 'Kondraciewicz', 'Febrero', 23, '7:30'),
(179, 'Educacion Artìstica', '1º4º', 'Guari', 'Febrero', 22, '7:30'),
(180, 'Ingles', '1º4º', 'Amaya', 'Febrero', 26, '7:30'),
(181, 'Matematica', '1º4º', 'Goynich', 'Febrero', 27, '7:30'),
(182, 'Practicas del Lenguaje', '1º4º', 'Silva G.', 'Febrero', 23, '9:40'),
(183, 'Educacion Fisica', '1º4º', 'Romero S.', 'Febrero', 26, '13:00'),
(184, 'Constr. de la Ciudadania', '1º4º', 'Neira E.', 'Febrero', 23, '13:10'),
(185, 'Biologia', '2º1º', 'Aguirre', 'Febrero', 27, '7:30'),
(186, 'Constr. de la Ciudadania', '2º1º', 'Neira E.', 'Febrero', 27, '11:50'),
(187, 'Educacion Artìstica', '2º1º', 'Blanco', 'Febrero', 28, '9:40'),
(188, 'Fisico-Quimica', '2º1º', 'Villanueva', 'Febrero', 23, '9:40'),
(189, 'Geografia', '2º1º', 'Alcorta S.', 'Febrero', 27, '9:40'),
(190, 'Historia', '2º1º', 'Kondraciewicz', 'Febrero', 26, '7:30'),
(191, 'Ingles', '2º1º', 'Amaya', 'Febrero', 23, '7:30'),
(192, 'Matematica', '2º1º', 'Malenda', 'Febrero', 26, '9:40'),
(193, 'Practicas del Lenguaje', '2º1º', 'Luca A.', 'Febrero', 28, '7:30'),
(194, 'Educacion Fisica', '2º1º', 'Romero G.-Kowalczkuk', 'Febrero', 27, '16:00'),
(195, 'Biologia', '2º4º', 'Coronel Lidia', 'Febrero', 28, '9:40'),
(196, 'Constr. de la Ciudadania', '2º4º', 'Murcia', 'Febrero', 23, '9:40'),
(197, 'Educacion Artìstica', '2º4º', 'Guari', 'Febrero', 22, '9:40'),
(198, 'Fisico-Quimica', '2º4º', 'Jara Karina', 'Febrero', 26, '11:50'),
(199, 'Geografia', '2º4º', 'Spienco', 'Febrero', 23, '7:30'),
(200, 'Historia', '2º4º', 'Kondraciewicz', 'Febrero', 27, '9:40'),
(201, 'Ingles', '2º4º', 'Amaya', 'Febrero', 26, '9:40'),
(202, 'Matematica', '2º4º', 'Malenda', 'Febrero', 28, '7:30'),
(203, 'Practicas del Lenguaje', '2º4º', 'Basoalto', 'Febrero', 27, '7:30'),
(204, 'Educacion Fisica', '2º4º', 'Romero S.', 'Febrero', 26, '14:00'),
(205, 'Biologia', '3º2º', 'Aguirre', 'Febrero', 27, '9:40'),
(206, 'Constr. de la Ciudadania', '3º2º', 'Peralta M.', 'Febrero', 22, '7:30'),
(207, 'Educacion Artìstica', '3º2º', 'Blanco', 'Febrero', 22, '7:30'),
(208, 'Fisico-Quimica', '3º2º', 'Alegre', 'Febrero', 23, '7:30'),
(209, 'Geografia', '3º2º', 'Planes Valeria', 'Febrero', 26, '9:40'),
(210, 'Historia', '3º2º', 'Martinez G.', 'Febrero', 28, '9:40'),
(211, 'Ingles', '3º2º', 'Pieri Flavia', 'Febrero', 27, '11:50'),
(212, 'Matematica', '3º2º', 'Malenda', 'Febrero', 27, '7:30'),
(213, 'Practicas del Lenguaje', '3º2º', 'Nacimiento', 'Febrero', 28, '7:30'),
(214, 'Educacion Fisica', '3º2º', 'Còmodo', 'Febrero', 28, '15:30'),
(215, 'Biologia', '3º4º', 'Villanueva', 'Febrero', 22, '7:30'),
(216, 'Constr. de la Ciudadania', '3º4º', 'Peralta M.', 'Febrero', 22, '9:40'),
(217, 'Educacion Artìstica', '3º4º', 'Maurizi', 'Febrero', 28, '7:30'),
(218, 'Fisico-Quimica', '3º4º', 'Lameiro', 'Febrero', 26, '10:50'),
(219, 'Geografia', '3º4º', 'Spienco', 'Febrero', 23, '9:40'),
(220, 'Historia', '3º4º', 'Suss', 'Febrero', 26, '9:40'),
(221, 'Ingles', '3º4º', 'Leiva', 'Febrero', 28, '9:40'),
(222, 'Matematica', '3º4º', 'Malenda', 'Febrero', 27, '9:40'),
(223, 'Practicas del Lenguaje', '3º4º', 'Montoya', 'Febrero', 27, '7:30'),
(224, 'Educacion Fisica', '3º4º', 'Orellano', 'Febrero', 27, '15:15'),
(225, 'Fisica', '4º1º', 'Preves A.', 'Febrero', 27, '7:30'),
(226, 'Geografia', '4º1º', 'Sena', 'Febrero', 23, '9:40'),
(227, 'Historia', '4º1º', 'Barreto', 'Febrero', 28, '7:30'),
(228, 'Ingles', '4º1º', 'Prino S.', 'Febrero', 26, '7:30'),
(229, 'Literatura', '4º1º', 'Basoalto', 'Febrero', 23, '7:30'),
(230, 'Matematica', '4º1º', 'Goynich', 'Febrero', 26, '9:40'),
(231, 'Quimica', '4º1º', 'Alegre D.', 'Febrero', 23, '9:40'),
(232, 'Salud y Adolescencia', '4º1º', 'Villanueva', 'Febrero', 28, '9:40'),
(233, 'Tecnologias Electronicas', '4º1º', 'Russo M.', 'Febrero', 22, '7:30'),
(234, 'Educacion Fisica', '4º1º', 'Orellano', 'Febrero', 22, '15:00'),
(235, 'Fisica', '4º3º', 'Preves A.', 'Febrero', 27, '9:40'),
(236, 'Geografia', '4º3º', 'Romero J.', 'Febrero', 23, '9:40'),
(237, 'Historia', '4º3º', 'Kondraciewicz', 'Febrero', 22, '10:50'),
(238, 'Ingles', '4º3º', 'Leiva', 'Febrero', 28, '7:30'),
(239, 'Literatura', '4º3º', 'Basoalto', 'Febrero', 28, '9:40'),
(240, 'Matematica', '4º3º', 'Goynich', 'Febrero', 26, '7:30'),
(241, 'Quimica', '4º3º', 'Valdivieso', 'Febrero', 26, '9:40'),
(242, 'Salud y Adolescencia', '4º3º', 'Villanueva', 'Febrero', 23, '7:30'),
(243, 'Tecnologias Electronicas', '4º3º', 'Tejerina', 'Febrero', 27, '7:30'),
(244, 'Educacion Fisica', '4º3º', 'Orellano', 'Febrero', 27, '13:15'),
(245, 'Analisis Matematica', '5º1º', 'Aranda Alejandra', 'Febrero', 26, '7:30'),
(246, 'Geografia', '5º1º', 'Reynaldo G.', 'Febrero', 23, '9:40'),
(247, 'Historia', '5º1º', 'Kondraciewicz', 'Febrero', 26, '9:40'),
(249, 'Ingles', '5º1º', 'Linzoaìn Mariela', 'Febrero', 27, '7:30'),
(250, 'Literatura', '5º1º', 'Juarez L.', 'Febrero', 28, '7:30'),
(251, 'Politica y Ciudadania', '5º1º', 'Pila Patricia', 'Febrero', 27, '9:40'),
(252, 'Sistemas Digitales', '5º1º', 'Russo M.', 'Febrero', 22, '9:40'),
(253, 'Teleinformatica', '5º1º', 'Paz Karina', 'Febrero', 23, '7:30'),
(254, 'Educacion Fisica', '5º1º', 'Rissel', 'Febrero', 28, '15:00'),
(256, 'Analisis Matematica', '5º3º', 'Malenda', 'Febrero', 26, '7:30'),
(258, 'Geografia', '5º3º', 'Spienco', 'Febrero', 22, '7:30'),
(259, 'Historia', '5º3º', 'Cancinos', 'Febrero', 28, '7:30'),
(260, 'Ingles', '5º3º', 'Cantero Y.', 'Febrero', 23, '9:40'),
(261, 'Literatura', '5º3º', 'Basoalto', 'Febrero', 22, '9:40'),
(262, 'Politica y Ciudadania', '5º3º', 'Pila Patricia', 'Febrero', 27, '7:30'),
(263, 'Sistemas Digitales', '5º3º', 'Rodriguez Carlos', 'Febrero', 27, '9:40'),
(264, 'Teleinformatica', '5º3º', 'Rodriguez Romina', 'Febrero', 23, '7:30'),
(265, 'Educacion Fisica', '5º3º', 'Rissel', 'Febrero', 28, '13:00'),
(266, 'Arte', '6º1º', 'Vilte', 'Febrero', 22, '17:00'),
(267, 'Derecho del Trabajo', '6º1º', 'Morais Leandro', 'Febrero', 27, '7:30'),
(268, 'Filosofia', '6º1º', 'Ferrari D.', 'Febrero', 23, '9:40'),
(269, 'Investigacion Operativa', '6º1º', 'Peral ', 'Febrero', 26, '7:30'),
(270, 'Literatura', '6º1º', 'Medina', 'Febrero', 27, '9:40'),
(271, 'Matematica Aplicada', '6º1º', 'Calderon', 'Febrero', 26, '9:40'),
(272, 'Seguridad Informatica', '6º1º', 'Pennino', 'Febrero', 22, '18:45'),
(273, 'Educacion Fisica', '6º1º', 'Orellano', 'Febrero', 22, '13:00'),
(274, 'Sistemas Digitales', '6º1º', 'Elizondo', 'Febrero', 27, '17:50'),
(275, 'Ciencias Naturales', '1º2º', 'Coronel Lidia', 'Febrero', 28, '13:10'),
(276, 'Ciencias Sociales', '1º2º', 'Ibarra E.', 'Febrero', 26, '15:20'),
(277, 'Educacion Artìstica', '1º2º', 'Durante A.', 'Febrero', 27, '15:20'),
(278, 'Ingles', '1º2º', 'Paz Solange', 'Febrero', 28, '15:20'),
(279, 'Matematica', '1º2º', 'Paz Karina', 'Febrero', 26, '13:10'),
(280, 'Educacion Fisica', '1º2º', 'Rissel', 'Febrero', 28, '10:00'),
(281, 'Practicas del Lenguaje', '1º2º', 'Silva', 'Febrero', 27, '13:10'),
(282, 'Constr. de la Ciudadania', '1º2º', 'Neira', 'Febrero', 27, '9:40'),
(283, 'Ciencias Naturales', '1º3º', 'Coronel Lidia', 'Febrero', 28, '15:20'),
(284, 'Ciencias Sociales', '1º3º', 'Lopez Alejandra', 'Febrero', 26, '13:10'),
(285, 'Educacion Artìstica', '1º3º', 'Durante A.', 'Febrero', 27, '13:10'),
(286, 'Ingles', '1º3º', 'Carrozo E.', 'Febrero', 28, '13:10'),
(287, 'Matematica', '1º3º', 'Lavallen C.', 'Febrero', 23, '15:20'),
(288, 'Educacion Fisica', '1º3º', 'Rodriguez A.', 'Febrero', 27, '10:15'),
(289, 'Practicas del Lenguaje', '1º3º', 'Montoya P.', 'Febrero', 27, '15:20'),
(290, 'Constr. de la Ciudadania', '1º3º', 'Neira E.', 'Febrero', 26, '9:40'),
(291, 'Biologia', '2º2º', 'Coronel Lidia', 'Febrero', 22, '13:10'),
(292, 'Constr. de la Ciudadania', '2º2º', 'Peralta M.', 'Febrero', 26, '12:10'),
(293, 'Educacion Artìstica', '2º2º', 'Alegre', 'Febrero', 26, '15:20'),
(294, 'Fisico-Quimica', '2º2º', 'Villanueva', 'Febrero', 23, '15:20'),
(295, 'Geografia', '2º2º', 'Reynaldo G.', 'Febrero', 27, '15:20'),
(296, 'Historia', '2º2º', 'Suss', 'Febrero', 28, '15:20'),
(297, 'Ingles', '2º2º', 'Vargas Cala', 'Febrero', 23, '13:10'),
(298, 'Matematica', '2º2º', 'Lavallen C.', 'Febrero', 27, '13:10'),
(299, 'Practicas del Lenguaje', '2º2º', 'Bejarano Esther', 'Febrero', 27, '13:10'),
(300, 'Educacion Fisica', '2º2º', 'Romero S.', 'Febrero', 26, '8:00'),
(301, 'Biologia', '2º3º', 'Coronel Lidia', 'Febrero', 22, '12:10'),
(302, 'Constr. de la Ciudadania', '2º3º', 'Da Silva', 'Febrero', 22, '15:20'),
(303, 'Educacion Artìstica', '2º3º', 'Durante A.', 'Febrero', 26, '15:20'),
(304, 'Fisico-Quimica', '2º3º', 'Cuadra Diego', 'Febrero', 28, '13:10'),
(305, 'Geografia', '2º3º', 'Jimenez  N.', 'Febrero', 27, '15:20'),
(306, 'Historia', '2º3º', 'Ibarra E.', 'Febrero', 26, '13:10'),
(307, 'Ingles', '2º3º', 'Carrozo E.', 'Febrero', 23, '13:10'),
(308, 'Matematica', '2º3º', 'Goynich', 'Febrero', 27, '13:10'),
(309, 'Practicas del Lenguaje', '2º3º', 'Montoya', 'Febrero', 28, '15:20'),
(310, 'Educacion Fisica', '2º3º', 'Velazquez M.', 'Febrero', 27, '8:00'),
(311, 'Biologia', '3º1º', 'Aguirre', 'Febrero', 26, '15:20'),
(312, 'Constr. de la Ciudadania', '3º1º', 'Neira E.', 'Febrero', 26, '7:30'),
(313, 'Educacion Artìstica', '3º1º', 'Durante A.', 'Febrero', 26, '13:10'),
(314, 'Fisico-Quimica', '3º1º', 'Villanueva', 'Febrero', 28, '15:20'),
(315, 'Geografia', '3º1º', 'Veliz G.', 'Febrero', 23, '15:20'),
(316, 'Historia', '3º1º', 'Bastìas Juan', 'Febrero', 28, '13:10'),
(317, 'Ingles', '3º1º', 'Paz Solange', 'Febrero', 27, '13:10'),
(318, 'Matematica', '3º1º', 'Lavallen C.', 'Febrero', 22, '13:10'),
(319, 'Practicas del Lenguaje', '3º1º', 'Moreyra Lidia', 'Febrero', 27, '15:20'),
(320, 'Educacion Fisica', '3º1º', 'Miranda', 'Febrero', 27, '11:00'),
(321, 'Biologia', '3º3º', 'Coronel Lidia', 'Febrero', 26, '13:10'),
(322, 'Constr. de la Ciudadania', '3º3º', 'Silva G.', 'Febrero', 23, '15:20'),
(323, 'Educación Artistica', '3º3º', 'Claros Sandra', 'Febrero', 22, '12:10'),
(324, 'Fisico-Quimica', '3º3º', 'Valdivieso Fernando', 'Febrero', 28, '13:10'),
(325, 'Geografia', '3º3º', 'Pacheco D.', 'Febrero', 23, '13:10'),
(326, 'Historia', '3º3º', 'Ibarra E.', 'Febrero', 27, '13:10'),
(327, 'Ingles', '3º3º', 'Toledo A.', 'Febrero', 27, '15:20'),
(328, 'Matematica', '3º3º', 'Aranda Alejandra', 'Febrero', 26, '15:20'),
(329, 'Practicas del Lenguaje', '3º3º', 'Pereyra N.', 'Febrero', 28, '15:20'),
(330, 'Educacion Fisica', '3º3º', 'Miranda C.', 'Febrero', 27, '10:00'),
(331, 'Fisica', '4º2º', 'Viazzi L.', 'Febrero', 28, '15:20'),
(332, 'Geografia', '4º2º', 'Planes Valeria', 'Febrero', 27, '13:10'),
(333, 'Historia', '4º2º', 'Volpe Patricia', 'Febrero', 26, '13:10'),
(334, 'Ingles', '4º2º', 'Pieri', 'Febrero', 23, '15:20'),
(335, 'Literatura', '4º2º', 'Basoalto', 'Febrero', 22, '13:10'),
(336, 'Matematica', '4º2º', 'Goynich', 'Febrero', 27, '15:20'),
(337, 'Quimica', '4º2º', 'Alessi', 'Febrero', 28, '13:10'),
(338, 'Salud y Adolescencia', '4º2º', 'Villanueva', 'Febrero', 23, '13:10'),
(339, 'Tecnologias Electronicas', '4º2º', 'Lupoli Butavand', 'Febrero', 26, '15:20'),
(340, 'Educacion Fisica', '4º2º', 'Miranda', 'Febrero', 23, '8:00'),
(341, 'Fisica', '4º4º', 'Ostapchuk Daniela', 'Febrero', 23, '14:10'),
(342, 'Geografia', '4º4º', 'Planes Valeria', 'Febrero', 22, '15:20'),
(343, 'Historia', '4º4º', 'BastÃ¬as ', 'Febrero', 22, '13:10'),
(344, 'Ingles', '4º4º', 'Amaya', 'Febrero', 26, '15:20'),
(345, 'Literatura', '4º4º', 'Silva G.', 'Febrero', 28, '13:10'),
(346, 'Matematica', '4º4º', 'Aranda Alejandra', 'Febrero', 26, '13:10'),
(347, 'Quimica', '4º4º', 'Lameiro', 'Febrero', 28, '15:20'),
(348, 'Salud y Adolescencia', '4º4º', 'Astudillo Analia', 'Febrero', 27, '15:20'),
(349, 'Tecnologias Electronicas', '4º4º', 'Alcetegaray', 'Febrero', 27, '13:10'),
(350, 'Educacion Fisica', '4º4º', 'Rissel', 'Febrero', 23, '8:00'),
(351, 'Analisis Matematica', '5º2º', 'Aranda Alejandra', 'Febrero', 22, '15:20'),
(352, 'Geografia', '5º2º', 'Jimenez  N.', 'Febrero', 26, '15:20'),
(353, 'Historia', '5º2º', 'Vulcano Carlos', 'Febrero', 22, '13:10'),
(354, 'Ingles', '5º2º', 'Correia Claudia', 'Febrero', 27, '13:10'),
(355, 'Literatura', '5º2º', 'Sancho Belen', 'Febrero', 26, '13:10'),
(356, 'Politica y Ciudadania', '5º2º', 'Suss', 'Febrero', 23, '13:10'),
(357, 'Sistemas Digitales', '5º2º', 'Kupec', 'Febrero', 23, '7:30'),
(358, 'Modelos y Sistemas', '5º2º', 'Rodriguez Carlos', 'Febrero', 27, '12:10'),
(359, 'Base de Datos', '5º2º', 'Paz Karina', 'Febrero', 28, '13:10'),
(360, 'Educacion Fisica', '5º2º', 'Miranda', 'Febrero', 27, '8:00'),
(361, 'Analisis Matematica', '5º4º', 'Nocetti', 'Febrero', 27, '15:20'),
(362, 'Geografia', '5º4º', 'Planes Valeria', 'Febrero', 22, '13:10'),
(363, 'Historia', '5º4º', 'Martinez Rosana', 'Febrero', 28, '12:10'),
(364, 'Ingles', '5º4º', 'Aquino Campos', 'Febrero', 28, '15:20'),
(365, 'Literatura', '5º4º', 'Ramirez Hernan', 'Febrero', 23, '13:10'),
(366, 'Politica y Ciudadania', '5º4º', 'Peralta M.', 'Febrero', 26, '13:10'),
(367, 'Sistemas Digitales', '5º4º', 'Rodriguez Carlos', 'Febrero', 23, '15:20'),
(368, 'Teleinformatica', '5º4º', 'Perez Osmar', 'Febrero', 23, '15:20'),
(369, 'Educacion Fisica', '5º4º', 'Rissel', 'Febrero', 28, '8:00'),
(370, 'Arte', '6º2º', 'Maurizi', 'Febrero', 28, '17:50'),
(371, 'Derecho del Trabajo', '6º2º', 'Guerra Ramon', 'Febrero', 28, '19:50'),
(372, 'Filosofia', '6º2º', 'Colautti', 'Febrero', 26, '17:50'),
(373, 'Ingles', '6º2º', 'Amaya', 'Febrero', 27, '17:50'),
(374, 'Sistemas Digitales', '6º2º', 'Kupec', 'Febrero', 27, '7:30'),
(375, 'Literatura', '6º2º', 'Basoalto', 'Febrero', 23, '17:50'),
(376, 'Matematica Discreta', '6º2º', 'Lopez Hilda', 'Febrero', 28, '14:10'),
(377, 'Sist. de Gestion y Autogestion', '6º2º', 'Peral', 'Febrero', 22, '18:45'),
(378, 'Educacion Fisica', '6º2º', 'Rodriguez A.', 'Febrero', 26, '13:00'),
(379, 'Seguridad Informatica', '6º2º', 'Pennino', 'Febrero', 27, '19:50'),
(380, 'Arte', '6º3º', 'Blanco Gustavo', 'Febrero', 23, '13:10'),
(381, 'Derecho del Trabajo', '6º2º', 'Pas Dario', 'Febrero', 22, '19:50'),
(382, 'Filosofia', '6º3º', 'Suarez', 'Febrero', 26, '19:50'),
(383, 'Ingles', '6º3º', 'Toledo A.', 'Febrero', 23, '18:45'),
(384, 'Investigacion Operativa', '6º3º', 'Peral', 'Febrero', 26, '18:45'),
(385, 'Literatura', '6º3º', 'Jara Stella', 'Febrero', 27, '17:50'),
(386, 'Matematica Aplicada', '6º3º', 'Gonzales', 'Febrero', 22, '17:50'),
(387, 'Seguridad Informatica', '6º3º', 'Pennino', 'Febrero', 28, '18:45'),
(388, 'Educacion Fisica', '6º3º', 'Orellano', 'Febrero', 23, '9:00'),
(389, 'Sistemas Digitales', '6º3º', 'Bouquet Ariel', 'Febrero', 27, '19:50'),
(390, 'Proy. de Sistemas', '7º1º', 'Correa-Funes', 'Febrero', 26, '17:50'),
(391, 'Im. y R.Redes', '7º1º', 'Peral-Montes', 'Febrero', 27, '17:50'),
(392, 'Modelos y Sistemas', '7º1º', 'Bouquet Ariel', 'Febrero', 28, '17:50'),
(393, 'Eval. Proyectos', '7º1º', 'Elizondo Julio', 'Febrero', 28, '19:50'),
(394, 'Im. y R.Sistemas', '7º1º', 'Ramirez R.-Vera Aran', 'Febrero', 22, '17:50'),
(395, 'Base de Datos', '7º1º', 'Bouquet Ariel', 'Febrero', 23, '17:50'),
(396, 'Empren. Product. y DL.', '7º1º', 'Pas Dario', 'Febrero', 23, '19:50'),
(397, 'Proy. de Sistemas', '7º2º', 'Funes-Ramirez R.', 'Febrero', 27, '17:50'),
(398, 'Im. y R.Redes', '7º2º', 'Vera Aranda-Ramirez ', 'Febrero', 27, '17:50'),
(399, 'Modelos y Sistemas', '7º2º', 'Bouquet Ariel', 'Febrero', 23, '19:50'),
(401, 'Eval. Proyectos', '7º2º', 'Gomez Gustavo', 'Febrero', 22, '19:50'),
(402, 'Im. y R.Sistemas', '7º2º', 'Ramirez E.-Ramirez R', 'Febrero', 28, '17:50'),
(403, 'Base de Datos', '7º2º', 'Bouquet Ariel', 'Febrero', 22, '17:50'),
(404, 'Empren. Product. y DL.', '7º2º', 'Pas Dario', 'Febrero', 23, '17:50'),
(405, 'Proy. Soft. Plat. Moviles', '7º3º', 'Paparelli-Ferreyra', 'Febrero', 26, '17:50'),
(406, 'OrganizaciÃ²n y MÃ¨todo', '7º3º', 'Sciaini', 'Febrero', 23, '16:50'),
(407, 'Modelos y Sistemas', '7º3º', 'Collareda', 'Febrero', 23, '18:45'),
(408, 'Eval. Proyectos', '7º3º', 'Gonzales Matias', 'Febrero', 27, '19:50'),
(409, 'Sistemas Computacionales', '7º3º', 'Correa-Paz', 'Febrero', 28, '17:50'),
(410, 'Web Dinamicas', '7º3º', 'Perconti-Correa', 'Febrero', 22, '17:50'),
(411, 'Empren. Product. y DL.', '7º3º', 'Matias Gonzales', 'Febrero', 27, '17:50'),
(412, 'Sistemas Tecnològicos', '1º2º', 'Cejas-Querio', 'Marzo', 6, '7:30'),
(413, 'Procedimientos TÃ©cnicos', '1º2º', 'Insfran-Lopez B.', 'Marzo', 1, '7:30'),
(414, 'Lenguajes Tecnològicos', '1º2', 'Cabrera-Morel', 'Marzo', 1, '9:40'),
(415, 'Sistemas Tecnològicos', '1º3º', 'Hoogstra-Soria-Cabre', 'Marzo', 1, '7:30'),
(416, 'Procedimientos TÃ©cnicos', '1º3º', 'Geltiluomo-Soria', 'Marzo', 5, '7:30'),
(417, 'Lenguajes Tecnològicos', '1º3º', 'Funes-Hoogstra', 'Marzo', 1, '9:40'),
(418, 'Sistemas Tecnològicos', '2º2º', 'Lopez B.-Sayes', 'Marzo', 6, '9:40'),
(419, 'Procedimientos TÃ©cnicos', '2º2º', 'Peitti-Querio', 'Marzo', 2, '7:30'),
(420, 'Lenguajes Tecnològicos', '2º2º', 'Hoogstra-Abregu', 'Marzo', 6, '7:30'),
(421, 'Sistemas Tecnològicos', '2º3º', 'CastaÃ±o-Hoogstra', 'Marzo', 7, '7:30'),
(422, 'Procedimientos TÃ©cnicos', '2º3º', 'Peitti-Machado', 'Marzo', 5, '7:30'),
(423, 'Sistemas Tecnològicos', '3º1º', 'Soria-Carabajal', 'Marzo', 7, '7:30'),
(424, 'Procedimientos TÃ©cnicos', '3º1º', 'Lopez-Torrez', 'Marzo', 2, '7:30'),
(425, 'Lenguajes Tecnològicos', '3º1º', 'Domene-Rodriguez R.', 'Marzo', 2, '9:40'),
(426, 'Sistemas Tecnològicos', '3º3º', 'Rodriguez C.-Sayes', 'Marzo', 7, '7:30'),
(427, 'Procedimientos TÃ©cnicos', '3º3º', 'Yedro-Kupec', 'Marzo', 2, '9:40'),
(428, 'Lenguajes Tecnològicos', '3º3º', 'Abregu-Funes', 'Marzo', 2, '7:30'),
(429, 'Aplicaciones', '4º2º', 'Ramirez E.-Hoogstra', 'Marzo', 6, '9:40'),
(430, 'Hardware', '4º2º', 'Ramirez E.-Menta Val', 'Marzo', 5, '7:30'),
(431, 'Sistemas Operativos', '4º2º', 'Ramirez E.-Pennino', 'Marzo', 2, '7:30'),
(432, 'Programacion', '4º2º', 'Paz Karina-Navarro D', 'Marzo', 6, '7:30'),
(433, 'Aplicaciones', '4º4º', 'Ramirez E.-Menta Val', 'Febrero', 27, '7:30'),
(434, 'Hardware', '4º4º', 'Ramirez E.-Menta Val', 'Febrero', 28, '7:30'),
(435, 'Sistemas Operativos', '4º4º', 'Ramirez E.-Querio ', 'Marzo', 1, '7:30'),
(436, 'Programacion', '4º4º', 'Sanchez C.-Querio ', 'Marzo', 6, '9:40'),
(437, 'Lab. de Redes', '5º2º', 'Torrez-Abregu', 'Marzo', 5, '7:30'),
(438, 'Lab. de Web', '5º2º', 'Soria-Querio', 'Marzo', 5, '9:40'),
(439, 'Lab. de Programacion', '5º2º', 'Abregu-Querio', 'Marzo', 7, '7:30'),
(440, 'Lab. de Base de Datos', '5º2º', 'Paz Karina-Funes', 'Marzo', 7, '13:10'),
(441, 'Programacion', '5º4º', 'Funes D.', 'Marzo', 1, '7:30'),
(442, 'Aplicaciones', '5º4º', 'Ramirez R.', 'Marzo', 1, '15:20'),
(443, 'Hardware', '5º4º', 'Ramirez R.', 'Marzo', 5, '7:30'),
(444, 'Sistemas Operativos', '5º4º', 'Vera Aranda', 'Marzo', 6, '17:50'),
(445, 'Lab. Proc. Industriales', '6º2º', 'Peral-Kupec', 'Marzo', 6, '9:40'),
(446, 'Lab. Program. 3', '6º2º', 'Peral-Lupoli', 'Marzo', 2, '13:10'),
(447, 'Des. Apl. Web Estaticas', '6º2º', 'Peral-Bouquet', 'Junio', 5, '19:50'),
(448, 'Des. Apl. Web Dinamicas', '6º2º', 'Peral-Abregu', 'Marzo', 1, '7:30'),
(449, 'Sistemas Operativos', '6º3º', 'Ramirez R.-Ramirez E', 'Marzo', 6, '13:10'),
(450, 'Programacion', '6º3º', 'Paz-Funes', 'Marzo', 1, '15:20'),
(451, 'Aplicaciones', '6º3º', 'Ramirez R.-Pennino', 'Marzo', 1, '13:10'),
(452, 'Hardware', '6º3º', 'Ramirez R.-Bouquet', 'Marzo', 5, '13:10'),
(453, 'Sistemas Tecnològicos', '1º1º', 'Querio-Villanueva', 'Marzo', 7, '13:10'),
(454, 'Procedimientos TÃ©cnicos', '1º1º', 'Torrez-Fernandez L.', 'Marzo', 2, '13:10'),
(455, 'Lenguajes Tecnològicos', '1º1º', 'Funes-D.Gomez Gustav', 'Marzo', 7, '15:20'),
(456, 'Sistemas Tecnològicos', '1º4º', 'Ceresani-Cabrera', 'Marzo', 6, '15:20'),
(457, 'Procedimientos TÃ©cnicos', '1º4º', 'Menta-Fernandez C.', 'Marzo', 2, '15:20'),
(458, 'Lenguajes Tecnològicos', '1º4º', 'Funes-Garcia D.', 'Marzo', 6, '13:10'),
(459, 'Sistemas Tecnològicos', '2º1º', 'Gomez U.-Machado', 'Marzo', 7, '13:10'),
(460, 'Procedimientos TÃ©cnicos', '2º1º', 'Garcia S.-Peitti', 'Marzo', 5, '13:10'),
(461, 'Lenguajes Tecnològicos', '2º1º', 'Garcia D.-Ceresani', 'Marzo', 7, '15:20'),
(462, 'Sistemas Tecnològicos', '2º4º', 'Lupoli Butavand-Cabr', 'Marzo', 6, '13:10'),
(463, 'Procedimientos TÃ©cnicos', '2º4º', 'Narciso B.-Contreras', 'Marzo', 1, '13:10'),
(464, 'Lenguajes Tecnològicos', '2º4º', 'Garcia D.-Funes D.', 'Marzo', 6, '15:20'),
(465, 'Sistemas Tecnològicos', '3º2º', 'Domene-Machado', 'Marzo', 5, '13:10'),
(466, 'Procedimientos TÃ©cnicos', '3º2º', 'Torrez-Pennino', 'Marzo', 1, '15:20'),
(467, 'Lenguajes Tecnològicos', '3º2º', 'Funes-Estigarria Sil', 'Marzo', 1, '13:10'),
(468, 'Sistemas Tecnològicos', '3º4º', 'Marmol.Caiati', 'Marzo', 2, '13:10'),
(469, 'Procedimientos TÃ©cnicos', '3º4º', 'Gonzales Almeida-Pen', 'Marzo', 7, '13:10'),
(470, 'Lenguajes Tecnològicos', '3º4º', 'Kupec E.-Pennino', 'Marzo', 7, '15:20'),
(471, 'Aplicaciones', '4º1º', 'Sanchez-Soria', 'Marzo', 5, '13:10'),
(472, 'Hardware', '4º1º', 'Soria-Hoogstra', 'Marzo', 2, '13:10'),
(473, 'Sistemas Operativos', '4º1º', 'Soria-Querio', 'Marzo', 6, '13:10'),
(474, 'Programacion', '4º1º', 'Sanchez-Soria', 'Marzo', 5, '15:20'),
(475, 'Aplicaciones', '4º3º', 'Soria-Querio', 'Marzo', 27, '15:20'),
(476, 'Hardware', '4º3º', 'Hoogstra-Maugeri', 'Marzo', 1, '13:10'),
(477, 'Sistemas Operativos', '4º3º', 'Hoogstra-Maugeri', 'Marzo', 5, '13:10'),
(478, 'Programacion', '4º3º', 'Sanchez-Soria', 'Marzo', 7, '13:10'),
(479, 'Programacion', '5º1º', 'Funes-Bouquet', 'Marzo', 2, '10:50'),
(480, 'Aplicaciones', '5º1º', 'Garcia Damian-Contre', 'Marzo', 2, '16:30'),
(481, 'Hardware', '5º1º', 'Vera Aranda-Torrez', 'Marzo', 6, '13:10'),
(482, 'Sistemas Operativos', '5º1º', 'Querio-Abregu', 'Marzo', 5, '13:10'),
(483, 'Programacion', '5º3º', 'Funes-Bouquet', 'Marzo', 2, '13:10'),
(484, 'Aplicaciones', '5º3º', 'Abregu-Ramirez E.', 'Marzo', 2, '15:20'),
(485, 'Hardware', '5º3º', 'Kupec E.-Kupec P.', 'Marzo', 1, '13:10'),
(486, 'Sistemas Operativos', '5º3º', 'Ramirez E.-Ramirez R', 'Marzo', 6, '13:10'),
(487, 'Sistemas Operativos', '6º1º', 'Samaja-Ramirez R.', 'Marzo', 2, '17:50'),
(488, 'Programacion', '6º1º', 'Perez-Samaja', 'Marzo', 5, '17:50'),
(489, 'Aplicaciones', '6º1º', 'Perez-Montes', 'Marzo', 5, '19:50'),
(490, 'Hardware', '6º1º', 'Contreras-Abregu', 'Marzo', 7, '17:50'),
(491, 'Ciencias Sociales', '1º1º', 'Suss', 'Diciembre', 11, '7:30'),
(492, 'Const. De La Ciudadania', '1º1º', 'Da Silva', 'Diciembre', 15, '15:20'),
(493, 'Educacion Artistica', '1º1º', 'Guari', 'Diciembre', 13, '7:30'),
(494, 'Ingles', '1º1º', 'Vargas', 'Diciembre', 11, '9:40'),
(495, 'Matematica', '1º1º', 'Apaolaza', 'Diciembre', 12, '7:30'),
(497, 'Educacion Fisica', '1º1º', 'Romero G-Kowalczkuk', 'Diciembre', 14, '14:10'),
(498, 'Practicas del Lenguaje', '1º1º', 'Silva,G', 'Diciembre', 14, '7:30'),
(499, 'Ciencias Naturales', '1º4º', 'Villanueva', 'Diciembre', 13, '7:30'),
(500, 'Ciencias Sociales', '1º4º', 'Kondraciewicz', 'Diciembre', 13, '9:40'),
(501, 'Educacion Artistica', '1º4º', 'Guari', 'Diciembre', 14, '7:30'),
(502, 'Ingles', '1º4º', 'Amaya', 'Diciembre', 11, '7:30'),
(503, 'Matematica', '1º4º', 'Goynich', 'Diciembre', 12, '7:30'),
(504, 'Practicas del Lenguaje', '1º4º', 'Silva,G', 'Diciembre', 15, '9:40'),
(505, 'Educacion Fisica', '1º4º', 'Romero,S', 'Diciembre', 11, '13:10'),
(506, 'Const. De La Ciudadania', '1º4º', 'Neira,E', 'Diciembre', 15, '13:10'),
(507, 'Biologia', '2º1º', 'Aguirre', 'Diciembre', 12, '7:30'),
(508, 'Const. De La Ciudadania', '2º1º', 'Neira,E', 'Diciembre', 12, '11:50'),
(509, 'Educacion Artistica', '2º1º', 'Blanco', 'Diciembre', 13, '9:40'),
(510, 'Fisico-Quimica', '2º1º', 'Villanueva', 'Diciembre', 15, '9:40'),
(511, 'Geografia', '2º1º', 'Alcorta S.', 'Diciembre', 12, '9:40'),
(512, 'Historia', '2º1º', 'Kondraciewicz', 'Diciembre', 11, '7:30'),
(513, 'Ingles', '2º1º', 'Amaya', 'Diciembre', 15, '7:30'),
(514, 'Matematica', '2º1º', 'Malenda', 'Diciembre', 11, '9:40'),
(515, 'Practicas del Lenguaje', '2º1º', 'Luca,A.', 'Diciembre', 14, '7:30'),
(516, 'Educacion Fisica', '2º1º', 'Romero G-Kowalczkuk', 'Diciembre', 12, '16:00'),
(517, 'Biologia', '2º4º', 'Coronel,Lidia', 'Diciembre', 13, '9:40'),
(518, 'Const. De La Ciudadania', '2º4º', 'Murcia', 'Diciembre', 15, '9:40'),
(519, 'Educacion Artistica', '2º4º', 'Guari', 'Diciembre', 14, '9:40'),
(520, 'Fisico-Quimica', '2º4º', 'Jara Karina', 'Diciembre', 11, '11:50'),
(521, 'Geografia', '2º4º', 'Spienco', 'Diciembre', 15, '7:30'),
(522, 'Historia', '2º4º', 'Kondraciewicz', 'Diciembre', 12, '9:40'),
(523, 'Ingles', '2º4º', 'Amaya', 'Diciembre', 11, '9:40'),
(524, 'Matematica', '2º4º', 'Malenda', 'Diciembre', 13, '7:30'),
(525, 'Practicas del Lenguaje', '2º4º', 'Basoalto', 'Diciembre', 12, '7:30'),
(526, 'Educacion Fisica', '2º4º', 'Romero,S', 'Diciembre', 11, '14:00'),
(527, 'Biologia', '3º2º', 'Aguirre', 'Diciembre', 12, '9:40'),
(528, 'Const. De La Ciudadania', '3º2º', 'Peralta,M', 'Diciembre', 14, '7:30'),
(529, 'Educacion Artistica', '3º2º', 'Blanco', 'Diciembre', 11, '7:30'),
(530, 'Fisico-Quimica', '3º2º', 'Alegre', 'Diciembre', 15, '7:30'),
(531, 'Geografia', '3º2º', 'Planes Valeria', 'Diciembre', 11, '9:40'),
(532, 'Historia', '3º2º', 'Martinez,G.', 'Diciembre', 13, '9:40'),
(533, 'Ingles', '3º2º', 'Pieri Flavia', 'Diciembre', 12, '11:50'),
(534, 'Matematica', '3º2º', 'Malenda', 'Diciembre', 12, '7:30'),
(535, 'Practicas del Lenguaje', '3º2º', 'Nacimiento', 'Diciembre', 13, '7:30'),
(536, 'Educacion Fisica', '3º2º', 'Cómodo', 'Diciembre', 13, '14:10'),
(537, 'Biologia', '3º4º', 'Villanueva', 'Diciembre', 14, '7:30'),
(538, 'Const. De La Ciudadania', '3º4º', 'Peralta,M', 'Diciembre', 14, '9:40'),
(539, 'Educacion Artistica', '3º4º', 'Maurizi', 'Diciembre', 13, '7:30'),
(540, 'Fisico-Quimica', '3º4º', 'Lameiro', 'Diciembre', 11, '10:50'),
(541, 'Geografia', '3º4º', 'Spienco', 'Diciembre', 15, '9:40'),
(542, 'Historia', '3º4º', 'Suss', 'Diciembre', 11, '9:40'),
(543, 'Ingles', '3º4º', 'Leiva', 'Diciembre', 13, '9:40'),
(544, 'Matematica', '3º4º', 'Malenda', 'Diciembre', 12, '9:40'),
(545, 'Practicas del Lenguaje', '3º4º', 'Jara', 'Diciembre', 11, '7:30'),
(546, 'Educacion Fisica', '3º4º', 'Orellano', 'Diciembre', 12, '15:15'),
(547, 'Fisica', '4º1º', 'Preves A.', 'Diciembre', 12, '7:30'),
(548, 'Geografia', '4º1º', 'Sena', 'Diciembre', 14, '9:40'),
(549, 'Historia', '4º1º', 'Barreto', 'Diciembre', 13, '7:30'),
(550, 'Ingles', '4º1º', 'Prino,S.', 'Diciembre', 11, '7:30'),
(551, 'Literatura', '4º1º', 'Basoalto - Silva', 'Diciembre', 15, '7:30'),
(552, 'Matematica', '4º1º', 'Goynich', 'Diciembre', 12, '9:40'),
(553, 'Quimica', '4º1º', 'Alegre,D.', 'Diciembre', 15, '9:40'),
(554, 'Salud Y Adolescencia', '4º1º', 'Villanueva', 'Diciembre', 13, '9:40'),
(555, 'Tec. Electronicas', '4º1º', 'Russo,M.', 'Diciembre', 14, '7:30'),
(556, 'Educacion Fisica', '4º1º', 'Orellano', 'Diciembre', 14, '15:00'),
(557, 'Fisica', '4º3º', 'Preves A.', 'Diciembre', 12, '9:40'),
(558, 'Geografia', '4º3º', 'Romero,J.', 'Diciembre', 15, '9:40'),
(559, 'Historia', '4º3º', 'Kondraciewicz', 'Diciembre', 14, '10:50'),
(560, 'Ingles', '4º3º', 'Leiva', 'Diciembre', 13, '7:30'),
(561, 'Literatura', '4º3º', 'Basoalto', 'Diciembre', 13, '9:40'),
(562, 'Matematica', '4º3º', 'Goynich', 'Diciembre', 11, '7:30'),
(563, 'Quimica', '4º3º', 'Valdivieso', 'Diciembre', 11, '9:40'),
(564, 'Salud Y Adolescencia', '4º3º', 'Villanueva', 'Diciembre', 15, '7:30'),
(565, 'Tec. Electronicas', '4º3º', 'Tejerina', 'Diciembre', 12, '7:30'),
(566, 'Educacion Fisica', '4º3º', 'Orellano', 'Diciembre', 12, '13:15'),
(567, 'Analisis Matematico', '5º1º', 'Aranda,Alejandra', 'Diciembre', 11, '7:30'),
(568, 'Geografia', '5º1º', 'Reynaldo,G', 'Diciembre', 15, '9:40'),
(569, 'Historia', '5º1º', 'Kondraciewicz', 'Diciembre', 11, '9:40'),
(570, 'Ingles', '5º1º', 'Linzoaí­n,Mariela', 'Diciembre', 12, '7:30'),
(571, 'Literatura', '5º1º', 'Juarez,L', 'Diciembre', 13, '7:30'),
(572, 'Politica y Ciudadania', '5º1º', 'Pila,Patricia', 'Diciembre', 12, '9:40'),
(573, 'Sistemas Digitales', '5º1º', 'Russo,M.', 'Diciembre', 14, '9:40'),
(574, 'Teleinformatica', '5º1º', 'Paz,Karina', 'Diciembre', 15, '7:30'),
(575, 'Educacion Fisica', '5º1º', 'Rissel', 'Diciembre', 13, '15:00'),
(576, 'Analisis Matematico', '5º3º', 'Malenda', 'Diciembre', 11, '7:30'),
(577, 'Geografia', '5º3º', 'Spienco', 'Diciembre', 14, '7:30'),
(578, 'Historia', '5º3º', 'Cancinos', 'Diciembre', 13, '7:30'),
(579, 'Ingles', '5º3º', 'Cantero,Y.', 'Diciembre', 15, '9:40'),
(580, 'Literatura', '5º3º', 'Basoalto', 'Diciembre', 14, '9:40'),
(581, 'Politica y Ciudadania', '5º3º', 'Pila,Patricia', 'Diciembre', 12, '7:30'),
(582, 'Sistemas Digitales', '5º3º', 'Rodriguez,Carlos', 'Diciembre', 12, '9:40'),
(583, 'Teleinformatica', '5º3º', 'Rodriguez,Romina', 'Diciembre', 15, '7:30'),
(584, 'Educacion Fisica', '5º3º', 'Risel', 'Diciembre', 13, '13:10'),
(585, 'Arte', '6º1º', 'Vilte', 'Diciembre', 14, '17:00'),
(586, 'Derecho del Trabajo', '6º1º', 'Morais,Leandro', 'Diciembre', 12, '7:30'),
(587, 'Filosofia', '6º1º', 'Ferrari,D', 'Diciembre', 15, '9:40'),
(588, 'Ingles', '6º1º', 'Cantero,Y.', 'Diciembre', 15, '7:30'),
(589, 'Investigacion Operativa', '6º1º', 'Peral,Duilio', 'Diciembre', 11, '7:30'),
(590, 'Literatura', '6º1º', 'Medina', 'Diciembre', 12, '9:40'),
(591, 'Matematica Aplicada', '6º1º', 'Calderon', 'Diciembre', 11, '9:40'),
(592, 'Seguridad Informatica', '6º1º', 'Pennino', 'Diciembre', 14, '18:45'),
(593, 'Educacion Fisica', '6º1º', 'Orellano', 'Diciembre', 14, '13:00'),
(594, 'Ciencias Naturales', '1º1º', 'Apaolaza', 'Diciembre', 12, '9:40'),
(595, 'Sistemas Digitales', '6º1º', 'Elizondo', 'Diciembre', 12, '17:50'),
(596, 'Ciencias Naturales', '1º2º', 'Coronel Lidia', 'Diciembre', 13, '13:10'),
(597, 'Ciencias Sociales', '1º2º', 'Ibarra E.', 'Diciembre', 11, '15:20'),
(598, 'Educacion Artìstica', '1º2º', 'Durante A.', 'Diciembre', 12, '15:20'),
(599, 'Ingles', '1º2º', 'Paz Solange', 'Diciembre', 13, '15:20'),
(600, 'Matematica', '1º2º', 'Paz Karina', 'Diciembre', 11, '13:10'),
(601, 'Educacion Fisica', '1º2º', 'Rissel', 'Diciembre', 13, '10:00'),
(602, 'Practicas del Lenguaje', '1º2º', 'Silva', 'Diciembre', 15, '13:10'),
(603, 'Constr. de la Ciudadania', '1º2º', 'Neira', 'Diciembre', 12, '9:40'),
(604, 'Ciencias Naturales', '1º3º', 'Coronel Lidia', 'Diciembre', 13, '15:00'),
(605, 'Ciencias Sociales', '1º3º', 'Lopez Alejandra', 'Diciembre', 11, '13:10'),
(606, 'Educacion Artìstica', '1º3º', 'Durante A.', 'Diciembre', 12, '13:10'),
(607, 'Ingles', '1º3º', 'Carrozo E.', 'Diciembre', 13, '13:10'),
(608, 'Matematica', '1º3º', 'Lavallen C.', 'Diciembre', 15, '15:20'),
(609, 'Educacion Fisica', '1º3º', 'Rodriguez A.', 'Diciembre', 12, '10:15'),
(610, 'Practicas del Lenguaje', '1º3º', 'Montoya P.', 'Diciembre', 14, '15:20'),
(611, 'Constr. de la Ciudadania', '1º3º', 'Neira E.', 'Diciembre', 11, '9:40'),
(612, 'Biologia', '2º2º', 'Coronel Lidia', 'Diciembre', 14, '13:10'),
(613, 'Constr. de la Ciudadania', '2º2º', 'Peralta M.', 'Diciembre', 11, '12:10'),
(614, 'Educacion Artìstica', '2º2º', 'Alegre', 'Diciembre', 11, '15:20'),
(615, 'Fisico-Quimica', '2º2º', 'Villanueva', 'Diciembre', 15, '15:20'),
(616, 'Geografia', '2º2º', 'Reynaldo G.', 'Diciembre', 12, '15:20'),
(617, 'Historia', '2º2º', 'Suss', 'Diciembre', 13, '15:20'),
(618, 'Ingles', '2º2º', 'Vargas Cala', 'Diciembre', 15, '13:10'),
(619, 'Matematica', '2º2º', 'Lavallen C.', 'Diciembre', 12, '13:10'),
(620, 'Practicas del Lenguaje', '2º2º', 'Bejarano Esther', 'Diciembre', 11, '13:10'),
(621, 'Educacion Fisica', '2º2º', 'Romero S.', 'Diciembre', 11, '8:30'),
(622, 'Biologia', '2º3º', 'Coronel Lidia', 'Diciembre', 14, '12:10'),
(623, 'Constr. de la Ciudadania', '2º3º', 'Da Silva', 'Diciembre', 14, '15:20'),
(624, 'Educacion Artìstica', '2º3º', 'Durante A.', 'Diciembre', 11, '15:20'),
(625, 'Fisico-Quimica', '2º3º', 'Cuadra Diego', 'Diciembre', 13, '13:10'),
(627, 'Geografia', '2º3º', 'Jimenez  N.', 'Diciembre', 12, '15:20'),
(628, 'Historia', '2º3º', 'Ibarra E.', 'Diciembre', 11, '13:10'),
(629, 'Ingles', '2º3º', 'Carrozo E.', 'Diciembre', 15, '13:10'),
(630, 'Matematica', '2º3º', 'Goynich', 'Diciembre', 1, '13:10'),
(631, 'Practicas del Lenguaje', '2º3º', 'Montoya', 'Diciembre', 15, '15:20'),
(632, 'Educacion Fisica', '2º3º', 'Velazquez M.', 'Diciembre', 12, '8:00'),
(633, 'Biologia', '3º1º', 'Aguirre', 'Diciembre', 11, '15:20'),
(634, 'Constr. de la Ciudadania', '3º1º', 'Neira E.', 'Diciembre', 11, '7:30'),
(635, 'Educacion Artìstica', '3º1º', 'Durante A.', 'Diciembre', 11, '13:10'),
(636, 'Fisico-Quimica', '3º1º', 'Villanueva', 'Diciembre', 13, '15:20'),
(637, 'Geografia', '3º1º', 'Veliz G.', 'Diciembre', 14, '15:20'),
(638, 'Historia', '2º3º', 'Bastìas Juan', 'Diciembre', 13, '15:20'),
(639, 'Ingles', '3º1º', 'Paz Solange', 'Diciembre', 12, '13:10'),
(640, 'Matematica', '3º1º', 'Lavallen C.', 'Diciembre', 15, '13:10'),
(641, 'Practicas del Lenguaje', '3º1º', 'Moreyra Lidia', 'Diciembre', 15, '15:20'),
(642, 'Educacion Fisica', '3º1º', 'Miranda', 'Diciembre', 12, '11:00'),
(643, 'Biologia', '3º3º', 'Coronel Lidia', 'Diciembre', 11, '13:10'),
(644, 'Constr. de la Ciudadania', '3º3º', 'Silva G.', 'Diciembre', 15, '15:20'),
(645, 'Educacion Artìstica', '3º3º', 'Claros Sandra', 'Diciembre', 14, '12:10'),
(646, 'Fisico-Quimica', '3º3º', 'Valdivieso Fernando', 'Diciembre', 13, '13:10'),
(647, 'Geografia', '3º3º', 'Pacheco D.', 'Diciembre', 12, '12:10'),
(648, 'Historia', '3º3º', 'Ibarra E.', 'Diciembre', 12, '13:10'),
(649, 'Ingles', '3º3º', 'Toledo A.', 'Diciembre', 12, '15:20'),
(650, 'Matematica', '3º3º', 'Aranda Alejandra', 'Diciembre', 11, '15:20'),
(651, 'Practicas del Lenguaje', '3º3º', 'Pereyra N.', 'Diciembre', 14, '15:20'),
(652, 'Educacion Fisica', '3º3º', 'Miranda C.', 'Diciembre', 12, '10:00'),
(653, 'Fisica', '4º2º', 'Viazzi L.', 'Diciembre', 13, '15:20'),
(654, 'Geografia', '4º2º', 'Planes Valeria', 'Diciembre', 12, '13:10'),
(655, 'Historia', '4º2º', 'Volpe Patricia', 'Diciembre', 11, '13:10'),
(656, 'Ingles', '4º2º', 'Pieri', 'Diciembre', 15, '15:20'),
(657, 'Literatura', '4º2º', 'Basoalto', 'Diciembre', 14, '13:10'),
(658, 'Matematica', '4º2º', 'Goynich', 'Diciembre', 12, '15:20'),
(659, 'Quimica', '4º2º', 'Alessi', 'Diciembre', 13, '13:10'),
(660, 'Salud y Adolescencia', '4º2º', 'Villanueva', 'Diciembre', 15, '13:10'),
(661, 'Tecnologias Electronicas', '4º2º', 'Lupoli Butavand', 'Diciembre', 11, '15:20'),
(662, 'Educacion Fisica', '4º2º', 'Miranda', 'Diciembre', 14, '8:00'),
(663, 'Fisica', '4º4º', 'Ostapchuk Daniela', 'Diciembre', 15, '13:10'),
(664, 'Geografia', '4º4º', 'Planes Valeria', 'Diciembre', 14, '15:20'),
(665, 'Historia', '4º4º', 'Bastìas ', 'Diciembre', 14, '13:10'),
(666, 'Ingles', '4º4º', 'Amaya', 'Diciembre', 11, '15:20'),
(667, 'Literatura', '4º4º', 'Silva G.', 'Diciembre', 13, '13:10'),
(668, 'Matematica', '4º4º', 'Aranda Alejandra', 'Diciembre', 11, '13:10'),
(669, 'Quimica', '4º4º', 'Lameiro', 'Diciembre', 13, '15:20'),
(670, 'Salud y Adolescencia', '4º4º', 'Astudillo Analia', 'Diciembre', 12, '15:20'),
(671, 'Tecnologias Electronicas', '4º4º', 'Alcetegaray', 'Diciembre', 12, '13:10'),
(672, 'Educacion Fisica', '4º4º', 'Rissel', 'Diciembre', 15, '8:00'),
(673, 'Analisis Matematica', '5º2º', 'Aranda Alejandra', 'Diciembre', 14, '15:20'),
(674, 'Geografia', '5º2º', 'Jimenez  N.', 'Diciembre', 11, '15:20'),
(675, 'Historia', '5º2º', 'Vulcano Carlos', 'Diciembre', 14, '13:10'),
(676, 'Ingles', '5º2º', 'Correia Claudia', 'Diciembre', 12, '13:10'),
(677, 'Literatura', '5º2º', 'Sancho Belen', 'Diciembre', 11, '13:10'),
(678, 'Politica y Ciudadania', '5º2º', 'Suss', 'Diciembre', 15, '13:10'),
(679, 'Sistemas Digitales', '5º2º', 'Kupec', 'Diciembre', 15, '7:30'),
(680, 'Modelos y Sistemas', '5º2º', 'Rodriguez Carlos', 'Diciembre', 12, '15:20'),
(681, 'Base de Datos', '5º2º', 'Paz Karina', 'Diciembre', 13, '13:10'),
(682, 'Educacion Fisica', '5º2º', 'Miranda', 'Diciembre', 12, '8:00'),
(683, 'Analisis Matematica', '5º4º', 'Nocetti', 'Diciembre', 13, '13:10'),
(684, 'Geografia', '5º4º', 'Planes Valeria', 'Diciembre', 14, '13:10'),
(685, 'Historia', '5º4º', 'Martinez Rosana', 'Diciembre', 13, '12:10'),
(686, 'Ingles', '5º4º', 'Aquino Campos', 'Diciembre', 13, '15:20'),
(687, 'Literatura', '5º4º', 'Ramirez Hernan', 'Diciembre', 15, '13:10'),
(688, 'Politica y Ciudadania', '5º4º', 'Peralta M.', 'Diciembre', 11, '13:10'),
(689, 'Sistemas Digitales', '5º4º', 'Rodriguez Carlos', 'Diciembre', 12, '13:10'),
(690, 'Teleinformatica', '5º4º', 'Perez Osmar', 'Diciembre', 15, '15:20'),
(691, 'Educacion Fisica', '5º4º', 'Rissel', 'Diciembre', 13, '8:00'),
(692, 'Arte', '6º2º', 'Maurizi', 'Diciembre', 13, '17:50'),
(693, 'Derecho del Trabajo', '6º2º', 'Guerra Ramon', 'Diciembre', 13, '19:50'),
(694, 'Filosofia', '6º2º', 'Colautti', 'Diciembre', 11, '17:50'),
(695, 'Ingles', '6º2º', 'Amaya', 'Diciembre', 12, '17:50'),
(696, 'Sistemas Digitales', '6º2º', 'Kupec P.', 'Diciembre', 12, '7:30'),
(697, 'Literatura', '6º2º', 'Basoalto', 'Diciembre', 15, '17:50'),
(698, 'Matematica Discreta', '6º2º', 'Lopez Hilda', 'Diciembre', 14, '14:10'),
(699, 'Sist. de Gestion y Autogestion', '6º2º', 'Peral ', 'Diciembre', 14, '18:45'),
(700, 'Educacion Fisica', '6º2º', 'Rodriguez A.', 'Diciembre', 11, '13:00'),
(701, 'Seguridad Informatica', '6º2º', 'Pennino', 'Diciembre', 12, '19:50'),
(702, 'Arte', '6º3º', 'Blanco Gustavo', 'Diciembre', 15, '13:10'),
(703, 'Derecho del Trabajo', '6º3º', 'Pas Dario', 'Diciembre', 14, '19:50'),
(704, 'Filosofia', '6º3º', 'Suarez', 'Diciembre', 11, '19:50'),
(705, 'Ingles', '6º3º', 'Toledo A.', 'Diciembre', 15, '18:45'),
(706, 'Investigacion Operativa', '6º3º', 'Peral', 'Diciembre', 11, '18:45'),
(707, 'Literatura', '6º3º', 'Jara Stella', 'Diciembre', 12, '17:50'),
(708, 'Matematica Aplicada', '6º3º', 'Gonzales', 'Diciembre', 14, '17:50'),
(709, 'Seguridad Informatica', '6º3º', 'Pennino', 'Diciembre', 13, '18:45'),
(710, 'Educacion Fisica', '6º3º', 'Orellano', 'Diciembre', 15, '9:00'),
(711, 'Sistemas Digitales', '6º3º', 'Bouquet Ariel', 'Diciembre', 12, '19:50'),
(712, 'Proy. de Sistemas', '7º1º', 'Correa-Funes', 'Diciembre', 11, '17:50'),
(713, 'Im. y R.Redes', '7º1º', 'Peral-Montes', 'Diciembre', 12, '17:50'),
(714, 'Modelos y Sistemas', '7º1º', 'Bouquet Ariel', 'Diciembre', 13, '17:50'),
(715, 'Eval. Proyectos', '7º1º', 'Elizondo Julio', 'Diciembre', 13, '19:50'),
(716, 'Im. y R.Sistemas', '7º1º', 'Ramirez R.-Vera Aran', 'Diciembre', 14, '17:50'),
(717, 'Base de Datos', '7º1º', 'Bouquet Ariel', 'Diciembre', 15, '17:50'),
(718, 'Empren. Product. y DL.', '7º1º', 'Pas Dario', 'Diciembre', 15, '19:50'),
(719, 'Proy. de Sistemas', '7º2º', 'Funes-Ramirez R.', 'Diciembre', 12, '17:50'),
(720, 'Im. y R.Redes', '7º2º', 'Vera Aranda-Ramirez ', 'Diciembre', 13, '17:50'),
(721, 'Modelos y Sistemas', '7º2º', 'Bouquet Ariel', 'Diciembre', 15, '19:50'),
(722, 'Eval. Proyectos', '7º2º', 'Gomez Gustavo', 'Diciembre', 14, '19:50'),
(723, 'Im. y R.Sistemas', '7º2º', 'Ramirez E.-Ramirez R', 'Diciembre', 13, '17:50'),
(724, 'Base de Datos', '7º2º', 'Bouquet Ariel', 'Diciembre', 13, '16:30'),
(725, 'Empren. Product. y DL.', '7º2º', 'Pas Dario', 'Diciembre', 15, '17:50'),
(726, 'Proy. Soft. Plat. Moviles', '7º3º', 'Paparelli-Ferreyra', 'Diciembre', 11, '17:50'),
(727, 'OrganizaciÃ²n y MÃ¨todo', '7º3º', 'Sciaini', 'Diciembre', 15, '16:50'),
(728, 'Modelos y Sistemas', '7º3º', 'Collareda', 'Diciembre', 15, '19:50'),
(729, 'Eval. Proyectos', '7º3º', 'Gonzales Matias', 'Diciembre', 12, '19:50'),
(730, 'Sistemas Computacionales', '7º3º', 'Paz Karina-Correa', 'Diciembre', 13, '17:50'),
(731, 'Web Dinamicas', '7º3º', 'Perconti-Correa', 'Diciembre', 14, '17:50'),
(732, 'Empren. Product. y DL.', '7º3º', 'Gonzales Matias', 'Diciembre', 12, '17:50'),
(733, 'Sist. Tecnologicos', '1º2º', 'Cejas-Querio', 'Diciembre', 19, '7:30'),
(734, 'Proc. Tecnicos', '1º2º', 'Insfran-Lopez,B', 'Diciembre', 21, '7:30'),
(735, 'Leng. Tecnologicos', '1º2º', 'Cabrera-Morel', 'Diciembre', 21, '9:40'),
(736, 'Sist. Tecnologicos', '1º3º', 'Hoogstra-Soria/Cabre', 'Diciembre', 21, '7:30'),
(737, 'Proc. Tecnicos', '1º3º', 'Geltiluomo- Soria', 'Diciembre', 18, '7:30'),
(738, 'Leng. Tecnologicos', '1º3º', 'Funes-Hoogstra', 'Diciembre', 21, '9:40'),
(739, 'Sist. Tecnologicos', '2º2º', 'Lopez,B-Sayes', 'Diciembre', 19, '9:40'),
(740, 'Proc. Tecnicos', '2º2º', 'Peitti-Querio', 'Diciembre', 22, '7:30'),
(741, 'Leng. Tecnologicos', '2º2º', 'Hoogstra-Abregu', 'Diciembre', 19, '7:30'),
(742, 'Sist. Tecnologicos', '2º3º', 'Castaño-Hoogstra', 'Diciembre', 20, '7:30'),
(743, 'Proc. Tecnicos', '2º3º', 'Peitti-Machado', 'Diciembre', 18, '7:30'),
(744, 'Leng. Tecnologicos', '2º3º', 'Castaño-Hoogstra', 'Diciembre', 20, '9:40'),
(745, 'Sist. Tecnologicos', '3º1º', 'Soria-Carabajal', 'Diciembre', 20, '7:30'),
(746, 'Proc. Tecnicos', '3º1º', 'Lopez-Torrez', 'Diciembre', 22, '7:30'),
(747, 'Leng. Tecnologicos', '3º1º', 'Domene-Rodriguez,R', 'Diciembre', 22, '9:40'),
(748, 'Sist. Tecnologicos', '3º3º', 'Rodriguez,C-Sayes', 'Diciembre', 20, '7:30'),
(749, 'Proc. Tecnicos', '3º3º', 'Yedro-Kupec', 'Diciembre', 22, '9:40'),
(750, 'Leng. Tecnologicos', '3º3º', 'Abregu-Funes', 'Diciembre', 22, '7:30'),
(751, 'Sist. Tecnologicos', '1º1º', 'Querio,V-Villanueva', 'Diciembre', 20, '13:10'),
(752, 'Proc. Tecnicos', '1º1º', 'Torrez-Fernandez,L', 'Diciembre', 22, '13:10'),
(753, 'Leng. Tecnologicos', '1º1º', 'Funes,D-Gomez Gustav', 'Diciembre', 20, '15:20'),
(754, 'Sist. Tecnologicos', '1º4º', 'Ceresani-Cabrera', 'Diciembre', 19, '15:20'),
(755, 'Proc. Tecnicos', '1º4º', 'Menta-Fernandez,C', 'Diciembre', 22, '15:20'),
(756, 'Leng. Tecnologicos', '1º4º', 'Funes-Garcia,D', 'Diciembre', 19, '13:10'),
(757, 'Sist. Tecnologicos', '2º1º', 'Gomez,U-Machado', 'Diciembre', 21, '13:10'),
(758, 'Proc. Tecnicos', '2º1º', 'Garcia,S-Peitti', 'Diciembre', 18, '13:10'),
(759, 'Leng. Tecnologicos', '2º1º', 'Garcia,D-Ceresani', 'Diciembre', 20, '15:20'),
(760, 'Sist. Tecnologicos', '2º4º', 'Lupoli-Cabrera', 'Diciembre', 19, '13:10'),
(761, 'Proc. Tecnicos', '2º4º', 'Narciso,B-Conteras', 'Diciembre', 21, '13:10'),
(762, 'Leng. Tecnologicos', '2º4º', 'Garcia,D-Funes,D', 'Diciembre', 19, '15:20'),
(763, 'Sist. Tecnologicos', '3º2º', 'Domene-Machado', 'Diciembre', 18, '13:10'),
(764, 'Proc. Tecnicos', '3º2º', 'Torrez-Pennino', 'Diciembre', 21, '15:20'),
(765, 'Leng. Tecnologicos', '3º2º', 'Funes-Estigarria Sil', 'Diciembre', 21, '13:10'),
(766, 'Sist. Tecnologicos', '3º4º', 'Marmol,Caiati', 'Diciembre', 22, '13:10'),
(767, 'Proc. Tecnicos', '3º4º', 'Gonzalez Almeida-Pen', 'Diciembre', 20, '13:10'),
(768, 'Leng. Tecnologicos', '3º4º', 'Sbarbati-Yedro-Penni', 'Diciembre', 20, '15:20'),
(769, 'Aplicaciones', '4º1º', 'Sanchez-Soria', 'Diciembre', 18, '13:10'),
(770, 'Hardware', '4º1º', 'Soria-Hoogstra', 'Diciembre', 22, '13:10'),
(771, 'Sistemas Operativos', '4º1º', 'Soria-Querio', 'Diciembre', 19, '13:10'),
(772, 'Programacion', '4º1º', 'Sanchez-Soria', 'Diciembre', 18, '15:20'),
(773, 'Aplicaciones', '4º3º', 'Soria-Querio', 'Diciembre', 18, '13:10'),
(774, 'Hardware', '4º3º', 'Hoogstra-Maugeri', 'Diciembre', 18, '13:10'),
(775, 'Sistemas Operativos', '4º3º', 'Hoogstra-Maugeri', 'Diciembre', 18, '13:10'),
(776, 'Programacion', '4º3º', 'Sanchez-Soria', 'Diciembre', 20, '13:10'),
(777, 'Programacion', '5º1º', 'Funes-Bouquet', 'Diciembre', 22, '10:50'),
(778, 'Aplicaciones', '5º1º', 'Garcia,Damian-Contre', 'Diciembre', 22, '17:10'),
(779, 'Hardware', '5º1º', 'Vera Aranda-Torrez', 'Diciembre', 19, '13:10'),
(780, 'Sistemas Operativos', '5º1º', 'Querio,V-Abregu', 'Diciembre', 18, '13:10'),
(781, 'Programacion', '5º3º', 'Funes-Bouquet', 'Diciembre', 22, '13:10'),
(782, 'Aplicaciones', '5º3º', 'Abregu-Ramirez,Elsa', 'Diciembre', 22, '15:20'),
(783, 'Hardware', '5º3º', 'Kupec E,Kupec P', 'Diciembre', 21, '13:10'),
(784, 'Sistemas Operativos', '5º3º', 'Ramirez-Ramirez', 'Diciembre', 19, '13:10'),
(785, 'Sistemas Operativos', '6º1º', 'Samaja-Ramirez,Ric.', 'Diciembre', 22, '17:50'),
(786, 'Programacion', '6º1º', 'Perez-Samaja', 'Diciembre', 18, '17:50'),
(787, 'Aplicaciones', '6º1º', 'Perez-Montes', 'Diciembre', 18, '19:50'),
(788, 'Hardware', '6º1º', 'Contreras-Abregu', 'Diciembre', 20, '17:50'),
(789, 'Historia', '3º1º', 'Bastías, Juan', 'Diciembre', 13, '13:10'),
(790, 'Aplicaciones', '4º2º', 'Ramirez - Hoogstra', 'Diciembre', 19, '9:40'),
(791, 'Hardware', '4º2º', 'Ramirez - Menta Vale', 'Diciembre', 18, '7:30'),
(792, 'Sistemas Operativos', '4º2º', 'Ramirez Elsa - Penni', 'Diciembre', 20, '7:30'),
(793, 'Programación', '4º2º', 'Paz Karina - Navarro', 'Diciembre', 19, '7:30'),
(794, 'Aplicaciones', '4º4º', 'Ramirez - Menta Vale', 'Diciembre', 19, '7:30'),
(795, 'Hardware', '4º4º', 'Ramirez - Menta Vale', 'Diciembre', 19, '7:30'),
(796, 'Sistemas Operativos', '4º4º', 'Ramirez Elsa - Queri', 'Diciembre', 21, '7:30'),
(797, 'Programación', '4º4º', 'Sanchez C - Querio V', 'Diciembre', 19, '9:40'),
(798, 'Laboratorio de Redes', '5º2º', 'Torrez - Abregú', 'Diciembre', 18, '7:30'),
(799, 'Diseño Web', '5º2º', 'Soria - Querio', 'Diciembre', 18, '9:40'),
(800, 'Laboratorio de Programación', '5º2º', 'Abregu - Querio', 'Diciembre', 20, '7:30'),
(801, 'Laboratorio de Base de Datos', '5º2º', 'Paz Karina - Funes', 'Diciembre', 20, '13:10'),
(802, 'Programación', '5º4º', 'Funes Dario', 'Diciembre', 21, '7:30'),
(803, 'Aplicaciones', '5º4º', 'Ramirez R.', 'Diciembre', 21, '15:20'),
(804, 'Hardware', '5º4º', 'Ramirez R.', 'Diciembre', 18, '7:30'),
(805, 'Sistemas Operativos', '5º4º', 'Vera Aranda Diego', 'Diciembre', 19, '17:50'),
(806, 'Laboratorio Procesos Industria', '6º2º', 'Peral - Kupec', 'Diciembre', 19, '9:40'),
(807, 'Programación 3', '6º2º', 'Peral - Lupoli', 'Diciembre', 22, '13:10'),
(808, 'Desarrollo Web Estáticas', '6º2º', 'Peral - Bouquet', 'Diciembre', 18, '19:50'),
(809, 'Desarrollo Web Dinámicas', '6º2º', 'Peral - Abregú', 'Diciembre', 21, '7:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla1`
--

CREATE TABLE `tabla1` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tabla1`
--

INSERT INTO `tabla1` (`id`, `name`) VALUES
(0, 'diego'),
(0, 'pepe'),
(0, 'juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`id`, `name`, `is_favorite`, `user_id`) VALUES
(1, '7Âº3', 0, 1),
(2, '6Âº2Âº', 0, 1),
(3, '5Âº2Âº', 0, 2),
(7, '6to 1ra seguridad inforn', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `lastname`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'admin', '', '', '', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2010-05-06 01:01:50'),
(2, 'nicolino85', 'Nicolas', 'arroyo', '', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 1, 0, '2010-05-06 02:00:18'),
(3, 'profe', 'profe', 'profe', '', 'de420af1149f207e4132ca748965c6902e64ce4a', 1, 0, '2017-09-12 16:53:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `passwd` varchar(32) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `passwd`, `email`, `rol`) VALUES
(11, 'diego', '6dc4c37ad7f304b03c0890ba194cc6a1', 'diego@vera', 'preceptor'),
(13, 'marcos', 'c20ad4d76fe97759aa27a0c99bff6710', 'bogadomarcos0@gmail.com', 'preceptor'),
(14, 'marcos2', 'c20ad4d76fe97759aa27a0c99bff6710', 'bogadomarcos0@', 'profesor'),
(15, 'diegoestudiante', '6dc4c37ad7f304b03c0890ba194cc6a1', 'diegoestudiante', 'estudiante'),
(16, 'diegoprofesor', '6dc4c37ad7f304b03c0890ba194cc6a1', 'diegoprofesor', 'profesor'),
(17, 'nicolas', '81dc9bdb52d04dc20036dbd8313ed055', 'nicolas@arroyo', 'preceptor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `calification`
--
ALTER TABLE `calification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumn_id` (`alumn_id`),
  ADD KEY `block_id` (`block_id`);

--
-- Indices de la tabla `equivalencia`
--
ALTER TABLE `equivalencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_mat`);

--
-- Indices de la tabla `mesaprevia`
--
ALTER TABLE `mesaprevia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesaregular`
--
ALTER TABLE `mesaregular`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumn`
--
ALTER TABLE `alumn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `behavior`
--
ALTER TABLE `behavior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `calification`
--
ALTER TABLE `calification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `equivalencia`
--
ALTER TABLE `equivalencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_mat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT de la tabla `mesaprevia`
--
ALTER TABLE `mesaprevia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT de la tabla `mesaregular`
--
ALTER TABLE `mesaregular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=810;
--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD CONSTRAINT `alumn_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  ADD CONSTRAINT `alumn_team_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `alumn_team_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `assistance`
--
ALTER TABLE `assistance`
  ADD CONSTRAINT `assistance_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `assistance_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `behavior`
--
ALTER TABLE `behavior`
  ADD CONSTRAINT `behavior_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `behavior_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `block`
--
ALTER TABLE `block`
  ADD CONSTRAINT `block_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Filtros para la tabla `calification`
--
ALTER TABLE `calification`
  ADD CONSTRAINT `calification_ibfk_1` FOREIGN KEY (`alumn_id`) REFERENCES `alumn` (`id`),
  ADD CONSTRAINT `calification_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `block` (`id`);

--
-- Filtros para la tabla `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
