-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-02-2015 a las 11:23:57
-- Versión del servidor: 5.5.39
-- Versión de PHP: 5.4.32

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=158 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `id_nivel`, `primer_apellido`, `segundo_apellido`, `email`) VALUES
(145, 'Betina  ', NULL, 'Guerra', 'Arroyo', NULL),
(148, 'Guzmán ', NULL, 'Padron', 'Esquivel', NULL),
(149, 'Haide', NULL, 'Tejada', 'Escalante', NULL),
(150, 'Martial  ', NULL, 'Ledesma', 'Carvajal', NULL),
(151, 'Matty  ', NULL, 'Peralta', 'Suárez', NULL),
(152, 'Adaluz ', NULL, 'Jaime ', 'Valverde', NULL),
(153, 'Milton', NULL, 'Suárez', ' Montés', NULL),
(154, 'Mabel ', NULL, 'Alba ', 'Sisneros', NULL),
(155, 'Lutero  ', NULL, 'Badillo', 'Pacheco', NULL),
(156, 'Aisha ', NULL, 'Maya ', 'Olivas', NULL),
(157, 'Millan  ', NULL, 'López', 'Ulloa', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE IF NOT EXISTS `nivel` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nivel` varchar(255) DEFAULT NULL COMMENT 'Nivel',
  `curso` varchar(255) DEFAULT NULL COMMENT 'curso',
  `aula` varchar(255) DEFAULT NULL COMMENT 'Aula'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
(11, 'impuesto'),
(12, 'mensajeprivado'),
(13, 'metadocumento'),
(14, 'metadocumentos'),
(15, 'objeto'),
(16, 'opcion'),
(17, 'operacion'),
(18, 'ordenador'),
(19, 'pedido'),
(20, 'permiso'),
(21, 'post'),
(22, 'pregunta'),
(23, 'producto'),
(24, 'propuesta'),
(25, 'proveedor'),
(26, 'publicacion'),
(27, 'respuesta'),
(28, 'tema'),
(29, 'tipodocumento'),
(30, 'tipooperacion'),
(31, 'tipoproducto'),
(32, 'tipopropuesta'),
(33, 'tipotema'),
(34, 'tipousuario'),
(35, 'usuario'),
(36, 'trabajo'),
(37, 'tipotarea'),
(38, 'estadotarea'),
(39, 'proyecto'),
(40, 'documentobonito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE IF NOT EXISTS `opcion` (
`id` int(11) NOT NULL COMMENT 'id',
  `valor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Valor',
  `id_pregunta` int(11) DEFAULT NULL COMMENT 'Pregunta'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='opcion' AUTO_INCREMENT=257 ;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`id`, `valor`, `id_pregunta`) VALUES
(1, 'Barcelona', 1),
(2, 'Real Madrid', 1),
(3, 'Valencia', 1),
(4, 'Sevilla', 1),
(5, 'Mucho', 2),
(6, 'Poco', 2),
(7, 'Nada', 2),
(8, 'Todos los meses', 2),
(9, 'Mas de 10 veces', 3),
(10, 'Mas de 5 veces', 3),
(11, 'Alguna vez', 3),
(12, 'No', 3),
(13, 'Avion', 4),
(14, 'Tren', 4),
(15, 'Autobus', 4),
(16, 'Coche', 4),
(17, 'Hotel', 5),
(18, 'Motel', 5),
(19, 'Apartamento', 5),
(20, 'Anden', 5),
(21, 'Futbol', 6),
(22, 'Baloncesto', 6),
(23, 'Petanca', 6),
(24, 'Deportes de riesgo', 6),
(25, 'Futbol', 7),
(26, 'Correr', 7),
(27, 'Natacion', 7),
(28, 'Otros', 7),
(29, 'Alguna vez', 8),
(30, 'Si', 8),
(31, 'No', 8),
(32, 'Nunca', 8),
(33, 'Siempre', 9),
(34, 'Si', 9),
(35, 'Alguna vez', 9),
(36, 'Nunca', 9),
(37, 'Rock', 10),
(38, 'Pop', 10),
(39, 'Bisbal', 10),
(40, 'Soy sordo', 10),
(41, '00`', 11),
(42, '90`', 11),
(43, '80`', 11),
(44, 'No me importa', 11),
(45, 'MP3', 12),
(46, 'Radio', 12),
(47, 'CD', 12),
(48, 'Nube', 12),
(49, 'Siempre', 13),
(50, 'A menudo', 13),
(51, 'En ocasiones', 13),
(52, 'Nunca', 13),
(53, 'Mas de 2', 14),
(54, 'Entre 1 y 2', 14),
(55, 'Entre 0,5 y 1', 14),
(56, 'Menos de medio litro', 14),
(57, 'Mas de 4', 15),
(58, 'Entre 3 y 2', 15),
(59, 'El fin de semana', 15),
(60, 'Nunca dejo de beber', 15),
(61, 'Mucho', 16),
(62, 'A veces', 16),
(63, 'Nunca', 16),
(64, 'No sabe/No contesta', 16),
(65, 'Siempre', 17),
(66, 'A veces', 17),
(67, 'A menudo', 17),
(68, 'Nunca', 17),
(69, 'Todas las semanas', 18),
(70, 'Todos los meses', 18),
(71, 'Cada 3 meses', 18),
(72, 'Una vez al año', 18),
(73, 'Si', 19),
(74, 'No', 19),
(75, 'Ole', 19),
(76, 'Olo', 19),
(77, 'Hamburgueseria', 20),
(78, 'Pizzeria', 20),
(79, 'Chino', 20),
(80, 'Indio', 20),
(81, 'Si', 21),
(82, 'No', 21),
(83, 'Tal fez', 21),
(84, 'Porque no', 21),
(85, 'Universidad', 22),
(86, 'Formacion Profesional', 22),
(87, 'Bachiller', 22),
(88, 'Graduado Escolar', 22),
(89, 'Si', 23),
(90, 'No', 23),
(91, 'Siempre', 23),
(92, 'A veces', 23),
(93, 'Si', 24),
(94, 'No', 24),
(95, 'Un poco', 24),
(96, 'Un mucho', 24),
(97, 'Todas las semanas', 25),
(98, 'Todos los meses', 25),
(99, 'Cada 3 meses', 25),
(100, 'Nunca', 25),
(101, 'Accion', 26),
(102, 'Comedia', 26),
(103, 'Terror', 26),
(104, 'Dibujos', 26),
(105, 'Si', 27),
(106, 'No', 27),
(107, 'Depende', 27),
(108, 'Me hace reir', 27),
(109, 'Si', 28),
(110, 'Depende', 28),
(111, 'Me hace llorar', 28),
(112, 'No', 28),
(113, 'Si', 29),
(114, 'No', 29),
(115, 'Pff', 29),
(116, 'Aiss', 29),
(117, 'Claro', 30),
(118, 'Cuando me sobra', 30),
(119, 'No, nunca', 30),
(120, 'He dicho nunca?', 30),
(121, 'Todas las semanas', 31),
(122, 'Todos los meses', 31),
(123, 'Cada 3 meses', 31),
(124, 'Nunca', 31),
(125, 'Si', 32),
(126, 'No', 32),
(127, 'Si me obliga mi mujer', 32),
(128, 'A veces', 32),
(129, 'Ropa', 33),
(130, 'Juegos', 33),
(131, 'Libros', 33),
(132, 'Electronica', 33),
(133, 'Todas las semanas', 34),
(134, 'Todos los meses', 34),
(135, 'Cada 3 meses', 34),
(136, 'Nunca', 34),
(137, 'Con compañia', 35),
(138, 'Solo', 35),
(139, 'Con mi sombra', 35),
(140, 'Alone in the dark', 35),
(141, '1', 36),
(142, '2', 36),
(143, '3', 36),
(144, 'Nunca', 36),
(145, 'Si', 37),
(146, 'No', 37),
(147, 'Tal vez', 37),
(148, 'Nunca', 37),
(149, 'En ciudad', 40),
(150, 'En espacios naturales', 40),
(151, 'En el mar', 40),
(152, 'En el sofá', 40),
(153, 'Si', 41),
(154, 'A veces', 41),
(155, 'Tal vez', 41),
(156, 'Nunca', 41),
(157, 'Siempre', 42),
(158, 'A veces', 42),
(159, 'Tal vez', 42),
(160, 'Nunca', 42),
(161, 'Siempre', 43),
(162, 'A veces', 43),
(163, 'Tal vez', 43),
(164, 'Nunca', 43),
(165, 'Si', 46),
(166, 'A veces', 46),
(167, 'Tal vez', 46),
(168, 'Nunca', 46),
(169, 'Siempre', 47),
(170, '1 por semana', 47),
(171, '2 o mas por semana', 47),
(172, 'Nunca', 47),
(173, 'Si', 48),
(174, 'A veces', 48),
(175, 'Tal vez', 48),
(176, 'Nunca', 48),
(177, '2 o mas', 49),
(178, '1', 49),
(179, 'Ninguno', 49),
(180, 'leer?', 49),
(181, 'Aventura', 50),
(182, 'Drama', 50),
(183, 'Terror', 50),
(184, 'Educativo', 50),
(185, 'Si', 51),
(186, 'A veces', 51),
(187, 'Tal vez', 51),
(188, 'No', 51),
(189, 'Si', 52),
(190, 'A veces', 52),
(191, 'Tal vez', 52),
(192, 'No', 52),
(193, 'Si', 53),
(194, 'A veces', 53),
(195, 'Tal vez', 53),
(196, 'No', 53),
(197, '1 coche', 54),
(198, '2 coches o mas', 54),
(199, '5 ferraris bitches', 54),
(200, 'Ninguno', 54),
(201, 'No estoy satisfecho', 55),
(202, 'Adios Rajoy', 55),
(203, 'Muy satisfecho', 55),
(204, 'Me encanta la politica', 55),
(205, 'Mucho', 56),
(206, 'Si', 56),
(207, 'Un poco', 56),
(208, 'No', 56),
(209, 'Mucho', 57),
(210, 'A menudo', 57),
(211, 'A veces', 57),
(212, 'nunca', 57),
(213, 'Accion', 58),
(214, 'Deportes', 58),
(215, 'Pensar', 58),
(216, 'League of Legends', 58),
(217, '20 horas', 59),
(218, '10 horas', 59),
(219, 'Enetre 1 y 10 horas', 59),
(220, 'No duermo', 59),
(221, 'Sólo las 24 horas del dia, 7 dias de la semana, 4 semanas del mes, los 12 meses al año, nada mas.', 60),
(222, 'A veces', 60),
(223, 'Soy noob', 60),
(224, 'No', 60),
(225, 'Si', 61),
(226, 'No', 61),
(227, 'Mucho', 61),
(228, 'Poco', 61),
(229, 'Mucho', 62),
(230, 'Poco', 62),
(231, 'Si', 62),
(232, 'No', 62),
(233, 'Sí', 63),
(234, 'No', 63),
(235, 'Tendré', 63),
(236, 'Nunca tendré', 63),
(237, 'Mucho', 64),
(238, 'Poco', 64),
(239, 'Nada', 64),
(240, 'A veces', 64),
(241, 'Si', 65),
(242, 'No', 65),
(243, 'Todavía no', 65),
(244, 'Tendré', 65),
(245, 'IPhone', 66),
(246, 'Nexus', 66),
(247, 'Samsung', 66),
(248, 'Sony', 66),
(249, 'Sí', 67),
(250, 'No', 67),
(251, 'Poco', 67),
(252, 'Mucho', 67),
(253, 'Si', 68),
(254, 'No', 68),
(255, 'Mucho', 68),
(256, 'Poco', 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

CREATE TABLE IF NOT EXISTS `operacion` (
`id` int(6) NOT NULL COMMENT 'ID Operación',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción',
  `id_objeto` int(6) DEFAULT NULL COMMENT 'ID Objeto',
  `id_tipooperacion` int(6) DEFAULT NULL COMMENT 'ID Tipo Operación'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=461 ;

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
(221, 'get', 20, 1),
(222, 'getaggregateviewone', 20, 1),
(223, 'getprettycolumns', 20, 1),
(224, 'getcolumns', 20, 1),
(225, 'getpage', 20, 1),
(226, 'getpages', 20, 1),
(227, 'getregisters', 20, 1),
(228, 'getaggregateviewsome', 20, 1),
(229, 'remove', 20, 2),
(230, 'set', 20, 2),
(231, 'updateOne', 20, 2),
(232, 'get', 21, 1),
(233, 'getaggregateviewone', 21, 1),
(234, 'getprettycolumns', 21, 1),
(235, 'getcolumns', 21, 1),
(236, 'getpage', 21, 1),
(237, 'getpages', 21, 1),
(238, 'getregisters', 21, 1),
(239, 'getaggregateviewsome', 21, 1),
(240, 'remove', 21, 2),
(241, 'set', 21, 2),
(242, 'updateOne', 21, 2),
(243, 'get', 22, 1),
(244, 'getaggregateviewone', 22, 1),
(245, 'getprettycolumns', 22, 1),
(246, 'getcolumns', 22, 1),
(247, 'getpage', 22, 1),
(248, 'getpages', 22, 1),
(249, 'getregisters', 22, 1),
(250, 'getaggregateviewsome', 22, 1),
(251, 'remove', 22, 2),
(252, 'set', 22, 2),
(253, 'updateOne', 22, 2),
(254, 'get', 23, 1),
(255, 'getaggregateviewone', 23, 1),
(256, 'getprettycolumns', 23, 1),
(257, 'getcolumns', 23, 1),
(258, 'getpage', 23, 1),
(259, 'getpages', 23, 1),
(260, 'getregisters', 23, 1),
(261, 'getaggregateviewsome', 23, 1),
(262, 'remove', 23, 2),
(263, 'set', 23, 2),
(264, 'updateOne', 23, 2),
(265, 'get', 24, 1),
(266, 'getaggregateviewone', 24, 1),
(267, 'getprettycolumns', 24, 1),
(268, 'getcolumns', 24, 1),
(269, 'getpage', 24, 1),
(270, 'getpages', 24, 1),
(271, 'getregisters', 24, 1),
(272, 'getaggregateviewsome', 24, 1),
(273, 'remove', 24, 2),
(274, 'set', 24, 2),
(275, 'updateOne', 24, 2),
(276, 'get', 25, 1),
(277, 'getaggregateviewone', 25, 1),
(278, 'getprettycolumns', 25, 1),
(279, 'getcolumns', 25, 1),
(280, 'getpage', 25, 1),
(281, 'getpages', 25, 1),
(282, 'getregisters', 25, 1),
(283, 'getaggregateviewsome', 25, 1),
(284, 'remove', 25, 2),
(285, 'set', 25, 2),
(286, 'updateOne', 25, 2),
(287, 'get', 26, 1),
(288, 'getaggregateviewone', 26, 1),
(289, 'getprettycolumns', 26, 1),
(290, 'getcolumns', 26, 1),
(291, 'getpage', 26, 1),
(292, 'getpages', 26, 1),
(293, 'getregisters', 26, 1),
(294, 'getaggregateviewsome', 26, 1),
(295, 'remove', 26, 2),
(296, 'set', 26, 2),
(297, 'updateOne', 26, 2),
(298, 'get', 27, 1),
(299, 'getaggregateviewone', 27, 1),
(300, 'getprettycolumns', 27, 1),
(301, 'getcolumns', 27, 1),
(302, 'getpage', 27, 1),
(303, 'getpages', 27, 1),
(304, 'getregisters', 27, 1),
(305, 'getaggregateviewsome', 27, 1),
(306, 'remove', 27, 2),
(307, 'set', 27, 2),
(308, 'updateOne', 27, 2),
(309, 'get', 28, 1),
(310, 'getaggregateviewone', 28, 1),
(311, 'getprettycolumns', 28, 1),
(312, 'getcolumns', 28, 1),
(313, 'getpage', 28, 1),
(314, 'getpages', 28, 1),
(315, 'getregisters', 28, 1),
(316, 'getaggregateviewsome', 28, 1),
(317, 'remove', 28, 2),
(318, 'set', 28, 2),
(319, 'updateOne', 28, 2),
(320, 'get', 29, 1),
(321, 'getaggregateviewone', 29, 1),
(322, 'getprettycolumns', 29, 1),
(323, 'getcolumns', 29, 1),
(324, 'getpage', 29, 1),
(325, 'getpages', 29, 1),
(326, 'getregisters', 29, 1),
(327, 'getaggregateviewsome', 29, 1),
(328, 'remove', 29, 2),
(329, 'set', 29, 2),
(330, 'updateOne', 29, 2),
(331, 'get', 30, 1),
(332, 'getaggregateviewone', 30, 1),
(333, 'getprettycolumns', 30, 1),
(334, 'getcolumns', 30, 1),
(335, 'getpage', 30, 1),
(336, 'getpages', 30, 1),
(337, 'getregisters', 30, 1),
(338, 'getaggregateviewsome', 30, 1),
(339, 'remove', 30, 2),
(340, 'set', 30, 2),
(341, 'updateOne', 30, 2),
(342, 'get', 31, 1),
(343, 'getaggregateviewone', 31, 1),
(344, 'getprettycolumns', 31, 1),
(345, 'getcolumns', 31, 1),
(346, 'getpage', 31, 1),
(347, 'getpages', 31, 1),
(348, 'getregisters', 31, 1),
(349, 'getaggregateviewsome', 31, 1),
(350, 'remove', 31, 2),
(351, 'set', 31, 2),
(352, 'updateOne', 31, 2),
(353, 'get', 32, 1),
(354, 'getaggregateviewone', 32, 1),
(355, 'getprettycolumns', 32, 1),
(356, 'getcolumns', 32, 1),
(357, 'getpage', 32, 1),
(358, 'getpages', 32, 1),
(359, 'getregisters', 32, 1),
(360, 'getaggregateviewsome', 32, 1),
(361, 'remove', 32, 2),
(362, 'set', 32, 2),
(363, 'updateOne', 32, 2),
(364, 'get', 33, 1),
(365, 'getaggregateviewone', 33, 1),
(366, 'getprettycolumns', 33, 1),
(367, 'getcolumns', 33, 1),
(368, 'getpage', 33, 1),
(369, 'getpages', 33, 1),
(370, 'getregisters', 33, 1),
(371, 'getaggregateviewsome', 33, 1),
(372, 'remove', 33, 2),
(373, 'set', 33, 2),
(374, 'updateOne', 33, 2),
(375, 'get', 34, 1),
(376, 'getaggregateviewone', 34, 1),
(377, 'getprettycolumns', 34, 1),
(378, 'getcolumns', 34, 1),
(379, 'getpage', 34, 1),
(380, 'getpages', 34, 1),
(381, 'getregisters', 34, 1),
(382, 'getaggregateviewsome', 34, 1),
(383, 'remove', 34, 2),
(384, 'set', 34, 2),
(385, 'updateOne', 34, 2),
(386, 'get', 35, 1),
(387, 'getaggregateviewone', 35, 1),
(388, 'getprettycolumns', 35, 1),
(389, 'getcolumns', 35, 1),
(390, 'getpage', 35, 1),
(391, 'getpages', 35, 1),
(392, 'getregisters', 35, 1),
(393, 'getaggregateviewsome', 35, 1),
(394, 'remove', 35, 2),
(395, 'set', 35, 2),
(396, 'updateOne', 35, 2),
(397, 'get', 36, 1),
(398, 'getaggregateviewone', 36, 1),
(399, 'getprettycolumns', 36, 1),
(400, 'getcolumns', 36, 1),
(401, 'getpage', 36, 1),
(402, 'getpages', 36, 1),
(403, 'getregisters', 36, 1),
(404, 'getaggregateviewsome', 36, 1),
(405, 'remove', 36, 2),
(406, 'set', 36, 2),
(407, 'updateOne', 36, 2),
(408, 'get', 37, 1),
(409, 'getaggregateviewone', 37, 1),
(410, 'getprettycolumns', 37, 1),
(411, 'getcolumns', 37, 1),
(412, 'getpage', 37, 1),
(413, 'getpages', 37, 1),
(414, 'getregisters', 37, 1),
(415, 'getaggregateviewsome', 37, 1),
(416, 'remove', 37, 2),
(417, 'set', 37, 2),
(418, 'updateOne', 37, 2),
(419, 'get', 38, 1),
(420, 'getaggregateviewone', 38, 1),
(421, 'getprettycolumns', 38, 1),
(422, 'getcolumns', 38, 1),
(423, 'getpage', 38, 1),
(424, 'getpages', 38, 1),
(425, 'getregisters', 38, 1),
(426, 'getaggregateviewsome', 38, 1),
(427, 'remove', 38, 2),
(428, 'set', 38, 2),
(429, 'updateOne', 38, 2),
(430, 'get', 39, 1),
(431, 'getaggregateviewone', 39, 1),
(432, 'getprettycolumns', 39, 1),
(433, 'getcolumns', 39, 1),
(434, 'getpage', 39, 1),
(435, 'getpages', 39, 1),
(436, 'getregisters', 39, 1),
(437, 'getaggregateviewsome', 39, 1),
(438, 'remove', 39, 2),
(439, 'set', 39, 2),
(440, 'updateOne', 39, 2),
(441, 'get', 40, 1),
(442, 'getaggregateviewone', 40, 1),
(443, 'getprettycolumns', 40, 1),
(444, 'getcolumns', 40, 1),
(445, 'getpage', 40, 1),
(446, 'getpages', 40, 1),
(447, 'getregisters', 40, 1),
(448, 'getaggregateviewsome', 40, 1),
(449, 'remove', 40, 2),
(450, 'set', 40, 2),
(451, 'updateOne', 40, 2),
(452, 'getAllPreguntas', 6, 1),
(453, 'setForm', 27, 2),
(454, 'agregaramigo', 2, 2),
(455, 'removeamigo', 2, 2),
(456, 'existeamigo', 2, 1),
(457, 'duplicate', 26, 2),
(458, 'getcomentarioamigo', 26, 1),
(459, 'getpagescomentarioamigo', 26, 1),
(460, 'get', 41, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
`id` int(6) NOT NULL COMMENT 'ID Permiso',
  `id_tipousuario` int(6) DEFAULT NULL COMMENT 'ID Tipo de usuario',
  `id_tipooperacion` int(6) DEFAULT NULL COMMENT 'ID Tipo Operación',
  `permitido` tinyint(1) DEFAULT NULL COMMENT 'Permitido'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

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
-- Indices de la tabla `opcion`
--
ALTER TABLE `opcion`
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
-- AUTO_INCREMENT de la tabla `opcion`
--
ALTER TABLE `opcion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=257;
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
