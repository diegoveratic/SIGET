-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2010 a las 05:45:51
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `xoolar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn`
--

CREATE TABLE `alumn` (
  `id` int(11) NOT NULL,
  `id_cursomat` int(15) NOT NULL,
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

INSERT INTO `alumn` (`id`, `id_cursomat`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `sexo`, `dni`, `nacimientofecha`, `nacimientolugar`, `cp`, `legajo`, `edad`, `nacionalidad`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `c2_fullname`, `c2_address`, `c2_phone`, `c2_note`, `is_active`, `created_at`, `user_id`) VALUES
(1, 0, '', 'Nicolas', 'Arroyo', 'nicolasarroyo74@gmail.com', '127', '12345', '', '', '', '', 0, 0, 0, '', 'Nicolas Arroyo', '127', '12345', 'Programador', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:06:59', 1),
(2, 0, '', 'Marcos', 'Bogadito', 'marcos@gmail', '136', '1234', '', '', '', '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:39:14', 1),
(3, 71, '', 'Santiago', 'Marcuchi', 'tiagosan_maru_cocina@chupaverga', 'la loma', '1337', 'Femenino', '', '', '', 0, 0, 0, '', 'padre santiago', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 07:12:33', 1),
(4, 6, '', 'MArcos', 'Bogadito', '2323', '23', '222', '', '', '', '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 03:12:18', 2),
(5, 0, '', 'Arroyo', 'Nicolas', 'nicolasarroyo74@gmail.com', '127', '123', '', '', '', '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:26:13', 1),
(6, 0, '', 'Nicolas', 'Arroyo', 'nico@email', '127', '1234', 'Masculino', '4122', '10 de diciembre', 'Quilmes', 1885, 12394, 18, 'Argentina', '-', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 00:52:56', 1),
(7, 0, '', 'Marcos', 'Bogado', 'bogadomarcos0@gmail.com', '136', '4131214', 'Masculino', '40546921', '', '', 0, 1337, 19, 'Argentina', '-', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 02:21:07', 1),
(8, 0, '', 'Agustin', 'Alemis', 'agustin@alemis', '199', '1234', 'Masculino', '1234567', '9 de febrero', 'Berazategui', 14, 11199, 18, 'Argentina', 'nada', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 02:29:08', 1),
(9, 0, '', 'Nicolas Oscar', 'Arroyo', 'nicolas@arroyo', '127', '12345678', 'Masculino', '12345678', '1 de Enero', 'Berazategui', 1884, 1337, 18, 'Argentina', 'Padre Nicolas', '127', '12345678', '-', NULL, NULL, NULL, NULL, 1, '2010-05-06 00:51:42', 1),
(10, 0, '', 'renzo', 'angeloro', 'asd', '12', '123', 'Masculino', '123', '1 de Enero', 'Berazategui', 1884, 9898, 18, 'Argentina', '-', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 00:06:18', 1);

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
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 4),
(9, 10, 1);

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
(3, 1, '2010-05-06', 3, 1),
(4, 1, '2010-05-07', 1, 1),
(5, 1, '2010-05-07', 3, 1),
(7, 1, '2010-05-06', 6, 1),
(8, 1, '2010-05-06', 7, 1),
(9, 1, '2010-05-06', 8, 1),
(10, 1, '2010-05-06', 9, 4),
(11, 2, '2010-05-07', 6, 1),
(12, 2, '2010-05-07', 7, 1),
(13, 1, '2010-05-07', 8, 1),
(14, 1, '2010-05-18', 3, 1),
(15, 1, '2010-05-18', 6, 1),
(16, 1, '2010-05-18', 7, 1),
(17, 2, '2010-05-18', 8, 1);

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
(2, 1, '2010-05-06', 3, 1),
(3, 1, '2010-05-06', 6, 1),
(4, 1, '2010-05-06', 7, 1),
(5, 1, '2010-05-06', 8, 1);

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
(1, 'Ciencias Naturales', '1ÂºTrimestre', 1),
(2, 'Ciencias Sociales', '1ÂºTrimestre', 4),
(3, 'Ciencias Sociales', '2ÂºTrimestre', 1),
(4, 'Emprendimientos Productivos y Desarrollo Local', '1ÂºTrimestre', 1),
(5, 'Evaluaciï¿½n de Proyectos', '1ÂºTrimestre', 1);

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
(1, 9, 3, 1),
(2, 8, 6, 1),
(3, 8, 7, 1),
(4, 8, 8, 1),
(5, 10, 9, 2),
(6, 10, 3, 4),
(7, 10, 6, 4),
(8, 10, 7, 4),
(9, 10, 8, 4),
(10, 7, 3, 5),
(11, 9, 6, 5),
(12, 9, 7, 5),
(13, 9, 8, 5),
(14, 7, 3, 3),
(15, 6, 6, 3),
(16, 8, 7, 3),
(17, 6, 8, 3),
(18, 8, 10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_mat` int(3) NOT NULL,
  `nombre_mat` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `id_cursomat` int(11) NOT NULL,
  `ciclo_mat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `a_mat` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hs_mat` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `modalidad_mat` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_mat`, `nombre_mat`, `id_cursomat`, `ciclo_mat`, `a_mat`, `hs_mat`, `modalidad_mat`) VALUES
(1, 'Ciencias Naturales', 1, 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(2, 'Ciencias Sociales', 1, 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(3, 'Educación Artística', 1, 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(4, 'Educación Física', 1, 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(5, 'Ingles', 1, 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(6, 'Matemática', 1, 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(7, 'Prácticas del Lenguaje', 1, 'Ciclo basico', '1er año', '4hs', 'Formacion General'),
(8, 'Construcción Ciudadana', 1, 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(9, 'Procedimientos Técnicos', 1, 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(10, 'Lenguajes Tecnológicos ', 1, 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(11, 'Sistemas Tecnológicos ', 1, 'Ciclo basico', '1er año', '2hs', 'Formacion General'),
(12, 'Biología', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(13, 'Construcción de Ciudadanía ', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(14, 'Educación Artística', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(15, 'Educación Física ', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(16, 'Físico Química', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(17, 'Geografía', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(18, 'Historia', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(19, 'Inglés', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(20, 'Matemática', 2, 'Ciclo basico', '2do año', '4hs', 'Formacion General'),
(21, 'Prácticas del Lenguaje', 2, 'Ciclo basico', '2do año', '4hs', 'Formacion General'),
(22, 'Procedimientos Técnicos', 2, 'Ciclo basico', '2do año', '4hs', 'Formacion General'),
(23, 'Lenguajes Tecnológicos ', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(24, 'Sistemas Tecnológicos', 2, 'Ciclo basico', '2do año', '2hs', 'Formacion General'),
(25, 'Biología', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(26, 'Construcción de Ciudadanía', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(27, 'Educación Artística', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(28, 'Educación Física', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(29, 'Físico Química', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(30, 'Geografía', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(31, 'Historia', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(32, 'Inglés', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(33, 'Matemática', 3, 'Ciclo basico', '3er año', '4hs', 'Formacion General'),
(34, 'Prácticas del Lenguaje', 3, 'Ciclo basico', '3er año', '4hs', 'Formacion General'),
(35, 'Procedimientos Técnicos', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(36, 'Lenguajes Tecnológicos ', 3, 'Ciclo basico', '3er año', '2hs', 'Formacion General'),
(37, 'Sistemas Tecnológicos', 3, 'Ciclo basico', '3er año', '4hs', 'Formacion General'),
(38, 'Literatura', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(39, 'Inglés', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(40, 'Educación Física', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(41, 'Salud y Adolescencia', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(42, 'Historia', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(43, 'Geografía', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(44, 'Matemática Ciclo Superior', 4, 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(45, 'Física', 4, 'Ciclo superior', '4to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(46, 'Química', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(47, 'Tecnologías Electrónicas', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(48, 'Laboratorio de Programación', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(49, 'Laboratorio de Hardware', 4, 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(50, 'Laboratorio de Sistemas Operativos', 4, 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(51, 'Laboratorio de Aplicaciones', 4, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(52, 'Literatura', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(53, 'Inglés', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(54, 'Educación Física', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(55, 'Salud y Adolescencia', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(56, 'Historia', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(57, 'Geografía', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(58, 'Matemática Ciclo Superior', 41, 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Programación'),
(59, 'Física', 41, 'Ciclo superior', '4to año', '3hs', 'Tecnicatura en Programación'),
(60, 'Química', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(61, 'Tecnologías Electrónicas', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(62, 'Laboratorio de Programación', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(63, 'Laboratorio de Hardware', 41, 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Programación'),
(64, 'Laboratorio de Sistemas Operativos', 41, 'Ciclo superior', '4to año', '4hs', 'Tecnicatura en Programación'),
(65, 'Laboratorio de Aplicaciones', 41, 'Ciclo superior', '4to año', '2hs', 'Tecnicatura en Programación'),
(66, 'Literatura', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(67, 'Inglés', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(68, 'Educación Física', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(69, 'Política y Ciudadanía', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(70, 'Historia', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(71, 'Geografía', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(72, 'Análisis Matemático', 5, 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(73, 'Sistemas Digitales', 5, 'Ciclo superior', '5to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(74, 'Teleinformática', 5, 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(75, 'Laboratorio de Programación', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(76, 'Laboratorio de Hardware', 5, 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(77, 'Laboratorio de Sistemas Operativos', 5, 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(78, 'Laboratorio de Aplicaciones', 5, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(79, 'Literatura', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(80, 'Inglés', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(81, 'Educación Física', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(82, 'Política y Ciudadanía', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(83, 'Historia', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(84, 'Geografía', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(85, 'Análisis Matemático', 51, 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Programación'),
(86, 'Sistemas Digitales', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(87, 'Base de Datos', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(88, 'Modelos y Sistemas', 51, 'Ciclo superior', '5to año', '3hs', 'Tecnicatura en Programación'),
(89, 'Laboratorio de Programación', 51, 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Programación'),
(90, 'Laboratorio de Redes Informáticas', 51, 'Ciclo superior', '5to año', '4hs', 'Tecnicatura en Programación'),
(91, 'Laboratorio de Diseño Web', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(92, 'Laboratorio de Diseño de Base de Datos', 51, 'Ciclo superior', '5to año', '2hs', 'Tecnicatura en Programación'),
(93, 'Literatura', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(94, 'Inglés', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(95, 'Educación Física', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(96, 'Filosofía', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(97, 'Arte', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(98, 'Matemática Aplicada', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(99, 'Sistemas Digitales', 6, 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(100, 'Investigación Operativa', 6, 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(101, 'Seguridad Informática', 6, 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(102, 'Derechos del Trabajo', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(103, 'Laboratorio de Programación', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(104, 'Laboratorio de Hardware', 6, 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(105, 'Laboratorio de Sistemas Operativos', 6, 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(106, 'Laboratorio de Aplicaciones', 6, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(107, 'Literatura', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(108, 'Inglés', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(109, 'Educación Física', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(110, 'Filosofía', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(111, 'Arte', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(112, 'Matemática Aplicada', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(113, 'Sistemas Digitales', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(114, 'Sistemas de Gestión y Autegestión', 61, 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Programación'),
(115, 'Seguridad Informática', 61, 'Ciclo superior', '6to año', '3hs', 'Tecnicatura en Programación'),
(116, 'Derechos del Trabajo', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(117, 'Laboratorio de Programación', 61, 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Programación'),
(118, 'Laboratorio de Procesos Industriales', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(119, 'Laboratorio de Diseño Web Estáticas', 61, 'Ciclo superior', '6to año', '2hs', 'Tecnicatura en Programación'),
(120, 'Laboratorio de Diseño Web Dinámicas', 61, 'Ciclo superior', '6to año', '4hs', 'Tecnicatura en Programación'),
(121, 'Emprendimientos Productivos y Desarrollo Local', 7, 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(122, 'Evaluación de Proyectos', 7, 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(123, 'Modelos y Sistemas', 7, 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Informática Profesional y Personal'),
(124, 'Bases de Datos', 7, 'Ciclo superior', '7mo año', '3hs', 'Tecnicatura en Informática Profesional y Personal'),
(125, 'Proyecto Diseño e Implementacion de Sistemas Computacionales', 7, 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(126, 'Instalación Mantenimiento y Reparación de Sistemas Computacionales', 7, 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(127, 'Instalación Mantenimiento y Reparación de Redes Informáticas', 7, 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Informática Profesional y Personal'),
(128, 'Emprendimientos Productivos y Desarrollo Local', 71, 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Programación'),
(129, 'Evaluación de Proyectos', 71, 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Programación'),
(130, 'Modelos y Sistemas', 71, 'Ciclo superior', '7mo año', '3hs', 'Tecnicatura en Programación'),
(131, 'Organización y Métodos', 71, 'Ciclo superior', '7mo año', '2hs', 'Tecnicatura en Programación'),
(132, 'Proyecto Diseño e Implementacion de Sistemas Computacionales', 71, 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Programación'),
(133, 'Proyecto de Desarrollo de Software para Plataformas Móviles', 71, 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Programación'),
(134, 'Proyecto de Implementación de Sitios Web Dinámicos ', 71, 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Programación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_curso`
--

CREATE TABLE `materia_curso` (
  `id` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `id_cursomat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia_curso`
--

INSERT INTO `materia_curso` (`id`, `id_mat`, `id_cursomat`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 3),
(26, 26, 3),
(27, 27, 3),
(28, 28, 3),
(29, 29, 3),
(30, 30, 3),
(31, 31, 3),
(32, 32, 3),
(33, 33, 3),
(34, 34, 3),
(35, 35, 3),
(36, 36, 3),
(37, 37, 3),
(38, 38, 4),
(39, 39, 4),
(40, 40, 4),
(41, 41, 4),
(42, 42, 4),
(43, 43, 4),
(44, 44, 4),
(45, 45, 4),
(46, 46, 4),
(47, 47, 4),
(48, 48, 4),
(49, 49, 4),
(50, 50, 4),
(51, 51, 4),
(52, 52, 41),
(53, 53, 41),
(54, 54, 41),
(55, 55, 41),
(56, 56, 41),
(57, 57, 41),
(58, 58, 41),
(59, 59, 41),
(60, 60, 41),
(61, 61, 41),
(62, 62, 41),
(63, 63, 41),
(64, 64, 41),
(65, 65, 41),
(66, 66, 5),
(67, 67, 5),
(68, 68, 5),
(69, 69, 5),
(70, 70, 5),
(71, 71, 5),
(72, 72, 5),
(73, 73, 5),
(74, 74, 5),
(75, 75, 5),
(76, 76, 5),
(77, 77, 5),
(78, 78, 5),
(79, 79, 51),
(80, 80, 51),
(81, 81, 51),
(82, 82, 51),
(83, 83, 51),
(84, 84, 51),
(85, 85, 51),
(86, 86, 51),
(87, 87, 51),
(88, 88, 51),
(89, 89, 51),
(90, 90, 51),
(91, 91, 51),
(92, 92, 51),
(93, 93, 6),
(94, 94, 6),
(95, 95, 6),
(96, 96, 6),
(97, 97, 6),
(98, 98, 6),
(99, 99, 6),
(100, 100, 6),
(101, 101, 6),
(102, 102, 6),
(103, 103, 6),
(104, 104, 6),
(105, 105, 6),
(106, 106, 6),
(107, 107, 61),
(108, 108, 61),
(109, 109, 61),
(110, 110, 61),
(111, 111, 61),
(112, 112, 61),
(113, 113, 61),
(114, 114, 61),
(115, 115, 61),
(116, 116, 61),
(117, 117, 61),
(118, 118, 61),
(119, 119, 61),
(120, 120, 61),
(121, 121, 7),
(122, 122, 7),
(123, 123, 7),
(124, 124, 7),
(125, 125, 7),
(126, 126, 7),
(127, 127, 7),
(128, 128, 71),
(129, 129, 71),
(130, 130, 71),
(131, 131, 71),
(132, 132, 71),
(133, 133, 71),
(134, 134, 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_cursomat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`id`, `name`, `is_favorite`, `user_id`, `id_cursomat`) VALUES
(1, '7Â° 3Â°', 0, 1, 71),
(2, '7Â° 2Â°', 0, 1, 7),
(3, '5Â° 1Â°', 0, 1, 5),
(4, '1Â° 1Â°', 0, 1, 1),
(5, '1Â° 2Â°', 0, 1, 1),
(6, '1Â° 3Â°', 0, 1, 1),
(7, '1Â° 4Â°', 0, 1, 1),
(8, '2Â° 1Â°', 0, 1, 2),
(9, '2Â° 2Â°', 0, 1, 2),
(10, '2Â° 3Â°', 0, 1, 2),
(11, '2Â° 4Â°', 0, 1, 2),
(12, '3Â° 1Â°', 0, 1, 3),
(13, '3Â° 2Â°', 0, 1, 3),
(14, '3Â° 3Â°', 0, 1, 3),
(15, '3Â° 4Â°', 0, 1, 3),
(16, '4Â° 1Â°', 0, 1, 4),
(17, '4Â° 2Â°', 0, 1, 41),
(18, '4Â° 3Â°', 0, 1, 4),
(19, '4Â° 4Â°', 0, 1, 4),
(20, '5Â° 2Â°', 0, 1, 51),
(21, '5Â° 3Â°', 0, 1, 5),
(22, '5Â° 4Â°', 0, 1, 5),
(23, '6Â° 1Â°', 0, 1, 6),
(24, '6Â° 2Â°', 0, 1, 61),
(25, '6Â° 3Â°', 0, 1, 6),
(26, '6Â° 4Â°', 0, 1, 6),
(27, '7Â° 1Â°', 0, 1, 7);

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
(3, 'nicolino85', 'Nicolas', 'Arroyo', 'nicolasarroyo74@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', 1, 0, '2010-05-06 03:37:39'),
(4, 'markoz', 'Marcos', 'Bogadito', 'no tiene', 'adcd7048512e64b48da55b027577886ee5a36350', 1, 0, '2010-05-06 03:38:53'),
(5, 'asd', 'asd', 'asd', 'asd', 'ceedf12f8fe3dc63d35b2567a59b93bd62ff729a', 1, 0, '2010-05-06 03:44:26');

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
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_mat`),
  ADD KEY `id_cursomat` (`id_cursomat`);

--
-- Indices de la tabla `materia_curso`
--
ALTER TABLE `materia_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alumno` (`id_mat`,`id_cursomat`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumn`
--
ALTER TABLE `alumn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `behavior`
--
ALTER TABLE `behavior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `calification`
--
ALTER TABLE `calification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_mat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
