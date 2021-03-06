-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2019 a las 23:54:14
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbol`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `gestionarEquipo` (IN `tipoOperacion` INT(1), IN `p_idEquipo` INT, IN `p_nombre` VARCHAR(30), IN `p_nombreEntrenador` VARCHAR(60))  BEGIN

DECLARE numeroRegistros int;



IF tipoOperacion = 1 THEN

   

 SELECT COUNT(1) INTO numeroRegistros
    FROM equipo WHERE idEquipo= p_idEquipo;
    
    
    

   
 IF numeroRegistros = 0 THEN
   INSERT INTO equipo VALUES (p_idEquipo,p_nombre,p_nombreEntrenador);
  

    ELSE 
	SET SQL_SAFE_UPDATES=0;
    UPDATE equipo SET idEquipo= p_idEquipo,nombre = p_nombre,nombreEntrenador = p_nombreEntrenador
    WHERE  idEquipo= p_idEquipo;

    END IF;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gestionarJugador` (IN `tipoOperacion` INT(1), IN `p_idJugador` INT, IN `p_nombres` VARCHAR(50), IN `p_dorsal` INT, IN `p_posicion` VARCHAR(40))  BEGIN

DECLARE numeroRegistros int;

IF tipoOperacion = 1 THEN


 SELECT COUNT(1) INTO numeroRegistros
    FROM jugadores WHERE idJugador= p_idJugador;
    
    
 IF numeroRegistros = 0 THEN
   INSERT INTO jugadores VALUES (p_idJugador,p_nombres,p_dorsal,p_posicion);
  

    ELSE 
	SET SQL_SAFE_UPDATES=0;
    UPDATE jugadores SET idJugador= p_idJugador,nombres = p_nombres,dorsal = p_dorsal,posicion = p_posicion
    WHERE  idJugador= p_idJugador;

    END IF;
END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idEquipo` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombreEntrenador` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idEquipo`, `nombre`, `nombreEntrenador`) VALUES
(1, 'Real madrid', 'Zidane'),
(3, 'CARLOS', 'asdsd'),
(32, 'CARLOS', 'Carlos'),
(43, 'MADRID', 'PIRLO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `idJugador` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dorsal` int(10) NOT NULL,
  `posicion` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`idJugador`, `nombres`, `dorsal`, `posicion`) VALUES
(12, 'asd', 0, '3'),
(45, 'xcz', 0, '6'),
(256, 'CARLOS ANDRES', 100, 'MEDIO'),
(443, 'Coasdas', 56, 'latera'),
(1312, 'Coadj', 32, 'latera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablamarcadores`
--

CREATE TABLE `tablamarcadores` (
  `idEquipo` int(11) NOT NULL,
  `golesAfavor` int(11) NOT NULL,
  `golesEncontra` int(11) NOT NULL,
  `juegosJugados` int(11) NOT NULL,
  `juegosEmpatados` int(11) NOT NULL,
  `juegosGanados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idEquipo`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`idJugador`);

--
-- Indices de la tabla `tablamarcadores`
--
ALTER TABLE `tablamarcadores`
  ADD PRIMARY KEY (`idEquipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
