-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2015 a las 04:46:22
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
  `Id_costo_equipo` int(11) NOT NULL,
  `costo` float DEFAULT NULL,
  PRIMARY KEY (`Id_costo_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `IdEmpleado` varchar(3) COLLATE utf8_bin NOT NULL,
  `NombreEmpleado` varchar(50) COLLATE utf8_bin NOT NULL,
  `ApellidoEmpleado` varchar(50) COLLATE utf8_bin NOT NULL,
  `Cargo` varchar(40) COLLATE utf8_bin NOT NULL,
  `Costo_hora` float NOT NULL,
  PRIMARY KEY (`IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE IF NOT EXISTS `equipo` (
  `Pla_dimesa` varchar(10) COLLATE utf8_bin NOT NULL,
  `Num_serie` varchar(20) COLLATE utf8_bin NOT NULL,
  `Marca_equipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `Modelo_equipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `Nomb_equipo` varchar(20) COLLATE utf8_bin NOT NULL,
  `Observ_eq` varchar(60) COLLATE utf8_bin NOT NULL,
  `Empresa_responsable` varchar(60) COLLATE utf8_bin NOT NULL,
  `Imagen` longblob,
  `fecha_registro` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Pla_dimesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE IF NOT EXISTS `evento` (
  `num_dimesa` varchar(10) COLLATE utf8_bin NOT NULL,
  `Pla_dimesa` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `Id_costo_equipo` int(11) DEFAULT NULL,
  `Tbl_equipo_pla_dimesa` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `Servicio` int(11) DEFAULT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `Fecha_fin` date DEFAULT NULL,
  `Unidad` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `Falla` varchar(105) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`num_dimesa`),
  KEY `FK_RELATIONSHIP_1` (`Pla_dimesa`),
  KEY `FK_TIENE_UN_COSTO` (`Id_costo_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `id_servicios` varchar(4) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_servicios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
('1', NULL, 'Salidas1', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('2', NULL, 'Salidas2', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('3', NULL, 'Salidas3', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('4', NULL, 'Salidas4', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('5', NULL, 'Salidas5', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('6', NULL, 'Salidas6', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('7', NULL, 'Salidas7', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('8', NULL, 'Salidas8', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL),
('9', NULL, 'Saldias9', 'desarrollo', '2015-05-09 00:00:00', NULL, NULL);

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
('1', '3'),
('2', '4'),
('3', '5'),
('3', '6'),
('3', '7'),
('3', '8'),
('3', '9'),
('4', '10'),
('5', '11'),
('5', '12'),
('8', '13'),
('8', '14'),
('2', '15');

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
('2', 'pantalla1', 'http://localhost:8084/siapa/views/detalleVenta/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('3', 'pantalla2', '/siapa/views/cliente/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('4', 'pantalla3', '/siapa/views/cliente/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('5', 'pantalla4', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('6', 'pantalla5', '/siapa/views/persona/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('7', 'pantalla6', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('8', 'pantalla7', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('9', 'pantalla8', '/siapa/views/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('10', 'pantalla9', '/siapa/views/jaula/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('11', 'pantalla10', '/siapa/views/alimento/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
('12', 'pantalla11', '/siapa/views/detalleCompraAlimento/index.xhtml', 'S', 'desarrollo', '2014-10-30 00:00:00', NULL, NULL, NULL),
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
('6', '5'),
('7', '5'),
('8', '5'),
('9', '5'),
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
  `Id_supervisor` varchar(4) COLLATE utf8_bin NOT NULL,
  `IdEmpleado` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Id_supervisor`),
  KEY `FK_PUEDE_SER2` (`IdEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`Pla_dimesa`) REFERENCES `equipo` (`Pla_dimesa`),
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
