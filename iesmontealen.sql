-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-05-2015 a las 08:23:32
-- Versión del servidor: 5.5.39
-- Versión de PHP: 5.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `iesmontealen`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `apellidos`, `email`) VALUES
(1, 'jesus', 'ndong', 'j1p9n8n6@hotmail.com ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'Nombre',
  `id_nivel` int(12) DEFAULT NULL COMMENT 'ID Nivel',
  `apellido` varchar(255) DEFAULT NULL COMMENT 'Apellidos',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `id_usuario` int(12) DEFAULT NULL COMMENT 'ID_Usuario',
  `imagen` varchar(255) DEFAULT NULL COMMENT 'Imagen'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `id_nivel`, `apellido`, `email`, `id_usuario`, `imagen`) VALUES
(1, 'Betina  ', 2, 'Guerra Arroyo', 'jivohebog-6520@yopmail.com', 1, '<img src="/images/alumno.png"  width="150" />'),
(2, 'Guzmán ', 1, 'Padron Esquivel', 'wijytiru-6960@yopmail.com', 2, '<img src="/images/alumno.png"  width="150" />'),
(3, 'Haide', 3, 'Tejada Escalante', 'unaffanny-5394@yopmail.com', 3, '<img src="/images/alumno.png"  width="150" />'),
(4, 'Martial  ', 4, 'Ledesma Carvajal', 'ceqixaran-2559@yopmail.com', 4, '<img src="/images/alumno.png"  width="150" />'),
(5, 'Matty  ', 6, 'Peralta Suárez', 'gutezahu-8248@yopmail.com', 5, '<img src="/images/alumno.png"  width="150" />'),
(6, 'Adaluz ', 5, 'Jaime Valverde', 'illattabett-6442@yopmail.com', 6, '<img src="/images/alumno.png"  width="150" />'),
(7, 'Milton', 7, 'Suárez Montes', 'effynnoppuj-6270@yopmail.com', 7, '<img src="/images/alumno.png"  width="150" />'),
(8, 'Mabel ', 3, 'Alba  Sisneros', 'ennodazod-7760@yopmail.com', 8, '<img src="/images/alumno.png"  width="150" />'),
(9, 'Aisha ', 8, 'Maya Olivas', 'ifaxagyj-1268@yopmail.com', 9, '<img src="/images/alumno.png"  width="150" />'),
(10, 'Lutero  ', 1, 'Badillo Pacheco', 'uxiddazuffe-1521@yopmail.com', 10, '<img src="/images/alumno.png"  width="150" />'),
(11, 'Millan  ', 2, 'López Ulloa', 'qetynunopp-9072@yopmail.com', 11, '<img src="/images/alumno.png"  width="150" />'),
(12, 'Jose%20Manuel', 7, 'Obama%20Obono', '', 27, '<img src="/images/alumno.png"  width="150" />');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE IF NOT EXISTS `asignatura` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nombre` varchar(255) DEFAULT NULL COMMENT 'Nombre',
  `id_profesor` int(12) DEFAULT NULL COMMENT 'ID Profesor',
  `id_nivel` int(12) DEFAULT NULL COMMENT 'ID Nivel'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `nombre`, `id_profesor`, `id_nivel`) VALUES
(1, 'Lengua Castellana y Literatura', 1, 4),
(2, 'Lengua y Literatura de las CC.AA.\r\n', 14, 4),
(3, 'Lengua Extranjera', 4, 4),
(4, 'Música', 2, 4),
(5, 'Tecnología', 12, 4),
(6, 'Educación para la ciudadanía y los derechos humanos', 8, 4),
(7, 'Enseñanzas de Religión (Religión o Historia y cultura de las religiones)', 11, 4),
(8, 'Ciencias Sociales, Geografía e Historia', 7, 4),
(9, 'Educación Física', 1, 4),
(10, 'Ciencias de la Naturaleza', 13, 4),
(11, 'Lengua Castellana y Literatura', 1, 1),
(12, 'Lengua y Literatura de las CC.AA.\r\n', 14, 1),
(13, 'Lengua Extranjera', 4, 1),
(14, 'Música', 2, 1),
(15, 'Tecnología', 12, 1),
(16, 'Educación para la ciudadanía y los derechos humanos', 8, 1),
(17, 'Enseñanzas de Religión (Religión o Historia y cultura de las religiones)', 11, 1),
(18, 'Ciencias Sociales, Geografía e Historia', 7, 1),
(19, 'Educación Física', 1, 1),
(20, 'Ciencias de la Naturaleza', 13, 1),
(21, 'Lengua Castellana y Literatura', 1, 5),
(22, 'Lengua y Literatura de las CC.AA.\r\n', 14, 5),
(23, 'Lengua Extranjera', 4, 5),
(24, 'Música', 2, 5),
(25, 'Tecnología', 12, 5),
(26, 'Educación para la ciudadanía y los derechos humanos', 8, 5),
(27, 'Enseñanzas de Religión (Religión o Historia y cultura de las religiones)', 11, 5),
(28, 'Ciencias Sociales, Geografía e Historia', 7, 5),
(29, 'Educación Física', 1, 5),
(30, 'Ciencias de la Naturaleza', 13, 5),
(31, 'Lengua Castellana y Literatura', 1, 9),
(32, 'Lengua y Literatura de las CC.AA.\r\n', 14, 9),
(33, 'Lengua Extranjera', 4, 9),
(34, 'Música', 2, 9),
(35, 'Tecnología', 12, 9),
(36, 'Educación para la ciudadanía y los derechos humanos', 8, 9),
(37, 'Enseñanzas de Religión (Religión o Historia y cultura de las religiones)', 11, 9),
(38, 'Ciencias Sociales, Geografía e Historia', 7, 9),
(39, 'Educación Física', 1, 9),
(40, 'Ciencias de la Naturaleza', 13, 10),
(41, 'Ciencias de la Naturaleza', 13, 7),
(42, 'Educación Física', 1, 7),
(43, 'Ciencias Sociales, Geografía e Historia', 7, 7),
(44, 'Enseñanzas de Religión (Religión o Historia y cultura de las religiones)', 11, 7),
(45, 'Educación para la ciudadanía y los derechos humanos', 8, 7),
(46, 'Tecnología', 12, 7),
(47, 'Música', 2, 7),
(48, 'Lengua Extranjera', 4, 7),
(49, 'Lengua y Literatura de las CC.AA.\r\n', 14, 7),
(50, 'Lengua Castellana y Literatura', 1, 7),
(51, 'Lengua Castellana y Literatura', 1, 8),
(52, 'Lengua Extranjera', 4, 8),
(53, 'Tecnología', 12, 8),
(54, 'Enseñanzas de Religión (Religión o Historia y cultura de las religiones)', 11, 8),
(55, 'Educación Física', 1, 8),
(56, 'Ciencias de la Naturaleza', 13, 8),
(57, 'Lengua y Literatura de las CC.AA.\r\n', 14, 2),
(58, 'Música', 2, 2),
(59, 'Educación para la ciudadanía y los derechos humanos', 8, 2),
(60, 'Ciencias Sociales, Geografía e Historia', 7, 2),
(61, 'Ciencias de la Naturaleza', 13, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
`id` int(11) NOT NULL COMMENT 'Identificador',
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `tipo`) VALUES
(1, 'Estoy contento'),
(2, 'Estoy feliz'),
(3, 'Estoy happy'),
(4, 'Estoy triste'),
(5, 'Estoy con fiebre'),
(6, 'Tengo fiebre'),
(7, 'En el gimnasio'),
(8, 'De quintos'),
(9, 'En el cine'),
(10, 'Estudiando'),
(11, 'En el trabajo'),
(12, 'Durmiendo'),
(13, 'En el baño...'),
(14, 'En el medico'),
(15, 'De fiesta'),
(16, 'Confuso'),
(17, 'Deprimido'),
(18, 'Fantastico'),
(19, 'OP'),
(20, 'rafa es el mejor'),
(52, 'Listo'),
(56, 'Listo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
`id` int(12) NOT NULL COMMENT 'ID',
  `dia` varchar(255) DEFAULT NULL COMMENT 'Día',
  `horainicio` varchar(255) DEFAULT NULL COMMENT 'Hora Inicio',
  `horafin` varchar(255) DEFAULT NULL COMMENT 'Hora Fin',
  `id_asignatura` int(12) DEFAULT NULL COMMENT 'ID Asignatura'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id`, `dia`, `horainicio`, `horafin`, `id_asignatura`) VALUES
(1, 'Lunes', '09:30', '10:15', 2),
(2, 'Lunes', '10:15', '11:15', 4),
(3, 'Lunes', '11:30', '12:15', 3),
(4, 'Lunes', '12:15', '13:00', 1),
(5, 'Lunes', '13:00', '14:30', 5),
(6, 'Martes', '9:30', '10:15', 8),
(7, 'Martes', '10:15', '11:15', 3),
(8, 'Martes', '11:30', '12;15', 9),
(9, 'Martes', '12:15', '13:00', 10),
(10, 'Martes', '13:00', '14:30', 4),
(11, 'Miercoles', '09:30', '10:15', 2),
(12, 'Miercoles', '10:15', '11:15', 7),
(13, 'Miercoles', '12:15', '13:00', 8),
(14, 'Miercoles', '12:15', '13:00', 4),
(15, 'Miercoles', '13:00', '14:30', 5),
(16, 'Jueves', '09:30', '10:15', 6),
(17, 'Jueves', '10:15', '11:15', 9),
(18, 'Jueves', '11:30', '12:15', 10),
(19, 'Jueves', '12:15', '13:00', 10),
(20, 'Miercoles', '13:00', '14:30', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajeprivado`
--

CREATE TABLE IF NOT EXISTS `mensajeprivado` (
`id` int(6) NOT NULL COMMENT 'ID',
  `fechaenvio` datetime DEFAULT NULL COMMENT 'Fecha de envío',
  `id_usuario_1` int(6) DEFAULT NULL COMMENT 'ID Usuario envía',
  `id_usuario_2` int(6) DEFAULT NULL COMMENT 'ID Usuario recibe',
  `asunto` varchar(255) DEFAULT NULL COMMENT 'Asunto',
  `mensaje` longtext COMMENT 'Mensaje'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `mensajeprivado`
--

INSERT INTO `mensajeprivado` (`id`, `fechaenvio`, `id_usuario_1`, `id_usuario_2`, `asunto`, `mensaje`) VALUES
(1, '2014-11-11 08:33:19', 1, 29, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(2, '2014-11-04 06:45:15', 4, 23, 'Donec quam felis', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.'),
(3, '2014-11-10 07:57:13', 2, 7, 'Nullam dictum felis eu pede mollis pretium', 'Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.'),
(4, '2014-11-03 12:08:32', 15, 16, 'Phasellus viverra nulla ut metus varius laoreet', 'Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.'),
(5, '2014-11-14 08:38:25', 8, 9, 'Maecenas tempus, tellus eget condimentum rhoncus', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.'),
(6, '2014-11-19 05:24:42', 18, 12, 'Donec vitae sapien ut libero venenatis faucibus', 'Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, '),
(7, '2014-11-16 12:32:12', 11, 6, 'Sed consequat, leo eget bibendum sodales', 'Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla.'),
(8, '2014-11-12 12:27:30', 30, 29, 'Maecenas nec odio et ante tincidunt tempus', 'Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.'),
(9, '2014-11-19 04:24:21', 13, 14, 'Aenean imperdiet. Etiam ultricies nisi vel augue', 'Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.'),
(10, '2014-11-14 08:30:05', 6, 5, 'Vivamus elementum semper nisi', 'Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum.'),
(11, '2014-11-01 06:35:22', 19, 24, 'Nulla consequat massa quis enim', 'Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.'),
(12, '2014-11-09 05:08:21', 24, 23, 'Vestibulum ante ipsum primis in faucibus', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut '),
(13, '2014-11-17 17:21:30', 17, 15, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.'),
(14, '2014-11-15 00:22:28', 15, 9, 'Quis autem vel eum iure reprehenderit', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?'),
(15, '2014-11-12 23:17:59', 3, 27, 'At vero eos et accusamus et iusto odio', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.'),
(16, '2014-11-02 21:13:40', 25, 29, 'Nam libero tempore, cum soluta nobis est eligendi', 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.'),
(17, '2014-11-13 10:39:10', 6, 1, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?'),
(18, '2014-11-14 15:13:34', 17, 11, 'Buenas tardes', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.'),
(19, '2014-11-17 08:36:28', 22, 21, 'Sed ut perspiciatis unde omnis iste natus error', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'),
(20, '2014-11-09 09:43:32', 28, 29, 'Y, viéndole don Quijote de aquella manera', 'Y, viéndole don Quijote de aquella manera, con muestras de tanta tristeza, le dijo: Sábete, Sancho, que no es un hombre más que otro si no hace más que otro.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE IF NOT EXISTS `nivel` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nivel` varchar(255) DEFAULT NULL COMMENT 'Nivel',
  `curso` varchar(255) DEFAULT NULL COMMENT 'curso',
  `aula` varchar(255) DEFAULT NULL COMMENT 'Aula'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `nivel`, `curso`, `aula`) VALUES
(1, 'Secundaria', 'segundo', '304'),
(2, 'Primaria', 'tercero', '309'),
(3, 'Bachiller', 'Primero bachiller', '315'),
(4, 'Secundaria', 'tercero', '306'),
(5, 'Secundaria', 'primero', '308'),
(6, 'Bachiller', 'segundo bachiller', '316'),
(7, 'Primaria', 'segundo', '310'),
(8, 'Primaria', 'primero', '311'),
(9, 'Secundaria', 'Cuarto', '320');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
`id` int(12) NOT NULL COMMENT 'ID',
  `nota` int(12) DEFAULT NULL COMMENT 'Nota',
  `id_alumno` int(12) DEFAULT NULL COMMENT 'ID Alumno',
  `id_asignatura` int(12) DEFAULT NULL COMMENT 'ID Asignatura'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`id`, `nota`, `id_alumno`, `id_asignatura`) VALUES
(1, 6, 3, 2),
(2, 4, 6, 3),
(3, 8, 1, 1),
(4, 6, 2, 4),
(5, 7, 5, 4);

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
(17, 'usuario'),
(18, 'publicacion'),
(19, 'mensajeprivado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operacion`
--

CREATE TABLE IF NOT EXISTS `operacion` (
`id` int(6) NOT NULL COMMENT 'ID Operación',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción',
  `id_objeto` int(6) DEFAULT NULL COMMENT 'ID Objeto',
  `id_tipooperacion` int(6) DEFAULT NULL COMMENT 'ID Tipo Operación'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=464 ;

--
-- Volcado de datos para la tabla `operacion`
--

INSERT INTO `operacion` (`id`, `descripcion`, `id_objeto`, `id_tipooperacion`) VALUES
(1, 'get', 1, 1),
(2, 'getaggregateviewone', 1, 1),
(3, 'getprettycolumns', 1, 1),
(4, 'getcountAsignaturas', 1, 1),
(5, 'getpaginaAsignatura', 1, 1),
(6, 'getpaginasAsignaturas', 1, 1),
(7, 'getregisters', 1, 1),
(8, 'getaggregateviewsomefiltradoasignaturas', 1, 1),
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
(459, 'getpagescomentarioamigo', 26, 1),
(460, 'getcolumns', 1, 1),
(461, 'getpage', 1, 1),
(462, 'getpages', 1, 1),
(463, 'getaggregateviewsome', 1, 1);

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
  `apellido` varchar(255) DEFAULT NULL COMMENT 'Apellidos',
  `id_usuario` int(6) NOT NULL COMMENT 'ID Usuario',
  `imagen` varchar(255) DEFAULT NULL COMMENT 'Imagen'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `email`, `especialista`, `apellido`, `id_usuario`, `imagen`) VALUES
(1, 'Jose Alberto', 'JoseSWeldon@superrito.com', 'Audición y Lenguaje', 'Vanegas Coronado', 13, '<img src="/images/profesor.png"  width="150" />'),
(2, 'Areb', 'ArebGallegosOlivo@superrito.com', 'Música.', 'Gallegos Olivo', 14, '<img src="/images/profesor.png"  width="150" />'),
(3, 'Bartelemy ', 'BartelemyChapaZapata@superrito.com', 'Educación Física', 'Chapa Zapata', 15, '<img src="/images/profesor.png"  width="150" />'),
(4, 'Agape ', 'Agape Ozuna Oquendo', 'Lengua extranjera: Alemán', 'Ozuna Orguendo', 16, '<img src="/images/profesor.png"  width="150" />'),
(5, 'Aniela', 'AnielaBriseoReyna@superrito.com', 'Lengua extranjera: Francés', 'Briseño Reyna', 17, '<img src="/images/profesor.png"  width="150" />'),
(6, 'Pascua', 'ascuaEscobedoNavarro@gustr.com', 'Lengua extranjera: Inglés', 'Escobedo Navarro', 18, '<img src="/images/profesor.png"  width="150" />'),
(7, 'Cameron ', 'CameronBarrazaHerrera@gustr.com', 'Educación Primaria', 'Barraza Herrera', 19, '<img src="/images/profesor.png"  width="150" />'),
(8, 'Jules ', 'JulesCamachoCuriel@superrito.com', 'Educación Infantil', 'Camacho Curiel', 20, '<img src="/images/profesor.png"  width="150" />'),
(9, 'Nantilde', 'NantildeMezaFierro@superrito.com', 'Audición y Lenguaje', 'Meza Fierro', 21, '<img src="/images/profesor.png"  width="150" />'),
(10, 'Nereo ', 'NereoAdameBahena@gustr.com ', 'Educación Física', 'Adame Bahena', 22, '<img src="/images/profesor.png"  width="150" />'),
(11, 'Amal ', 'AmalCurielAgosto@superrito.com ', 'Educación Primaria', 'Curiel Agosto', 23, '<img src="/images/profesor.png"  width="150" />'),
(12, 'Martin', 'beleddeppo-3307@yopmail.com', 'Tecnología', 'Pincho Nieto', 0, '<img src="/images/profesor.png"  width="150" />'),
(13, 'Silvia', 'huffenyhatt-2083@yopmail.com', 'Ciencias Naturales', 'Ochoa Santana', 0, '<img src="/images/profesor.png"  width="150" />'),
(14, 'Alonso', 'xajusibimmi-8211@yopmail.com', 'Lengua y Literatura de las CC.AA.', 'Sorento Cansina', 0, '<img src="/images/profesor.png"  width="150" />');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE IF NOT EXISTS `publicacion` (
`id` int(11) NOT NULL COMMENT 'Identificador',
  `contenido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contenido',
  `id_usuario` int(11) DEFAULT NULL COMMENT 'Usuario',
  `fechacreacion` datetime DEFAULT NULL COMMENT 'Fecha de creación'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `contenido`, `id_usuario`, `fechacreacion`) VALUES
(1, 'Esto no es twitter', 2, '2014-11-13 15:15:27'),
(2, 'Peliculon que hacen en antena 3', 2, '2014-11-18 05:30:12'),
(3, 'No tengo amigos :(', 1, '2014-11-12 07:25:26'),
(4, 'Escribir 20 posts es una faena', 6, '2014-11-11 03:38:17'),
(5, 'El nuevo cd de u2 tiene muchos temazos', 6, '2014-11-04 10:18:23'),
(6, 'Mucho nuevo hay por aqui', 17, '2014-11-06 19:12:59'),
(7, 'Hoy hace un dia de m...\r\na viciarse al lol', 3, '2014-11-16 00:37:20'),
(8, 'El usuario numero 5 es un cachondo', 6, '2014-11-01 23:59:00'),
(9, 'No ten go amigos y no se escrivir', 17, '2014-11-21 00:00:59'),
(10, 'Lo que hay que leer', 20, '2014-11-19 10:46:09'),
(11, 'Rafa seguro que es el mejor', 5, '2014-11-17 04:07:04'),
(12, 'Tengo al pajaro molestando todo el dia', 9, '2014-11-12 23:21:18'),
(13, 'No todos mis amigos me comprenden', 10, '2014-11-11 15:11:52'),
(14, 'No tengo casi amigos :(', 10, '2014-11-05 17:59:59'),
(15, 'El halloween mola, buena tarde con los colegas', 2, '2014-11-19 08:13:05'),
(16, 'Im the first', 1, '2014-11-13 23:40:22'),
(17, 'Menuda party hard que me acabo de pegar tete', 1, '2014-11-14 17:14:22'),
(18, 'Rusty cole se considera un realista pero filosoficamente hablando un pesimista', 13, '2014-11-07 06:59:10'),
(19, 'Skyler debe morir es tediosa no hay quien aguante eso', 13, '2014-11-10 10:08:06'),
(20, 'El Pablo Motos cada dia lo veo mas alto o sera que los invitados ...', 13, '2014-11-22 15:40:22');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'profesor'),
(3, 'alumno'),
(4, 'padre 0 tutore');

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
  `login` varchar(255) DEFAULT NULL COMMENT 'Nombre de Usuario',
  `password` varchar(255) DEFAULT NULL COMMENT 'Contraseña',
  `id_tipousuario` int(11) DEFAULT NULL COMMENT 'Tipo de Usuario',
  `ciudad` varchar(255) DEFAULT NULL COMMENT 'Ciudad',
  `firma` varchar(255) DEFAULT NULL COMMENT 'Firma',
  `skin` varchar(255) DEFAULT NULL COMMENT 'skin'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `id_tipousuario`, `ciudad`, `firma`, `skin`) VALUES
(1, 'betina', 'betina', 3, 'Valencia', 'is my life and do what I want', 'main'),
(2, 'guzmán', 'guzmán', 3, 'Valencia', 'http://criticalandia.com críticas de entretenimiento, listas, opiniones...', 'main'),
(3, 'haide', 'haide', 3, 'Valencia', 'If you love something, set it free. Unless it''''s a tiger.', 'main'),
(4, 'martial', 'martial', 3, 'Madrid', '"El único límite a nuestros logros de mañana está en nuestras dudas de hoy."', 'main'),
(5, 'matty', 'matty', 3, 'Castellon', 'Plataforma: ORGULLLO CADISTA no.58', 'main'),
(6, 'adaluz', 'adaluz', 3, 'Alicante', 'Ironía: Figura literaria mediante la cual se da a entender lo contrario de lo que se dice.', 'main'),
(7, 'milton', 'milton', 3, 'Alicante', 'Paso de firmas', 'main'),
(8, 'mabel', 'mabel', 3, 'Alcoy', 'Camisetas y calzado www.pedidoshicks.com', 'main'),
(9, 'aisha', 'aisha', 3, 'Valencia', 'PEÑA COLCHONERA Socio número 629', 'main'),
(10, 'lutero', 'lutero', 3, 'Barcelona', 'No todos los catalanes somos independentistas', 'main'),
(11, 'millan', 'millan', 3, 'Zaragoza', '"Obsesionado es tan sólo la palabra que usan los perezosos para describir a los dedicados"', 'main'),
(12, 'jesus', 'jesus', 1, 'Valencia', 'El principio de la sabiduria es el temor a Dios..!!', 'main'),
(13, 'jose', 'jose', 2, 'Valencia', 'Buenas tardes', 'main'),
(14, 'areb', 'areb', 2, 'Valencia', 'Preparado para cualquier combate', 'main'),
(15, 'bartelemy', 'bartelemy', 2, 'Sevilla', 'Si tienes un Ibiza o un Cordoba, este es tu club: www.clubseatcordoba.com', 'main'),
(16, 'agape', 'agape', 2, 'Barcelona', 'No hay dos sin tres', 'main'),
(17, 'aniela', 'aniela', 2, 'Valencia', 'Tesis+Antítesis=Síntesis. Problema+Acción = Solución.', 'main'),
(18, 'pascua', 'pascua', 2, 'Valencia', 'Y yo me iré. y se quedará mi huerto con su verde árbol, y con su pozo blanco. Y yo me iré.. Y se quedarán los pájaros cantando', 'main'),
(19, 'cameron', 'cameron', 2, 'Castellon', 'La Infanta no sabía nada y punto.', 'main'),
(20, 'jules', 'jules', 2, 'Valencia', 'Viva España', 'main'),
(21, 'nantilde', 'nantilde', 2, 'Valencia', 'La gente cree que soy una mala persona, pero no es cierto, yo tengo el corazón de un niño...en un frasco con formol encima de mi escritorio.', 'main'),
(22, 'nereo', 'nereo', 2, 'Valencia', 'Y veréis el resurgir poderoso del guerrero, sin miedo a leyes ni a nostalgias.', 'main'),
(23, 'amal', 'amal', 2, 'Burgos', 'Codeados.com Diseño y Desarrollo web, Imagen Corporativa, SEO, Marketing Digital', 'main'),
(24, 'martin', 'martin', 2, 'Valencia', 'La gente cree que soy una mala persona, pero no es cierto, yo tengo el corazón de un niño...en un frasco con formol encima de mi escritorio.', 'main'),
(25, 'alonso', 'alonso', 2, 'Valencia', 'Todo tiempo pasado fue mejor', 'main'),
(26, 'silvia', 'silvia', 2, 'Valencia', 'Es mejor un pueblo culto', 'main'),
(27, 'Obama', 'Obama', 3, 'Valencia', 'ayudame%20a%20conocerte', 'main');

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
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajeprivado`
--
ALTER TABLE `mensajeprivado`
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
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
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
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `mensajeprivado`
--
ALTER TABLE `mensajeprivado`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `operacion`
--
ALTER TABLE `operacion`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'ID Operación',AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'ID Permiso',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `tipooperacion`
--
ALTER TABLE `tipooperacion`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `trimestre`
--
ALTER TABLE `trimestre`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
