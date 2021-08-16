-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2021 a las 04:06:27
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `clientes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `clientes`;

--
-- Base de datos: `clientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeza_factura`
--

CREATE TABLE `cabeza_factura` (
  `IdFactura` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cabeza_factura`
--

INSERT INTO `cabeza_factura` (`IdFactura`, `Fecha`, `IdCliente`, `Total`) VALUES
(0, '2021-08-03', 0, 25000),
(1, '2021-08-03', 1, 4000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL,
  `NombreCliente` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `NombreCliente`, `Direccion`) VALUES
(0, 'Rocio', 'cr 58'),
(1, 'rocio', 'cra58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `IdDetalleFactura` int(11) NOT NULL,
  `IdFactura` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`IdDetalleFactura`, `IdFactura`, `IdProducto`, `Cantidad`, `Valor`) VALUES
(0, 0, 1, 2, 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(10) NOT NULL,
  `Nombre_producto` varchar(100) NOT NULL,
  `Valor` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdProducto`, `Nombre_producto`, `Valor`) VALUES
(1, 'collar', 10000),
(2, 'anillo', 7000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cabeza_factura`
--
ALTER TABLE `cabeza_factura`
  ADD PRIMARY KEY (`IdFactura`),
  ADD KEY `FK_Factura_Cliente` (`IdCliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`IdDetalleFactura`),
  ADD KEY `FK_Factura_Detalle` (`IdFactura`),
  ADD KEY `FK_Producto_Detalle` (`IdProducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `IdProducto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cabeza_factura`
--
ALTER TABLE `cabeza_factura`
  ADD CONSTRAINT `FK_Factura_Cliente` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`);

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `FK_Factura_Detalle` FOREIGN KEY (`IdFactura`) REFERENCES `cabeza_factura` (`IdFactura`),
  ADD CONSTRAINT `FK_Producto_Detalle` FOREIGN KEY (`IdProducto`) REFERENCES `productos` (`IdProducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
