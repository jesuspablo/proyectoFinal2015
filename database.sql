-- phpMyAdmin SQL Dump
-- version 4.2.9.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-03-2015 a las 05:18:04
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.4.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyectofinal2015`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'Nombre',
  `apellidos` varchar(255) DEFAULT NULL COMMENT 'Apellidos',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `apellidos`, `email`) VALUES
(1, 'Amneris', 'Meraz Quintanilla', 'AmnerisMerazQuintanilla@superrito.com '),
(2, 'Jose ', 'S. Weldon', 'JoseSWeldon@superrito.com ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'Nombre',
  `id_nivel` int(12) DEFAULT NULL COMMENT 'ID Nivel',
  `primer_apellido` varchar(255) DEFAULT NULL COMMENT 'Primer Apellido',
  `segundo_apellido` varchar(255) DEFAULT NULL COMMENT 'Segundo Apellido',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email'
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `id_nivel`, `primer_apellido`, `segundo_apellido`, `email`) VALUES
(1, 'Betina  ', NULL, 'Guerra', 'Arroyo', NULL),
(2, 'Guzmán ', NULL, 'Padron', 'Esquivel', NULL),
(3, 'Haide', NULL, 'Tejada', 'Escalante', NULL),
(4, 'Martial  ', NULL, 'Ledesma', 'Carvajal', NULL),
(5, 'Matty  ', NULL, 'Peralta', 'Suárez', NULL),
(6, 'Adaluz ', NULL, 'Jaime ', 'Valverde', NULL),
(7, 'Milton', NULL, 'Suárez', ' Montés', NULL),
(8, 'Mabel ', NULL, 'Alba ', 'Sisneros', NULL),
(9, 'Aisha ', NULL, 'Maya ', 'Olivas', NULL),
(10, 'Lutero  ', NULL, 'Badillo', 'Pacheco', NULL),
(11, 'Millan  ', NULL, 'López', 'Ulloa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'Nombre',
  `id_profesor` int(12) DEFAULT NULL COMMENT 'ID Profesor',
  `id_nivel` int(12) DEFAULT NULL COMMENT 'ID Nivel',
  `id_nota` int(12) DEFAULT NULL COMMENT 'Nota'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE IF NOT EXISTS `asistencia` (
`id` int(12) NOT NULL COMMENT 'ID',
  `fecha` varchar(255) DEFAULT NULL COMMENT 'Fecha',
  `justificada` varchar(255) DEFAULT NULL COMMENT 'Justificada',
  `id_alumno` int(12) DEFAULT NULL COMMENT 'ID Alumno',
  `id_asignatura` int(12) DEFAULT NULL COMMENT 'ID Asignatura'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
`id` int(12) NOT NULL COMMENT 'ID',
  `dia` varchar(255) DEFAULT NULL COMMENT 'Día',
  `hora_inicio` varchar(255) DEFAULT NULL COMMENT 'Hora Inicio',
  `hora_fin` varchar(255) DEFAULT NULL COMMENT 'Hora Fin',
  `id_asignatura` int(12) DEFAULT NULL COMMENT 'ID Asignatura'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE IF NOT EXISTS `nivel` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nivel` varchar(255) DEFAULT NULL COMMENT 'Nivel',
  `curso` varchar(255) DEFAULT NULL COMMENT 'curso',
  `aula` varchar(255) DEFAULT NULL COMMENT 'Aula'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
`id` int(12) NOT NULL COMMENT 'ID',
  `id_trimestre` int(12) DEFAULT NULL COMMENT 'ID Trimestre',
  `nota` varchar(255) DEFAULT NULL COMMENT 'Nota',
  `id_alumno` int(12) DEFAULT NULL COMMENT 'ID Alumno',
  `id_asignatura` int(12) DEFAULT NULL COMMENT 'ID Asignatura',
  `id_nivel` int(12) DEFAULT NULL COMMENT 'ID Nivel',
  `id_profesor` int(12) DEFAULT NULL COMMENT 'ID Profesor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--

CREATE TABLE IF NOT EXISTS `objeto` (
  `id` int(6) NOT NULL COMMENT 'ID Objeto',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`id`, `descripcion`) VALUES
(1, 'alumno'),
(2, 'profesor'),
(3, 'asignatura'),
(4, 'asistencia'),
(5, 'colegio'),
(6, 'horario'),
(7, 'nivel'),
(8, 'nota'),
(9, 'trimestre'),
(10, 'administrador'),
(11, 'objeto'),
(12, 'opcion'),
(13, 'operacion'),
(14, 'permiso'),
(15, 'tipooperacion'),
(16, 'tipousuario'),
(17, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

CREATE TABLE IF NOT EXISTS `operacion` (
`id` int(6) NOT NULL COMMENT 'ID Operación',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción',
  `id_objeto` int(6) DEFAULT NULL COMMENT 'ID Objeto',
  `id_tipooperacion` int(6) DEFAULT NULL COMMENT 'ID Tipo Operación'
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `operacion`
--

INSERT INTO `operacion` (`id`, `descripcion`, `id_objeto`, `id_tipooperacion`) VALUES
(1, 'get', 1, 1),
(2, 'getaggregateviewone', 1, 1),
(3, 'getprettycolumns', 1, 1),
(4, 'getcolumns', 1, 1),
(5, 'getpage', 1, 1),
(6, 'getpages', 1, 1),
(7, 'getregisters', 1, 1),
(8, 'getaggregateviewsome', 1, 1),
(9, 'remove', 1, 2),
(10, 'set', 1, 2),
(11, 'updateOne', 1, 2),
(23, 'get', 2, 1),
(24, 'getaggregateviewone', 2, 1),
(25, 'getprettycolumns', 2, 1),
(26, 'getcolumns', 2, 1),
(27, 'getpage', 2, 1),
(28, 'getpages', 2, 1),
(29, 'getregisters', 2, 1),
(30, 'getaggregateviewsome', 2, 1),
(31, 'remove', 2, 2),
(32, 'set', 2, 2),
(33, 'updateOne', 2, 2),
(34, 'get', 3, 1),
(35, 'getaggregateviewone', 3, 1),
(36, 'getprettycolumns', 3, 1),
(37, 'getcolumns', 3, 1),
(38, 'getpage', 3, 1),
(39, 'getpages', 3, 1),
(40, 'getregisters', 3, 1),
(41, 'getaggregateviewsome', 3, 1),
(42, 'remove', 3, 2),
(43, 'set', 3, 2),
(44, 'updateOne', 3, 2),
(45, 'get', 4, 1),
(46, 'getaggregateviewone', 4, 1),
(47, 'getprettycolumns', 4, 1),
(48, 'getcolumns', 4, 1),
(49, 'getpage', 4, 1),
(50, 'getpages', 4, 1),
(51, 'getregisters', 4, 1),
(52, 'getaggregateviewsome', 4, 1),
(53, 'remove', 4, 2),
(54, 'set', 4, 2),
(55, 'updateOne', 4, 2),
(56, 'get', 5, 1),
(57, 'getaggregateviewone', 5, 1),
(58, 'getprettycolumns', 5, 1),
(59, 'getcolumns', 5, 1),
(60, 'getpage', 5, 1),
(61, 'getpages', 5, 1),
(62, 'getregisters', 5, 1),
(63, 'getaggregateviewsome', 5, 1),
(64, 'remove', 5, 2),
(65, 'set', 5, 2),
(66, 'updateOne', 5, 2),
(67, 'get', 6, 1),
(68, 'getaggregateviewone', 6, 1),
(69, 'getprettycolumns', 6, 1),
(70, 'getcolumns', 6, 1),
(71, 'getpage', 6, 1),
(72, 'getpages', 6, 1),
(73, 'getregisters', 6, 1),
(74, 'getaggregateviewsome', 6, 1),
(75, 'remove', 6, 2),
(76, 'set', 6, 2),
(77, 'updateOne', 6, 2),
(78, 'get', 7, 1),
(79, 'getaggregateviewone', 7, 1),
(80, 'getprettycolumns', 7, 1),
(81, 'getcolumns', 7, 1),
(82, 'getpage', 7, 1),
(83, 'getpages', 7, 1),
(84, 'getregisters', 7, 1),
(85, 'getaggregateviewsome', 7, 1),
(86, 'remove', 7, 2),
(87, 'set', 7, 2),
(88, 'updateOne', 7, 2),
(89, 'get', 8, 1),
(90, 'getaggregateviewone', 8, 1),
(91, 'getprettycolumns', 8, 1),
(92, 'getcolumns', 8, 1),
(93, 'getpage', 8, 1),
(94, 'getpages', 8, 1),
(95, 'getregisters', 8, 1),
(96, 'getaggregateviewsome', 8, 1),
(97, 'remove', 8, 2),
(98, 'set', 8, 2),
(99, 'updateOne', 8, 2),
(100, 'get', 9, 1),
(101, 'getaggregateviewone', 9, 1),
(102, 'getprettycolumns', 9, 1),
(103, 'getcolumns', 9, 1),
(104, 'getpage', 9, 1),
(105, 'getpages', 9, 1),
(106, 'getregisters', 9, 1),
(107, 'getaggregateviewsome', 9, 1),
(108, 'remove', 9, 2),
(109, 'set', 9, 2),
(110, 'updateOne', 9, 2),
(111, 'get', 10, 1),
(112, 'getaggregateviewone', 10, 1),
(113, 'getprettycolumns', 10, 1),
(114, 'getcolumns', 10, 1),
(115, 'getpage', 10, 1),
(116, 'getpages', 10, 1),
(117, 'getregisters', 10, 1),
(118, 'getaggregateviewsome', 10, 1),
(119, 'remove', 10, 2),
(120, 'set', 10, 2),
(121, 'updateOne', 10, 2),
(122, 'get', 11, 1),
(123, 'getaggregateviewone', 11, 1),
(124, 'getprettycolumns', 11, 1),
(125, 'getcolumns', 11, 1),
(126, 'getpage', 11, 1),
(127, 'getpages', 11, 1),
(128, 'getregisters', 11, 1),
(129, 'getaggregateviewsome', 11, 1),
(130, 'remove', 11, 2),
(131, 'set', 11, 2),
(132, 'updateOne', 11, 2),
(133, 'get', 12, 1),
(134, 'getaggregateviewone', 12, 1),
(135, 'getprettycolumns', 12, 1),
(136, 'getcolumns', 12, 1),
(137, 'getpage', 12, 1),
(138, 'getpages', 12, 1),
(139, 'getregisters', 12, 1),
(140, 'getaggregateviewsome', 12, 1),
(141, 'remove', 12, 2),
(142, 'set', 12, 2),
(143, 'updateOne', 12, 2),
(144, 'get', 13, 1),
(145, 'getaggregateviewone', 13, 1),
(146, 'getprettycolumns', 13, 1),
(147, 'getcolumns', 13, 1),
(148, 'getpage', 13, 1),
(149, 'getpages', 13, 1),
(150, 'getregisters', 13, 1),
(151, 'getaggregateviewsome', 13, 1),
(152, 'remove', 13, 2),
(153, 'set', 13, 2),
(154, 'updateOne', 13, 2),
(155, 'get', 14, 1),
(156, 'getaggregateviewone', 14, 1),
(157, 'getprettycolumns', 14, 1),
(158, 'getcolumns', 14, 1),
(159, 'getpage', 14, 1),
(160, 'getpages', 14, 1),
(161, 'getregisters', 14, 1),
(162, 'getaggregateviewsome', 14, 1),
(163, 'remove', 14, 2),
(164, 'set', 14, 2),
(165, 'updateOne', 14, 2),
(166, 'get', 15, 1),
(167, 'getaggregateviewone', 15, 1),
(168, 'getprettycolumns', 15, 1),
(169, 'getcolumns', 15, 1),
(170, 'getpage', 15, 1),
(171, 'getpages', 15, 1),
(172, 'getregisters', 15, 1),
(173, 'getaggregateviewsome', 15, 1),
(174, 'remove', 15, 2),
(175, 'set', 15, 2),
(176, 'updateOne', 15, 2),
(177, 'get', 16, 1),
(178, 'getaggregateviewone', 16, 1),
(179, 'getprettycolumns', 16, 1),
(180, 'getcolumns', 16, 1),
(181, 'getpage', 16, 1),
(182, 'getpages', 16, 1),
(183, 'getregisters', 16, 1),
(184, 'getaggregateviewsome', 16, 1),
(185, 'remove', 16, 2),
(186, 'set', 16, 2),
(187, 'updateOne', 16, 2),
(188, 'get', 17, 1),
(189, 'getaggregateviewone', 17, 1),
(190, 'getprettycolumns', 17, 1),
(191, 'getcolumns', 17, 1),
(192, 'getpage', 17, 1),
(193, 'getpages', 17, 1),
(194, 'getregisters', 17, 1),
(195, 'getaggregateviewsome', 17, 1),
(196, 'remove', 17, 2),
(197, 'set', 17, 2),
(198, 'updateOne', 17, 2),
(199, 'get', 18, 1),
(200, 'getaggregateviewone', 18, 1),
(201, 'getprettycolumns', 18, 1),
(202, 'getcolumns', 18, 1),
(203, 'getpage', 18, 1),
(204, 'getpages', 18, 1),
(205, 'getregisters', 18, 1),
(206, 'getaggregateviewsome', 18, 1),
(207, 'remove', 18, 2),
(208, 'set', 18, 2),
(209, 'updateOne', 18, 2),
(210, 'get', 19, 1),
(211, 'getaggregateviewone', 19, 1),
(212, 'getprettycolumns', 19, 1),
(213, 'getcolumns', 19, 1),
(214, 'getpage', 19, 1),
(215, 'getpages', 19, 1),
(216, 'getregisters', 19, 1),
(217, 'getaggregateviewsome', 19, 1),
(218, 'remove', 19, 2),
(219, 'set', 19, 2),
(220, 'updateOne', 19, 2),
(452, 'getAllPreguntas', 6, 1),
(453, 'setForm', 27, 2),
(454, 'agregaramigo', 2, 2),
(455, 'removeamigo', 2, 2),
(456, 'existeamigo', 2, 1),
(457, 'duplicate', 26, 2),
(458, 'getcomentarioamigo', 26, 1),
(459, 'getpagescomentarioamigo', 26, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
`id` int(6) NOT NULL COMMENT 'ID Permiso',
  `id_tipousuario` int(6) DEFAULT NULL COMMENT 'ID Tipo de usuario',
  `id_tipooperacion` int(6) DEFAULT NULL COMMENT 'ID Tipo Operación',
  `permitido` tinyint(1) DEFAULT NULL COMMENT 'Permitido'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id`, `id_tipousuario`, `id_tipooperacion`, `permitido`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 1, 1),
(4, 2, 2, 1),
(5, 3, 1, 1),
(6, 2, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'Nombre',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `especialista` varchar(255) DEFAULT NULL COMMENT 'Especialista',
  `primer_apellido` varchar(255) DEFAULT NULL COMMENT 'Primer Apellido',
  `segundo_apellido` varchar(255) DEFAULT NULL COMMENT 'Segundo Apellido',
  `id_nivel` int(12) DEFAULT NULL COMMENT 'ID Nivel',
  `id_asignatura` int(12) DEFAULT NULL COMMENT 'ID Asignatura'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `email`, `especialista`, `primer_apellido`, `segundo_apellido`, `id_nivel`, `id_asignatura`) VALUES
(1, 'Jose Alberto', 'JoseSWeldon@superrito.com', 'Audición y Lenguaje', 'Vanegas', 'Coronado', NULL, NULL),
(2, 'Areb', 'ArebGallegosOlivo@superrito.com', 'Música.', 'Gallegos', 'Olivo', NULL, NULL),
(3, 'Bartelemy ', 'BartelemyChapaZapata@superrito.com', 'Educación Física', 'Chapa', 'Zapata', NULL, NULL),
(4, 'Agape ', 'Agape Ozuna Oquendo', 'Lengua extranjera: Alemán', 'Ozuna', 'Oguendo', NULL, NULL),
(5, 'Aniela', 'AnielaBriseoReyna@superrito.com', 'Lengua extranjera: Francés', 'Briseño', 'Reyna', NULL, NULL),
(6, 'Pascua', 'ascuaEscobedoNavarro@gustr.com', 'Lengua extranjera: Inglés', 'Escobedo', 'Navarro', NULL, NULL),
(7, 'Cameron ', 'CameronBarrazaHerrera@gustr.com', 'Educación Primaria', 'Barraza', 'herrera', NULL, NULL),
(8, 'Jules ', 'JulesCamachoCuriel@superrito.com', 'Educación Infantil', 'Camacho', 'Curiel', NULL, NULL),
(9, 'Nantilde', 'NantildeMezaFierro@superrito.com', 'Audición y Lenguaje', 'Meza', 'Fierro', NULL, NULL),
(10, 'Nereo ', 'NereoAdameBahena@gustr.com ', 'Educación Física', 'Adame', 'Bahena', NULL, NULL),
(11, 'Amal ', 'AmalCurielAgosto@superrito.com ', 'Educación Primaria', 'Curiel', 'Agosto', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipooperacion`
--

CREATE TABLE IF NOT EXISTS `tipooperacion` (
`id` int(6) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipooperacion`
--

INSERT INTO `tipooperacion` (`id`, `descripcion`) VALUES
(1, 'lectura'),
(2, 'escritura'),
(3, 'alta'),
(4, 'modificación'),
(5, 'borrado'),
(6, 'rellenar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
`id` int(11) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'profesor'),
(3, 'alumno'),
(4, 'padre 0 tutore'),
(5, 'usuario visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre`
--

CREATE TABLE IF NOT EXISTS `trimestre` (
`id` int(12) NOT NULL COMMENT 'ID',
  `trimestre` varchar(255) DEFAULT NULL COMMENT 'Trimestre'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trimestre`
--

INSERT INTO `trimestre` (`id`, `trimestre`) VALUES
(1, 'Primer Trimestre'),
(2, 'Segundo Trimestre'),
(3, 'Tercer Trimestre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(6) NOT NULL COMMENT 'Identificador',
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de usuario',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contraseña',
  `id_tipousuario` int(11) DEFAULT NULL COMMENT 'Tipo de usuario',
  `ciudad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ciudad',
  `firma` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Firma'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `id_tipousuario`, `ciudad`, `firma`) VALUES
(1, 'pepe', 'pepe', 2, 'Valencia', 'is my life and do what I want'),
(2, 'juan', 'juan', 3, 'Madrid', 'http://criticalandia.com críticas de entretenimiento, listas, opiniones...'),
(3, 'maria', 'maria', 3, 'Barcelona', 'If you love something, set it free. Unless it''''s a tiger.'),
(4, 'antonia', 'antonia', 3, 'Sevilla', '"El único límite a nuestros logros de mañana está en nuestras dudas de hoy."'),
(5, 'edu', 'edu', 3, 'Zaragoza', 'Plataforma: ORGULLLO CADISTA no.58'),
(6, 'jose', 'jose', 3, 'Teruel', 'Ironía: Figura literaria mediante la cual se da a entender lo contrario de lo que se dice.'),
(7, 'silvia', 'silvia', 3, 'Huesca', 'Paso de firmas'),
(8, 'pedro', 'pedro', 3, 'Alicante', 'Camisetas y calzado www.pedidoshicks.com'),
(9, 'raquel', 'raquel', 3, 'Castellón', 'PEÑA COLCHONERA Socio número 629'),
(10, 'daniel', 'daniel', 3, 'Almería', '"Obsesionado es tan sólo la palabra que usan los perezosos para describir a los dedicados"'),
(11, 'rafael', 'rafael', 1, 'A Coruña', 'Ista ye a mia tierra, a mia fabla'),
(12, 'juan', 'juan', 3, 'Barcelona', 'No todos los catalanes somos independentistas'),
(13, 'elena', 'elena', 3, 'Bilbao', 'Buenas tardes'),
(14, 'luis', 'luis', 3, 'Lugo', 'Preparado para cualquier combate'),
(15, 'alba', 'alba', 3, 'Cuenca', 'Si tienes un Ibiza o un Cordoba, este es tu club: www.clubseatcordoba.com'),
(16, 'amparo', 'amparo', 3, 'Ciudad Real', 'No hay dos sin tres'),
(17, 'ambrosio', 'ambrosio', 3, 'Guadalajara', 'Tesis+Antítesis=Síntesis. Problema+Acción = Solución.'),
(18, 'luisa', 'luisa', 3, 'Huelva', 'Y yo me iré. y se quedará mi huerto con su verde árbol, y con su pozo blanco. Y yo me iré.. Y se quedarán los pájaros cantando'),
(19, 'leon', 'leon', 3, 'Granada', 'La Infanta no sabía nada y punto.'),
(20, 'rosa', 'rosa', 3, 'Cádiz', 'Viva España'),
(21, 'capcom', 'capcom', 3, 'Jerez', 'La gente cree que soy una mala persona, pero no es cierto, yo tengo el corazón de un niño...en un frasco con formol encima de mi escritorio.'),
(22, 'teleco', 'teleco', 3, 'Vallecas', 'Foreros de la Comunidad de Madrid Nº25'),
(23, 'mercadona', 'mercadona', 3, 'Jaén', 'Y veréis el resurgir poderoso del guerrero, sin miedo a leyes ni a nostalgias.'),
(24, 'vistaprint', 'vistaprint', 3, 'Valencia', 'Codeados.com Diseño y Desarrollo web, Imagen Corporativa, SEO, Marketing Digital'),
(25, 'google', 'google', 3, 'California', 'Viva google +'),
(26, 'konami', 'konami', 3, 'Tokio', 'Viva Castolo, Minanda y Ximelez'),
(27, 'orange', 'orange', 3, 'París', 'Viva movistar'),
(28, 'samsung', 'samsung', 3, 'Cuenca', 'Viva el iPhone 6'),
(29, 'gigabyte', 'gigabyte', 3, 'Oviedo', 'Viva gigabyte'),
(30, 'microsoft', 'microsoft', 3, 'Albacete', 'La xbox ONE es la MEJOR CONSOLA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `objeto`
--
ALTER TABLE `objeto`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operacion`
--
ALTER TABLE `operacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trimestre`
--
ALTER TABLE `trimestre`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT de la tabla `operacion`
--
ALTER TABLE `operacion`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'ID Operación',AUTO_INCREMENT=461;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'ID Permiso',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `trimestre`
--
ALTER TABLE `trimestre`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
