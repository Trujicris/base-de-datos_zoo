-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2024 a las 06:34:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zoologico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidadores`
--

CREATE TABLE `cuidadores` (
  `id_cuida` int(10) NOT NULL,
  `nombre_cuida` varchar(50) NOT NULL,
  `direccion_cuida` varchar(100) NOT NULL,
  `telefono_cuida` varchar(15) NOT NULL,
  `fecha_ingreso_cuida` date NOT NULL,
  `fecha_cargo_especie_cuida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuidadores`
--

INSERT INTO `cuidadores` (`id_cuida`, `nombre_cuida`, `direccion_cuida`, `telefono_cuida`, `fecha_ingreso_cuida`, `fecha_cargo_especie_cuida`) VALUES
(1, 'Mónica Herrera', 'Calle 100 No. 15-30, Bogotá', '3101122334', '2021-08-10', '2021-09-01'),
(2, 'Diego Ortiz', 'Carrera 50 No. 40-20, Medellín', '3123344556', '2020-06-15', '2020-07-05'),
(3, 'Paola Vargas', 'Carrera 15 No. 33-25, Cali', '3005566778', '2022-04-18', '2022-05-08'),
(4, 'Santiago Montoya', 'Calle 7 No. 12-40, Cartagena', '3157788990', '2023-01-30', '2023-02-15'),
(5, 'Laura Castillo', 'Carrera 11 No. 32-18, Santa Marta', '3119900112', '2021-10-20', '2021-11-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidadores_especies`
--

CREATE TABLE `cuidadores_especies` (
  `id_cuida5` int(10) DEFAULT NULL,
  `id_espe5` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `id_espe` int(10) NOT NULL,
  `nombre_espe` varchar(50) NOT NULL,
  `nombre_cientifico_espe` varchar(50) NOT NULL,
  `descripcion_espe` varchar(255) NOT NULL,
  `id_zonas1` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`id_espe`, `nombre_espe`, `nombre_cientifico_espe`, `descripcion_espe`, `id_zonas1`) VALUES
(1, 'hipopótamo', 'Hippopotamus amphibius', 'Común, tiene un estilo de vida anfibio, descansa gregariamente en aguas poco profundas durante el día y emerge de noche para alimentarse en solitario.', NULL),
(2, 'Águila de Páramo', 'Geranoaetus melanoleucus', 'Mide entre 62 y 80 cm y pesa 2 Kg. Con las alas abiertas mide hasta 2 m. Las alas son largas y extremadamente anchas, mientras que la cola es corta. El plumaje de las partes superiores es de color negro mate con los hombros gris pálido; el cuello es gris,', NULL),
(3, 'Tarántula Pollera', 'Pamphobeteus con aff a ferox', 'Son de gran tamaño, dóciles y poco venenosas. Su cuerpo está recubierto por diferentes tipos de pelos. En la cola tiene pelos urticantes los cuales suelta como defensa cuando se siente amenazada.', NULL),
(4, 'Escorpión Buthidae sp', 'Buthidae sp', 'Mide entre 3 mm y 50 mm, su coloración es marrón claro opaco. Es altamente venenoso.', NULL),
(5, 'Tigrillo Oncilla Negro', 'Leopardus tigrinus', 'Suelen ser de color amarillo quemado y negro. Los machos suelen ser más grandes que las hembras. La cabeza es comparativamente pequeña con respecto a sus ojos, que son grandes y saltones, y las orejas también grandes y redondeadas.', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--

CREATE TABLE `guias` (
  `id_guias` int(10) NOT NULL,
  `nombre_guias` varchar(50) NOT NULL,
  `direccion_guias` varchar(100) NOT NULL,
  `telefono_guias` varchar(15) NOT NULL,
  `fecha_entrada_guias` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`id_guias`, `nombre_guias`, `direccion_guias`, `telefono_guias`, `fecha_entrada_guias`) VALUES
(1, 'Carlos Restrepo', 'Carrera 7 No. 45-67, Bogotá', '3123456789', '2021-03-10'),
(2, 'Luisa Ramírez', 'Calle 5 No. 22-15, Medellín', '3006543210', '2020-07-15'),
(3, 'Andrés Pérez', 'Carrera 10 No. 33-12, Cali', '3111234567', '2022-02-20'),
(4, 'María Fernanda Quintero', 'Calle 15 No. 45-30, Barranquilla', '3012345678', '2019-11-05'),
(5, 'Juan David Gómez', 'Carrera 9 No. 40-14, Bucaramanga', '3205678901', '2022-09-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias_itinerarios`
--

CREATE TABLE `guias_itinerarios` (
  `id_guias3` int(10) DEFAULT NULL,
  `id_itine3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitats`
--

CREATE TABLE `habitats` (
  `id_habita` int(10) NOT NULL,
  `nombre_habita` varchar(50) NOT NULL,
  `clima_habita` varchar(50) NOT NULL,
  `vegetacion_habita` varchar(50) NOT NULL,
  `continentes_habita` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitats`
--

INSERT INTO `habitats` (`id_habita`, `nombre_habita`, `clima_habita`, `vegetacion_habita`, `continentes_habita`) VALUES
(1, 'Sabana', 'Cálido', 'Hierbas altas y árboles dispersos', 'África'),
(2, 'Selva Amazónica', 'Húmedo', 'Densa vegetación con árboles altos', 'Sudamérica'),
(3, 'Desierto de La Guajira', 'Seco', 'Cactus y matorrales', 'América del Sur'),
(4, 'Páramo Andino', 'Frío', 'Frailejones y musgos', 'Colombia'),
(5, 'Bosque Seco Tropical', 'Templado', 'Árboles caducifolios', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitats_especies`
--

CREATE TABLE `habitats_especies` (
  `id_habita6` int(10) DEFAULT NULL,
  `id_espe6` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itinerarios`
--

CREATE TABLE `itinerarios` (
  `id_itine` int(10) NOT NULL,
  `codigo_itine` int(10) NOT NULL,
  `duracion_recorrido_itine` time NOT NULL,
  `numero_maximo_visitantes_itine` int(11) NOT NULL,
  `numero_especies_itine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `itinerarios`
--

INSERT INTO `itinerarios` (`id_itine`, `codigo_itine`, `duracion_recorrido_itine`, `numero_maximo_visitantes_itine`, `numero_especies_itine`) VALUES
(1, 2001, '01:30:00', 20, 12),
(2, 2002, '02:15:00', 25, 18),
(3, 2003, '01:45:00', 15, 10),
(4, 2004, '02:30:00', 30, 22),
(5, 2005, '01:20:00', 18, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id_zonas` int(10) NOT NULL,
  `nombre_zonas` varchar(50) NOT NULL,
  `extencion_zonas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id_zonas`, `nombre_zonas`, `extencion_zonas`) VALUES
(1, 'Zona del Caribe', '4500 m²'),
(2, 'Zona Amazónica', '3500 m²'),
(3, 'Zona Andina', '4000 m²'),
(4, 'Zona Pacífica', '3000 m²'),
(5, 'Zona de la Orinoquía', '3200 m²');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas_itinerarios`
--

CREATE TABLE `zonas_itinerarios` (
  `id_zonas2` int(10) DEFAULT NULL,
  `id_itine2` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  ADD PRIMARY KEY (`id_cuida`);

--
-- Indices de la tabla `cuidadores_especies`
--
ALTER TABLE `cuidadores_especies`
  ADD KEY `fk_id7` (`id_cuida5`),
  ADD KEY `fk_id8` (`id_espe5`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id_espe`),
  ADD KEY `fk_id1` (`id_zonas1`);

--
-- Indices de la tabla `guias`
--
ALTER TABLE `guias`
  ADD PRIMARY KEY (`id_guias`);

--
-- Indices de la tabla `guias_itinerarios`
--
ALTER TABLE `guias_itinerarios`
  ADD KEY `fk_id5` (`id_guias3`),
  ADD KEY `fk_id6` (`id_itine3`);

--
-- Indices de la tabla `habitats`
--
ALTER TABLE `habitats`
  ADD PRIMARY KEY (`id_habita`);

--
-- Indices de la tabla `habitats_especies`
--
ALTER TABLE `habitats_especies`
  ADD KEY `fk_id9` (`id_espe6`),
  ADD KEY `fk_id10` (`id_habita6`);

--
-- Indices de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  ADD PRIMARY KEY (`id_itine`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id_zonas`);

--
-- Indices de la tabla `zonas_itinerarios`
--
ALTER TABLE `zonas_itinerarios`
  ADD KEY `fk_id2` (`id_zonas2`),
  ADD KEY `fk_id3` (`id_itine2`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  MODIFY `id_cuida` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `id_espe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `guias`
--
ALTER TABLE `guias`
  MODIFY `id_guias` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `habitats`
--
ALTER TABLE `habitats`
  MODIFY `id_habita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `itinerarios`
--
ALTER TABLE `itinerarios`
  MODIFY `id_itine` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id_zonas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuidadores_especies`
--
ALTER TABLE `cuidadores_especies`
  ADD CONSTRAINT `fk_id7` FOREIGN KEY (`id_cuida5`) REFERENCES `cuidadores` (`id_cuida`),
  ADD CONSTRAINT `fk_id8` FOREIGN KEY (`id_espe5`) REFERENCES `especies` (`id_espe`);

--
-- Filtros para la tabla `especies`
--
ALTER TABLE `especies`
  ADD CONSTRAINT `fk_id1` FOREIGN KEY (`id_zonas1`) REFERENCES `zonas` (`id_zonas`);

--
-- Filtros para la tabla `guias_itinerarios`
--
ALTER TABLE `guias_itinerarios`
  ADD CONSTRAINT `fk_id5` FOREIGN KEY (`id_guias3`) REFERENCES `guias` (`id_guias`),
  ADD CONSTRAINT `fk_id6` FOREIGN KEY (`id_itine3`) REFERENCES `itinerarios` (`id_itine`);

--
-- Filtros para la tabla `habitats_especies`
--
ALTER TABLE `habitats_especies`
  ADD CONSTRAINT `fk_id10` FOREIGN KEY (`id_habita6`) REFERENCES `habitats` (`id_habita`),
  ADD CONSTRAINT `fk_id9` FOREIGN KEY (`id_espe6`) REFERENCES `especies` (`id_espe`);

--
-- Filtros para la tabla `zonas_itinerarios`
--
ALTER TABLE `zonas_itinerarios`
  ADD CONSTRAINT `fk_id2` FOREIGN KEY (`id_zonas2`) REFERENCES `zonas` (`id_zonas`),
  ADD CONSTRAINT `fk_id3` FOREIGN KEY (`id_itine2`) REFERENCES `itinerarios` (`id_itine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
