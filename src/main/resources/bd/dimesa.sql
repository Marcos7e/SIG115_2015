-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2015 a las 00:31:11
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dimesa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo_equipo`
--

CREATE TABLE IF NOT EXISTS `costo_equipo` (
  `Id_costo_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `costo` float DEFAULT NULL,
  PRIMARY KEY (`Id_costo_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `NombreEmpleado` varchar(50) COLLATE utf8_bin NOT NULL,
  `ApellidoEmpleado` varchar(50) COLLATE utf8_bin NOT NULL,
  `Cargo` varchar(40) COLLATE utf8_bin NOT NULL,
  `Costo_hora` float NOT NULL,
  PRIMARY KEY (`IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `Pla_dimesa` int(11) NOT NULL AUTO_INCREMENT,
  `Num_serie` varchar(20) COLLATE utf8_bin NOT NULL,
  `Marca_equipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `Modelo_equipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `Nomb_equipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `Observ_eq` varchar(60) COLLATE utf8_bin NOT NULL,
  `Empresa_responsable` varchar(60) COLLATE utf8_bin NOT NULL,
  `Imagen` longblob,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`Pla_dimesa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=101 ;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`Pla_dimesa`, `Num_serie`, `Marca_equipo`, `Modelo_equipo`, `Nomb_equipo`, `Observ_eq`, `Empresa_responsable`, `Imagen`, `fecha_registro`) VALUES
(1, 'UXS67XWA4GG', 'Enim Etiam Industrie', 'U2C-8S4-GU', 'Edwards', 'R9Q 3O2 K44TT', 'Ante Lectus Convallis Associates', NULL, '2015-06-04'),
(2, 'ZIB12KAJ6XW', 'Maecenas Ornare Eges', 'J3O-3W1-NL', 'Larsen', 'C1O 3G0 N14BT', 'Integer PC', NULL, '2015-06-04'),
(3, 'DPY78CLP0EV', 'Eu Augue Institute', 'W0M-4R6-EF', 'Walters', 'U7D 5M2 H43AQ', 'Nullam Industries', NULL, '2015-06-04'),
(4, 'FMJ21NCY0NQ', 'Vitae Erat Company', 'A3T-2L2-NW', 'Carson', 'O0B 5D7 J15ZK', 'Auctor Ullamcorper Ltd', NULL, '2015-06-04'),
(5, 'OZK97OKO3OH', 'Litora Torquent Asso', 'E6K-1B5-EJ', 'Pitts', 'C2S 6V6 P85XZ', 'Porttitor Tellus Company', NULL, '2015-06-04'),
(6, 'HZJ52BNU8BE', 'Ornare Egestas Compa', 'N1K-3U9-DA', 'Brady', 'X6O 8A6 V57CH', 'Nascetur Ridiculus Mus Inc.', NULL, '2015-06-04'),
(7, 'KGG18TDO3ZW', 'Mauris Non Dui Corp.', 'I4L-9A8-TA', 'Carver', 'Q5C 4D5 J94QF', 'Ante Ltd', NULL, '2015-06-04'),
(8, 'GCD47ZBF4PK', 'Quis Pede Limited', 'P5I-3G9-GU', 'Gilbert', 'Y8Q 0D5 I63LW', 'Fringilla Industries', NULL, '2015-06-04'),
(9, 'OKN27KMQ0WO', 'Lacus Company', 'Z4X-5N8-YF', 'Gordon', 'R2A 2W1 P74DJ', 'Elit Incorporated', NULL, '2015-06-04'),
(10, 'LKC06GJC1FH', 'Cras PC', 'F1K-3D4-WR', 'Shields', 'Z0X 2C7 T96EI', 'Rutrum Justo Praesent LLP', NULL, '2015-06-04'),
(11, 'BOI34TRU1RL', 'Lectus Sit LLC', 'M5F-0T8-QS', 'Galloway', 'F1S 8G5 X58JU', 'At Industries', NULL, '2015-06-04'),
(12, 'IHQ08LUF3MP', 'Molestie Orci Tincid', 'T3C-3M1-ZT', 'Rose', 'V3Q 1D4 B06RQ', 'Magna Malesuada Vel Inc.', NULL, '2015-06-04'),
(13, 'KRQ79ZYL1YT', 'Non Lacinia At Ltd', 'N9L-1X5-AO', 'Haynes', 'X9J 1Z1 A06XS', 'Consectetuer Adipiscing Elit Ltd', NULL, '2015-06-04'),
(14, 'FDZ15OBF7SF', 'Ipsum Donec Associat', 'M9M-4W4-KC', 'George', 'M6B 3D4 H69JP', 'Molestie Arcu Associates', NULL, '2015-06-04'),
(15, 'YII84JSU6OH', 'Ridiculus Mus LLC', 'E4M-3N1-BH', 'Rush', 'C3V 5R0 Y22ZE', 'Arcu Associates', NULL, '2015-06-04'),
(16, 'CRQ20UWM0UZ', 'Rhoncus Id Ltd', 'K6U-5G5-UV', 'Norton', 'P4O 5F7 Q56TP', 'Nunc Ullamcorper Corporation', NULL, '2015-06-04'),
(17, 'MSZ83HNW9TM', 'Nunc Laoreet Incorpo', 'I5H-0H9-IK', 'Klein', 'X4T 2Z7 O31SE', 'Mauris A Nunc PC', NULL, '2015-06-04'),
(18, 'YBC31YRF7JM', 'Cras Eu Ltd', 'Y9T-1J5-DC', 'England', 'R3J 0K2 D89BZ', 'Egestas Institute', NULL, '2015-06-04'),
(19, 'PDT17ROM2DU', 'Odio Etiam Ligula In', 'A4H-3L8-ZR', 'Hobbs', 'F7L 8U6 M99JU', 'Integer Eu Lacus Company', NULL, '2015-06-04'),
(20, 'RDV99KIX1TS', 'Mollis Integer Found', 'Z3E-9I3-JG', 'Sears', 'K5W 1B2 W31WH', 'Elit Etiam Inc.', NULL, '2015-06-04'),
(21, 'YFW47YSI6PY', 'Commodo At LLP', 'U3D-9R1-EB', 'Mclean', 'R1T 5S7 F63UL', 'Egestas Fusce Aliquet Consulting', NULL, '2015-06-04'),
(22, 'MIX52GGO9BO', 'Consectetuer Euismod', 'U2I-1N8-LY', 'Villarreal', 'H9O 8K1 T30ET', 'Mattis Consulting', NULL, '2015-06-04'),
(23, 'IZW73VUT9RA', 'Consectetuer Euismod', 'E5A-1A1-AL', 'Henson', 'M7Z 1T5 E06QK', 'Pellentesque Massa Lobortis LLP', NULL, '2015-06-04'),
(24, 'VCX89NYL4OD', 'Habitant Foundation', 'H2N-7B9-GO', 'Ortiz', 'K2A 4R7 N98FB', 'Nullam LLC', NULL, '2015-06-04'),
(25, 'IBD52UKJ9UR', 'Tristique Aliquet Ph', 'D3K-9Z3-MQ', 'Curry', 'V5M 0X4 R46TA', 'Sociis Natoque Penatibus Inc.', NULL, '2015-06-04'),
(26, 'MWO03EJW2JN', 'Cursus Integer Corpo', 'H6F-6U2-NL', 'Bauer', 'G9U 6L8 W08ST', 'Suspendisse Commodo Corp.', NULL, '2015-06-04'),
(27, 'HDG26SES1LX', 'Sed Nec Metus LLP', 'C6H-2D8-NX', 'Ferguson', 'E0O 3U7 Q98PG', 'Amet Metus Aliquam Limited', NULL, '2015-06-04'),
(28, 'CCC73DOD3RQ', 'Cursus Diam At Ltd', 'G5U-1K9-FX', 'Webster', 'E2J 6G1 R69VC', 'Neque Sed Dictum Inc.', NULL, '2015-06-04'),
(29, 'ICW36TBV1YO', 'Praesent Eu Dui LLC', 'N6N-8X1-CY', 'Gamble', 'C5B 0F8 I58DA', 'Donec At Corp.', NULL, '2015-06-04'),
(30, 'VEJ85NWU9NZ', 'Vestibulum Foundatio', 'D2U-7U1-IN', 'Conway', 'T8A 8O9 A27TF', 'Mollis Company', NULL, '2015-06-04'),
(31, 'CDH09XIV6SM', 'Tempus Lorem Fringil', 'H3G-7H9-QG', 'Rhodes', 'S4W 1W9 M43PV', 'Porta Elit A LLC', NULL, '2015-06-04'),
(32, 'NOR67MJA6XQ', 'Massa PC', 'C1I-5Y3-SZ', 'Marshall', 'Q9B 2C1 X09DE', 'Ut Tincidunt Vehicula Institute', NULL, '2015-06-04'),
(33, 'KHG52WEI5JK', 'Elementum Dui Compan', 'G1Q-2X9-IM', 'Anderson', 'O3Y 6D7 Z65TZ', 'Ipsum Company', NULL, '2015-06-04'),
(34, 'ZEG24WRX4RF', 'Amet Incorporated', 'E4O-9D4-DZ', 'Daniel', 'I0G 4M6 Z61BR', 'Laoreet Ltd', NULL, '2015-06-04'),
(35, 'EUE95VBW6PH', 'Blandit Nam Corp.', 'L1L-1R4-KL', 'Alvarez', 'V5A 6H6 Q73IQ', 'Cursus Diam Consulting', NULL, '2015-06-04'),
(36, 'DMS39AFH9NY', 'Elit Corp.', 'C8Y-3C7-GJ', 'Gates', 'Q7B 7R2 I95PC', 'Ut PC', NULL, '2015-06-04'),
(37, 'XMT25EIO8KN', 'Facilisis Institute', 'D4Y-3P3-YS', 'Stevens', 'B1L 4B9 O68LO', 'Non Sollicitudin Incorporated', NULL, '2015-06-04'),
(38, 'APY35WTH7ZC', 'Morbi Metus Incorpor', 'L6N-6F0-HA', 'Hughes', 'S7I 1C6 S33KY', 'Enim LLC', NULL, '2015-06-04'),
(39, 'KZX96IZZ0TA', 'Natoque Penatibus Et', 'P8X-2Z0-XK', 'Meyer', 'V4Q 0V6 R37LM', 'Egestas PC', NULL, '2015-06-04'),
(40, 'GTS39TEA8JF', 'Phasellus In Associa', 'C0Z-9V1-IK', 'Coffey', 'J1O 9U2 J26BR', 'Nunc Institute', NULL, '2015-06-04'),
(41, 'RNE74EBO5AV', 'Amet Luctus Vulputat', 'G8F-7T7-TR', 'House', 'Q3Z 7W4 V97XI', 'Cras Dictum Ultricies Institute', NULL, '2015-06-04'),
(42, 'UNE34ICX1VF', 'Rutrum Magna Ltd', 'K7D-9C5-LI', 'Mullen', 'T1L 6G6 A60GY', 'Nam Consequat Dolor Company', NULL, '2015-06-04'),
(43, 'QAY56FIW6DO', 'Ipsum Limited', 'G4I-6B3-XD', 'Frost', 'G9U 2X6 K93CF', 'Commodo Hendrerit Donec Ltd', NULL, '2015-06-04'),
(44, 'KIP49ZFZ3NS', 'Tincidunt Corp.', 'V6P-1T1-SQ', 'Cannon', 'Z5S 1X2 D53VL', 'Velit Eu Sem Industries', NULL, '2015-06-04'),
(45, 'NAN74RJZ6RB', 'Cursus Purus Nullam ', 'P4C-9F9-SS', 'Crawford', 'M4D 8N8 V26VJ', 'Magna Tellus Faucibus Company', NULL, '2015-06-04'),
(46, 'HSV00NMQ8YH', 'Aliquam Gravida Asso', 'W7R-9Q3-SC', 'Newton', 'Z5Y 0D5 H16QU', 'Magna Limited', NULL, '2015-06-04'),
(47, 'CGZ48NWA1RL', 'Interdum Institute', 'O5D-5O3-VU', 'Matthews', 'E0A 0M9 S16UO', 'Hendrerit Consectetuer LLP', NULL, '2015-06-04'),
(48, 'PIJ21VNL1VX', 'Semper Company', 'O5R-2W3-KL', 'Nieves', 'N7M 7Q3 V78SN', 'Interdum Inc.', NULL, '2015-06-04'),
(49, 'OBR28WYX3PI', 'Donec Felis Company', 'C0M-8B4-OK', 'Patton', 'L4U 7D1 K71OQ', 'Tincidunt Orci LLC', NULL, '2015-06-04'),
(50, 'EVF72GQV1PI', 'Non Nisi Aenean Corp', 'P4C-5U2-RU', 'Mckee', 'B4W 7Q1 E83UI', 'Erat Consulting', NULL, '2015-06-04'),
(51, 'YHI14XCS2BU', 'Diam Nunc Ullamcorpe', 'H5K-8D6-QA', 'England', 'Q8C 1C5 P96FG', 'Nascetur Ridiculus Inc.', NULL, '2015-06-04'),
(52, 'DRK60QHH7KF', 'Viverra LLP', 'M9B-9A5-QZ', 'Hyde', 'D6J 6L5 M78TF', 'Convallis Dolor Quisque Ltd', NULL, '2015-06-04'),
(53, 'YTJ09UVU2AO', 'Purus Foundation', 'V8Y-6N2-US', 'Bond', 'K5R 5H8 M52QK', 'Eget Metus Industries', NULL, '2015-06-04'),
(54, 'SPK00AZO4QC', 'Eget Corporation', 'H1S-7N6-RY', 'Velasquez', 'C5R 7Q6 Z48VA', 'Ad Litora Torquent LLC', NULL, '2015-06-04'),
(55, 'OJT76VYK3LW', 'Vehicula Aliquet Lib', 'W0M-5H1-FF', 'Steele', 'V3Z 9G8 Y88RR', 'Facilisis Eget Ipsum Inc.', NULL, '2015-06-04'),
(56, 'CLU65UJY9LR', 'Sodales Purus In Cor', 'P9X-7M2-EH', 'Snider', 'O4R 6T3 G07RA', 'Odio Foundation', NULL, '2015-06-04'),
(57, 'KZM22AFH6JW', 'Tellus Faucibus Leo ', 'C1I-4A0-UO', 'Garcia', 'P9F 1J6 S64UL', 'Ultricies Sem LLP', NULL, '2015-06-04'),
(58, 'TXA76CAL7CF', 'Sem Pellentesque Ut ', 'F5E-3U7-XB', 'Cross', 'J9Y 2R5 X78EJ', 'Fermentum Fermentum Arcu Company', NULL, '2015-06-04'),
(59, 'DIP96TBI8TV', 'Pede Nonummy Ut Limi', 'U9Z-2B5-ZZ', 'Beck', 'R2D 1B9 J59XQ', 'Consequat Purus PC', NULL, '2015-06-04'),
(60, 'FMW13AMY7KX', 'Ornare Ltd', 'S1F-0C8-YG', 'Copeland', 'X0N 3U8 J94GL', 'Arcu Imperdiet LLP', NULL, '2015-06-04'),
(61, 'QWG36MSE2AY', 'Ligula Elit Consulti', 'Q5A-2J6-AP', 'Jensen', 'W4T 3A2 U94DN', 'Aliquam Erat Volutpat Limited', NULL, '2015-06-04'),
(62, 'QVU33GZP0PY', 'Facilisis LLP', 'D1Q-1E3-HQ', 'Snider', 'T2W 2H8 A18IG', 'A Magna Lorem LLP', NULL, '2015-06-04'),
(63, 'ORD86XJR9CE', 'Luctus Industries', 'C8J-5Q0-AE', 'Shepherd', 'U1I 8Y3 X45WF', 'Luctus Ut Corporation', NULL, '2015-06-04'),
(64, 'GTW66RJT4UR', 'Posuere Corp.', 'H0P-5R9-NM', 'Mccall', 'B6N 9B2 J91ET', 'Elit LLC', NULL, '2015-06-04'),
(65, 'TPK00HZO9NV', 'Sed Molestie Sed Ltd', 'A3T-8E9-TT', 'Graves', 'Z8K 7A5 U51HM', 'Eget Lacus Inc.', NULL, '2015-06-04'),
(66, 'YGB17VVM4CE', 'Tortor Corporation', 'D5H-5B8-FM', 'Hopkins', 'A0N 6Z2 E59FG', 'Nullam Scelerisque Neque Corp.', NULL, '2015-06-04'),
(67, 'QWT63AGR9FZ', 'Ante Vivamus Non Lim', 'C0K-6B0-WK', 'Rogers', 'B7V 1J2 A95AV', 'Ullamcorper Eu Euismod Foundation', NULL, '2015-06-04'),
(68, 'YPY01FOB8NY', 'Laoreet Limited', 'D6I-2W9-GJ', 'Dodson', 'Q0C 9M1 K47ZJ', 'Semper Rutrum Corp.', NULL, '2015-06-04'),
(69, 'XDW59QUC5TT', 'Adipiscing Ligula Co', 'W9V-0F2-WM', 'Dalton', 'P0U 6Z4 D17XN', 'Mi Institute', NULL, '2015-06-04'),
(70, 'DEK17TPW8TZ', 'Consectetuer Adipisc', 'J8D-4Y4-AY', 'Torres', 'J9K 1A0 A75WL', 'Luctus Aliquet Odio Institute', NULL, '2015-06-04'),
(71, 'QYO28MON3SH', 'Cum Consulting', 'E4B-5P0-BJ', 'Ortiz', 'T4R 2E6 P44EK', 'Phasellus Ornare Fusce Corp.', NULL, '2015-06-04'),
(72, 'GGN18FPS2CL', 'At Egestas Industrie', 'Y1C-5R0-JU', 'Dodson', 'W1B 8V0 D86YY', 'Sed Industries', NULL, '2015-06-04'),
(73, 'QNI45TRQ3SR', 'Nam Inc.', 'Q1C-2O3-RJ', 'Shannon', 'T4Z 8G0 E24AU', 'Aliquam Industries', NULL, '2015-06-04'),
(74, 'ELZ93LXA3EN', 'Ornare Elit Elit Fou', 'F9K-2L5-OE', 'Blackburn', 'S6I 0W1 V14XV', 'Luctus Aliquet Odio Ltd', NULL, '2015-06-04'),
(75, 'EYO24FAP8YK', 'Egestas Rhoncus Ltd', 'G8P-1C8-AE', 'Workman', 'I5I 9A2 O92HP', 'Sociis Natoque Corp.', NULL, '2015-06-04'),
(76, 'NZD75BWL0HC', 'Malesuada Integer Id', 'M2W-9A6-XL', 'Dudley', 'U6H 2J7 C73RC', 'Augue Scelerisque Mollis Institute', NULL, '2015-06-04'),
(77, 'VTV63HJD1SJ', 'Feugiat PC', 'Y9S-9C2-NL', 'Pope', 'K6A 0H2 Y05RK', 'Pede Sagittis Incorporated', NULL, '2015-06-04'),
(78, 'MCH05EMC1OF', 'Justo Inc.', 'Y6W-4P3-DC', 'Harper', 'M6K 4Z6 E39NV', 'Sem Incorporated', NULL, '2015-06-04'),
(79, 'FAB98JSX7FT', 'A Nunc Foundation', 'U7O-7F6-HJ', 'Stewart', 'S7O 2E6 F40AF', 'Nulla Ltd', NULL, '2015-06-04'),
(80, 'AVG99YDE2EU', 'Semper Cursus Inc.', 'I0A-4W7-CM', 'Hickman', 'J3Y 3S9 Y37LL', 'Elementum Purus Corp.', NULL, '2015-06-04'),
(81, 'XVC52RHQ0MV', 'Pede Consulting', 'K2A-3Z4-CI', 'Wilson', 'N7V 6M1 K86NY', 'Ultricies Consulting', NULL, '2015-06-04'),
(82, 'WDD24YHE1IX', 'Elit Etiam Laoreet P', 'V6W-3Y9-VL', 'Burt', 'R0G 5X8 C34UO', 'Pellentesque Consulting', NULL, '2015-06-04'),
(83, 'TMP34CZX3OW', 'Auctor Ltd', 'W1K-1R6-JE', 'Marquez', 'X0C 3H3 X56BS', 'Nec LLP', NULL, '2015-06-04'),
(84, 'UNL42NTW7HQ', 'Morbi Institute', 'T9M-1O6-VO', 'Emerson', 'V1Y 5W1 Q31YN', 'Purus Gravida Sagittis Foundation', NULL, '2015-06-04'),
(85, 'OII76YZU9SM', 'Duis Elementum Dui C', 'G5E-5C3-OG', 'Burgess', 'M4T 8P8 B33NF', 'Facilisis Company', NULL, '2015-06-04'),
(86, 'XXD43YUY9NZ', 'Nullam Suscipit Est ', 'T5W-7N3-KJ', 'Odonnell', 'N4V 9W9 R12VW', 'Suspendisse Sed Dolor Corporation', NULL, '2015-06-04'),
(87, 'TLW16TRY5VT', 'Lorem PC', 'U5H-7E5-YO', 'Riley', 'C8C 4Z3 Z74ZC', 'Sagittis Placerat Cras Consulting', NULL, '2015-06-04'),
(88, 'LQW19QVY6YD', 'Non Bibendum Company', 'B5C-8K0-OT', 'Keller', 'D3E 4J4 Q22RO', 'Malesuada LLP', NULL, '2015-06-04'),
(89, 'HTG09MZJ0JL', 'Sit Amet Metus Ltd', 'Y3F-1G9-GU', 'Valenzuela', 'Z8G 9K4 N67TA', 'Pellentesque Associates', NULL, '2015-06-04'),
(90, 'NIM39ERG6MW', 'Purus Maecenas Liber', 'A1E-3V9-OE', 'Martinez', 'C5U 7M9 B14FY', 'Eleifend LLC', NULL, '2015-06-04'),
(91, 'YJY44PXF4KZ', 'Felis Ullamcorper PC', 'P2D-7I3-BO', 'Hicks', 'E9K 7B1 I50IM', 'Ultrices Mauris Ltd', NULL, '2015-06-04'),
(92, 'KVI01QZM9SC', 'Erat Incorporated', 'R0M-7H2-SH', 'Carver', 'F3B 6H8 H40CQ', 'Dictum Eu Placerat Corporation', NULL, '2015-06-04'),
(93, 'MWC46TAA0KF', 'Urna Institute', 'J9D-0Z5-CJ', 'Edwards', 'T8V 9O8 T24IY', 'Eleifend Nec Malesuada Institute', NULL, '2015-06-04'),
(94, 'FNI78OVR8MP', 'Nunc Corp.', 'F4T-2B9-IU', 'Randolph', 'P4P 6B4 V35ZJ', 'Lacus Etiam Bibendum Limited', NULL, '2015-06-04'),
(95, 'TSR75GCC5OK', 'Lacinia Vitae Incorp', 'X0T-8U7-KX', 'Golden', 'J1B 8H9 V63ZM', 'Non Quam Pellentesque Company', NULL, '2015-06-04'),
(96, 'WGA25SVO3TD', 'Convallis Convallis ', 'F9M-6E4-HL', 'Mills', 'K2P 1E8 Z38SW', 'Adipiscing Institute', NULL, '2015-06-04'),
(97, 'DYA75RSC7GS', 'Faucibus Morbi Vehic', 'V9L-2R7-DH', 'Everett', 'E0Z 0X8 C56LZ', 'Maecenas Libero Company', NULL, '2015-06-04'),
(98, 'ZNO93MTT1YX', 'Eleifend Vitae Erat ', 'I3K-6P2-JY', 'Dalton', 'T5A 9X3 M87ZT', 'Aliquam LLP', NULL, '2015-06-04'),
(99, 'IHE23GLB7RZ', 'Et Ltd', 'L8Q-7V6-WL', 'Coleman', 'S6K 1D1 X88BH', 'Sit Amet Consectetuer Consulting', NULL, '2015-06-04'),
(100, 'SHA83ONQ9YH', 'Dictum LLP', 'Y2F-3G8-XV', 'Farley', 'L0K 1Y7 U20GR', 'Libero Proin Ltd', NULL, '2015-06-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE IF NOT EXISTS `evento` (
  `num_dimesa` int(11) NOT NULL AUTO_INCREMENT,
  `Pla_dimesa` int(11) DEFAULT NULL,
  `Id_costo_equipo` int(11) DEFAULT NULL,
  `Tbl_equipo_pla_dimesa` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `Servicio` int(11) DEFAULT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `Fecha_fin` date DEFAULT NULL,
  `Unidad` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Falla` varchar(105) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`num_dimesa`),
  KEY `FK_TIENE_UN_COSTO` (`Id_costo_equipo`),
  KEY `FK_PLA_DIMESA` (`Pla_dimesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `id_servicios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_servicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_historico_claves`
--

CREATE TABLE IF NOT EXISTS `ss_historico_claves` (
  `ID_HISTORICO_CLAVE` decimal(9,0) NOT NULL COMMENT 'ID del histórico de clave.',
  `ID_USUARIO` decimal(9,0) DEFAULT NULL,
  `ID_USUARIO2` decimal(9,0) DEFAULT NULL,
  `FECHA_CLAVE` datetime DEFAULT NULL COMMENT 'Fecha en que la clave fue cambiada y movida al histórico.',
  `CLAVE2` varchar(100) DEFAULT NULL COMMENT 'Clave',
  PRIMARY KEY (`ID_HISTORICO_CLAVE`),
  KEY `AK_UK_SS_HISTORICO_CLAVES` (`ID_USUARIO2`,`CLAVE2`),
  KEY `FK_FK_SS_HIST_CLAVES_USUARIOS` (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene las claves que ha cambiado el usuario para controla';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_menus`
--

CREATE TABLE IF NOT EXISTS `ss_menus` (
  `ID_MENU` decimal(9,0) NOT NULL COMMENT 'Correlativo que identifica al menú.',
  `SS__ID_MENU` decimal(9,0) DEFAULT NULL COMMENT 'Correlativo que identifica al menú.',
  `NOMBRE_MENU` varchar(100) DEFAULT NULL COMMENT 'Nombre del menú ',
  `USUARIO_REGISTRO` varchar(15) DEFAULT NULL COMMENT 'Usuario que registra la información.',
  `FECHA_REGISTRO` datetime DEFAULT NULL COMMENT 'Fecha y hora en que se registra información',
  `USUARIO_ULTIMAMODIFICACION` varchar(15) DEFAULT NULL COMMENT 'Último usuario que modificó la información.',
  `FECHA_ULTIMAMODIFICACION` datetime DEFAULT NULL COMMENT 'Fecha y hora de última modificación de información.',
  PRIMARY KEY (`ID_MENU`),
  KEY `FK_FK_SS_MENUS_MENU_PADRE` (`SS__ID_MENU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene los diferentes menus de las aplicaciones';

--
-- Volcado de datos para la tabla `ss_menus`
--

INSERT INTO `ss_menus` (`ID_MENU`, `SS__ID_MENU`, `NOMBRE_MENU`, `USUARIO_REGISTRO`, `FECHA_REGISTRO`, `USUARIO_ULTIMAMODIFICACION`, `FECHA_ULTIMAMODIFICACION`) VALUES
('1', NULL, 'Indice Encarrilamiento', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('2', NULL, 'Gastos por Reparación ', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('3', NULL, 'Gastos por Depreciación', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('4', NULL, 'Vida Útil', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('5', NULL, 'Comparativo de Gastos', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('6', NULL, 'Tasa de Éxito/Fallo', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('7', NULL, 'Historial', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('8', NULL, 'Proyección Tecnico/Tiempo ', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('9', NULL, 'Reparación vrs Tiempo', 'desarrollo', '2015-05-09 00:00:00', NULL, NULL),
('10', NULL, 'Mantenimientos', 'desarrollo', '2015-06-05 00:00:00', NULL, NULL),
('11', NULL, 'Exportaciones', 'desarrollo', '2015-06-05 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_menus_opciones`
--

CREATE TABLE IF NOT EXISTS `ss_menus_opciones` (
  `ID_MENU` decimal(9,0) NOT NULL COMMENT 'Correlativo que identifica al menú.',
  `ID_OPCION` decimal(9,0) NOT NULL COMMENT 'Correlativo que identifica a la opción.',
  PRIMARY KEY (`ID_MENU`,`ID_OPCION`),
  KEY `FK_FK_SS_OPCIONES_MENUS` (`ID_OPCION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene la relacion n:n entre menus y opciones (de menú).';

--
-- Volcado de datos para la tabla `ss_menus_opciones`
--

INSERT INTO `ss_menus_opciones` (`ID_MENU`, `ID_OPCION`) VALUES
('1', '2'),
('2', '3'),
('3', '4'),
('4', '5'),
('5', '6'),
('6', '7'),
('7', '8'),
('8', '9'),
('9', '10'),
('10', '11'),
('11', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_opciones`
--

CREATE TABLE IF NOT EXISTS `ss_opciones` (
  `ID_OPCION` decimal(9,0) NOT NULL COMMENT 'Correlativo que identifica a la opción.',
  `NOMBRE_OPCION` varchar(100) DEFAULT NULL COMMENT 'Nombre de la opción',
  `URL` varchar(300) DEFAULT NULL COMMENT 'URL de ubicación de la página de la opción.',
  `VISIBLE` varchar(1) DEFAULT '1' COMMENT 'Indica si la opción se muestra o no. (Si tiene un 1 = SI, Si tiene un 0 = NO, default=0)',
  `USUARIO_REGISTRO` varchar(15) DEFAULT NULL COMMENT 'Usuario que registra la información.',
  `FECHA_REGISTRO` datetime DEFAULT NULL COMMENT 'Fecha y hora en que se registra información',
  `USUARIO_ULTIMAMODIFICACION` varchar(15) DEFAULT NULL COMMENT 'Último usuario que modificó la información.',
  `FECHA_ULTIMAMODIFICACION` datetime DEFAULT NULL COMMENT 'Fecha y hora de última modificación de información.',
  `IMAGEN_OPCION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_OPCION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene las diferentes opciones de los menús de las aplicac';

--
-- Volcado de datos para la tabla `ss_opciones`
--

INSERT INTO `ss_opciones` (`ID_OPCION`, `NOMBRE_OPCION`, `URL`, `VISIBLE`, `USUARIO_REGISTRO`, `FECHA_REGISTRO`, `USUARIO_ULTIMAMODIFICACION`, `FECHA_ULTIMAMODIFICACION`, `IMAGEN_OPCION`) VALUES
('1', 'Home', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('2', 'Índice de encarrilamiento empresarial', '/dimesa/views/IndiceEncarrilamiento/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('3', 'Índice/Promedio de Gasto por Reparación de equipo por Area', '/dimesa/views/IndicePromedioGastoPorReparacion/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('4', 'Índice/Promedio de Gasto por Depreciación de equipo por Area', '/siapa/views/cliente/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('5', 'Comparativo de Tiempo de Vida Util entre los Equipos', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('6', 'Comparativo de Gastos en Reparación entre Equipos en un Periodos ', '/dimesa/views/ComparativoDeGastosReparacion/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('7', 'Tasa de Exito/Fallo en Reparaciones', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('8', 'Resumen de Reparación Efectuada por Técnicos no Subcontratados', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('9', 'Proyección Tecnico/Tiempo Requerido para Dolventar un Inconveniente', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('10', 'Proyección de Efectividad de Reparación vrs Tiempo', '/siapa/views/jaula/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('11', 'Proyección y Programación de Mantenimientos Preventivos', '/siapa/views/alimento/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('12', 'Exportación de Procesos de Proyección y Tazas a Formato Matriz', '/siapa/views/detalleCompraAlimento/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('13', 'pantalla12', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('14', 'pantalla13', '/siapa/views/alimento/index.xhtml', 'S', 'desarrollo', '2014-11-01 00:00:00', NULL, NULL, NULL),
('15', 'pantalla14', '/siapa/views/proveedor/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_roles`
--

CREATE TABLE IF NOT EXISTS `ss_roles` (
  `ID_ROL` decimal(9,0) NOT NULL COMMENT 'Identificador único del rol',
  `CODIGO_ROL` varchar(50) DEFAULT NULL COMMENT 'Código que identifica al rol.',
  `NOMBRE_ROL` varchar(50) DEFAULT NULL COMMENT 'Nombre del Rol',
  `DESCRIPCION` varchar(150) DEFAULT NULL COMMENT 'Propiedades o usos que identifican al rol',
  `USUARIO_REGISTRO` varchar(15) DEFAULT NULL COMMENT 'Usuario que registra la información.',
  `FECHA_REGISTRO` datetime DEFAULT NULL COMMENT 'Fecha y hora en que se registra información',
  `USUARIO_ULTIMAMODIFICACION` varchar(15) DEFAULT NULL COMMENT 'Último usuario que modificó la información.',
  `FECHA_ULTIMAMODIFICACION` datetime DEFAULT NULL COMMENT 'Fecha y hora de última modificación de información.',
  PRIMARY KEY (`ID_ROL`),
  KEY `AK_UK_SS_ROLES_CODIGO_ROL` (`CODIGO_ROL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene los diferentes niveles de acceso que un usuario pue';

--
-- Volcado de datos para la tabla `ss_roles`
--

INSERT INTO `ss_roles` (`ID_ROL`, `CODIGO_ROL`, `NOMBRE_ROL`, `DESCRIPCION`, `USUARIO_REGISTRO`, `FECHA_REGISTRO`, `USUARIO_ULTIMAMODIFICACION`, `FECHA_ULTIMAMODIFICACION`) VALUES
('1', 'EOP', 'Encargado Operativo', 'Posee privilegios ..', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('2', 'EAD', 'Encargado Administrativo', 'Posee Privilegios de ...', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('3', 'VEN', 'Vendedor', 'Encargado de registrar las ventas ', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('4', 'OPE', 'Operario', 'Encargado de Realizar ...', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('5', 'ADM', 'Administrador del Sistema', 'Tiene todos los provilegios de gestion de usuario y otras tareas de adminitracion del sistema', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('6', 'ASC', 'Asociado', 'puede ver los reportes que se generan desde el sistema', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_roles_menu`
--

CREATE TABLE IF NOT EXISTS `ss_roles_menu` (
  `ID_MENU` decimal(9,0) NOT NULL COMMENT 'Correlativo que identifica al menú.',
  `ID_ROL` decimal(9,0) NOT NULL COMMENT 'Identificador único del rol',
  PRIMARY KEY (`ID_MENU`,`ID_ROL`),
  KEY `FK_SS_ROLES_MENU2` (`ID_ROL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene la relacion n:n entre roles y menus';

--
-- Volcado de datos para la tabla `ss_roles_menu`
--

INSERT INTO `ss_roles_menu` (`ID_MENU`, `ID_ROL`) VALUES
('3', '1'),
('4', '1'),
('5', '1'),
('6', '1'),
('8', '1'),
('1', '2'),
('2', '2'),
('3', '2'),
('4', '2'),
('7', '2'),
('1', '3'),
('8', '3'),
('3', '4'),
('1', '5'),
('2', '5'),
('3', '5'),
('4', '5'),
('5', '5'),
('6', '5'),
('7', '5'),
('8', '5'),
('9', '5'),
('10', '5'),
('11', '5'),
('2', '6'),
('6', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_roles_opciones`
--

CREATE TABLE IF NOT EXISTS `ss_roles_opciones` (
  `ID_ROL` decimal(9,0) NOT NULL COMMENT 'Identificador único del rol',
  `ID_OPCION` decimal(9,0) NOT NULL COMMENT 'Correlativo que identifica a la opción.',
  PRIMARY KEY (`ID_ROL`,`ID_OPCION`),
  KEY `FK_SS_ROLES_OPCIONES2` (`ID_OPCION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ss_roles_opciones`
--

INSERT INTO `ss_roles_opciones` (`ID_ROL`, `ID_OPCION`) VALUES
('1', '1'),
('2', '1'),
('3', '1'),
('4', '1'),
('5', '1'),
('6', '1'),
('2', '2'),
('3', '2'),
('5', '2'),
('2', '3'),
('3', '3'),
('5', '3'),
('2', '4'),
('5', '4'),
('6', '4'),
('4', '5'),
('5', '5'),
('1', '6'),
('5', '6'),
('4', '7'),
('1', '8'),
('2', '8'),
('1', '9'),
('5', '9'),
('1', '10'),
('2', '10'),
('1', '11'),
('1', '12'),
('3', '13'),
('1', '14'),
('5', '14'),
('2', '15'),
('5', '15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_roles_usuarios`
--

CREATE TABLE IF NOT EXISTS `ss_roles_usuarios` (
  `ID_ROL` decimal(9,0) NOT NULL COMMENT 'Identificador único del rol',
  `ID_USUARIO` decimal(9,0) NOT NULL,
  PRIMARY KEY (`ID_ROL`,`ID_USUARIO`),
  KEY `FK_SS_ROLES_USUARIOS2` (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene la relación n:n entre roles y usuarios';

--
-- Volcado de datos para la tabla `ss_roles_usuarios`
--

INSERT INTO `ss_roles_usuarios` (`ID_ROL`, `ID_USUARIO`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ss_usuarios`
--

CREATE TABLE IF NOT EXISTS `ss_usuarios` (
  `ID_USUARIO` decimal(9,0) NOT NULL,
  `CODIGO_USUARIO` varchar(15) DEFAULT NULL,
  `NOMBRE_USUARIO` varchar(100) DEFAULT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `CARGO` varchar(100) DEFAULT NULL,
  `DESCRIPCION` varchar(150) DEFAULT NULL COMMENT 'Propiedades o usos que identifican al rol',
  `BLOQUEADO` varchar(1) DEFAULT '0',
  `CLAVE` varchar(100) DEFAULT NULL,
  `INTENTOS_ACCESO_FALLIDOS` decimal(3,0) DEFAULT '0',
  `USUARIO_REGISTRO` varchar(15) DEFAULT NULL COMMENT 'Usuario que registra la información.',
  `FECHA_REGISTRO` datetime DEFAULT NULL COMMENT 'Fecha y hora en que se registra información',
  `USUARIO_ULTIMAMODIFICACION` varchar(15) DEFAULT NULL COMMENT 'Último usuario que modificó la información.',
  `FECHA_ULTIMAMODIFICACION` datetime DEFAULT NULL COMMENT 'Fecha y hora de última modificación de información.',
  `FECHA_ULTIMO_ACCESO` datetime DEFAULT NULL,
  `DIRECCION_ACCESO` varchar(100) DEFAULT NULL,
  `DETALLE_ULTIMO_ACCESO` varchar(300) DEFAULT NULL,
  `FECHA_CAMBIO_CLAVE` datetime DEFAULT NULL,
  `CODIGO_SUCURSAL` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ss_usuarios`
--

INSERT INTO `ss_usuarios` (`ID_USUARIO`, `CODIGO_USUARIO`, `NOMBRE_USUARIO`, `TELEFONO`, `EMAIL`, `CARGO`, `DESCRIPCION`, `BLOQUEADO`, `CLAVE`, `INTENTOS_ACCESO_FALLIDOS`, `USUARIO_REGISTRO`, `FECHA_REGISTRO`, `USUARIO_ULTIMAMODIFICACION`, `FECHA_ULTIMAMODIFICACION`, `FECHA_ULTIMO_ACCESO`, `DIRECCION_ACCESO`, `DETALLE_ULTIMO_ACCESO`, `FECHA_CAMBIO_CLAVE`, `CODIGO_SUCURSAL`) VALUES
('1', 'EOP', 'Encargado Operativo', '78421829', 'siapa@gmail.com', 'Encargado Operativo', NULL, 'N', 'e10adc3949ba59abbe56e057f20f883e', '0', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2', 'EAD', 'Encargado Administrativo', '78421829', 'siapa@gmail.com', 'Encargado Administrativo', NULL, 'N', 'e10adc3949ba59abbe56e057f20f883e', '0', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3', 'VEN', 'Vendedor', '78421829', 'siapa@gmail.com', 'Vendedor', NULL, 'N', 'e10adc3949ba59abbe56e057f20f883e', '0', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4', 'OPE', 'Operario', '78421829', 'siapa@gmail.com', 'Operario', NULL, 'N', 'e10adc3949ba59abbe56e057f20f883e', '0', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5', 'ADM', 'Administrador del Sistema', '78421829', 'siapa@gmail.com', 'Administrador del Sistema', NULL, 'N', 'e10adc3949ba59abbe56e057f20f883e', '0', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6', 'ASC', 'Asociado', '78421829', 'siapa@gmail.com', 'Asociado', NULL, 'N', 'e10adc3949ba59abbe56e057f20f883e', '0', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisor`
--

CREATE TABLE IF NOT EXISTS `supervisor` (
  `Id_supervisor` int(11) NOT NULL AUTO_INCREMENT,
  `IdEmpleado` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Id_supervisor`),
  KEY `FK_PUEDE_SER2` (`IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `FK_PLA_DIMESA` FOREIGN KEY (`Pla_dimesa`) REFERENCES `equipo` (`Pla_dimesa`),
  ADD CONSTRAINT `FK_TIENE_UN_COSTO` FOREIGN KEY (`Id_costo_equipo`) REFERENCES `costo_equipo` (`Id_costo_equipo`);

--
-- Filtros para la tabla `ss_historico_claves`
--
ALTER TABLE `ss_historico_claves`
  ADD CONSTRAINT `FK_FK_SS_HIST_CLAVES_USUARIOS` FOREIGN KEY (`ID_USUARIO`) REFERENCES `ss_usuarios` (`ID_USUARIO`);

--
-- Filtros para la tabla `ss_menus`
--
ALTER TABLE `ss_menus`
  ADD CONSTRAINT `FK_FK_SS_MENUS_MENU_PADRE` FOREIGN KEY (`SS__ID_MENU`) REFERENCES `ss_menus` (`ID_MENU`);

--
-- Filtros para la tabla `ss_menus_opciones`
--
ALTER TABLE `ss_menus_opciones`
  ADD CONSTRAINT `FK_FK_SS_MENUS_OPCIONES` FOREIGN KEY (`ID_MENU`) REFERENCES `ss_menus` (`ID_MENU`),
  ADD CONSTRAINT `FK_FK_SS_OPCIONES_MENUS` FOREIGN KEY (`ID_OPCION`) REFERENCES `ss_opciones` (`ID_OPCION`);

--
-- Filtros para la tabla `ss_roles_menu`
--
ALTER TABLE `ss_roles_menu`
  ADD CONSTRAINT `FK_SS_ROLES_MENU` FOREIGN KEY (`ID_MENU`) REFERENCES `ss_menus` (`ID_MENU`),
  ADD CONSTRAINT `FK_SS_ROLES_MENU2` FOREIGN KEY (`ID_ROL`) REFERENCES `ss_roles` (`ID_ROL`);

--
-- Filtros para la tabla `ss_roles_opciones`
--
ALTER TABLE `ss_roles_opciones`
  ADD CONSTRAINT `FK_SS_ROLES_OPCIONES` FOREIGN KEY (`ID_ROL`) REFERENCES `ss_roles` (`ID_ROL`),
  ADD CONSTRAINT `FK_SS_ROLES_OPCIONES2` FOREIGN KEY (`ID_OPCION`) REFERENCES `ss_opciones` (`ID_OPCION`);

--
-- Filtros para la tabla `ss_roles_usuarios`
--
ALTER TABLE `ss_roles_usuarios`
  ADD CONSTRAINT `FK_SS_ROLES_USUARIOS` FOREIGN KEY (`ID_ROL`) REFERENCES `ss_roles` (`ID_ROL`),
  ADD CONSTRAINT `FK_SS_ROLES_USUARIOS2` FOREIGN KEY (`ID_USUARIO`) REFERENCES `ss_usuarios` (`ID_USUARIO`);

--
-- Filtros para la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `FK_PUEDE_SER2` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`IdEmpleado`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
