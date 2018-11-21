-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-11-2018 a las 05:20:46
-- Versión del servidor: 10.2.17-MariaDB
-- Versión de PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u834655291_inven`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `affiliate`
--

CREATE TABLE `affiliate` (
  `id` varchar(10) NOT NULL,
  `hash_password` varchar(256) NOT NULL,
  `name` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `affiliate`
--

INSERT INTO `affiliate` (`id`, `hash_password`, `name`, `address`, `gender`, `token`) VALUES
('0987654321', '$2y$10$FY0K.zJcug01GBILwi/swu6YcsgUYROr.rSHW0vtSuvkkNh9Jjf0S', 'Test', 'Vacio', '', '4528396975bf4d6c061f121.59070414'),
('1234567890', '$2y$10$yZIGj2duA1bvdA/Mbnxsq.rWN8gpTXvYm4ZS6HTwRYFnv/eKAIXrW', 'Oscar', 'Calle 23 #2', 'M', '29595be1e8c968bff4.99713412'),
('1397', '$2y$10$kwXaEZ81qGuguidnf4qlye6asYb4qTAtJeaVAd.lwCe3c2U2//D.G', 'Administrador', 'Vacio', '', '6204756065be2778c078c11.82915368');

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
(1, 'Carlos Ivan', 'Barajas Diaz Barriga', 'Hombre', '12090082', 'IBIO', '0000000000', '14', 'Activo'),
(2, 'Alan Amaury', 'Sanchez Rodriguez', 'Hombre', '13090117', 'IBIO', '0000000000', '12', 'Activo'),
(3, 'Fernando', 'Maciel Maldonado', 'Hombre', '13090128', 'IBIO', '0000000000', '12', 'Activo'),
(4, 'Ivan', 'Talavera Gaona', 'Hombre', '13090129', 'IBIO', '0000000000', '12', 'Activo'),
(5, 'Angelica Cecilia', 'Viveros Aguilar', 'Mujer', '13090140', 'IBIO', '0000000000', '12', 'Activo'),
(6, 'Roberto', 'Coria Garcia', 'Hombre', '13090145', 'IBIO', '0000000000', '12', 'Activo'),
(7, 'Soledad', 'Rangel Chavez', 'Mujer', '13090243', 'IBIO', '0000000000', '12', 'Activo'),
(8, 'Irwin Francisco', 'Sanabria Santiago', 'Hombre', '13090246', 'IBIO', '0000000000', '12', 'Activo'),
(9, 'Iran Arane', 'Melchor Uceda', 'Mujer', '14092045', 'IBIO', '0000000000', '10', 'Activo'),
(10, 'Eduardo', 'Ramirez Rodriguez', 'Hombre', '14092058', 'IBIO', '0000000000', '10', 'Activo'),
(11, 'Ricardo Aaron', 'Garcia Juarez', 'Hombre', '14092138', 'IBIO', '0000000000', '10', 'Activo'),
(12, 'Ivan', 'Perez Pamatz', 'Hombre', '14092178', 'IBIO', '0000000000', '10', 'Activo'),
(13, 'Santiago', 'Nicolas Maximo', 'Hombre', '14092204', 'IBIO', '0000000000', '10', 'Activo'),
(14, 'Miguel Angel', 'Guzman Garcia', 'Hombre', '14092217', 'IBIO', '0000000000', '10', 'Activo'),
(15, 'Angel Eduardo', 'Nicolas Maximo', 'Hombre', '14092265', 'IBIO', '0000000000', '10', 'Activo'),
(16, 'Nicolas Gilberto', 'Reyes Laguna', 'Hombre', '15092006', 'IBIO', '0000000000', '8', 'Activo'),
(17, 'Alondra Janette', 'Correa Saenz', 'Mujer', '15092091', 'IBIO', '0000000000', '8', 'Activo'),
(18, 'Paola Denys', 'Contreras Arreola', 'Mujer', '15092109', 'IBIO', '0000000000', '8', 'Activo'),
(19, 'Guadalupe Dayana', 'Hernandez Rendon', 'Mujer', '15092116', 'IBIO', '0000000000', '8', 'Activo'),
(20, 'Kimberly', 'Cortez Martinez', 'Mujer', '15092123', 'IBIO', '0000000000', '8', 'Activo'),
(21, 'Victor Manuel', 'Montañez Gonzalez', 'Hombre', '15092151', 'IBIO', '0000000000', '8', 'Activo'),
(22, 'Jose Luis', 'Morales Lopez', 'Hombre', '15092162', 'IBIO', '0000000000', '8', 'Activo'),
(23, 'Angel', 'Zaragoza Carranza', 'Hombre', '15092176', 'IBIO', '0000000000', '8', 'Activo'),
(24, 'Felix', 'Flores Miguel', 'Hombre', '15092201', 'IBIO', '0000000000', '8', 'Activo'),
(25, 'Miguel Angel', 'Pamatz Luquin', 'Hombre', '15092206', 'IBIO', '0000000000', '8', 'Activo'),
(26, 'Magdalena', 'Garcia Becerra', 'Mujer', '15092215', 'IBIO', '0000000000', '8', 'Activo'),
(27, 'Eder Antonio', 'Gaona Adame', 'Hombre', '15092218', 'IBIO', '0000000000', '8', 'Activo'),
(28, 'Stephany', 'Espinosa Hurtado', 'Mujer', '15092229', 'IBIO', '0000000000', '8', 'Activo'),
(29, 'Armando', 'Ponce Chagolla', 'Hombre', '15092237', 'IBIO', '0000000000', '8', 'Activo'),
(30, 'Estefania', 'Naranjo Treviño', 'Mujer', '15092255', 'IBIO', '0000000000', '8', 'Activo'),
(31, 'Jose Miguel', 'Chavez Corral', 'Hombre', '15092279', 'IBIO', '0000000000', '8', 'Activo'),
(32, 'Perla Yahaira', 'Melgoza Rivera', 'Mujer', 'C06560352', 'IBIO', '0000000000', '8', 'Activo'),
(33, 'Abraham Estefano', 'Soria Medina', 'Hombre', '16092021', 'IBIO', '0000000000', '6', 'Activo'),
(34, 'Alejandro', 'Reyes Alvarado', 'Hombre', '16092032', 'IBIO', '0000000000', '6', 'Activo'),
(35, 'Karla Paulina', 'Hurtado Chagolla', 'Mujer', '16092084', 'IBIO', '0000000000', '6', 'Activo'),
(36, 'Marcos Eduardo', 'Caballero Perez', 'Hombre', '16092085', 'IBIO', '0000000000', '6', 'Activo'),
(37, 'Fernanda Amayrani', 'Naranjo Linares', 'Mujer', '16092153', 'IBIO', '0000000000', '6', 'Activo'),
(38, 'Luis Gerardo', 'Garcia Ponce', 'Hombre', '16092156', 'IBIO', '0000000000', '6', 'Activo'),
(39, 'Ricardo Bladimir', 'Perez Silva', 'Hombre', '16092162', 'IBIO', '0000000000', '6', 'Activo'),
(40, 'Maria Vianney', 'Medina Mejia', 'Mujer', '16092168', 'IBIO', '0000000000', '6', 'Activo'),
(41, 'Jose Maria', 'Caballero Dominguez', 'Hombre', '16092272', 'IBIO', '0000000000', '6', 'Activo'),
(42, 'Joel', 'Velazquez Izguerra', 'Hombre', '16092281', 'IBIO', '0000000000', '6', 'Activo'),
(43, 'Cesar', 'Salinas Ortega', 'Hombre', '16092411', 'IBIO', '0000000000', '6', 'Activo'),
(44, 'Agustin', 'Angeles Hurtado', 'Hombre', '17092003', 'IBIO', '0000000000', '4', 'Activo'),
(45, 'Fernando', 'Aparicio Ponce', 'Hombre', '17092013', 'IBIO', '0000000000', '4', 'Activo'),
(46, 'Jesus', 'Magdaleno Orozco', 'Hombre', '17092015', 'IBIO', '0000000000', '4', 'Activo'),
(47, 'Daniel', 'Adame Resendiz', 'Hombre', '17092024', 'IBIO', '0000000000', '4', 'Activo'),
(48, 'Antonio Alexander', 'Benitez Arevalo', 'Hombre', '17092026', 'IBIO', '0000000000', '4', 'Activo'),
(49, 'Ruben', 'Rangel Figueroa', 'Hombre', '17092081', 'IBIO', '0000000000', '4', 'Activo'),
(50, 'Miguel Angel', 'Garcia Gonzalez', 'Hombre', '17092099', 'IBIO', '0000000000', '4', 'Activo'),
(51, 'Jose Jonathan', 'Talavera Alejandre', 'Hombre', '17092158', 'IBIO', '0000000000', '4', 'Activo'),
(52, 'Kenia Edith', 'Perez Contreras', 'Mujer', '17092282', 'IBIO', '0000000000', '4', 'Activo'),
(53, 'Sandra', 'Gonzalez Rivera', 'Mujer', '17092284', 'IBIO', '0000000000', '4', 'Activo'),
(54, 'Jesus', 'Garcia Garcia', 'Hombre', '17092302', 'IBIO', '0000000000', '4', 'Activo'),
(55, 'Jos? Antonio', 'De Jesus Trinidad', 'Hombre', '17092313', 'IBIO', '0000000000', '4', 'Activo'),
(56, 'Viviana Michelle', 'Gaona Carrillo', 'Mujer', '17092343', 'IBIO', '0000000000', '4', 'Activo'),
(57, 'Omar', 'Gaona', 'Hombre', '13090018', 'ITICs', '0000000000', '12', 'Bloqueado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `nombre_articulo` varchar(50) NOT NULL,
  `id_categoria` int(2) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `ejemplares` int(3) NOT NULL,
  `detalle` text NOT NULL,
  `fecha_agregado` varchar(20) NOT NULL,
  `estatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `nombre_articulo`, `id_categoria`, `marca`, `ejemplares`, `detalle`, `fecha_agregado`, `estatus`) VALUES
(5, 'Generador', 7, 'INSTEC AFG-2125', 8, 'Generador de señales', '2018-09-11 13:18:33', 'Nuevo'),
(6, 'Fuente Variable', 7, 'PROTO-BOARD PB503', 8, 'Fuente variable de voltaje', '2018-09-11 13:22:01', 'Nuevo'),
(7, 'Osciloscopio', 7, 'TEKTRONICS TBHS1042', 8, 'Osciloscopio', '2018-09-11 13:23:11', 'Nuevo'),
(8, 'Cautin de lapiz', 7, 'METCAL MODELO: MX-5210', 1, 'No registrado', '2018-09-11 13:24:23', 'Nuevo'),
(9, 'Osciloscopio', 7, 'RIGOL DS1102E', 1, 'Común 8 principales objetivos de ejecución: Memoria a largo plazo 512 POE. Mates +,-,x, FFT. Voltaje máximo de entrada. Todas las entradas 1MΩ||15pF 300 V RMS CAT I.', '2018-09-11 19:47:34', 'Nuevo'),
(10, 'Fuente INSTEK', 7, ' INSTEK GPS-3303', 5, 'No registrado', '2018-09-11 19:48:43', 'Nuevo'),
(11, 'Multimetro de banco', 7, 'FLUKE 8846A', 1, 'Este multimetro digital realiza las funciones de un multimetro digital multifuncional, cuenta con medidas de tensión, resistencia e intensidad.', '2018-09-11 19:50:16', 'Nuevo'),
(12, 'Laptop HP PROBOOK 440G3', 8, 'HP PROBOOK 440G3', 5, 'Equipo de cómputo.', '2018-09-11 19:52:05', 'Nuevo'),
(13, 'CPU HP PRODESK 600G2MINI', 8, 'HP PRODESK 600G2MINI', 2, 'Equipo de cómputo de escritorio', '2018-09-11 19:52:46', 'Nuevo'),
(14, 'Fuente de alimentacion', 3, 'LORENZO DL 3155AL2', 1, 'No registrado', '2018-09-11 19:54:02', 'Nuevo'),
(15, 'Proyector', 9, 'INFOCUS IN102', 1, 'No registrado', '2018-09-11 19:55:05', 'Nuevo'),
(16, 'Termometro laser', 7, 'STEREN HER-425', 1, 'No registrado', '2018-09-11 19:55:47', 'Nuevo'),
(17, 'Capnografo', 7, 'No registrado', 1, 'No registrado', '2018-09-11 19:57:46', 'Nuevo'),
(18, 'ELECTROMIOGRAFO 8 CANALES LAPTOP', 7, 'IWORX MODELO: IX.RA.834', 1, 'Es un sistema de adquisición de datos fisiológicos con 8 canales de entrada multi propósito.', '2018-09-11 19:58:47', 'Nuevo'),
(19, 'MODULO DE GRABACION', 7, 'IWORX MODELO IX-RA-834', 1, 'Pertenece al ELECTROMIOGRAFO 8 CANALES LAPTOP', '2018-09-11 19:59:42', 'Nuevo'),
(20, 'OXIMETRO DE PULSO Y EL SENSOR PLETISMOGRAFO', 7, 'IWORX MODELO:IX-B3G', 1, 'Para medir la saturación de oxigeno en sangre (SpO2) y la presión del pulso (pletismografia) utilizando un clip de dedo a base de doble longitud de onda de transmisión de luz.', '2018-09-11 20:02:01', 'Nuevo'),
(21, 'ELECTROENCEFALOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:03:20', 'Nuevo'),
(22, 'EQUIPO DE ELECTROENCEFALOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:03:37', 'Nuevo'),
(23, 'CASCO DEL ELECTROENCEFALOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:03:48', 'Nuevo'),
(24, 'ESTACIÓN DE CALOR DIGITAL', 7, 'MTKL MX-PS5200', 2, 'No registrado', '2018-09-11 20:04:39', 'Nuevo'),
(25, 'ESTACION DESOLDADORA', 7, 'MTKL MFR-PS1300', 1, 'No registrado', '2018-09-11 20:05:19', 'Nuevo'),
(26, 'LUXOMETRO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:05:30', 'Nuevo'),
(27, 'SIERRA CALADORA MS20', 7, 'MS20', 2, 'No registrado', '2018-09-11 20:06:12', 'Nuevo'),
(28, 'ESTACIÓN DE AIRE CALIENTE', 7, 'DEWALT DIGITAL D26960', 1, 'No registrado', '2018-09-11 20:06:41', 'Nuevo'),
(29, 'SCANER PORTATIL 3D', 9, 'ARTEC 3D MODELO: SCANNER EVA', 1, 'Escáner similar a una camara de video de captura de imágenes en 3D, captura hasta 16 fotogramas por segundo, la velocidad de adquisición de datos es de 2 millones de puntos por segundo.', '2018-09-11 20:07:23', 'Nuevo'),
(30, 'ESPIROMETRO ASISTIDO POR PC', 7, 'IWORX MODELO: HEK-TA-300', 1, 'Es un analizador de gas.', '2018-09-11 20:10:22', 'Nuevo'),
(31, 'MODULO INDICADOR DE CONVERSION DE PULSO', 7, 'DE LORENZO MODELO DL3155BI04', 1, 'Este equipo es parte del ESPIROMETRO', '2018-09-11 20:11:26', 'Nuevo'),
(32, 'INTERFAZ GRAFICA', 8, 'HP MODELO PROBOOK 440 63 14', 1, 'Este equipo es parte del espirometro', '2018-09-11 20:12:21', 'Nuevo'),
(33, 'ENGRAPADORA INDUSTRIAL', 7, 'SILVERLINE DC-7116', 1, 'No registrado', '2018-09-11 20:13:37', 'Nuevo'),
(34, 'ESTRACTOR DE HUMO', 7, 'SIODRTEJ FX590', 2, 'No registrado', '2018-09-11 20:14:06', 'Nuevo'),
(35, 'ELECTROESTIMULADOR', 7, 'I-TECHT-ONE REHAB', 1, 'No registrado', '2018-09-11 20:15:01', 'Nuevo'),
(36, 'SECUENCIADOR LOGICO GLOBAL', 7, 'DL-010', 4, 'No registrado', '2018-09-11 20:15:49', 'Nuevo'),
(37, 'SECUENCIADOR LOGICO GLOBAL', 7, 'DL-020', 4, 'No registrado', '2018-09-11 20:16:20', 'Nuevo'),
(38, 'COMPUTADORA DE ESCRITORIO', 8, 'HP COMPAQ', 5, 'No registrado', '2018-09-11 20:16:53', 'Nuevo'),
(39, 'ESCANER PORTATIL 3D', 7, '3D SYSTEMS MODELO: VISIJET M2 RWT STARTER KIT', 1, 'Escaner similar a una cámara de video de captura de imágenes en 3D, captura hasta 16 fotogramas por segundo, la velocidad de adquisición de datos es de 2 billones de puntos por segundo.', '2018-09-11 20:19:07', 'Nuevo'),
(40, 'MONITORES', 9, 'No registrado', 5, 'No registrado', '2018-09-11 20:19:25', 'Nuevo'),
(41, 'IMPRESORA PROFESIONAL', 9, '3D SYSTEMS MODELO: PROJET MJP 2500', 1, 'Imprime modelos 3D.', '2018-09-11 20:20:09', 'Nuevo'),
(42, 'EQUIPO DE POST PROCESAMIENTO', 7, '3D SYSTEMS MODELO: PROJET MJP 2500', 1, 'Para facilitar la extracción de soportes de cera de mezcla orgánica.', '2018-09-11 20:20:44', 'Nuevo'),
(43, 'KIT DE ARRANQUE DE MATERIAL DE CONSTRUCCION', 7, '3D SYSTEMS MODELO: MJP EASYCLEAN SYSTEM', 1, 'No registrado', '2018-09-11 20:22:47', 'Nuevo'),
(44, 'BAPORERA EASY CLEAN ', 10, 'No registrado', 2, 'Baporera - Vaporera', '2018-09-11 20:24:04', 'Nuevo'),
(45, 'TALADRO DE COLUMNA', 7, 'KNOVA RETXON KNDP-13F', 6, 'No registrado', '2018-09-11 20:24:52', 'Nuevo'),
(46, 'TORNO DE CONTROL NUMERICO COMPUTARIZADO', 7, 'MTAB MODELO: XL TURN', 1, 'Torno CNC de dos ejes, apropiado para piezas pequeñas y para entrenamiento.', '2018-09-11 20:26:24', 'Nuevo'),
(47, 'PRESADORA MTAB XL1000 MILL', 10, 'MTAB XL1000 MILL', 1, 'Torno de control numerico comp.', '2018-09-11 20:27:36', 'Nuevo'),
(48, 'TELEVISOR', 9, 'PANASONIC', 1, 'Television', '2018-09-11 20:29:17', 'Nuevo'),
(49, 'MONITOR DE SIGNOS VITALES', 9, 'CMS6500', 1, 'No registrado', '2018-09-11 20:29:45', 'Nuevo'),
(50, 'BASCULA SECA IMC', 7, 'IMC', 1, 'No registrado', '2018-09-11 20:30:09', 'Nuevo'),
(51, 'ELECTROCARDIOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:30:34', 'Nuevo'),
(52, 'MONITOR DE PRESION ARTERIAL', 7, 'OMROM HEM-7320', 1, 'No registrado', '2018-09-11 20:31:06', 'Nuevo'),
(53, 'ULTRASONIDO', 7, ' WED-9618', 1, 'No registrado', '2018-09-11 20:31:23', 'Nuevo'),
(54, 'LAMPARA DE EXPLORACION O DE ESTUDIO', 7, 'ESGO MODELO: BOT105', 1, 'Lampara de pie rodable con antena telescópica en tubular de acero.', '2018-09-11 20:32:23', 'Nuevo'),
(55, 'TRIPIE', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:32:35', 'Nuevo'),
(56, 'CORTINERO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:32:47', 'Nuevo'),
(57, 'ESCRITORIO CON DOS CAJONES', 10, 'ESGO MODELO: ESC109', 1, 'Escritorio tabular SCRIVANIAE, estructura tabular de acero calibre No. 20 de 25.4 mm (1\") de diámetro, tiene acabado en esmalte horneado.', '2018-09-11 20:33:51', 'Nuevo'),
(58, 'MANIQUI MUSCULAR', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:34:28', 'Nuevo'),
(59, 'MANIQUI SISTEMA OSEO', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:34:39', 'Nuevo'),
(60, 'MANIQUI PLEXO', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:34:49', 'Nuevo'),
(61, 'MANIQUI COLUMNA VERTEBRAL', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:35:06', 'Nuevo'),
(62, 'BASCULA DE PISO SECA', 7, 'SECA', 2, 'No registrado', '2018-09-11 20:36:56', 'Nuevo'),
(63, 'GLUCOMETRO ACCU-CHEK ACTIVE', 7, 'ACCU-CHEK ACTIVE', 1, 'No registrado', '2018-09-11 20:37:23', 'Nuevo'),
(64, 'ESTANTE GRISE METALICO', 10, 'No registrado', 6, 'No registrado', '2018-09-11 20:37:53', 'Nuevo'),
(65, 'MESA VINARIA', 10, 'No registrado', 1, 'Vinaria - binaria', '2018-09-11 20:38:31', 'Nuevo'),
(66, 'BIOMBO', 7, 'RDHO MOFRLO: BIO124', 1, 'Biombo de tres hojas, en un marco estructural de tubo de acero calibre.', '2018-09-11 20:39:54', 'Nuevo'),
(67, 'MODULO PARA EL ESTUDIO DE LOS SISTEMAS PARA LA MED', 7, 'IWORX MODELO iWire- PO2-100, DE LORENZO MODELO: DL', 1, 'Comprende un instrumento adicional, el simulador ECG.', '2018-09-11 20:42:20', 'Nuevo'),
(68, 'INTERFAZ PARA CONEXION A PC', 10, 'DE LORENZO MODELO: DL 3155BIO5', 1, 'Interfaz para conexión a PC.', '2018-09-11 20:43:06', 'Nuevo'),
(69, 'RESISTENCIA CARBON 1M8 Ω', 3, 'No registrado', 999, 'Resistencia de carbon 1M8 Ω', '2018-09-11 20:47:26', 'Nuevo'),
(70, 'RESISTENCIA CARBON 2M2 Ω', 3, 'No registrado', 999, 'RESISTENCIA DE CARBON 2M2 Ω', '2018-09-11 20:54:46', 'Nuevo'),
(71, 'RESISTENCIA DE CARBON 1 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:18:26', 'Nuevo'),
(72, 'RESISTENCIA DE CARBON 1,2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:18:58', 'Nuevo'),
(73, 'RESISTENCIA DE CARBON 1,5 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:19:21', 'Nuevo'),
(74, 'RESISTENCIA DE CARBON 1,8 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:19:35', 'Nuevo'),
(75, 'RESISTENCIA DE CARBON 2,2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:19:57', 'Nuevo'),
(76, 'RESISTENCIA DE CARBON 2,7 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:20:15', 'Nuevo'),
(77, 'RESISTENCIA DE CARBON 3,3 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:20:32', 'Nuevo'),
(78, 'RESISTENCIA DE CARBON 3,9 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:20:47', 'Nuevo'),
(79, 'RESISTENCIA DE CARBON 4,7 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:02', 'Nuevo'),
(80, 'RESISTENCIA DE CARBON 5,1 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:18', 'Nuevo'),
(81, 'RESISTENCIA DE CARBON 5,6 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:32', 'Nuevo'),
(82, 'RESISTENCIA DE CARBON 6,8 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:59', 'Nuevo'),
(83, 'RESISTENCIA DE CARBON 8,2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:24:34', 'Nuevo'),
(84, 'RESISTENCIA DE CARBON 10 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:22', 'Nuevo'),
(85, 'RESISTENCIA DE CARBON 12 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:28', 'Nuevo'),
(86, 'RESISTENCIA DE CARBON 15 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:38', 'Nuevo'),
(87, 'RESISTENCIA DE CARBON 18 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:44', 'Nuevo'),
(88, 'RESISTENCIA DE CARBON 22 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:50', 'Nuevo'),
(89, 'RESISTENCIA DE CARBON 27 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:26:51', 'Nuevo'),
(90, 'RESISTENCIA DE CARBON 33 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:26:58', 'Nuevo'),
(91, 'RESISTENCIA DE CARBON 39 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:08', 'Nuevo'),
(92, 'RESISTENCIA DE CARBON 47 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:21', 'Nuevo'),
(93, 'RESISTENCIA DE CARBON 51 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:27', 'Nuevo'),
(94, 'RESISTENCIA DE CARBON 56 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:35', 'Nuevo'),
(95, 'RESISTENCIA DE CARBON 68 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:40', 'Nuevo'),
(96, 'RESISTENCIA DE CARBON 82 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:48', 'Nuevo'),
(97, 'RESISTENCIA DE CARBON 100 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:54', 'Nuevo'),
(98, 'RESISTENCIA DE CARBON 120 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:05', 'Nuevo'),
(99, 'RESISTENCIA DE CARBON 150 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:17', 'Nuevo'),
(100, 'RESISTENCIA DE CARBON 180 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:22', 'Nuevo'),
(101, 'RESISTENCIA DE CARBON 220 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:28', 'Nuevo'),
(102, 'RESISTENCIA DE CARBON 270 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:37', 'Nuevo'),
(103, 'RESISTENCIA DE CARBON 330 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:42', 'Nuevo'),
(104, 'RESISTENCIA DE CARBON 390 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:47', 'Nuevo'),
(105, 'RESISTENCIA DE CARBON 470 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:53', 'Nuevo'),
(106, 'RESISTENCIA DE CARBON 510 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:01', 'Nuevo'),
(107, 'RESISTENCIA DE CARBON 560 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:07', 'Nuevo'),
(108, 'RESISTENCIA DE CARBON 680 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:13', 'Nuevo'),
(109, 'RESISTENCIA DE CARBON 820 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:22', 'Nuevo'),
(110, 'RESISTENCIA DE CARBON 1 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:28', 'Nuevo'),
(111, 'RESISTENCIA DE CARBON 1K2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:43', 'Nuevo'),
(112, 'RESISTENCIA DE CARBON 1K5 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:49', 'Nuevo'),
(113, 'RESISTENCIA DE CARBON 1K8 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:54', 'Nuevo'),
(114, 'RESISTENCIA DE CARBON 2K2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:00', 'Nuevo'),
(115, 'RESISTENCIA DE CARBON 2K7 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:12', 'Nuevo'),
(116, 'RESISTENCIA DE CARBON 3K3 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:19', 'Nuevo'),
(117, 'RESISTENCIA DE CARBON 3K9 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:23', 'Nuevo'),
(118, 'RESISTENCIA DE CARBON 4K7 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:29', 'Nuevo'),
(119, 'RESISTENCIA DE CARBON 5K1 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:38', 'Nuevo'),
(120, 'RESISTENCIA DE CARBON 5K6 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:44', 'Nuevo'),
(121, 'RESISTENCIA DE CARBON 6K8 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:49', 'Nuevo'),
(122, 'RESISTENCIA DE CARBON 8K2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:55', 'Nuevo'),
(123, 'RESISTENCIA DE CARBON 10 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:59', 'Nuevo'),
(124, 'RESISTENCIA DE CARBON 12 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:33', 'Nuevo'),
(125, 'RESISTENCIA DE CARBON 15 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:38', 'Nuevo'),
(126, 'RESISTENCIA DE CARBON 18 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:45', 'Nuevo'),
(127, 'RESISTENCIA DE CARBON 22 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:52', 'Nuevo'),
(128, 'RESISTENCIA DE CARBON 27 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:57', 'Nuevo'),
(129, 'RESISTENCIA DE CARBON 33 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:02', 'Nuevo'),
(130, 'RESISTENCIA DE CARBON 39 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:26', 'Nuevo'),
(131, 'RESISTENCIA DE CARBON 47 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:32', 'Nuevo'),
(132, 'RESISTENCIA DE CARBON 51 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:40', 'Nuevo'),
(133, 'RESISTENCIA DE CARBON 56 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:45', 'Nuevo'),
(134, 'RESISTENCIA DE CARBON 68 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:52', 'Nuevo'),
(135, 'RESISTENCIA DE CARBON 82 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:59', 'Nuevo'),
(136, 'RESISTENCIA DE CARBON 100 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:06', 'Nuevo'),
(137, 'RESISTENCIA DE CARBON 120 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:11', 'Nuevo'),
(138, 'RESISTENCIA DE CARBON 150 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:18', 'Nuevo'),
(139, 'RESISTENCIA DE CARBON 180 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:23', 'Nuevo'),
(140, 'RESISTENCIA DE CARBON 220 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:30', 'Nuevo'),
(141, 'RESISTENCIA DE CARBON 270 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:35', 'Nuevo'),
(142, 'RESISTENCIA DE CARBON 330 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:42', 'Nuevo'),
(143, 'RESISTENCIA DE CARBON 390 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:48', 'Nuevo'),
(144, 'RESISTENCIA DE CARBON 470 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:53', 'Nuevo'),
(145, 'RESISTENCIA DE CARBON 510 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:58', 'Nuevo'),
(146, 'RESISTENCIA DE CARBON 560 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:34:05', 'Nuevo'),
(147, 'RESISTENCIA DE CARBON 680 KΩ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:34:10', 'Nuevo'),
(148, 'RESISTENCIA DE CARBON 1M Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:09', 'Nuevo'),
(149, 'RESISTENCIA DE CARBON 1M2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:17', 'Nuevo'),
(150, 'RESISTENCIA DE CARBON 1M5 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:22', 'Nuevo'),
(151, 'RESISTENCIA DE CARBON 1M8 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:29', 'Nuevo'),
(152, 'RESISTENCIA DE CARBON 2M7 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:35', 'Nuevo'),
(153, 'RESISTENCIA DE CARBON 3M3 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:41', 'Nuevo'),
(154, 'RESISTENCIA DE CARBON 3M9 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:52', 'Nuevo'),
(155, 'RESISTENCIA DE CARBON 4M7 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:03', 'Nuevo'),
(156, 'RESISTENCIA DE CARBON 5M1 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:09', 'Nuevo'),
(157, 'RESISTENCIA DE CARBON 5M6 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:20', 'Nuevo'),
(158, 'RESISTENCIA DE CARBON 6M8 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:28', 'Nuevo'),
(159, 'RESISTENCIA DE CARBON 8M2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:34', 'Nuevo'),
(160, 'RESISTENCIA DE CARBON 10M Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:40', 'Nuevo'),
(161, 'RESISTENCIA DE CEMENTO 1 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:06', 'Nuevo'),
(162, 'RESISTENCIA DE CEMENTO 4,7 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:11', 'Nuevo'),
(163, 'RESISTENCIA DE CEMENTO 8,2 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:16', 'Nuevo'),
(164, 'RESISTENCIA DE CEMENTO 10 Ω', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:22', 'Nuevo'),
(165, 'CAPACITOR CERAMICO 0.039nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:00:11', 'Nuevo'),
(166, 'CAPACITOR CERAMICO 0.04nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:00:49', 'Nuevo'),
(167, 'CAPACITOR CERAMICO 0.047nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:04', 'Nuevo'),
(168, 'CAPACITOR CERAMICO 0.05nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:14', 'Nuevo'),
(169, 'CAPACITOR CERAMICO 0.056nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:23', 'Nuevo'),
(170, 'CAPACITOR CERAMICO 0.06nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:31', 'Nuevo'),
(171, 'CAPACITOR CERAMICO 0.068nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:37', 'Nuevo'),
(172, 'CAPACITOR CERAMICO 0.07nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:44', 'Nuevo'),
(173, 'CAPACITOR CERAMICO 0.08nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:51', 'Nuevo'),
(174, 'CAPACITOR CERAMICO 0.082nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:01:58', 'Nuevo'),
(175, 'CAPACITOR CERAMICO 0.1nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:02:06', 'Nuevo'),
(176, 'CAPACITOR CERAMICO 0.12nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:02:19', 'Nuevo'),
(177, 'CAPACITOR CERAMICO 0.15nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:02:26', 'Nuevo'),
(178, 'CAPACITOR CERAMICO 0.18nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:02:32', 'Nuevo'),
(179, 'CAPACITOR CERAMICO 0.2nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:02:39', 'Nuevo'),
(180, 'CAPACITOR CERAMICO 0.22nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:02:47', 'Nuevo'),
(181, 'CAPACITOR CERAMICO 0.25nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:02:56', 'Nuevo'),
(182, 'CAPACITOR CERAMICO 0.27nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:03:09', 'Nuevo'),
(183, 'CAPACITOR CERAMICO 0.3nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:03:18', 'Nuevo'),
(184, 'CAPACITOR CERAMICO 0.33nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:03:26', 'Nuevo'),
(185, 'CAPACITOR CERAMICO 0.39nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:03:35', 'Nuevo'),
(186, 'CAPACITOR CERAMICO 0.4nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:03:47', 'Nuevo'),
(187, 'CAPACITOR CERAMICO 1000nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:03:56', 'Nuevo'),
(188, 'CAPACITOR CERAMICO 820nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:04', 'Nuevo'),
(189, 'CAPACITOR CERAMICO 800nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:11', 'Nuevo'),
(190, 'CAPACITOR CERAMICO 700nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:20', 'Nuevo'),
(191, 'CAPACITOR CERAMICO 680nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:26', 'Nuevo'),
(192, 'CAPACITOR CERAMICO 600nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:34', 'Nuevo'),
(193, 'CAPACITOR CERAMICO 560nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:41', 'Nuevo'),
(194, 'CAPACITOR CERAMICO 500nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:48', 'Nuevo'),
(195, 'CAPACITOR CERAMICO 0.47nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:04:58', 'Nuevo'),
(196, 'CAPACITOR CERAMICO 0.5nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:05:08', 'Nuevo'),
(197, 'CAPACITOR CERAMICO 0.56nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:05:17', 'Nuevo'),
(198, 'CAPACITOR CERAMICO 0.6nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:05:27', 'Nuevo'),
(199, 'CAPACITOR CERAMICO 0.68nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:05:34', 'Nuevo'),
(200, 'CAPACITOR CERAMICO 0.7nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:05:40', 'Nuevo'),
(201, 'CAPACITOR CERAMICO 0.8nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:05:47', 'Nuevo'),
(202, 'CAPACITOR CERAMICO 0.82nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:05:54', 'Nuevo'),
(203, 'CAPACITOR CERAMICO 1nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:06:33', 'Nuevo'),
(204, 'CAPACITOR CERAMICO 39nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:06:39', 'Nuevo'),
(205, 'CAPACITOR CERAMICO 40nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:06:56', 'Nuevo'),
(206, 'CAPACITOR CERAMICO 47nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:07:02', 'Nuevo'),
(207, 'CAPACITOR CERAMICO 50nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:07:12', 'Nuevo'),
(208, 'CAPACITOR CERAMICO 56nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:07:19', 'Nuevo'),
(209, 'CAPACITOR CERAMICO 60nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:07:26', 'Nuevo'),
(210, 'CAPACITOR CERAMICO 68nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:07:33', 'Nuevo'),
(211, 'CAPACITOR CERAMICO 70nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:07:42', 'Nuevo'),
(212, 'CAPACITOR CERAMICO 82nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:07:50', 'Nuevo'),
(213, 'CAPACITOR CERAMICO 100nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:09:21', 'Nuevo'),
(214, 'CAPACITOR CERAMICO 120nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:09:27', 'Nuevo'),
(215, 'CAPACITOR CERAMICO 150nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:09:36', 'Nuevo'),
(216, 'CAPACITOR CERAMICO 180nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:09:43', 'Nuevo'),
(217, 'CAPACITOR CERAMICO 200nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:10:30', 'Nuevo'),
(218, 'CAPACITOR CERAMICO 220nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:10:36', 'Nuevo'),
(219, 'CAPACITOR CERAMICO 250nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:10:41', 'Nuevo'),
(220, 'CAPACITOR CERAMICO 270nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:10:45', 'Nuevo'),
(221, 'CAPACITOR CERAMICO 300nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:10:52', 'Nuevo'),
(222, 'CAPACITOR CERAMICO 330nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:11:03', 'Nuevo'),
(223, 'CAPACITOR CERAMICO 390nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:11:09', 'Nuevo'),
(224, 'CAPACITOR CERAMICO 400nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:11:15', 'Nuevo'),
(225, 'CAPACITOR CERAMICO 470nf', 3, 'No registrado', 999, 'CAPACITORES CERAMICOS EN NANOFARADIOS', '2018-09-12 21:11:21', 'Nuevo'),
(226, 'CIRCUITO TL 081', 3, 'No registrado', 100, 'CIRCUITO TL 081', '2018-09-12 21:26:19', 'Nuevo'),
(227, 'CIRCUITO TL 082', 3, 'No registrado', 100, 'CIRCUITO TL 082', '2018-09-12 21:26:36', 'Nuevo'),
(228, 'CIRCUITO LM 555', 3, 'No registrado', 100, 'CIRCUITO LM 555', '2018-09-12 21:27:02', 'Nuevo'),
(229, 'SENSOR LM 35', 3, 'No registrado', 80, 'SENSOR LM 35', '2018-09-12 21:27:27', 'Nuevo'),
(230, 'TRANSISTOR TIP 31C', 3, 'No registrado', 80, 'TRANSISTOR TIP 31C', '2018-09-12 21:27:50', 'Nuevo'),
(231, 'TRANSISTOR TIP 41C', 3, 'No registrado', 80, 'TRANSISTOR TIP 41C', '2018-09-12 21:28:10', 'Nuevo'),
(232, 'TRANSISTOR BC 548', 3, 'No registrado', 80, 'TRANSISTOR BC 548', '2018-09-12 21:28:25', 'Nuevo'),
(233, 'TRANSISTOR BC 558', 3, 'No registrado', 80, 'TRANSISTOR BC 558', '2018-09-12 21:28:40', 'Nuevo'),
(234, 'TRANSISTOR TIP 122', 3, 'No registrado', 80, 'TRANSISTOR TIP 122', '2018-09-12 21:28:53', 'Nuevo'),
(235, 'TRANSISTOR TIP 125', 3, 'No registrado', 80, 'TRANSISTOR TIP 125', '2018-09-12 21:29:07', 'Nuevo'),
(236, 'TRIAC BTA 10-600B', 3, 'TRIAC', 80, 'TRIAC BTA 10-600B', '2018-09-12 21:29:32', 'Nuevo'),
(237, 'SCR S4006L', 3, 'No registrado', 80, 'SCR S4006L', '2018-09-12 21:29:53', 'Nuevo'),
(238, 'OPTO MOC 3011', 3, 'No registrado', 80, 'OPTO MOC 3011', '2018-09-12 21:30:11', 'Nuevo'),
(239, 'POTENCIOMETRO 1 KΩ', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 1 KΩ', '2018-09-12 21:32:16', 'Nuevo'),
(240, 'POTENCIOMETRO 10 KΩ', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 10 KΩ', '2018-09-12 21:32:27', 'Nuevo'),
(241, 'POTENCIOMETRO 50 KΩ', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 50 KΩ', '2018-09-12 21:32:35', 'Nuevo'),
(242, 'POTENCIOMETRO 100 KΩ', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 100 KΩ', '2018-09-12 21:32:40', 'Nuevo'),
(243, 'POTENCIOMETRO 1 MΩ', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 1 MΩ', '2018-09-12 21:32:45', 'Nuevo'),
(244, 'BATERIA ACIDO-PLOMO 12 VOLTIOS 7.5 AH', 3, 'No registrado', 2, 'BATERIA ACIDO-PLOMO 12 VOLTIOS 7.5 AH', '2018-09-12 21:34:25', 'Nuevo'),
(245, 'DIAC DB4', 3, 'DIAC', 50, 'DIAC DB4', '2018-09-12 21:35:01', 'Nuevo'),
(246, 'RELEVADOR 12 VOLTIOS 4 PINES', 3, 'No registrado', 50, 'RELEVADOR 12 VOLTIOS 4 PINES', '2018-09-12 21:35:35', 'Nuevo'),
(247, 'RELEVADOR 12 VOLTIOS 5 PINES', 3, 'No registrado', 50, 'RELEVADOR 12 VOLTIOS 5 PINES', '2018-09-12 21:35:48', 'Nuevo'),
(248, 'RELEVADOR 5 VOLTIOS 4 PINES', 3, 'No registrado', 50, 'RELEVADOR 5 VOLTIOS 4 PINES', '2018-09-12 21:36:10', 'Nuevo'),
(249, 'RELEVADOR 5 VOLTIOS 5 PINES', 3, 'No registrado', 50, 'RELEVADOR 5 VOLTIOS 5 PINES', '2018-09-12 21:36:33', 'Nuevo'),
(250, 'DIODO IN4007', 3, 'No registrado', 150, 'DIODO IN4007', '2018-09-12 21:36:57', 'Nuevo'),
(251, 'DIODO IN4148', 3, 'No registrado', 150, 'DIODO IN4148', '2018-09-12 21:37:20', 'Nuevo'),
(252, 'Cable caiman rojo 30cm', 3, 'No registrado', 50, 'Cable caiman rojo 30cm', '2018-09-12 21:38:17', 'Nuevo'),
(253, 'Cable caiman negro 30cm', 3, 'No registrado', 50, 'Cable caiman negro 30cm', '2018-09-12 21:38:31', 'Nuevo'),
(254, 'Cable caiman verde 30cm', 3, 'No registrado', 50, 'Cable caiman verde 30cm', '2018-09-12 21:38:42', 'Nuevo'),
(255, 'Cable caiman amarillo 30cm', 3, 'No registrado', 50, 'Cable caiman amarillo 30cm', '2018-09-12 21:38:52', 'Nuevo'),
(256, 'Cable caiman azul 30cm', 3, 'No registrado', 50, 'Cable caiman azul 30cm', '2018-09-12 21:39:02', 'Nuevo'),
(257, 'Cable caiman blanco 30cm', 3, 'No registrado', 50, 'Cable caiman blanco 30cm', '2018-09-12 21:39:12', 'Nuevo'),
(258, 'INA 128P', 3, 'No registrado', 50, 'INA 128P', '2018-09-12 21:39:26', 'Nuevo'),
(259, '0.47', 3, 'No registrado', 150, '0.47', '2018-09-12 21:44:18', 'Archivado'),
(260, '0.47', 3, 'No registrado', 150, '0.47', '2018-09-12 21:46:11', 'Nuevo'),
(261, 'CAPACITOR ELECTROLITICO 0.47uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 0.47uf a 50 v.', '2018-09-12 21:52:24', 'Nuevo'),
(262, 'CAPACITOR ELECTROLITICO 0.33uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 0.33uf a 50 v.', '2018-09-12 21:53:12', 'Nuevo'),
(263, 'CAPACITOR ELECTROLITICO 0.22uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 0.22uf a 50 v.', '2018-09-12 21:53:18', 'Nuevo'),
(264, 'CAPACITOR ELECTROLITICO 1uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 1uf a 50 v.', '2018-09-12 21:53:24', 'Nuevo'),
(265, 'CAPACITOR ELECTROLITICO 2.2uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 2.2uf a 50 v.', '2018-09-12 21:53:30', 'Nuevo'),
(266, 'CAPACITOR ELECTROLITICO 3.3uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 3.3uf a 50 v.', '2018-09-12 21:53:36', 'Nuevo'),
(267, 'CAPACITOR ELECTROLITICO 4.7uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 4.7uf a 50 v.', '2018-09-12 21:53:42', 'Nuevo'),
(268, 'CAPACITOR ELECTROLITICO 10uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 10uf a 50 v.', '2018-09-12 21:53:48', 'Nuevo'),
(269, 'CAPACITOR ELECTROLITICO 22uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 22uf a 50 v.', '2018-09-12 21:53:55', 'Nuevo'),
(270, 'CAPACITOR ELECTROLITICO 33uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 33uf a 50 v.', '2018-09-12 21:54:01', 'Nuevo'),
(271, 'CAPACITOR ELECTROLITICO 47uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 47uf a 50 v.', '2018-09-12 21:54:07', 'Nuevo'),
(272, 'CAPACITOR ELECTROLITICO 100uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 100uf a 50 v.', '2018-09-12 21:54:13', 'Nuevo'),
(273, 'CAPACITOR ELECTROLITICO 220uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 220uf a 50 v.', '2018-09-12 21:54:18', 'Nuevo'),
(274, 'CAPACITOR ELECTROLITICO 330uf a 50 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 330uf a 50 v.', '2018-09-12 21:54:25', 'Nuevo'),
(275, 'CAPACITOR ELECTROLITICO 470uf a 35 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 470uf a 35 v.', '2018-09-12 21:54:32', 'Nuevo'),
(276, 'CAPACITOR ELECTROLITICO 1000uf a 35 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 1000uf a 35 v.', '2018-09-12 21:54:37', 'Nuevo'),
(277, 'CAPACITOR ELECTROLITICO 2200uf a 35 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 2200uf a 35 v.', '2018-09-12 21:54:44', 'Nuevo'),
(278, 'CAPACITOR ELECTROLITICO 3300uf a 35 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 3300uf a 35 v.', '2018-09-12 21:54:49', 'Nuevo'),
(279, 'CAPACITOR ELECTROLITICO 4700uf a 35 v.', 3, 'No registrado', 150, 'CAPACITOR ELECTROLITICO 4700uf a 35 v.', '2018-09-12 21:54:54', 'Nuevo'),
(280, 'CAPACITOR DE TANTALIO 22 nf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 22 nf a 25 voltios o mas', '2018-09-12 21:57:53', 'Nuevo'),
(281, 'CAPACITOR DE TANTALIO 100 nf 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 100 nf 25 voltios o mas', '2018-09-12 21:58:14', 'Nuevo'),
(282, 'CAPACITOR DE TANTALIO 1 uf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 1 uf a 25 voltios o mas', '2018-09-12 21:58:22', 'Nuevo'),
(283, 'CAPACITOR DE TANTALIO 2.2 uf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 2.2 uf a 25 voltios o mas', '2018-09-12 21:58:31', 'Nuevo'),
(284, 'CAPACITOR DE TANTALIO 4.7 uf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 4.7 uf a 25 voltios o mas', '2018-09-12 21:58:40', 'Nuevo'),
(285, 'CAPACITOR DE TANTALIO 10 uf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 10 uf a 25 voltios o mas', '2018-09-12 21:58:47', 'Nuevo'),
(286, 'CAPACITOR DE TANTALIO 22 uf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 22 uf a 25 voltios o mas', '2018-09-12 21:58:56', 'Nuevo'),
(287, 'CAPACITOR DE TANTALIO 33 uf a25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 33 uf a25 voltios o mas', '2018-09-12 21:59:06', 'Nuevo'),
(288, 'CAPACITOR DE TANTALIO 47 uf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 47 uf a 25 voltios o mas', '2018-09-12 21:59:18', 'Nuevo'),
(289, 'CAPACITOR DE TANTALIO 100 uf a 25 voltios o mas', 3, 'No registrado', 150, 'CAPACITOR DE TANTALIO 100 uf a 25 voltios o mas', '2018-09-12 21:59:27', 'Nuevo');

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

--
-- Volcado de datos para la tabla `articulos_danados`
--

INSERT INTO `articulos_danados` (`id`, `id_articulo`, `id_alumno`, `fecha_devolucion`, `detalle`) VALUES
(1, 55, 57, '2018-10-15', 'Se rompio');

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

--
-- Volcado de datos para la tabla `articulos_perdidos`
--

INSERT INTO `articulos_perdidos` (`id`, `id_alumno`, `fecha_extravio`, `id_articulo`) VALUES
(1, '57', '2018-10-15', 236);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cart_items`
--

INSERT INTO `cart_items` (`id`, `product_id`, `quantity`, `user_id`, `created`, `modified`) VALUES
(1, 6, 1, 1234567890, '0000-00-00 00:00:00', '2018-11-20 15:47:06'),
(2, 36, 3, 1234567890, '0000-00-00 00:00:00', '2018-11-20 17:19:11'),
(3, 35, 1, 1234567890, '0000-00-00 00:00:00', '2018-11-20 17:19:39'),
(13, 163, 3, 1, '2018-11-10 01:28:42', '2018-11-10 00:28:42'),
(16, 28, 1, 1, '2018-11-21 04:44:50', '2018-11-21 04:44:50');

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
(7, 'Herramienta'),
(3, 'Material Electrónico'),
(8, 'Computadora'),
(9, 'Aparato electrónico'),
(10, 'Material');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_prestamos`
--

CREATE TABLE `detalle_prestamos` (
  `id_detalle_prestamos` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `cantidad` int(2) NOT NULL,
  `id_prestamo` int(11) NOT NULL,
  `estatus_prestamo` varchar(50) NOT NULL,
  `fecha_devolucion` varchar(100) NOT NULL,
  `fecha_entregado` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_prestamos`
--

INSERT INTO `detalle_prestamos` (`id_detalle_prestamos`, `id_articulo`, `cantidad`, `id_prestamo`, `estatus_prestamo`, `fecha_devolucion`, `fecha_entregado`) VALUES
(1, 55, 3, 1, 'devuelto', '', '2018-10-15 14:28:33'),
(2, 53, 2, 2, 'devuelto', '', '2018-10-15 14:27:40'),
(3, 236, 9, 2, 'devuelto', '', '2018-10-15 15:08:57'),
(4, 233, 6, 2, 'devuelto', '', '2018-10-15 15:06:50'),
(5, 235, 4, 3, 'devuelto', '', '2018-10-15 14:27:45'),
(6, 231, 1, 3, 'devuelto', '', '2018-10-15 14:27:37'),
(7, 162, 7, 3, 'pendiente', '', ''),
(8, 5, 2, 4, 'devuelto', '', '2018-10-15 15:06:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_alumno` bigint(50) NOT NULL,
  `fecha_prestamo` varchar(100) NOT NULL,
  `fecha_devolucion` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_alumno`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(1, 57, '2018-09-24 13:39:50', '25/09/2018'),
(2, 57, '2018-09-24 13:40:51', '24/09/2018'),
(3, 57, '2018-10-15 14:26:39', '15/10/2018'),
(4, 1, '2018-10-15 15:06:33', '16/10/2018');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_articulos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_articulos` (
`id_articulo` int(11)
,`nombre_articulo` varchar(50)
,`nombre_categoria` varchar(50)
,`marca` varchar(50)
,`ejemplares` int(3)
,`detalle` text
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_articulos`
--
DROP TABLE IF EXISTS `vista_articulos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`u834655291_usr`@`localhost` SQL SECURITY DEFINER VIEW `vista_articulos`  AS  select `articulos`.`id_articulo` AS `id_articulo`,`articulos`.`nombre_articulo` AS `nombre_articulo`,`categorias`.`nombre_categoria` AS `nombre_categoria`,`articulos`.`marca` AS `marca`,`articulos`.`ejemplares` AS `ejemplares`,`articulos`.`detalle` AS `detalle` from (`articulos` left join `categorias` on(`articulos`.`id_categoria` = `categorias`.`id_categoria`)) where `articulos`.`estatus` <> 'Archivado' ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `affiliate`
--
ALTER TABLE `affiliate`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `cart_items`
--
ALTER TABLE `cart_items`
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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT de la tabla `articulos_danados`
--
ALTER TABLE `articulos_danados`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `articulos_perdidos`
--
ALTER TABLE `articulos_perdidos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  MODIFY `id_detalle_prestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
