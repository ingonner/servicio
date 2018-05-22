-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2018 a las 05:52:45
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prestamos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `num_control` varchar(100) NOT NULL,
  `carrera` varchar(100) NOT NULL,
  `celular` varchar(100) NOT NULL,
  `semestre` varchar(100) NOT NULL,
  `estatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `genero`, `num_control`, `carrera`, `celular`, `semestre`, `estatus`) VALUES
(66, 'Omar', 'Gaona', 'Hombre', '13090018', 'TICS', '4343440091', '10', 'Baneado'),
(67, 'Marco', 'Saavedra', 'Hombre', '13090011', 'TICS', '4343444444', '11', 'Activo'),
(68, 'Jose Guadalupe', 'Luquin', 'Hombre', '13090210', 'ITICs', '5555555555', '10', 'Activo'),
(70, 'Oscar', 'Maldonado', 'Hombre', '13090031', 'ITICs', '4343440000', '10', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `nombre_articulo` varchar(100) NOT NULL,
  `id_categoria` int(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `ejemplares` int(11) NOT NULL,
  `detalle` varchar(100) NOT NULL,
  `fecha_agregado` varchar(20) NOT NULL,
  `estatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `nombre_articulo`, `id_categoria`, `marca`, `ejemplares`, `detalle`, `fecha_agregado`, `estatus`) VALUES
(33, 'Arduino UNO', 1, 'Ino', 10, 'Incluye cable USB', '', 'Archivado'),
(35, 'Proto', 802, 'Steren', 2, 'Rectanculos electronicos', '', 'Nuevo'),
(36, 'Multimetro digital', 802, 'Steren', 1, 'Con cable rojo y negro', '', 'Ok'),
(37, 'Robot', 801, 'ITSPA', 2, 'Robot chico', '2018-05-21 20:09:35', 'Nuevo'),
(39, 'Cosas', 801, 'prueba', 1, 'we', '2018-05-21 20:49:31', 'Antiguo'),
(40, 'x', 802, 'x', 1, '1', '2018-05-21 22:43:50', 'Antiguo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_perdidos`
--

CREATE TABLE `articulos_perdidos` (
  `id_articulo` int(11) NOT NULL,
  `id_alumno` varchar(50) NOT NULL,
  `fecha_extravio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(801, 'dispositivo_electronico'),
(802, 'Herramienta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_prestamos`
--

CREATE TABLE `detalle_prestamos` (
  `id_detalle_prestamos` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `id_prestamo` int(11) NOT NULL,
  `estatus_prestamo` varchar(50) NOT NULL,
  `fecha_devolucion` varchar(100) NOT NULL,
  `fecha_entregado` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_prestamos`
--

INSERT INTO `detalle_prestamos` (`id_detalle_prestamos`, `id_articulo`, `id_prestamo`, `estatus_prestamo`, `fecha_devolucion`, `fecha_entregado`) VALUES
(165, 33, 0, 'pending', '', ''),
(166, 33, 0, 'pending', '', ''),
(167, 33, 0, 'pending', '', ''),
(168, 33, 0, 'pending', '', ''),
(169, 33, 0, 'pending', '', ''),
(170, 33, 0, 'pending', '', ''),
(171, 33, 0, 'pending', '', ''),
(172, 33, 0, 'pending', '', ''),
(173, 33, 0, 'pending', '', ''),
(174, 33, 0, 'pending', '', ''),
(175, 33, 495, 'pending', '', ''),
(176, 33, 496, 'devuelto', '', '2018-05-21 00:22:13'),
(177, 35, 497, 'devuelto', '', '2018-05-21 00:42:11'),
(178, 36, 497, 'devuelto', '', '2018-05-21 21:11:41'),
(179, 33, 498, 'devuelto', '', '2018-05-21 00:48:47'),
(180, 35, 498, 'devuelto', '', '2018-05-21 00:48:36'),
(181, 36, 498, 'devuelto', '', '2018-05-21 00:47:55'),
(182, 39, 499, 'pendiente', '', ''),
(183, 39, 500, 'devuelto', '', '2018-05-21 20:52:05'),
(184, 36, 501, 'pendiente', '', ''),
(185, 35, 502, 'devuelto', '', '2018-05-21 22:16:06'),
(186, 35, 503, 'pendiente', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_alumno` bigint(50) NOT NULL,
  `fecha_prestamo` varchar(100) NOT NULL,
  `fecha_devolucion` varchar(100) DEFAULT NULL,
  `fe` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_alumno`, `fecha_prestamo`, `fecha_devolucion`, `fe`) VALUES
(485, 0, '2018-05-20 22:47:52', '', ''),
(486, 0, '2018-05-20 22:51:21', '', ''),
(487, 0, '2018-05-20 22:59:42', '', ''),
(488, 0, '2018-05-20 23:00:32', '', ''),
(489, 66, '2018-05-20 23:19:51', '20/05/2018', ''),
(490, 66, '2018-05-20 23:19:58', '25/05/2018', ''),
(491, 0, '2018-05-20 23:20:56', '20/05/2018', ''),
(492, 66, '2018-05-20 23:22:54', '20/05/2018', ''),
(493, 66, '2018-05-20 23:23:14', '31/05/2018', ''),
(494, 67, '2018-05-20 23:25:16', '20/05/2018', ''),
(495, 67, '2018-05-20 23:59:30', '20/05/2018', ''),
(496, 67, '2018-05-21 00:09:08', '27/05/2018', ''),
(497, 68, '2018-05-21 00:41:33', '22/05/2018', ''),
(498, 67, '2018-05-21 00:46:42', '25/05/2018', ''),
(499, 68, '2018-05-21 20:50:27', '21/05/2018', ''),
(500, 67, '2018-05-21 20:50:36', '23/05/2018', ''),
(501, 67, '2018-05-21 21:12:20', '24/05/2018', ''),
(502, 69, '2018-05-21 22:13:14', '25/05/2018', ''),
(503, 70, '2018-05-21 22:15:59', '25/05/2018', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `tipo_prestamo` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `username`, `password`, `nombre`, `apellido`) VALUES
(3, 'admin', 'admin', 'Oscar', 'Maldonado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `articulos_perdidos`
--
ALTER TABLE `articulos_perdidos`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `category_id` (`id_categoria`),
  ADD KEY `classid` (`id_categoria`);

--
-- Indices de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  ADD PRIMARY KEY (`id_detalle_prestamos`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `borrowerid` (`id_alumno`),
  ADD KEY `borrowid` (`id_prestamo`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowertype` (`tipo_prestamo`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `articulos_perdidos`
--
ALTER TABLE `articulos_perdidos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=803;
--
-- AUTO_INCREMENT de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  MODIFY `id_detalle_prestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
