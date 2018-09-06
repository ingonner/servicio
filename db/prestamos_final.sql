-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2018 a las 04:56:11
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
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `num_control` varchar(15) NOT NULL,
  `carrera` varchar(15) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `semestre` varchar(2) NOT NULL,
  `estatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `genero`, `num_control`, `carrera`, `celular`, `semestre`, `estatus`) VALUES
(1, 'Carlos Ivan', 'Barajas Diaz Barriga', 'Hombre', '12090082', 'IBIO', '0000000000', '13', 'Activo'),
(2, 'Alan Amaury', 'Sanchez Rodriguez', 'Hombre', '13090117', 'IBIO', '0000000000', '11', 'Activo'),
(3, 'Fernando', 'Maciel Maldonado', 'Hombre', '13090128', 'IBIO', '0000000000', '11', 'Activo'),
(4, 'Ivan', 'Talavera Gaona', 'Hombre', '13090129', 'IBIO', '0000000000', '11', 'Activo'),
(5, 'Angelica Cecilia', 'Viveros Aguilar', 'Mujer', '13090140', 'IBIO', '0000000000', '11', 'Activo'),
(6, 'Roberto', 'Coria Garcia', 'Hombre', '13090145', 'IBIO', '0000000000', '11', 'Activo'),
(7, 'Soledad', 'Rangel Chavez', 'Mujer', '13090243', 'IBIO', '0000000000', '11', 'Activo'),
(8, 'Irwin Francisco', 'Sanabria Santiago', 'Hombre', '13090246', 'IBIO', '0000000000', '11', 'Activo'),
(9, 'Iran Arane', 'Melchor Uceda', 'Mujer', '14092045', 'IBIO', '0000000000', '9', 'Activo'),
(10, 'Eduardo', 'Ramirez Rodriguez', 'Hombre', '14092058', 'IBIO', '0000000000', '9', 'Activo'),
(11, 'Ricardo Aaron', 'Garcia Juarez', 'Hombre', '14092138', 'IBIO', '0000000000', '9', 'Activo'),
(12, 'Ivan', 'Perez Pamatz', 'Hombre', '14092178', 'IBIO', '0000000000', '9', 'Activo'),
(13, 'Santiago', 'Nicolas Maximo', 'Hombre', '14092204', 'IBIO', '0000000000', '9', 'Activo'),
(14, 'Miguel Angel', 'Guzman Garcia', 'Hombre', '14092217', 'IBIO', '0000000000', '9', 'Activo'),
(15, 'Angel Eduardo', 'Nicolas Maximo', 'Hombre', '14092265', 'IBIO', '0000000000', '9', 'Activo'),
(16, 'Nicolas Gilberto', 'Reyes Laguna', 'Hombre', '15092006', 'IBIO', '0000000000', '7', 'Activo'),
(17, 'Alondra Janette', 'Correa Saenz', 'Mujer', '15092091', 'IBIO', '0000000000', '7', 'Activo'),
(18, 'Paola Denys', 'Contreras Arreola', 'Mujer', '15092109', 'IBIO', '0000000000', '7', 'Activo'),
(19, 'Guadalupe Dayana', 'Hernandez Rendon', 'Mujer', '15092116', 'IBIO', '0000000000', '7', 'Activo'),
(20, 'Kimberly', 'Cortez Martinez', 'Mujer', '15092123', 'IBIO', '0000000000', '7', 'Activo'),
(21, 'Victor Manuel', 'Monta?ez Gonzalez', 'Hombre', '15092151', 'IBIO', '0000000000', '7', 'Activo'),
(22, 'Jose Luis', 'Morales Lopez', 'Hombre', '15092162', 'IBIO', '0000000000', '7', 'Activo'),
(23, 'Angel', 'Zaragoza Carranza', 'Hombre', '15092176', 'IBIO', '0000000000', '7', 'Activo'),
(24, 'Felix', 'Flores Miguel', 'Hombre', '15092201', 'IBIO', '0000000000', '7', 'Activo'),
(25, 'Miguel Angel', 'Pamatz Luquin', 'Hombre', '15092206', 'IBIO', '0000000000', '7', 'Activo'),
(26, 'Magdalena', 'Garcia Becerra', 'Mujer', '15092215', 'IBIO', '0000000000', '7', 'Activo'),
(27, 'Eder Antonio', 'Gaona Adame', 'Hombre', '15092218', 'IBIO', '0000000000', '7', 'Activo'),
(28, 'Stephany', 'Espinosa Hurtado', 'Mujer', '15092229', 'IBIO', '0000000000', '7', 'Activo'),
(29, 'Armando', 'Ponce Chagolla', 'Hombre', '15092237', 'IBIO', '0000000000', '7', 'Activo'),
(30, 'Estefania', 'Naranjo TreviÃ±o', 'Mujer', '15092255', 'IBIO', '0000000000', '7', 'Activo'),
(31, 'Jose Miguel', 'Chavez Corral', 'Hombre', '15092279', 'IBIO', '0000000000', '7', 'Activo'),
(32, 'Perla Yahaira', 'Melgoza Rivera', 'Mujer', 'C06560352', 'IBIO', '0000000000', '7', 'Activo'),
(33, 'Abraham Estefano', 'Soria Medina', 'Hombre', '16092021', 'IBIO', '0000000000', '5', 'Activo'),
(34, 'Alejandro', 'Reyes Alvarado', 'Hombre', '16092032', 'IBIO', '0000000000', '5', 'Activo'),
(35, 'Karla Paulina', 'Hurtado Chagolla', 'Mujer', '16092084', 'IBIO', '0000000000', '5', 'Activo'),
(36, 'Marcos Eduardo', 'Caballero Perez', 'Hombre', '16092085', 'IBIO', '0000000000', '5', 'Activo'),
(37, 'Fernanda Amayrani', 'Naranjo Linares', 'Mujer', '16092153', 'IBIO', '0000000000', '5', 'Activo'),
(38, 'Luis Gerardo', 'Garcia Ponce', 'Hombre', '16092156', 'IBIO', '0000000000', '5', 'Activo'),
(39, 'Ricardo Bladimir', 'Perez Silva', 'Hombre', '16092162', 'IBIO', '0000000000', '5', 'Activo'),
(40, 'Maria Vianney', 'Medina Mejia', 'Mujer', '16092168', 'IBIO', '0000000000', '5', 'Activo'),
(41, 'Jose Maria', 'Caballero Dominguez', 'Hombre', '16092272', 'IBIO', '0000000000', '5', 'Activo'),
(42, 'Joel', 'Velazquez Izguerra', 'Hombre', '16092281', 'IBIO', '0000000000', '5', 'Activo'),
(43, 'Cesar', 'Salinas Ortega', 'Hombre', '16092411', 'IBIO', '0000000000', '5', 'Activo'),
(44, 'Agustin', 'Angeles Hurtado', 'Hombre', '17092003', 'IBIO', '0000000000', '3', 'Activo'),
(45, 'Fernando', 'Aparicio Ponce', 'Hombre', '17092013', 'IBIO', '0000000000', '3', 'Activo'),
(46, 'Jesus', 'Magdaleno Orozco', 'Hombre', '17092015', 'IBIO', '0000000000', '3', 'Activo'),
(47, 'Daniel', 'Adame Resendiz', 'Hombre', '17092024', 'IBIO', '0000000000', '3', 'Activo'),
(48, 'Antonio Alexander', 'Benitez Arevalo', 'Hombre', '17092026', 'IBIO', '0000000000', '3', 'Activo'),
(49, 'Ruben', 'Rangel Figueroa', 'Hombre', '17092081', 'IBIO', '0000000000', '3', 'Activo'),
(50, 'Miguel Angel', 'Garcia Gonzalez', 'Hombre', '17092099', 'IBIO', '0000000000', '3', 'Activo'),
(51, 'Jose Jonathan', 'Talavera Alejandre', 'Hombre', '17092158', 'IBIO', '0000000000', '3', 'Activo'),
(52, 'Kenia Edith', 'Perez Contreras', 'Mujer', '17092282', 'IBIO', '0000000000', '3', 'Activo'),
(53, 'Sandra', 'Gonzalez Rivera', 'Mujer', '17092284', 'IBIO', '0000000000', '3', 'Activo'),
(54, 'Jesus', 'Garcia Garcia', 'Hombre', '17092302', 'IBIO', '0000000000', '3', 'Activo'),
(55, 'Jos? Antonio', 'De Jesus Trinidad', 'Hombre', '17092313', 'IBIO', '0000000000', '3', 'Activo'),
(56, 'Viviana Michelle', 'Gaona Carrillo', 'Mujer', '17092343', 'IBIO', '0000000000', '3', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo_alumnos`
--

CREATE TABLE `archivo_alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `num_control` varchar(15) NOT NULL,
  `carrera` varchar(15) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `semestre` varchar(2) NOT NULL,
  `estatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `nombre_articulo` varchar(30) NOT NULL,
  `id_categoria` int(2) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `ejemplares` int(3) NOT NULL,
  `detalle` varchar(100) NOT NULL,
  `fecha_agregado` varchar(20) NOT NULL,
  `estatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_perdidos`
--

CREATE TABLE `articulos_perdidos` (
  `id` int(5) NOT NULL,
  `id_alumno` varchar(50) NOT NULL,
  `fecha_extravio` date NOT NULL,
  `id_articulo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'Herramienta');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indices de la tabla `archivo_alumnos`
--
ALTER TABLE `archivo_alumnos`
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
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `archivo_alumnos`
--
ALTER TABLE `archivo_alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulos_danados`
--
ALTER TABLE `articulos_danados`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulos_perdidos`
--
ALTER TABLE `articulos_perdidos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  MODIFY `id_detalle_prestamos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
