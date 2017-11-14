-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2010 a las 05:25:09
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
  `image` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
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

INSERT INTO `alumn` (`id`, `image`, `name`, `lastname`, `email`, `address`, `phone`, `c1_fullname`, `c1_address`, `c1_phone`, `c1_note`, `c2_fullname`, `c2_address`, `c2_phone`, `c2_note`, `is_active`, `created_at`, `user_id`) VALUES
(1, '', 'Nicolas', 'Arroyo', 'nicolasarroyo74@gmail.com', '127', '12345', 'Nicolas Arroyo', '127', '12345', 'Programador', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:06:59', 1),
(2, '', 'Marcos', 'Bogadito', 'marcos@gmail', '136', '1234', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:39:14', 1),
(3, '', 'Santiago', 'Marcuchi', 'tiagosan_maru_cocina@chupaverga', 'la loma', '1337', 'santiago', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 07:12:33', 1),
(4, '', 'MArcos', 'Bogadito', '2323', '23', '222', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 03:12:18', 2),
(5, '', 'Arroyo', 'Nicolas', 'nicolasarroyo74@gmail.com', '127', '123', '', '', '', '', NULL, NULL, NULL, NULL, 1, '2010-05-06 01:26:13', 1);

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
(4, 4, 3);

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
(6, 2, '2010-05-06', 5, 6);

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
(2, 3, '2010-05-06', 3, 1);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_mat` int(3) NOT NULL,
  `nombre_mat` varchar(70) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
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
(134, 'Proyecto de Implementación de Sitios Web Dinámicos ', 'Ciclo superior', '7mo año', '4hs', 'Tecnicatura en Programación');

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
(6, '7Âº2Âº', 0, 1);

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
(2, 'nicolino85', 'Nicolas', 'arroyo', '', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 1, 0, '2010-05-06 02:00:18');

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
  ADD PRIMARY KEY (`id_mat`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `alumn_team`
--
ALTER TABLE `alumn_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `behavior`
--
ALTER TABLE `behavior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `calification`
--
ALTER TABLE `calification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_mat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
