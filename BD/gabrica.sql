-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3308
-- Tiempo de generación: 17-02-2022 a las 20:24:29
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gabrica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `nit` varchar(10) NOT NULL,
  `place` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `promotor` varchar(100) NOT NULL,
  `RTC` int(100) NOT NULL,
  `captain` varchar(100) NOT NULL,
  `terms` tinyint(1) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `leads`
--

INSERT INTO `leads` (`id`, `client_name`, `nit`, `place`, `team`, `city`, `promotor`, `RTC`, `captain`, `terms`, `ip`, `reg_date`) VALUES
(1, 'Frank', '282828282', 'punto', 'equipo', 'Bogotá', 'Promotor', 23232323, 'Capitán', 1, '938383834834', '2022-02-28'),
(2, 'Pablo Sánchez', '9-999-678', 'Plaza de las Américas', 'Front', 'Bogotá', 'Siigo', 23232323, 'Álvaro Fernández', 1, '945234', '2022-02-23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
