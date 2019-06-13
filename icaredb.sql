-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2019 a las 23:54:34
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `icaredb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `ConcurrencyStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('4e5e9609-c0ff-4e12-84a9-c2b316575c30', 'axel', 'AXEL', 'axeljoeldragoespinoza@gmail.com', 'AXELJOELDRAGOESPINOZA@GMAIL.COM', b'1', 'AQAAAAEAACcQAAAAEHSymkHCuQOggPakoWDhOpbReanxp9eJDA8aZw0mAssKft49sX9rH5KnDZQO2YCOAA==', 'SRRUNVP56677L67SPIZE7DPHGL3DJHUS', '2b589c99-b1dd-4d72-bff1-33a083406642', NULL, b'1', b'1', NULL, b'1', 0),
('de265611-1d9a-4c24-bf72-4bcfb72add73', 'alex', 'ALEX', 'axeljoeldragoespinoza@gmail.com', 'AXELJOELDRAGOESPINOZA@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEP75XlvheVKOk51CSUwk45pYNB24wiStjzS+FOqezahaqLRedoVArSaII+vdk2mdXg==', 'KQH5XU3OFTFRY6OWN3ZSCUEA2PINGYKE', '4360f8f8-4ca2-4980-9956-7b5e72b30a9f', NULL, b'0', b'0', NULL, b'1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Id` int(11) NOT NULL,
  `Titulo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `Contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TipoId` int(11) NOT NULL,
  `Foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`Id`, `Titulo`, `Contenido`, `TipoId`, `Foto`) VALUES
(1, 'Campaña en Surco', 'Se ha aperturado una campaña de esterilizacion en surco. Gratis para perros callejeros', 2, 'http://www.munlima.gob.pe/media/k2/items/cache/7000f8e034532181723a7f45a6cfa9c4_L.jpg'),
(3, 'Campaña en miraflores', 'Se ha aperturado una campaña de esterilizacion en miraflores. Gratis para perros callejeros y perros en albergues', 2, 'http://superchannel12.com/wp-content/uploads/2018/04/31369138_1841391642589775_508214778531938304_o.jpg'),
(4, 'Campaña en Lima', 'Carrera de perros y dueños en lima. Gran premio para ganadores. Comida de perro gratis por 1 año', 1, 'https://img.peru21.pe/files/article_content_ec_fotos/uploads/2017/08/09/598b76e0c452b.jpeg'),
(5, 'Campaña en La Molina', 'Gran concurso de belleza en celebracion del dia del can mestizo', 1, 'https://elcomercio.pe/files/listing_ec_flujo_xx/uploads/2017/09/29/59cddc498f87e.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `Id` int(11) NOT NULL,
  `NombreTemporal` longtext NOT NULL,
  `Edad` int(11) NOT NULL,
  `Foto` longtext NOT NULL,
  `TipoId` int(11) NOT NULL,
  `Raza` longtext NOT NULL,
  `Descripcion` longtext NOT NULL,
  `Sexo` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`Id`, `NombreTemporal`, `Edad`, `Foto`, `TipoId`, `Raza`, `Descripcion`, `Sexo`) VALUES
(1, 'wilfredo', 120, 'https://i0.wp.com/www.unsurcoenlasombra.com/wp-content/uploads/2015/03/perro-viejo.png', 1, 'Criolla', '', ''),
(2, 'Lukas', 4, 'https://www.purina.es/gato/purina-one/sites/g/files/mcldtz1856/files/2018-06/Mi_gato_no_come%20%282%29.jpg', 2, 'mixto', '', ''),
(3, 'eagle', 2, 'https://estaticos.muyinteresante.es/uploads/images/article/5536592a70a1ae8d775df8a6/aves.jpg', 3, 'Aguila plateada', '', ''),
(4, 'Alfred', 2, 'https://www.europuppy.com/wp-content/uploads/2019/01/xsire_15571_1-480x360.jpg.pagespeed.ic.D2MTWWHqSI.jpg', 1, 'Buldog', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoc`
--

CREATE TABLE `tipoc` (
  `Id` int(11) NOT NULL,
  `Nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoc`
--

INSERT INTO `tipoc` (`Id`, `Nombre`) VALUES
(1, 'Entretenimiento'),
(2, 'Esterilizaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `Id` int(11) NOT NULL,
  `Nombre` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`Id`, `Nombre`) VALUES
(1, 'Perro'),
(2, 'Gato'),
(3, 'Ave'),
(4, 'Roedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20190605212021_Inicial', '2.2.4-servicing-10062'),
('20190610230244_Descripcion', '2.2.4-servicing-10062'),
('20190612211532_Registro', '2.2.4-servicing-10062'),
('20190612213435_Campaña', '2.2.4-servicing-10062'),
('20190613190312_eventos', '2.2.4-servicing-10062'),
('20190613193841_evento2', '2.2.4-servicing-10062'),
('20190613195947_fotoevento', '2.2.4-servicing-10062');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`(191));

--
-- Indices de la tabla `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`(191));

--
-- Indices de la tabla `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`(191));

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Evento_TipoId` (`TipoId`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Mascotas_TipoId` (`TipoId`);

--
-- Indices de la tabla `tipoc`
--
ALTER TABLE `tipoc`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipoc`
--
ALTER TABLE `tipoc`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `FK_Evento_TipoC_TipoId` FOREIGN KEY (`TipoId`) REFERENCES `tipoc` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `FK_Mascotas_Tipos_TipoId` FOREIGN KEY (`TipoId`) REFERENCES `tipos` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
