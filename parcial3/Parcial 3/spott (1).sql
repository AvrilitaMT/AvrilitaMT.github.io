-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 02:59 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spott`
--

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Harry Styles', 'Harry Edward Styles es un cantante, compositor y actor británico. Inició su carrera como cantante en 2010 como integrante de la boy band One Direction.'),
(2, 'Elvis Presley', 'Elvis Aaron Presley, conocido como Elvis Presley, o Elvis, fue un cantante y actor estadounidense. Apodado como «el rey del rock and roll», es considerado como uno de los iconos culturales más populares del siglo XX.'),
(3, 'Eminem', 'Marshall Bruce Mathers III, conocido como Eminem, es un rapero, productor y actor estadounidense. Se le atribuye la popularización del hip hop en las clases medias y altas de Estados Unidos y es aclamado por la crítica como uno de los mejores raperos de todos los tiempos.'),
(4, 'Elefante', 'Elefante, anteriormente conocido como Cuarto Sol es una banda de rock y pop mexicano originaria de la Ciudad de México formada en el año 1993, conformado por \"Ahis\", \"Iguana\", Javier Ortega, Rafa y \"G. Tracks\". '),
(5, 'Kevin Moreno\r\n', 'Kevin Alan Moreno Franco, conocido como Kevin AMF, es un joven cantautor de Culiacán, Sinaloa, México. Con tan solo 16 años, está revolucionando la escena musical del país con su estilo único y fresco. Inspirándose en el regional mexicano y la música urbana, fusiona los corridos tumbados con el regg'),
(6, 'Ariel Camacho', 'José Ariel Camacho Barraza, conocido como Ariel Camacho, fue un músico y compositor mexicano. Fue vocalista y fundador de Los Plebes del Rancho, con los que emprendió su carrera musical en 2013. Su último álbum en vida fue lanzado en el año 2014 titulado como El Karma.'),
(7, 'Julión Álvarez', 'Julio César Álvarez Montelongo, conocido como Julión Álvarez, es un cantante mexicano del género regional mexicano. '),
(8, 'Los Panchos', 'Los Panchos fueron un trío musical romántico internacional formado por los mexicanos Chucho Navarro, Alfredo Gil y el puertorriqueño Hernando Avilés en la década de los 40 en la Ciudad de México.'),
(9, 'Maluma', 'Juan Luis Londoño Arias, conocido por su nombre artístico Maluma, es un cantante y compositor colombiano. Saltó a la fama en su país natal en 2011, gracias a los sencillos «Farandulera», «Obsesión», y «La temperatura»; y con «Carnaval», en el resto de América Latina.?'),
(10, 'Abba', 'ABBA es un grupo sueco de música pop, integrado por Agnetha Fältskog, Björn Ulvaeus, Benny Andersson y Anni-Frid «Frida» Lyngstad. El nombre «ABBA» es un acrónimo formado por las primeras letras del nombre de cada miembro.? ');

-- --------------------------------------------------------

--
-- Table structure for table `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(11, 1, 5),
(12, 1, 6),
(13, 1, 7),
(14, 1, 8),
(15, 1, 9),
(16, 1, 10),
(17, 1, 11),
(18, 1, 12),
(19, 1, 13),
(20, 1, 14),
(21, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Cherry', 2, '04:19:00', '2019-12-13', 1, ''),
(2, 'Lights Up', 2, '02:52:00', '2019-12-13', 1, ''),
(3, 'Golden', 2, '03:29:00', '2019-12-13', 1, ''),
(4, 'To be so Lonely', 2, '03:12:00', '2019-12-13', 1, ''),
(5, 'Watermelon Sugar', 2, '02:54:00', '2019-12-13', 1, ''),
(6, 'She', 2, '06:02:00', '2019-12-13', 1, ''),
(7, 'Adore You', 2, '03:27:00', '2019-12-13', 1, ''),
(8, 'Falling', 2, '04:00:00', '2019-12-13', 1, ''),
(9, 'Sunflower, Vol. 6', 2, '03:41:00', '2019-12-13', 1, ''),
(10, 'Fine Line', 2, '06:17:00', '2019-12-13', 1, ''),
(11, 'Canyon Moon', 2, '03:09:00', '2019-12-13', 1, ''),
(12, 'Treat People With Kindness', 2, '03:17:00', '2019-12-13', 1, ''),
(13, '\r\nLate Night Talking', 2, '03:04:00', '2019-12-13', 1, ''),
(14, '\r\nGrapejuice', 2, '03:12:00', '2019-12-13', 1, ''),
(15, 'Cinema', 2, '04:04:00', '2019-12-13', 1, ''),
(16, 'Blue Hawaii', 1, '02:35:00', '1961-10-20', 1, ''),
(17, 'Almost Always True', 1, '02:24:00', '1961-10-20', 1, ''),
(18, 'Can’t Help Falling in Love', 1, '02:59:00', '1961-10-20', 1, ''),
(19, 'Moonlight Swim', 1, '02:18:00', '1961-10-20', 1, ''),
(20, 'No More', 1, '02:22:00', '1961-10-20', 1, ''),
(21, 'Rock a Hula Baby\r\n', 1, '01:58:00', '1961-10-20', 1, ''),
(22, '\r\nJailhouse Rock ', 1, '02:28:00', '1961-10-20', 1, ''),
(23, 'Aloha oe', 1, '01:54:00', '1961-10-20', 1, ''),
(24, 'It\'s Now or Never', 1, '03:16:00', '1961-10-20', 1, ''),
(25, 'Hound Dog', 1, '02:17:00', '1961-10-20', 1, ''),
(26, 'Suspicious Minds', 1, '04:30:00', '1961-10-20', 1, ''),
(27, 'Burning Love', 1, '02:59:00', '1961-10-20', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuarios_id`, `canciones_id`) VALUES
(1, 4, 10),
(2, 3, 25),
(3, 2, 27),
(4, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'rock'),
(2, 'pop'),
(3, 'rap'),
(4, 'rock en español'),
(5, 'dembow'),
(6, 'Regional'),
(7, 'Norteño'),
(8, 'boleros'),
(9, 'Reguetón'),
(10, 'Disco');

-- --------------------------------------------------------

--
-- Table structure for table `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membresia`
--

INSERT INTO `membresia` (`id`, `descripcion`, `precio`) VALUES
(1, 'Individual\r\nGratis por 1 mes\r\n\r\nDespués, cuesta 129 por mes\r\n\r\n1 cuenta Premium\r\n\r\nCancela en cualq', 129),
(2, 'Estudiantes\r\nGratis por 1 mes\r\n\r\nDespués, cuesta 69 por mes\r\n\r\n1 cuenta Premium verificada\r\n\r\nDescu', 69),
(3, 'Duo\r\n169/mes\r\n\r\n2 cuentas Premium\r\n\r\nCancela en cualquier momento\r\n\r\nSuscripción o un pago único', 169),
(4, 'Familiar\r\n199/mes\r\n\r\nHasta 6 cuentas Kids o Premium\r\n\r\nControla el contenido marcado como explícito.', 199);

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `nombre`, `usuario_id`, `duracion`, `total_canciones`, `descripcion`, `public`) VALUES
(1, 'calabaza', 2, '15:59:00', 5, 'canciones de harry\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlists_canciones`
--

CREATE TABLE `playlists_canciones` (
  `id` int(11) NOT NULL,
  `playlists_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists_canciones`
--

INSERT INTO `playlists_canciones` (`id`, `playlists_id`, `canciones_id`, `usuarios_id`) VALUES
(1, 1, 1, 4),
(2, 1, 2, 4),
(3, 1, 3, 4),
(4, 1, 4, 4),
(5, 1, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Maria Jacobo', 'ana.jacobo22@cetis107.edu.mx', 1),
(2, 'Alonso Mamahua', 'alonso.mamahua22@cetis107.edu.mx', 2),
(3, 'Alan Lugo', 'Alan.lugo22@cetis107.edu.mx', 3),
(4, 'Avril Moreno', 'avril.moreno22@cetis107.edu.mx', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`) USING BTREE;

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlists_id` (`playlists_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Constraints for table `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Constraints for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlists_canciones`
--
ALTER TABLE `playlists_canciones`
  ADD CONSTRAINT `playlists_canciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlists_canciones_ibfk_2` FOREIGN KEY (`playlists_id`) REFERENCES `playlists` (`id`),
  ADD CONSTRAINT `playlists_canciones_ibfk_3` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
