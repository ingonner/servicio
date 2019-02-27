-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2019 a las 04:14:30
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_bio`
--

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_articulos`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_articulos`  AS  select `articulos`.`id_articulo` AS `id_articulo`,`articulos`.`nombre_articulo` AS `nombre_articulo`,`categorias`.`nombre_categoria` AS `nombre_categoria`,`articulos`.`marca` AS `marca`,`articulos`.`ejemplares` AS `ejemplares`,`articulos`.`detalle` AS `detalle` from (`articulos` left join `categorias` on((`articulos`.`id_categoria` = `categorias`.`id_categoria`))) where (`articulos`.`estatus` <> 'Archivado') ;

--
-- VIEW  `vista_articulos`
-- Datos: Ninguna
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
