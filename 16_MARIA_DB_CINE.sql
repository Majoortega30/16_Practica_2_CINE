-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2021 a las 03:55:15
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd-ferreterias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-clientes`
--

CREATE TABLE `tbl-clientes` (
  `ID CLIENTE` int(11) NOT NULL,
  `NOMBRE` text NOT NULL,
  `APELLLIDO` text NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  `DESCRIPCION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl-clientes`
--

INSERT INTO `tbl-clientes` (`ID CLIENTE`, `NOMBRE`, `APELLLIDO`, `TELEFONO`, `DESCRIPCION`) VALUES
(1, 'GUILLERMO', 'HYDE', 89877656, 'INGENIERO'),
(2, 'ARIANA', 'YANES', 89988998, 'DOCTORA'),
(3, 'MARCELA', 'LAVAIRE', 32244554, 'ABOGADA'),
(4, 'JOSE', 'ROMERO', 89099009, 'ELECTRICISTA'),
(5, 'FLOR', 'MARTINEZ', 87766554, 'LICENCIADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-empleados`
--

CREATE TABLE `tbl-empleados` (
  `ID EMPLEADO` int(10) NOT NULL,
  `NOMBRE` text NOT NULL,
  `APELLLIDO` text NOT NULL,
  `TELEFONO` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl-empleados`
--

INSERT INTO `tbl-empleados` (`ID EMPLEADO`, `NOMBRE`, `APELLLIDO`, `TELEFONO`) VALUES
(1, 'ARODI', 'MEJIA', 32822343),
(2, 'ARIANA', 'YANES', 98322332),
(3, 'JOSE', 'ROMERO', 89987654),
(4, 'FLOR', 'MARTINEZ', 98765432),
(5, 'MARCELA', 'LAVAIRE', 88788779);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-productos`
--

CREATE TABLE `tbl-productos` (
  `ID PRODUCTO` int(11) NOT NULL,
  `DESCRIPCION` text NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl-productos`
--

INSERT INTO `tbl-productos` (`ID PRODUCTO`, `DESCRIPCION`, `CANTIDAD`, `PRECIO`) VALUES
(1, 'CLAVOS DE ACERO', 1000, 5),
(2, 'TORNILLOS PARA REPISAS', 1000, 8),
(3, 'CEMENTO PARA CONSTRUCCION', 1000, 190),
(4, 'VARILLA CORRUGADA', 1000, 190),
(5, 'ALAMBRE DE AMARRE', 1000, 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl-clientes`
--
ALTER TABLE `tbl-clientes`
  ADD PRIMARY KEY (`ID CLIENTE`);

--
-- Indices de la tabla `tbl-empleados`
--
ALTER TABLE `tbl-empleados`
  ADD PRIMARY KEY (`ID EMPLEADO`);

--
-- Indices de la tabla `tbl-productos`
--
ALTER TABLE `tbl-productos`
  ADD PRIMARY KEY (`ID PRODUCTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl-clientes`
--
ALTER TABLE `tbl-clientes`
  MODIFY `ID CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl-productos`
--
ALTER TABLE `tbl-productos`
  MODIFY `ID PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
