-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-06-2024 a las 06:46:43
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `netflix-gt2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle-pelicula`
--

CREATE TABLE `detalle-pelicula` (
  `peli_detalles` int(11) NOT NULL,
  `cast` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enc-pelicula`
--

CREATE TABLE `enc-pelicula` (
  `peli_id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Lugar_filmacion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_estreno` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `peli_detalles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle-pelicula`
--
ALTER TABLE `detalle-pelicula`
  ADD PRIMARY KEY (`peli_detalles`);

--
-- Indices de la tabla `enc-pelicula`
--
ALTER TABLE `enc-pelicula`
  ADD PRIMARY KEY (`peli_id`),
  ADD KEY `peli_detalles` (`peli_detalles`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enc-pelicula`
--
ALTER TABLE `enc-pelicula`
  ADD CONSTRAINT `enc-pelicula_ibfk_1` FOREIGN KEY (`peli_detalles`) REFERENCES `detalle-pelicula` (`peli_detalles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
