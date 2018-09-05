-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2018 a las 04:32:11
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
(1, 'Omar', 'Gaona', 'Hombre', '13090018', 'ITICs', '4341041232', '10', 'Activo'),
(2, 'Oscar', 'Maldonado', 'Hombre', '13090031', 'ITICs', '4343444444', '10', 'Activo'),
(4, 'Sergio Jonathan', 'Castillejo Castillejo', 'Hombre', '13090063', 'ITICs', '4343440000', '10', 'Activo'),
(5, 'Sandra', 'Lopez', 'Mujer', '13090032', 'IBIO', '4343444333', '7', 'Activo');

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
(1, 'Multimetro Digital', 1, 'Steren', 8, 'Naranja con cable rojo y negro', '2018-05-22 14:53:29', 'Nuevo'),
(2, 'Protoboard', 2, 'Electronica', 7, 'Placa blanca', '2018-05-22 14:54:17', 'Nuevo'),
(3, '5 focos LED', 2, 'Leds', 47, 'LEDs multicolores', '2018-05-22 14:55:07', 'Nuevo'),
(4, 'Taladro', 1, 'Pretul', 2, 'Amarillo sin brocas', '2018-05-22 14:56:09', 'Nuevo'),
(5, 'Arduino UNO', 3, 'Arduino', 3, 'Arduino y cable USB', '2018-05-22 14:58:49', 'Nuevo'),
(6, 'Cautin', 2, 'Pretul', 4, 'Para soldar', '2018-08-21 11:45:03', 'Nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_danados`
--

CREATE TABLE `articulos_danados` (
  `id` int(4) NOT NULL,
  `id_articulo` int(3) NOT NULL,
  `id_alumno` int(3) NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `detalle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos_danados`
--

INSERT INTO `articulos_danados` (`id`, `id_articulo`, `id_alumno`, `fecha_devolucion`, `detalle`) VALUES
(4, 2, 1, '2018-08-21', 'roto'),
(5, 1, 5, '2018-08-22', 'Lo conecto mal y se quemo'),
(6, 1, 4, '2018-08-22', 'Se rompiÃ³ el cable rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_perdidos`
--

CREATE TABLE `articulos_perdidos` (
  `id` int(5) NOT NULL,
  `id_alumno` varchar(50) NOT NULL,
  `fecha_extravio` date NOT NULL,
  `id_articulo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos_perdidos`
--

INSERT INTO `articulos_perdidos` (`id`, `id_alumno`, `fecha_extravio`, `id_articulo`) VALUES
(1, '2', '2018-08-21', 5),
(2, '2', '2018-08-21', 5),
(3, '2', '2018-08-21', 5),
(4, '4', '2018-08-21', 1),
(5, '1', '2018-08-21', 2),
(6, '2', '2018-08-21', 1),
(7, '1', '2018-08-21', 1),
(8, '1', '2018-08-21', 2),
(9, '1', '2018-08-21', 1),
(10, '1', '2018-08-21', 1),
(11, '2', '2018-08-21', 1),
(12, '1', '2018-08-21', 3),
(13, '1', '2018-08-21', 1),
(14, '5', '2018-08-21', 1),
(15, '1', '2018-08-21', 2),
(16, '5', '2018-08-22', 1),
(17, '4', '2018-08-22', 1);

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
(1, 'Herramienta'),
(2, 'Material Electronico'),
(3, 'Dispositivo Electronico');

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
(1, 3, 1, 'devuelto', '', '2018-05-22 15:02:01'),
(2, 5, 1, 'devuelto', '', '2018-05-22 15:02:07'),
(3, 1, 2, 'devuelto', '', '2018-08-20 21:15:43'),
(4, 3, 2, 'devuelto', '', '2018-05-24 12:52:04'),
(5, 1, 3, 'devuelto', '', '2018-08-20 22:29:57'),
(6, 3, 3, 'devuelto', '', '2018-08-20 21:57:19'),
(7, 1, 4, 'devuelto', '', '2018-08-20 21:47:16'),
(8, 2, 4, 'devuelto', '', '2018-08-20 21:48:25'),
(9, 3, 4, 'devuelto', '', '2018-08-20 21:46:34'),
(10, 3, 5, 'devuelto', '', '2018-08-20 21:48:39'),
(11, 4, 5, 'devuelto', '', '2018-08-20 21:48:55'),
(12, 5, 5, 'devuelto', '', '2018-08-20 23:02:20'),
(13, 1, 6, 'devuelto', '', '2018-08-21 21:43:12'),
(14, 1, 7, 'devuelto', '', '2018-08-21 11:41:53'),
(15, 2, 7, 'devuelto', '', '2018-08-21 11:41:56'),
(16, 3, 7, 'devuelto', '', '2018-08-21 11:41:46'),
(17, 2, 8, 'devuelto', '', '2018-08-21 21:50:43'),
(18, 5, 9, 'devuelto', '', '2018-08-21 11:41:48'),
(19, 1, 10, 'devuelto', '', '2018-08-21 11:40:48'),
(20, 1, 11, 'devuelto', '', '2018-08-21 11:42:55'),
(21, 2, 11, 'devuelto', '', '2018-08-21 11:43:05'),
(22, 5, 11, 'devuelto', '', '2018-08-21 21:42:07'),
(23, 6, 12, 'devuelto', '', '2018-08-21 11:46:39'),
(24, 1, 13, 'devuelto', '', '2018-08-21 21:51:32'),
(25, 1, 14, 'devuelto', '', '2018-08-21 22:34:06'),
(26, 1, 15, 'devuelto', '', '2018-08-21 22:54:45'),
(27, 2, 15, 'devuelto', '', '2018-08-21 22:52:20'),
(28, 3, 15, 'devuelto', '', '2018-08-21 22:57:42'),
(29, 1, 16, 'devuelto', '', '2018-08-21 22:56:20'),
(30, 1, 17, 'devuelto', '', '2018-08-21 22:56:53'),
(31, 1, 18, 'devuelto', '', '2018-08-21 22:58:53'),
(32, 1, 19, 'devuelto', '', '2018-08-21 23:00:17'),
(33, 2, 20, 'devuelto', '', '2018-08-21 23:03:19'),
(34, 1, 21, 'devuelto', '', '2018-08-22 21:01:09'),
(35, 2, 21, 'pendiente', '', ''),
(36, 3, 21, 'devuelto', '', '2018-08-21 23:28:05'),
(37, 4, 21, 'pendiente', '', ''),
(38, 5, 21, 'devuelto', '', '2018-08-21 23:37:33'),
(39, 6, 21, 'devuelto', '', '2018-08-22 10:23:23'),
(40, 1, 22, 'devuelto', '', '2018-08-22 21:20:41'),
(41, 1, 23, 'devuelto', '', '2018-08-22 21:19:57'),
(42, 2, 24, 'devuelto', '', '2018-08-22 21:03:22'),
(43, 4, 24, 'devuelto', '', '2018-08-22 21:03:27'),
(44, 6, 24, 'devuelto', '', '2018-08-22 21:03:13');

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
(1, 2, '2018-05-22 15:01:31', '22/05/2018', ''),
(2, 2, '2018-05-24 12:51:54', '26/05/2018', ''),
(3, 2, '2018-08-20 21:13:02', '24/08/2018', ''),
(4, 1, '2018-08-20 21:35:32', '20/08/2018', ''),
(5, 2, '2018-08-20 21:35:43', '24/08/2018', ''),
(6, 4, '2018-08-20 22:30:14', '21/08/2018', ''),
(7, 2, '2018-08-21 10:38:50', '22/08/2018', ''),
(8, 1, '2018-08-21 10:39:02', '22/08/2018', ''),
(9, 4, '2018-08-21 10:39:09', '23/08/2018', ''),
(10, 4, '2018-08-21 11:40:22', '22/08/2018', ''),
(11, 2, '2018-08-21 11:42:14', '21/08/2018', ''),
(12, 5, '2018-08-21 11:46:22', '21/08/2018', ''),
(13, 2, '2018-08-21 21:51:22', '21/08/2018', ''),
(14, 1, '2018-08-21 22:33:51', '22/08/2018', ''),
(15, 1, '2018-08-21 22:48:12', '21/08/2018', ''),
(16, 1, '2018-08-21 22:55:51', '23/08/2018', ''),
(17, 2, '2018-08-21 22:56:40', '22/08/2018', ''),
(18, 1, '2018-08-21 22:58:40', '21/08/2018', ''),
(19, 5, '2018-08-21 22:59:55', '22/08/2018', ''),
(20, 1, '2018-08-21 23:03:06', '23/08/2018', ''),
(21, 2, '2018-08-21 23:15:53', '23/08/2018', ''),
(22, 4, '2018-08-22 21:02:07', '23/08/2018', ''),
(23, 5, '2018-08-22 21:02:20', '29/08/2018', ''),
(24, 1, '2018-08-22 21:02:32', '23/08/2018', '');

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
(1, 'rosita', 'fresita', 'Oscar', 'Maldonado');

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
-- Indices de la tabla `articulos_danados`
--
ALTER TABLE `articulos_danados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articulos_perdidos`
--
ALTER TABLE `articulos_perdidos`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `articulos_danados`
--
ALTER TABLE `articulos_danados`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `articulos_perdidos`
--
ALTER TABLE `articulos_perdidos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  MODIFY `id_detalle_prestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
