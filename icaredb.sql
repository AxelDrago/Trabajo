-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2019 a las 21:11:35
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
('de265611-1d9a-4c24-bf72-4bcfb72add73', 'alex', 'ALEX', 'axeljoeldragoespinoza@gmail.com', 'AXELJOELDRAGOESPINOZA@GMAIL.COM', b'0', 'AQAAAAEAACcQAAAAEP75XlvheVKOk51CSUwk45pYNB24wiStjzS+FOqezahaqLRedoVArSaII+vdk2mdXg==', 'KQH5XU3OFTFRY6OWN3ZSCUEA2PINGYKE', '4360f8f8-4ca2-4980-9956-7b5e72b30a9f', NULL, b'0', b'0', NULL, b'1', 0),
('a02ef22b-b693-4c72-8951-ed8a4fdc556d', 'Luis', 'LUIS', 'luis@algo.com', 'LUIS@ALGO.COM', b'0', 'AQAAAAEAACcQAAAAEOsWQqa+0+PvkZpGZjTngud1XJAKPpaxHkmk3+hSdhG6RLEjwciqIYYTmylAzH7aUw==', 'IWZIN3XFQLJRUSLL6OGLTRKWBD6JVM2B', '68f7e5ff-8c69-4aef-8bf4-10884e3201ff', NULL, b'0', b'0', NULL, b'1', 0);

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
(1, 'Wilfredo', 8, 'https://i0.wp.com/www.unsurcoenlasombra.com/wp-content/uploads/2015/03/perro-viejo.png', 1, 'Lobero Irlandés', 'Perro de pelaje marrón oscuro con manchas negras, ojos claros, le gusta descansar y comer.', '0'),
(2, 'Michu', 4, 'https://www.purina.es/gato/purina-one/sites/g/files/mcldtz1856/files/2018-06/Mi_gato_no_come%20%282%29.jpg', 2, 'Persa', 'Gato ojos verdes, pelo marrón claro con rayas blancas.', '0'),
(3, 'Eagle', 2, 'https://estaticos.muyinteresante.es/uploads/images/article/5536592a70a1ae8d775df8a6/aves.jpg', 3, 'Aguila plateada', 'Águila domesticada para la caza de diferentes animales, le gusta estar en un ambiente abierto.', '0'),
(4, 'Alfred', 2, 'https://www.europuppy.com/wp-content/uploads/2019/01/xsire_15571_1-480x360.jpg.pagespeed.ic.D2MTWWHqSI.jpg', 1, 'Bulldog', 'Perro con sobrepeso, de pelaje beige muy cariñoso, le gusta comer a cada rato.', '0'),
(6, 'Toby', 3, 'https://i.kym-cdn.com/entries/icons/original/000/014/959/Screenshot_116.png', 1, 'Husky', 'Perro siberiano, ojos marrones claros, pelaje blanco con negro, le gusta salir a pasear.', '0'),
(7, 'Pelusa', 2, 'https://www.feelcats.com/blog/wp-content/uploads/2018/02/angora-turco-gato.jpg', 2, 'Angora Turco', 'Felino, de pelaje blanco, ojos color caramelo, le gusta dormir a toda hora.', '1'),
(8, 'Arthur', 1, 'data:image/jpeg;base64,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', 4, 'Hamster Dorado', 'Pequeño roedor, color marrón claro, le gusta jugar con su rueda.', '0'),
(9, 'Luna', 4, 'https://www.vitake.net/wp-content/uploads/2017/06/pastor-aleman-raza-perro-mascota-3-1280x720x80xX.jpg', 1, 'Pastor Alemán', 'Perro hembra, pelaje color marrón con negro, ojos negros, entrenada para ayudar a cazar.', '1'),
(10, 'Bunny', 2, 'https://t1.uc.ltmcdn.com/images/4/5/0/img_como_cuidar_a_mi_conejo_angora_21054_600.jpg', 4, 'Conejo de Angora', 'Pequeña coneja, con mucho pelaje de color blanco, siempre esta durmiendo.', '1'),
(11, 'Tormenta', 2, 'https://www.curiosfera.com/wp-content/uploads/2017/12/Comportamiento-de-la-cacat%C3%BAa.jpg', 3, 'Cacatúa', 'Ave de color blanco con pico negro y cresta amarilla, le gusta repetir para y comer a cada rato.', '1'),
(12, 'Puñete', 3, 'https://www.lavanguardia.com/r/GODO/LV/p4/WebSite/2017/11/16/Recortada/img_cperezg_20171116-123107_imagenes_lv_terceros_istock-685469924-kqOH-U432920756498MzF-992x558@LaVanguardia-Web.jpg', 1, 'Pug', 'Pequeño can, de pelaje blanco con negro, ojos  negros, le gusta robar comida y saltar por todo lado.', '0'),
(13, 'Paolo', 1, 'https://infomarina.net/wp-content/uploads/2017/08/pez-dorado-gigante.jpg', 7, 'Dorado', 'Pequeño pez, no come muy a menudo, de color dorado intenso.', '1'),
(14, 'Groot', 2, 'http://www.mascotahogar.com/Imagenes/elegir-a-una-tortuga-como-mascota.jpg', 5, 'Tortuga Colorida', 'Tortuga muy lenta, le gusta correr y comer a su hora.', '0'),
(15, 'Green', 2, 'https://www.biodiversidad.gob.mx/planeta/cites/images/MASM04892%20Agalychnis%20callidryas.jpg', 6, 'Rana Arborícora', 'Pequeño anfibio hembra, con ojos muy grandes.', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `Id` int(11) NOT NULL,
  `Nombre` longtext COLLATE utf8mb4_bin NOT NULL,
  `Email` longtext COLLATE utf8mb4_bin NOT NULL,
  `Descripcion` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `sugerencias`
--

INSERT INTO `sugerencias` (`Id`, `Nombre`, `Email`, `Descripcion`) VALUES
(1, 'Sebastian', 'sebastian@gmail.com', 'Buenas opciones de adopcion'),
(2, 'Sebastian', 'sebastian@gmail.com', 'Muchas opciones'),

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
(4, 'Roedor'),
(5, 'Reptil'),
(6, 'Anfibio'),
(7, 'Pez');


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
('20190613195947_fotoevento', '2.2.4-servicing-10062'),
('20190614031858_Sugerencias', '2.2.4-servicing-10062'),
('20190615184129_contacto', '2.2.4-servicing-10062');

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
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`Id`);

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
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
