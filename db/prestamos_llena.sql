-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2018 a las 05:00:58
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
(21, 'Victor Manuel', 'MontaÃ±ez Gonzalez', 'Hombre', '15092151', 'IBIO', '0000000000', '7', 'Activo'),
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
(56, 'Viviana Michelle', 'Gaona Carrillo', 'Mujer', '17092343', 'IBIO', '0000000000', '3', 'Activo'),
(57, 'Omar', 'Gaona', 'Hombre', '13090018', 'ITICs', '0000000000', '11', 'Activo');

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
(1, 'Cautin', 7, 'Pretul', 3, 'Lapiz para soldar', '2018-09-06 10:29:23', 'Archivado'),
(2, 'Cautin', 7, 'Pretul', 2, 'Lapiz para soldar', '2018-09-06 14:15:59', 'Archivado'),
(3, 'Resistencia 3 Ohms', 3, 'No registrado', 100, 'No registrado', '2018-09-06 14:49:22', 'Archivado'),
(4, 'Resistencia 1K', 3, 'No registrado', 100, 'No registrado', '2018-09-06 14:51:57', 'Archivado'),
(5, 'Generador', 7, 'INSTEC AFG-2125', 8, 'Generador de seÃ±ales', '2018-09-11 13:18:33', 'Nuevo'),
(6, 'Fuente Variable', 7, 'PROTO-BOARD PB503', 8, 'Fuente variable de voltaje', '2018-09-11 13:22:01', 'Nuevo'),
(7, 'Osciloscopio', 7, 'TEKTRONICS TBHS1042', 8, 'Osciloscopio', '2018-09-11 13:23:11', 'Nuevo'),
(8, 'Cautin de lapiz', 7, 'METCAL MODELO: MX-5210', 1, 'No registrado', '2018-09-11 13:24:23', 'Nuevo'),
(9, 'Osciloscopio', 7, 'RIGOL DS1102E', 1, 'ComÃºn 8 principales objetivos de ejecuciÃ³n: Memoria a largo plazo 512 POE. Mates +,-,x, FFT. Voltaje mÃ¡ximo de entrada. Todas las entradas 1Mâ„¦||15pF 300 V RMS CAT I. ', '2018-09-11 19:47:34', 'Nuevo'),
(10, 'Fuente INSTEK', 7, ' INSTEK GPS-3303', 5, 'No registrado', '2018-09-11 19:48:43', 'Nuevo'),
(11, 'Multimetro de banco', 7, 'FLUKE 8846A', 1, 'Este multimetro digital realiza las funciones de un multimetro digital multifuncional, cuenta con medidas de tensiÃ³n, resistencia e intensidad.', '2018-09-11 19:50:16', 'Nuevo'),
(12, 'Laptop HP PROBOOK 440G3', 8, 'HP PROBOOK 440G3', 5, 'Equipo de cÃ³mputo.', '2018-09-11 19:52:05', 'Nuevo'),
(13, 'CPU HP PRODESK 600G2MINI', 8, 'HP PRODESK 600G2MINI', 2, 'Equipo de cÃ³mputo de escritorio', '2018-09-11 19:52:46', 'Nuevo'),
(14, 'Fuente de alimentacion', 3, 'LORENZO DL 3155AL2', 1, 'No registrado', '2018-09-11 19:54:02', 'Nuevo'),
(15, 'Proyector', 9, 'INFOCUS IN102', 1, 'No registrado', '2018-09-11 19:55:05', 'Nuevo'),
(16, 'Termometro laser', 7, 'STEREN HER-425', 1, 'No registrado', '2018-09-11 19:55:47', 'Nuevo'),
(17, 'Capnografo', 7, 'No registrado', 1, 'No registrado', '2018-09-11 19:57:46', 'Nuevo'),
(18, 'ELECTROMIOGRAFO 8 CANALES LAPTOP', 7, 'IWORX MODELO: IX.RA.834', 1, 'Es un sistema de adquisiciÃ³n de datos fisiolÃ³gicos con 8 canales de entrada multi propÃ³sito un estimulador de bajo voltaje y alta tensiÃ³n, 8 salidas digitales, un sensor incorporado en la presiÃ³n baromÃ©trica y 4 entradas, es de alta resoluciÃ³n de poco ruido y tiene la flexibilidad necesaria para una variedad de aplicaciones de investigaciÃ³n.', '2018-09-11 19:58:47', 'Nuevo'),
(19, 'MODULO DE GRABACION', 7, 'IWORX MODELO IX-RA-834', 1, 'Pertenece al ELECTROMIOGRAFO 8 CANALES LAPTOP', '2018-09-11 19:59:42', 'Nuevo'),
(20, 'OXIMETRO DE PULSO Y EL SENSOR PLETISMOGRAFO', 7, 'IWORX MODELO:IX-B3G', 1, 'Para medir la saturaciÃ³n de oxigeno en sangre (SpO2) y la presiÃ³n del pulso (pletismografia) utilizando un clip de dedo a base de doble longitud de onda de transmisiÃ³n de luz, esta destinado para su uso con sistema de adquisiciÃ³n de datos que tienen un puerto iWire, es un equipo diseÃ±ado para uso educativo e incluye ejercicios de laboratorio bien documentado e ilustrados.', '2018-09-11 20:02:01', 'Nuevo'),
(21, 'ELECTROENCEFALOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:03:20', 'Nuevo'),
(22, 'EQUIPO DE ELECTROENCEFALOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:03:37', 'Nuevo'),
(23, 'CASCO DEL ELECTROENCEFALOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:03:48', 'Nuevo'),
(24, 'ESTACIÃ“N DE CALOR DIGITAL', 7, 'MTKL MX-PS5200', 2, 'No registrado', '2018-09-11 20:04:39', 'Nuevo'),
(25, 'ESTACION DESOLDADORA', 7, 'MTKL MFR-PS1300', 1, 'No registrado', '2018-09-11 20:05:19', 'Nuevo'),
(26, 'LUXOMETRO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:05:30', 'Nuevo'),
(27, 'SIERRA CALADORA MS20', 7, 'MS20', 2, 'No registrado', '2018-09-11 20:06:12', 'Nuevo'),
(28, 'ESTACIÃ“N DE AIRE CALIENTE', 7, 'DEWALT DIGITAL D26960', 1, 'No registrado', '2018-09-11 20:06:41', 'Nuevo'),
(29, 'SCANER PORTATIL 3D', 9, 'ARTEC 3D MODELO: SCANNER EVA', 1, 'EscÃ¡ner similar a una camara de video de captura de imÃ¡genes en 3D, captura hasta 16 fotogramas por segundo, la velocidad de adquisiciÃ³n de datos es de 2 millones de puntos por segundo.', '2018-09-11 20:07:23', 'Nuevo'),
(30, 'ESPIROMETRO ASISTIDO POR PC', 7, 'IWORX MODELO: HEK-TA-300', 1, 'Es un analizador de gas que incluye todos los componentes necesarios para medir el consumo de oxÃ­geno y diÃ³xido de carbono de producciÃ³n en el descanso y el ejercicio de los sujetos, asÃ­ como la mediciÃ³n de la presiÃ³n arterial, cardiogramas, myograms, encefalogramas, las rspustas reglejs, espirÃ³metro y mÃ¡s.', '2018-09-11 20:10:22', 'Nuevo'),
(31, 'MODULO INDICADOR DE CONVERSION DE PULSO', 7, 'DE LORENZO MODELO DL3155BI04', 1, 'Este equipo es parte del ESPIROMETRO', '2018-09-11 20:11:26', 'Nuevo'),
(32, 'INTERFAZ GRAFICA', 8, 'HP MODELO PROBOOK 440 63 14', 1, 'Este equipo es parte del espirometro', '2018-09-11 20:12:21', 'Nuevo'),
(33, 'ENGRAPADORA INDUSTRIAL', 7, 'SILVERLINE DC-7116', 1, 'No registrado', '2018-09-11 20:13:37', 'Nuevo'),
(34, 'ESTRACTOR DE HUMO', 7, 'SIODRTEJ FX590', 2, 'No registrado', '2018-09-11 20:14:06', 'Nuevo'),
(35, 'ELECTROESTIMULADOR', 7, 'I-TECHT-ONE REHAB', 1, 'No registrado', '2018-09-11 20:15:01', 'Nuevo'),
(36, 'SECUENCIADOR LOGICO GLOBAL', 7, 'DL-010', 4, 'No registrado', '2018-09-11 20:15:49', 'Nuevo'),
(37, 'SECUENCIADOR LOGICO GLOBAL', 7, 'DL-020', 4, 'No registrado', '2018-09-11 20:16:20', 'Nuevo'),
(38, 'COMPUTADORA DE ESCRITORIO', 8, 'HP COMPAQ', 5, 'No registrado', '2018-09-11 20:16:53', 'Nuevo'),
(39, 'ESCANER PORTATIL 3D', 7, '3D SYSTEMS MODELO: VISIJET M2 RWT STARTER KIT', 1, 'Escaner similar a una cÃ¡mara de video de captura de imÃ¡genes en 3D, captura hasta 16 fotogramas por segundo, la velocidad de adquisiciÃ³n de datos es de 2 billones de puntos por segundo.', '2018-09-11 20:19:07', 'Nuevo'),
(40, 'MONITORES', 9, 'No registrado', 5, 'No registrado', '2018-09-11 20:19:25', 'Nuevo'),
(41, 'IMPRESORA PROFESIONAL', 9, '3D SYSTEMS MODELO: PROJET MJP 2500', 1, 'Imprime modelos 3D durables funcionales de lo mas complejos productos de diseÃ±o. Convierte archivos CAD 3D de maquetas complejas y modelos funcionales, de partes tales como dispositivos mÃ©dicos, productos electrÃ³nicos, e instrumentos de precisiÃ³n. ', '2018-09-11 20:20:09', 'Nuevo'),
(42, 'EQUIPO DE POST PROCESAMIENTO', 7, '3D SYSTEMS MODELO: PROJET MJP 2500', 1, 'Para facilitar la extracciÃ³n de soportes de cera de mezcla orgÃ¡nica, este sistema es un proceso de vapor a base de agua caliente que elimina la cera de piezas complejas y detalladas, con el minimo de la intervenciÃ³n del usuario, el equipo de limpieza de cuenta con dos cÃ¡maras para eliminaciÃ³n de cera, la primera cÃ¡mara se encarga de la cera a granel y la segunda cÃ¡mara eliminara la cera fina, las cÃ¡maras estan fabricadas en acero inoxidable.', '2018-09-11 20:20:44', 'Nuevo'),
(43, 'KIT DE ARRANQUE DE MATERIAL DE CONSTRUCCION', 7, '3D SYSTEMS MODELO: MJP EASYCLEAN SYSTEM', 1, 'No registrado', '2018-09-11 20:22:47', 'Nuevo'),
(44, 'BAPORERA EASY CLEAN ', 10, 'No registrado', 2, 'Baporera - Vaporera', '2018-09-11 20:24:04', 'Nuevo'),
(45, 'TALADRO DE COLUMNA', 7, 'KNOVA RETXON KNDP-13F', 6, 'No registrado', '2018-09-11 20:24:52', 'Nuevo'),
(46, 'TORNO DE CONTROL NUMERICO COMPUTARIZADO', 7, 'MTAB MODELO: XL TURN', 1, 'Torno CNC de dos ejes, apropiado para piezas pequeÃ±as y para entrenamientos, empleando un control basado en PC teniedo todas las caracteristicas y cilos de trabajo industriales como: desbaste, reducciones, roscado interno y externo, cortado, perforado y roscados cÃ³nicos.', '2018-09-11 20:26:24', 'Nuevo'),
(47, 'PRESADORA MTAB XL1000 MILL', 10, 'MTAB XL1000 MILL', 1, 'Torno de control numerico comp.', '2018-09-11 20:27:36', 'Nuevo'),
(48, 'TELEVISOR', 9, 'PANASONIC', 1, 'Television', '2018-09-11 20:29:17', 'Nuevo'),
(49, 'MONITOR DE SIGNOS VITALES', 9, 'CMS6500', 1, 'No registrado', '2018-09-11 20:29:45', 'Nuevo'),
(50, 'BASCULA SECA IMC', 7, 'IMC', 1, 'No registrado', '2018-09-11 20:30:09', 'Nuevo'),
(51, 'ELECTROCARDIOGRAFO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:30:34', 'Nuevo'),
(52, 'MONITOR DE PRESION ARTERIAL', 7, 'OMROM HEM-7320', 1, 'No registrado', '2018-09-11 20:31:06', 'Nuevo'),
(53, 'ULTRASONIDO', 7, ' WED-9618', 1, 'No registrado', '2018-09-11 20:31:23', 'Nuevo'),
(54, 'LAMPARA DE EXPLORACION O DE ESTUDIO', 7, 'ESGO MODELO: BOT105', 1, 'Lampara de pie rodable IMSS 513.567.0106, CON ANTENA TELESCÃ“PICA EN TABULAR DE ACERO DE CALIBRE No. 18 de 15.8mm (5/8") de diÃ¡metro y acabado cromado, tien un apagador integrado en el cable a 30cm. De su salida.', '2018-09-11 20:32:23', 'Nuevo'),
(55, 'TRIPIE', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:32:35', 'Nuevo'),
(56, 'CORTINERO', 7, 'No registrado', 1, 'No registrado', '2018-09-11 20:32:47', 'Nuevo'),
(57, 'ESCRITORIO CON DOS CAJONES', 10, 'ESGO MODELO: ESC109', 1, 'Escritorio tabular SCRIVANIAE, estructura tabular de acero calibre No. 20 de 25.4 mm (1") de diÃ¡metro, tiene acabado en esmalte horneado.', '2018-09-11 20:33:51', 'Nuevo'),
(58, 'MANIQUI MUSCULAR', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:34:28', 'Nuevo'),
(59, 'MANIQUI SISTEMA OSEO', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:34:39', 'Nuevo'),
(60, 'MANIQUI PLEXO', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:34:49', 'Nuevo'),
(61, 'MANIQUI COLUMNA VERTEBRAL', 10, 'No registrado', 1, 'No registrado', '2018-09-11 20:35:06', 'Nuevo'),
(62, 'BASCULA DE PISO SECA', 7, 'SECA', 2, 'No registrado', '2018-09-11 20:36:56', 'Nuevo'),
(63, 'GLUCOMETRO ACCU-CHEK ACTIVE', 7, 'ACCU-CHEK ACTIVE', 1, 'No registrado', '2018-09-11 20:37:23', 'Nuevo'),
(64, 'ESTANTE GRISE METALICO', 10, 'No registrado', 6, 'No registrado', '2018-09-11 20:37:53', 'Nuevo'),
(65, 'MESA VINARIA', 10, 'No registrado', 1, 'Vinaria - binaria', '2018-09-11 20:38:31', 'Nuevo'),
(66, 'BIOMBO', 7, 'RDHO MOFRLO: BIO124', 1, 'Biombo de tres hojas, en un marco estructural de tubo de acero calibre No. 18 de 22.2 mm (7/8") de diÃ¡metro, acabado en esmalte horneado.', '2018-09-11 20:39:54', 'Nuevo'),
(67, 'MODULO PARA EL ESTUDIO DE LOS SISTEMAS PARA LA MED', 7, 'IWORX MODELO iWire- PO2-100, DE LORENZO MODELO: DL', 1, 'Subsecuentemente las caracteristicas de algunos sistemas especiales, comprende un instrumento adicional, el simulador ECG, que provee la alimentaciÃ³n al cirvuito y provee una seÃ±al ECG simulada para realizar la actividad experimental, cumple con la cobertura de los siguientes temas teÃ³ricos. Los bio-potenciales y sus mediciones, el corazon y la mediciÃ³n de su actividad elÃ©ctrica, los mÃºsculos y la mediciÃ³pn de su actividad elÃ©ctrica, el cerebro y la mediciÃ³n de su actividad elÃ©ctrica cuenta con la simulaciÃ³n de fallas bloques de circuitos, electroencefalograma (para registrar los potenciales que son generados en la superficie del cuerpo durante el proceso de estimulacion de la musculatura cardiaca, electroencefalograma para registrar la actividad elÃ©ctica cerebral, electromiagrafia para registrar la actividad elÃ©ctrica de los mÃºeculos y de las correspondientes fibras nerviosas.', '2018-09-11 20:42:20', 'Nuevo'),
(68, 'INTERFAZ PARA CONEXION A PC', 10, 'DE LORENZO MODELO: DL 3155BIO5', 1, 'El sistema se suministra con una Interfaz para conexxion a PC de estructura robusta y diseÃ±o moderno, cuenta con un regulador de voltaje 9/+15Vcc, 1 A, + 15 Vcc, 1 A, -15 Vcc, 1 A, 6 - 0 - 6 Vca, 1 A y protecciÃ³n contra sobrecargas y corto circuitos, la base es provista con un juego de cables de conexiÃ³n.', '2018-09-11 20:43:06', 'Nuevo'),
(69, 'RESISTENCIA CARBON 1M8 Î©', 3, 'No registrado', 999, 'Resistencia de carbon 1M8 Î©', '2018-09-11 20:47:26', 'Nuevo'),
(70, 'RESISTENCIA CARBON 2M2 Î©', 3, 'No registrado', 999, 'RESISTENCIA DE CARBON 2M2 Î©', '2018-09-11 20:54:46', 'Nuevo'),
(71, 'RESISTENCIA DE CARBON 1 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:18:26', 'Nuevo'),
(72, 'RESISTENCIA DE CARBON 1,2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:18:58', 'Nuevo'),
(73, 'RESISTENCIA DE CARBON 1,5 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:19:21', 'Nuevo'),
(74, 'RESISTENCIA DE CARBON 1,8 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:19:35', 'Nuevo'),
(75, 'RESISTENCIA DE CARBON 2,2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:19:57', 'Nuevo'),
(76, 'RESISTENCIA DE CARBON 2,7 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:20:15', 'Nuevo'),
(77, 'RESISTENCIA DE CARBON 3,3 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:20:32', 'Nuevo'),
(78, 'RESISTENCIA DE CARBON 3,9 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:20:47', 'Nuevo'),
(79, 'RESISTENCIA DE CARBON 4,7 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:02', 'Nuevo'),
(80, 'RESISTENCIA DE CARBON 5,1 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:18', 'Nuevo'),
(81, 'RESISTENCIA DE CARBON 5,6 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:32', 'Nuevo'),
(82, 'RESISTENCIA DE CARBON 6,8 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:21:59', 'Nuevo'),
(83, 'RESISTENCIA DE CARBON 8,2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:24:34', 'Nuevo'),
(84, 'RESISTENCIA DE CARBON 10 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:22', 'Nuevo'),
(85, 'RESISTENCIA DE CARBON 12 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:28', 'Nuevo'),
(86, 'RESISTENCIA DE CARBON 15 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:38', 'Nuevo'),
(87, 'RESISTENCIA DE CARBON 18 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:44', 'Nuevo'),
(88, 'RESISTENCIA DE CARBON 22 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:25:50', 'Nuevo'),
(89, 'RESISTENCIA DE CARBON 27 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:26:51', 'Nuevo'),
(90, 'RESISTENCIA DE CARBON 33 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:26:58', 'Nuevo'),
(91, 'RESISTENCIA DE CARBON 39 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:08', 'Nuevo'),
(92, 'RESISTENCIA DE CARBON 47 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:21', 'Nuevo'),
(93, 'RESISTENCIA DE CARBON 51 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:27', 'Nuevo'),
(94, 'RESISTENCIA DE CARBON 56 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:35', 'Nuevo'),
(95, 'RESISTENCIA DE CARBON 68 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:40', 'Nuevo'),
(96, 'RESISTENCIA DE CARBON 82 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:48', 'Nuevo'),
(97, 'RESISTENCIA DE CARBON 100 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:27:54', 'Nuevo'),
(98, 'RESISTENCIA DE CARBON 120 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:05', 'Nuevo'),
(99, 'RESISTENCIA DE CARBON 150 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:17', 'Nuevo'),
(100, 'RESISTENCIA DE CARBON 180 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:22', 'Nuevo'),
(101, 'RESISTENCIA DE CARBON 220 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:28', 'Nuevo'),
(102, 'RESISTENCIA DE CARBON 270 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:37', 'Nuevo'),
(103, 'RESISTENCIA DE CARBON 330 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:42', 'Nuevo'),
(104, 'RESISTENCIA DE CARBON 390 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:47', 'Nuevo'),
(105, 'RESISTENCIA DE CARBON 470 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:28:53', 'Nuevo'),
(106, 'RESISTENCIA DE CARBON 510 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:01', 'Nuevo'),
(107, 'RESISTENCIA DE CARBON 560 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:07', 'Nuevo'),
(108, 'RESISTENCIA DE CARBON 680 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:13', 'Nuevo'),
(109, 'RESISTENCIA DE CARBON 820 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:22', 'Nuevo'),
(110, 'RESISTENCIA DE CARBON 1 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:28', 'Nuevo'),
(111, 'RESISTENCIA DE CARBON 1K2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:43', 'Nuevo'),
(112, 'RESISTENCIA DE CARBON 1K5 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:49', 'Nuevo'),
(113, 'RESISTENCIA DE CARBON 1K8 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:29:54', 'Nuevo'),
(114, 'RESISTENCIA DE CARBON 2K2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:00', 'Nuevo'),
(115, 'RESISTENCIA DE CARBON 2K7 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:12', 'Nuevo'),
(116, 'RESISTENCIA DE CARBON 3K3 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:19', 'Nuevo'),
(117, 'RESISTENCIA DE CARBON 3K9 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:23', 'Nuevo'),
(118, 'RESISTENCIA DE CARBON 4K7 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:29', 'Nuevo'),
(119, 'RESISTENCIA DE CARBON 5K1 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:38', 'Nuevo'),
(120, 'RESISTENCIA DE CARBON 5K6 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:44', 'Nuevo'),
(121, 'RESISTENCIA DE CARBON 6K8 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:49', 'Nuevo'),
(122, 'RESISTENCIA DE CARBON 8K2 Î© ', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:55', 'Nuevo'),
(123, 'RESISTENCIA DE CARBON 10 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:30:59', 'Nuevo'),
(124, 'RESISTENCIA DE CARBON 12 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:33', 'Nuevo'),
(125, 'RESISTENCIA DE CARBON 15 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:38', 'Nuevo'),
(126, 'RESISTENCIA DE CARBON 18 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:45', 'Nuevo'),
(127, 'RESISTENCIA DE CARBON 22 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:52', 'Nuevo'),
(128, 'RESISTENCIA DE CARBON 27 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:31:57', 'Nuevo'),
(129, 'RESISTENCIA DE CARBON 33 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:02', 'Nuevo'),
(130, 'RESISTENCIA DE CARBON 39 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:26', 'Nuevo'),
(131, 'RESISTENCIA DE CARBON 47 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:32', 'Nuevo'),
(132, 'RESISTENCIA DE CARBON 51 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:40', 'Nuevo'),
(133, 'RESISTENCIA DE CARBON 56 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:45', 'Nuevo'),
(134, 'RESISTENCIA DE CARBON 68 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:52', 'Nuevo'),
(135, 'RESISTENCIA DE CARBON 82 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:32:59', 'Nuevo'),
(136, 'RESISTENCIA DE CARBON 100 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:06', 'Nuevo'),
(137, 'RESISTENCIA DE CARBON 120 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:11', 'Nuevo'),
(138, 'RESISTENCIA DE CARBON 150 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:18', 'Nuevo'),
(139, 'RESISTENCIA DE CARBON 180 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:23', 'Nuevo'),
(140, 'RESISTENCIA DE CARBON 220 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:30', 'Nuevo'),
(141, 'RESISTENCIA DE CARBON 270 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:35', 'Nuevo'),
(142, 'RESISTENCIA DE CARBON 330 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:42', 'Nuevo'),
(143, 'RESISTENCIA DE CARBON 390 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:48', 'Nuevo'),
(144, 'RESISTENCIA DE CARBON 470 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:53', 'Nuevo'),
(145, 'RESISTENCIA DE CARBON 510 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:33:58', 'Nuevo'),
(146, 'RESISTENCIA DE CARBON 560 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:34:05', 'Nuevo'),
(147, 'RESISTENCIA DE CARBON 680 KÎ©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:34:10', 'Nuevo'),
(148, 'RESISTENCIA DE CARBON 1M Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:09', 'Nuevo'),
(149, 'RESISTENCIA DE CARBON 1M2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:17', 'Nuevo'),
(150, 'RESISTENCIA DE CARBON 1M5 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:22', 'Nuevo'),
(151, 'RESISTENCIA DE CARBON 1M8 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:29', 'Nuevo'),
(152, 'RESISTENCIA DE CARBON 2M7 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:35', 'Nuevo'),
(153, 'RESISTENCIA DE CARBON 3M3 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:41', 'Nuevo'),
(154, 'RESISTENCIA DE CARBON 3M9 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:35:52', 'Nuevo'),
(155, 'RESISTENCIA DE CARBON 4M7 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:03', 'Nuevo'),
(156, 'RESISTENCIA DE CARBON 5M1 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:09', 'Nuevo'),
(157, 'RESISTENCIA DE CARBON 5M6 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:20', 'Nuevo'),
(158, 'RESISTENCIA DE CARBON 6M8 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:28', 'Nuevo'),
(159, 'RESISTENCIA DE CARBON 8M2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:34', 'Nuevo'),
(160, 'RESISTENCIA DE CARBON 10M Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CARBON 1/4 DE WATT', '2018-09-11 21:36:40', 'Nuevo'),
(161, 'RESISTENCIA DE CEMENTO 1 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:06', 'Nuevo'),
(162, 'RESISTENCIA DE CEMENTO 4,7 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:11', 'Nuevo'),
(163, 'RESISTENCIA DE CEMENTO 8,2 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:16', 'Nuevo'),
(164, 'RESISTENCIA DE CEMENTO 10 Î©', 3, 'No registrado', 999, 'RESISTENCIAS DE CEMENTO DE 10 WATTS', '2018-09-11 21:37:22', 'Nuevo'),
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
(239, 'POTENCIOMETRO 1 Kâ„¦', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 1 Kâ„¦', '2018-09-12 21:32:16', 'Nuevo'),
(240, 'POTENCIOMETRO 10 Kâ„¦', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 10 Kâ„¦', '2018-09-12 21:32:27', 'Nuevo'),
(241, 'POTENCIOMETRO 50 Kâ„¦', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 50 Kâ„¦', '2018-09-12 21:32:35', 'Nuevo'),
(242, 'POTENCIOMETRO 100 Kâ„¦', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 100 Kâ„¦', '2018-09-12 21:32:40', 'Nuevo'),
(243, 'POTENCIOMETRO 1 Mâ„¦', 3, 'TRIMPOT', 40, 'POTENCIOMETRO 1 Mâ„¦', '2018-09-12 21:32:45', 'Nuevo'),
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
(1, '57', '2018-09-06', 2);

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
(3, 'Material Electronico'),
(8, 'Computadora'),
(9, 'Aparato electrÃ³nico'),
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
(1, 2, 0, 1, 'devuelto', '', '2018-09-06 14:43:39'),
(2, 2, 2, 2, 'devuelto', '', '2018-09-06 14:43:37'),
(3, 2, 1, 3, 'devuelto', '', '2018-09-06 14:54:02'),
(4, 3, 1, 3, 'devuelto', '', '2018-09-06 14:54:09'),
(5, 4, 1, 3, 'devuelto', '', '2018-09-06 14:54:07'),
(6, 2, 1, 4, 'devuelto', '', '2018-09-06 15:01:40'),
(7, 3, 0, 4, 'devuelto', '', '2018-09-06 15:01:48'),
(8, 2, 1, 5, 'devuelto', '', '2018-09-06 15:01:33'),
(9, 3, 0, 5, 'devuelto', '', '2018-09-06 15:01:46'),
(10, 4, 0, 5, 'devuelto', '', '2018-09-06 15:01:43');

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
(1, 57, '2018-09-06 14:17:22', '06/09/2018', ''),
(2, 57, '2018-09-06 14:43:22', '06/09/2018', ''),
(3, 57, '2018-09-06 14:52:27', '06/09/2018', ''),
(4, 1, '2018-09-06 14:56:09', '06/09/2018', ''),
(5, 1, '2018-09-06 15:01:12', '06/09/2018', '');

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
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT de la tabla `articulos_danados`
--
ALTER TABLE `articulos_danados`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `articulos_perdidos`
--
ALTER TABLE `articulos_perdidos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `detalle_prestamos`
--
ALTER TABLE `detalle_prestamos`
  MODIFY `id_detalle_prestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
