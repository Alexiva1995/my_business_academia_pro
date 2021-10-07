-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-04-2021 a las 16:22:06
-- Versión del servidor: 8.0.24
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mbapro_academy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addres_ip`
--

CREATE TABLE `addres_ip` (
  `id` int NOT NULL,
  `ip` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `padre` text CHARACTER SET latin1 COLLATE latin1_spanish_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradorgastos`
--

CREATE TABLE `administradorgastos` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo` tinyint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradorlista`
--

CREATE TABLE `administradorlista` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `tipo` tinyint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` int NOT NULL,
  `titulo` longtext,
  `contenido` longtext,
  `color` varchar(250) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imagen_muestra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Artículo número 1', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span></span></p>\r\n\r\n<p>Mauris semper tortor a sagittis gravida. Quisque mi nulla, varius id condimentum a, pellentesque vitae ex. Cras diam odio, porttitor non tincidunt ut, dictum a justo. Phasellus tristique enim ut dolor efficitur, in malesuada turpis posuere. Nunc accumsan lectus nec porttitor fermentum. Cras ultricies velit egestas pulvinar lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac nisi dictum, dignissim odio a, sodales..</p>', '2020-11-25 16:06:50', '2020-11-26 18:02:04'),
(2, 'Artículo número 2', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Etiam malesuada sem a urna laoreet tempor. </span></span></p>\r\n\r\n<p>Donec interdum aliquet ex, mollis pulvinar felis pulvinar eget. Quisque id fringilla nisl. Donec sagittis diam ligula, iaculis congue sapien faucibus ut. In non ante dui. Nam purus arcu, iaculis vel fringilla a, facilisis a nisl.</p>', '2020-11-25 16:08:35', '2020-11-26 17:54:02'),
(3, 'Artículo número 3', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Curabitur vestibulum</span></span></p>\r\n\r\n<p>Curabitur vestibulum, augue vel volutpat congue, urna erat mattis eros, vel vulputate odio felis id libero. Vestibulum at nulla in mauris pellentesque scelerisque eu ut ex. In dignissim ipsum elit, vel vulputate felis egestas at. Morbi non rutrum arcu, a vulputate velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus elementum consectetur diam, at pharetra sem tristique sed.</p>', '2020-11-25 16:17:52', '2020-11-25 16:17:52'),
(4, 'Artículo número 4', '<p><span style=\"font-size:16px\"><span style=\"color:#3498db\">Integer eu commodo diam.</span></span></p>\r\n\r\n<p>Fusce ut mi in nibh viverra dignissim eu vel lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In imperdiet rhoncus commodo. Duis facilisis dictum sollicitudin. Proin vulputate tellus dui. Nam pharetra condimentum est, nec venenatis tellus. Curabitur ut nisi sem. Aliquam imperdiet consectetur metus in tempor.</p>', '2020-11-25 16:26:45', '2020-11-25 16:26:45'),
(5, 'Artículo número 5', '<p><span style=\"color:#3498db\"><span style=\"font-size:16px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></span></p>\r\n\r\n<p>Sed consectetur quis velit quis mattis. Nunc sed leo tempor odio fermentum gravida. Morbi maximus pellentesque volutpat. Phasellus nec nulla arcu. Nulla blandit vitae metus vitae hendrerit. In gravida nisi at congue commodo</p>', '2020-12-03 10:40:20', '2020-12-03 10:40:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avatares`
--

CREATE TABLE `avatares` (
  `id` int NOT NULL,
  `avatar` longtext,
  `activo_mujer` varchar(300) DEFAULT NULL,
  `activo_hombre` varchar(300) DEFAULT NULL,
  `inactivo_mujer` varchar(300) DEFAULT NULL,
  `inactivo_hombre` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avatares`
--

INSERT INTO `avatares` (`id`, `avatar`, `activo_mujer`, `activo_hombre`, `inactivo_mujer`, `inactivo_hombre`, `updated_at`) VALUES
(1, '[{\"avatar\":\"avatar_1576185092.png\"},{\"avatar\":\"avatar_1576189159.png\"},{\"avatar\":\"avatar_1576189177.png\"},{\"avatar\":\"avatar_1576189187.png\"},{\"avatar\":\"avatar_1576189196.png\"},{\"avatar\":\"avatar_1576189203.png\"},{\"avatar\":\"avatar_1576189213.png\"},{\"avatar\":\"avatar_15762497471.png\"},{\"avatar\":\"avatar_15762497472.png\"},{\"avatar\":\"avatar_15762497473.png\"},{\"avatar\":\"avatar_15762497474.png\"},{\"avatar\":\"avatar_15763101171.png\"}]', 'avatar_1576189196.png', 'avatar_1576189187.png', 'avatar_1576189213.png', 'avatar_1576189203.png', '2019-12-14 12:55:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `awards`
--

CREATE TABLE `awards` (
  `id` int NOT NULL,
  `membership_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `awards`
--

INSERT INTO `awards` (`id`, `membership_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Trofeo del Ser', '1.png', '2021-01-27 13:07:06', '2021-01-27 13:08:53'),
(2, 2, 'Trofeo 2', 'default.png', '2021-01-27 13:07:06', '2021-01-27 13:07:06'),
(3, 3, 'Trofeo 3', 'default.png', '2021-01-27 13:07:06', '2021-01-27 13:07:06'),
(4, 4, 'Trofeo 4', 'default.png', '2021-01-27 13:07:06', '2021-01-27 13:07:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `awards_users`
--

CREATE TABLE `awards_users` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `award_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `awards_users`
--

INSERT INTO `awards_users` (`id`, `user_id`, `award_id`, `created_at`, `updated_at`) VALUES
(6, 10075, 1, '2021-01-27 12:41:19', '2021-01-27 12:41:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = No Visible. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `title`, `page`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oportunidad', 'Streaming', '.jpeg', NULL, 0, '2020-12-14 22:22:31', '2021-01-11 22:03:50'),
(2, '1', 'Membresias', '.png', NULL, 0, '2021-01-11 22:04:14', '2021-01-11 22:04:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `binario`
--

CREATE TABLE `binario` (
  `id` int NOT NULL,
  `binario` double DEFAULT NULL,
  `pata` varchar(250) DEFAULT NULL,
  `autobinario` int DEFAULT NULL COMMENT '1 - automitico 0 - semiautomatico',
  `inicio` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `auto` varchar(250) DEFAULT NULL COMMENT 'automatico - se paga de una ves - semi - se guarda en la base de datos y el admin decide si la acepta',
  `puntos_inicio` varchar(250) DEFAULT NULL,
  `patrocinador` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonoinicio`
--

CREATE TABLE `bonoinicio` (
  `id` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `iduser` int NOT NULL,
  `idcomision` int NOT NULL,
  `total` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendarios`
--

CREATE TABLE `calendarios` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `event_id` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `contenido` longtext NOT NULL,
  `color` varchar(250) DEFAULT '#28a745',
  `inicio` date NOT NULL,
  `vence` datetime DEFAULT NULL,
  `time` time DEFAULT NULL,
  `lugar` varchar(250) NOT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `especifico` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calendarios`
--

INSERT INTO `calendarios` (`id`, `iduser`, `event_id`, `titulo`, `contenido`, `color`, `inicio`, `vence`, `time`, `lugar`, `tipo`, `especifico`, `created_at`, `updated_at`) VALUES
(54, 10075, 20, 'Prueba', '<p>Esto es una prueba para el eliminado de eventos posterior a la creaci&oacute;n</p>', '#28a745', '2021-03-31', NULL, '19:20:00', 'Ninguno', NULL, NULL, '2021-03-31 14:15:04', '2021-03-31 14:15:04'),
(55, 10074, 21, 'De Emprendedor a Empresario', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '#28a745', '2021-04-18', NULL, '19:17:00', 'Ninguno', NULL, NULL, '2021-04-03 12:20:44', '2021-04-18 19:12:10'),
(56, 10074, 22, 'Principios de Trading con Crypto', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '#28a745', '2021-04-17', NULL, '16:30:00', 'Ninguno', NULL, NULL, '2021-04-03 12:25:06', '2021-04-03 12:25:06'),
(57, 10071, 23, 'PRUEBA DOMINGUERA CON DOUG MBA', '<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente texto ficticio de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica.&nbsp;Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.&nbsp;Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.&nbsp;Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que conten&iacute;an pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que inclu&iacute;a versiones de Lorem Ipsum.</p>', '#28a745', '2021-04-18', NULL, '01:12:00', 'Ninguno', NULL, NULL, '2021-04-18 18:17:26', '2021-04-18 18:17:26'),
(60, 10124, 24, 'Test DE EVENTO', '<p>adsfdgfhgh,j,jhjgredghfjh,mjhgmfddfadsfgdhghf</p>', '#28a745', '2021-04-19', NULL, '00:28:00', 'Ninguno', NULL, NULL, '2021-04-18 19:21:26', '2021-04-18 19:21:26'),
(61, 10123, 25, 'Lanza tu producto digital', '<p>Aprende como lanzar tu producto digital al mercado, como promocionar en redes</p>', '#28a745', '2021-05-01', NULL, '09:00:00', 'Ninguno', NULL, NULL, '2021-04-21 18:34:51', '2021-04-21 18:44:58'),
(62, 10075, 26, 'Evento de Soporte Técnico', '<p>Esto es una prueba de soporte t&eacute;cnico para verificar el funcionamiento y afinar detalles</p>', '#28a745', '2021-04-26', NULL, '12:45:00', 'Ninguno', NULL, NULL, '2021-04-26 07:44:28', '2021-04-26 07:44:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canjes`
--

CREATE TABLE `canjes` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `cantidad` double NOT NULL,
  `total` double DEFAULT NULL COMMENT 'total en pesos',
  `tipo` int NOT NULL COMMENT '0 - puntos propios 1 - puntos grupales ',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capital`
--

CREATE TABLE `capital` (
  `id` int NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `departa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `producto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `idproducto` int NOT NULL,
  `cantidad` int NOT NULL,
  `total` double NOT NULL,
  `iva` double DEFAULT NULL,
  `ip` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referido` int DEFAULT NULL,
  `info` double DEFAULT NULL,
  `porcentaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`id`, `iduser`, `producto`, `precio`, `idproducto`, `cantidad`, `total`, `iva`, `ip`, `referido`, `info`, `porcentaje`, `updated_at`) VALUES
(3, 0, 'Mensualidad', 280, 29, 1, 210, 0, '186.91.112.240', 7, 0, '0', '2020-08-04 13:48:14'),
(5, 0, 'Mensualidad', 280, 29, 1, 210, 0, '201.209.106.45', 1, 0, '0', '2020-09-18 21:46:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `uuid` varchar(40) DEFAULT NULL,
  `membership_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `cover_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `membership_id`, `title`, `slug`, `icon`, `cover`, `cover_name`, `created_at`, `updated_at`) VALUES
(1, '5a4edf05-2450-4c17-9874-b8f23790cff4', 1, 'Desarrollo Humano', 'desarrollo-humano', 'fa fa-line-chart', '1.jpg', '1.jpg', '2020-10-17 10:26:12', '2021-04-19 10:58:22'),
(2, '2ffa7f8c-fcaf-4041-8796-6778a8bc6781', 1, 'Educación Financiera', 'educacion-financiera', 'fa fa-suitcase', '2.jpg', '02.jpg', '2020-10-17 10:27:00', '2021-04-19 10:58:55'),
(3, 'f307abbf-413b-45cf-bdb6-916c961c97e2', 2, 'Ventas', 'ventas', 'fa fa-area-chart', '3.png', '3.png', '2020-10-17 10:27:23', '2021-04-19 10:59:24'),
(4, 'd1a7fdf3-08c8-479a-a978-f4a1d5389dbd', 2, 'Emprendurismo', 'emprendurismo', 'fa fa-area-chart', '4.jpg', '03.jpg', '2020-10-17 10:27:46', '2021-04-19 10:59:57'),
(5, '6b0d7a7f-4f2b-4f3c-a2ab-ddffde94d555', 3, 'Fintech', 'fintech', 'fab fa-bitcoin', '5.jpg', '04.jpg', '2020-10-17 10:28:10', '2021-04-19 11:00:27'),
(6, 'c3ceecdd-4b94-4a6c-aa7d-be9e8786c928', 3, 'Real Estate', 'real-estate', 'fas fa-tasks', '6.jpg', '05.jpg', '2020-10-17 10:28:38', '2021-04-19 11:00:56'),
(7, '258ce72d-b396-4643-9a09-f20bb6f5fb08', 4, 'Enseñanza - Aprendizaje', 'ensenanza-aprendizaje', 'fas fa-robot', '7.jpg', '04.jpg', '2020-10-17 10:28:52', '2021-04-19 11:01:28'),
(8, '579e944d-5d0f-4065-9fbd-2ff34d6420dd', 4, 'Bienestar', 'bienestar', 'fab fa-btc', '8.jpg', '03.jpg', '2020-10-17 10:29:06', '2021-04-19 11:01:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int NOT NULL,
  `contenido` longtext,
  `origen` int DEFAULT NULL,
  `destino` int DEFAULT NULL,
  `codigo` varchar(250) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_codigo`
--

CREATE TABLE `chat_codigo` (
  `id` int NOT NULL,
  `usuario_id` int DEFAULT NULL,
  `codigo` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coinpayment_transactions`
--

CREATE TABLE `coinpayment_transactions` (
  `id` int UNSIGNED NOT NULL,
  `txn_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountf` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirms_needed` int DEFAULT NULL,
  `payment_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedf` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recv_confirms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coinpayment_transactions`
--

INSERT INTO `coinpayment_transactions` (`id`, `txn_id`, `address`, `amount`, `amountf`, `coin`, `confirms_needed`, `payment_address`, `qrcode_url`, `received`, `receivedf`, `recv_confirms`, `status`, `status_text`, `status_url`, `timeout`, `type`, `payload`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'CPEL68OMTY19RCDOBV89EZMWPY', '3BbSgpPDpwaT9D7kGy2eX4UYjPQ4pixHTV', '6000', '0.00006000', 'BTC', 2, '3BbSgpPDpwaT9D7kGy2eX4UYjPQ4pixHTV', 'https://www.coinpayments.net/qrgen.php?id=CPEL68OMTY19RCDOBV89EZMWPY&key=582c4a364d7e1fb4cedbfd17dee5685c', '0', '0.00000000', '0', '0', 'Waiting for buyer funds...', 'https://www.coinpayments.net/index.php?cmd=status&id=CPEL68OMTY19RCDOBV89EZMWPY&key=582c4a364d7e1fb4cedbfd17dee5685c', '27000', 'coins', NULL, NULL, '2020-12-10 19:26:22', '2020-12-10 19:26:22'),
(2, 'CPEL2NJTVJUXIS5KCDUHWBNAXK', '3PtgxicPSztAaPmp638m6phpcpBxqru1p7', '6000', '0.00006000', 'BTC', 2, '3PtgxicPSztAaPmp638m6phpcpBxqru1p7', 'https://www.coinpayments.net/qrgen.php?id=CPEL2NJTVJUXIS5KCDUHWBNAXK&key=96c9080c74f2797a140d70f16173c862', '0', '0.00000000', '0', '0', 'Waiting for buyer funds...', 'https://www.coinpayments.net/index.php?cmd=status&id=CPEL2NJTVJUXIS5KCDUHWBNAXK&key=96c9080c74f2797a140d70f16173c862', '27000', 'coins', NULL, NULL, '2020-12-10 19:30:33', '2020-12-10 19:30:33'),
(3, 'CPEL1EZRYNU7F1FP6QZDPH3GWQ', '36TQ4FsThUV1d54Nxpu127gME69wZGjAmx', '5000', '0.00005000', 'BTC', 2, '36TQ4FsThUV1d54Nxpu127gME69wZGjAmx', 'https://www.coinpayments.net/qrgen.php?id=CPEL1EZRYNU7F1FP6QZDPH3GWQ&key=79794bbfcedcdae5550ccaa8b3af2e8c', '0', '0.00000000', '0', '0', 'Waiting for buyer funds...', 'https://www.coinpayments.net/index.php?cmd=status&id=CPEL1EZRYNU7F1FP6QZDPH3GWQ&key=79794bbfcedcdae5550ccaa8b3af2e8c', '28800', 'coins', NULL, NULL, '2020-12-14 15:39:46', '2020-12-14 15:39:46'),
(4, 'CPEL1LJDHCJBIMZUURVMUYT3II', '31qBPX5t9Hsg1pTJKpP7ZGYtDXNUhkrAad', '5000', '0.00005000', 'BTC', 2, '31qBPX5t9Hsg1pTJKpP7ZGYtDXNUhkrAad', 'https://www.coinpayments.net/qrgen.php?id=CPEL1LJDHCJBIMZUURVMUYT3II&key=b3d69c73ea76f14d14ce3fc571382bea', '0', '0.00000000', '0', '0', 'Waiting for buyer funds...', 'https://www.coinpayments.net/index.php?cmd=status&id=CPEL1LJDHCJBIMZUURVMUYT3II&key=b3d69c73ea76f14d14ce3fc571382bea', '28800', 'coins', NULL, NULL, '2020-12-14 19:26:47', '2020-12-14 19:26:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int UNSIGNED NOT NULL,
  `tickets_id` int NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `comentario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `comment` varchar(250) NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `comment`, `lesson_id`, `user_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Testing', 23, 10090, '2020-11-08', '2020-11-08 01:52:53', '2020-11-08 01:52:53'),
(2, 'hola', 4, 10093, '2020-11-08', '2020-11-08 02:09:32', '2020-11-08 02:09:32'),
(8, 'Excelente leccion', 23, 10086, '2020-11-11', '2020-11-11 23:20:45', '2020-11-11 23:20:45'),
(9, 'Excelente lección, gracias', 1, 10086, '2020-11-27', '2020-11-27 10:08:33', '2020-11-27 10:08:33'),
(10, 'excelente, gracias.', 6, 10086, '2020-11-27', '2020-11-27 11:15:24', '2020-11-27 11:15:24'),
(11, 'Excelente curso.Gracias', 31, 10086, '2020-12-02', '2020-12-02 12:45:09', '2020-12-02 12:45:09'),
(12, 'Muy interesante,gracias.', 2, 10086, '2020-12-02', '2020-12-02 13:19:14', '2020-12-02 13:19:14'),
(13, 'prueba', 10, 10086, '2020-12-04', '2020-12-04 23:07:05', '2020-12-04 23:07:05'),
(14, 'Hello', 4, 10101, '2020-12-09', '2020-12-09 13:19:31', '2020-12-09 13:19:31'),
(15, 'Buenas tardes', 14, 10101, '2020-12-09', '2020-12-09 13:31:27', '2020-12-09 13:31:27'),
(16, 'hello', 29, 10103, '2020-12-09', '2020-12-09 16:08:36', '2020-12-09 16:08:36'),
(17, 'hello , buenas tardes. Excelente', 25, 10104, '2020-12-09', '2020-12-09 16:44:13', '2020-12-09 16:44:13'),
(18, 'hello', 6, 10105, '2020-12-10', '2020-12-10 18:18:11', '2020-12-10 18:18:11'),
(19, 'Buenas tardes', 33, 10107, '2020-12-11', '2020-12-11 15:16:37', '2020-12-11 15:16:37'),
(20, 'Buenas tardes', 27, 10107, '2020-12-11', '2020-12-11 17:02:28', '2020-12-11 17:02:28'),
(21, 'Curso Excelente', 37, 10109, '2020-12-14', '2020-12-14 07:50:12', '2020-12-14 07:50:12'),
(22, 'Buenas tardes', 13, 10110, '2020-12-14', '2020-12-14 18:23:11', '2020-12-14 18:23:11'),
(23, 'Hola que tal', 31, 10107, '2020-12-18', '2020-12-18 12:17:01', '2020-12-18 12:17:01'),
(24, 'Ok pero no se ve', 31, 10107, '2020-12-18', '2020-12-18 12:17:23', '2020-12-18 12:17:23'),
(25, 'Hola', 31, 10107, '2020-12-18', '2020-12-18 12:19:08', '2020-12-18 12:19:08'),
(26, 'Hola que tal', 31, 10107, '2020-12-18', '2020-12-18 12:19:51', '2020-12-18 12:19:51'),
(27, 'Hola como estas', 31, 10107, '2020-12-18', '2020-12-18 12:20:00', '2020-12-18 12:20:00'),
(28, 'que mas', 31, 10107, '2020-12-18', '2020-12-18 12:20:28', '2020-12-18 12:20:28'),
(29, 'Hola', 31, 10107, '2020-12-18', '2020-12-18 12:22:13', '2020-12-18 12:22:13'),
(30, 'Mira como estas', 31, 10107, '2020-12-18', '2020-12-18 12:22:21', '2020-12-18 12:22:21'),
(31, 'Estoy escribiendo', 31, 10107, '2020-12-18', '2020-12-18 12:22:32', '2020-12-18 12:22:32'),
(32, 'Y no se pausa', 31, 10107, '2020-12-18', '2020-12-18 12:22:41', '2020-12-18 12:22:41'),
(33, 'fffffff', 24, 10076, '2020-12-18', '2020-12-18 16:56:37', '2020-12-18 16:56:37'),
(34, 'Probando', 24, 10076, '2020-12-18', '2020-12-18 16:56:47', '2020-12-18 16:56:47'),
(35, 'Comentario de prueba', 24, 10076, '2020-12-18', '2020-12-18 17:01:34', '2020-12-18 17:01:34'),
(36, 'Otra prueba', 24, 10076, '2020-12-18', '2020-12-18 17:02:23', '2020-12-18 17:02:23'),
(37, 'Prueba3', 24, 10076, '2020-12-18', '2020-12-18 17:03:07', '2020-12-18 17:03:07'),
(38, '...', 24, 10076, '2020-12-18', '2020-12-18 17:09:39', '2020-12-18 17:09:39'),
(39, '.', 24, 10076, '2020-12-18', '2020-12-18 18:06:58', '2020-12-18 18:06:58'),
(40, 'Probando', 24, 10076, '2020-12-18', '2020-12-18 20:44:29', '2020-12-18 20:44:29'),
(41, 'me queda super clara la información, gracias', 1, 10107, '2020-12-23', '2020-12-23 18:24:58', '2020-12-23 18:24:58'),
(42, 'Gracias', 1, 1, '2021-01-11', '2021-01-11 18:51:59', '2021-01-11 18:51:59'),
(43, 'dobi', 1, 1, '2021-01-11', '2021-01-11 18:52:33', '2021-01-11 18:52:33'),
(44, '=)', 1, 10115, '2021-01-14', '2021-01-14 19:49:27', '2021-01-14 19:49:27'),
(45, 'JH<SHBKJD', 23, 10118, '2021-01-18', '2021-01-18 16:53:45', '2021-01-18 16:53:45'),
(46, 'mi comentario de prueba', 1, 1, '2021-01-26', '2021-01-26 10:36:17', '2021-01-26 10:36:17'),
(49, 'prueba final', 1, 1, '2021-01-26', '2021-01-26 13:00:19', '2021-01-26 13:00:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment_responses`
--

CREATE TABLE `comment_responses` (
  `id` int NOT NULL,
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment` text NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comment_responses`
--

INSERT INTO `comment_responses` (`id`, `comment_id`, `user_id`, `comment`, `date`, `created_at`, `updated_at`) VALUES
(1, 46, 1, 'pruebaº1', '2021-01-26', '2021-01-26 11:35:33', '2021-01-26 11:35:33'),
(2, 46, 1, 'prueba2', '2021-01-26', '2021-01-26 11:37:26', '2021-01-26 11:37:26'),
(3, 46, 1, 'respuesta final', '2021-01-26', '2021-01-26 12:58:41', '2021-01-26 12:58:41'),
(4, 49, 1, 'aqui mi respuesta', '2021-01-26', '2021-01-26 13:00:28', '2021-01-26 13:00:28'),
(5, 49, 1, 'respuesta 2', '2021-01-26', '2021-01-26 13:00:39', '2021-01-26 13:00:39'),
(6, 44, 1, ';)', '2021-01-26', '2021-01-26 13:00:48', '2021-01-26 13:00:48'),
(7, 49, 1, 'hola', '2021-01-27', '2021-01-27 14:41:56', '2021-01-27 14:41:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `compra_id` int NOT NULL,
  `date` date NOT NULL,
  `total` double NOT NULL,
  `referred_email` varchar(100) NOT NULL,
  `referred_level` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `edo_liquidacion` tinyint(1) NOT NULL DEFAULT '0',
  `concepto` varchar(100) NOT NULL,
  `tipo_comision` varchar(200) NOT NULL,
  `eliminada` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - activa, 1 - eliminada',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `commissions`
--

INSERT INTO `commissions` (`id`, `user_id`, `compra_id`, `date`, `total`, `referred_email`, `referred_level`, `status`, `edo_liquidacion`, `concepto`, `tipo_comision`, `eliminada`, `created_at`, `updated_at`) VALUES
(1, 10085, 33, '2020-12-08', 7.2, 'conferencias_lm@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido referidosinergia por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(2, 10085, 35, '2020-12-08', 7.2, 'conferencias_lm@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido referidosinergia por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(3, 1, 28, '2020-12-08', 7.2, 'pietropasqualis55@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido luisana por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(4, 1, 29, '2020-12-08', 7.2, 'pietropasqualis55@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido luisana por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(5, 1, 30, '2020-12-08', 7.2, 'pietropasqualis55@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido luisana por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(6, 1, 57, '2020-12-08', 2.997, 'pietropasqualis55@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido luisana por la Membresia Ser', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(7, 1, 1, '2020-12-08', 0.3, 'ramalejtq@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido tes1000 por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(8, 1, 2, '2020-12-08', 0.3, 'caslo@prueba.com', 1, 1, 0, 'Ganancia por la compra del referido caslo por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(9, 1, 4, '2020-12-08', 7.2, 'principiante@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido principiante por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(10, 1, 40, '2020-12-08', 3.297, 'principiante@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido principiante por la Membresia Basico', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(11, 1, 5, '2020-12-08', 6.6, 'basico@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido basico por la Membresia Basico', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(12, 1, 11, '2020-12-08', 6, 'basico@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido basico por la Membresia Intermedio', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(13, 1, 23, '2020-12-08', 7.2, 'basico@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido basico por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(14, 1, 24, '2020-12-08', 7.2, 'basico@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido basico por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(15, 1, 25, '2020-12-08', 7.2, 'basico@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido basico por la Membresia Principiante', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(16, 1, 6, '2020-12-08', 6, 'intermedio@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido intermedio por la Membresia Intermedio', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(17, 1, 7, '2020-12-08', 5.4, 'avanzado@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido avanzado por la Membresia Avanzado', 'membresias', 0, '2020-12-08 08:28:53', '2020-12-08 08:28:53'),
(18, 10101, 66, '2020-12-09', 0, 'cliente3@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Ser', 'membresias', 0, '2020-12-09 16:32:27', '2020-12-09 16:32:27'),
(19, 10101, 67, '2020-12-09', 0.3, 'cliente3@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Hacer', 'membresias', 0, '2020-12-09 16:32:27', '2020-12-09 16:32:27'),
(20, 10101, 70, '2020-12-09', 0.3, 'cliente4@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Ser', 'membresias', 0, '2020-12-09 16:32:27', '2020-12-09 16:32:27'),
(21, 10101, 71, '2020-12-09', 0.3, 'cliente4@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Ser', 'membresias', 0, '2020-12-09 16:32:27', '2020-12-09 16:32:27'),
(22, 10101, 72, '2020-12-09', 0.3, 'cliente4@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Ser', 'membresias', 0, '2020-12-09 16:32:27', '2020-12-09 16:32:27'),
(23, 10101, 73, '2020-12-09', 0.3, 'cliente5@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 3 por la Membresia Ser', 'membresias', 0, '2020-12-09 16:36:53', '2020-12-09 16:36:53'),
(24, 10101, 74, '2020-12-09', 0.3, 'cliente5@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 3 por la Membresia Hacer', 'membresias', 0, '2020-12-09 16:58:51', '2020-12-09 16:58:51'),
(25, 10101, 75, '2020-12-09', 0.3, 'cliente5@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 3 por la Membresia Tener', 'membresias', 0, '2020-12-09 16:58:51', '2020-12-09 16:58:51'),
(26, 10101, 80, '2020-12-10', 0.3, 'cliente3@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Tener', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(27, 10101, 81, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Ser', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(28, 10101, 82, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Ser', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(29, 10101, 83, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(30, 10101, 84, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Tener', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(31, 10101, 85, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(32, 10101, 86, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Ser', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(33, 10101, 87, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(34, 10101, 88, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Tener', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(35, 10101, 90, '2020-12-10', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 'membresias', 0, '2020-12-10 18:07:14', '2020-12-10 18:07:14'),
(36, 10085, 96, '2020-12-14', 0.3, 'conferencias_lm@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido referidosinergia por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(37, 10085, 97, '2020-12-14', 0.3, 'conferencias_lm@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido referidosinergia por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(38, 10085, 98, '2020-12-14', 0.3, 'conferencias_lm@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido referidosinergia por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(39, 10086, 64, '2020-12-14', 0, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(40, 10086, 68, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(41, 10086, 69, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(42, 10086, 76, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(43, 10086, 77, '2020-12-14', 135, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(44, 10086, 78, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(45, 10086, 79, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(46, 10086, 93, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(47, 10086, 94, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(48, 10086, 95, '2020-12-14', 0.3, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(49, 10101, 101, '2020-12-14', 0.3, 'cliente3@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(50, 10101, 102, '2020-12-14', 0.3, 'cliente4@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(51, 10101, 92, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(52, 10101, 103, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(53, 10101, 104, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(54, 10101, 107, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(55, 10101, 108, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(56, 10101, 109, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(57, 10101, 110, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(58, 10101, 111, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(59, 10101, 112, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(60, 10101, 113, '2020-12-14', 0.3, 'yanirapicon@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Soporte por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(61, 10105, 105, '2020-12-14', 0.3, 'juanita712@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido juanita por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(62, 10105, 106, '2020-12-14', 0.3, 'juanita712@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido juanita por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(63, 10105, 115, '2020-12-14', 0.3, 'juanita712@hotmail.com', 1, 1, 0, 'Ganancia por la compra del referido juanita por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(64, 10107, 140, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(65, 10107, 141, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(66, 10107, 142, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(67, 10107, 144, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(68, 1, 118, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(69, 1, 119, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(70, 1, 120, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(71, 1, 130, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(72, 1, 131, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(73, 1, 132, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(74, 1, 133, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(75, 1, 134, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Tener', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(76, 1, 135, '2020-12-14', 0.3, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes por la Membresia Trascender', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(77, 1, 122, '2020-12-14', 0.3, 'alberguerr05@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido Alejandra100 por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(78, 1, 139, '2020-12-14', 0.3, 'alexisjoseva95@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido AlexisValera95 por la Membresia Ser', 'membresias', 0, '2020-12-14 18:11:23', '2020-12-14 18:11:23'),
(79, 10107, 145, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Ser', 'membresias', 0, '2020-12-14 18:22:05', '2020-12-14 18:22:05'),
(80, 10107, 147, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:22:05', '2020-12-14 18:22:05'),
(81, 1, 146, '2020-12-14', 0.3, 'tes5000@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido es5000 por la Membresia Ser', 'membresias', 0, '2020-12-14 18:22:05', '2020-12-14 18:22:05'),
(82, 1, 148, '2020-12-14', 0.3, 'tes5000@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido es5000 por la Membresia Hacer', 'membresias', 0, '2020-12-14 18:22:05', '2020-12-14 18:22:05'),
(83, 10107, 150, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Tener', 'membresias', 0, '2020-12-14 19:01:12', '2020-12-14 19:01:12'),
(84, 10107, 151, '2020-12-14', 0.3, 'cliente9@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Prueba por la Membresia Ser', 'membresias', 0, '2020-12-14 19:01:12', '2020-12-14 19:01:12'),
(85, 1, 149, '2020-12-14', 0.3, 'tes5000@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido es5000 por la Membresia Tener', 'membresias', 0, '2020-12-14 19:01:12', '2020-12-14 19:01:12'),
(86, 1, 152, '2020-12-14', 0.3, 'tes5000@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido es5000 por la Membresia Trascender', 'membresias', 0, '2020-12-14 19:01:12', '2020-12-14 19:01:12'),
(87, 1, 153, '2020-12-23', 0.3, 'tes900@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido tes900 por la Membresia Ser', 'membresias', 0, '2020-12-23 13:31:36', '2020-12-23 13:31:36'),
(88, 1, 154, '2020-12-23', 0.3, 'tes900@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido tes900 por la Membresia Hacer', 'membresias', 0, '2020-12-23 13:31:36', '2020-12-23 13:31:36'),
(89, 1, 155, '2020-12-23', 0.3, 'tes900@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido tes900 por la Membresia Tener', 'membresias', 0, '2020-12-23 13:31:36', '2020-12-23 13:31:36'),
(90, 1, 156, '2020-12-23', 0.3, 'tes900@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido tes900 por la Membresia Tener', 'membresias', 0, '2020-12-23 13:31:36', '2020-12-23 13:31:36'),
(91, 10086, 168, '2021-01-16', 11.997, 'cliente2@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Yanira Picon', 'membresias', 0, '2021-01-16 10:39:34', '2021-01-16 10:39:34'),
(92, 10114, 165, '2021-01-16', 5.997, 'soporte2@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido Ser', 'membresias', 0, '2021-01-16 10:39:34', '2021-01-16 10:39:34'),
(93, 1, 167, '2021-01-16', 2.997, 'manuelguerrero@mybusinessacademypro.com', 1, 1, 0, 'Ganancia por la compra del referido Manuel Guerrero', 'membresias', 0, '2021-01-16 10:39:34', '2021-01-16 10:39:34'),
(94, 1, 170, '2021-02-07', 11.997, 'cliente6@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Mercedes', 'membresias', 0, '2021-02-07 13:28:08', '2021-02-07 13:28:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `component`
--

CREATE TABLE `component` (
  `id` int NOT NULL,
  `slider` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `component`
--

INSERT INTO `component` (`id`, `slider`, `updated_at`) VALUES
(4, 'drop_1614454673.png', '2021-02-27 12:37:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentenoticias`
--

CREATE TABLE `componentenoticias` (
  `id` int NOT NULL,
  `noticias` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentestransf`
--

CREATE TABLE `componentestransf` (
  `id` int NOT NULL,
  `tipotransferencia` int DEFAULT NULL COMMENT '0 - monto fijo 1 - monto por porcentaje',
  `comisiontransf` double DEFAULT NULL COMMENT 'esta es para el metodo de pago, es la comision por transferencia de dinero en la billetera',
  `valor_conversion` double DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `componentestransf`
--

INSERT INTO `componentestransf` (`id`, `tipotransferencia`, `comisiontransf`, `valor_conversion`, `updated_at`) VALUES
(1, 1, 0, 0, '2020-03-01 23:47:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentestransferencias`
--

CREATE TABLE `componentestransferencias` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  `debito` float NOT NULL,
  `credito` float NOT NULL,
  `balance` float NOT NULL,
  `descuento` float NOT NULL,
  `tipotransacion` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradirectas`
--

CREATE TABLE `compradirectas` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcompra` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `precio` double DEFAULT NULL,
  `referido_correo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultacrypto`
--

CREATE TABLE `consultacrypto` (
  `id` int NOT NULL,
  `idcompra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `idconsulta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imagen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo`
--

CREATE TABLE `costo` (
  `id` int NOT NULL,
  `iduser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idlocalidad` int DEFAULT NULL,
  `provincia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `membership_id` int NOT NULL DEFAULT '1',
  `description` text,
  `cover` varchar(255) DEFAULT NULL,
  `cover_name` varchar(255) DEFAULT NULL,
  `thumbnail_cover` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_cover` varchar(255) DEFAULT NULL,
  `featured_cover_name` varchar(255) DEFAULT NULL,
  `featured_at` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = No Disponible. 1 = Disponible',
  `likes` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de likes que tiene ese curso',
  `shares` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de veces que ha sido compartido',
  `views` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de visualizaciones',
  `duration` varchar(50) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `mentor_id`, `title`, `slug`, `category_id`, `subcategory_id`, `membership_id`, `description`, `cover`, `cover_name`, `thumbnail_cover`, `featured`, `featured_cover`, `featured_cover_name`, `featured_at`, `status`, `likes`, `shares`, `views`, `duration`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10071, 'Oferta Inicial Pública (IPO)', 'oferta-inicial-publica-ipo', 6, 0, 3, '<p><strong>Por Tania Tostado Ramos</strong></p>\r\n\r\n<p>En este m&oacute;dulo aprender&aacute; el amplio concepto de IPO (Initial Public Offer) que son una oferta p&uacute;blica en la que se lanzan acciones de una compa&ntilde;&iacute;a privada por primera vez al p&uacute;blico en general.</p>\r\n\r\n<h2>Descripci&oacute;n del curso</h2>\r\n\r\n<p>Se ver&aacute;n los aspectos m&aacute;s relevantes, sus ventajas, beneficios y operaci&oacute;n como una herramienta para atraer capital p&uacute;blico que provenga de distintos segmentos de la sociedad.</p>\r\n\r\n<h2>&iquest;Qu&eacute; vas a encontrar en este curso?</h2>\r\n\r\n<p>Conferencias en video, realizada por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2>Dirigido a</h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros.</p>\r\n\r\n<h2>Informaci&oacute;n Adicional</h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 4</p>\r\n\r\n<p>V&iacute;deo: Con informaci&oacute;n relevante al tema</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Manual y Certificados descargables</p>', '1.jpg', 'Coaching.jpg', '1-thumbnail.jpg', 0, NULL, NULL, NULL, 1, 0, 0, 0, '2:30hrs', 0, '2020-10-18 00:42:38', '2021-03-26 12:22:19', NULL),
(2, 10072, 'Inteligencia Artificial', 'inteligencia-artificial', 6, 0, 3, '<p><strong>Por Manuel Guerrero Aguilar</strong></p>\r\n\r\n<p>Este nivel le proporcionar&aacute; un amplio conocimiento sobre una de las principales herramientas que hoy en d&iacute;a optimiza y facilita el medio financiero: la Inteligencia Artificial.</p>\r\n\r\n<h2>Descripci&oacute;n del curso</h2>\r\n\r\n<p>Este curso le ayudar&aacute; a convertirse en un profesional con mayor comprensi&oacute;n sobre lo m&aacute;s actual del Mercado Financiero de una forma &aacute;gil y eficiente que le facilitar&aacute; la toma de decisiones.</p>\r\n\r\n<h2>&iquest;Qu&eacute; vas a encontrar en este curso?</h2>\r\n\r\n<p>Conferencias en video, realizada por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2>Dirigido a</h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros.</p>\r\n\r\n<h2>Informaci&oacute;n Adicional</h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 4</p>\r\n\r\n<p>V&iacute;deo: Con informaci&oacute;n relevante al Tema</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Manual y Certificados descargables</p>', '2.png', ' INTELIGENCIA ARTIFICIAL BANNER.png', '2-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '2:30hrs', 0, '2020-10-18 01:08:30', '2021-03-22 16:19:15', NULL),
(3, 10074, 'Cripto Trading.', 'cripto-trading', 5, 0, 3, '<p><strong>By Erick Reynaga</strong></p>\r\n\r\n<p>En este m&oacute;dulo se desarrollar&aacute; el origen, la definici&oacute;n y el concepto de las llamadas &ldquo;Criptomonedas&rdquo;, que son algoritmos criptogr&aacute;ficos para garantizar su seguridad y su valor.</p>\r\n\r\n<h2>Descripci&oacute;n del curso</h2>\r\n\r\n<p>En este m&oacute;dulo se desarrollar&aacute; el origen, la definici&oacute;n y el concepto de las llamadas &ldquo;Criptomonedas&rdquo;, que son algoritmos criptogr&aacute;ficos para garantizar su seguridad y su valor. Conocer&aacute; c&oacute;mo opera esta divisa digital y su transacci&oacute;n y operaci&oacute;n virtual. Incrementar&aacute; su conocimiento y as&iacute; mismo sus habilidades para considerar invertir y diversificar su cartera de inversiones, con esta interesante opci&oacute;n</p>\r\n\r\n<h2>&iquest;Qu&eacute; vas a encontrar en este curso?</h2>\r\n\r\n<p>Conferencias en video, realizada por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2>Dirigido a</h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros.</p>\r\n\r\n<h2>Informaci&oacute;n Adicional</h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 5</p>\r\n\r\n<p>V&iacute;deo: Con informaci&oacute;n relevante al Tema</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Manual y Certificados descargables</p>', '3.png', ' CRYPTO BANNER.png', '3-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, NULL, 0, '2020-10-18 01:42:10', '2021-03-23 22:03:06', NULL),
(4, 10073, 'Int. Divisas Forex y Econometría', 'int-divisas-forex-y-econometria', 6, 0, 3, '<p><strong>Por Mirela Vuckovic</strong></p>\r\n\r\n<p>Profundizar&aacute; en el conocimiento del an&aacute;lisis econ&oacute;mico.</p>\r\n\r\n<h2>Descripci&oacute;n del curso</h2>\r\n\r\n<p>Profundizar&aacute; en el conocimiento del an&aacute;lisis econ&oacute;mico. Este curso concluir&aacute; el an&aacute;lisis financiero. Recuerde que esto incluye las tres categor&iacute;as como son:&nbsp; el an&aacute;lisis econom&eacute;trico, fundamental y t&eacute;cnico. Empieza a modelar tu an&aacute;lisis en el conocimiento adquirido en los niveles anteriores y empieza a poner en pr&aacute;ctica tus habilidades. Aprenda a fondo c&oacute;mo crear an&aacute;lisis econom&eacute;tricos y familiar&iacute;cese con los activos financieros.</p>\r\n\r\n<h2>&iquest;Qu&eacute; vas a encontrar en este curso?</h2>\r\n\r\n<p>Conferencias en video, realizada por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2>Dirigido a</h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros.</p>\r\n\r\n<h2>Informaci&oacute;n Adicional</h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 8<br />\r\nV&iacute;deo: 2 Horas y 49 minutos<br />\r\nIdiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)<br />\r\nIncluye: Manual y Certificado descargables</p>', '4.png', 'INTERCAMBIO DE DIVISAS Y ANÁLISIS ECONOMÉTRICO BANNER.png', '4-thumbnail.png', 1, '4.jpg', 'Portada Intercambio Divisas.jpg', '2020-10-31', 1, 0, 0, 0, '2:49', 0, '2020-10-19 22:59:24', '2021-03-22 16:32:43', NULL),
(5, 10074, 'Cripto Finanzas', 'cripto-finanzas', 5, 0, 3, '<p><strong>Por Erick Reynaga</strong></p>\r\n\r\n<p>La criptomoneda o criptodivisa (cryptocurrency en ingl&eacute;s), es definido como un medio digital de intercambio.</p>\r\n\r\n<h2>Descripci&oacute;n del curso</h2>\r\n\r\n<p>En este m&oacute;dulo se conocer&aacute; los principios b&aacute;sicos de la criptomoneda, se familiariza con los t&eacute;rminos, conceptos y modos en los que operan y hacen rentable a la criptomoneda. Existen sofisticados instrumentos de Criptofinanzas incluyendo mecanismos de financiamiento como las ofertas p&uacute;blicas iniciales de criptomonedas (ICOs) que ser&aacute; abordado de una manera digerible y pr&aacute;ctica para una mayor comprensi&oacute;n del tema. D&aacute;ndole al operador una opci&oacute;n de invertir y de ampliar su cartera de productos mercantiles para sus clientes.</p>\r\n\r\n<h2>&iquest;Qu&eacute; vas a encontrar en este curso?</h2>\r\n\r\n<p>Conferencias en video, realizada por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Dirigido a</h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros.</p>\r\n\r\n<h2>Informaci&oacute;n Adicional</h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 4</p>\r\n\r\n<p>V&iacute;deo: Con informaci&oacute;n relevante al Tema</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Manual y Certificados descargables</p>', '5.png', 'Portada Cripto Trading.png', '5-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '2:10hrs', 0, '2020-10-19 23:54:12', '2021-03-22 16:20:11', NULL),
(6, 10074, 'Análisis Avanzado y Riesgos', 'analisis-avanzado-y-riesgos', 6, 0, 3, '<p><strong>Por Erick Reynaga</strong></p>\r\n\r\n<p>Este nivel le proporcionar&aacute; un amplio conocimiento sobre una variedad de herramientas y enfoques comerciales.</p>\r\n\r\n<h2>Descripci&oacute;n del curso</h2>\r\n\r\n<p>Convertirse en un profesional requiere un amplio conocimiento y habilidades en t&eacute;cnicas y conceptos avanzados. Esto lo ayudar&aacute; a construir estrategias comerciales viables. Adem&aacute;s, aprender&aacute; qu&eacute; son los derivados: opciones, permutas, futuros, etc. Nos enfocaremos nuevamente en este curso en el aspecto psicol&oacute;gico de un operador para formarse como un integrante comercial. Se dar&aacute; gran &eacute;nfasis los an&aacute;lisis de mercado a nivel avanzado, as&iacute; como en los diferentes conceptos de sesgos.</p>\r\n\r\n<h2>&iquest;Qu&eacute; vas a encontrar en este curso?</h2>\r\n\r\n<p>Conferencias en video, realizada por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2>Dirigido a</h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros.</p>\r\n\r\n<h2>Informaci&oacute;n Adicional</h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 9</p>\r\n\r\n<p>V&iacute;deo: 2 Horas y 49 minutos</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Manual y Certificado descargable</p>', '6.png', 'ANÁLISIS AVANZADO Y GESTIÓN DE RIESGOS BANNER.png', '6-thumbnail.png', 1, '6.png', 'ANÁLISIS AVANZADO Y GESTIÓN DE RIESGOS BANNER.png', '2020-10-31', 1, 0, 0, 0, '2:49hrs', 0, '2020-10-20 15:17:42', '2021-03-22 16:20:55', NULL),
(7, 10071, 'Finanzas para todos', 'finanzas-para-todos', 5, 0, 3, '<p><strong>Por Tania Tostado Ramos</strong></p>\r\n\r\n<p>Si eres&nbsp;un principiante en el fascinante mundo de las finanzas, el lugar correcto para iniciar es aqu&iacute;.</p>\r\n\r\n<h2><strong>Descripci&oacute;n del Curso</strong></h2>\r\n\r\n<p>En el nivel de Introducci&oacute;n te familiarizaras con los principios, normas y fundamentos de las finanzas, aprender&aacute;s sobre el&nbsp;<strong>concepto</strong>&nbsp;de activos y riesgos, as&iacute; como la historia del dinero. Obtendr&aacute;s informaci&oacute;n &uacute;til que te permitir&aacute;́ construir tus conocimientos en los niveles m&aacute;s avanzados. Los niveles est&aacute;n interrelacionados y cada nivel representa una extensi&oacute;n de lo que se ha presentado en los niveles anteriores.</p>\r\n\r\n<h2><strong><strong>&iquest;Qu&eacute; vas a encontrar en este curso?</strong></strong></h2>\r\n\r\n<p>Clases en video elaborados bajo la t&eacute;cnica did&aacute;ctica de micro learning, realizadas por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2><strong><strong><strong>Dirigido a</strong></strong></strong></h2>\r\n\r\n<p>Individuos dispuestos a dominar sus conocimientos y habilidades en las finanzas, adem&aacute;s de un enfoque de ense&ntilde;anza innovador y altamente profesional.</p>\r\n\r\n<h2><strong><strong><strong><strong>Informaci&oacute;n Adicional</strong></strong></strong></strong></h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 6</p>\r\n\r\n<p>V&iacute;deo: Con informaci&oacute;n relevante al tema</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (videos subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Material y Certificado descargables</p>', '7.jpg', 'Portada Finanzas para Todos.jpg', '7-thumbnail.jpg', 1, '7.jpg', 'Portada Finanzas para Todos.jpg', '2020-11-03', 1, 0, 0, 0, '2:30HRS', 0, '2020-11-03 20:21:41', '2021-03-22 16:16:08', NULL),
(8, 10074, 'Forex', 'forex', 5, 0, 3, '<p><strong>Por Erick Reynaga</strong></p>\r\n\r\n<p>En este curso aprender&aacute; la regla 80/20 importante para la operaci&oacute;n en mercados financieros.</p>\r\n\r\n<h2>Descripci&oacute;n del curso</h2>\r\n\r\n<p>Durante este curso introductor, comprender&aacute; que los mercados se mueven en un 80% del tiempo debido al an&aacute;lisis t&eacute;cnico y el otro 20%, debido al an&aacute;lisis fundamental. Aprender&aacute; la esencia de estas teor&iacute;as y la forma correcta de implementarlas.&nbsp;</p>\r\n\r\n<p>Adem&aacute;s, comprender&aacute; una de las cosas m&aacute;s cruciales en el comercio: &ldquo;Cu&aacute;ndo es el mejor momento para comprar y vender&rdquo;. Ense&ntilde;arle estos puntos medulares, es nuestro objetivo principal durante este curso.</p>\r\n\r\n<h2>&iquest;Qu&eacute; voy a obtener de este curso?</h2>\r\n\r\n<p>Conferencias en video, realizada por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2>&iquest;Cu&aacute;l es el p&uacute;blico objetivo?</h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros. Si usted es una persona de mente abierta que le encantar&iacute;a explotar los mercados financieros y la moneda digital este curso es para usted.</p>\r\n\r\n<h2>Informaci&oacute;n Adicional</h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 2</p>\r\n\r\n<p>Material: 1 Manual&nbsp;Descargable en formato PDF</p>\r\n\r\n<p>V&iacute;deo: 2 Horas y 49 minutos</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Manual y Certificado descargables</p>', '8.jpg', 'Portada Forex.jpg', '8-thumbnail.jpg', 0, NULL, NULL, NULL, 1, 0, 0, 0, '2:49', 0, '2020-11-03 20:50:25', '2021-03-22 16:17:20', NULL),
(9, 10080, 'Riesgo y Bolsa', 'riesgo-y-bolsa', 6, 0, 3, '<p>En el nivel 1 nos hemos iniciado en conceptos b&aacute;sicos de productos financieros y los tipos de activos. Este nivel incluye la terminolog&iacute;a y funcionamiento de la bolsa, las acciones, los mercados y sus riesgos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Descripci&oacute;n del Curso</strong></h2>\r\n\r\n<p>Nos enfocaremos en el riesgo, desde sus aspectos cuantitativos y psicol&oacute;gicos.</p>\r\n\r\n<p>Analizaremos los riesgos de los activos financieros en sus entornos micro y macro. As&iacute; como una breve introducci&oacute;n de la criptomoneda</p>\r\n\r\n<h2><strong>&iquest;Qu&eacute; vas a encontrar en este curso?</strong></h2>\r\n\r\n<p>Clases en video elaborados bajo la t&eacute;cnica did&aacute;ctica de micro learning, realizadas por un grupo de especialistas en educaci&oacute;n y producci&oacute;n de materiales educativos online.</p>\r\n\r\n<h2><strong>Dirigido a</strong></h2>\r\n\r\n<p>Individuos dispuestos a aumentar sus conocimientos en finanzas y los mercados financieros</p>\r\n\r\n<h2><strong>Informaci&oacute;n Adicional</strong></h2>\r\n\r\n<p>N&uacute;mero de Lecciones: 6</p>\r\n\r\n<p>V&iacute;deo: 2 horas y 49 minutos</p>\r\n\r\n<p>Idiomas: Ingl&eacute;s y espa&ntilde;ol (video subt&iacute;tulos en varios idiomas)</p>\r\n\r\n<p>Incluye: Manual y Certificado descargables</p>', '9.jpg', 'Portada Riesgo y Bolsa.jpg', '9-thumbnail.jpg', 1, '9.jpg', 'Portada Riesgo y Bolsa.jpg', '2020-11-11', 1, 0, 0, 0, '2:49hrs', 0, '2020-11-11 22:41:26', '2021-03-22 16:17:51', NULL),
(10, 10080, 'Marketing Digital', 'marketing-digital', 3, 0, 2, '<p>Para qu&eacute; aprender Marketing Digital y Negocios Online?</p>\r\n\r\n<p>Durante el 2017 fue tendencia la noticia de Jeff Bezos, creador de Amazon, como el hombre m&aacute;s rico del mundo, y todo esto gracias al&nbsp;<strong>e-commerce</strong>. Que una persona en poco m&aacute;s de 20 a&ntilde;os haya logrado acumular tal fortuna por encima de empresarios de todos los rubros econ&oacute;micos, incluyendo el tecnol&oacute;gico, es una reiteraci&oacute;n de la importancia del comercio en l&iacute;nea, y de que lo que conocemos como e-commerce apenas es el comienzo.</p>', '10.png', 'Marketing Digital Portada.png', '10-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '2:00', 0, '2020-11-11 23:29:49', '2021-03-25 10:29:47', NULL),
(11, 10080, 'Cómo manejar una discusión?', 'como-manejar-una-discusion', 1, 0, 1, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '11.png', 'como manejar una discusión portada.png', '11-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '2:30hrs', 0, '2020-12-29 17:33:17', '2021-03-23 22:10:20', NULL),
(12, 10071, 'Oratoria', 'oratoria', 7, 0, 4, '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '12.png', 'Oratoria portada.png', '12-thumbnail.png', 0, NULL, NULL, NULL, 0, 0, 0, 0, '1:30', 0, '2021-01-11 21:59:31', '2021-03-24 22:55:16', NULL),
(13, 10073, 'Reuniones Efectivas', 'reuniones-efectivas', 2, 0, 1, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '13.png', 'Reuniones efectivas portada1.png', '13-thumbnail.jpg', 1, '13.jpg', 'Reuniones efectivas portada.jpg', '2021-03-24', 1, 0, 0, 0, '1:30hrs', 0, '2021-03-23 21:53:13', '2021-03-24 23:22:08', NULL),
(14, 10123, 'Cómo manejar actitudes hostiles', 'como-manejar-actitudes-hostiles', 3, 0, 2, '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '14.jpg', 'Actitudes hostiles portada.jpg', '14-thumbnail.jpg', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1:45', 0, '2021-03-23 22:23:47', '2021-03-23 22:23:47', NULL),
(15, 10080, 'Fitness', 'fitness', 7, 0, 4, '<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '15.png', 'Fitness portada.png', '15-thumbnail.jpg', 1, '15.png', 'Fitness portada.png', '2021-03-24', 1, 0, 0, 0, '2:00', 0, '2021-03-24 23:16:16', '2021-03-24 23:16:59', NULL),
(16, 10080, 'Fundamentos y Legalidad', 'fundamentos-y-legalidad', 5, 0, 3, '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '16.png', 'Fundamentos y Legalidad Portada.png', '16-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, NULL, 0, '2021-03-30 23:01:29', '2021-03-30 23:01:29', NULL),
(17, 10123, 'Nutrición', 'nutricion', 7, 0, 4, '<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '17.png', 'Nutrición Portada.png', '17-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '2:30hrs', 0, '2021-03-30 23:14:29', '2021-03-30 23:14:29', NULL),
(18, 10080, 'Administración Eficaz del tiempo', 'administracion-eficaz-del-tiempo', 1, 0, 1, '<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '18.png', 'Gestión del Tiempo Portada.png', '18-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '3:00hrs', 0, '2021-03-30 23:27:11', '2021-03-30 23:27:11', NULL),
(19, 10123, 'De Emprendedor a Empresario', 'de-emprendedor-a-empresario', 4, 0, 2, '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '19.png', 'Emprendedor a Empresario.png', '19-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1:45hrs', 0, '2021-03-30 23:42:35', '2021-03-30 23:42:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_orden`
--

CREATE TABLE `courses_orden` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total` float NOT NULL,
  `detalles` text,
  `type_product` varchar(50) NOT NULL DEFAULT 'membresia',
  `idtransacion_stripe` varchar(100) DEFAULT NULL,
  `idtransacion_coinpaymen` varchar(100) DEFAULT NULL,
  `idtransacion_paypal` text,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 - procesando, 1 - completado, 2 - cancelado',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses_orden`
--

INSERT INTO `courses_orden` (`id`, `user_id`, `total`, `detalles`, `type_product`, `idtransacion_stripe`, `idtransacion_coinpaymen`, `idtransacion_paypal`, `status`, `created_at`, `updated_at`) VALUES
(1, 10079, 1, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":1,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', 'tok_1HeTl7FKU1xhP2bFQqw0PVS8', NULL, NULL, 1, '2020-10-20 15:56:56', '2020-10-20 15:56:56'),
(2, 10082, 1, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":1,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', 'tok_1HehV5FKU1xhP2bFIyiXBg24', NULL, NULL, 1, '2020-10-21 06:37:16', '2020-10-21 06:37:16'),
(3, 10094, 16, '{\"idmembresia\":5,\"nombre\":\"Pro\",\"precio\":16,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 1, '2020-11-03 18:12:34', '2020-11-03 18:12:34'),
(4, 10090, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 1, '2020-11-04 06:22:24', '2020-11-04 06:22:24'),
(5, 10091, 22, '{\"idmembresia\":2,\"nombre\":\"Basico\",\"precio\":22,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 1, '2020-11-04 06:25:48', '2020-11-04 06:25:48'),
(6, 10092, 20, '{\"idmembresia\":3,\"nombre\":\"Intermedio\",\"precio\":20,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 1, '2020-11-04 06:27:21', '2020-11-04 06:27:21'),
(7, 10093, 18, '{\"idmembresia\":4,\"nombre\":\"Avanzado\",\"precio\":18,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 1, '2020-11-04 06:29:36', '2020-11-04 06:29:36'),
(8, 10091, 350, '{\"idmembresia\":6,\"nombre\":\"Pro Anual\",\"precio\":350,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 0, '2020-11-17 07:20:59', '2020-11-17 07:20:59'),
(9, 10091, 350, '{\"idmembresia\":6,\"nombre\":\"Pro Anual\",\"precio\":350,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 0, '2020-11-17 07:22:10', '2020-11-17 07:22:10'),
(10, 10091, 20, '{\"idmembresia\":3,\"nombre\":\"Intermedio\",\"precio\":20,\"links\":0,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\"}', 'membresia', NULL, NULL, NULL, 0, '2020-11-17 07:48:24', '2020-11-17 07:48:24'),
(11, 10091, 20, '{\"idmembresia\":3,\"nombre\":\"Intermedio\",\"precio\":20,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 1, '2020-11-17 08:21:06', '2020-11-17 08:21:06'),
(20, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201120151224', 1, '2020-11-20 13:12:24', '2020-11-20 13:12:24'),
(21, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201124191227', 1, '2020-11-24 17:12:27', '2020-11-24 17:12:27'),
(22, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201129065520', 1, '2020-11-29 04:55:20', '2020-11-29 04:55:20'),
(23, 10091, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201202033617', 1, '2020-12-02 01:36:17', '2020-12-02 01:36:17'),
(24, 10091, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201202203721', 1, '2020-12-02 18:37:21', '2020-12-02 18:37:21'),
(25, 10091, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201202203759', 1, '2020-12-02 18:37:59', '2020-12-02 18:37:59'),
(26, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201203121707', 1, '2020-12-03 10:17:07', '2020-12-03 10:17:07'),
(27, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201203122812', 1, '2020-12-03 10:28:12', '2020-12-03 10:28:12'),
(28, 10076, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201203164402', 1, '2020-12-03 14:44:02', '2020-12-03 14:44:02'),
(29, 10076, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201203175344', 1, '2020-12-03 15:53:44', '2020-12-03 15:53:44'),
(30, 10076, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201203175504', 1, '2020-12-03 15:55:04', '2020-12-03 15:55:04'),
(31, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201204072948', 1, '2020-12-04 05:29:48', '2020-12-04 05:29:48'),
(32, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201204073832', 1, '2020-12-04 05:38:32', '2020-12-04 05:38:32'),
(33, 10086, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201204092634', 1, '2020-12-04 07:26:34', '2020-12-04 07:26:34'),
(34, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201204100756', 1, '2020-12-04 08:07:56', '2020-12-04 08:07:56'),
(35, 10086, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201204101734', 1, '2020-12-04 08:17:34', '2020-12-04 08:17:34'),
(36, 1, 24, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":24,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201204210234', 1, '2020-12-04 19:02:34', '2020-12-04 19:02:34'),
(37, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201204211054', 1, '2020-12-04 19:10:54', '2020-12-04 19:10:54'),
(38, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"no disponible\",\"links\":0}', 'oferta', NULL, NULL, NULL, 0, '2020-12-07 16:30:58', '2020-12-07 16:30:58'),
(39, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"no disponible\",\"links\":0}', 'oferta', NULL, NULL, NULL, 0, '2020-12-07 16:33:06', '2020-12-07 16:33:06'),
(40, 10090, 10.99, '{\"idmembresia\":2,\"nombre\":\"Basico\",\"precio\":10.9900000000000002131628207280300557613372802734375,\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 1, '2020-12-07 16:36:06', '2020-12-07 16:36:06'),
(41, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"no disponible\",\"links\":0}', 'oferta', NULL, NULL, NULL, 0, '2020-12-07 18:30:08', '2020-12-07 18:30:08'),
(42, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"no disponible\",\"links\":0}', 'oferta', NULL, NULL, NULL, 0, '2020-12-07 18:32:13', '2020-12-07 18:32:13'),
(43, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"no disponible\",\"links\":0}', 'oferta', NULL, NULL, NULL, 0, '2020-12-07 18:33:25', '2020-12-07 18:33:25'),
(44, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"no disponible\",\"links\":0}', 'oferta', NULL, NULL, NULL, 0, '2020-12-07 18:35:08', '2020-12-07 18:35:08'),
(45, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Principiante\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"img\":\"no disponible\",\"links\":0}', 'oferta', NULL, NULL, NULL, 0, '2020-12-07 18:35:37', '2020-12-07 18:35:37'),
(46, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 19:54:59', '2020-12-07 19:54:59'),
(47, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 19:57:55', '2020-12-07 19:57:55'),
(48, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 19:58:32', '2020-12-07 19:58:32'),
(49, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 19:59:00', '2020-12-07 19:59:00'),
(50, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 19:59:31', '2020-12-07 19:59:31'),
(51, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 19:59:50', '2020-12-07 19:59:50'),
(52, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 20:01:47', '2020-12-07 20:01:47'),
(53, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 20:02:15', '2020-12-07 20:02:15'),
(54, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 20:02:25', '2020-12-07 20:02:25'),
(55, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 20:02:49', '2020-12-07 20:02:49'),
(56, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-07 20:03:07', '2020-12-07 20:03:07'),
(57, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201207220432', 1, '2020-12-07 20:04:32', '2020-12-07 20:04:32'),
(58, 1, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-08 05:50:00', '2020-12-08 05:50:00'),
(59, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201208075032', 1, '2020-12-08 05:50:32', '2020-12-08 05:50:32'),
(60, 1, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-08 05:52:21', '2020-12-08 05:52:21'),
(61, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-08 05:53:39', '2020-12-08 05:53:39'),
(62, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-08 05:55:20', '2020-12-08 05:55:20'),
(63, 1, 100, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":100,\"tipo\":\"Anual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-08 06:03:42', '2020-12-08 06:03:42'),
(64, 10101, 0, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":0,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 10:59:38', '2020-12-09 10:59:38'),
(65, 10102, 0, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":0,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-09 11:59:07', '2020-12-09 11:59:07'),
(66, 10102, 0, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":0,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, '20201209140007', 1, '2020-12-09 12:00:07', '2020-12-09 12:00:07'),
(67, 10102, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 12:14:29', '2020-12-09 12:14:29'),
(68, 10101, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 13:16:44', '2020-12-09 13:16:44'),
(69, 10101, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 13:36:34', '2020-12-09 13:36:34'),
(70, 10103, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 14:02:29', '2020-12-09 14:02:29'),
(71, 10103, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 14:08:30', '2020-12-09 14:08:30'),
(72, 10103, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 14:23:43', '2020-12-09 14:23:43'),
(73, 10104, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 14:35:26', '2020-12-09 14:35:26'),
(74, 10104, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 14:38:27', '2020-12-09 14:38:27'),
(75, 10104, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 14:50:19', '2020-12-09 14:50:19'),
(76, 10101, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-09 14:59:45', '2020-12-09 14:59:45'),
(77, 10101, 450, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":450,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 12:54:04', '2020-12-10 12:54:04'),
(78, 10101, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 13:33:22', '2020-12-10 13:33:22'),
(79, 10101, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HwvzuFKU1xhP2bFQXobZK0k', NULL, NULL, 1, '2020-12-10 13:44:26', '2020-12-10 13:44:28'),
(80, 10102, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 13:51:54', '2020-12-10 13:51:54'),
(81, 10105, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, '20201210155837', 1, '2020-12-10 13:58:37', '2020-12-10 13:58:37'),
(82, 10105, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:04:55', '2020-12-10 14:04:55'),
(83, 10105, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:11:51', '2020-12-10 14:11:51'),
(84, 10105, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:12:30', '2020-12-10 14:12:30'),
(85, 10105, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:13:07', '2020-12-10 14:13:07'),
(86, 10105, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:14:08', '2020-12-10 14:14:08'),
(87, 10105, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:15:07', '2020-12-10 14:15:07'),
(88, 10105, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:20:11', '2020-12-10 14:20:11'),
(89, 10105, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-10 14:21:41', '2020-12-10 14:21:41'),
(90, 10105, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 14:22:51', '2020-12-10 14:22:51'),
(91, 10105, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-10 16:12:22', '2020-12-10 16:12:22'),
(92, 10105, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, '20201210181314', 1, '2020-12-10 16:13:14', '2020-12-10 16:13:14'),
(93, 10101, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 16:40:04', '2020-12-10 16:40:04'),
(94, 10101, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 16:41:48', '2020-12-10 16:41:48'),
(95, 10101, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 16:42:51', '2020-12-10 16:42:51'),
(96, 10086, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10085}', 'membresia', NULL, NULL, '20201210212351', 1, '2020-12-10 19:23:51', '2020-12-10 19:23:51'),
(97, 10086, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10085}', 'membresia', NULL, NULL, '20201210212408', 1, '2020-12-10 19:24:08', '2020-12-10 19:24:08'),
(98, 10086, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10085}', 'membresia', NULL, NULL, '20201210212436', 1, '2020-12-10 19:24:36', '2020-12-10 19:24:36'),
(99, 10086, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-10 19:25:38', '2020-12-10 19:25:38'),
(100, 10102, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-10 19:30:21', '2020-12-10 19:30:21'),
(101, 10102, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1Hx1UBFKU1xhP2bFjG5RI4RV', NULL, NULL, 1, '2020-12-10 19:36:02', '2020-12-10 19:36:04'),
(102, 10103, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1Hx1XDFKU1xhP2bFW4ORHNki', NULL, NULL, 1, '2020-12-10 19:39:10', '2020-12-10 19:39:12'),
(103, 10105, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 19:45:34', '2020-12-10 19:45:34'),
(104, 10105, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 19:46:37', '2020-12-10 19:46:37'),
(105, 10106, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10105}', 'membresia', NULL, NULL, '20201210214908', 1, '2020-12-10 19:49:08', '2020-12-10 19:49:08'),
(106, 10106, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10105}', 'membresia', NULL, NULL, '20201210215415', 1, '2020-12-10 19:54:15', '2020-12-10 19:54:15'),
(107, 10105, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 20:01:58', '2020-12-10 20:01:58'),
(108, 10105, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 20:02:07', '2020-12-10 20:02:07'),
(109, 10105, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 20:02:17', '2020-12-10 20:02:17'),
(110, 10105, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 20:02:27', '2020-12-10 20:02:27'),
(111, 10105, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 20:02:42', '2020-12-10 20:02:42'),
(112, 10105, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 20:02:57', '2020-12-10 20:02:57'),
(113, 10105, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10101}', 'membresia', NULL, NULL, NULL, 1, '2020-12-10 20:04:54', '2020-12-10 20:04:54'),
(114, 10106, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-10 20:14:18', '2020-12-10 20:14:18'),
(115, 10106, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10105}', 'membresia', NULL, NULL, '20201210221425', 1, '2020-12-10 20:14:25', '2020-12-10 20:14:25'),
(116, 10106, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-10 20:15:41', '2020-12-10 20:15:41'),
(117, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211120456', 1, '2020-12-11 10:04:56', '2020-12-11 10:04:56'),
(118, 10107, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-11 13:00:04', '2020-12-11 13:00:04'),
(119, 10107, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201211154051', 1, '2020-12-11 13:40:51', '2020-12-11 13:40:51'),
(120, 10107, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-11 13:51:55', '2020-12-11 13:51:55'),
(121, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211155515', 1, '2020-12-11 13:55:15', '2020-12-11 13:55:15'),
(122, 10108, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201211155524', 1, '2020-12-11 13:55:24', '2020-12-11 13:55:24'),
(123, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211160206', 1, '2020-12-11 14:02:06', '2020-12-11 14:02:06'),
(124, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211160455', 1, '2020-12-11 14:04:55', '2020-12-11 14:04:55'),
(125, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211160507', 1, '2020-12-11 14:05:07', '2020-12-11 14:05:07'),
(126, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211160524', 1, '2020-12-11 14:05:24', '2020-12-11 14:05:24'),
(127, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211160541', 1, '2020-12-11 14:05:41', '2020-12-11 14:05:41'),
(128, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211161011', 1, '2020-12-11 14:10:11', '2020-12-11 14:10:11'),
(129, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201211162249', 1, '2020-12-11 14:22:49', '2020-12-11 14:22:49'),
(130, 10107, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HxJHhFKU1xhP2bFOuuHeqCj', NULL, NULL, 1, '2020-12-11 14:36:25', '2020-12-11 14:36:28'),
(131, 10107, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201211171236', 1, '2020-12-11 15:12:36', '2020-12-11 15:12:36'),
(132, 10107, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HxKAHFKU1xhP2bFEV6ad1gd', NULL, NULL, 1, '2020-12-11 15:32:45', '2020-12-11 15:32:47'),
(133, 10107, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-11 15:34:06', '2020-12-11 15:34:06'),
(134, 10107, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201211173608', 1, '2020-12-11 15:36:08', '2020-12-11 15:36:08'),
(135, 10107, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-12 11:25:37', '2020-12-12 11:25:37'),
(136, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-12 12:41:02', '2020-12-12 12:41:02'),
(137, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201212144343', 0, '2020-12-12 12:43:43', '2020-12-12 12:43:43'),
(138, 1, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201212145114', 1, '2020-12-12 12:51:14', '2020-12-12 12:51:14'),
(139, 10109, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HyGRrFKU1xhP2bFdWDQRavO', NULL, NULL, 1, '2020-12-14 05:46:48', '2020-12-14 05:46:50'),
(140, 10110, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HyP0GFKU1xhP2bFWadW10OY', NULL, NULL, 1, '2020-12-14 14:54:52', '2020-12-14 14:54:54'),
(141, 10110, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10107}', 'membresia', NULL, NULL, '20201214171653', 1, '2020-12-14 15:16:53', '2020-12-14 15:16:53'),
(142, 10110, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10107}', 'membresia', NULL, NULL, '20201214172025', 1, '2020-12-14 15:20:25', '2020-12-14 15:20:25'),
(143, 10111, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-14 15:39:27', '2020-12-14 15:39:27'),
(144, 10110, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10107}', 'membresia', NULL, NULL, NULL, 1, '2020-12-14 16:09:24', '2020-12-14 16:09:24'),
(145, 10110, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10107}', 'membresia', NULL, NULL, '20201214181232', 1, '2020-12-14 16:12:32', '2020-12-14 16:12:32'),
(146, 10112, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201214181401', 1, '2020-12-14 16:14:01', '2020-12-14 16:14:01'),
(147, 10110, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HyQInFKU1xhP2bFa30P6RpR', NULL, NULL, 1, '2020-12-14 16:18:04', '2020-12-14 16:18:07'),
(148, 10112, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HyQJ3FKU1xhP2bFLZZoo3g2', NULL, NULL, 1, '2020-12-14 16:18:21', '2020-12-14 16:18:23'),
(149, 10112, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-14 16:24:53', '2020-12-14 16:24:53'),
(150, 10110, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10107}', 'membresia', NULL, NULL, NULL, 1, '2020-12-14 16:26:27', '2020-12-14 16:26:27'),
(151, 10110, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10107}', 'membresia', NULL, NULL, NULL, 1, '2020-12-14 16:33:42', '2020-12-14 16:33:42'),
(152, 10112, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-14 16:34:21', '2020-12-14 16:34:21'),
(153, 10113, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201214205218', 1, '2020-12-14 18:52:18', '2020-12-14 18:52:18'),
(154, 10113, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', 'tok_1HyT1WFKU1xhP2bFn8moomFe', NULL, NULL, 1, '2020-12-14 19:12:26', '2020-12-14 19:12:28'),
(155, 10113, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-14 19:21:24', '2020-12-14 19:21:24'),
(156, 10113, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2020-12-14 19:25:27', '2020-12-14 19:25:27'),
(157, 10113, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-14 19:26:26', '2020-12-14 19:26:26'),
(158, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"no disponible\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-16 19:05:59', '2020-12-16 19:05:59'),
(159, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 0, '2020-12-16 19:08:46', '2020-12-16 19:08:46'),
(160, 10076, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20201216210919', 0, '2020-12-16 19:09:19', '2020-12-16 19:09:19'),
(161, 10081, 10, '{\"idmembresia\":20,\"nombre\":\"noble\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/offers\\/offer_8_1610482242.png\",\"links\":10075}', 'oferta', NULL, NULL, NULL, 0, '2021-01-12 13:18:33', '2021-01-12 13:18:33'),
(162, 10081, 10, '{\"idmembresia\":20,\"nombre\":\"noble\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/offers\\/offer_8_1610482242.png\",\"links\":10075}', 'oferta', NULL, NULL, '20210112152842', 0, '2021-01-12 13:28:42', '2021-01-12 13:28:42'),
(163, 10081, 10, '{\"idmembresia\":20,\"nombre\":\"noble\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/offers\\/offer_8_1610482242.png\",\"links\":10075}', 'oferta', NULL, NULL, '20210112153056', 0, '2021-01-12 13:30:56', '2021-01-12 13:30:56'),
(164, 10081, 10, '{\"idmembresia\":20,\"nombre\":\"noble\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/offers\\/offer_8_1610482242.png\",\"links\":10075}', 'oferta', NULL, NULL, NULL, 1, '2021-01-12 13:32:39', '2021-01-12 13:32:39'),
(165, 10115, 19.99, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":19.989999999999998436805981327779591083526611328125,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10114}', 'membresia', 'tok_1I9gOOFKU1xhP2bFFKo12fBn', NULL, NULL, 1, '2021-01-14 17:42:27', '2021-01-14 17:42:27'),
(166, 10115, 29.99, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":29.989999999999998436805981327779591083526611328125,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10114}', 'membresia', NULL, NULL, '20210114194340', 0, '2021-01-14 17:43:40', '2021-01-14 17:43:40'),
(167, 10072, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-16 06:55:08', '2021-01-16 06:55:08'),
(168, 10101, 39.99, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":39.99000000000000198951966012828052043914794921875,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10086}', 'membresia', NULL, NULL, NULL, 1, '2021-01-16 06:58:41', '2021-01-16 06:58:41'),
(169, 10101, 10, '{\"idmembresia\":21,\"nombre\":\"Prueba de menciones\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/offers\\/offer_10_1610806492.png\",\"links\":10086}', 'oferta', NULL, NULL, NULL, 1, '2021-01-16 07:16:22', '2021-01-16 07:16:22'),
(170, 10107, 39.99, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":39.99000000000000198951966012828052043914794921875,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-25 14:16:02', '2021-01-25 14:16:02'),
(171, 10126, 20, '{\"idmembresia\":22,\"nombre\":\"223\",\"precio\":20,\"tipo\":\"\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/offers\\/offer_12_1611778417.png\",\"links\":10075}', 'oferta', NULL, NULL, NULL, 0, '2021-01-27 13:14:58', '2021-01-27 13:14:58'),
(172, 10126, 20, '{\"idmembresia\":22,\"nombre\":\"223\",\"precio\":20,\"tipo\":\"\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/offers\\/offer_12_1611778417.png\",\"links\":10075}', 'oferta', NULL, NULL, '20210127151524', 0, '2021-01-27 13:15:24', '2021-01-27 13:15:24'),
(173, 10126, 19.99, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":19.989999999999998436805981327779591083526611328125,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":10075}', 'membresia', NULL, NULL, NULL, 0, '2021-01-27 13:28:24', '2021-01-27 13:28:24'),
(174, 10073, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 0, '2021-02-07 11:37:43', '2021-02-07 11:37:43'),
(175, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/mybusinessacademypro.com\\/academia\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2021-04-06 11:45:36', '2021-04-06 11:45:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_tags`
--

CREATE TABLE `courses_tags` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `courses_tags`
--

INSERT INTO `courses_tags` (`id`, `course_id`, `tag_id`) VALUES
(57, 7, 1),
(58, 9, 1),
(60, 2, 1),
(61, 3, 1),
(62, 5, 1),
(63, 6, 1),
(64, 4, 1),
(66, 13, 1),
(68, 14, 1),
(69, 12, 1),
(70, 15, 1),
(72, 10, 1),
(73, 11, 1),
(74, 1, 1),
(75, 16, 1),
(76, 17, 1),
(77, 18, 1),
(78, 19, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_users`
--

CREATE TABLE `courses_users` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  `progress` int NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `finish_date` date DEFAULT NULL,
  `certificate` tinyint(1) NOT NULL DEFAULT '0',
  `favorite` int UNSIGNED DEFAULT NULL,
  `language` varchar(2) NOT NULL DEFAULT 'es',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses_users`
--

INSERT INTO `courses_users` (`id`, `course_id`, `user_id`, `progress`, `start_date`, `finish_date`, `certificate`, `favorite`, `language`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10079, 0, '2020-10-20', NULL, 0, 0, 'es', '2020-10-20 18:00:08', '2021-03-25 21:45:50', NULL),
(3, 1, 10076, 100, '2020-10-20', '2020-12-08', 1, 0, 'es', '2020-10-20 18:04:48', '2021-03-25 21:45:50', NULL),
(4, 6, 10082, 0, '2020-10-22', NULL, 0, 0, 'es', '2020-10-22 15:14:43', '2021-03-25 21:45:50', NULL),
(5, 1, 10086, 100, '2020-10-26', '2020-11-27', 1, 0, 'es', '2020-10-26 14:20:15', '2021-03-25 21:45:50', NULL),
(7, 6, 10075, 60, '2020-10-28', NULL, 0, 0, 'es', '2020-10-28 20:01:04', '2021-03-25 21:45:50', NULL),
(8, 6, 10086, 100, '2020-10-31', '2020-12-05', 1, 0, 'es', '2020-10-31 02:34:55', '2021-03-25 21:45:50', NULL),
(9, 5, 10094, 0, '2020-11-04', NULL, 0, 0, 'es', '2020-11-04 06:19:57', '2021-03-25 21:45:50', NULL),
(10, 3, 10090, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:41:22', '2021-03-25 21:45:50', NULL),
(11, 7, 10090, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:43:11', '2021-03-25 21:45:50', NULL),
(12, 4, 10091, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:46:03', '2021-03-25 21:45:50', NULL),
(13, 8, 10092, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:46:55', '2021-03-25 21:45:50', NULL),
(14, 4, 10092, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:48:18', '2021-03-25 21:45:50', NULL),
(15, 2, 10093, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:50:22', '2021-03-25 21:45:50', NULL),
(17, 7, 10093, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:53:20', '2021-03-25 21:45:50', NULL),
(18, 4, 10093, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:56:31', '2021-03-25 21:45:50', NULL),
(19, 2, 10094, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 00:58:59', '2021-03-25 21:45:50', NULL),
(20, 4, 10094, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 01:02:38', '2021-03-25 21:45:50', NULL),
(21, 3, 10093, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 02:13:51', '2021-03-25 21:45:50', NULL),
(22, 1, 10092, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 02:17:23', '2021-03-25 21:45:50', NULL),
(23, 1, 10092, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 02:17:46', '2021-03-25 21:45:50', NULL),
(24, 2, 10092, 0, '2020-11-08', NULL, 0, 0, 'es', '2020-11-08 02:24:30', '2021-03-25 21:45:50', NULL),
(25, 7, 10076, 0, '2020-11-09', NULL, 0, 0, 'es', '2020-11-09 21:44:20', '2021-03-25 21:45:50', NULL),
(26, 3, 10076, 0, '2020-11-10', NULL, 0, 0, 'es', '2020-11-10 14:58:23', '2021-03-25 21:45:50', NULL),
(27, 6, 10076, 0, '2020-11-11', NULL, 0, 0, 'es', '2020-11-11 09:43:36', '2021-03-25 21:45:50', NULL),
(28, 4, 10076, 100, '2020-11-11', NULL, 0, 0, 'es', '2020-11-11 10:27:27', '2021-03-25 21:45:50', NULL),
(29, 8, 10086, 100, '2020-11-11', '2020-12-02', 1, 0, 'es', '2020-11-11 20:18:21', '2021-03-25 21:45:50', NULL),
(30, 7, 10086, 100, '2020-11-11', '2020-12-04', 1, 0, 'es', '2020-11-11 23:20:24', '2021-03-25 21:45:50', NULL),
(32, 5, 10086, 100, '2020-11-12', '2020-12-02', 1, 0, 'es', '2020-11-12 08:54:31', '2021-03-25 21:45:50', NULL),
(33, 2, 10086, 100, '2020-11-12', '2020-12-02', 1, 0, 'es', '2020-11-12 09:06:48', '2021-03-25 21:45:50', NULL),
(34, 9, 10086, 100, '2020-11-12', '2020-12-04', 1, 0, 'es', '2020-11-12 22:23:03', '2021-03-25 21:45:50', NULL),
(35, 8, 10091, 0, '2020-11-17', NULL, 0, 0, 'es', '2020-11-17 09:12:24', '2021-03-25 21:45:50', NULL),
(36, 6, 10091, 0, '2020-12-02', NULL, 0, 0, 'es', '2020-12-02 03:39:47', '2021-03-25 21:45:50', NULL),
(37, 3, 10086, 100, '2020-12-02', '2020-12-02', 1, 0, 'es', '2020-12-02 10:53:32', '2021-03-25 21:45:50', NULL),
(38, 4, 10086, 100, '2020-12-02', '2020-12-02', 1, 0, 'es', '2020-12-02 12:58:07', '2021-03-25 21:45:50', NULL),
(39, 1, 10091, 0, '2020-12-02', NULL, 0, 0, 'es', '2020-12-02 21:01:13', '2021-03-25 21:45:50', NULL),
(40, 10, 10086, 0, '2020-12-04', NULL, 0, 0, 'es', '2020-12-04 09:37:59', '2021-03-25 21:45:50', NULL),
(41, 5, 10076, 0, '2020-12-04', NULL, 0, 0, 'es', '2020-12-04 18:22:57', '2021-03-25 21:45:50', NULL),
(42, 4, 10101, 100, '2020-12-09', '2020-12-09', 1, 0, 'es', '2020-12-09 13:06:56', '2021-03-25 21:45:50', NULL),
(43, 2, 10101, 100, '2020-12-09', '2020-12-09', 1, 0, 'es', '2020-12-09 13:23:03', '2021-03-25 21:45:50', NULL),
(44, 8, 10103, 0, '2020-12-09', NULL, 0, 0, 'es', '2020-12-09 16:06:43', '2021-03-25 21:45:50', NULL),
(45, 7, 10104, 100, '2020-12-09', '2020-12-09', 1, 0, 'es', '2020-12-09 16:39:32', '2021-03-25 21:45:50', NULL),
(46, 8, 10104, 0, '2020-12-09', NULL, 0, 0, 'es', '2020-12-09 16:51:10', '2021-03-25 21:45:50', NULL),
(47, 7, 10105, 100, '2020-12-10', '2020-12-10', 1, 0, 'es', '2020-12-10 16:05:32', '2021-03-25 21:45:50', NULL),
(48, 8, 10105, 100, '2020-12-10', '2020-12-10', 1, 0, 'es', '2020-12-10 17:22:22', '2021-03-25 21:45:50', NULL),
(49, 6, 10105, 100, '2020-12-10', '2020-12-10', 1, 0, 'es', '2020-12-10 18:16:08', '2021-03-25 21:45:50', NULL),
(50, 8, 10101, 0, '2020-12-10', NULL, 0, 0, 'es', '2020-12-10 18:52:09', '2021-03-25 21:45:50', NULL),
(51, 9, 10105, 0, '2020-12-10', NULL, 0, 0, 'es', '2020-12-10 21:45:49', '2021-03-25 21:45:50', NULL),
(52, 9, 10107, 100, '2020-12-11', '2020-12-11', 1, 0, 'es', '2020-12-11 15:05:45', '2021-03-25 21:45:50', NULL),
(53, 2, 10107, 0, '2020-12-11', NULL, 0, 0, 'es', '2020-12-11 16:12:45', '2021-03-25 21:45:50', NULL),
(54, 7, 10107, 100, '2020-12-11', '2020-12-11', 1, 0, 'es', '2020-12-11 16:59:03', '2021-03-25 21:45:50', NULL),
(55, 8, 10107, 100, '2020-12-12', '2020-12-12', 1, 0, 'es', '2020-12-12 13:25:13', '2021-03-25 21:45:50', NULL),
(56, 9, 10109, 100, '2020-12-14', '2020-12-14', 1, 0, 'es', '2020-12-14 07:47:54', '2021-03-25 21:45:50', NULL),
(58, 6, 10110, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 17:20:00', '2021-03-25 21:45:50', NULL),
(59, 5, 10110, 100, '2020-12-14', '2020-12-14', 1, 0, 'es', '2020-12-14 17:32:00', '2021-03-25 21:45:50', NULL),
(60, 9, 10110, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 18:15:49', '2021-03-25 21:45:50', NULL),
(61, 9, 10112, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 18:15:57', '2021-03-25 21:45:50', NULL),
(62, 4, 10112, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 18:16:41', '2021-03-25 21:45:50', NULL),
(63, 1, 10110, 100, '2020-12-14', '2020-12-14', 1, 0, 'es', '2020-12-14 18:18:39', '2021-03-25 21:45:50', NULL),
(64, 7, 10112, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 18:18:39', '2021-03-25 21:45:50', NULL),
(65, 2, 10112, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 18:26:30', '2021-03-25 21:45:50', NULL),
(66, 8, 10112, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 18:34:55', '2021-03-25 21:45:50', NULL),
(67, 5, 10112, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 18:35:16', '2021-03-25 21:45:50', NULL),
(68, 9, 10113, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 20:59:48', '2021-03-25 21:45:50', NULL),
(69, 3, 10113, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 21:07:19', '2021-03-25 21:45:50', NULL),
(70, 8, 10113, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 21:20:01', '2021-03-25 21:45:50', NULL),
(71, 1, 10113, 0, '2020-12-14', NULL, 0, 0, 'es', '2020-12-14 22:41:19', '2021-03-25 21:45:50', NULL),
(72, 9, 1, 100, '2020-12-15', NULL, 0, 0, 'es', '2020-12-15 12:39:54', '2021-03-25 21:45:50', NULL),
(73, 4, 10107, 0, '2020-12-18', NULL, 0, 0, 'es', '2020-12-18 12:38:27', '2021-03-25 21:45:50', NULL),
(74, 6, 10107, 0, '2020-12-18', NULL, 0, 0, 'es', '2020-12-18 12:41:36', '2021-03-25 21:45:50', NULL),
(75, 1, 10107, 100, '2020-12-23', '2020-12-23', 1, 0, 'es', '2020-12-23 18:24:33', '2021-03-25 21:45:50', NULL),
(76, 1, 1, 83, '2020-12-28', '2021-01-11', 1, 0, 'es', '2020-12-28 18:31:53', '2021-03-25 21:45:51', NULL),
(77, 8, 10090, 0, '2020-12-28', NULL, 0, 0, 'es', '2020-12-28 18:33:26', '2021-03-25 21:45:50', NULL),
(78, 11, 10107, 0, '2020-12-29', NULL, 0, 0, 'es', '2020-12-29 18:01:33', '2021-03-25 21:45:50', NULL),
(79, 1, 10115, 33, '2021-01-14', NULL, 0, 0, 'es', '2021-01-14 19:49:02', '2021-03-25 21:45:50', NULL),
(80, 11, 10115, 100, '2021-01-14', NULL, 0, 0, 'es', '2021-01-14 20:05:19', '2021-03-25 21:45:50', NULL),
(81, 4, 10118, 0, '2021-01-18', NULL, 0, 0, 'es', '2021-01-18 16:49:51', '2021-03-25 21:45:50', NULL),
(82, 7, 10118, 17, '2021-01-18', NULL, 0, 0, 'es', '2021-01-18 16:52:59', '2021-03-25 21:45:50', NULL),
(83, 9, 10118, 50, '2021-01-18', NULL, 0, 0, 'es', '2021-01-18 18:17:48', '2021-03-25 21:45:50', NULL),
(84, 2, 10075, 100, '2021-01-27', '2021-01-27', 1, 0, 'es', '2021-01-27 12:15:31', '2021-03-25 21:45:50', NULL),
(85, 1, 10075, 83, '2021-01-27', '2021-01-27', 1, 0, 'es', '2021-01-27 12:17:46', '2021-03-25 21:45:50', NULL),
(86, 2, 10118, 25, '2021-01-29', NULL, 0, 0, 'es', '2021-01-29 15:29:04', '2021-03-25 21:45:50', NULL),
(87, 8, 10075, 33, '2021-02-12', NULL, 0, 0, 'es', '2021-02-12 10:01:35', '2021-03-25 21:45:50', NULL),
(88, 2, 1, 25, '2021-02-24', NULL, 0, 0, 'es', '2021-02-24 19:48:02', '2021-03-25 21:45:50', NULL),
(89, 3, 1, 20, '2021-02-28', NULL, 0, 0, 'es', '2021-02-28 10:06:25', '2021-03-25 21:45:50', NULL),
(90, 8, 1, 67, '2021-03-03', NULL, 0, 0, 'es', '2021-03-03 00:47:49', '2021-03-25 21:45:50', NULL),
(91, 11, 1, 100, '2021-03-25', NULL, 0, 0, 'es', '2021-03-25 21:34:16', '2021-03-25 21:45:50', NULL),
(92, 13, 1, 100, '2021-03-25', NULL, 0, 0, 'es', '2021-03-25 21:38:53', '2021-03-25 21:45:50', NULL),
(93, 10, 1, 33, '2021-03-25', NULL, 0, 0, 'es', '2021-03-25 21:40:18', '2021-04-05 17:44:26', NULL),
(94, 12, 1, 50, '2021-03-25', NULL, 0, 0, 'es', '2021-03-25 21:57:29', '2021-03-25 21:57:30', NULL),
(95, 15, 1, 100, '2021-03-25', NULL, 0, 0, 'es', '2021-03-25 21:59:03', '2021-03-25 22:02:03', NULL),
(96, 19, 1, 100, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 21:27:42', '2021-03-31 21:28:27', NULL),
(97, 14, 1, 50, '2021-04-05', NULL, 0, 0, 'es', '2021-04-05 17:42:18', '2021-04-05 17:42:18', NULL),
(98, 17, 1, 50, '2021-04-05', NULL, 0, 0, 'es', '2021-04-05 17:43:20', '2021-04-05 17:43:21', NULL),
(99, 18, 1, 100, '2021-04-05', NULL, 0, 0, 'es', '2021-04-05 17:43:47', '2021-04-05 17:46:17', NULL),
(100, 11, 10144, 100, '2021-04-06', NULL, 0, 0, 'es', '2021-04-06 21:03:25', '2021-04-06 21:03:42', NULL),
(101, 11, 10147, 100, '2021-04-06', NULL, 0, 0, 'es', '2021-04-06 21:05:13', '2021-04-06 21:05:55', NULL),
(102, 14, 10147, 50, '2021-04-06', NULL, 0, 0, 'es', '2021-04-06 21:27:43', '2021-04-06 21:27:44', NULL),
(103, 19, 10147, 50, '2021-04-06', NULL, 0, 0, 'es', '2021-04-06 21:29:52', '2021-04-06 21:29:53', NULL),
(104, 11, 10149, 50, '2021-04-12', NULL, 0, 0, 'es', '2021-04-12 21:25:24', '2021-04-12 21:25:25', NULL),
(105, 10, 10149, 100, '2021-04-12', NULL, 0, 0, 'es', '2021-04-12 21:25:46', '2021-04-12 21:25:56', NULL),
(106, 2, 10149, 25, '2021-04-12', NULL, 0, 0, 'es', '2021-04-12 21:26:07', '2021-04-12 21:26:07', NULL),
(107, 1, 10149, 17, '2021-04-12', NULL, 0, 0, 'es', '2021-04-12 22:25:43', '2021-04-12 22:25:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `descripcion_completa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen_destacada` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `titulo`, `autor`, `descripcion`, `descripcion_completa`, `imagen_destacada`, `banner`, `created_at`, `updated_at`) VALUES
(2, 'Todos debemos tener algo de militar en nuestra vida', 'José Gordo', '<p>El escritor, conferencista internacional, exmilitar, padre y hombre de negocios utiliza la ense&ntilde;anza militar en su diario andar. Aconseja incluir la disciplina en todas las acciones</p>', '<p>Mucha gente dice: &lsquo;tengo miedo a fracasar, a comenzar un negocio, a cambiar de empleo, a terminar una relaci&oacute;n&hellip; ante esto respondo:</p>\r\n\r\n<blockquote>\r\n<p>El miedo no existe, nadie nace con miedo. Es un pensamiento forjado por lo que nos transmite la sociedad.</p>\r\n</blockquote>\r\n\r\n<p>Resalta Jos&eacute; Gordo. Escritor, coach, conferencista internacional, exmilitar, padre, hombre de negocios, amante de la actitud positiva del ser humano y estudioso de ello. Asegura que, en lugar de miedo, la humanidad sufre inseguridades, siendo el hombre quien cobija, a mayor escala, este sentir.</p>\r\n\r\n<p>El hombre es un ser totalmente imperfecto y por eso tiene muchas inseguridades; cuando la mujer es perfecta y a la vez complicada&rsquo;. M&aacute;s de mil libros le&iacute;dos, su pluma, como forjador de Los 12 regalos de pap&aacute; , Cenado con millonario y De una vida tr&aacute;gica a una vida m&aacute;gica le acreditan para valorar la literatura en una sociedad en constante movimiento.</p>\r\n\r\n<blockquote>\r\n<p>Las letras te abren los ojos al mundo, a la realidad y a la actualidad.&nbsp;Jose Gordo</p>\r\n</blockquote>\r\n\r\n<p>Nacido en Barcelona, Espa&ntilde;a, con un especial amor por Panam&aacute;, es miembro activo de la ICF (Internacional Coach Federation). Ha organizado seminarios y entrenamientos como la gira &lsquo;Millionaire Mentorship&rsquo; con la que ense&ntilde;a liderazgo y toma de decisiones para convertirse en un millonario, en Am&eacute;rica y Europa. Se considera una persona solidaria con aquellos que experimentan dificultades, especialmente los ni&ntilde;os. Por ello, participa en campa&ntilde;as ben&eacute;ficas, organiza eventos de concienciaci&oacute;n y colaboraci&oacute;n, contribuyendo con material escolar, medicinas y juguetes a escuelas y ni&ntilde;os en varios pa&iacute;ses, incluido Panam&aacute;.</p>\r\n\r\n<h3><strong><span style=\"color:#2980b9\">&iquest;Qu&eacute; lugar ocupa la infancia en una sociedad dominada por la inmediatez?</span></strong></h3>\r\n\r\n<p>La infancia lo es todo. Los ni&ntilde;os necesitan de nosotros. Son maravillosos, no tienen maldad, no nacen con defectos. Vienen con la idea de crear, de ser astronautas, bomberos, cient&iacute;ficos; de descubrir la Luna&hellip; Nacen con muchos sue&ntilde;os, no tienen l&iacute;mites. Es injusto que nosotros, los adultos, la mayor&iacute;a, y no te hablo de gobiernos, la responsabilidad no es no de ellos; acabemos o no trabajemos a favor de esos sue&ntilde;os. Es necesario que le demos todo lo que tenemos para que sigan creyendo que pueden ser todo lo que quieran ser. Tengo una fundaci&oacute;n privada, pero trabajo con varios comedores sociales y albergues juveniles aqu&iacute; en Panam&aacute; y en otros pa&iacute;ses.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Se considera un mentor?</strong></span></h3>\r\n\r\n<p>Esa es una palabra muy grande. Ser padre es ser mentor, al final todos somos mentores; una madre, un padre, los abuelos, un t&iacute;o, alguien que puede aportar a otra persona informaci&oacute;n valiosa y, sobre todo, valores para la vida, para andar en el mundo. Creo que tengo habilidades muy arraigadas que he practicado durante mucho tiempo y eso me ha ayudado a ser un buen comunicador, una persona que trasmite mucha energ&iacute;a, pasi&oacute;n e informaci&oacute;n. Tuve la fortuna de leer mucho, he le&iacute;do m&aacute;s de mil libros, tengo mucho material en mi biblioteca. Me he entrenado con grandes, gente que ha impactado mucho mi vida, gente con gran experiencia en el mercado y eso me ha ayudado a aportar a la sociedad. S&iacute;, me considero un mentor.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Qu&eacute; ense&ntilde;anza le dej&oacute; sus d&iacute;as como militar?</strong></span></h3>\r\n\r\n<p>La principal, la que intento aplicar a todas las personas cercanas a m&iacute;, es el honor. Tambi&eacute;n la disciplina y la honestidad.</p>\r\n\r\n<h3><strong><span style=\"color:#2980b9\">&iquest;Qu&eacute; debemos tener de militar en nuestras vidas?</span></strong></h3>\r\n\r\n<blockquote>\r\n<p>Ser una persona de honor te llevar&aacute; por el camino correcto. No te dar&aacute; la opci&oacute;n de fallarle a nadie, en cierta medida, ni de sentirte mal contigo mismo. Luego la disciplina; sin disciplina, hoy no podemos ir a ning&uacute;n lado, es imposible</p>\r\n</blockquote>\r\n\r\n<p>Todos debemos tener algo de militar en nuestra vida, como m&iacute;nimo el factor del honor. Ser una persona de honor te llevar&aacute; por el camino correcto. No te dar&aacute; la opci&oacute;n de fallarle a nadie, en cierta medida, ni de sentirte mal contigo mismo. Luego la disciplina. Sin disciplina hoy no podemos ir a ning&uacute;n lado, es imposible.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;C&oacute;mo transmitir esto a las nuevas generaciones?</strong></span></h3>\r\n\r\n<p>Todos debemos tener algo de militar en nuestra vida, como m&iacute;nimo el factor del honor. Ser una persona de honor te llevar&aacute; por el camino correcto. No te dar&aacute; la opci&oacute;n de fallarle a nadie, en cierta medida, ni de sentirte mal contigo mismo. Luego la disciplina. Sin disciplina hoy no podemos ir a ning&uacute;n lado, es imposible.</p>\r\n\r\n<p>No creo que no lo tengan. Somos nosotros los que no tenemos disciplina, al final ellos hacen lo que ven. La sociedad est&aacute; entrando en una din&aacute;mica en la que nunca hay tiempo para nada: &lsquo;no puedo acompa&ntilde;arte al parque&rsquo;, &lsquo;no puedo estar contigo el fin de semana en el f&uacute;tbol&rsquo;, &lsquo;no puedo sentarme contigo a leer un libro&rsquo;, &lsquo;lo siento, hijo, pero estoy cansado&hellip;&rsquo;. Son muchos factores, los hijos se dan cuenta de esto y buscan ejemplos afuera que regularmente son err&oacute;neos.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>Escritor, conferencista, empresario, exmilitar&hellip; &iquest;Qu&eacute; se requiere para ser una persona polifac&eacute;tica?</strong></span></h3>\r\n\r\n<p>Todos nacemos con esa habilidad. Tenemos muchas facetas, lo que pasa es que mucha gente toma la decisi&oacute;n de quedarse en una, estancarse en ella y all&iacute; entra la conformidad. La gente se limita muchas veces. Evidentemente, a nivel de profesi&oacute;n estamos especializ&aacute;ndonos, por ejemplo, hoy un abogado no abarca diferentes temas sino que se especializa en un aspecto para ser muy bueno en lo que hace, pero luego podr&aacute; ser escritor, conferencista, deportista&hellip; hoy no hay esos l&iacute;mites que ten&iacute;amos antiguamente. Quien no logra lo que quiere, es porque no quiere lograrlo.</p>\r\n\r\n<p>Voy a leer una de sus frases para que me d&eacute; su argumento:</p>\r\n\r\n<blockquote>\r\n<p>Cualquier cosa que la mente del hombre puede concebir y creer puede conseguir&hellip;</p>\r\n</blockquote>\r\n\r\n<p>Creo mucho en la ley de la atracci&oacute;n. La gente hoy tiene miedo a pedir y a dar a la vez, a la gente, cuando quiere algo, le cuesta pedirlo. Todo lo que tu mente piensa, lo puede planificar con un deseo ardiente. Debemos obsesionarnos con lo que queremos y lo lograremos. La gente dice:</p>\r\n\r\n<blockquote>\r\n<p>Obsesionarse no es bueno, no es bueno obsesionarse por la droga, el juego, el sexo; pero por tus metas, objetivos, familias, por el amor de tu vida es lo mejor que te puede pasar</p>\r\n</blockquote>\r\n\r\n<p>Por all&iacute; es que va esa frase, obsesi&oacute;nate por lo que quieres en la vida y llegar&aacute;, porque la ley de la atracci&oacute;n funciona.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Cu&aacute;l es su filosof&iacute;a de vida?</strong></span></h3>\r\n\r\n<p>Simple, humildad basada en el amor y las energ&iacute;as.</p>\r\n\r\n<p>Ri&ntilde;e o es amigable con un ser supremo</p>\r\n\r\n<p>Es amigable. En cierta medida, soy un firme creyente, aunque no sea devoto de ninguna religi&oacute;n. He tenido la fortuna de leer el Cor&aacute;n y la Biblia. He estado con gente que trasmite energ&iacute;a, me he sentido muy cercano al hinduismo y al budismo. He visitado la Iglesia cat&oacute;lica. Al descubrir tantas religiones y entrar en su mundo, he comprendido que al final todo se trata de lo mismo, de un ser supremo que vela por nosotros. Lo ideal es ser firme en las creencias de uno mismo y no dejarse influenciar de otras personas. Para llenar la parte espiritual, lo primero que hay que hacer es aclarar lo que se siente y quiere, saber c&oacute;mo voy a nutrir la parte interior, si creo que existe Dios, si creo en la religi&oacute;n cristiana, budista, hind&uacute;&hellip;</p>\r\n\r\n<h3><strong><span style=\"color:#2980b9\">&iquest;Qu&eacute; le ha dado Gordo a Panam&aacute;?</span></strong></h3>\r\n\r\n<p>Creo, porque no soy yo quien lo tiene que decir, que le he dado empleo a muchas personas, he aportado felicidad, alegr&iacute;a y una actitud diferente de la vida enfocada en que todo se puede. Adem&aacute;s, pago mis impuestos ( risas ). Creo firmemente que cuando vives en un pa&iacute;s perteneces a ese pa&iacute;s, aunque no seas de all&iacute;. Intento ser un buen ciudadano y ayudar con lo puedo. Quiero aportar a la sociedad no solo con el pago de mis impuestos y con las compa&ntilde;&iacute;as que tengo, sino tambi&eacute;n utilizar mis habilidades en lo que soy bueno, trasmitiendo a la gente buena energ&iacute;a.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Y qu&eacute; le ha dado Panam&aacute; a Gordo?</strong></span></h3>\r\n\r\n<p>Me ha ayudado a ser m&aacute;s paciente, Me siento como en casa. Me ha ayudado mucho a bajarme de la nube. Amo Panam&aacute;.</p>', 'entrada_1611331150.jpg', 'banner_entrada_1605312049.jpg', '2020-10-26 16:36:17', '2021-01-22 08:59:10'),
(4, 'Padre Rico, Padre Pobre', 'Tania Tostado', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">La verdadera raz&oacute;n para comenzar un negocio, es que usted se convierta en un gran hombre de negocios.</span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">La verdadera raz&oacute;n para comenzar un negocio, es que usted se convierta en un gran hombre de negocios.</span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em>&nbsp;</em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Los grandes productos se encuentran por todas partes. Pero los grandes hombres de negocios son escasos y ricos.&nbsp;</span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Padre rico padre pobre es por mucho el libro de finanzas personales m&aacute;s conocido y difundido de los &uacute;ltimos a&ntilde;os, Robert Kiyosaki fue best seller con esta publicaci&oacute;n durante a&ntilde;os, hoy d&iacute;a sigue siendo un libro muy vendido, m&aacute;s all&aacute; de la calidad literaria o de la simpleza que muchas personas piensan que tiene, sin duda Padre rico padre pobre fue un parteaguas en la sociedad con respecto de la auto educaci&oacute;n financiera.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">El resumen general es el siguiente: Robert narra haber visto el ejemplo de dos tipos de padre.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Su padre biol&oacute;gico quien era un hombre tradicional que apostaba por la educaci&oacute;n acad&eacute;mica formal, ingresar a un trabajo seguro en el cual escalar posiciones, permanecer durante a&ntilde;os en la misma compa&ntilde;&iacute;a, tomar una hipoteca para comprar una casa etc., </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Por otro lado conoci&oacute; al padre de uno de sus mejores amigos quien era un hombre visionario, alejado de los estereotipos, inversionista arriesgado con visi&oacute;n a largo plazo, y de &eacute;l aprendi&oacute; todos los conceptos b&aacute;sicos bajo los cuales se rigen los hombres m&aacute;s exitosos del mundo. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Con el tiempo &eacute;l ve como su padre biol&oacute;gico se estanca en sus propias tradiciones mientras que el padre rico va haciendo cada vez m&aacute;s fortuna.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Dentro de su relato Kiyosaki nos introduce a conceptos que marcaron una tendencia&nbsp;en la sociedad, antes de la publicaci&oacute;n de este libro pocas personas hablaban de:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">lujo del dinero, </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">ingresos residuales, </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">gasto e inversi&oacute;n, </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Entre otros valisos conceptos.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Y de todo esto lo que considero m&aacute;s valioso, es el auto examen que nos invita a hacer con lo que llama &ldquo;El cuadrante del flujo del dinero&rdquo; se trata b&aacute;sicamente de ubicar la fuente de la cual provienen tus ingresos para de esta forma saber hacia d&oacute;nde debes dirigirte para tener paz financiera.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\"><img alt=\"\" src=\"https://mybusinessacademypro.com/academia/images/art1-tania_1614881067.jpg\" style=\"height:365px; width:565px\" /></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Por &uacute;ltimo el libro deja tambi&eacute;n frases poderosas sobre empoderamiento financiero que se fueron convirtiendo en mantras para muchas personas que gustaron de la filosof&iacute;a del autor, les comparto algunas de ellas:</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">1.&nbsp;Los perdedores evitan el fracaso, y el fracaso convierte a los perdedores en ganadores.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">2.&nbsp;La verdadera raz&oacute;n para comenzar un negocio es que usted se convierta en un gran hombre de negocios. Los grandes productos se encuentran por todas partes. Pero los grandes hombres de negocios son escasos y ricos.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">3. Hay una diferencia entre ser pobre y estar quebrado. Uno puede estar quebrado temporalmente, uno es pobre eternamente.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">4.&nbsp;Uno (se refiere a sus padres) me ense&ntilde;&oacute; a escribir una excelente hoja de vida para conseguir empleo, y el otro a armar un plan de negocios que genere empleos.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">5. Lo importante no es lo que uno sabe, sino que tan r&aacute;pido aprende.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">6. La inteligencia financiera consiste simplemente en tener m&aacute;s opciones</span></span></span></p>', 'entrada_1614881156.jpg', 'banner_entrada_1614881295.jpg', '2021-03-04 11:05:56', '2021-03-04 11:08:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `evaluations`
--

INSERT INTO `evaluations` (`id`, `course_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 7, 'Evaluación Finanzas para Todos', 'Contesta todas la preguntas correctamente', '2020-11-11 23:35:35', '2020-11-11 23:35:35'),
(3, 1, 'Prueba1', 'Esto es una prueba1', '2020-11-12 13:30:06', '2021-01-11 21:56:54'),
(4, 5, 'Prueba', NULL, '2020-11-19 13:23:55', '2020-11-19 13:23:55'),
(5, 3, 'Prueba', NULL, '2020-11-19 23:57:59', '2020-11-19 23:57:59'),
(6, 2, 'Prueba', NULL, '2020-11-20 00:16:44', '2020-11-20 00:16:44'),
(7, 4, 'Prueba', NULL, '2020-11-20 00:36:52', '2020-11-20 00:36:52'),
(8, 6, 'Prueba', NULL, '2020-11-20 01:00:39', '2020-11-20 01:00:39'),
(9, 8, 'Evaluación Forex', NULL, '2020-11-20 01:31:33', '2020-11-20 01:31:33'),
(10, 9, 'Evaluación Riesgo y Bolsa', NULL, '2020-11-20 01:42:24', '2020-11-20 01:42:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations_users`
--

CREATE TABLE `evaluations_users` (
  `id` int NOT NULL,
  `evaluation_id` int NOT NULL,
  `user_id` int NOT NULL,
  `score` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `evaluations_users`
--

INSERT INTO `evaluations_users` (`id`, `evaluation_id`, `user_id`, `score`, `date`) VALUES
(1, 3, 10086, 70, '2020-11-27'),
(2, 9, 10086, 0, '2020-11-27'),
(3, 5, 10086, 50, '2020-12-02'),
(4, 10, 10086, 40, '2020-12-02'),
(5, 9, 10086, 0, '2020-12-02'),
(6, 9, 10086, 90, '2020-12-02'),
(7, 7, 10086, 100, '2020-12-02'),
(8, 6, 10086, 70, '2020-12-02'),
(9, 4, 10086, 80, '2020-12-02'),
(10, 8, 10086, 0, '2020-12-04'),
(11, 8, 10086, 0, '2020-12-04'),
(12, 2, 10086, 80, '2020-12-04'),
(13, 10, 10086, 60, '2020-12-04'),
(14, 8, 10086, 100, '2020-12-05'),
(15, 3, 10076, 0, '2020-12-08'),
(16, 3, 10076, 40, '2020-12-08'),
(17, 3, 10076, 100, '2020-12-08'),
(18, 7, 10101, 100, '2020-12-09'),
(19, 6, 10101, 100, '2020-12-09'),
(20, 2, 10104, 70, '2020-12-09'),
(21, 2, 10105, 60, '2020-12-10'),
(22, 9, 10105, 100, '2020-12-10'),
(23, 8, 10105, 100, '2020-12-10'),
(24, 9, 10101, 20, '2020-12-10'),
(25, 10, 10107, 100, '2020-12-11'),
(26, 6, 10107, 30, '2020-12-11'),
(27, 2, 10107, 70, '2020-12-11'),
(28, 9, 10107, 100, '2020-12-12'),
(29, 10, 10109, 50, '2020-12-14'),
(30, 4, 10110, 90, '2020-12-14'),
(31, 2, 10112, 40, '2020-12-14'),
(32, 3, 10110, 100, '2020-12-14'),
(33, 3, 10107, 50, '2020-12-23'),
(34, 3, 1, 70, '2021-01-11'),
(35, 3, 10075, 90, '2021-01-27'),
(36, 6, 10075, 100, '2021-01-27'),
(37, 10, 1, 0, '2021-02-06'),
(38, 10, 1, 40, '2021-02-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations_users_answers`
--

CREATE TABLE `evaluations_users_answers` (
  `id` int NOT NULL,
  `evaluation_user_id` int NOT NULL COMMENT 'Id de la tabla evaluations_users',
  `question_id` int NOT NULL,
  `selected_answer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `evaluations_users_answers`
--

INSERT INTO `evaluations_users_answers` (`id`, `evaluation_user_id`, `question_id`, `selected_answer`) VALUES
(1, 1, 3, 1),
(2, 1, 4, 1),
(3, 1, 5, 1),
(4, 1, 6, 1),
(5, 1, 7, 2),
(6, 1, 8, 1),
(7, 1, 9, 2),
(8, 1, 10, 1),
(9, 1, 11, 3),
(10, 1, 12, 1),
(11, 3, 23, 1),
(12, 3, 24, 3),
(13, 3, 25, 3),
(14, 3, 26, 1),
(15, 3, 27, 3),
(16, 3, 28, 1),
(17, 3, 29, 1),
(18, 3, 30, 2),
(19, 3, 31, 2),
(20, 3, 32, 1),
(21, 4, 81, 2),
(22, 4, 82, 3),
(23, 4, 83, 3),
(24, 4, 84, 1),
(25, 4, 85, 2),
(26, 4, 86, 1),
(27, 4, 87, 1),
(28, 4, 88, 1),
(29, 4, 89, 3),
(30, 4, 90, 2),
(31, 5, 71, 1),
(32, 5, 72, 1),
(33, 5, 73, 1),
(34, 6, 71, 1),
(35, 6, 72, 1),
(36, 6, 73, 1),
(37, 6, 74, 1),
(38, 6, 75, 1),
(39, 6, 76, 1),
(40, 6, 77, 2),
(41, 6, 78, 1),
(42, 6, 79, 1),
(43, 6, 80, 1),
(44, 7, 43, 1),
(45, 7, 44, 1),
(46, 7, 45, 1),
(47, 7, 46, 1),
(48, 7, 47, 1),
(49, 7, 48, 1),
(50, 7, 49, 1),
(51, 7, 50, 1),
(52, 7, 51, 1),
(53, 7, 52, 1),
(54, 8, 33, 1),
(55, 8, 34, 3),
(56, 8, 35, 3),
(57, 8, 36, 2),
(58, 8, 37, 1),
(59, 8, 38, 1),
(60, 8, 39, 1),
(61, 8, 40, 1),
(62, 8, 41, 1),
(63, 8, 42, 1),
(64, 9, 13, 1),
(65, 9, 14, 1),
(66, 9, 15, 1),
(67, 9, 16, 1),
(68, 9, 17, 1),
(69, 9, 18, 1),
(70, 9, 19, 3),
(71, 9, 20, 1),
(72, 9, 21, 1),
(73, 9, 22, 3),
(74, 10, 53, 3),
(75, 10, 54, 2),
(76, 10, 55, 1),
(77, 10, 56, 2),
(78, 10, 57, 2),
(79, 11, 53, 3),
(80, 11, 54, 2),
(81, 11, 55, 1),
(82, 11, 56, 2),
(83, 11, 57, 2),
(84, 12, 1, 1),
(85, 12, 2, 1),
(86, 12, 63, 1),
(87, 12, 64, 2),
(88, 12, 65, 1),
(89, 12, 66, 3),
(90, 12, 67, 3),
(91, 12, 68, 1),
(92, 12, 69, 1),
(93, 12, 70, 1),
(94, 13, 81, 2),
(95, 13, 82, 2),
(96, 13, 83, 1),
(97, 13, 84, 1),
(98, 13, 85, 2),
(99, 13, 86, 1),
(100, 13, 87, 1),
(101, 13, 88, 1),
(102, 13, 89, 1),
(103, 13, 90, 2),
(104, 14, 53, 1),
(105, 14, 54, 1),
(106, 14, 55, 1),
(107, 14, 56, 1),
(108, 14, 57, 1),
(109, 14, 58, 1),
(110, 14, 59, 1),
(111, 14, 60, 1),
(112, 14, 61, 1),
(113, 14, 62, 1),
(114, 16, 3, 1),
(115, 16, 4, 1),
(116, 16, 5, 3),
(117, 16, 6, 2),
(118, 16, 7, 1),
(119, 16, 8, 2),
(120, 16, 9, 2),
(121, 16, 10, 1),
(122, 16, 11, 2),
(123, 16, 12, 2),
(124, 17, 3, 1),
(125, 17, 4, 1),
(126, 17, 5, 1),
(127, 17, 6, 1),
(128, 17, 7, 1),
(129, 17, 8, 1),
(130, 17, 9, 1),
(131, 17, 10, 1),
(132, 17, 11, 1),
(133, 17, 12, 1),
(134, 18, 43, 1),
(135, 18, 44, 1),
(136, 18, 45, 1),
(137, 18, 46, 1),
(138, 18, 47, 1),
(139, 18, 48, 1),
(140, 18, 49, 1),
(141, 18, 50, 1),
(142, 18, 51, 1),
(143, 18, 52, 1),
(144, 19, 33, 1),
(145, 19, 34, 1),
(146, 19, 35, 1),
(147, 19, 36, 1),
(148, 19, 37, 1),
(149, 19, 38, 1),
(150, 19, 39, 1),
(151, 19, 40, 1),
(152, 19, 41, 1),
(153, 19, 42, 1),
(154, 20, 1, 1),
(155, 20, 2, 1),
(156, 20, 63, 1),
(157, 20, 64, 1),
(158, 20, 65, 1),
(159, 20, 66, 1),
(160, 20, 67, 1),
(161, 20, 68, 1),
(162, 20, 69, 1),
(163, 20, 70, 1),
(164, 21, 1, 1),
(165, 21, 2, 1),
(166, 21, 63, 1),
(167, 21, 64, 1),
(168, 21, 65, 1),
(169, 21, 66, 1),
(170, 21, 67, 1),
(171, 21, 68, 1),
(172, 21, 69, 1),
(173, 21, 70, 3),
(174, 22, 71, 1),
(175, 22, 72, 1),
(176, 22, 73, 1),
(177, 22, 74, 1),
(178, 22, 75, 1),
(179, 22, 76, 1),
(180, 22, 77, 1),
(181, 22, 78, 1),
(182, 22, 79, 1),
(183, 22, 80, 1),
(184, 23, 53, 1),
(185, 23, 54, 1),
(186, 23, 55, 1),
(187, 23, 56, 1),
(188, 23, 57, 1),
(189, 23, 58, 1),
(190, 23, 59, 1),
(191, 23, 60, 1),
(192, 23, 61, 1),
(193, 23, 62, 1),
(194, 24, 71, 3),
(195, 24, 72, 2),
(196, 24, 73, 2),
(197, 24, 74, 1),
(198, 24, 75, 2),
(199, 24, 76, 2),
(200, 24, 77, 3),
(201, 24, 78, 2),
(202, 24, 79, 2),
(203, 24, 80, 1),
(204, 25, 81, 1),
(205, 25, 82, 1),
(206, 25, 83, 1),
(207, 25, 84, 1),
(208, 25, 85, 1),
(209, 25, 86, 1),
(210, 25, 87, 1),
(211, 25, 88, 1),
(212, 25, 89, 1),
(213, 25, 90, 1),
(214, 26, 33, 2),
(215, 26, 34, 2),
(216, 26, 35, 2),
(217, 26, 36, 2),
(218, 26, 37, 2),
(219, 26, 38, 2),
(220, 26, 39, 1),
(221, 26, 40, 1),
(222, 26, 41, 2),
(223, 26, 42, 1),
(224, 27, 1, 1),
(225, 27, 2, 1),
(226, 27, 63, 1),
(227, 27, 64, 1),
(228, 27, 65, 1),
(229, 27, 66, 1),
(230, 27, 67, 1),
(231, 27, 68, 1),
(232, 27, 69, 1),
(233, 27, 70, 1),
(234, 28, 71, 1),
(235, 28, 72, 1),
(236, 28, 73, 1),
(237, 28, 74, 1),
(238, 28, 75, 1),
(239, 28, 76, 1),
(240, 28, 77, 1),
(241, 28, 78, 1),
(242, 28, 79, 1),
(243, 28, 80, 1),
(244, 29, 81, 1),
(245, 29, 82, 2),
(246, 29, 83, 1),
(247, 29, 84, 1),
(248, 29, 85, 1),
(249, 29, 86, 1),
(250, 29, 87, 3),
(251, 29, 88, 2),
(252, 29, 89, 3),
(253, 29, 90, 2),
(254, 30, 13, 1),
(255, 30, 14, 1),
(256, 30, 15, 1),
(257, 30, 16, 1),
(258, 30, 17, 3),
(259, 30, 18, 1),
(260, 30, 19, 1),
(261, 30, 20, 1),
(262, 30, 21, 1),
(263, 30, 22, 1),
(264, 31, 1, 1),
(265, 31, 2, 1),
(266, 31, 63, 2),
(267, 31, 64, 2),
(268, 31, 65, 2),
(269, 31, 66, 2),
(270, 31, 67, 3),
(271, 31, 68, 2),
(272, 31, 69, 1),
(273, 31, 70, 3),
(274, 32, 3, 1),
(275, 32, 4, 1),
(276, 32, 5, 1),
(277, 32, 6, 1),
(278, 32, 7, 1),
(279, 32, 8, 1),
(280, 32, 9, 1),
(281, 32, 10, 1),
(282, 32, 11, 1),
(283, 32, 12, 1),
(284, 33, 3, 1),
(285, 33, 4, 1),
(286, 33, 5, 2),
(287, 33, 6, 2),
(288, 33, 7, 3),
(289, 33, 8, 1),
(290, 33, 9, 1),
(291, 33, 10, 3),
(292, 33, 11, 2),
(293, 33, 12, 1),
(294, 34, 3, 1),
(295, 34, 4, 3),
(296, 34, 5, 1),
(297, 34, 6, 1),
(298, 34, 7, 1),
(299, 34, 8, 1),
(300, 34, 9, 2),
(301, 34, 10, 1),
(302, 34, 11, 1),
(303, 34, 12, 3),
(304, 35, 3, 1),
(305, 35, 4, 1),
(306, 35, 5, 3),
(307, 35, 6, 1),
(308, 35, 7, 1),
(309, 35, 8, 1),
(310, 35, 9, 1),
(311, 35, 10, 1),
(312, 35, 11, 1),
(313, 35, 12, 1),
(314, 36, 33, 1),
(315, 36, 34, 1),
(316, 36, 35, 1),
(317, 36, 36, 1),
(318, 36, 37, 1),
(319, 36, 38, 1),
(320, 36, 39, 1),
(321, 36, 40, 1),
(322, 36, 41, 1),
(323, 36, 42, 1),
(324, 38, 81, 2),
(325, 38, 82, 1),
(326, 38, 83, 2),
(327, 38, 84, 2),
(328, 38, 85, 1),
(329, 38, 86, 3),
(330, 38, 87, 2),
(331, 38, 88, 1),
(332, 38, 89, 3),
(333, 38, 90, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `uuid` varchar(40) NOT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int UNSIGNED NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `duration` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '0 = No Disponible. 1 = Disponible. 2 = Eliminado',
  `correos` int NOT NULL DEFAULT '0' COMMENT '0 - no se a enviado correos 1 - se envio correo 1 hora nates de empezar 2 - se envio correo al iniciar',
  `type` varchar(100) DEFAULT NULL,
  `url_streaming` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `miniatura` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `uuid`, `user_id`, `category_id`, `subcategory_id`, `title`, `description`, `date`, `time`, `duration`, `image`, `status`, `correos`, `type`, `url_streaming`, `url_video`, `miniatura`, `created_at`, `updated_at`) VALUES
(20, '076d6cc6-6103-4ad5-872a-643a816e6abf', 10075, 1, 2, 'Prueba', '<p>Esto es una prueba para el eliminado de eventos posterior a la creaci&oacute;n</p>', '2021-03-31', '19:20:00', 45, '20.png', '2', 0, NULL, 'https://streaming.mybusinessacademypro.com/app/live/meetings/076d6cc6-6103-4ad5-872a-643a816e6abf', NULL, '20.jpg', '2021-03-31 11:15:04', '2021-03-31 11:15:48'),
(21, '8d77bd91-41d1-4691-8d4c-651988b955dc', 10074, 2, 2, 'De Emprendedor a Empresario', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-04-18', '19:17:00', 45, '21.png', '0', 0, NULL, 'https://streaming.mybusinessacademypro.com/app/live/meetings/8d77bd91-41d1-4691-8d4c-651988b955dc', NULL, '21.png', '2021-04-03 09:20:44', '2021-04-18 16:16:03'),
(22, 'bbde4d20-d6bc-4fdd-b27e-7f887dcd7c2d', 10074, 8, 2, 'Principios de Trading con Crypto', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-04-17', '16:30:00', 60, '22.png', '0', 0, NULL, 'https://streaming.mybusinessacademypro.com/app/live/meetings/bbde4d20-d6bc-4fdd-b27e-7f887dcd7c2d', NULL, '22.png', '2021-04-03 09:25:06', '2021-04-17 19:00:02'),
(23, '289f8246-2877-49d9-a063-476d54b8620c', 10071, 1, 2, 'PRUEBA DOMINGUERA CON DOUG MBA', '<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente texto ficticio de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica.&nbsp;Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.&nbsp;Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.&nbsp;Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que conten&iacute;an pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que inclu&iacute;a versiones de Lorem Ipsum.</p>', '2021-04-18', '01:12:00', 15, '23.png', '0', 0, NULL, 'https://streaming.mybusinessacademypro.com/app/live/meetings/289f8246-2877-49d9-a063-476d54b8620c', NULL, '23.jpg', '2021-04-18 15:17:26', '2021-04-18 16:00:02'),
(24, '00fe67a1-3676-4c09-9574-74a4c1335d07', 10124, 1, 2, 'Test DE EVENTO', '<p>adsfdgfhgh,j,jhjgredghfjh,mjhgmfddfadsfgdhghf</p>', '2021-04-19', '00:28:00', 30, '24.png', '0', 0, NULL, 'https://streaming.mybusinessacademypro.com/app/live/meetings/00fe67a1-3676-4c09-9574-74a4c1335d07', NULL, '24.png', '2021-04-18 16:21:26', '2021-04-19 03:00:02'),
(25, 'f9d2c264-154c-465b-bcee-e2e2d2e51c90', 10123, 3, 2, 'Lanza tu producto digital', '<p>Aprende como lanzar tu producto digital al mercado, como promocionar en redes</p>', '2021-05-01', '09:00:00', 60, '25.jpg', '1', 0, NULL, 'https://streaming.mybusinessacademypro.com/app/live/meetings/f9d2c264-154c-465b-bcee-e2e2d2e51c90', NULL, '25.jpg', '2021-04-21 15:34:51', '2021-04-21 15:44:58'),
(26, '1e032368-e87c-47a7-a4dd-5a19c9ccf3a3', 10075, 2, 2, 'Evento de Soporte Técnico', '<p>Esto es una prueba de soporte t&eacute;cnico para verificar el funcionamiento y afinar detalles</p>', '2021-04-26', '12:45:00', 45, '26.png', '0', 0, NULL, 'https://streaming.mybusinessacademypro.com/app/live/meetings/1e032368-e87c-47a7-a4dd-5a19c9ccf3a3', NULL, '26.jpg', '2021-04-26 04:44:28', '2021-04-26 15:00:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events_users`
--

CREATE TABLE `events_users` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `favorite` int UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `events_users`
--

INSERT INTO `events_users` (`id`, `event_id`, `user_id`, `date`, `time`, `favorite`, `created_at`, `updated_at`) VALUES
(1, 20, 10075, '2021-03-31', '19:20:00', NULL, '2021-03-31 14:15:04', '2021-03-31 14:15:04'),
(2, 21, 10074, '2021-04-18', '19:17:00', NULL, '2021-04-03 12:20:44', '2021-04-18 19:12:10'),
(3, 22, 10074, '2021-04-17', '16:30:00', NULL, '2021-04-03 12:25:06', '2021-04-03 12:25:06'),
(4, 23, 10071, '2021-04-18', '01:12:00', NULL, '2021-04-18 18:17:26', '2021-04-18 18:17:26'),
(5, 21, 1, '2021-04-18', '19:17:00', NULL, '2021-04-18 19:13:19', '2021-04-18 19:13:19'),
(6, 21, 10149, '2021-04-18', '19:17:00', NULL, '2021-04-18 19:13:32', '2021-04-18 19:13:32'),
(7, 24, 10124, '2021-04-19', '00:28:00', NULL, '2021-04-18 19:21:26', '2021-04-18 19:21:26'),
(8, 25, 10123, '2021-05-01', '09:00:00', NULL, '2021-04-21 18:34:51', '2021-04-21 18:44:58'),
(9, 26, 10075, '2021-04-26', '12:45:00', NULL, '2021-04-26 07:44:28', '2021-04-26 07:44:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_content`
--

CREATE TABLE `event_content` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_content`
--

INSERT INTO `event_content` (`id`, `title`, `type`, `url`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 'null', 'survey', NULL, 26, '2021-04-27 17:03:45', '2021-04-27 17:03:45'),
(2, 'beyond-academy-150x150.png', 'file', 'file_26_1619554159.png', 26, '2021-04-27 17:09:19', '2021-04-27 17:09:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_countries`
--

CREATE TABLE `event_countries` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `country_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_countries`
--

INSERT INTO `event_countries` (`id`, `event_id`, `country_id`, `date`, `time`) VALUES
(1, 20, 1, '2021-03-31', '13:20:00'),
(2, 20, 12, '2021-03-31', '16:20:00'),
(3, 20, 44, '2021-03-31', '16:20:00'),
(4, 20, 48, '2021-03-31', '14:20:00'),
(5, 20, 52, '2021-03-31', '13:20:00'),
(6, 20, 62, '2021-03-31', '14:20:00'),
(7, 20, 140, '2021-03-31', '16:20:00'),
(8, 20, 167, '2021-03-31', '14:20:00'),
(9, 20, 170, '2021-03-31', '14:20:00'),
(10, 20, 199, '2021-03-31', '21:20:00'),
(11, 20, 232, '2021-03-31', '15:20:00'),
(12, 21, 1, '2021-04-10', '08:00:00'),
(13, 21, 12, '2021-04-10', '11:00:00'),
(14, 21, 44, '2021-04-10', '11:00:00'),
(15, 21, 48, '2021-04-10', '09:00:00'),
(16, 21, 52, '2021-04-10', '08:00:00'),
(17, 21, 62, '2021-04-10', '09:00:00'),
(18, 21, 140, '2021-04-10', '11:00:00'),
(19, 21, 167, '2021-04-10', '09:00:00'),
(20, 21, 170, '2021-04-10', '09:00:00'),
(21, 21, 199, '2021-04-10', '16:00:00'),
(22, 21, 232, '2021-04-10', '10:00:00'),
(23, 22, 1, '2021-04-17', '10:30:00'),
(24, 22, 12, '2021-04-17', '13:30:00'),
(25, 22, 44, '2021-04-17', '13:30:00'),
(26, 22, 48, '2021-04-17', '11:30:00'),
(27, 22, 52, '2021-04-17', '10:30:00'),
(28, 22, 62, '2021-04-17', '11:30:00'),
(29, 22, 140, '2021-04-17', '13:30:00'),
(30, 22, 167, '2021-04-17', '11:30:00'),
(31, 22, 170, '2021-04-17', '11:30:00'),
(32, 22, 199, '2021-04-17', '18:30:00'),
(33, 22, 232, '2021-04-17', '12:30:00'),
(34, 23, 1, '2021-04-17', '19:12:00'),
(35, 23, 12, '2021-04-17', '22:12:00'),
(36, 23, 44, '2021-04-17', '22:12:00'),
(37, 23, 48, '2021-04-17', '20:12:00'),
(38, 23, 52, '2021-04-17', '19:12:00'),
(39, 23, 62, '2021-04-17', '20:12:00'),
(40, 23, 140, '2021-04-17', '22:12:00'),
(41, 23, 167, '2021-04-17', '20:12:00'),
(42, 23, 170, '2021-04-17', '20:12:00'),
(43, 23, 199, '2021-04-18', '03:12:00'),
(44, 23, 232, '2021-04-17', '21:12:00'),
(45, 24, 140, '2021-04-18', '21:28:00'),
(46, 24, 167, '2021-04-18', '19:28:00'),
(47, 25, 1, '2021-04-29', '19:00:00'),
(48, 25, 12, '2021-04-29', '22:00:00'),
(49, 25, 44, '2021-04-29', '22:00:00'),
(50, 25, 48, '2021-04-29', '20:00:00'),
(51, 25, 52, '2021-04-29', '19:00:00'),
(52, 25, 62, '2021-04-29', '20:00:00'),
(53, 25, 140, '2021-04-29', '22:00:00'),
(54, 25, 167, '2021-04-29', '20:00:00'),
(55, 25, 170, '2021-04-29', '20:00:00'),
(56, 25, 199, '2021-04-30', '03:00:00'),
(57, 25, 232, '2021-04-29', '21:00:00'),
(58, 26, 232, '2021-04-26', '08:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_resources`
--

CREATE TABLE `event_resources` (
  `id` int NOT NULL,
  `resources_id` int NOT NULL,
  `event_id` int NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `event_resources`
--

INSERT INTO `event_resources` (`id`, `resources_id`, `event_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 20, '1', '2021-03-31 14:15:04', '2021-03-31 14:15:04'),
(2, 2, 20, '1', '2021-03-31 14:15:04', '2021-03-31 14:15:04'),
(3, 3, 20, '1', '2021-03-31 14:15:04', '2021-03-31 14:15:04'),
(4, 1, 21, '1', '2021-04-03 12:20:44', '2021-04-03 12:20:44'),
(5, 2, 21, '1', '2021-04-03 12:20:44', '2021-04-03 12:20:44'),
(6, 3, 21, '1', '2021-04-03 12:20:44', '2021-04-03 12:20:44'),
(7, 1, 22, '1', '2021-04-03 12:25:06', '2021-04-03 12:25:06'),
(8, 2, 22, '1', '2021-04-03 12:25:06', '2021-04-03 12:25:06'),
(9, 3, 22, '1', '2021-04-03 12:25:06', '2021-04-03 12:25:06'),
(10, 1, 23, '1', '2021-04-18 18:17:26', '2021-04-18 18:17:26'),
(11, 2, 23, '1', '2021-04-18 18:17:26', '2021-04-18 18:17:26'),
(12, 3, 23, '1', '2021-04-18 18:17:26', '2021-04-18 18:17:26'),
(13, 1, 24, '1', '2021-04-18 19:21:26', '2021-04-18 19:21:26'),
(14, 2, 24, '1', '2021-04-18 19:21:26', '2021-04-18 19:21:26'),
(15, 3, 24, '1', '2021-04-18 19:21:26', '2021-04-18 19:21:26'),
(16, 1, 25, '1', '2021-04-21 18:34:51', '2021-04-21 18:34:51'),
(17, 2, 25, '1', '2021-04-21 18:34:51', '2021-04-21 18:34:51'),
(18, 3, 25, '1', '2021-04-21 18:34:51', '2021-04-21 18:34:51'),
(19, 1, 26, '1', '2021-04-26 07:44:28', '2021-04-26 07:44:28'),
(20, 2, 26, '1', '2021-04-26 07:44:28', '2021-04-26 07:44:28'),
(21, 3, 26, '1', '2021-04-26 07:44:28', '2021-04-26 07:44:28'),
(22, 4, 26, '1', '2021-04-27 20:03:45', '2021-04-27 20:03:45'),
(23, 7, 26, '1', '2021-04-27 20:09:19', '2021-04-27 20:09:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int NOT NULL,
  `label` varchar(250) NOT NULL,
  `nameinput` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `requerido` tinyint(1) NOT NULL DEFAULT '0',
  `input_edad` tinyint(1) NOT NULL DEFAULT '0',
  `tipo` varchar(200) NOT NULL DEFAULT 'text',
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL,
  `desactivable` tinyint(1) NOT NULL DEFAULT '1',
  `unico` int DEFAULT NULL,
  `tip` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganancias`
--

CREATE TABLE `ganancias` (
  `id` int NOT NULL,
  `configuracion` longtext,
  `tipo` varchar(250) DEFAULT NULL,
  `nota` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacionbancaria`
--

CREATE TABLE `informacionbancaria` (
  `id` int NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `contenido` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia`
--

CREATE TABLE `insignia` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `nivel_id` int NOT NULL,
  `nivel_name` varchar(40) NOT NULL,
  `insignia` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `insignia`
--

INSERT INTO `insignia` (`id`, `course_id`, `course_name`, `nivel_id`, `nivel_name`, `insignia`, `created_at`, `updated_at`) VALUES
(1, 1, 'Oferta Inicial Pública (IPO)', 1, 'Principiante', '/assets/img/insignias/insignia_1603167613.png', '2020-10-19 21:20:13', '2020-10-19 21:20:13'),
(2, 2, 'Inteligencia Artificial', 1, 'Principiante', '/assets/img/insignias/insignia_1603167666.png', '2020-10-19 21:21:06', '2020-10-19 21:21:06'),
(3, 4, 'Intercambio de Divisas y Análisis Econom', 1, 'Principiante', '/assets/img/insignias/insignia_1603167727.png', '2020-10-19 21:22:07', '2020-10-19 21:22:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia_user`
--

CREATE TABLE `insignia_user` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `insignia_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `insignia_user`
--

INSERT INTO `insignia_user` (`id`, `user_id`, `course_id`, `insignia_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 10079, 1, 1, 1, '2020-10-20 16:03:44', '2020-10-20 16:03:44'),
(2, 10076, 1, 1, 1, '2020-10-20 17:32:16', '2020-10-20 17:32:16'),
(3, 10086, 1, 1, 1, '2020-10-26 15:37:41', '2020-10-26 15:37:41'),
(4, 10094, 2, 2, 1, '2020-11-08 00:59:51', '2020-11-08 00:59:51'),
(5, 10094, 4, 3, 1, '2020-11-08 01:06:54', '2020-11-08 01:06:54'),
(6, 10093, 2, 2, 1, '2020-11-08 02:04:59', '2020-11-08 02:04:59'),
(7, 10093, 4, 3, 1, '2020-11-08 02:04:59', '2020-11-08 02:04:59'),
(8, 10092, 4, 3, 1, '2020-11-08 02:16:01', '2020-11-08 02:16:01'),
(9, 10092, 1, 1, 1, '2020-11-08 02:24:37', '2020-11-08 02:24:37'),
(10, 10092, 2, 2, 1, '2020-11-08 02:24:37', '2020-11-08 02:24:37'),
(11, 10091, 4, 3, 1, '2020-11-11 09:36:55', '2020-11-11 09:36:55'),
(12, 10076, 4, 3, 1, '2020-11-11 12:05:13', '2020-11-11 12:05:13'),
(13, 10086, 2, 2, 1, '2020-11-12 20:21:26', '2020-11-12 20:21:26'),
(14, 10086, 4, 3, 1, '2020-12-02 12:50:03', '2020-12-02 12:50:03'),
(15, 10091, 1, 1, 1, '2020-12-02 23:12:01', '2020-12-02 23:12:01'),
(16, 10101, 4, 3, 1, '2020-12-09 11:44:35', '2020-12-09 11:44:35'),
(17, 10101, 2, 2, 1, '2020-12-09 11:44:35', '2020-12-09 11:44:35'),
(18, 10107, 2, 2, 1, '2020-12-11 14:37:41', '2020-12-11 14:37:41'),
(19, 10112, 4, 3, 1, '2020-12-14 16:21:47', '2020-12-14 16:21:47'),
(20, 10110, 1, 1, 1, '2020-12-14 16:26:10', '2020-12-14 16:26:10'),
(21, 10112, 2, 2, 1, '2020-12-14 16:32:29', '2020-12-14 16:32:29'),
(22, 10113, 1, 1, 1, '2020-12-14 20:54:04', '2020-12-14 20:54:04'),
(23, 10107, 4, 3, 1, '2020-12-18 12:54:29', '2020-12-18 12:54:29'),
(24, 10107, 1, 1, 1, '2020-12-29 16:01:23', '2020-12-29 16:01:23'),
(25, 10118, 4, 3, 1, '2021-01-18 14:51:47', '2021-01-18 14:51:47'),
(26, 10075, 2, 2, 1, '2021-01-27 10:46:48', '2021-01-27 10:46:48'),
(27, 10075, 1, 1, 1, '2021-01-27 10:46:48', '2021-01-27 10:46:48'),
(28, 10118, 2, 2, 1, '2021-02-06 04:50:34', '2021-02-06 04:50:34'),
(29, 10149, 2, 2, 1, '2021-04-18 15:05:04', '2021-04-18 15:05:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE `iva` (
  `id` int NOT NULL,
  `configuracion` longtext NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `tipocalculo` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legal_clauses`
--

CREATE TABLE `legal_clauses` (
  `id` int NOT NULL,
  `legal_tab_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `clause` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = Oculto. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `legal_clauses`
--

INSERT INTO `legal_clauses` (`id`, `legal_tab_id`, `title`, `clause`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1.- Introducción', '<p>Al convertirse en un representante de My Business Academy Pro, acepta respetar nuestro C&oacute;digo de &Eacute;tica y conducta. Gracias a estas reglas, su participaci&oacute;n en la red de MBA PRO se llevar&aacute; a cabo de acuerdo con nuestros valores de equidad, moralidad e integridad.<br />\r\n<br />\r\nEste C&oacute;digo de &Eacute;tica rige el comportamiento y las relaciones de los representantes con clientes y prospectos.<br />\r\n<br />\r\nEste C&oacute;digo de &Eacute;tica es un anexo al contrato de My Business Academy Pro.<br />\r\n<br />\r\nLos representantes de MBA Pro, deben cumplir con las reglas de este C&oacute;digo de &Eacute;tica en todo momento en sus tratos comerciales. Cualquier violaci&oacute;n de las reglas de este C&oacute;digo de &Eacute;tica conlleva sanciones como se describe a continuaci&oacute;n.</p>', 1, '2021-04-16 12:37:44', '2021-04-16 12:46:35'),
(2, 1, '2.- Códigos de Conducta', '<p>- HACIA EL CLIENTE EXTERNO<br />\r\n<br />\r\nLos afiliados y promotores del sistema educativo MBA PRO deben ofrecer al cliente final excelente servicio. En este contexto, cada afiliado y promotor se compromete a:</p>\r\n\r\n<p>2.1: Adoptar un m&eacute;todo de trabajo saludable y leal hacia My Business Academy Pro</p>\r\n\r\n<p>2.2: Representar a My Business Academy Pro de manera seria y profesional ante terceros en el contexto de presentaciones, videos y otros medios comunicados a terceros;</p>\r\n\r\n<p>2.3: Proporcione solo informaci&oacute;n y documentos oficiales de My Business Academy Pro. La informaci&oacute;n del producto solo se proporciona en la medida en que cumpla con los datos y declaraciones oficiales de My Business Academy Pro.</p>\r\n\r\n<p>2.4: Sea honesto en sus relaciones con las personas suscritas y br&iacute;ndeles la informaci&oacute;n necesaria que les permita tomar una decisi&oacute;n plenamente informada, en particular sobre el precio y las condiciones de pago;</p>\r\n\r\n<p>2.5: No realice declaraciones falsas o exageradas en la plataforma My Business Academy Pro (mybusinessacademypro.com) y / o las suscripciones ofrecidas en esta plataforma;</p>\r\n\r\n<p>2.6: No d&eacute; ninguna garant&iacute;a sobre los ingresos esperados;</p>\r\n\r\n<p>2.7: Respetar la privacidad de los clientes finales y, por ejemplo, presentarles la oferta de My Business Academy Pro solo con su consentimiento expreso y en horarios razonables para llamadas telef&oacute;nicas;</p>\r\n\r\n<p>2.8: No se acerque a terceros de manera agresiva o demasiado insistente;</p>\r\n\r\n<p>2.9: Favorecer los intercambios personalizados con los clientes finales y no enviar correos electr&oacute;nicos o mensajes promocionando la actividad de My Business Academy Pro de forma masiva;</p>\r\n\r\n<p>2.10: No abusar de la confianza de los clientes finales y, en particular, no explotar la falta de experiencia, enfermedades, edad o habilidades ling&uuml;&iacute;sticas limitadas de los clientes finales;</p>\r\n\r\n<p>2.11: No solicite con firmeza, agresividad o insistencia la suscripci&oacute;n de clientes finales a productos My Business Academy Pro . Est&aacute; prohibido el uso de fuerza f&iacute;sica, acoso o cualquier otro medio opresivo;</p>\r\n\r\n<p>2.12: No condicione la suscripci&oacute;n de un cliente final a la oferta My Business Academy Pro o al cumplimiento de otra obligaci&oacute;n. Por ejemplo, la compra de otro producto por parte del cliente final, el pago de una suma de dinero, etc. ;</p>\r\n\r\n<p>2.13: Esforzarse por trabajar con vestimenta correcta y adoptar un lenguaje distinguido para presentar My Business Academy Pro .<br />\r\n<br />\r\n- HACIA EL CLIENTE INTERNO<br />\r\n<br />\r\nTodos los representantes de My Business Academy Pro deben respetarse mutuamente en todo sentido. Teniendo esto en cuenta, todos los afiliados nos comprometemos a respetar y sumar a la organizaci&oacute;n bajo el estricto seguimiento de las siguientes reglas:</p>\r\n\r\n<p>3.1: Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro, robar material de otros socios comerciales.</p>\r\n\r\n<p>3.2: Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro promover junto con MBA PRO el unirse a otra organizaci&oacute;n comercial prometiendo una mejor supervisi&oacute;n o mejores resultados, es decir, mencionar nuestra academia como beneficio del paquete educativo de otra organizaci&oacute;n.</p>\r\n\r\n<p>3.3: Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro hacer comentarios negativos y / o degradantes sobre otros representantes y promotores de MBA Pro</p>\r\n\r\n<p>3.4: Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro, tratar p&uacute;blicamente en las redes sociales, las disputas con otros representantes y promotores de MBA PRO</p>\r\n\r\n<p>4. Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro, tener actividad competitiva o fraudulenta<br />\r\nLos representantes y promotores de My Business Academy Pro, deben comportarse con un alto sentido de lealtad.- Sin embargo, el ejercicio de la actividad de los representantes y promotores no es exclusivo. No obstante, se abstienen de participar en actividades concurrentes o fraudulentas. Por lo tanto, los socios de My Business Academy Pro se comprometen a:</p>\r\n\r\n<p>4.1: Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro, participar en una red del tipo &ldquo;marketing relacional&rdquo; del gremio educativo o de formaci&oacute;n online (E-Learning) o similar, o participar simult&aacute;neamente con alg&uacute;n competidor de My Business Academy Pro, en particular</p>\r\n\r\n<p>4.2: Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro, participar en una red de tipo &quot;marketing relacional&quot; o similar, en sectores financieros de riesgo, como comercio, divisas, inversiones de riesgo o criptomonedas;</p>\r\n\r\n<p>4.3: Queda expresamente prohibido a los representantes y promotores de My Business Academy Pro, participar en una actividad fraudulenta, como venta piramidal, cadenas de reclutamientos secundarios&nbsp;o esquema Ponzi;</p>', 1, '2021-04-16 12:47:19', '2021-04-29 17:42:05'),
(3, 1, '3.- Comunicaciones', '<p>Todos los contactos con la prensa, la televisi&oacute;n y la radio relacionados con My Business Academy Pro est&aacute;n reservados para MBA PRO, a menos que la direcci&oacute;n de la organizaci&oacute;n acepte alguna excepci&oacute;n y bajo un estricto acuerdo por escrito.<br />\r\n<br />\r\nMy Business Academy Pro, informa a representantes, promotores y afiliados, que las comunicaciones a trav&eacute;s de las redes sociales no est&aacute;n exentas de riesgos y los invita a estar atentos al respecto.</p>', 1, '2021-04-16 13:12:35', '2021-04-16 13:12:35'),
(4, 2, '1.- Introducción', '<p>1.1 - FENTTIX CORP, con domicilio en Panam&aacute; City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones de relaci&oacute;n entre la marca y producto: My Business Academy Pro, referenciadas en estas especificaciones como: MBA PRO, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.mybusinessacademypro.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\nLa organizaci&oacute;n es representada, administrada y operada desde Guadalajara, Jalisco, M&eacute;xico por la Lic. Noemy Alem&aacute;n Cabrera y en lo sucesivo, &quot;My Business Academy Pro&quot; por un lado, y<br />\r\n1.2 - La persona f&iacute;sica o jur&iacute;dica abajo firmante y, en adelante, el &quot;Instructor MBA PRO&quot; por otro lado, en lo sucesivo denominadas colectivamente las &quot;Partes&quot; o individualmente una &quot;Parte&quot;.<br />\r\n<br />\r\n<strong>Lo siguiente se explica de antemano:</strong><br />\r\n<br />\r\nMy Business Academy Pro (MBA PRO) es una plataforma de e-learning que ofrece un cat&aacute;logo de cursos de formaci&oacute;n variados accesibles en el sitio web: www.mybusinessacademypro.com en adelante, la &ldquo;Plataforma&rdquo;) dise&ntilde;ada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a trav&eacute;s de diferentes f&oacute;rmulas de suscripci&oacute;n en funci&oacute;n de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la &quot;Suscripci&oacute;n&quot;).<br />\r\n<br />\r\nEntre las Suscripciones que ofrece MBA PRO, se encuentra la Suscripciones y categor&iacute;as denominadas &quot;SER&quot; &ldquo;HACER&rdquo; &ldquo;TENER&rdquo; y &ldquo;TRASCENDER&rdquo;, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de MBA PRO y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha (en adelante, la &ldquo;Suscripci&oacute;n MBA PRO&rdquo;). MBA PRO tambi&eacute;n ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como &ldquo;comisiones y bonos&rdquo; particularmente establecidos en cada membres&iacute;a y a adquirirse bajo el ejercicio de promoci&oacute;n y venta de una nueva Suscripci&oacute;n gracias a su intervenci&oacute;n o referencia.<br />\r\n<br />\r\n<strong>Pre&aacute;mbulo:</strong><br />\r\n<br />\r\nEl instructor trabaja como instructor y especialista en un campo de acci&oacute;n, en particular y desea poner videos de capacitaci&oacute;n a disposici&oacute;n de MBA PRO. Las Partes desean comprometerse mutuamente con lo siguiente:</p>', 1, '2021-04-16 13:17:49', '2021-04-16 13:17:49'),
(5, 1, '4.- Reportes y Sanciones', '<p>Dependiendo de su gravedad, la (s) violaci&oacute;n (es) de una o m&aacute;s de las reglas mencionadas en este C&oacute;digo de &Eacute;tica podr&iacute;an ser primero objeto de una o m&aacute;s advertencias. My Business Academy Pro tambi&eacute;n se reserva el derecho, a su sola discreci&oacute;n, de aplicar las sanciones que se mencionan a continuaci&oacute;n en funci&oacute;n de la gravedad del incumplimiento y bajo previa y estricta investigaci&oacute;n:</p>\r\n\r\n<p>1.- Bajar de categor&iacute;a, posponer por un per&iacute;odo fijo o cancelar permanentemente una afiliaci&oacute;n.</p>\r\n\r\n<p>2.- Posponer por un per&iacute;odo fijo o cancelar definitivamente el pago de una solicitud de retiro de comisiones.</p>\r\n\r\n<p>3. Suspender por un per&iacute;odo fijo su cuenta My Business Academy Pro y las comisiones adeudadas durante este per&iacute;odo.</p>\r\n\r\n<p>Cualquier persona puede denunciar bajo estricta confidencialidad toda practica que atente contra este c&oacute;digo de &eacute;tica o en general los intereses de la organizaci&oacute;n. Con cualquier denuncia abriremos un proceso de investigaci&oacute;n sobre el cual se tomar&aacute;n las medidas pertinentes. Tenga en cuenta que si My Business Academy Pro considera que el incumplimiento de las reglas mencionadas en este C&oacute;digo de &Eacute;tica es particularmente grave, My Business Academy Pro se reserva el derecho de rescindir unilateralmente el Contrato MBA PRO y cerrar su cuenta en el sitio: www.mybusinessacademypro.com sin previo aviso.</p>\r\n\r\n<p>Cualquier solicitud de aclaraci&oacute;n sobre las normas descritas en este C&oacute;digo &Eacute;tico y / o reclamaci&oacute;n sobre su aplicaci&oacute;n deber&aacute; realizarse a la direcci&oacute;n de correo electr&oacute;nico indicada en su Contrato MBA PRO.</p>', 1, '2021-04-16 13:19:05', '2021-04-29 17:42:57'),
(6, 2, '2.- Objeto del Contrato', '<p>Las Partes acuerdan que el objeto de este Contrato es regular contractualmente los servicios de capacitaci&oacute;n, instrucci&oacute;n y apoyo a las personas orientados al desarrollo de habilidades espec&iacute;ficas en el sector personal, profesional o financiero; los videos de capacitaci&oacute;n est&aacute;n disponibles para los suscriptores en la plataforma de aprendizaje electr&oacute;nico de My Business Academy Pro (la &quot;Plataforma&quot;) proporcionada por el Instructor (el &quot;Contenido&quot;) y la remuneraci&oacute;n por este Contenido es cobrada por MBA PRO.</p>', 1, '2021-04-16 13:26:43', '2021-04-16 13:26:43'),
(7, 2, '3.- Remuneración', '<p>Las Partes acuerdan que la remuneraci&oacute;n que MBA PRO pagar&aacute; al Instructor por el Contenido Contratado resultar&aacute; del reparto mensual del 10% del valor de la membres&iacute;a mensual/anual/vitalicia correspondiente a su modulo, siempre y cuando cumpla con el # m&iacute;nimo de vistas y compras requeridas, el cual deber&aacute; ser mayor a 50 tickets generados por la venta y la renovaci&oacute;n de planes educativos cada mes, excluyendo los USD49 (cuarenta y nueve d&oacute;lares estadounidenses) correspondientes a la licencia My Business Academy Pro y destinados a la gesti&oacute;n y administraci&oacute;n de las herramientas del programa MBA PRO, cargos bancarios, impuestos y cualquier tarifa relacionada con la producci&oacute;n del Contenido.<br />\r\n<br />\r\nCada mes, los resultados del Instructor se calcular&aacute;n de acuerdo con la cantidad de personas que han seguido y comprado la (s) formaci&oacute;n (es) del Instructor, facilitada en el m&oacute;dulo y bajo el costo correspondiente a su expertiz., seg&uacute;n un algoritmo y reglas definidas por MBA PRO, que pueden causar fluctuaciones que el Instructor acepta, y que pueden ser modificado por MBA PRO. Al comienzo de cada mes, MBA PRO enviar&aacute; por correo electr&oacute;nico al Instructor un informe detallado de los resultados generados por la (s) formaci&oacute;n (es) del Instructor durante el mes anterior (el &quot;Informe mensual&quot;).<br />\r\n<br />\r\nAl recibir el Informe Mensual, el Instructor debe emitir la factura correspondiente a MBA PRO. La contraprestaci&oacute;n se abonar&aacute; mensualmente, a partir del d&iacute;a 15 de cada mes siguiente al env&iacute;o de la correspondiente factura, a la cuenta bancaria del Instructor, una vez que su formaci&oacute;n haya sido puesta en la plataforma por un per&iacute;odo m&iacute;nimo de 30 (treinta ) d&iacute;as. El monto m&iacute;nimo por cada pago realizado por MBA PRO es USD149 (ciento cuarenta y nueve d&oacute;lares estadounidenses). Si el monto indicado en una factura mensual es menor a USD 149, este monto ser&aacute; transferido a las pr&oacute;ximas facturas mensuales y ser&aacute; liquidado por MBA PRO cuando el monto total de facturas adeudadas al Instructor haya alcanzado los USD 149.</p>', 1, '2021-04-16 13:27:04', '2021-04-16 13:27:04'),
(8, 2, '4.- Naturaleza del Contrato', '<p>Dada la naturaleza de este Acuerdo, la relaci&oacute;n entre MBA PRO y el Instructor es la de un contratista independiente y ambas Partes acuerdan que no se consideran ni deben considerarse agentes o empleados del otro. Este Contrato no establece una relaci&oacute;n de subordinaci&oacute;n como la de un empleador y un empleado, una asociaci&oacute;n o una empresa conjunta.</p>', 1, '2021-04-16 13:27:36', '2021-04-16 13:27:36'),
(9, 2, '5.- Obligaciones del Instructor', '<p>Bajo este Contrato, el Instructor tendr&aacute; las siguientes obligaciones: Proporcionar el Contenido con total responsabilidad, integridad y diligencia. No distribuya gratuitamente los cursos de formaci&oacute;n encomendados a MBA PRO en ning&uacute;n medio.<br />\r\n<br />\r\nNo vender el Contenido producido por MBA PRO o contenido similar por sus propios medios a un tercero en cualquier medio.<br />\r\n<br />\r\nEn el caso de la producci&oacute;n personal por parte del Instructor de los entrenamientos puestos en la Plataforma, no vender sus entrenamientos sin informar a MBA PRO por escrito para generar los acuerdos correspondientes y mantener siempre la mejor relaci&oacute;n y distinci&oacute;n de la propuesta de valor de MBA PRO.<br />\r\n<br />\r\nOtorgar a MBA PRO una licencia exclusiva para todo el mundo, exclusiva, libre de derechos, transferible y asignable para usar el Contenido, el derecho a reproducirlo, alojarlo, crear copias t&eacute;cnicas, distribuirlo, comunicarlo al p&uacute;blico, modificarlo, analizarlo, visualizarlo y ejecutarlo con el &uacute;nico fin de operar, promover y mejorar la Plataforma.<br />\r\n<br />\r\nGarantizar a MBA PRO frente a cualquier recurso o acci&oacute;n que se le pueda interponer por cualquier causa, con motivo de la cesi&oacute;n cedida, a los autores, beneficiarios, editores y en general a cualquier persona que considere tener alg&uacute;n derecho para hacer valer sobre todo o parte del Contenido o sobre su uso.<br />\r\n<br />\r\nGarantizar a MBA PRO el ejercicio pac&iacute;fico de los derechos cedidos y en particular que no introducir&aacute; en su obra reminiscencias o semejanzas que vulneren los derechos de un tercero; que no ha realizado ni har&aacute; ning&uacute;n acto que pueda impedir o interferir con el pleno disfrute por MBA PRO de los derechos que le confiere esta cesi&oacute;n. En general, el Instructor deber&aacute; abstenerse de cualquier hecho que pueda obstaculizar la explotaci&oacute;n de la obra por parte de MBA PRO.</p>', 1, '2021-04-16 13:28:13', '2021-04-16 13:28:13'),
(10, 2, '6.- Derechos del Instructor', '<p>Bajo este Contrato, el Instructor tiene los siguientes derechos:<br />\r\n<br />\r\nRecibir el pago dentro de los plazos especificados en la cl&aacute;usula 2 de este Contrato. Tener acceso en la Plataforma a su formaci&oacute;n.<br />\r\n<br />\r\nEn el caso de la producci&oacute;n personal por parte del Instructor de sus entrenamientos colocados en la Plataforma de My Business Academy Pro, el Instructor puede revender el contenido de estos entrenamientos siempre que haya notificado a MBA PRO por escrito y obtenido su aprobaci&oacute;n previa por escrito con las condiciones de venta definidas y en particular el precio de venta, el comprador y / o la plataforma en la que estar&aacute; disponible la formaci&oacute;n.<br />\r\n<br />\r\nUtilizar el contenido intelectual del Contenido (es decir, el conocimiento / know-how del Instructor y su conocimiento que hizo posible la producci&oacute;n del Contenido) en medios y formas distintas del Contenido y la Plataforma.<br />\r\n<br />\r\nMBA PRO proh&iacute;be estrictamente cualquier contenido que infrinja los derechos de autor en su Plataforma y eliminar&aacute; cualquier Contenido de este tipo que viole los derechos de propiedad intelectual o derechos de imagen de otros.</p>', 1, '2021-04-16 13:28:47', '2021-04-16 13:28:47'),
(11, 2, '7.- Obligaciones de MBA PRO', '<p>Bajo este Acuerdo, MBA PRO tiene las siguientes obligaciones:<br />\r\n<br />\r\nPagar oportunamente la contraprestaci&oacute;n a que se refiere la cl&aacute;usula 2 de este Acuerdo. No ofrezca ni venda la formaci&oacute;n del Instructor fuera de su Plataforma.<br />\r\n<br />\r\nProteja la informaci&oacute;n personal del Instructor de acuerdo con las leyes y regulaciones aplicables en materia de protecci&oacute;n de datos personales y nunca la comunique a un tercero sin el consentimiento por escrito del Instructor.<br />\r\n<br />\r\nTodo el contenido, fotos, cursos de instructor, solo se utilizar&aacute;n en el contexto definido por MBA PRO a trav&eacute;s de su sitio web y / o redes sociales.<br />\r\n<br />\r\nMBA PRO nunca promover&aacute; ni utilizar&aacute; la imagen del Instructor o del experto fuera de este contexto sin su consentimiento por escrito.</p>', 1, '2021-04-16 13:29:08', '2021-04-16 13:29:08'),
(12, 2, '8.- Derechos de MBA PRO', '<p>MBA PRO tiene los siguientes derechos:<br />\r\n<br />\r\nRecibir el Contenido amparado por este Contrato, con diligencia, honestidad, prontitud y profesionalismo en la ejecuci&oacute;n del mismo;<br />\r\n<br />\r\nQue cualquier anomal&iacute;a que pueda surgir en el contexto del Contenido ser&aacute; tratada por el Instructor, incluidos los problemas de derechos de autor;<br />\r\n<br />\r\nEditar los videos producidos a su conveniencia, de acuerdo con las reglas de edici&oacute;n y cualidades que estime adecuadas.<br />\r\n<br />\r\nObtener del Instructor durante toda la duraci&oacute;n del Contrato un derecho y una licencia limitados, exclusivos, no sublicenciables, intransferibles e intransferibles para utilizar la propiedad intelectual del contenido de la formaci&oacute;n del Instructor de acuerdo con las condiciones definidas por este Contrato.</p>', 1, '2021-04-16 13:29:27', '2021-04-16 13:29:27'),
(13, 2, '9.- Duración del Contrato', '<p>Este Contrato se concluye por un per&iacute;odo de un (1) a&ntilde;o a partir de la fecha de firma. Puede ser prorrogado por acuerdo t&aacute;cito por per&iacute;odos sucesivos de un (1) a&ntilde;o cada uno. Podr&aacute; ser rescindido unilateralmente por cualquiera de las Partes, sujeto al cumplimiento de una notificaci&oacute;n previa en las condiciones descritas en la cl&aacute;usula 9.</p>', 1, '2021-04-16 13:29:48', '2021-04-16 13:29:48'),
(14, 2, '10.- Terminación del Contrato', '<p>En el caso de que, por cualquier motivo, MBA PRO decida renunciar a todo o parte del Contenido amparado por este Acuerdo, deber&aacute; informar al Instructor con 15 (quince) d&iacute;as de anticipaci&oacute;n por correo electr&oacute;nico con acuse de recibo. El Contrato se rescindir&aacute; autom&aacute;ticamente dentro de los 15 (quince) d&iacute;as posteriores al env&iacute;o del correo electr&oacute;nico.<br />\r\n<br />\r\nEl Instructor que por cualquier motivo decida renunciar a todo o parte del Contenido amparado por este Contrato se encuentra en la misma situaci&oacute;n y deber&aacute; informar a MBA PRO con 15 (quince) d&iacute;as de antelaci&oacute;n por correo electr&oacute;nico con acuse de recibo enviado a la direcci&oacute;n indicada en este Acuerdo. El Contrato se rescindir&aacute; autom&aacute;ticamente dentro de los 15 (quince) d&iacute;as posteriores al env&iacute;o del correo electr&oacute;nico.<br />\r\n<br />\r\nEn el caso de que el servicio del Instructor no cumpla con los requisitos de calidad definidos por MBA PRO bajo este Contrato o de vez en cuando por escrito, o el servicio del Instructor no cumpla con el plan de entrenamiento y Aspectos pedag&oacute;gicos definidos por escrito con el equipo de producci&oacute;n de vez en cuando, MBA PRO se reserva el derecho de no publicar la formaci&oacute;n del Instructor en su Plataforma.<br />\r\n<br />\r\nEl Instructor podr&aacute; entonces obtener los videos sin procesar de su entrenamiento sujeto a pagarle a MBA PRO los costos de producci&oacute;n, correspondientes a una suma global de USD 1.000</p>', 1, '2021-04-16 13:30:11', '2021-04-16 13:30:11'),
(15, 2, '11.- Modificación del Contrato', '<p>MBA PRO se reserva el derecho de modificar unilateralmente cualquier estipulaci&oacute;n de este Contrato que se considere no sustancial, mediante el env&iacute;o de una notificaci&oacute;n por escrito al Instructor, que el Instructor acepta.<br />\r\n<br />\r\nCualquier modificaci&oacute;n contractual considerada sustancial solo es v&aacute;lida de mutuo acuerdo por escrito y firmada por ambas Partes.</p>', 1, '2021-04-16 13:30:30', '2021-04-16 13:30:30'),
(16, 2, '12.- Capacidad', '<p>El Instructor y MBA PRO reconocen y garantizan que:<br />\r\n<br />\r\nEste Acuerdo y el cumplimiento de sus respectivas obligaciones en virtud de este Acuerdo no constituyen ni constituir&aacute;n una violaci&oacute;n de ninguna otra consulta, no divulgaci&oacute;n, confidencialidad u otro acuerdo del que sean partes;<br />\r\n<br />\r\nTienen plena capacidad, poder y jurisdicci&oacute;n para ejecutar este Acuerdo y cumplir sus t&eacute;rminos;<br />\r\n<br />\r\nDurante la ejecuci&oacute;n del Contrato, las Partes no deben infringir, desviar o violar ninguna patente, derecho de autor, secreto comercial, marca registrada o cualquier otro derecho de propiedad intelectual de terceros;<br />\r\n<br />\r\nEl Instructor garantiza que es el propietario de los derechos de propiedad intelectual relacionados con las capacitaciones que ofrece a MBA PRO y que estas capacitaciones no violan los derechos de propiedad intelectual de terceros. El Instructor se compromete a indemnizar y proteger a MBA PRO contra todos los reclamos, acciones, responsabilidades, da&ntilde;os, p&eacute;rdidas, multas, sanciones, costos y gastos, incluidos los honorarios razonables de abogados y expertos, que surjan de una violaci&oacute;n. real o alegado de esta cl&aacute;usula 11.</p>', 1, '2021-04-16 13:30:46', '2021-04-16 13:30:46'),
(17, 2, '13.- Datos Personales', '<p>El Instructor acepta que MBA PRO recopila, almacena y procesa datos, incluidos los datos personales relacionados con el Instructor, en el contexto de la ejecuci&oacute;n de este Contrato y para las necesidades del funcionamiento de la Plataforma dentro del marco de las leyes y regulaciones aplicables y Las pol&iacute;ticas de privacidad de MBA PRO est&aacute;n disponibles para el instructor.</p>', 1, '2021-04-16 13:31:01', '2021-04-16 13:31:01'),
(18, 2, '14.- Divisibilidad', '<p>Si una de las disposiciones de este Contrato se considera inv&aacute;lida o inaplicable, la validez y aplicabilidad de las dem&aacute;s disposiciones del Contrato no se ver&aacute;n afectadas.</p>', 1, '2021-04-16 13:31:15', '2021-04-16 13:31:15'),
(19, 2, '15.- Ley Aplicable', '<p>La ejecuci&oacute;n e interpretaci&oacute;n de este Acuerdo se realiza de conformidad con las leyes de M&eacute;xico, pa&iacute;s donde se lleva a cabo la representaci&oacute;n, administraci&oacute;n, producci&oacute;n y operaci&oacute;n de la plataforma.</p>', 1, '2021-04-16 13:31:31', '2021-04-16 13:31:31'),
(20, 2, '16.- Jurisdicción', '<p>El contrato est&aacute; sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretaci&oacute;n, ejecuci&oacute;n, terminaci&oacute;n y / o las consecuencias de su terminaci&oacute;n, las Partes otorgan jurisdicci&oacute;n al Tribunal Comercial de M&eacute;xico.<br />\r\n<br />\r\nDespu&eacute;s de haber le&iacute;do este Acuerdo en su totalidad y conocer su contenido y alcance legal, las Partes aceptan sus t&eacute;rminos y condiciones.</p>', 1, '2021-04-16 13:31:49', '2021-04-16 13:31:49'),
(21, 3, '1. Antecedentes entre los firmantes', '<p>1.1 - FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: My Business Academy Pro, referenciadas en estas especificaciones como: MBA PRO, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.mybusinessacademypro.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\n<br />\r\nLa organizaci&oacute;n es representada, administrada y operada desde Guadalajara, Jalisco, M&eacute;xico por la Lic. Noemy Alem&aacute;n Cabrera y en lo sucesivo, &quot;My Business Academy Pro&quot; por un lado, y<br />\r\n1.2 - La persona f&iacute;sica o jur&iacute;dica abajo firmante y, en adelante, el &quot;Asociado MBA PRO&quot; por otro lado, en lo sucesivo denominadas colectivamente las &quot;Partes&quot; o individualmente una &quot;Parte&quot;.<br />\r\n<br />\r\n<strong>Lo siguiente se explica de antemano:</strong><br />\r\n<br />\r\nMy Business Academy Pro (MBA PRO) es una plataforma de e-learning que ofrece un cat&aacute;logo de cursos de formaci&oacute;n variados accesibles en el sitio web: www.mybusinessacademypro.com en adelante, la &ldquo;Plataforma&rdquo;) dise&ntilde;ada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a trav&eacute;s de diferentes f&oacute;rmulas de suscripci&oacute;n en funci&oacute;n de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la &quot;Suscripci&oacute;n&quot;).<br />\r\n<br />\r\nEntre las Suscripciones que ofrece MBA PRO, se encuentra la Suscripciones y categor&iacute;as denominadas &quot;SER&quot; &ldquo;HACER&rdquo; &ldquo;TENER&rdquo; y &ldquo;TRASCENDER&rdquo;, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de MBA PRO y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha (en adelante, la &ldquo;Suscripci&oacute;n MBA PRO&rdquo;). MBA PRO tambi&eacute;n ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como &ldquo;comisiones y bonos&rdquo; particularmente establecidos en cada membres&iacute;a y a adquirirse bajo el ejercicio de promoci&oacute;n y venta de una nueva Suscripci&oacute;n gracias a su intervenci&oacute;n o referencia.<br />\r\nEl asociado de MBA PRO que ha contratado una Suscripci&oacute;n MBA PRO para para beneficiarse del acceso a la Plataforma, y ha manifestado el deseo de poder beneficiarse de las ventajas mencionadas anteriormente en el caso de que las Suscripciones sean contratadas por terceros gracias a su intervenci&oacute;n o referencia.<br />\r\nLas Partes se han unido para definir los t&eacute;rminos y condiciones bajo los cuales el Asociado MBA PRO se beneficia de ciertas ventajas en este contexto.<br />\r\nSe especifica en este documento que cada una de las partes ha tenido tiempo que considera suficiente para examinar y analizar este contrato, negociado de com&uacute;n acuerdo, en caso de ser necesario, recurriendo al asesoramiento de su elecci&oacute;n si fuera necesario. Por lo tanto, despu&eacute;s de haber tenido toda la informaci&oacute;n &uacute;til para aclarar su consentimiento, MBA PRO y el asociado MBA PRO se acercaron para concluir este contrato de intermediaci&oacute;n (en adelante, el &ldquo;Contrato&rdquo;).<br />\r\n<br />\r\nDicho esto, se acord&oacute; lo siguiente:</p>', 1, '2021-04-16 13:32:46', '2021-04-16 13:32:46'),
(22, 3, '2.- Objeto del Contrato', '<p>MBA PRO encomienda al asociado de MBA PRO que lo acepte, la posibilidad de promocionar las Suscripciones a personas o empresas susceptibles de estar interesadas en ellas. La direcci&oacute;n comercial de MBA PRO pondr&aacute; en contacto con los nuevos suscriptores de la Plataforma. No tendr&aacute; el poder de negociar y/o celebrar contratos adicionales a este sin el consentimiento de la direcci&oacute;n general de MBA PRO y dichos suscriptores ni dar&aacute; beneficios exclusivos ni fuera de los ya marcados en cada membres&iacute;a y especificados en este y los contratos establecidos en la parte legal de la plataforma.<br />\r\n<br />\r\nEn cualquier caso, MBA PRO conservar&aacute; plena libertad para aceptar o rechazar, sin tener que justificarlo, contratar uno o m&aacute;s suscriptores potenciales presentados por el asociado MBA PRO, denomin&aacute;ndolos bajo el rol de: Mentor y formalizando su relaci&oacute;n bajo un estricto criterio legal establecido en su respectivo contrato. De acuerdo con lo dispuesto entre ambas partes, el asociado MBA PRO tiene la calidad de promotor y comerciante, ejerciendo su profesi&oacute;n con total independencia y libertad y, por lo tanto, puede desplegar cualquier actividad de su elecci&oacute;n, realizar cualquier negocio y otras operaciones por cuenta propia fuera de su actividad en los t&eacute;rminos del Contrato, sujeto a las estipulaciones previstas en el Contrato.<br />\r\n<br />\r\nEn consecuencia, el asociado MBA PRO declara que nunca ha sido objeto de condena penal, ni de ninguna de las medidas encaminadas a restringir su capacidad comercial, lo que MBA PRO reconoce en base a esta declaraci&oacute;n.<br />\r\n<br />\r\nEl Asociado MBA PRO no podr&aacute; en ning&uacute;n caso reclamar el desconocimiento de ninguna de las cl&aacute;usulas establecidas en este contrato u otros anexos a la secci&oacute;n legal del sitio: www.mybusinessacademypro.com asumiendo este &uacute;ltimo todos los costos y gastos relacionados con el desempe&ntilde;o de su misi&oacute;n y declarando estar plenamente satisfecho con las condiciones. resultados financieros derivados del Contrato.<br />\r\n<br />\r\nComo corredor que ejerce una profesi&oacute;n comercial independiente, el Asociado MBA PRO har&aacute; su propio negocio y asumir&aacute; el costo de todos los impuestos y aranceles fiscales y parafiscales, as&iacute; como todas las contribuciones sociales que correspondan en el pa&iacute;s de residencia y comercializaci&oacute;n.</p>', 1, '2021-04-16 13:33:04', '2021-04-16 13:33:04'),
(23, 3, '3.- Condiciones de ejecución del contrato', '<p>3.1.- El Asociado MBA PRO deber&aacute; realizar todos los pasos y tr&aacute;mites que sean &uacute;tiles y necesarios para el cumplimiento de su misi&oacute;n seg&uacute;n se define en el art&iacute;culo &ldquo;Objeto del Contrato&rdquo;.<br />\r\n<br />\r\nPor lo tanto, el Asociado MBA PRO debe informar a los posibles suscriptores de todas las condiciones comerciales, administrativas, legales y financieras relacionadas con las Suscripciones, sean esquemas de comisiones, bonificaciones, pagos, pol&iacute;ticas y en general todos los requerimientos que deber&aacute; aceptar para incorporarse a la plataforma.<br />\r\n<br />\r\nEl asociado MBA PRO determinar&aacute; por s&iacute; solo sus m&eacute;todos de trabajo, de forma independiente y sin ning&uacute;n v&iacute;nculo de subordinaci&oacute;n con MBA PRO. En consecuencia, el asociado MBA PRO asegurar&aacute; los riesgos inherentes a su actividad personal. El Asociado MBA PRO ser&aacute; as&iacute; personalmente responsable de las p&oacute;lizas de seguro necesarias para el ejercicio de su profesi&oacute;n, en particular en materia de responsabilidad civil.<br />\r\n<br />\r\nLos precios y condiciones de las Suscripciones son establecidos por MBA PRO, especific&aacute;ndose que estas &uacute;ltimas son escalables. Todos los cambios en las condiciones de las Suscripciones, as&iacute; como las variaciones de precio relacionadas, se comunicar&aacute;n al Asociado MBA PRO antes de su implementaci&oacute;n.<br />\r\n<br />\r\nAdem&aacute;s, el asociado MBA PRO debe asegurarse en particular de que ni la apariencia de sus instalaciones profesionales, ni el estado de su equipo o la calidad de su servicio, puedan dar al p&uacute;blico y suscriptores o suscriptores potenciales un Imagen desfavorable de MBA PRO. El Asociado MBA PRO se compromete a comportarse siempre con My Business Academy Pro como un asociado leal y de buena fe.<br />\r\n<br />\r\n3.2.- El Asociado MBA PRO se compromete a respetar la &eacute;tica y la moralidad en el marco de la actividad que desarrolla en aplicaci&oacute;n de la presente, y en particular al respeto de la &ldquo;Carta de &eacute;tica&rdquo; MBA PRO del que declara haber cursado. conocimiento previo a la firma del presente, que aparece en la secci&oacute;n de &ldquo;informaci&oacute;n legal&rdquo; de la Plataforma, y que describe los comportamientos que el Asociado MBA PRO debe asegurarse de respetar en el contexto de sus intercambios con prospectos suscritos.<br />\r\n<br />\r\n3.3.- MBA PRO proporcionar&aacute; al asociado de MBA PRO el material publicitario y la documentaci&oacute;n necesaria para su actividad en formato digital, as&iacute; como varias herramientas de formaci&oacute;n dedicadas, dentro del &aacute;rea del back office de &ldquo;MBA PRO&rdquo; que aparece dentro de la Plataforma. El Asociado MBA PRO se compromete a velar por la conservaci&oacute;n de los elementos as&iacute; puestos a su disposici&oacute;n y a evitar su divulgaci&oacute;n a terceros. No se podr&aacute; realizar el uso o difusi&oacute;n por parte del Asociado MBA PRO de otros medios y / o herramientas de comunicaci&oacute;n o cualquier otro documento que mencione a MBA PRO, sus marcas, logotipos o servicios y / o cualquier modificaci&oacute;n de los medios existentes por parte del Asociado MBA PRO. que en el respeto de la imagen de marca de MBA PRO.<br />\r\n<br />\r\nComo tal, el asociado MBA PRO se compromete a cesar todo uso de un medio de comunicaci&oacute;n que MBA PRO considere no acorde con la imagen de la red y / o su &eacute;tica, en un plazo m&aacute;ximo de 48 horas desde la notificaci&oacute;n de MBA PRO y para eliminar dicho contenido contencioso dentro de un per&iacute;odo m&aacute;ximo de 15 d&iacute;as desde esta notificaci&oacute;n. En caso contrario, MBA PRO podr&aacute; reclamar la rescisi&oacute;n del Contrato en las condiciones definidas en el art&iacute;culo &quot;Rescisi&oacute;n anticipada&quot;.<br />\r\n<br />\r\n3.4.- Por la presente, MBA PRO otorga al Asociado de MBA PRO un link de referidos disponible en el Backoffice y que probablemente otorgue reducciones en los costos de las membres&iacute;as a los nuevos suscriptores.</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Tipo de Membres&iacute;a</th>\r\n			<th>Costo Mensual con Link de Referido MBA PRO</th>\r\n			<th>Comisi&oacute;n mensual para el asociado MBA PRO</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del SER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 9.99 / mes</td>\r\n			<td>$ 2.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del HACER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 19.99 / mes</td>\r\n			<td>$ 5.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del TENER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 29.99 / mes</td>\r\n			<td>$ 8.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del TRASCENDER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 39.99 / mes</td>\r\n			<td>$ 11.99 / mes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>A solicitud del asociado de MBA PRO, MBA PRO se compromete a saldar todas las comisiones comprobables por las ventas efectivas bajo los links de referidos de cada asociado y para lo cual se configura un c&oacute;digo espec&iacute;fico incrustado en el mismo link de referencia, el cual permite mayor control y seguridad.<br />\r\n<br />\r\n3.5: En general y bajo el compromiso de actuar con la mayor &eacute;tica establecida y ser parte de la comunidad, el asociado MBA PRO debe brindar informaci&oacute;n exacta sobre el avance de su misi&oacute;n y justificar su debida diligencia ante la primera solicitud de MBA PRO.<br />\r\n<br />\r\nLa colaboraci&oacute;n del asociado MBA PRO y MBA PRO requiere un intercambio regular de informaci&oacute;n, por cualquier medio apropiado, en particular por el Backoffice, el correo electr&oacute;nico, la herramienta Telegram Messenger, el grupo dedicado de Facebook y otras redes sociales, pero tambi&eacute;n las videoconferencias / reuniones telef&oacute;nicas a las que las partes participar&aacute;n, teniendo en cuenta su respectiva disponibilidad.</p>', 1, '2021-04-16 13:33:35', '2021-04-16 13:33:35'),
(24, 3, '4.- Independencia de las partes', '<p>Todos los actos realizados por el Asociado MBA PRO en el marco de la ejecuci&oacute;n del Contrato se realizan con total independencia y con exclusi&oacute;n de cualquier relaci&oacute;n de subordinaci&oacute;n, siendo cada una de las Partes responsable del cumplimiento de la normativa aplicable, relativa a la actividad que su propio.<br />\r\n<br />\r\nEl Asociado de MBA PRO reconoce que MBA PRO de ninguna manera le ha otorgado un mandato representativo y, en consecuencia, se reserva el derecho de elegir cuidadosamente a sus socios, representantes, comisionistas, agentes, promotores, influencer, mentores, afiliados o asociados de MBA PRO para actuar en nombre y / o en nombre de My Business Academy Pro.<br />\r\n<br />\r\nEl Asociado MBA PROA no debe recibir fondos bajo ninguna circunstancia a nombre y / o en representaci&oacute;n de MBA PRO, salvo las establecidas en este documento y/o la secci&oacute;n legal de la plataforma por concepto de comisiones y bonos correspondientes a la promoci&oacute;n con venta efectiva de las membres&iacute;as &ldquo;Ser&rdquo;, &ldquo;Hacer&rdquo;, &ldquo;Tener&rdquo; y &ldquo;Trascender&rdquo; o cualquier otra derivada del mismo contenido y programa de compensaciones.</p>', 1, '2021-04-16 13:33:58', '2021-04-16 13:33:58'),
(25, 3, '5.- Comisiones pagadas al asociado MBA PRO', '<p>A cambio de ejecuci&oacute;n exitosa de la referencia del asociado MBA PRO resultante del presente, MBA PRO se compromete a pagar al asociado MBA PRO las comisiones definidas en la cl&aacute;usula 3.4 del Contrato sobre una billetera digital y accesible en el Backoffice de la plataforma. El Asociado MBA PRO solo adquirir&aacute; el derecho a la comisi&oacute;n si la transacci&oacute;n es por una venta efectiva, proporcionado exclusivamente a trav&eacute;s de la intervenci&oacute;n del comit&eacute; de administraci&oacute;n de MBA PRO confirmado y auditado por el departamento de calidad de la organizaci&oacute;n.<br />\r\n<br />\r\nEl pago de las comisiones adeudadas se realizar&aacute; despu&eacute;s de la deducci&oacute;n de los impuestos adeudados o de la retenci&oacute;n en origen. El Asociado MBA PRO se compromete as&iacute; a declarar a las autoridades competentes la compensaci&oacute;n recibida en este contexto, y a pagar todos los derechos e impuestos relacionados, sin que MBA PRO pueda preocuparse.<br />\r\n<br />\r\nEl Asociado MBA PRO tendr&aacute; la opci&oacute;n de transferir los fondos disponibles en billetera a su cuenta bancaria, registrada desde su inscripci&oacute;n a la plataforma, disponible en el Backoffice, siendo dicha transferencia efectiva dentro de los 7 d&iacute;as a partir de la fecha en que el Asociado MBA PRO realiza la solicitud. Tambi&eacute;n se aplicar&aacute;n cargos adicionales equivalentes a US $10 si la solicitud de transferencia del Asociado MBA PRO es a paypal o alg&uacute;n otro banco fuera del convenio y solo ocurre cuando el saldo disponible en su billetera es inferior a US $ 49. Estos costos adicionales no se aplican en caso de rescisi&oacute;n del Contrato en las condiciones definidas en el art&iacute;culo &ldquo;Terminaci&oacute;n anticipada&rdquo; del Contrato.<br />\r\n<br />\r\nEl pago de las comisiones adeudadas al Asociado MBA PRO se realiza en d&oacute;lares estadounidenses o en la moneda local aplicable en el pa&iacute;s del Asociado MBA PRO cuando esta moneda sea admitida por MBA PRO y si el Asociado MBA PRO as&iacute; lo elige. En su caso, la conversi&oacute;n del importe a abonar en la cuenta bancaria del Asociado MBA PRO en moneda local se realizar&aacute; mediante la herramienta que especifique la organizaci&oacute;n de My Business Academy Pro, a la tasa vigente el d&iacute;a en que MBA PRO inicie la transferencia.<br />\r\n<br />\r\nEn caso de cancelaci&oacute;n de una compra por parte de un suscriptor proporcionada por el asociado de MBA PRO, las comisiones relacionadas, si las hubiera, recibidas por el Asociado MBA PRO deben devolverse a MBA PRO. En caso de que se incumpla alguna de las condiciones previstas en el Contrato, las comisiones relacionadas recibidas por el Asociado MBA PRO deber&aacute;n devolverse a MBA PRO.<br />\r\n<br />\r\nLas Partes acuerdan expresamente a este efecto que la compensaci&oacute;n puede tener lugar de pleno derecho entre todas las sumas adeudadas por MBA PRO al Asociado de MBA PRO en aplicaci&oacute;n del presente, y todas las sumas adeudadas por el Asociado de MBA PRO a MBA PRO. Esta compensaci&oacute;n tendr&aacute; lugar dentro la billetera de la plataforma y asignada a su numero de afiliaci&oacute;n correspondiente.</p>', 1, '2021-04-16 13:34:23', '2021-04-16 13:34:23'),
(26, 3, '6.- Duración del Contrato', '<p>El Contrato es indivisible del contrato de Suscripci&oacute;n MBA PRO A suscrito por el Asociado MBA PRO durante la validaci&oacute;n del documento de Condiciones Generales de Uso y Venta, y concluido por la duraci&oacute;n de este.<br />\r\n<br />\r\nEl Contrato podr&aacute; renovarse por pacto t&aacute;cito, y finalizar&aacute; autom&aacute;ticamente af&iacute;n con la extinci&oacute;n (sea cual sea la causa: finalizaci&oacute;n de su plazo, extinci&oacute;n anticipada, vigencia o desvinculaci&oacute;n del medio de pago etc.) de la Suscripci&oacute;n de que se trate.<br />\r\n<br />\r\nEsta indivisibilidad no es rec&iacute;proca, y cada una de las Partes tendr&aacute; la opci&oacute;n de rescindir este Contrato en las condiciones previstas en las cl&aacute;usulas 7 y 8 de este documento, sin que ello d&eacute; lugar a la rescisi&oacute;n del contrato relativo a la Suscripci&oacute;n.</p>', 1, '2021-04-16 13:34:42', '2021-04-16 13:34:42'),
(27, 3, '7.- Intuitu Personae', '<p>El Contrato se concluye en consideraci&oacute;n de la persona del Asociado MBA PRO, quien se compromete a involucrarse personalmente en el desempe&ntilde;o de los objetivos establecidos, derivada de estos presentes.<br />\r\n<br />\r\nEn consecuencia, el Asociado MBA PRO no puede transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a un tercero sin el consentimiento previo por escrito de MBA PRO.<br />\r\n<br />\r\nPor su parte, MBA PRO queda libre de transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a cualquier tercero de su elecci&oacute;n, sin que el Asociado MBA PRO pueda invocarlos a efectos de cancelar el contrato.</p>', 1, '2021-04-16 13:35:06', '2021-04-16 13:35:06'),
(28, 3, '8.- Terminación Anticipada', '<p>El Contrato podr&aacute; ser rescindido anticipadamente, por cualquiera de las Partes, en caso de incumplimiento de cualquiera de las obligaciones.<br />\r\n<br />\r\nLa rescisi&oacute;n anticipada se producir&aacute; quince d&iacute;as despu&eacute;s de la notificaci&oacute;n formal por correo certificado con acuse de recibo a la Parte incumplidora, indicando la intenci&oacute;n de aplicar esta cl&aacute;usula de rescisi&oacute;n expresa, que ha quedado sin efecto.<br />\r\n<br />\r\nEn particular, se considerar&aacute; como una falla que justifica la implementaci&oacute;n de esta cl&aacute;usula, sin que esta lista sea exhaustiva:<br />\r\n<br />\r\n- el incumplimiento por parte del asociado de una de las obligaciones derivadas del art&iacute;culo 2;<br />\r\n- incumplimiento de la normativa aplicable por parte del Asociado MBA PRO y / o de la imagen de marca de MBA PRO;<br />\r\n- incumplimiento por parte de MBA PRO de su compromiso de pagar una comisi&oacute;n adeudada por MBA PRO al asociado de MBA PRO en la fecha de vencimiento;<br />\r\n- Incumplimiento por parte de MBA PRO de su compromiso de recompra de membres&iacute;as por parte del asociado MBA PRO.</p>', 1, '2021-04-16 13:35:26', '2021-04-16 13:35:26'),
(29, 3, '9.- Consecuencias de la rescisión del contrato', '<p>En caso de rescisi&oacute;n del Contrato, cualquiera que sea la causa, el compromiso del Asociado MBA PRO finalizar&aacute; autom&aacute;ticamente.<br />\r\n<br />\r\nNo obstante lo anterior, en caso de rescisi&oacute;n del Contrato por un motivo distinto a la rescisi&oacute;n del Contrato por culpa del Asociado MBA PRO, MBA PRO se compromete a abonar a este &uacute;ltimo las comisiones relativas y acumuladas a la fecha de su salida.<br />\r\n<br />\r\nEl Asociado MBA PRO tambi&eacute;n puede seguir teniendo acceso limitado al contenido correspondiente a cada paquete adquirido (incluidos los streaming de MBA PRO y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha y al Backoffice, sujeto a disponibilidad de la Plataforma, siendo MBA PRO libre de rescindirla en cualquier momento.<br />\r\n<br />\r\nEn cualquier caso, el Asociado MBA PRO no podr&aacute; reclamar ninguna compensaci&oacute;n al finalizar el Contrato.</p>', 1, '2021-04-16 13:35:51', '2021-04-16 13:35:51'),
(30, 3, '10.- Derechos de propiedad intelectual e industrial', '<p>El Asociado MBA PRO tiene derecho a utilizar las marcas, logotipos y signos distintivos de MBA PRO para la promoci&oacute;n y venta exclusiva de Suscripciones, en estricto cumplimiento de estas condiciones.<br />\r\n<br />\r\nEl Asociado MBA PRO no adquiere ning&uacute;n derecho de propiedad o licencia, cualquiera que sea la base o el contenido, sobre estas marcas comerciales y signos distintivos. Bajo ninguna circunstancia el Asociado MBA PRO est&aacute; autorizado a registrar una marca y / o cualquier derecho de propiedad intelectual o industrial de cualquier tipo y / o un nombre de dominio que comprenda los t&eacute;rminos de My Business Academy Pro</p>', 1, '2021-04-16 13:36:27', '2021-04-16 13:36:27');
INSERT INTO `legal_clauses` (`id`, `legal_tab_id`, `title`, `clause`, `status`, `created_at`, `updated_at`) VALUES
(31, 3, '11.- Confidencialidad', '<p>Las Partes se comprometen a mantener la confidencialidad de la informaci&oacute;n recopilada durante o durante la aplicaci&oacute;n del Contrato.<br />\r\n<br />\r\nTomar&aacute;n todas las precauciones &uacute;tiles para evitar la divulgaci&oacute;n prohibida o el uso de informaci&oacute;n confidencial por parte de sus empleados, subagentes o cualquier profesional que trabaje en su nombre.<br />\r\n<br />\r\nEsta obligaci&oacute;n sobrevivir&aacute; a la rescisi&oacute;n del Contrato sin l&iacute;mite de tiempo, cualquiera que sea la causa de la rescisi&oacute;n (vencimiento, rescisi&oacute;n anticipada), siempre que la informaci&oacute;n en cuesti&oacute;n no haya pasado al dominio p&uacute;blico</p>', 1, '2021-04-16 13:36:42', '2021-04-16 13:36:42'),
(32, 3, '12.- Modificaciones', '<p>Para ser exigible contra las Partes, cualquier modificaci&oacute;n realizada al Contrato debe ser objeto de una enmienda escrita firmada por las Partes.</p>', 1, '2021-04-16 13:36:58', '2021-04-16 13:36:58'),
(33, 3, '13.- Ley aplicable y atribución de competencia', '<p>El contrato est&aacute; sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretaci&oacute;n, ejecuci&oacute;n, terminaci&oacute;n y / o las consecuencias de su terminaci&oacute;n, las Partes otorgan jurisdicci&oacute;n al Tribunal Comercial de M&eacute;xico.</p>', 1, '2021-04-16 13:37:18', '2021-04-16 13:37:18'),
(34, 4, 'Introducción', '<p>FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: My Business Academy Pro, referenciadas en estas especificaciones como: MBA PRO, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.mybusinessacademypro.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\n<br />\r\nEl sitio MBA PRO, ofrece un servicio de suscripci&oacute;n personalizado que permite a los usuarios acceder a su contenido a trav&eacute;s de tutoriales de capacitaci&oacute;n, transmitidos a trav&eacute;s de wifi en cualquier modelo de PC, laptop, smartphone, tablet u otros dispositivos que puedan reproducir con wifi el sitio y su contenido.<br />\r\n<br />\r\nEstos t&eacute;rminos y condiciones rigen el uso de nuestro servicio. Tal como se utilizan en este documento, las expresiones &quot;servicio MBA PRO&quot;, &quot;nuestro servicio&quot; o &quot;el servicio&quot; se refieren al servicio personalizado proporcionado por MBA PRO que le permite buscar y ver su contenido , incluidas todas las funciones, recomendaciones, el Sitio y las interfaces de usuario, as&iacute; como todo el Contenido de MBA PRO y el software asociado con nuestro servicio.<br />\r\n<br />\r\nMBA PRO invita a los usuarios a leer detenidamente estos T &amp; C. La suscripci&oacute;n a cualquier membres&iacute;a en el Sitio implica la aceptaci&oacute;n del CGUV. Las caracter&iacute;sticas de cada suscripci&oacute;n se indican en la p&aacute;gina dedicada del Sitio.<br />\r\n<br />\r\nLas fotograf&iacute;as de los especialistas, mentores y profesores si son contractuales, los gr&aacute;ficos y el resto de las ilustraciones fueron adquiridos mediante una biblioteca digital con una licencia pagada para la adquisici&oacute;n de dicho material.<br />\r\n<br />\r\nEl Usuario reconoce haber le&iacute;do y aceptado los TyC al marcar la casilla provista para hacerlo antes de suscribirse a una suscripci&oacute;n en l&iacute;nea. Estos TyC se comunican sistem&aacute;ticamente al Usuario que los solicita.</p>', 1, '2021-04-16 13:38:15', '2021-04-16 13:38:31'),
(35, 4, '1.- Suscripción', '<p>1.1: Su suscripci&oacute;n MBA PRO le permite el acceso al servicio de educaci&oacute;n en l&iacute;nea (Contenido de MBA PRO) de forma continua hasta su terminaci&oacute;n o vencimiento, seg&uacute;n las condiciones del paquete de suscripci&oacute;n. Para utilizar el servicio MBA PRO, debe tener acceso a Internet y un dispositivo compatible con MBA PRO, y debe proporcionarnos uno o m&aacute;s M&eacute;todos de pago. Un &quot;M&eacute;todo de pago&quot; significa un m&eacute;todo de pago actual, v&aacute;lido y aceptado que puede actualizarse de vez en cuando y puede incluir el pago a trav&eacute;s de su cuenta con un tercero. A menos que cancele su suscripci&oacute;n antes de la fecha de facturaci&oacute;n, en donde nos reservamos el derecho de su ingreso a la academia a partir del d&iacute;a final de su per&iacute;odo de facturaci&oacute;n en curso.<br />\r\n<br />\r\n1.2: Podemos ofrecer diferentes paquetes de suscripci&oacute;n, incluidos paquetes promocionales especiales. Algunos de ellos pueden tener diferentes condiciones y restricciones, sobre las cuales se le informar&aacute; cuando se registre o en otras comunicaciones que se le pongan a su disposici&oacute;n. Puede encontrar los detalles espec&iacute;ficos de su suscripci&oacute;n a MBA PRO visitando nuestro sitio web: www.mybusinessacademypro.com y haciendo clic en el enlace &ldquo;t&eacute;rminos y condiciones&rdquo; disponible en la parte inferior de la p&aacute;gina principal del sitio.<br />\r\n<br />\r\n1.3 : Precio. Cuando un usuario desea suscribirse a una suscripci&oacute;n al servicio MBA PRO, el precio de la suscripci&oacute;n correspondiente que aparece en este Sitio, el cual ser&aacute; especificado en D&oacute;lares (USD) sin impuestos y tiene en cuenta las reducciones aplicables vigentes el d&iacute;a de la suscripci&oacute;n. Las suscripciones se describen en la p&aacute;gina correspondiente dentro del Sitio.<br />\r\n<br />\r\n1.4 : Para suscribirse, el Usuario debe completar todos los campos obligatorios o en su defecto no se podr&aacute; completar la suscripci&oacute;n al paquete educativo que desee adquirir.<br />\r\n<br />\r\n1.5 : Usted garantiza y declara por su honor que toda la informaci&oacute;n comunicada en el Sitio, en particular durante su suscripci&oacute;n, es exacta y conforme. Usted acepta actualizar su informaci&oacute;n personal desde la p&aacute;gina dedicada a este &uacute;ltimo y disponible en la pesta&ntilde;a &quot;Mi perfil&quot; del Sitio.</p>', 1, '2021-04-16 13:38:46', '2021-04-16 13:38:46'),
(36, 4, '2.- Facturación y Rescisión', '<p>2.1 : Ciclo de facturaci&oacute;n<br />\r\nLas tarifas de suscripci&oacute;n al servicio MBA PRO se facturar&aacute;n a trav&eacute;s de su M&eacute;todo de pago en la fecha de facturaci&oacute;n espec&iacute;fica y el impuesto indicado en su p&aacute;gina &quot;Mi perfil&quot;. La duraci&oacute;n de su ciclo de facturaci&oacute;n depender&aacute; del tipo de suscripci&oacute;n que elija cuando se inscriba en el servicio. En algunos casos, su fecha de facturaci&oacute;n puede cambiar, por ejemplo, si su m&eacute;todo de pago no funcion&oacute; o si su suscripci&oacute;n paga comenz&oacute; en un d&iacute;a que no figura en un mes determinado. Acceda a nuestro sitio web y a la p&aacute;gina &quot;Mi perfil&quot; para conocer la fecha de su pr&oacute;xima factura.<br />\r\n<br />\r\n2.2 : Medios de pago<br />\r\nPara utilizar el servicio MBA PRO, debe proporcionarnos uno o m&aacute;s m&eacute;todos de pago. Usted nos autoriza a debitar su cuenta a trav&eacute;s de cualquier M&eacute;todo de pago asociado con su cuenta en caso de que su M&eacute;todo de pago principal sea rechazado o ya no est&eacute; disponible para el pago de sus tarifas de suscripci&oacute;n. Usted es responsable de cualquier monto no retirado. Si un pago no se liquida debido al vencimiento de la tarjeta, saldo insuficiente o cualquier otro motivo, y no cancela su cuenta, podemos suspender su acceso a nuestro servicio hasta que ha registrado correctamente su cuenta a trav&eacute;s de un m&eacute;todo de pago v&aacute;lido. Para ciertos m&eacute;todos de pago, el proveedor de servicios puede cobrarle ciertos costos, como tarifas por transacciones internacionales u otras tarifas relacionadas con el procesamiento de su M&eacute;todo de pago. Los cargos por impuestos locales pueden variar seg&uacute;n el m&eacute;todo de pago utilizado. Comun&iacute;quese con el proveedor de su m&eacute;todo de pago para obtener m&aacute;s informaci&oacute;n.<br />\r\n<br />\r\n2.3 : Actualizaci&oacute;n de sus m&eacute;todos de pago<br />\r\nPuede actualizar sus m&eacute;todos de ingresando a la secci&oacute;n dentro de la p&aacute;gina de &quot;Back Office&quot;. Tambi&eacute;n podemos actualizar sus m&eacute;todos de pago con la informaci&oacute;n proporcionada por los proveedores de servicios de pago. Despu&eacute;s de cualquier actualizaci&oacute;n, nos autoriza a continuar debitando su cuenta a trav&eacute;s de los m&eacute;todos de pago correspondientes.<br />\r\n<br />\r\n2.4 : Cancelaci&oacute;n<br />\r\nPuede cancelar su suscripci&oacute;n a My Business Academy Pro en cualquier momento y seguir&aacute; teniendo acceso al servicio hasta el final de su per&iacute;odo de facturaci&oacute;n. Los pagos no son reembolsables y no otorgamos reembolsos ni cr&eacute;ditos por per&iacute;odos de uso parcial o por cualquier Contenido de MBA PRO no visto. Para cancelar su suscripci&oacute;n, vaya a la p&aacute;gina &quot;Mi perfil&quot;, haga clic en &quot;Cancelar mi suscripci&oacute;n&quot; y siga las instrucciones. Si cancela su suscripci&oacute;n, su cuenta se cerrar&aacute; autom&aacute;ticamente al final de su per&iacute;odo de facturaci&oacute;n actual. Para saber cu&aacute;ndo se cerrar&aacute; su cuenta, haga clic en la p&aacute;gina &quot;Mi perfil&quot;.<br />\r\n<br />\r\n2.5 : Cambios de precio y suscripci&oacute;n<br />\r\nEs posible que cambiemos nuestras suscripciones y el precio de nuestro servicio de vez en cuando. Sin embargo, cualquier cambio en los precios o sus suscripciones solo ser&aacute; aplicable despu&eacute;s de un per&iacute;odo m&iacute;nimo de 30 d&iacute;as despu&eacute;s de recibir una notificaci&oacute;n nuestra.</p>', 1, '2021-04-16 13:39:07', '2021-04-16 13:39:07'),
(37, 4, '3.- Servicio MBA PRO', '<p>3.1 : Debes tener 18 a&ntilde;os o haber alcanzado la mayor&iacute;a de edad legal en tu provincia, territorio o pa&iacute;s para suscribirte al servicio MBA PRO. Los menores pueden utilizar el servicio solo bajo la supervisi&oacute;n de un adulto.<br />\r\n<br />\r\n3.2 : El servicio MBA PRO, as&iacute; como cualquier contenido visualizado a trav&eacute;s del servicio, est&aacute; reservado solo para uso personal y no comercial y no debe compartirse con terceros. Durante el plazo de su suscripci&oacute;n, le otorgamos un derecho limitado, no exclusivo e intransferible para acceder al servicio MBA PRO y ver el Contenido MBA PRO. Salvo lo anterior, no se le otorga ning&uacute;n derecho, t&iacute;tulo o inter&eacute;s. Acepta no utilizar el servicio para proyecciones p&uacute;blicas.<br />\r\n<br />\r\n3.3 : Solo podr&aacute; ver Contenido de MBA PRO en los pa&iacute;ses donde ofrecemos nuestro servicio. El contenido disponible puede variar seg&uacute;n la regi&oacute;n y se puede cambiar en cualquier momento.<br />\r\n<br />\r\n3.4 : El servicio MBA PRO, incluido el contenido de la biblioteca, se actualiza peri&oacute;dicamente. Asimismo, probamos peri&oacute;dicamente varios aspectos de nuestro servicio, incluido nuestro sitio web, las interfaces de usuario, las ofertas promocionales y la disponibilidad de Contenido MBA PRO.<br />\r\n<br />\r\n3.5: Usted acepta no archivar, reproducir, distribuir, modificar, mostrar, ejecutar, publicar, otorgar, crear trabajos derivados, vender o usar (excepto con la autorizaci&oacute;n expresa mencionada en estos TyC) el contenido y la informaci&oacute;n del servicio MBA PRO ( u obtenido a trav&eacute;s de &eacute;l). Tambi&eacute;n acepta no: eludir, eliminar, modificar, desactivar, destruir o anular las protecciones del contenido dentro del marco del servicio MBA PRO; utilizar bots, rastreadores web, herramientas de recolecci&oacute;n web u otros m&eacute;todos automatizados para acceder al servicio MBA PRO; descompilar, realizar ingenier&iacute;a inversa o desensamblar cualquier software, producto o proceso accesible a trav&eacute;s del servicio MBA PRO; insertar cualquier c&oacute;digo o producto, o manipular el contenido del servicio MBA PRO de cualquier forma; o utilizar cualquier m&eacute;todo de extracci&oacute;n, recopilaci&oacute;n o extracci&oacute;n de datos. As&iacute; mismo, acepta no descargar, mostrar, enviar por correo electr&oacute;nico o enviar o transmitir de ninguna manera ning&uacute;n contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o equipo inform&aacute;tico o telecomunicaciones asociadas con el servicio MBA PRO, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio, enviar por correo electr&oacute;nico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio MBA PRO, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio. enviar por correo electr&oacute;nico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio MBA PRO, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio.<br />\r\n<br />\r\n3.6 : La calidad de visualizaci&oacute;n del Contenido MBA PRO puede variar de un dispositivo a otro y puede verse influenciada por varios factores, incluida su ubicaci&oacute;n, ancho de banda disponible y / o la velocidad de su conexi&oacute;n a Internet. Los costos de conexi&oacute;n a Internet son su responsabilidad. Comun&iacute;quese con su proveedor de servicios de Internet para obtener detalles sobre posibles cargos por uso de datos de Internet.</p>', 1, '2021-04-16 13:39:22', '2021-04-16 13:39:22'),
(38, 4, '4.- Contraseñas y acceso a la cuenta', '<p>4.1: El Usuario que ha creado la cuenta MBA PRO y se le facturan las tarifas de suscripci&oacute;n a trav&eacute;s del M&eacute;todo de pago elegido (el &quot;Titular de la cuenta&quot;) tiene acceso a la cuenta My Business Academy Pro y tiene control sobre ella y los dispositivos compatibles con My Business Academy Pro utilizados para acceder a nuestro servicio. Este Usuario es responsable de toda la actividad que ocurra a trav&eacute;s de su cuenta My Business Academy Pro. Con el fin de mantener el control de la cuenta y evitar que alguien acceda a ella (y, en particular, acceder a la informaci&oacute;n del historial de lectura de la cuenta)<br />\r\n<br />\r\n4.2 : Usted es personalmente responsable de actualizar y mantener informaci&oacute;n precisa relacionada con su cuenta. Podemos cancelar o suspender su cuenta para protegerlo, as&iacute; como para proteger a My Business Academy Pro o a sus socios, contra cualquier robo de identidad u otra actividad fraudulenta. El borrado de la cuenta conlleva la p&eacute;rdida definitiva de todas las ventajas y servicios adquiridos en el Sitio.<br />\r\n<br />\r\n4.3 : En el caso de que MBA PRO elimine una cuenta por incumplimiento de los deberes y obligaciones establecidos en estos TyC, el titular de la cuenta infractor tiene formalmente prohibido volver a registrarse en el Sitio directamente, a trav&eacute;s de otra direcci&oacute;n de correo electr&oacute;nico o por intermediario sin la autorizaci&oacute;n expresa de My Business Academy Pro.<br />\r\n<br />\r\n4.4 : Si un Titular sospecha de fraude en alg&uacute;n momento, deber&aacute; ponerse en contacto con My Business Academy Pro lo antes posible, para que MBA PRO pueda tomar las medidas necesarias y regularizar la situaci&oacute;n.</p>', 1, '2021-04-16 13:39:40', '2021-04-16 13:39:40'),
(39, 4, '5.- Tratamiento de datos personales', '<p>5.1 : My Business Academy Pro , es responsable del procesamiento, puede recopilar y procesar datos personales relativos a los Usuarios que deseen acceder al Sitio, en particular a trav&eacute;s del formulario de registro, las cookies o cualquier otro formulario que pueda ser ofrecidos a trav&eacute;s del Sitio. Si el Usuario rechaza el procesamiento de sus datos, se recomienda que se abstenga de utilizar el Sitio.<br />\r\n<br />\r\n5.2 : Los datos recabados son imprescindibles para la tramitaci&oacute;n de sus solicitudes y su fichero dentro de My Business Academy Pro y se conservar&aacute;n por periodos de tiempo proporcionales a los fines para los que fueron recabados y en cumplimiento de las obligaciones que incumben al responsable de tratos. Est&aacute;n destinados principalmente a los departamentos relevantes de My Business Academy Pro.<br />\r\n<br />\r\n5.3 : Dentro de los l&iacute;mites establecidos por nuestras pol&iacute;ticas, t&eacute;rminos y condiciones los Usuarios tienen, en lo particular, el derecho de acceso a sus datos personales, los derechos de modificar, rectificar, limitar, oponerse al tratamiento de estos o el derecho a solicitar su cesi&oacute;n y supresi&oacute;n siempre que pueda estar justificado por un motivo leg&iacute;timo. Las solicitudes deben dirigirse al gerente a soporte@mybusinessacademypro.com - El titular de los datos tambi&eacute;n tiene la posibilidad de emprender una queja por cualquier controversia. Si tenemos alguna duda sobre su identidad, es posible que se le solicite una copia de un documento oficial de su identidad.<br />\r\n<br />\r\n5.4 : El responsable del tratamiento se compromete a implementar la protecci&oacute;n f&iacute;sica y l&oacute;gica de los datos personales de acuerdo con los requisitos de nuestro Reglamento.<br />\r\n<br />\r\n5.5 : My Business Academy Pro podr&aacute; recurrir a terceras empresas para realizar determinadas operaciones. Al navegar por el Sitio, el Usuario acepta que terceras empresas puedan tener acceso a sus datos para permitir el correcto funcionamiento del Sitio. Estas empresas de terceros solo tienen acceso a los datos recopilados en el contexto de la realizaci&oacute;n de una tarea espec&iacute;fica. My Business Academy Pro sigue siendo responsable del procesamiento de estos datos. Adem&aacute;s, es posible que el Usuario deba recibir informaci&oacute;n u ofertas comerciales de My Business Academy Pro y/o sus socios. El Usuario podr&aacute; en cualquier momento oponerse a la recepci&oacute;n de estas ofertas comerciales, dirigi&eacute;ndose a la siguiente direcci&oacute;n de correo electr&oacute;nico: soporte@mybusinessacademypro.com<br />\r\n<br />\r\n5.6 : La informaci&oacute;n de los usuarios podr&aacute; ser transmitida a terceros sin su consentimiento previo expreso con el fin de lograr los siguientes objetivos:<br />\r\n1. Respetar la ley,<br />\r\n2. Proteger a cualquier persona contra da&ntilde;os graves,<br />\r\n3. Luchar contra el fraude o infracciones de My Business Academy Pro y sus usuarios,<br />\r\n4. Proteger los derechos de propiedad de My Business Academy Pro .</p>', 1, '2021-04-16 13:39:58', '2021-04-16 13:39:58'),
(40, 4, '6.- Cookies', '<p>6.1 : Para permitir que sus Usuarios se beneficien de una navegaci&oacute;n &oacute;ptima en el Sitio y un mejor funcionamiento de las diferentes interfaces y aplicaciones, My Business Academy Pro puede colocar una cookie en la computadora del Usuario. Esta cookie se utiliza para almacenar informaci&oacute;n relacionada con la navegaci&oacute;n en el Sitio, as&iacute; como cualquier dato ingresado por los Usuarios (en particular b&uacute;squedas, inicio de sesi&oacute;n, correo electr&oacute;nico, contrase&ntilde;a).<br />\r\n<br />\r\n6.2 : El Usuario autoriza expresamente a My Business Academy Pro a colocar un archivo denominado &quot;cookie&quot; en el disco duro del usuario.<br />\r\n<br />\r\n6.3 : El Usuario tiene la opci&oacute;n de bloquear, modificar el per&iacute;odo de retenci&oacute;n o eliminar esta cookie a trav&eacute;s de la interfaz de su navegador. Si la desactivaci&oacute;n sistem&aacute;tica de las cookies en el navegador del Usuario le impide utilizar determinados servicios o caracter&iacute;sticas del Sitio, este mal funcionamiento no puede en modo alguno constituir un perjuicio para el Usuario, que no puede reclamar ninguna indemnizaci&oacute;n por este hecho.</p>', 1, '2021-04-16 13:40:12', '2021-04-16 13:40:12'),
(41, 4, '7.- Responsabilidad', '<p>7.1 : My Business Academy Pro no se hace responsable en modo alguno de la indisponibilidad, ya sea temporal o permanente del Sitio y aunque My Business Academy Pro implementa todos sus medios para garantizar el servicio en todo momento, es posible que se interrumpe en cualquier momento. Adem&aacute;s, My Business Academy Pro se reserva el derecho, mediante acto voluntario, de hacer que el Sitio no est&eacute; disponible para llevar a cabo cualquier operaci&oacute;n de actualizaci&oacute;n, mejora o mantenimiento. En la medida de lo posible, My Business Academy Pro se esforzar&aacute; por notificar a los Usuarios de esto a trav&eacute;s del Sitio.<br />\r\n<br />\r\n7.2 : Como se mencion&oacute; anteriormente en este documento, My Business Academy Pro de ninguna manera se hace responsable de cualquier falla en la operaci&oacute;n de los servicios por razones fuera de su control, imprevisibles e irresistibles o cuya culpa no pueda ser atribuible a ello.</p>', 1, '2021-04-16 13:41:00', '2021-04-16 13:41:00'),
(42, 4, '8.- Derecho de desistimiento del usuario', '<p>8.1 : La provisi&oacute;n intangible, digital, directa e inmediata de Contenido MBA PRO al Usuario constituye una excepci&oacute;n al Consumidor y solo se dar&aacute; por situaciones en donde se comprometa el contenido a actividades no legales o no permitidas y estipuladas en este documento. En consecuencia, al aceptar estos TyC y desear tener acceso al Contenido de MBA PRO, el Usuario renuncia expresamente a su derecho de desistimiento.</p>', 1, '2021-04-16 13:41:18', '2021-04-16 13:41:18'),
(43, 4, '9.- Propiedad intelectual', '<p>9.1 : La marca, logo, tecnolog&iacute;as, carta gr&aacute;fica, datos, textos, comentarios, ilustraciones, im&aacute;genes, animadas o no, secuencias de video, sonidos, patentes, datos privados, tecnolog&iacute;as, productos, publicaciones, proceso de este Sitio son propiedad exclusiva de My Business Academy Pro y de terceros que le hayan otorgado una licencia y obras intelectuales protegidas por derechos de autor. Cualquier distribuci&oacute;n, explotaci&oacute;n, representaci&oacute;n, reproducci&oacute;n, ya sea parcial o total, sin la previa y expresa autorizaci&oacute;n de My Business Academy Pro est&aacute; estrictamente prohibida y expondr&aacute; al infractor a procesos civiles y penales.</p>', 1, '2021-04-16 13:41:34', '2021-04-16 13:41:34'),
(44, 4, '10.- Varios', '<p>10.1 : Leyes aplicables. Estas CGUV se rigen e interpretan de acuerdo con la ley mexicana, pa&iacute;s en donde se llev&oacute; a cabo el desarrollo intelectual del proyecto y sus contenidos y/o en Colombia, pa&iacute;s en donde se llev&oacute; el desarrollo del software. Estos TyC no pueden limitar las disposiciones relativas a la protecci&oacute;n del consumidor de las que puede beneficiarse en virtud de la legislaci&oacute;n vigente en su pa&iacute;s de residencia. Cualquier disputa que pueda surgir entre My Business Academy Pro y un Usuario durante la ejecuci&oacute;n de estas condiciones ser&aacute; objeto de un intento de resoluci&oacute;n amistosa. De lo contrario, las disputas se llevar&aacute;n a la atenci&oacute;n de los tribunales de derecho com&uacute;n competentes a los pa&iacute;ses antes mencionados.<br />\r\n<br />\r\n10.2 : Contenido no solicitado. My Business Academy Pro no acepta ning&uacute;n contenido o ideas no solicitados relacionados con el Contenido de MBA PRO y no es responsable de las similitudes entre su contenido o programaci&oacute;n y el contenido o las ideas que se le transmiten.<br />\r\n<br />\r\n10.3 : Atenci&oacute;n al cliente. Para obtener m&aacute;s informaci&oacute;n sobre nuestro servicio y sus caracter&iacute;sticas o si necesita ayuda para usar su cuenta, comun&iacute;quese con nosotros a la siguiente direcci&oacute;n: soporte@mybusinessacademypro.com , visite la secci&oacute;n de soporte dentro del home de My Business Academy Pro disponible.<br />\r\n<br />\r\n10.4 : Nulidad - Invalidez. Si una o m&aacute;s disposiciones de estas CGUV resultan ser inv&aacute;lidas, ilegales o inaplicables, las disposiciones restantes seguir&aacute;n siendo plenamente aplicables y conservar&aacute;n sus efectos.<br />\r\n<br />\r\n10.5 : No renuncia. El hecho de que My Business Academy Pro o el Usuario no ejerza, en ning&uacute;n momento, una prerrogativa reconocida por estos TyC en ning&uacute;n caso podr&aacute; interpretarse como una renuncia expresa o t&aacute;cita al derecho a ejercer dicha prerrogativa en el futuro.<br />\r\n<br />\r\n10.6 : Modificaci&oacute;n del sitio. My Business Academy Pro se reserva el derecho de modificar el Sitio, as&iacute; como cualquier otro componente de los servicios MBA PRO proporcionados por My Business Academy Pro a trav&eacute;s del Sitio.<br />\r\n<br />\r\n10.7 : Modificaci&oacute;n del CGUV. My Business Academy Pro puede, de vez en cuando, modificar estos TyC. Le notificaremos al menos 30 d&iacute;as antes de que dichos cambios sean aplicables.<br />\r\n<br />\r\n10.8 : Comunicaciones electr&oacute;nicas. Le enviaremos informaci&oacute;n de la cuenta (por ejemplo, autorizaciones de pago, facturas, cambios de contrase&ntilde;a o m&eacute;todo de pago, mensajes de confirmaci&oacute;n, notificaciones) solo de forma electr&oacute;nica, por ejemplo, por correo electr&oacute;nico. &#39;enviando un correo electr&oacute;nico a la direcci&oacute;n que nos proporcion&oacute; al registrarse.<br />\r\n<br />\r\n<strong>IDIOMAS DISPONIBLES</strong></p>\r\n\r\n<ul>\r\n	<li>ALEM&Aacute;N</li>\r\n	<li>&Aacute;RABE</li>\r\n	<li>CHINO</li>\r\n	<li>ESPA&Ntilde;OL</li>\r\n	<li>FRANC&Eacute;S</li>\r\n	<li>HINDI</li>\r\n	<li>INGL&Eacute;S</li>\r\n	<li>ITALIANO</li>\r\n	<li>JAPON&Eacute;S</li>\r\n	<li>POSTUGU&Eacute;S</li>\r\n	<li>RUSO</li>\r\n	<li>VIETNAMITA</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>REDES SOCIALES</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>NUESTRA COMUNIDAD</strong><br />\r\n<a href=\"http://localhost:8000/shopping-cart/memberships\">&nbsp;&Uacute;nase a MBA PRO con un plan principiante</a><br />\r\n<a href=\"http://localhost:8000/afiliados\">&nbsp;Convi&eacute;rtete en entrenador</a><br />\r\n<br />\r\n<strong>SOPORTE Y ATENCI&Oacute;N AL CLIENTE</strong><br />\r\nNuestro servicio de atenci&oacute;n al cliente internacional est&aacute; disponible las 24 horas del d&iacute;a, los 365 d&iacute;as del a&ntilde;o, sin embargo y su solicitud ser&aacute; enlistada en un sistema de tickets calendarizados y atendidos en tiempo y forma por nuestros agentes de soporte, inform&aacute;ndole cualquier detalle de su solicitud via correo electr&oacute;nico.<br />\r\n<a href=\"http://localhost:8000/admin/soporte\">&nbsp;Ir a soporte</a><br />\r\n<br />\r\n&copy; Copyright 2020-2021, Todos los derechos reservados<br />\r\nMy Business Academy Pro<br />\r\n<strong>MBA PRO</strong>&nbsp;es una marca impulsada por<br />\r\n<strong>FENTTIX CORP</strong></p>', 1, '2021-04-16 13:41:49', '2021-04-16 13:41:49'),
(45, 5, 'Introducción', '<p>El Afiliado de MBA Pro recibir&aacute;, una comisi&oacute;n abonada a su billetera interna de acuerdo con los siguientes criterios:<br />\r\n<br />\r\nSe acuerda expresamente que el afiliado a MBA Pro recibir&aacute; &uacute;nica y exclusivamente compensaciones de ventas efectivas.<br />\r\nEn general, el derecho de comisi&oacute;n solo ser&aacute; adquirido una vez al mes por el afiliado de MBA Pro a condici&oacute;n del total de las ventas efectivas referidas y confirmadas por su n&uacute;mero de afiliaci&oacute;n.<br />\r\nEl afiliado de MBA Pro podr&aacute; consultar los detalles de las transacciones y sus comisiones en el Backoffice en el marco de estos presentes puntos:</p>', 1, '2021-04-16 14:16:02', '2021-04-16 14:17:52'),
(46, 5, '1.- Comisión residual mensual', '<p>La comisi&oacute;n residual mensual consiste en el monto que recibe el afiliado de MBA Pro, por la venta de una suscripci&oacute;n concluida a trav&eacute;s de uno de sus enlaces de patrocinio entre MBA PRO y un nuevo suscriptor. El registro de la comisi&oacute;n se generar&aacute; en cada pago de la suscripci&oacute;n elegida por parte del nuevo firmante hasta su terminaci&oacute;n. Por lo tanto, el afiliado de MBA PRO que refiere, seguir&aacute; recibiendo dicha comisi&oacute;n hasta que el afiliado referido deje de pagar su membres&iacute;a.<br />\r\n<br />\r\nLa tasa de comisi&oacute;n del Afiliado de MBA PRO se establece en el 30% de la facturaci&oacute;n mensual, solo de sus ventas efectivas, registradas bajo su n&uacute;mero de afiliaci&oacute;n y disponibles para su contabilidad en su backoffice.<br />\r\n<br />\r\nLos montos establecidos son sin incluir los impuestos generados por las mismas ventas y van de acuerdo con la siguiente tabla:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Tipo de Membres&iacute;a</th>\r\n			<th>Costo Mensual con Link de Referido MBA PRO</th>\r\n			<th>Comisi&oacute;n mensual para el afiliado MBA PRO</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del SER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 9.99 / mes</td>\r\n			<td>$ 2.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del HACER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 19.99 / mes</td>\r\n			<td>$ 5.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del TENER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 29.99 / mes</td>\r\n			<td>$ 8.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del TRASCENDER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 39.99 / mes</td>\r\n			<td>$ 11.99 / mes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-16 14:16:33', '2021-04-16 14:16:33'),
(47, 5, '2.- Comisión residual anual', '<p>La comisi&oacute;n residual anual consiste en el monto que recibe el afiliado de MBA Pro, por la venta de una Suscripci&oacute;n concluida a trav&eacute;s de uno de sus enlaces de patrocinio entre MBA PRO y un nuevo suscriptor. La comisi&oacute;n se generar&aacute; en cada pago de la Suscripci&oacute;n elegida por parte del nuevo suscriptor hasta su terminaci&oacute;n. Por lo tanto, el Socio MBA PRO seguir&aacute; recibiendo la comisi&oacute;n hasta que el afiliado referido deje de pagar su membres&iacute;a.<br />\r\n<br />\r\nLa tasa de comisi&oacute;n del Afiliado de MBA PRO se establece en el 30% de la facturaci&oacute;n anual, solo de sus ventas efectivas, sin incluir los impuestos generados por las mismas, de acuerdo con la siguiente tabla:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Tipo de Membres&iacute;a</th>\r\n			<th>Costo con Link de Referido MBA PRO</th>\r\n			<th>Comisi&oacute;n mensual para el afiliado MBA PRO</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del SER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 100 por a&ntilde;o</td>\r\n			<td>$ 30 por a&ntilde;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del HACER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 220 por a&ntilde;o</td>\r\n			<td>$ 66 por a&ntilde;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del TENER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 340 por a&ntilde;o</td>\r\n			<td>$ 102 por a&ntilde;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del TRASCENDER<br />\r\n			(con link de referencia MBA PRO)</td>\r\n			<td>$ 450 por a&ntilde;o</td>\r\n			<td>$ 135 por a&ntilde;o</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-16 14:16:52', '2021-04-16 14:16:52'),
(48, 5, '3.- Fechas de pago', '<p>Todas las comisiones son acumulativas y se especifica que por est&aacute;ndar de calidad y procesos administrativos internos, los pagos de comisiones por las ventas efectivas con links de referidos se generar&aacute;n dentro de los 7 primeros d&iacute;as posteriores al mes consiguiente de sus registros, es decir:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Ejemplos</th>\r\n			<th>Tipo de Membres&iacute;a Adquirida</th>\r\n			<th>Tipo de Suscripci&oacute;n</th>\r\n			<th>Costo de la Membres&iacute;a</th>\r\n			<th>Registros realizados de compras efectivas y pagos de nuevos afiliados con link de referido MBA PRO</th>\r\n			<th>Monto de Comisi&oacute;n</th>\r\n			<th>Fecha de Pago de Comisiones</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>SER</td>\r\n			<td>MENSUAL</td>\r\n			<td>$ 9.99 USD</td>\r\n			<td>Del 1 al 30 de Enero</td>\r\n			<td>Pago mensual $ 2.99 USD</td>\r\n			<td>Entre el 5 y 7 de Febrero</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>TENER</td>\r\n			<td>ANUAL</td>\r\n			<td>1 solo cobro anual $ 340 USD</td>\r\n			<td>D&iacute;a: 12 de Agosto</td>\r\n			<td>1 solo pago anual $ 102 USD</td>\r\n			<td>Entre el 5 y 7 de Septiembre</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-16 14:17:10', '2021-04-16 14:17:10'),
(49, 5, '4.- Límites de comisiones', '<p>Las comisiones de todos los afiliados de MBA PRO est&aacute;n delimitadas al 30% de la facturaci&oacute;n total de sus ventas efectivas y confirmadas a trav&eacute;s del link de referencia y configuraci&oacute;n de numero de afiliaci&oacute;n, excluidos los impuestos generados por MBA PRO durante el mes.<br />\r\nPara el calculo de comisiones se tomar&aacute; en consideraci&oacute;n los siguientes criterios:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Ejemplo</th>\r\n			<th>Tipo de Membres&iacute;a Adquirida</th>\r\n			<th>Tipo de Suscripci&oacute;n</th>\r\n			<th>Costo de la Membres&iacute;a</th>\r\n			<th>Fecha de Compra</th>\r\n			<th>Monto de Comisi&oacute;n</th>\r\n			<th>Medio de Pago</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>SER</td>\r\n			<td>MENSUAL</td>\r\n			<td>$ 9.99 USD</td>\r\n			<td>15-01-2021</td>\r\n			<td>$ 2.99 USD</td>\r\n			<td>Tarjeta de Cr&eacute;dito</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>TRASCENDER</td>\r\n			<td>ANUAL</td>\r\n			<td>$ 450 USD</td>\r\n			<td>15-01-2021</td>\r\n			<td>$ 135 USD</td>\r\n			<td>Bitcoin</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-16 14:17:27', '2021-04-16 14:17:27'),
(50, 5, '5.- Reembolsos', '<p>Los reembolsos enumerados se generar&aacute;n directamente en la billetera del afiliado MBA PRO en un plazo m&aacute;ximo de 15 d&iacute;as a partir de la solicitud realizada por este &uacute;ltimo, sujeto a la presentaci&oacute;n de los documentos de respaldo pertinentes al an&aacute;lisis del caso.</p>', 1, '2021-04-16 14:17:41', '2021-04-16 14:17:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legal_tabs`
--

CREATE TABLE `legal_tabs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = Oculto. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `legal_tabs`
--

INSERT INTO `legal_tabs` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Código Ético', 1, '2021-04-16 10:37:37', '2021-04-16 12:30:43'),
(2, 'Contrato del Instructor', 1, '2021-04-16 10:40:43', '2021-04-16 12:07:30'),
(3, 'Contrato del Afiliado', 1, '2021-04-16 10:41:08', '2021-04-16 12:07:30'),
(4, 'Condiciones Generales de Uso y Venta', 1, '2021-04-16 10:41:39', '2021-04-16 12:07:30'),
(5, 'Programa de Afiliados', 1, '2021-04-16 10:42:11', '2021-04-16 12:07:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons`
--

CREATE TABLE `lessons` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `subcategory_id` int DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `english_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `url` varchar(255) NOT NULL,
  `english_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `subcategory_id`, `title`, `english_title`, `slug`, `description`, `url`, `english_url`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Oferta Inicial de Acciones', '\r\nInitial offering of shares', 'oferta-inicial-de-acciones', 'En esta lección conocerá cómo es que funciona y qué instrumentos se comercian, se buscara conocer cómo llegan dichos instrumentos a cotizar en los mercados a través de lo que se conoce como Oferta Inicial de Acciones u OPI (IPO por sus siglas en inglés Initial Public Oferring), que no es más que la primera oferta pública que una empresa hace de sus acciones en el mercado de valores. Para efectos de esta lección navegaremos entre ambos términos IPO y OPI con el fin de que se familiarice con los dos ya que suele suceder que sean utilizados ambos dentro del mercado de operaciones bursátiles.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429141024', 'https://player.vimeo.com/video/429379568', '2020-10-18 00:45:37', '2020-10-18 00:45:37'),
(2, 2, 1, 'Principios de la Inteligencia Artificial', '\r\nPrinciples of artificial intelligence', 'principios-de-la-inteligencia-artificial', 'El objetivo de esta lección es comprender la Inteligencia Artificial como una sucesión de algoritmos que nos ayudan a extraer valor de grandes volúmenes de datos de forma ágil y eficiente, facilitando la toma de decisiones de manera automática. Conocerá el gran impacto que tiene la IA en la cadena de valor de los negocios que condiciona muchas de las decisiones que toman no solo las empresas, sino también los individuos.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428002364', 'https://player.vimeo.com/video/427903733', '2020-10-18 01:11:42', '2020-10-18 01:11:42'),
(3, 3, 1, 'Definiendo Blockchain', '\r\nDefining blockchain', 'definiendo-blockchain', 'En esta lección conocerás el origen de la Blockchain, es una tecnología o sistema de programación, también conocida como \"cadena de bloques\". Explicaremos como funciona, sus componentes, ventajas y sobre todo que este tipo de transacciones pueden ser veraces y verificables posicionándose en la mira de los operadores. \r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429833224', 'https://player.vimeo.com/video/430551521', '2020-10-18 01:46:17', '2020-10-18 01:46:17'),
(4, 4, 1, 'Lección 1: Introducción al Análisis Econométrico', '\r\nLesson 1: Introduction to Econometric Analysis', 'leccion-1-introduccion-al-analisis-econometrico', 'En este nivel conocerá los principales conceptos en el campo de la operación y los mercados financieros. En esta lección, profundizará más sobre los delicados detalles del análisis fundamental y técnico, así como una introducción a fondo a una de las herramientas más versátiles del análisis financiero: El Análisis Econométrico.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428381075', 'https://player.vimeo.com/video/428027179', '2020-10-19 23:03:27', '2020-10-19 23:03:27'),
(5, 5, 1, 'Lección 1: Aspectos Tecnológicos de las Criptomonedas', 'Lesson 1: Technological Aspects of Cryptocurrencies', 'leccion-1-aspectos-tecnologicos-de-las-criptomonedas', 'Es el momento de conocer e integrarse a la nueva era de la económica con la digitalización, donde el papel ya no será protagónico en el intercambio de divisas. Conozca en esta lección la forma en la que opera y despeje sus dudas de este tipo de divisa. Se familiariza con los términos, significados y conceptos del lenguaje de las Criptomonedas.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428379385', 'https://player.vimeo.com/video/429049013', '2020-10-19 23:55:37', '2020-10-19 23:55:37'),
(6, 6, 1, 'Lección 1: Introducción y Antecedentes a las Finanzas Conductuales', '\r\nLesson 1: Introduction and Background to Behavioral Finance', 'leccion-1-introduccion-y-antecedentes-a-las-finanzas-conductuales', 'Comprenderá que las finanzas conductuales son el estudio del comportamiento de los inversores y sus procesos mentales para entender las anomalías del mercado de valores y su comportamiento de retorno, que representan una intersección de las finanzas económicas por un lado y la psicología por el otro. Siendo una mezcla de finanzas y psicología. Conocerá la terminología y los conceptos básicos de la teoría financiera estándar para comprender claramente el concepto de anomalías del mercado financiero.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429149545', 'https://player.vimeo.com/video/426784221', '2020-10-20 15:19:46', '2020-10-20 15:19:46'),
(7, 6, 2, 'Lección 2: El Sesgo del Efecto de Disposición', 'Lesson 2: The Disposition Effect Bias', 'leccion-2-el-sesgo-del-efecto-de-disposicion', 'El efecto de disposición resulta de la motivación psicológica para asegurar las ganancias tan pronto como sea posible y la dificultad psicológica de aceptar las pérdidas y mantenerlas con la esperanza de recuperarse. En esta lección comprenderá, como es que el Sesgo de Disposición, resulta de nuestros miedos y nuestras esperanzas.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/426775192', 'https://player.vimeo.com/video/427892720', '2020-10-20 15:31:13', '2020-10-20 15:31:13'),
(8, 6, 3, 'Análisis Técnico Avanzado', '\r\nAdvanced Technical Analysis', 'analisis-tecnico-avanzado', 'En esta lección nos proponemos ayudarle a comprender y utilizar una serie de nociones y métodos progresivos relacionados con el análisis técnico, fundamental y econométrico, a familiarizarse con los derivados y a construir así estrategias viables en el ámbito del mercado. Además, se familiarizará con algunos preconceptos que influyen en la forma de actuar de las personas en el mercado.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/427992719', 'https://player.vimeo.com/video/435835339', '2020-10-20 15:47:39', '2020-10-20 15:47:39'),
(9, 6, 3, 'Derivados', 'Derivatives', 'derivados', 'Comprenderá como los Derivados son instrumentos financieros, cuyo valor se deriva del valor de otra entidad subyacente (que puede ser un índice, un activo o un tipo de interés), son básicamente contratos entre dos partes que funcionan como el instrumento financiero llamado Pagaré.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/435849174', 'https://player.vimeo.com/video/428390899', '2020-10-20 15:51:36', '2020-10-20 15:51:36'),
(10, 6, 4, 'Análisis de Fundamentos Avanzado', '\r\nAdvanced Fundamental Analysis', 'analisis-de-fundamentos-avanzado', 'En esta lección conocerá el Análisis de Regresión Lineal, las medidas preventivas que hay que considerar y construir para una sana regresión; verificar y elaborar series y datos relevantes, lo que concierne a las formulas y algoritmos, para su mayor comprensión, elaboración y diagnóstico. \r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/427998498', 'https://player.vimeo.com/video/427992719', '2020-10-20 16:07:32', '2020-10-20 16:07:32'),
(11, 1, 2, '¿Cómo llegan las acciones a la Bolsa de Valores?', 'How do the shares get on the Stock Market?', 'como-llegan-las-acciones-a-la-bolsa-de-valores', 'En esta lección reconocerá los mecanismos por lo que las empresas tienen interés en cotizar en la bolsa de valores, sus ventajas y los procesos de suscripción, requisitos y estándares para ser listados. Recordando la primicia que “Estar en un mercado de valores principal, supone una campaña de prestigio para las empresas”.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429142515', 'https://player.vimeo.com/video/429381512', '2020-10-20 17:39:45', '2020-10-20 17:39:45'),
(12, 1, 3, '¿Cuáles son los principales métodos de valoración de acciones?', '\r\nWhat are the main stock valuation methods?', 'cuales-son-los-principales-metodos-de-valoracion-de-acciones', 'En esta lección se analizará la parte más relevante de las ofertas iniciales que tiene que ver con el precio que se les asignará a las acciones, ya que este determinara el monto a recaudar y el tiempo en el que ocurrirá. Conocerá los diferentes propósitos que se persiguen al momento de realizar una evaluación en las empresas ya que para el vendedor el precio es mayor que el valor; mientras que para el comprador es lo contrario.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429141872', 'https://player.vimeo.com/video/429383598', '2020-10-20 17:41:43', '2020-10-20 17:41:43'),
(13, 1, 3, 'Caso de la IPO de Facebook en el 2012', 'Case of the Facebook IPO in 2012', 'caso-de-la-ipo-de-facebook-en-el-2012', 'En esta lección se revisará el caso más relevante e histórico ocurrido en el 2012, La primera salida a Bolsa del Gigante Facebook, se analizarán sus errores, resaltando la importancia del cumplimiento de los aspectos vistos en las lecciones anteriores con respecto de la IPO.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428392823', 'https://player.vimeo.com/video/429141375', '2020-10-20 17:44:16', '2020-10-20 17:44:16'),
(14, 2, 2, 'Machine Learning', 'Machine Learning', 'machine-learning', 'Las predicciones económicas y financieras se basan en datos y en el posterior análisis e interpretación de estos. Una herramienta básica para el funcionamiento de la IA es el llamado “Machine Learning”. En esta lección se comprenderá que es un sistema de aprendizaje automático capaz de analizar millones de datos para detectar, tendencias, correlaciones y previsiones. Aprenderá los tipos de aprendizajes que identifican una gran serie de patrones complejos determinados por una gran cantidad de parámetros.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428004492', 'https://player.vimeo.com/video/427901524', '2020-10-20 17:52:00', '2020-10-20 17:52:00'),
(15, 2, 3, 'AI en Finanzas', 'AI in Finance', 'ai-en-finanzas', 'En esta lección entenderás cómo las nuevas tecnologías han puesto al usuario en el centro y el usuario ha tomado el control de sus finanzas desde sus dispositivos móviles, revisarás cómo el entorno financiero ha experimentado avances sustanciales en tecnología y digitalización y cómo la inteligencia artificial podría generar eficiencias operativas en áreas que van desde la gestión de riesgos y la negociación hasta la suscripción de seguros y reclamaciones.\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428006951', 'https://player.vimeo.com/video/427909357', '2020-10-20 17:54:24', '2020-10-20 17:54:24'),
(16, 2, 4, 'Robots de Trading', NULL, 'robots-de-trading', 'A lo largo de todas las lecciones se ha visto cómo el mundo de Forex no existiría sin el avance de la tecnología, ya que el comercio que se realiza en el mundo es 100% electrónico. En esta lección comprenderá cómo la tecnología ha influido en el mundo de Forex, desde el comercio de robots hasta las señales alcistas o bajistas, y cómo los robots de comercio automático son los más utilizados por los operadores de hoy.\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429433027', 'https://player.vimeo.com/video/428000474', '2020-10-20 17:56:29', '2020-10-20 17:56:29'),
(17, 3, 2, 'Operando la Cadena de Bloques', '\r\nOperating the Blockchain', 'operando-la-cadena-de-bloques', 'Conocerá cómo operan Las claves criptográficas que son una cadena de números y letras; y están hechas por generadores de claves o keygens. La relevancia de los protocolos, confidencialidad, seguridad y transparencia de las Blockchain.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429860155', 'https://player.vimeo.com/video/430109452', '2020-10-20 18:25:57', '2020-10-20 18:25:57'),
(18, 3, 3, 'Aplicaciones de Blockchain', 'Blockchain Applications', 'aplicaciones-de-blockchain', 'En esta lección se verán elementos relevantes referentes al reclamo de garantía, derivados, reclamos de seguro, verificación de identidad, el Internet de las Cosas (IoT), archivos y almacenamiento, propiedad intelectual, redes sociales, entre los temas referentes a la Aplicación de Blockchain.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429127869', 'https://player.vimeo.com/video/429114833', '2020-10-20 18:44:51', '2020-10-20 18:44:51'),
(19, 3, 4, 'Opciones Binarias', '\r\nBinary options', 'opciones-binarias', 'A lo largo de esta lección aprenderá a reconocer las diferentes formas de operar con opciones binarias. Las opciones financieras son instrumentos financieros que otorgan al comprador el derecho y al vendedor la obligación de realizar la transacción a un precio fijado y en una fecha determinada. Esta opción es ampliamente utilizada por los brokers para obtener cobertura de sus inversiones.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/432389698', 'https://player.vimeo.com/video/430147892', '2020-10-20 18:46:23', '2020-10-20 18:46:23'),
(20, 3, 5, 'Futuros de Criptomonedas', '\r\nCryptocurrency Futures', 'futuros-de-criptomonedas', 'Comprenderá cómo operan los ‘criptofuturos’ y como le permiten operar en función de cotizaciones ‘futuras’, asumiendo riesgos y aprovechando oportunidades sin necesidad de poseer el activo subyacente. Pero lo más relevante de la lección sus Ventajas y Desventajas.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429328166', 'https://player.vimeo.com/video/429385122', '2020-10-20 19:04:14', '2020-10-20 19:04:14'),
(21, 5, 2, 'Token', 'Token', 'token', 'Se definirá que es un Token o Ficha, su estrecha relación con el mundo de las criptomonedas, que, aunque carentes de valor legal, tienen un valor de “Curso Legal”, en esta lección comprenderá la diferencia y su practicidad. Conocerá los diferentes tipos de billeteras Bitcoin, atendiendo diferentes requisitos y variando en términos de protección y seguridad, conveniencia y accesibilidad.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429058970', 'https://player.vimeo.com/video/429049757', '2020-10-20 19:14:11', '2020-10-20 19:14:11'),
(22, 5, 2, 'Oferta Inicial de Moneda (Initial Coin Offering – ICO)', '\r\nInitial Coin Offering (ICO)', 'oferta-inicial-de-moneda-initial-coin-offering-ico', 'Esta lección nos llevará a explorar el ICO (Initial Coin Offering). Las ICO han surgido como un nuevo mecanismo de financiamiento para emprendimientos empresariales en su mayoría ligados al ramo tecnológico. Conocerá cómo funciona una ICO, que es y cómo crear un Contrato Inteligente dentro de una ICO, por que una empresa de nueva creación prefiere usar una ICO para financiarse, porque es conveniente invertir en tokens de ICO y sobre todo cómo NO caer en estafas con estas herramientas.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/429061075', 'https://player.vimeo.com/video/429054650', '2020-10-20 19:16:16', '2020-10-20 19:16:16'),
(23, 7, 1, 'Lección 1: Introducción a las finanzas', 'Lesson 1: Basic of Finance', 'leccion-1-introduccion-a-las-finanzas', 'En esta lección del curso aprenderás fundamentos de finanzas, así como terminología que te será útil en las siguientes lecciones, junto a un experto, podrás aprender principalmente de manera didáctica sobre Finanzas Personales, Finanzas Públicas y Finanzas Corporativas.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/419985946', 'https://player.vimeo.com/video/429133067', '2020-11-03 20:24:07', '2020-11-03 20:42:37'),
(24, 7, 1, 'Lección 2: El Dinero y el Sistema Monetario', 'Lesson 2: Money and Monetary System', 'leccion-2-el-dinero-y-el-sistema-monetario', 'En esta lección aprenderás sobre la historia del dinero, función y características, su evolución hasta los tiempos actuales, los diferentes estados en que se encuentra y lo que respalda su valor.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/422955120', 'https://player.vimeo.com/video/428631332', '2020-11-03 20:32:54', '2020-11-03 20:32:54'),
(25, 7, 2, 'Lección 3: Clases de Activos', 'Lesson 3: Asset Categories', 'leccion-3-clases-de-activos', 'En esta lección aprenderás qué son los activos y cuáles son los principales activos que existen en el mercado. La lección tiene como objetivo, ser una fuente de información detallada que te ayude a tomar mejores decisiones de inversión.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/422197501', 'https://player.vimeo.com/video/428634734', '2020-11-03 20:35:06', '2020-11-03 20:35:06'),
(26, 7, 2, 'Lección 4: Riesgo y Retorno', 'Lesson 4: Risk and Return', 'leccion-4-riesgo-y-retorno', 'En esta lección, aprenderás sobre conceptos de riesgo y retorno, el instructor te explicará sobre las estrategias financieras preventivas y correctivas, así como los riesgos sistemáticos y no sistemáticos que te ayudarán con la protección de activos.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/422958969', 'https://player.vimeo.com/video/428118601', '2020-11-03 20:37:01', '2020-11-03 20:37:01'),
(27, 7, 3, 'Lección 5: Introducción a la Gestión Financiera', 'Lesson 5: Introduction to Financial Management', 'leccion-5-introduccion-a-la-gestion-financiera', 'Esta lección se enfocará específicamente en finanzas corporativas, el experto te enseñará la importancia de la planificación y de los ciclos financieros para la toma de decisiones en las empresas, también se detallarán las diferentes formas organizacionales o sociedades mercantiles que existen.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/422960865', 'https://player.vimeo.com/video/428122987', '2020-11-03 20:39:28', '2020-11-03 20:39:28'),
(28, 7, 3, 'Lección 6: Introducción a los Mercados Financieros', 'Lesson 6: Introduction to Financial Markets', 'leccion-6-introduccion-a-los-mercados-financieros', 'En esta lección te hablamos sobre los principios y reglas de las finanzas. A sí mismo se explica la relación positiva o negativa entre riesgo y retorno, aprendiendo una de las reglas más importantes de las finanzas “A mayor riesgo, mayor retorno”.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/422214959', 'https://player.vimeo.com/video/428642325', '2020-11-03 20:42:07', '2020-11-03 20:42:07'),
(29, 8, 1, 'Lección 1: Introducción a FOREX', 'Lesson 1: Introduction to FOREX', 'leccion-1-introduccion-a-forex', 'Conocerás los conceptos básicos de la moneda y los términos Forex & Foreign Exchange, comprenderá por que se vuelven tan interesantes los mercados de divisas, sus ventajas, riesgos, indicadores y sobre todo, como operan.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428397663', 'https://player.vimeo.com/video/428400225', '2020-11-03 20:53:16', '2020-11-03 20:53:16'),
(30, 8, 1, 'Lección 2: Introducción a FOREX Parte 2', 'Lesson 2: Introduction to FOREX, part 2', 'leccion-2-introduccion-a-forex-parte-2', 'Puedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428403150', 'https://player.vimeo.com/video/429154119', '2020-11-03 20:55:07', '2020-11-03 20:55:07'),
(31, 8, 2, 'Lección 3: La Regla 80/20 para el Comercio de los Mercados Financieros', 'Lesson 3: The 80/20 Rule for Financial Market Trading', 'leccion-3-la-regla-8020-para-el-comercio-de-los-mercados-financieros', 'En esta lección se examinará el aspecto fundamental del intercambio de divisas. Conocerá y comprenderá como la Regla considera que el 80% del tiempo los mercados están operando técnicamente, y el 20% del tiempo los mercados están operando por información nueva, así que el 20% es fundamental.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/428396479', 'https://player.vimeo.com/video/428394705', '2020-11-03 20:57:33', '2020-11-03 20:57:33'),
(32, 9, 1, 'Lección 1: Sobre la Bolsa de Valores', 'Lesson 1: About the Stock Market', 'leccion-1-sobre-la-bolsa-de-valores', 'En esta lección aprenderás qué es la bolsa de valores y cuáles son las principales bolsas de valores en el mundo. Conocerás sobre el análisis financiero que es una herramienta indispensable para la toma de decisiones. Además de una breve introducción al estudio micro y macroeconómico.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/420169646', 'https://player.vimeo.com/video/429108860', '2020-11-11 22:45:13', '2020-11-11 22:45:13'),
(33, 9, 2, 'Lección 2: Análisis de Activos', 'Lesson 2: Asset Analysis', 'leccion-2-analisis-de-activos', 'En esta lección aprenderemos a medir la salud financiera de una empresa, analizando los estados financieros e indicadores económicos, con esto podrás medir los activos de las empresas o valorar acciones.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/420173048', 'https://player.vimeo.com/video/429110587', '2020-11-11 22:47:04', '2020-11-11 22:47:04'),
(34, 9, 2, 'Lección 3: Esencia de la Criptomoneda', 'Lesson 3: Essence of the Cryptomoney', 'leccion-3-esencia-de-la-criptomoneda', 'En esta lección hablaremos de la esencia de la criptomoneda y sus ventajas en los mercados de activos. El experto te detalla cuales son las criptomonedas más populares del mercado actual.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/420175615', 'https://player.vimeo.com/video/429111668', '2020-11-11 22:51:09', '2020-11-11 22:51:09'),
(35, 9, 3, 'Lección 4: Noción de Riesgo', 'Lesson 4: Risk Notion', 'leccion-4-nocion-de-riesgo', 'En esta lección profundizaremos más sobre el concepto de riesgo financiero, además de explicar los diferentes tipos de riesgos que existen en las inversiones.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/422463858', 'https://player.vimeo.com/video/430852541', '2020-11-11 22:52:39', '2020-11-11 22:52:39'),
(36, 9, 4, 'Lección 5: Aspectos Cuantitativos del Riesgo', 'Lesson 5: Quantitative Aspects of Risk', 'leccion-5-aspectos-cuantitativos-del-riesgo', 'En esta lección descubriremos el aspecto cuantitativo del riesgo, el experto te explicará tres términos necesarios para su análisis los cuales son: Análisis de distribución de probabilidad, Decisión del árbol y Análisis de valor esperado.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/420177623', 'https://player.vimeo.com/video/429112194', '2020-11-11 22:54:36', '2020-11-11 22:54:36'),
(37, 9, 5, 'Lección 6: Aspectos Psicológicos del Riesgo', 'Lesson 6: Psychological Aspects of Risk', 'leccion-6-aspectos-psicologicos-del-riesgo', 'El ser humano es un tomador de decisiones y riesgos, en esta lección descubrirás la importancia de la psicología en las finanzas, la teoría de la perspectiva y de las decisiones de los individuos como tomadores de riesgo en un contexto social.\r\n\r\nPuedes ver el vídeo las veces que desees. Al finalizar el vídeo y quieras pasar a la siguiente lección, presiona el botón Completar para seguir con la siguiente lección. Al finalizar el curso, puedes tomar la Evaluación para obtener tu certificado.', 'https://player.vimeo.com/video/422194473', 'https://player.vimeo.com/video/429112849', '2020-11-11 23:08:47', '2020-11-11 23:08:47'),
(38, 11, 4, 'Recomendaciones para discutir', 'Recommendations to discuss', 'recomendaciones-para-discutir', 'como llevar a cabo una discusión sin tomarse nada personal y sin salirse de foco?', 'https://player.vimeo.com/video/269762440', 'https://player.vimeo.com/video/269762440', '2020-12-29 17:34:17', '2021-03-23 22:11:46'),
(39, 1, 1, 'Prueba Luisana', 'Luisana\'s Test', 'prueba-luisana', 'Esto es una prueba', 'https://player.vimeo.com/video/2991129', 'https://player.vimeo.com/video/2991129', '2021-01-22 10:46:48', '2021-01-22 10:46:48'),
(40, 1, 1, 'gg', 'fgh', 'gg', 'fgh', 'https://player.vimeo.com/video/1234567', 'https://player.vimeo.com/video/1234567', '2021-01-27 14:36:28', '2021-01-27 14:36:28'),
(41, 13, 4, 'Cómo preparar una reunión', 'how to prepare a meeting', 'como-preparar-una-reunion', 'Aprender recomendaciones sencillas pero poderosas para estar preparado en una reunión', 'https://player.vimeo.com/video/269747078', 'https://player.vimeo.com/video/269747078', '2021-03-23 21:55:00', '2021-03-23 22:05:56'),
(42, 13, 5, 'Cómo enfocar una reunión?', 'how to approach a meeting', 'como-enfocar-una-reunion', 'El enfoque es indispensable si queremos lograr resultados', 'https://player.vimeo.com/video/269749947', 'https://player.vimeo.com/video/269749947', '2021-03-23 22:05:33', '2021-03-23 22:05:33'),
(43, 11, 5, 'Quema la libreta de cuentas pendientes', 'Burn the notebook of pending accounts', 'quema-la-libreta-de-cuentas-pendientes', 'no guardes nada para evitar que se dañe la relación', 'https://player.vimeo.com/video/269765195', 'https://player.vimeo.com/video/269765195', '2021-03-23 22:12:47', '2021-03-23 22:12:47'),
(44, 14, 3, 'Cómo manejar actitudes hostiles', 'How to handle hostile attitudes', 'como-manejar-actitudes-hostiles', 'cuidado la forma como manejamos nuestra actitud frente a una actitud hostil', 'https://player.vimeo.com/video/269749094', 'https://player.vimeo.com/video/269749094', '2021-03-23 22:24:55', '2021-03-23 22:24:55'),
(45, 14, 4, 'Cómo armonizar mi comunicación', 'How to harmonize my communication', 'como-armonizar-mi-comunicacion', 'aprendamos a armonizar nuestra comunicación con todas las audiencias', 'https://player.vimeo.com/video/269769905', 'https://player.vimeo.com/video/269769905', '2021-03-23 22:26:24', '2021-03-23 22:26:24'),
(46, 12, 4, 'Como eliminar el miedo escénico?', 'How to eliminate stage fright?', 'como-eliminar-el-miedo-escenico', 'el miedo escénico puede ser tan voraz como el miedo a la muerte, de hecho algunas personas aseguran que es peor, aquí aprenderás como poder superarlo.', 'https://player.vimeo.com/video/269757629', 'https://player.vimeo.com/video/269757629', '2021-03-24 22:58:28', '2021-03-24 22:58:28'),
(47, 12, 5, 'Herramientas para Impactar en tus presentaciones', 'Tools to impact your presentations', 'herramientas-para-impactar-en-tus-presentaciones', 'Las herramientas son claves, siempre te ayudarán a hacer mejor tu presentación', 'https://player.vimeo.com/video/269773230', 'https://player.vimeo.com/video/269773230', '2021-03-24 23:00:56', '2021-03-24 23:00:56'),
(48, 15, 3, 'Cuida tu salud', 'Watch your health', 'cuida-tu-salud', 'Cuida tu salud, entrenamiento online personalizado', 'https://player.vimeo.com/video/380353366', 'https://player.vimeo.com/video/380353366', '2021-03-24 23:17:54', '2021-03-24 23:17:54'),
(49, 15, 4, 'Bienestar', 'Wellness', 'bienestar', 'alcanza tu bienestar', 'https://player.vimeo.com/video/503860387', 'https://player.vimeo.com/video/503860387', '2021-03-24 23:20:15', '2021-03-24 23:21:20'),
(50, 10, 3, 'Introducción al comercio electrónico', 'Introduction to e-commerce', 'introduccion-al-comercio-electronico', 'Aquí empieza todo', 'https://player.vimeo.com/video/271402385', 'https://player.vimeo.com/video/271402385', '2021-03-25 10:31:26', '2021-03-25 10:31:26'),
(51, 10, 4, 'Por qué un negocio online?', 'why an online business?', 'por-que-un-negocio-online', 'Hay mas de una razón', 'https://player.vimeo.com/video/271397866', 'https://player.vimeo.com/video/271397866', '2021-03-25 10:32:50', '2021-03-25 10:32:50'),
(52, 10, 4, 'Tipos de Negocios online', 'types of online businesses', 'tipos-de-negocios-online', 'Cuál es el ideal para ti?', 'https://player.vimeo.com/video/271398534', 'https://player.vimeo.com/video/271398534', '2021-03-25 10:33:47', '2021-03-25 10:33:47'),
(53, 16, 3, 'Fundamentos de Legalidad', 'fundamentals of legality', 'fundamentos-de-legalidad', 'Todo lo que necesitas saber para estar preparado y protegido legalmente al transacciónar con finca Raíz', 'https://player.vimeo.com/video/525261139', 'https://player.vimeo.com/video/525261139', '2021-03-30 23:03:04', '2021-03-30 23:03:04'),
(54, 16, 4, 'Lista de chequeo fundamentos', 'fundamentals checklist', 'lista-de-chequeo-fundamentos', 'Bases y fundamentos, lista de chequeo', 'https://player.vimeo.com/video/525261164', 'https://player.vimeo.com/video/525261164', '2021-03-30 23:05:01', '2021-03-30 23:05:01'),
(55, 16, 5, 'Requerimientos legales', 'Legal requirements', 'requerimientos-legales', 'Requerimientos y documentación', 'https://player.vimeo.com/video/525261548', 'https://player.vimeo.com/video/525261548', '2021-03-30 23:07:03', '2021-03-30 23:07:03'),
(56, 17, 3, 'Todo empieza con la alimentación', 'It all starts with food', 'todo-empieza-con-la-alimentacion', 'Aquí empieza todo, tu alimentación', 'https://player.vimeo.com/video/525232918', 'https://player.vimeo.com/video/525232918', '2021-03-30 23:16:14', '2021-03-30 23:16:14'),
(57, 17, 4, 'Dieta Keto', 'Keto diet', 'dieta-keto', 'todo lo que necesitas saber de sobre las dietas keto', 'https://player.vimeo.com/video/525230374', 'https://player.vimeo.com/video/525230374', '2021-03-30 23:18:21', '2021-03-30 23:18:21'),
(58, 18, 3, 'Para qué necesito tiempo?', 'What do I need time for?', 'para-que-necesito-tiempo', 'Qué objetivos deseo lograr y para que necesito tiempo?', 'https://player.vimeo.com/video/516486821', 'https://player.vimeo.com/video/516486821', '2021-03-30 23:31:22', '2021-03-30 23:31:22'),
(59, 18, 4, 'Cómo administro mi tiempo hoy?', 'How do I manage my time today?', 'como-administro-mi-tiempo-hoy', 'Cómo estoy gestionando mi tiempo hoy?', 'https://player.vimeo.com/video/516486143', 'https://player.vimeo.com/video/516486143', '2021-03-30 23:34:25', '2021-03-30 23:34:25'),
(60, 19, 4, 'Eres Emprendedor?', 'are you an entrepreneur?', 'eres-emprendedor', 'Eres o no un emprendedor?', 'https://player.vimeo.com/video/525260636', 'https://player.vimeo.com/video/525260636', '2021-03-30 23:44:28', '2021-03-30 23:44:28'),
(61, 19, 4, 'Fundamentos del emprendimiento', 'Entrepreneurship fundamentals', 'fundamentos-del-emprendimiento', 'fundamentos y claves para emprender', 'https://player.vimeo.com/video/525234854', 'https://player.vimeo.com/video/525234854', '2021-03-30 23:46:59', '2021-03-30 23:46:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons_users`
--

CREATE TABLE `lessons_users` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL,
  `course_id` int UNSIGNED NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lessons_users`
--

INSERT INTO `lessons_users` (`id`, `user_id`, `lesson_id`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 10079, 1, 1, 1, '2020-10-20 18:00:08', '2020-10-20 18:00:08'),
(2, 10076, 1, 1, 1, '2020-10-20 18:14:28', '2021-01-13 17:36:04'),
(3, 10082, 6, 6, 1, '2020-10-22 15:14:43', '2020-10-22 15:14:43'),
(4, 10086, 1, 1, 1, '2020-10-26 14:20:16', '2020-10-26 14:20:16'),
(5, 10075, 6, 6, 1, '2020-10-28 20:01:05', '2021-01-27 12:11:16'),
(6, 10086, 6, 6, 1, '2020-10-31 02:34:55', '2020-10-31 02:34:55'),
(7, 10086, 11, 1, 1, '2020-10-31 02:37:11', '2020-10-31 02:37:11'),
(8, 10086, 12, 1, 1, '2020-10-31 02:37:17', '2020-10-31 02:37:17'),
(9, 10086, 13, 1, 1, '2020-10-31 02:37:21', '2020-10-31 02:37:21'),
(10, 10094, 5, 5, 1, '2020-11-04 06:19:57', '2020-11-04 06:19:57'),
(11, 10090, 3, 3, 1, '2020-11-08 00:41:23', '2020-12-28 18:38:14'),
(12, 10090, 23, 7, 1, '2020-11-08 00:43:11', '2020-11-08 00:43:11'),
(13, 10091, 4, 4, 1, '2020-11-08 00:46:04', '2020-11-08 00:46:04'),
(14, 10092, 29, 8, 1, '2020-11-08 00:46:56', '2020-11-08 00:46:56'),
(15, 10092, 4, 4, 1, '2020-11-08 00:48:18', '2020-11-08 00:48:18'),
(16, 10093, 2, 2, 1, '2020-11-08 00:50:23', '2020-11-08 00:50:23'),
(17, 10093, 16, 2, 1, '2020-11-08 00:51:02', '2020-11-08 00:51:02'),
(18, 10093, 14, 2, 1, '2020-11-08 00:51:50', '2020-11-08 00:51:50'),
(19, 10093, 23, 7, 1, '2020-11-08 00:53:20', '2020-11-08 00:53:20'),
(20, 10093, 28, 7, 1, '2020-11-08 00:53:26', '2020-11-08 00:53:26'),
(21, 10093, 4, 4, 1, '2020-11-08 00:56:32', '2020-11-08 00:56:32'),
(22, 10094, 2, 2, 1, '2020-11-08 00:59:00', '2020-11-08 00:59:00'),
(23, 10094, 15, 2, 1, '2020-11-08 00:59:04', '2020-11-08 00:59:04'),
(24, 10094, 14, 2, 1, '2020-11-08 00:59:07', '2020-11-08 00:59:07'),
(25, 10094, 4, 4, 1, '2020-11-08 01:02:38', '2020-11-08 01:02:38'),
(26, 10090, 24, 7, 1, '2020-11-08 01:54:54', '2020-11-08 01:54:54'),
(27, 10093, 3, 3, 1, '2020-11-08 02:13:51', '2020-11-08 02:13:51'),
(28, 10093, 19, 3, 1, '2020-11-08 02:14:06', '2020-11-08 02:14:06'),
(29, 10092, 1, 1, 1, '2020-11-08 02:17:24', '2020-11-08 02:17:24'),
(30, 10092, 12, 1, 1, '2020-11-08 02:18:22', '2020-11-08 02:18:22'),
(31, 10092, 2, 2, 1, '2020-11-08 02:24:30', '2020-11-08 02:24:30'),
(32, 10092, 11, 1, 1, '2020-11-08 20:11:25', '2020-11-08 20:11:25'),
(33, 10092, 31, 8, 1, '2020-11-08 20:19:45', '2020-11-08 20:19:45'),
(34, 10092, 30, 8, 1, '2020-11-08 20:20:36', '2020-11-08 20:20:36'),
(35, 10076, 23, 5, 1, '2020-11-09 21:44:20', '2020-12-08 12:45:33'),
(36, 10076, 3, 3, 1, '2020-11-10 14:58:23', '2020-11-10 14:58:23'),
(37, 10076, 20, 3, 1, '2020-11-10 14:58:41', '2020-11-10 14:58:41'),
(38, 10076, 6, 6, 1, '2020-11-11 09:43:37', '2020-11-11 09:43:37'),
(39, 10076, 10, 6, 1, '2020-11-11 10:26:06', '2020-12-18 14:07:07'),
(40, 10076, 4, 4, 1, '2020-11-11 10:27:27', '2021-01-27 15:45:20'),
(41, 10076, 17, 3, 1, '2020-11-11 10:47:44', '2020-12-17 08:31:18'),
(42, 10076, 8, 6, 1, '2020-11-11 18:14:53', '2020-12-18 18:06:11'),
(43, 10076, 9, 6, 1, '2020-11-11 18:15:01', '2020-11-11 18:15:01'),
(44, 10086, 29, 8, 1, '2020-11-11 20:18:21', '2020-11-11 20:18:21'),
(45, 10086, 23, 7, 1, '2020-11-11 23:20:25', '2020-11-11 23:20:25'),
(46, 10086, 30, 8, 1, '2020-11-12 06:39:20', '2020-11-12 06:39:20'),
(47, 10086, 5, 5, 1, '2020-11-12 08:54:31', '2020-11-12 08:54:31'),
(48, 10086, 21, 5, 1, '2020-11-12 09:02:26', '2020-11-12 09:02:26'),
(49, 10086, 22, 5, 1, '2020-11-12 09:05:29', '2020-11-12 09:05:29'),
(50, 10086, 2, 2, 1, '2020-11-12 09:06:57', '2020-11-12 09:06:57'),
(51, 10086, 32, 9, 1, '2020-11-12 22:23:03', '2020-12-07 22:16:56'),
(52, 10092, 13, 1, 1, '2020-11-13 14:55:37', '2020-11-13 14:55:37'),
(53, 10086, 31, 8, 1, '2020-11-16 15:20:31', '2020-11-16 15:20:31'),
(54, 10091, 29, 8, 1, '2020-11-17 09:12:25', '2020-11-17 09:12:25'),
(55, 10086, 7, 6, 1, '2020-11-27 11:19:57', '2020-11-27 11:19:57'),
(56, 10086, 9, 6, 1, '2020-11-27 11:22:16', '2020-11-27 11:22:16'),
(57, 10076, 25, 5, 1, '2020-11-28 17:52:07', '2020-11-28 17:52:07'),
(58, 10091, 6, 6, 1, '2020-12-02 03:39:47', '2020-12-02 03:39:47'),
(59, 10086, 3, 3, 1, '2020-12-02 10:53:32', '2020-12-02 10:53:32'),
(60, 10086, 17, 3, 1, '2020-12-02 11:03:26', '2020-12-02 11:03:26'),
(61, 10086, 18, 3, 1, '2020-12-02 11:14:55', '2020-12-02 11:14:55'),
(62, 10086, 19, 3, 1, '2020-12-02 11:15:59', '2020-12-02 11:15:59'),
(63, 10086, 20, 3, 1, '2020-12-02 12:15:41', '2020-12-02 12:15:41'),
(64, 10086, 33, 9, 1, '2020-12-02 12:18:54', '2020-12-07 22:17:00'),
(65, 10086, 34, 9, 1, '2020-12-02 12:25:56', '2020-12-02 12:25:56'),
(66, 10086, 36, 9, 1, '2020-12-02 12:26:10', '2020-12-02 12:26:10'),
(67, 10086, 37, 9, 1, '2020-12-02 12:29:35', '2020-12-02 12:29:35'),
(68, 10086, 4, 4, 1, '2020-12-02 12:58:07', '2020-12-02 12:58:07'),
(69, 10086, 14, 2, 1, '2020-12-02 13:19:45', '2020-12-02 13:19:45'),
(70, 10086, 15, 2, 1, '2020-12-02 13:23:34', '2020-12-02 13:23:34'),
(71, 10086, 16, 2, 1, '2020-12-02 13:25:24', '2020-12-02 13:25:24'),
(72, 10091, 1, 1, 1, '2020-12-02 21:01:13', '2020-12-02 21:01:13'),
(73, 10091, 11, 1, 1, '2020-12-03 01:13:33', '2020-12-03 01:13:33'),
(74, 10091, 12, 1, 1, '2020-12-03 01:13:59', '2020-12-03 01:13:59'),
(75, 10091, 13, 1, 1, '2020-12-03 01:14:16', '2020-12-03 01:14:16'),
(76, 10086, 8, 6, 1, '2020-12-04 21:11:44', '2020-12-04 21:11:44'),
(77, 10086, 24, 7, 1, '2020-12-04 21:57:31', '2020-12-04 21:57:31'),
(78, 10086, 25, 7, 1, '2020-12-04 21:58:50', '2020-12-04 21:58:50'),
(79, 10086, 27, 7, 1, '2020-12-04 21:59:58', '2020-12-04 21:59:58'),
(80, 10086, 28, 7, 1, '2020-12-04 22:01:24', '2020-12-04 22:01:24'),
(81, 10086, 35, 9, 1, '2020-12-04 22:20:49', '2020-12-07 22:16:44'),
(82, 10086, 10, 6, 1, '2020-12-04 23:03:14', '2020-12-04 23:03:14'),
(83, 10076, 24, 7, 1, '2020-12-07 21:01:28', '2020-12-18 20:44:15'),
(84, 10076, 11, 1, 1, '2020-12-07 21:02:18', '2020-12-08 19:34:11'),
(85, 10076, 12, 1, 1, '2020-12-08 13:31:53', '2020-12-08 13:31:53'),
(86, 10076, 13, 1, 1, '2020-12-08 13:32:03', '2021-01-04 09:25:22'),
(87, 10101, 4, 4, 1, '2020-12-09 13:06:56', '2020-12-09 13:18:41'),
(88, 10101, 2, 2, 1, '2020-12-09 13:23:03', '2020-12-09 13:23:03'),
(89, 10101, 14, 2, 1, '2020-12-09 13:30:55', '2020-12-09 13:30:55'),
(90, 10101, 15, 2, 1, '2020-12-09 13:34:27', '2020-12-09 13:34:27'),
(91, 10101, 16, 2, 1, '2020-12-09 13:34:42', '2020-12-09 13:36:02'),
(92, 10103, 29, 8, 1, '2020-12-09 16:06:43', '2020-12-09 16:06:43'),
(93, 10103, 30, 8, 1, '2020-12-09 16:09:19', '2020-12-09 16:09:19'),
(94, 10103, 31, 8, 1, '2020-12-09 16:11:01', '2020-12-09 16:11:01'),
(95, 10104, 23, 7, 1, '2020-12-09 16:39:32', '2020-12-09 16:39:32'),
(96, 10104, 24, 7, 1, '2020-12-09 16:41:59', '2020-12-09 16:41:59'),
(97, 10104, 25, 7, 1, '2020-12-09 16:43:22', '2020-12-09 16:43:22'),
(98, 10104, 26, 7, 1, '2020-12-09 16:44:27', '2020-12-09 16:44:27'),
(99, 10104, 27, 7, 1, '2020-12-09 16:45:06', '2020-12-09 16:45:06'),
(100, 10104, 28, 7, 1, '2020-12-09 16:46:05', '2020-12-09 16:47:26'),
(101, 10104, 29, 8, 1, '2020-12-09 16:51:10', '2020-12-09 16:51:10'),
(102, 10105, 23, 7, 1, '2020-12-10 16:05:33', '2020-12-10 16:05:33'),
(103, 10105, 24, 7, 1, '2020-12-10 16:08:28', '2020-12-10 16:08:28'),
(104, 10105, 25, 7, 1, '2020-12-10 16:08:44', '2020-12-10 16:08:44'),
(105, 10105, 26, 7, 1, '2020-12-10 16:09:13', '2020-12-10 16:09:13'),
(106, 10105, 27, 7, 1, '2020-12-10 16:09:25', '2020-12-10 16:09:25'),
(107, 10105, 28, 7, 1, '2020-12-10 16:09:39', '2020-12-10 16:10:56'),
(108, 10105, 29, 8, 1, '2020-12-10 17:22:22', '2020-12-10 17:22:22'),
(109, 10105, 30, 8, 1, '2020-12-10 17:28:32', '2020-12-10 17:28:32'),
(110, 10105, 31, 8, 1, '2020-12-10 17:30:41', '2020-12-10 17:32:32'),
(111, 10105, 6, 6, 1, '2020-12-10 18:16:08', '2020-12-10 18:16:08'),
(112, 10105, 7, 6, 1, '2020-12-10 18:20:52', '2020-12-10 18:20:52'),
(113, 10105, 8, 6, 1, '2020-12-10 18:20:52', '2020-12-10 18:20:52'),
(114, 10105, 9, 6, 1, '2020-12-10 18:21:22', '2020-12-10 18:21:22'),
(115, 10105, 10, 6, 1, '2020-12-10 18:21:41', '2020-12-10 18:25:22'),
(116, 10101, 29, 8, 1, '2020-12-10 18:52:09', '2020-12-10 18:52:09'),
(117, 10101, 30, 8, 1, '2020-12-10 18:58:32', '2020-12-10 18:58:32'),
(118, 10101, 31, 8, 1, '2020-12-10 19:03:07', '2020-12-10 19:04:48'),
(119, 10105, 32, 9, 1, '2020-12-10 21:45:49', '2020-12-10 21:45:49'),
(120, 10107, 32, 9, 1, '2020-12-11 15:05:45', '2020-12-11 15:05:45'),
(121, 10107, 33, 9, 1, '2020-12-11 15:15:47', '2020-12-11 15:16:16'),
(122, 10107, 34, 9, 1, '2020-12-11 15:24:52', '2020-12-11 15:24:52'),
(123, 10107, 35, 9, 1, '2020-12-11 15:25:26', '2020-12-11 15:25:26'),
(124, 10107, 36, 9, 1, '2020-12-11 15:26:56', '2020-12-11 15:26:56'),
(125, 10107, 37, 9, 1, '2020-12-11 15:29:13', '2020-12-30 15:57:22'),
(126, 10107, 2, 2, 1, '2020-12-11 16:12:45', '2020-12-11 16:12:45'),
(127, 10107, 14, 2, 1, '2020-12-11 16:17:53', '2020-12-11 16:17:53'),
(128, 10107, 15, 2, 1, '2020-12-11 16:18:18', '2020-12-11 16:18:18'),
(129, 10107, 16, 2, 1, '2020-12-11 16:18:31', '2020-12-30 15:57:36'),
(130, 10107, 23, 7, 1, '2020-12-11 16:59:03', '2020-12-11 16:59:03'),
(131, 10107, 24, 7, 1, '2020-12-11 17:00:19', '2020-12-11 17:00:19'),
(132, 10107, 25, 7, 1, '2020-12-11 17:00:48', '2020-12-11 17:00:48'),
(133, 10107, 26, 7, 1, '2020-12-11 17:01:38', '2020-12-11 17:01:38'),
(134, 10107, 27, 7, 1, '2020-12-11 17:02:00', '2020-12-11 17:02:00'),
(135, 10107, 28, 7, 1, '2020-12-11 17:03:02', '2020-12-30 15:57:45'),
(136, 10107, 29, 8, 1, '2020-12-12 13:25:13', '2020-12-12 13:26:06'),
(137, 10107, 30, 8, 1, '2020-12-12 13:31:26', '2020-12-12 13:31:26'),
(138, 10107, 31, 8, 1, '2020-12-12 13:33:52', '2020-12-30 15:57:56'),
(139, 10109, 32, 9, 1, '2020-12-14 07:47:54', '2020-12-14 14:53:46'),
(140, 10109, 33, 9, 1, '2020-12-14 07:48:22', '2020-12-17 14:25:45'),
(141, 10109, 34, 9, 1, '2020-12-14 07:48:32', '2020-12-14 07:48:32'),
(142, 10109, 35, 9, 1, '2020-12-14 07:48:37', '2020-12-14 07:48:37'),
(143, 10109, 36, 9, 1, '2020-12-14 07:49:36', '2020-12-14 07:49:42'),
(144, 10109, 37, 9, 1, '2020-12-14 07:49:48', '2020-12-14 09:44:42'),
(145, 1, 1, 1, 1, '2020-12-14 14:25:25', '2021-02-20 03:06:41'),
(146, 10110, 6, 6, 1, '2020-12-14 17:20:01', '2020-12-14 17:20:01'),
(147, 10110, 5, 5, 1, '2020-12-14 17:32:00', '2020-12-14 17:32:00'),
(148, 10110, 21, 5, 1, '2020-12-14 17:32:28', '2020-12-14 17:32:28'),
(149, 10110, 22, 5, 1, '2020-12-14 17:32:53', '2020-12-14 17:34:33'),
(150, 10110, 32, 9, 1, '2020-12-14 18:15:50', '2020-12-14 18:15:50'),
(151, 10112, 32, 9, 1, '2020-12-14 18:15:57', '2020-12-14 18:24:39'),
(152, 10112, 4, 4, 1, '2020-12-14 18:16:41', '2020-12-14 18:16:41'),
(153, 10110, 1, 1, 1, '2020-12-14 18:18:39', '2020-12-14 18:18:39'),
(154, 10112, 23, 7, 1, '2020-12-14 18:18:39', '2020-12-14 18:18:39'),
(155, 10110, 11, 1, 1, '2020-12-14 18:19:36', '2020-12-14 18:19:36'),
(156, 10110, 12, 1, 1, '2020-12-14 18:20:02', '2020-12-14 18:20:02'),
(157, 10110, 13, 1, 1, '2020-12-14 18:20:32', '2020-12-14 18:21:47'),
(158, 10112, 28, 7, 1, '2020-12-14 18:21:35', '2020-12-14 18:21:35'),
(159, 10112, 2, 2, 1, '2020-12-14 18:26:30', '2020-12-14 18:26:30'),
(160, 10112, 14, 2, 1, '2020-12-14 18:26:40', '2020-12-14 18:26:40'),
(161, 10112, 15, 2, 1, '2020-12-14 18:27:21', '2020-12-14 18:27:21'),
(162, 10112, 16, 2, 1, '2020-12-14 18:28:06', '2020-12-14 18:28:06'),
(163, 10112, 29, 8, 1, '2020-12-14 18:34:55', '2020-12-14 18:34:55'),
(164, 10112, 5, 5, 1, '2020-12-14 18:35:16', '2020-12-14 18:35:16'),
(165, 10113, 32, 9, 1, '2020-12-14 20:59:49', '2020-12-14 22:57:22'),
(166, 10113, 3, 3, 1, '2020-12-14 21:07:19', '2020-12-14 22:44:56'),
(167, 10113, 29, 8, 1, '2020-12-14 21:20:02', '2020-12-14 21:20:02'),
(168, 10113, 1, 1, 1, '2020-12-14 22:41:20', '2020-12-14 22:41:20'),
(169, 1, 32, 9, 1, '2020-12-15 12:39:55', '2021-02-06 09:51:32'),
(170, 10107, 4, 4, 1, '2020-12-18 12:38:27', '2021-01-06 17:18:27'),
(171, 10107, 6, 6, 1, '2020-12-18 12:41:37', '2020-12-30 15:58:12'),
(172, 10107, 1, 1, 1, '2020-12-23 18:24:33', '2020-12-23 18:24:33'),
(173, 10107, 13, 1, 1, '2020-12-23 18:35:10', '2020-12-30 15:54:10'),
(174, 10090, 29, 8, 1, '2020-12-28 18:33:26', '2020-12-28 18:33:26'),
(175, 10107, 38, 11, 1, '2020-12-29 18:01:33', '2020-12-29 18:01:33'),
(176, 10107, 11, 1, 1, '2020-12-30 10:21:46', '2020-12-30 10:21:46'),
(177, 10107, 12, 1, 1, '2020-12-30 10:22:02', '2020-12-30 10:22:02'),
(178, 10107, 10, 6, 1, '2020-12-30 15:58:16', '2020-12-30 15:58:16'),
(179, 1, 11, 1, 1, '2021-01-11 18:54:38', '2021-03-25 21:45:51'),
(180, 1, 13, 1, 1, '2021-01-11 18:56:16', '2021-01-11 19:02:33'),
(181, 1, 12, 1, 1, '2021-01-11 18:59:31', '2021-01-11 18:59:31'),
(182, 10115, 1, 1, 1, '2021-01-14 19:49:02', '2021-01-14 19:49:02'),
(183, 10115, 11, 1, 1, '2021-01-14 19:53:54', '2021-02-09 13:13:43'),
(184, 10115, 38, 11, 1, '2021-01-14 20:05:19', '2021-01-28 19:21:56'),
(185, 10118, 4, 4, 1, '2021-01-18 16:49:51', '2021-01-26 16:42:31'),
(186, 10118, 23, 7, 1, '2021-01-18 16:52:59', '2021-01-29 15:09:22'),
(187, 10118, 32, 9, 1, '2021-01-18 18:17:48', '2021-03-10 02:49:13'),
(188, 1, 39, 1, 1, '2021-01-26 13:18:47', '2021-01-26 13:18:47'),
(189, 10075, 7, 6, 1, '2021-01-27 12:11:41', '2021-01-27 12:11:41'),
(190, 10075, 8, 6, 1, '2021-01-27 12:12:19', '2021-01-27 12:31:23'),
(191, 10075, 2, 2, 1, '2021-01-27 12:15:31', '2021-01-27 12:24:07'),
(192, 10075, 1, 1, 1, '2021-01-27 12:17:46', '2021-02-12 10:34:34'),
(193, 10075, 11, 1, 1, '2021-01-27 12:21:39', '2021-02-12 10:34:48'),
(194, 10075, 12, 1, 1, '2021-01-27 12:21:45', '2021-01-27 12:21:45'),
(195, 10075, 13, 1, 1, '2021-01-27 12:21:51', '2021-01-27 12:21:51'),
(196, 10075, 39, 1, 1, '2021-01-27 12:21:57', '2021-02-12 10:34:18'),
(197, 10075, 14, 2, 1, '2021-01-27 12:24:13', '2021-01-27 12:24:13'),
(198, 10075, 15, 2, 1, '2021-01-27 12:24:21', '2021-01-27 12:24:21'),
(199, 10075, 16, 2, 1, '2021-01-27 12:24:37', '2021-02-12 10:00:52'),
(200, 10118, 2, 2, 1, '2021-01-29 15:29:04', '2021-01-29 15:30:16'),
(201, 1, 33, 9, 1, '2021-02-06 09:43:56', '2021-02-06 09:43:56'),
(202, 1, 34, 9, 1, '2021-02-06 10:07:48', '2021-02-06 10:08:03'),
(203, 1, 35, 9, 1, '2021-02-06 10:08:17', '2021-02-06 10:08:17'),
(204, 1, 36, 9, 1, '2021-02-06 10:08:39', '2021-02-06 10:08:39'),
(205, 1, 37, 9, 1, '2021-02-06 10:08:57', '2021-02-20 03:00:15'),
(206, 10075, 29, 8, 1, '2021-02-12 10:01:37', '2021-02-12 10:01:37'),
(207, 1, 2, 2, 1, '2021-02-24 19:47:49', '2021-03-25 21:46:08'),
(208, 1, 3, 3, 1, '2021-02-28 10:06:25', '2021-02-28 10:06:25'),
(209, 1, 29, 8, 1, '2021-03-03 00:47:49', '2021-03-05 20:20:18'),
(210, 1, 30, 8, 1, '2021-03-05 20:21:45', '2021-03-05 20:46:04'),
(211, 10118, 35, 9, 1, '2021-03-10 02:49:17', '2021-03-10 02:49:17'),
(212, 10118, 36, 9, 1, '2021-03-10 02:50:29', '2021-03-10 02:50:29'),
(213, 1, 38, 11, 1, '2021-03-25 21:34:16', '2021-03-25 21:34:16'),
(214, 1, 43, 11, 1, '2021-03-25 21:37:01', '2021-04-05 17:42:04'),
(215, 1, 41, 13, 1, '2021-03-25 21:38:53', '2021-03-25 21:38:53'),
(216, 1, 42, 13, 1, '2021-03-25 21:39:48', '2021-04-05 17:43:37'),
(217, 1, 50, 10, 1, '2021-03-25 21:40:18', '2021-04-05 17:44:26'),
(218, 1, 46, 12, 1, '2021-03-25 21:57:30', '2021-03-25 21:57:30'),
(219, 1, 48, 15, 1, '2021-03-25 21:59:03', '2021-03-25 21:59:03'),
(220, 1, 49, 15, 1, '2021-03-25 22:02:03', '2021-04-05 17:42:33'),
(221, 1, 60, 19, 1, '2021-03-31 21:27:42', '2021-03-31 21:27:42'),
(222, 1, 61, 19, 1, '2021-03-31 21:28:27', '2021-04-05 17:44:37'),
(223, 1, 44, 14, 1, '2021-04-05 17:42:18', '2021-04-05 17:44:18'),
(224, 1, 56, 17, 1, '2021-04-05 17:43:21', '2021-04-05 17:43:21'),
(225, 1, 58, 18, 1, '2021-04-05 17:43:47', '2021-04-05 17:46:13'),
(226, 1, 59, 18, 1, '2021-04-05 17:46:17', '2021-04-19 12:40:39'),
(227, 10144, 38, 11, 1, '2021-04-06 21:03:25', '2021-04-06 21:03:25'),
(228, 10144, 43, 11, 1, '2021-04-06 21:03:42', '2021-04-06 21:03:42'),
(229, 10147, 38, 11, 1, '2021-04-06 21:05:13', '2021-04-06 21:05:13'),
(230, 10147, 43, 11, 1, '2021-04-06 21:05:55', '2021-04-06 21:05:55'),
(231, 10147, 44, 14, 1, '2021-04-06 21:27:44', '2021-04-06 21:27:44'),
(232, 10147, 60, 19, 1, '2021-04-06 21:29:53', '2021-04-06 21:29:53'),
(233, 10149, 38, 11, 1, '2021-04-12 21:25:25', '2021-04-12 21:25:25'),
(234, 10149, 50, 10, 1, '2021-04-12 21:25:46', '2021-04-12 21:25:46'),
(235, 10149, 51, 10, 1, '2021-04-12 21:25:52', '2021-04-12 21:25:52'),
(236, 10149, 52, 10, 1, '2021-04-12 21:25:56', '2021-04-12 21:25:56'),
(237, 10149, 2, 2, 1, '2021-04-12 21:26:07', '2021-04-12 21:26:07'),
(238, 10149, 1, 1, 1, '2021-04-12 22:25:44', '2021-04-12 22:25:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linkpagos`
--

CREATE TABLE `linkpagos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `archivo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memberships`
--

CREATE TABLE `memberships` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `price_annual` double NOT NULL DEFAULT '0',
  `descuento` double NOT NULL DEFAULT '0',
  `discount_annual` double NOT NULL DEFAULT '0',
  `ganancia` double NOT NULL DEFAULT '0',
  `streamings` int DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'monthly',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `image`, `price`, `price_annual`, `descuento`, `discount_annual`, `ganancia`, `streamings`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Ser', 'default.jpg', 25, 200, 9.99, 100, 30, 4, 'monthly', '2020-09-29 18:39:11', '2021-01-11 22:04:50'),
(2, 'Hacer', 'default.jpg', 50, 250, 19.99, 220, 30, 6, 'monthly', '2020-09-29 18:39:11', '2020-09-29 18:39:11'),
(3, 'Tener', 'default.jpg', 100, 400, 29.99, 340, 30, 8, 'monthly', '2020-09-29 18:40:16', '2020-09-29 18:40:16'),
(4, 'Trascender', 'default.jpg', 150, 500, 39.99, 450, 30, 10, 'monthly', '2020-09-29 18:40:16', '2020-09-29 18:40:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `inicio` text,
  `actualizar` text,
  `registro` text,
  `registro_cliente` text,
  `red_usuario` text,
  `transacciones` text,
  `billetera` text,
  `calendario` text,
  `informes` text,
  `prospeccion` text,
  `correos` text,
  `tickets` text,
  `ranking` text,
  `tienda` text,
  `herramientas` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `inicio`, `actualizar`, `registro`, `registro_cliente`, `red_usuario`, `transacciones`, `billetera`, `calendario`, `informes`, `prospeccion`, `correos`, `tickets`, `ranking`, `tienda`, `herramientas`, `created_at`, `updated_at`) VALUES
(1, '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1,\"usuario\":1,\"cliente\":1,\"directos\":1,\"red\":1}', '{\"activo\":1,\"personales\":1,\"red\":1,\"directos\":0,\"link\":1}', '{\"activo\":1,\"billetera\":1,\"transferencia\":1,\"corte\":1,\"canje\":1}', '{\"activo\":1}', '{\"activo\":1,\"activacion\":1,\"comisiones\":1,\"liquidacion\":1,\"repor_comisiones\":1,\"afiliados\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1,\"mios\":1,\"generar\":1}', '{\"activo\":1}', '{\"activo\":1,\"productos\":1,\"bancaria\":1,\"pagos\":1,\"lista_pagos\":1,\"paypal\":1,\"paga_paypal\":1}', '{\"activo\":1,\"documentos\":1,\"articulos\":1,\"notas\":1,\"activacion_correos\":1}', NULL, '0000-00-00 00:00:00'),
(2, '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"usuario\":\"1\",\"cliente\":\"1\",\"directos\":\"1\",\"red\":\"1\"}', '{\"activo\":\"1\",\"personales\":\"1\",\"red\":\"1\",\"link\":\"1\"}', '{\"activo\":\"1\",\"billetera\":\"1\",\"transferencia\":\"1\",\"corte\":\"1\",\"canje\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"activacion\":\"1\",\"comisiones\":\"1\",\"liquidacion\":\"1\",\"repor_comisiones\":\"1\",\"afiliados\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"generar\":\"1\",\"mios\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"productos\":\"1\",\"bancaria\":\"1\",\"pagos\":\"1\",\"lista_pagos\":\"1\",\"paypal\":\"1\",\"paga_paypal\":\"1\"}', '{\"activo\":\"1\",\"documentos\":\"1\",\"articulos\":\"1\",\"notas\":\"1\",\"activacion_correos\":\"1\"}', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulocomplementario`
--

CREATE TABLE `modulocomplementario` (
  `id` int NOT NULL,
  `contenido` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedadicional`
--

CREATE TABLE `monedadicional` (
  `id` int NOT NULL,
  `configuracion` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `simbolo` varchar(200) NOT NULL,
  `mostrar_a_d` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 o false - despue del monto, 1 o true - antes del monto',
  `principal` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `nombre`, `simbolo`, `mostrar_a_d`, `principal`, `updated_at`) VALUES
(1, 'Dolar', '$', 0, 1, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `titulo` longtext NOT NULL,
  `contenido` longtext NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `streaming_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `user_id`, `streaming_id`, `created_at`, `updated_at`) VALUES
(1, 'Nota 1', 'Esta es mi primera nota', 1, 17, '2021-03-10 19:15:29', '2021-03-10 19:15:29'),
(3, 'Nota Luisana', 'prueba', 1, 17, '2021-03-10 19:21:16', '2021-03-10 19:21:16'),
(4, 'Lección 1', '123', 10075, 26, '2021-04-27 17:08:57', '2021-04-27 17:08:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_tickets`
--

CREATE TABLE `notificacion_tickets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user` varchar(250) NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `contenido` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `notification_type` varchar(5) DEFAULT NULL,
  `date` date NOT NULL,
  `route` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `calendario` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `notification_type`, `date`, `route`, `description`, `icon`, `label`, `status`, `calendario`, `created_at`, `updated_at`) VALUES
(1, 10076, NULL, '2020-11-18', 'calendar', 'Nuevo Evento Agendado', 'fas fa-calendar', 'Eventos agendados', 1, NULL, '2020-11-18 13:21:01', '2020-11-18 13:21:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers_live`
--

CREATE TABLE `offers_live` (
  `id` int NOT NULL,
  `event_id` int DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `url_resource` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers_users`
--

CREATE TABLE `offers_users` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `offer_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_select`
--

CREATE TABLE `opciones_select` (
  `id` int NOT NULL,
  `idselect` int NOT NULL,
  `valor` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones_select`
--

INSERT INTO `opciones_select` (`id`, `idselect`, `valor`, `updated_at`) VALUES
(1, 3, 'M', '2019-01-08 02:13:50'),
(2, 3, 'F', '2019-01-08 02:13:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `optioncarritos`
--

CREATE TABLE `optioncarritos` (
  `id` int NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `medio_pago` int NOT NULL COMMENT '0- otros metodos de pago 1- billetera',
  `activo` int DEFAULT NULL,
  `link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagocarritos`
--

CREATE TABLE `pagocarritos` (
  `id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `idcompra` int NOT NULL,
  `metodo` int NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagocarritos`
--

INSERT INTO `pagocarritos` (`id`, `name`, `iduser`, `idcompra`, `metodo`, `nombre`, `updated_at`) VALUES
(1, 'Alberto Picon', 3, 30, 0, 'Transferencia Bancaria', '2020-03-26 22:13:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int NOT NULL,
  `iduser` bigint NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `monto` float NOT NULL,
  `fechasoli` date NOT NULL,
  `fechapago` date DEFAULT NULL,
  `metodo` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipopago` text,
  `descuento` float DEFAULT NULL,
  `monedaAdicional` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `iduser`, `username`, `email`, `monto`, `fechasoli`, `fechapago`, `metodo`, `estado`, `updated_at`, `tipopago`, `descuento`, `monedaAdicional`) VALUES
(6, 10086, 'referidosinergia', 'conferencias_lm@hotmail.com', 137.4, '2020-12-29', '2020-12-29', 'Bancario', 1, '2020-12-29 16:18:00', '- Datos Bancarios: Numero de cuenta: Tipo de Cuenta: Nombre del banco', 0, ''),
(5, 1, 'Administrador', 'admin@shapinetwork.com', 86.994, '2020-12-29', '2020-12-29', 'Bancario', 1, '2020-12-29 16:18:00', '- Datos Bancarios: Numero de cuenta: Tipo de Cuenta: Nombre del banco', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `idface` int NOT NULL,
  `abbreviation` varchar(5) DEFAULT NULL,
  `event` tinyint(1) NOT NULL COMMENT 'Si está disponible o no para la configuración horaria de los eventos',
  `operation` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `idface`, `abbreviation`, `event`, `operation`, `quantity`, `updated_at`) VALUES
(1, 'United States', 1, 'EU', 1, 'subtract', 6, '0000-00-00 00:00:00'),
(2, 'Canada', 2, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(3, 'Afghanistan', 3, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(4, 'Albania', 4, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(5, 'Algeria', 5, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(6, 'American Samoa', 6, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(7, 'Andorra', 7, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(8, 'Angola', 8, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(9, 'Anguilla', 9, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(10, 'Antartica', 10, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(11, 'Antigua and/or Barbuda', 11, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(12, 'Argentina', 12, 'AR', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(13, 'Armenia', 13, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(14, 'Aruba', 14, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(15, 'Australia', 15, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(16, 'Austria', 16, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(17, 'Azerbaijan', 17, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(18, 'Bahamas', 18, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(19, 'Bahrain', 19, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(20, 'Bangladesh', 20, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(21, 'Barbados', 21, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(22, 'Belarus', 22, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(23, 'Belgium', 23, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(24, 'Belize', 24, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(25, 'Benin', 25, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(26, 'Bermuda', 26, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(27, 'Bhutan', 27, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(28, 'Bolivia', 28, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 29, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(30, 'Botswana', 30, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 31, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(32, 'Brazil', 32, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 34, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(35, 'Bulgaria', 35, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 36, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(37, 'Burundi', 37, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(38, 'Cambodia', 38, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(39, 'Cameroon', 39, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(40, 'Cape Verde', 40, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(41, 'Cayman Islands', 41, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(42, 'Central African Republic', 42, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(43, 'Chad', 43, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(44, 'Chile', 44, 'CH', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(45, 'China', 45, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(46, 'Christmas Island', 46, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(47, 'Cocos (Keeling) Islands', 47, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(48, 'Colombia', 48, 'CO', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(49, 'Comoros', 49, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(50, 'Congo', 50, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(51, 'Cook Islands', 51, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(52, 'Costa Rica', 52, 'CR', 1, 'subtract', 6, '0000-00-00 00:00:00'),
(53, 'Croatia (Hrvatska)', 53, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(54, 'Cuba', 54, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(55, 'Cyprus', 55, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(56, 'Czech Republic', 56, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(57, 'Denmark', 57, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(58, 'Djibouti', 58, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(59, 'Dominica', 59, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(60, 'Dominican Republic', 60, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(61, 'East Timor', 61, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(62, 'Ecuador', 62, 'EC', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(63, 'Egypt', 63, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(64, 'El Salvador', 64, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(65, 'Equatorial Guinea', 65, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(66, 'Eritrea', 66, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(67, 'Estonia', 67, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(68, 'Ethiopia', 68, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(69, 'Falkland Islands (Malvinas)', 69, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(70, 'Faroe Islands', 70, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(71, 'Fiji', 71, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(72, 'Finland', 72, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(73, 'France', 73, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(74, 'France, Metropolitan', 74, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(75, 'French Guiana', 75, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(76, 'French Polynesia', 76, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(77, 'French Southern Territories', 77, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(78, 'Gabon', 78, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(79, 'Gambia', 79, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(80, 'Georgia', 80, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(81, 'Germany', 81, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(82, 'Ghana', 82, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(83, 'Gibraltar', 83, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(84, 'Greece', 84, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(85, 'Greenland', 85, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(86, 'Grenada', 86, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(87, 'Guadeloupe', 87, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(88, 'Guam', 88, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(89, 'Guatemala', 89, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(90, 'Guinea', 90, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(91, 'Guinea-Bissau', 91, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(92, 'Guyana', 92, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(93, 'Haiti', 93, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(94, 'Heard and Mc Donald Islands', 94, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(95, 'Honduras', 95, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(96, 'Hong Kong', 96, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(97, 'Hungary', 97, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(98, 'Iceland', 98, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(99, 'India', 99, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(100, 'Indonesia', 100, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(101, 'Iran (Islamic Republic of)', 101, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(102, 'Iraq', 102, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(103, 'Ireland', 103, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(104, 'Israel', 104, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(105, 'Italy', 105, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(106, 'Ivory Coast', 106, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(107, 'Jamaica', 107, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(108, 'Japan', 108, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(109, 'Jordan', 109, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(110, 'Kazakhstan', 110, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(111, 'Kenya', 111, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(112, 'Kiribati', 112, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(113, 'Korea, Democratic People\'s Republic of', 113, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(114, 'Korea, Republic of', 114, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(115, 'Kosovo', 115, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(116, 'Kuwait', 116, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(117, 'Kyrgyzstan', 117, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(118, 'Lao People\'s Democratic Republic', 118, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(119, 'Latvia', 119, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(120, 'Lebanon', 120, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(121, 'Lesotho', 121, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(122, 'Liberia', 122, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(123, 'Libyan Arab Jamahiriya', 123, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(124, 'Liechtenstein', 124, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(125, 'Lithuania', 125, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(126, 'Luxembourg', 126, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(127, 'Macau', 127, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(128, 'Macedonia', 128, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(129, 'Madagascar', 129, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(130, 'Malawi', 130, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(131, 'Malaysia', 131, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(132, 'Maldives', 132, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(133, 'Mali', 133, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(134, 'Malta', 134, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(135, 'Marshall Islands', 135, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(136, 'Martinique', 136, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(137, 'Mauritania', 137, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(138, 'Mauritius', 138, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(139, 'Mayotte', 139, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(140, 'México', 140, 'MEX', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(141, 'Micronesia, Federated States of', 141, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(142, 'Moldova, Republic of', 142, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(143, 'Monaco', 143, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(144, 'Mongolia', 144, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(145, 'Montenegro', 145, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(146, 'Montserrat', 146, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(147, 'Morocco', 147, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(148, 'Mozambique', 148, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(149, 'Myanmar', 149, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(150, 'Namibia', 150, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(151, 'Nauru', 151, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(152, 'Nepal', 152, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(153, 'Netherlands', 153, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(154, 'Netherlands Antilles', 154, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(155, 'New Caledonia', 155, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(156, 'New Zealand', 156, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(157, 'Nicaragua', 157, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(158, 'Niger', 158, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(159, 'Nigeria', 159, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(160, 'Niue', 160, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(161, 'Norfork Island', 161, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(162, 'Northern Mariana Islands', 162, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(163, 'Norway', 163, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(164, 'Oman', 164, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(165, 'Pakistan', 165, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(166, 'Palau', 166, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(167, 'Panama', 167, 'PA', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(168, 'Papua New Guinea', 168, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(169, 'Paraguay', 169, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(170, 'Peru', 170, 'PE', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(171, 'Philippines', 171, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(172, 'Pitcairn', 172, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(173, 'Poland', 173, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(174, 'Portugal', 174, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(175, 'Puerto Rico', 175, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(176, 'Qatar', 176, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(177, 'Reunion', 177, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(178, 'Romania', 178, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(179, 'Russian Federation', 179, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(180, 'Rwanda', 180, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(181, 'Saint Kitts and Nevis', 181, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(182, 'Saint Lucia', 182, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(183, 'Saint Vincent and the Grenadines', 183, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(184, 'Samoa', 184, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(185, 'San Marino', 185, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(186, 'Sao Tome and Principe', 186, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(187, 'Saudi Arabia', 187, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(188, 'Senegal', 188, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(189, 'Serbia', 189, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(190, 'Seychelles', 190, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(191, 'Sierra Leone', 191, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(192, 'Singapore', 192, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(193, 'Slovakia', 193, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(194, 'Slovenia', 194, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(195, 'Solomon Islands', 195, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(196, 'Somalia', 196, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(197, 'South Africa', 197, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(198, 'South Georgia South Sandwich Islands', 198, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(199, 'Spain', 199, 'ES', 1, 'add', 2, '0000-00-00 00:00:00'),
(200, 'Sri Lanka', 200, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(201, 'St. Helena', 201, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(202, 'St. Pierre and Miquelon', 202, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(203, 'Sudan', 203, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(204, 'Suriname', 204, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(205, 'Svalbarn and Jan Mayen Islands', 205, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(206, 'Swaziland', 206, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(207, 'Sweden', 207, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(208, 'Switzerland', 208, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(209, 'Syrian Arab Republic', 209, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(210, 'Taiwan', 210, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(211, 'Tajikistan', 211, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(212, 'Tanzania, United Republic of', 212, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(213, 'Thailand', 213, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(214, 'Togo', 214, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(215, 'Tokelau', 215, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(216, 'Tonga', 216, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(217, 'Trinidad and Tobago', 217, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(218, 'Tunisia', 218, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(219, 'Turkey', 219, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(220, 'Turkmenistan', 220, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(221, 'Turks and Caicos Islands', 221, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(222, 'Tuvalu', 222, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(223, 'Uganda', 223, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(224, 'Ukraine', 224, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(225, 'United Arab Emirates', 225, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(226, 'United Kingdom', 226, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(227, 'United States minor outlying islands', 227, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(228, 'Uruguay', 228, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(229, 'Uzbekistan', 229, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(230, 'Vanuatu', 230, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(231, 'Vatican City State', 231, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(232, 'Venezuela', 232, 'VE', 1, 'subtract', 4, '0000-00-00 00:00:00'),
(233, 'Vietnam', 233, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(238, 'Yemen', 238, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(239, 'Yugoslavia', 239, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(240, 'Zaire', 240, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(241, 'Zambia', 241, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(242, 'Zimbawe', 242, NULL, 0, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pop`
--

CREATE TABLE `pop` (
  `id` int NOT NULL,
  `titulo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activado` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pop`
--

INSERT INTO `pop` (`id`, `titulo`, `contenido`, `activado`, `updated_at`) VALUES
(1, 'Bienvenida.', '<div style=\"text-align: center;\"><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/F3s4rtcy1Ps\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></div>', 1, '2021-01-11 20:10:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotions`
--

CREATE TABLE `promotions` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospeccion`
--

CREATE TABLE `prospeccion` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `persona_natural` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `direccion` longtext NOT NULL,
  `ciudad` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `user_email` varchar(250) DEFAULT NULL,
  `local` varchar(250) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `pais` varchar(250) NOT NULL,
  `telefono` varchar(250) NOT NULL,
  `website` varchar(250) DEFAULT NULL,
  `vap` varchar(250) DEFAULT NULL,
  `referred_id` int NOT NULL,
  `position_id` int NOT NULL,
  `ladomatriz` varchar(250) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `tipo` varchar(250) DEFAULT NULL,
  `comentario` longtext,
  `observaciones` longtext,
  `perfil` longtext,
  `envioCorreo` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos`
--

CREATE TABLE `puntos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcompra` int NOT NULL,
  `usuario` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `concepto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntos` double NOT NULL,
  `cantidad` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntosbonos`
--

CREATE TABLE `puntosbonos` (
  `id` int NOT NULL,
  `iduser` int DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `concepto` varchar(250) DEFAULT NULL,
  `puntos` double DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL COMMENT '1 - puntos que se pueden descontar 2 - puntos que se almacenan 3 - puntos descontados del 1',
  `lado` varchar(10) DEFAULT NULL,
  `balance` double DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` double NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `link` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `amount`, `payment_method`, `payment_id`, `date`, `status`, `link`, `created_at`, `updated_at`) VALUES
(1, 10079, 1, 'Stripe', 'tok_1HeTl7FKU1xhP2bFQqw0PVS8', '2020-10-20', 1, 0, '2020-10-20 17:56:56', '2020-10-20 17:56:56'),
(2, 10082, 1, 'Stripe', 'tok_1HehV5FKU1xhP2bFIyiXBg24', '2020-10-21', 1, 0, '2020-10-21 08:37:16', '2020-10-21 08:37:16'),
(3, 10094, 16, '', '', '2020-11-04', 1, 0, '2020-11-04 06:16:33', '2020-11-04 06:16:33'),
(4, 10090, 24, '', '', '2020-11-04', 1, 0, '2020-11-04 06:24:01', '2020-11-04 06:24:01'),
(5, 10090, 24, '', '', '2020-11-04', 1, 0, '2020-11-04 06:26:12', '2020-11-04 06:26:12'),
(6, 10092, 20, '', '', '2020-11-04', 1, 0, '2020-11-04 06:28:02', '2020-11-04 06:28:02'),
(7, 10093, 18, '', '', '2020-11-04', 1, 0, '2020-11-04 06:30:28', '2020-11-04 06:30:28'),
(8, 10091, 22, '', '', '2020-11-04', 1, 0, '2020-11-04 06:31:57', '2020-11-04 06:31:57'),
(9, 10091, 20, 'Billetera', '', '2020-11-17', 1, 0, '2020-11-17 10:21:06', '2020-11-17 10:21:06'),
(10, 10090, 10.99, 'Billetera', '', '2020-12-07', 1, 0, '2020-12-07 18:36:06', '2020-12-07 18:36:06'),
(11, 10101, 0, 'Billetera', '', '2020-12-09', 1, 10086, '2020-12-09 12:59:38', '2020-12-09 12:59:38'),
(12, 10102, 1, 'Billetera', '', '2020-12-09', 1, 10101, '2020-12-09 14:14:29', '2020-12-09 14:14:29'),
(13, 10101, 1, 'Billetera', '', '2020-12-09', 1, 10086, '2020-12-09 15:16:44', '2020-12-09 15:16:44'),
(14, 10101, 1, 'Billetera', '', '2020-12-09', 1, 10086, '2020-12-09 15:36:34', '2020-12-09 15:36:34'),
(15, 10103, 1, 'Billetera', '', '2020-12-09', 1, 10101, '2020-12-09 16:02:29', '2020-12-09 16:02:29'),
(16, 10103, 1, 'Billetera', '', '2020-12-09', 1, 10101, '2020-12-09 16:08:30', '2020-12-09 16:08:30'),
(17, 10103, 1, 'Billetera', '', '2020-12-09', 1, 10101, '2020-12-09 16:23:43', '2020-12-09 16:23:43'),
(18, 10104, 1, 'Billetera', '', '2020-12-09', 1, 10101, '2020-12-09 16:35:26', '2020-12-09 16:35:26'),
(19, 10104, 1, 'Billetera', '', '2020-12-09', 1, 10101, '2020-12-09 16:38:27', '2020-12-09 16:38:27'),
(20, 10104, 1, 'Billetera', '', '2020-12-09', 1, 10101, '2020-12-09 16:50:19', '2020-12-09 16:50:19'),
(21, 10101, 1, 'Billetera', '', '2020-12-09', 1, 10086, '2020-12-09 16:59:45', '2020-12-09 16:59:45'),
(22, 10101, 450, 'Billetera', '', '2020-12-10', 1, 10086, '2020-12-10 14:54:04', '2020-12-10 14:54:04'),
(23, 10101, 1, 'Billetera', '', '2020-12-10', 1, 10086, '2020-12-10 15:33:22', '2020-12-10 15:33:22'),
(24, 10101, 1, 'Stripe', 'tok_1HwvzuFKU1xhP2bFQXobZK0k', '2020-12-10', 1, 0, '2020-12-10 15:44:28', '2020-12-10 15:44:28'),
(25, 10102, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 15:51:54', '2020-12-10 15:51:54'),
(26, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:04:55', '2020-12-10 16:04:55'),
(27, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:11:51', '2020-12-10 16:11:51'),
(28, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:12:30', '2020-12-10 16:12:30'),
(29, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:13:07', '2020-12-10 16:13:07'),
(30, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:14:08', '2020-12-10 16:14:08'),
(31, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:15:07', '2020-12-10 16:15:07'),
(32, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:20:11', '2020-12-10 16:20:11'),
(33, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 16:22:51', '2020-12-10 16:22:51'),
(34, 10101, 1, 'Billetera', '', '2020-12-10', 1, 10086, '2020-12-10 18:40:04', '2020-12-10 18:40:04'),
(35, 10101, 1, 'Billetera', '', '2020-12-10', 1, 10086, '2020-12-10 18:41:48', '2020-12-10 18:41:48'),
(36, 10101, 1, 'Billetera', '', '2020-12-10', 1, 10086, '2020-12-10 18:42:51', '2020-12-10 18:42:51'),
(37, 10102, 1, 'Stripe', 'tok_1Hx1UBFKU1xhP2bFjG5RI4RV', '2020-12-10', 1, 0, '2020-12-10 21:36:04', '2020-12-10 21:36:04'),
(38, 10103, 1, 'Stripe', 'tok_1Hx1XDFKU1xhP2bFW4ORHNki', '2020-12-10', 1, 0, '2020-12-10 21:39:12', '2020-12-10 21:39:12'),
(39, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 21:45:34', '2020-12-10 21:45:34'),
(40, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 21:46:37', '2020-12-10 21:46:37'),
(41, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 22:01:58', '2020-12-10 22:01:58'),
(42, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 22:02:07', '2020-12-10 22:02:07'),
(43, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 22:02:17', '2020-12-10 22:02:17'),
(44, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 22:02:27', '2020-12-10 22:02:27'),
(45, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 22:02:42', '2020-12-10 22:02:42'),
(46, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 22:02:57', '2020-12-10 22:02:57'),
(47, 10105, 1, 'Billetera', '', '2020-12-10', 1, 10101, '2020-12-10 22:04:54', '2020-12-10 22:04:54'),
(48, 10107, 1, 'Billetera', '', '2020-12-11', 1, 1, '2020-12-11 15:00:04', '2020-12-11 15:00:04'),
(49, 10107, 1, 'Billetera', '', '2020-12-11', 1, 1, '2020-12-11 15:51:55', '2020-12-11 15:51:55'),
(50, 1, 1, 'Paypal', '20201211162249', '2020-12-11', 1, 0, '2020-12-11 16:23:16', '2020-12-11 16:23:16'),
(51, 10107, 1, 'Stripe', 'tok_1HxJHhFKU1xhP2bFOuuHeqCj', '2020-12-11', 1, 0, '2020-12-11 16:36:28', '2020-12-11 16:36:28'),
(52, 10107, 1, 'Paypal', '20201211171236', '2020-12-11', 1, 1, '2020-12-11 17:19:49', '2020-12-11 17:19:49'),
(53, 10107, 1, 'Stripe', 'tok_1HxKAHFKU1xhP2bFEV6ad1gd', '2020-12-11', 1, 0, '2020-12-11 17:32:47', '2020-12-11 17:32:47'),
(54, 10107, 1, 'Billetera', '', '2020-12-11', 1, 1, '2020-12-11 17:34:06', '2020-12-11 17:34:06'),
(55, 10107, 1, 'Paypal', '20201211173608', '2020-12-11', 1, 1, '2020-12-11 17:36:54', '2020-12-11 17:36:54'),
(56, 10107, 1, 'Billetera', '', '2020-12-12', 1, 1, '2020-12-12 13:25:37', '2020-12-12 13:25:37'),
(57, 1, 1, 'Paypal', '20201212145114', '2020-12-12', 1, 0, '2020-12-12 14:52:15', '2020-12-12 14:52:15'),
(58, 10109, 1, 'Stripe', 'tok_1HyGRrFKU1xhP2bFdWDQRavO', '2020-12-14', 1, 0, '2020-12-14 07:46:50', '2020-12-14 07:46:50'),
(59, 10110, 1, 'Stripe', 'tok_1HyP0GFKU1xhP2bFWadW10OY', '2020-12-14', 1, 0, '2020-12-14 16:54:54', '2020-12-14 16:54:54'),
(60, 10110, 1, 'Paypal', '20201214171653', '2020-12-14', 1, 10107, '2020-12-14 17:17:33', '2020-12-14 17:17:33'),
(61, 10110, 1, 'Paypal', '20201214172025', '2020-12-14', 1, 10107, '2020-12-14 17:20:57', '2020-12-14 17:20:57'),
(62, 10110, 1, 'Billetera', '', '2020-12-14', 1, 10107, '2020-12-14 18:09:24', '2020-12-14 18:09:24'),
(63, 10110, 1, 'Paypal', '20201214181232', '2020-12-14', 1, 10107, '2020-12-14 18:13:04', '2020-12-14 18:13:04'),
(64, 10112, 1, 'Paypal', '20201214181401', '2020-12-14', 1, 1, '2020-12-14 18:14:59', '2020-12-14 18:14:59'),
(65, 10110, 1, 'Stripe', 'tok_1HyQInFKU1xhP2bFa30P6RpR', '2020-12-14', 1, 0, '2020-12-14 18:18:07', '2020-12-14 18:18:07'),
(66, 10112, 1, 'Stripe', 'tok_1HyQJ3FKU1xhP2bFLZZoo3g2', '2020-12-14', 1, 0, '2020-12-14 18:18:23', '2020-12-14 18:18:23'),
(67, 10112, 1, 'Billetera', '', '2020-12-14', 1, 1, '2020-12-14 18:24:53', '2020-12-14 18:24:53'),
(68, 10110, 1, 'Billetera', '', '2020-12-14', 1, 10107, '2020-12-14 18:26:27', '2020-12-14 18:26:27'),
(69, 10110, 1, 'Billetera', '', '2020-12-14', 1, 10107, '2020-12-14 18:33:42', '2020-12-14 18:33:42'),
(70, 10112, 1, 'Billetera', '', '2020-12-14', 1, 1, '2020-12-14 18:34:21', '2020-12-14 18:34:21'),
(71, 10113, 1, 'Paypal', '20201214205218', '2020-12-14', 1, 1, '2020-12-14 20:53:33', '2020-12-14 20:53:33'),
(72, 10113, 1, 'Stripe', 'tok_1HyT1WFKU1xhP2bFn8moomFe', '2020-12-14', 1, 0, '2020-12-14 21:12:28', '2020-12-14 21:12:28'),
(73, 10113, 1, 'Billetera', '', '2020-12-14', 1, 1, '2020-12-14 21:21:24', '2020-12-14 21:21:24'),
(74, 10113, 1, 'Billetera', '', '2020-12-14', 1, 1, '2020-12-14 21:25:27', '2020-12-14 21:25:27'),
(75, 10081, 10, 'Billetera', '', '2021-01-12', 1, 0, '2021-01-12 15:32:39', '2021-01-12 15:32:39'),
(76, 10115, 19.99, 'Stripe', 'tok_1I9gOOFKU1xhP2bFFKo12fBn', '2021-01-14', 1, 10114, '2021-01-14 19:42:27', '2021-01-14 19:42:27'),
(77, 10072, 9.99, 'Billetera', '', '2021-01-16', 1, 1, '2021-01-16 08:55:08', '2021-01-16 08:55:08'),
(78, 10101, 39.99, 'Billetera', '', '2021-01-16', 1, 10086, '2021-01-16 08:58:41', '2021-01-16 08:58:41'),
(79, 10101, 10, 'Billetera', '', '2021-01-16', 1, 0, '2021-01-16 09:16:22', '2021-01-16 09:16:22'),
(80, 10107, 39.99, 'Billetera', '', '2021-01-25', 1, 1, '2021-01-25 16:16:02', '2021-01-25 16:16:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int NOT NULL,
  `purchase_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `membership_id` int DEFAULT NULL,
  `membership_type` varchar(20) DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `course_id`, `membership_id`, `membership_type`, `offer_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, NULL, NULL, 1, '2020-10-20 17:56:56', '2020-10-20 17:56:56'),
(2, 2, NULL, 1, NULL, NULL, 1, '2020-10-21 08:37:16', '2020-10-21 08:37:16'),
(3, 3, NULL, 4, NULL, NULL, 16, '2020-11-04 06:16:33', '2020-11-04 06:16:33'),
(4, 4, NULL, 1, NULL, NULL, 24, '2020-11-04 06:24:01', '2020-11-04 06:24:01'),
(5, 5, NULL, 1, NULL, NULL, 24, '2020-11-04 06:26:12', '2020-11-04 06:26:12'),
(6, 6, NULL, 3, NULL, NULL, 20, '2020-11-04 06:28:02', '2020-11-04 06:28:02'),
(7, 7, NULL, 4, NULL, NULL, 18, '2020-11-04 06:30:28', '2020-11-04 06:30:28'),
(8, 8, NULL, 2, NULL, NULL, 22, '2020-11-04 06:31:57', '2020-11-04 06:31:57'),
(9, 9, NULL, 3, NULL, NULL, 20, '2020-11-17 10:21:06', '2020-11-17 10:21:06'),
(10, 10, NULL, 2, NULL, NULL, 10.99, '2020-12-07 18:36:06', '2020-12-07 18:36:06'),
(11, 11, NULL, 1, 'Mensual', NULL, 0, '2020-12-09 12:59:38', '2020-12-09 12:59:38'),
(12, 12, NULL, 2, 'Mensual', NULL, 1, '2020-12-09 14:14:29', '2020-12-09 14:14:29'),
(13, 13, NULL, 1, 'Mensual', NULL, 1, '2020-12-09 15:16:44', '2020-12-09 15:16:44'),
(14, 14, NULL, 3, 'Anual', NULL, 1, '2020-12-09 15:36:34', '2020-12-09 15:36:34'),
(15, 15, NULL, 1, 'Anual', NULL, 1, '2020-12-09 16:02:29', '2020-12-09 16:02:29'),
(16, 16, NULL, 1, 'Anual', NULL, 1, '2020-12-09 16:08:30', '2020-12-09 16:08:30'),
(17, 17, NULL, 1, 'Mensual', NULL, 1, '2020-12-09 16:23:43', '2020-12-09 16:23:43'),
(18, 18, NULL, 1, 'Mensual', NULL, 1, '2020-12-09 16:35:26', '2020-12-09 16:35:26'),
(19, 19, NULL, 2, 'Mensual', NULL, 1, '2020-12-09 16:38:27', '2020-12-09 16:38:27'),
(20, 20, NULL, 3, 'Mensual', NULL, 1, '2020-12-09 16:50:19', '2020-12-09 16:50:19'),
(21, 21, NULL, 4, 'Mensual', NULL, 1, '2020-12-09 16:59:45', '2020-12-09 16:59:45'),
(22, 22, NULL, 4, 'Anual', NULL, 450, '2020-12-10 14:54:04', '2020-12-10 14:54:04'),
(23, 23, NULL, 2, 'Mensual', NULL, 1, '2020-12-10 15:33:22', '2020-12-10 15:33:22'),
(24, 24, NULL, 2, 'Mensual', NULL, 1, '2020-12-10 15:44:28', '2020-12-10 15:44:28'),
(25, 25, NULL, 3, 'Mensual', NULL, 1, '2020-12-10 15:51:54', '2020-12-10 15:51:54'),
(26, 26, NULL, 1, 'Mensual', NULL, 1, '2020-12-10 16:04:55', '2020-12-10 16:04:55'),
(27, 27, NULL, 2, 'Anual', NULL, 1, '2020-12-10 16:11:51', '2020-12-10 16:11:51'),
(28, 28, NULL, 3, 'Mensual', NULL, 1, '2020-12-10 16:12:30', '2020-12-10 16:12:30'),
(29, 29, NULL, 4, 'Mensual', NULL, 1, '2020-12-10 16:13:07', '2020-12-10 16:13:07'),
(30, 30, NULL, 1, 'Anual', NULL, 1, '2020-12-10 16:14:08', '2020-12-10 16:14:08'),
(31, 31, NULL, 2, 'Anual', NULL, 1, '2020-12-10 16:15:07', '2020-12-10 16:15:07'),
(32, 32, NULL, 3, 'Anual', NULL, 1, '2020-12-10 16:20:11', '2020-12-10 16:20:11'),
(33, 33, NULL, 4, 'Anual', NULL, 1, '2020-12-10 16:22:51', '2020-12-10 16:22:51'),
(34, 34, NULL, 2, 'Mensual', NULL, 1, '2020-12-10 18:40:04', '2020-12-10 18:40:04'),
(35, 35, NULL, 3, 'Mensual', NULL, 1, '2020-12-10 18:41:48', '2020-12-10 18:41:48'),
(36, 36, NULL, 4, 'Mensual', NULL, 1, '2020-12-10 18:42:51', '2020-12-10 18:42:51'),
(37, 37, NULL, 2, 'Mensual', NULL, 1, '2020-12-10 21:36:04', '2020-12-10 21:36:04'),
(38, 38, NULL, 2, 'Mensual', NULL, 1, '2020-12-10 21:39:12', '2020-12-10 21:39:12'),
(39, 39, NULL, 3, 'Mensual', NULL, 1, '2020-12-10 21:45:34', '2020-12-10 21:45:34'),
(40, 40, NULL, 4, 'Mensual', NULL, 1, '2020-12-10 21:46:37', '2020-12-10 21:46:37'),
(41, 41, NULL, 1, 'Mensual', NULL, 1, '2020-12-10 22:01:58', '2020-12-10 22:01:58'),
(42, 42, NULL, 1, 'Anual', NULL, 1, '2020-12-10 22:02:07', '2020-12-10 22:02:07'),
(43, 43, NULL, 2, 'Mensual', NULL, 1, '2020-12-10 22:02:17', '2020-12-10 22:02:17'),
(44, 44, NULL, 2, 'Anual', NULL, 1, '2020-12-10 22:02:27', '2020-12-10 22:02:27'),
(45, 45, NULL, 3, 'Mensual', NULL, 1, '2020-12-10 22:02:42', '2020-12-10 22:02:42'),
(46, 46, NULL, 4, 'Anual', NULL, 1, '2020-12-10 22:02:57', '2020-12-10 22:02:57'),
(47, 47, NULL, 1, 'Anual', NULL, 1, '2020-12-10 22:04:54', '2020-12-10 22:04:54'),
(48, 48, NULL, 1, 'Mensual', NULL, 1, '2020-12-11 15:00:04', '2020-12-11 15:00:04'),
(49, 49, NULL, 2, 'Mensual', NULL, 1, '2020-12-11 15:51:55', '2020-12-11 15:51:55'),
(50, 50, NULL, 1, 'Mensual', NULL, 1, '2020-12-11 16:23:16', '2020-12-11 16:23:16'),
(51, 51, NULL, 3, 'Mensual', NULL, 1, '2020-12-11 16:36:28', '2020-12-11 16:36:28'),
(52, 52, NULL, 4, 'Mensual', NULL, 1, '2020-12-11 17:19:49', '2020-12-11 17:19:49'),
(53, 53, NULL, 1, 'Anual', NULL, 1, '2020-12-11 17:32:47', '2020-12-11 17:32:47'),
(54, 54, NULL, 2, 'Anual', NULL, 1, '2020-12-11 17:34:06', '2020-12-11 17:34:06'),
(55, 55, NULL, 3, 'Anual', NULL, 1, '2020-12-11 17:36:54', '2020-12-11 17:36:54'),
(56, 56, NULL, 4, 'Mensual', NULL, 1, '2020-12-12 13:25:37', '2020-12-12 13:25:37'),
(57, 57, NULL, 1, 'Anual', NULL, 1, '2020-12-12 14:52:15', '2020-12-12 14:52:15'),
(58, 58, NULL, 1, 'Mensual', NULL, 1, '2020-12-14 07:46:50', '2020-12-14 07:46:50'),
(59, 59, NULL, 1, 'Mensual', NULL, 1, '2020-12-14 16:54:54', '2020-12-14 16:54:54'),
(60, 60, NULL, 2, 'Mensual', NULL, 1, '2020-12-14 17:17:33', '2020-12-14 17:17:33'),
(61, 61, NULL, 3, 'Mensual', NULL, 1, '2020-12-14 17:20:57', '2020-12-14 17:20:57'),
(62, 62, NULL, 4, 'Mensual', NULL, 1, '2020-12-14 18:09:24', '2020-12-14 18:09:24'),
(63, 63, NULL, 1, 'Anual', NULL, 1, '2020-12-14 18:13:04', '2020-12-14 18:13:04'),
(64, 64, NULL, 1, 'Mensual', NULL, 1, '2020-12-14 18:14:59', '2020-12-14 18:14:59'),
(65, 65, NULL, 2, 'Anual', NULL, 1, '2020-12-14 18:18:07', '2020-12-14 18:18:07'),
(66, 66, NULL, 2, 'Mensual', NULL, 1, '2020-12-14 18:18:23', '2020-12-14 18:18:23'),
(67, 67, NULL, 3, 'Mensual', NULL, 1, '2020-12-14 18:24:53', '2020-12-14 18:24:53'),
(68, 68, NULL, 3, 'Anual', NULL, 1, '2020-12-14 18:26:27', '2020-12-14 18:26:27'),
(69, 69, NULL, 1, 'Anual', NULL, 1, '2020-12-14 18:33:42', '2020-12-14 18:33:42'),
(70, 70, NULL, 4, 'Anual', NULL, 1, '2020-12-14 18:34:21', '2020-12-14 18:34:21'),
(71, 71, NULL, 1, 'Mensual', NULL, 1, '2020-12-14 20:53:33', '2020-12-14 20:53:33'),
(72, 72, NULL, 2, 'Mensual', NULL, 1, '2020-12-14 21:12:28', '2020-12-14 21:12:28'),
(73, 73, NULL, 3, 'Mensual', NULL, 1, '2020-12-14 21:21:24', '2020-12-14 21:21:24'),
(74, 74, NULL, 3, 'Anual', NULL, 1, '2020-12-14 21:25:27', '2020-12-14 21:25:27'),
(76, 76, NULL, 2, 'Mensual', NULL, 19.99, '2021-01-14 19:42:27', '2021-01-14 19:42:27'),
(77, 77, NULL, 1, 'Mensual', NULL, 9.99, '2021-01-16 08:55:08', '2021-01-16 08:55:08'),
(78, 78, NULL, 4, 'Mensual', NULL, 39.99, '2021-01-16 08:58:41', '2021-01-16 08:58:41'),
(80, 80, NULL, 4, 'Mensual', NULL, 39.99, '2021-01-25 16:16:02', '2021-01-25 16:16:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pushs`
--

CREATE TABLE `pushs` (
  `id` int NOT NULL,
  `iduser` int DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `body` varchar(250) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qr`
--

CREATE TABLE `qr` (
  `id` int NOT NULL,
  `contenido` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `evaluation_id` int NOT NULL,
  `order` int NOT NULL,
  `question` text NOT NULL,
  `answer_1` text NOT NULL,
  `answer_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `correct_answer` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `evaluation_id`, `order`, `question`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '¡Qué son las Finanzas?', 'Las finanzas son una rama de la economía que estudia el intercambio de capital entre individuos.', 'Un sistema contable.', 'Economía aplicada.', '-', 1, '2020-11-11 23:36:59', '2020-11-11 23:36:59'),
(2, 2, 2, '¿Cuáles son las 3 disciplinas de las finanzas?', 'Finanzas contables, finanzas de administración, finanzas económicas.', 'Finanzas públicas, finanzas corporativas, finanzas personales.', 'Solo hay una disciplina.', '-', 2, '2020-11-11 23:40:20', '2020-11-11 23:40:20'),
(3, 3, 1, '¿Qué es una oferta inicial de acciones?', 'La primera oferta pública que una empresa hace de sus acciones en el mercado de valores.', 'La segunda oferta pública que una empresa hace de sus acciones en el mercado de valores.', 'Acciones vendidas con descuento.', NULL, 1, '2020-11-12 13:30:30', '2020-11-19 12:37:03'),
(4, 3, 2, '¿A través de donde se hace la venta de una IPO?', 'La bolsa de valores.', 'Una firma financiera.', 'Intercambio privado.', NULL, 1, '2020-11-19 13:06:35', '2020-11-19 13:06:35'),
(5, 3, 3, '¿Cuál es el mayor beneficio de las IPO?', 'Obtener una gran cantidad de dinero no reembolsable en un corto periodo de tiempo.', 'Obtener una gran cantidad de dinero no reembolsable en un largo periodo de tiempo.', 'Obtener una gran cantidad de dinero  reembolsable en un corto periodo de tiempo.', NULL, 1, '2020-11-19 13:07:47', '2020-11-19 13:07:47'),
(6, 3, 4, '¿Cómo se llama al documento que prepara la empresa para salir a bolsa?', 'Prospecto de inversión.', 'Estatutos legales.', 'Estados financieros.', NULL, 1, '2020-11-19 13:09:40', '2020-11-19 13:09:40'),
(7, 3, 5, '¿Cuáles son 3 de los pasos previos a la salida a bolsa de una empresa?', 'Contratar un banco de inversión, llenar formularios, establecer precio para las acciones.', 'Contratar un banco de inversión, omitir formularios, establecer precio para las acciones.', 'Contratar un banco de inversión, llenar formularios, no establecer precio para las acciones.', NULL, 1, '2020-11-19 13:13:07', '2020-11-19 13:13:07'),
(8, 3, 6, '¿Cuál es el precio  por acción en el estándar 1 de la AMEX?', '2 dólares.', '3 dólares.', '4 dólares.', NULL, 1, '2020-11-19 13:14:00', '2020-11-19 13:14:00'),
(9, 3, 7, '¿A qué se refiere el valor contable de una acción?', 'Representa lo que la empresa ha pagado por sus activos, menos una deducción por amortización', 'Representa lo que la empresa ha cobrado por sus activos, menos una deducción por amortización', 'Representa lo que la empresa ha pagado por sus activos, mas una deducción por amortización', NULL, 1, '2020-11-19 13:14:55', '2020-11-19 13:14:55'),
(10, 3, 8, '¿Cuáles son los activos intangibles?', 'Aquellos activos que los contables no incluyen en el balance y tienen un gran valor, como por ejemplo las marcas registradas.', 'Aquellos activos que los contables si incluyen en el balance y tienen un gran valor, como por ejemplo las marcas registradas.', 'Aquellos activos que los contables  incluyen en el balance no tienen un gran valor, como por ejemplo las marcas registradas.', NULL, 1, '2020-11-19 13:15:53', '2020-11-19 13:15:53'),
(11, 3, 9, '¿Cuáles son los métodos basados en el valor patrimonial?', 'Son aquellos que determinan el valor de la compañía en función de su balance.', 'Son aquellos que determinan el valor de la compañía en función de su ingreso', 'Son aquellos que determinan el valor de la compañía en función de sus ventas', NULL, 1, '2020-11-19 13:18:04', '2020-11-19 13:18:04'),
(12, 3, 10, '¿Cuál es la fórmula de rentabilidad por dividendo?', 'Se consigue dividiendo el dividendo por acción / Precio por acción.', 'Se consigue multiplicando el dividendo por acción / Precio por acción.', 'Se consigue sumando el dividendo por acción / Precio por acción.', NULL, 1, '2020-11-19 13:19:03', '2020-11-19 13:19:03'),
(13, 4, 1, '¿Qué es una red peer to peer?', 'Una herramienta que permite la transferencia de información de manera directa, esta es una herramienta indispensable en un nuevo mercado como el digital, esto hace las operaciones mucho más eficientes y elimina intermediarios.', 'Una herramienta que avala la transferencia de información de manera directa, esta es una herramienta indispensable en un nuevo mercado como el digital, esto hace las operaciones mucho más eficientes y elimina intermediarios.', 'Una herramienta que permite la eliminación de información de manera directa, esta es una herramienta indispensable en un nuevo mercado como el digital, esto hace las operaciones mucho más eficientes y elimina intermediarios.', NULL, 1, '2020-11-19 13:25:09', '2020-11-19 13:25:09'),
(14, 4, 2, '¿Qué es un token?', 'Son objetos similares a las monedas, pero a diferencia de estas últimas, los tokens carecen de valor de curso legal.', 'Son monedas físicas, pero a diferencia de estas últimas, los tokens carecen de valor de curso legal.', 'Son objetos similares a las monedas, los tokens tienen  valor de curso legal.', NULL, 1, '2020-11-19 13:26:27', '2020-11-19 13:26:27'),
(15, 4, 3, '¿Qué es un wallet?', 'Son llaves privadas que nos permiten acceder a una dirección pública de Bitcoin y firmar las transacciones que necesitan ser guardadas de forma segura.', 'Son carteras públicas que nos permiten acceder a una dirección pública de Bitcoin y firmar las transacciones que necesitan ser guardadas de forma segura.', 'Son llaves privadas que nos permiten buscar a una dirección y firmar las transacciones que necesitan ser guardadas de forma segura.', NULL, 1, '2020-11-19 13:29:41', '2020-11-19 13:29:41'),
(16, 4, 4, '¿Cómo funciona el wallet móvil?', 'Se ejecuta como una aplicación en nuestro teléfono inteligente, guardando las llaves privadas y permitiéndonos pagar directamente desde nuestro teléfono.', 'Billetera en papel, guarda las llaves privadas y permite pagar directamente desde nuestro teléfono.', 'Se ejecuta como una aplicación en nuestro teléfono inteligente, haciendo públicas las llaves privadas y permitiéndonos pagar directamente desde nuestro teléfono.', NULL, 1, '2020-11-19 13:30:40', '2020-11-19 13:30:40'),
(17, 4, 5, '¿Cuál es el tipo de wallet más segura?', 'Papel', 'Móvil', 'Web', NULL, 1, '2020-11-19 13:33:16', '2020-11-19 13:33:16'),
(18, 4, 6, '¿Para qué se lanza una ICO al mercado?', 'Una oferta inicial de moneda es lanzada al mercado, con la intención de financiar un proyecto definido de manera colectiva, operativamente es llevado a cabo a través de contratos inteligentes desarrollados por empresas especializadas', 'Una oferta inicial de moneda es lanzada al mercado, con la intención de controlar un proyecto definido de manera colectiva, operativamente es llevado a cabo a través de contratos inteligentes desarrollados por empresas especializadas', 'Una oferta inicial de moneda es lanzada al mercado, con la intención de buscar un proyecto definido de manera colectiva, operativamente es llevado a cabo a través de contratos inteligentes desarrollados por empresas especializadas', NULL, 1, '2020-11-19 13:34:41', '2020-11-19 13:34:41'),
(19, 4, 7, '¿Cuál es el lenguaje de Ethereum para los contratos inteligentes?', 'Solidity', 'Bitcoin', 'Peer to peer', NULL, 1, '2020-11-19 13:36:13', '2020-11-19 13:36:13'),
(20, 4, 8, '¿Por qué deberíamos invertir en tokens de ICO?', 'El precio de los tokens puede aumentar rápidamente, por lo que podemos ganar dinero comprando y vendiendo a tiempo, esta parte es bastante similar a lo que sucede en las bolsas de valores tradicionales.', 'El precio de los tokens puede bajar rápidamente, por lo que podemos ganar dinero comprando y vendiendo a tiempo, esta parte es bastante similar a lo que sucede en las bolsas de valores tradicionales.', 'El precio de los bitcoins puede aumentar rápidamente, por lo que podemos ganar dinero comprando y vendiendo a tiempo, esta parte es bastante similar a lo que sucede en las bolsas de valores tradicionales.', NULL, 1, '2020-11-19 13:37:49', '2020-11-19 13:37:49'),
(21, 4, 9, '¿Qué es el minado de criptomonedas?', 'Es la actividad mediante la cual se emiten nuevos criptoactivos y se confirman las transacciones dentro de una red de blockchain', 'Es la actividad mediante la cual se suspenden los criptoactivos y se confirman las transacciones dentro de una red de blockchain', 'Es la actividad mediante la cual se venden nuevos criptoactivos y se confirman las transacciones dentro de una red de blockchain', NULL, 1, '2020-11-19 13:39:03', '2020-11-19 13:39:03'),
(22, 4, 10, '¿Cada cuántos bloques minados se da el halving en BTC?', '210,000', '100,000', '250,000', NULL, 1, '2020-11-19 13:40:04', '2020-11-19 13:40:04'),
(23, 5, 1, '¿Cómo funciona la blockchain?', 'En general funciona como un libro contable de una empresa, decentraliza la información y permite la permanencia en el tiempo de la transacción para su verificación y no es susceptible a ser modificada o eliminada.', 'En general funciona como el estado financiero de una empresa, centraliza la información y permite la permanencia en el tiempo de la transacción para su verificación y no es susceptible a ser modificada o eliminada.', 'En general funciona como un libro contable de una empresa, centraliza la información y  elimina la permanencia en el tiempo de la transacción para su verificación y no es susceptible a ser modificada o eliminada.', NULL, 1, '2020-11-19 23:59:18', '2020-11-19 23:59:18'),
(24, 5, 2, '¿Qué es el hash?', 'Un hash es una cadena de números y letras, producida por funciones hash. Una función hash es una función matemática que toma una cantidad variable de caracteres y la convierte en una cadena con un número fijo de caracteres. Incluso un pequeño cambio en una cadena crea un hash completamente nuevo.', 'Un hash es una cadena de  letras, producida por funciones hash. Una función hash es una función matemática que toma una cantidad variable de caracteres y la convierte en una cadena con un número fijo de caracteres. Incluso un pequeño cambio en una cadena crea un hash completamente nuevo.', 'Un hash es una clave privada. Una función hash es una función matemática que toma una cantidad variable de caracteres y la convierte en una cadena con un número fijo de caracteres. Incluso un pequeño cambio en una cadena crea un hash completamente nuevo.', NULL, 1, '2020-11-20 00:01:50', '2020-11-20 00:01:50'),
(25, 5, 3, '¿Qué es un nodo?', 'Los nodos son computadoras', 'Los nodos son bases', 'Los nodos son claves', NULL, 1, '2020-11-20 00:08:21', '2020-11-20 00:08:21'),
(26, 5, 4, '¿Qué garantizan los protocolos de blockchain?', 'Garantizan que la red se ejecute de la manera en que la diseñaron sus creadores, a pesar de que es completamente autónoma y no está controlada por nadie', 'Garantizan que la red no se ejecute de la manera en que la diseñaron sus creadores, a pesar de que es completamente autónoma y no está controlada por nadie', 'Garantizan que la red se elimine de la manera en que la diseñaron sus creadores, a pesar de que es completamente autónoma y no está controlada por nadie', NULL, 1, '2020-11-20 00:09:44', '2020-11-20 00:09:44'),
(27, 5, 5, '¿Por qué es casi imposible falsificar un bloque?', 'La razón por la que es casi imposible simular un bloque es que la validez del bloque y, por extensión, su inclusión en la Blockchain está determinada por un consenso electrónico de nodos.', 'La razón por la que es casi imposible simular un bloque es que la copia del bloque y, por extensión, su eliminación en la Blockchain está determinada por un consenso electrónico de nodos', 'La razón por la que es casi imposible simular un bloque es que la validez del bloque y, por extensión, su inclusión en la Blockchain está determinada por un consenso electrónico de hash', NULL, 1, '2020-11-20 00:10:55', '2020-11-20 00:10:55'),
(28, 5, 6, '¿Qué son las opciones binarias?', 'Las opciones binarias son un producto financiero de naturaleza binaria debido a que sólo pueden darse dos resultados posibles, por ello también son conocidas como opciones de todo o nada o opciones digitales.', 'Las opciones binarias son un producto no financiero de naturaleza binaria debido a que sólo pueden darse dos resultados posibles, por ello también son conocidas como opciones de todo o nada o opciones digitales.', 'Las opciones binarias son un producto financiero de naturaleza binaria debido a que sólo puede darse un resultado posible, por ello también son conocidas como opciones de todo o nada o opciones digitales.', NULL, 1, '2020-11-20 00:11:55', '2020-11-20 00:11:55'),
(29, 5, 7, '¿A qué se refiere el porcentaje de retorno?', 'Es conocido previamente a la compra de la opción binaria por lo que sabremos en todo momento cuánto dinero vamos a ganar si acertamos en el movimiento de esa opción.', 'Es conocido previamente a la venta de la opción binaria por lo que sabremos en todo momento cuánto dinero vamos a ganar si acertamos en el movimiento de esa opción.', 'Es conocido previamente a la compra de la opción binaria por lo que sabremos en todo momento cuánto dinero vamos a perder si acertamos en el movimiento de esa opción.', NULL, 1, '2020-11-20 00:12:43', '2020-11-20 00:12:43'),
(30, 5, 8, '¿Cuál es la ventaja de la estrategia call/put?', 'La ventaja de esta estrategia es muy simple, por ejemplo: en caso de invertir $500 en una opción Put para el par de divisas EUR/USD, a vencer al final de la hora, puede llegar hasta recibir un retorno de $850, de acuerdo con el retorno ofrecido por su bróker', 'La ventaja de esta estrategia es muy simple, por ejemplo: en caso de invertir $900 en una opción Put para el par de divisas EUR/USD, a vencer al final de la hora, puede llegar hasta recibir un retorno de $850, de acuerdo con el retorno ofrecido por su bróker', 'La ventaja de esta estrategia es muy simple, por ejemplo: en caso de invertir $1,000 en una opción Put para el par de divisas EUR/USD, a vencer al final de la hora, puede llegar hasta recibir un retorno de $850, de acuerdo con el retorno ofrecido por su broker', NULL, 1, '2020-11-20 00:13:48', '2020-11-20 00:13:48'),
(31, 5, 9, '¿En qué se diferencian las opciones binarias del forex?', 'El mercado Forex  es un mercado spot, un mercado en el que los contratos de compra-venta se ejecutan en el momento y el trader paga el precio de mercado en ese momento. En las opciones binarias el trader no paga \"un precio\" por el activo, invierte especulando sobre la dirección del precio del activo subyacente', 'El mercado Forex  es un mercado volatil, un mercado en el que los contratos de compra-venta se ejecutan en el momento y el trader paga el precio de mercado en ese momento. En las opciones binarias el trader no paga \"un precio\" por el activo, invierte especulando sobre la dirección del precio del activo subyacente', 'El mercado Forex  es un mercado split, un mercado en el que los contratos de compra-venta se ejecutan en el momento y el trader paga el precio de mercado en ese momento. En las opciones binarias el trader no paga \"un precio\" por el activo, invierte especulando sobre la dirección del precio del activo subyacente', NULL, 1, '2020-11-20 00:14:46', '2020-11-20 00:14:46'),
(32, 5, 10, '¿Cuáles son los activos subyacentes más populares?', 'Petróleo, Nasdaq, oro', 'Trigo, oro, Nasdaq', 'Aceite, plata, oro', NULL, 1, '2020-11-20 00:16:02', '2020-11-20 00:16:02'),
(33, 6, 1, '¿A qué nos referimos cuando hablamos de inteligencia artificial?', 'A una sucesión de algoritmos que nos ayudan a extraer valor de grandes volúmenes de datos de forma ágil y eficiente, facilitando la toma de decisiones de manera automática', 'A una suma de algoritmos que nos ayudan a extraer valor de grandes volúmenes de datos de forma ágil y eficiente, facilitando la toma de decisiones de manera automática', 'A una sucesión de algoritmos que nos ayudan a extraer valor de pocos volúmenes de datos de forma ágil y eficiente, facilitando la toma de decisiones de manera automática', NULL, 1, '2020-11-20 00:21:13', '2020-11-20 00:21:13'),
(34, 6, 2, '¿Qué es el machine learning?', 'Se trata de un sistema de aprendizaje automático capaz de analizar millones de datos para detectar, tendencias, correlaciones y previsiones.', 'Se trata de un sistema de aprendizaje semi automático capaz de analizar millones de datos para detectar, tendencias, correlaciones y previsiones.', 'Se trata de un sistema de programación automático capaz de analizar millones de datos para detectar, tendencias, correlaciones y previsiones.', NULL, 1, '2020-11-20 00:22:51', '2020-11-20 00:22:51'),
(35, 6, 3, '¿Cuáles son los 3 tipos de aprendizaje del machine learning?', 'Supervisado, no supervisado, por refuerzo', 'Automático, no supervisado, por refuerzo', 'Supervisado, logarítmico, por refuerzo', NULL, 1, '2020-11-20 00:24:38', '2020-11-20 00:24:38'),
(36, 6, 4, '¿Cómo han utilizado los bancos la AI?', 'Para detectar fraudes y ataques informáticos, fijar el precio de un producto o analizar el perfil de los clientes atípicos a la hora de conceder créditos.', 'Para abrir cuentas, fijar el precio de un producto o analizar el perfil de los clientes atípicos a la hora de conceder créditos.', 'Para detectar fraudes y ataques informáticos y abrir cuentas bancarias.', NULL, 1, '2020-11-20 00:25:58', '2020-11-20 00:25:58'),
(37, 6, 5, '¿Cuál es el porcentaje de fraudes a Paypal gracias al uso de AI?', 'Es relativamente bajo con un 0,32% de los ingresos', 'Es relativamente bajo con un 0,50% de los ingresos', 'Es relativamente bajo con un 1,32% de los ingresos', NULL, 1, '2020-11-20 00:27:29', '2020-11-20 00:27:29'),
(38, 6, 6, '¿Qué es un robot Forex?', 'Un robot Forex es un programa informático basado en un conjunto de señales de Trading de divisas que ayuda a definir si comprar o vender un par de divisas en un momento determinado.', 'Un robot Forex es un programa informático basado en un conjunto de señales de Trading de acciones que ayuda a definir si comprar o vender un par de divisas en un momento determinado.', 'Un robot Forex es un programa informático basado en un conjunto de señales de Trading de divisas que ayuda con el análisis fundamental', NULL, 1, '2020-11-20 00:30:32', '2020-11-20 00:30:32'),
(39, 6, 7, '¿De qué son capaces los robots Forex?', 'De escanear numerosos gráficos de una manera que los humanos físicamente no pueden.', 'De hacer compras de una manera que los humanos físicamente no pueden.', 'De hacer ventas de una manera que los humanos físicamente no pueden.', NULL, 1, '2020-11-20 00:31:59', '2020-11-20 00:31:59'),
(40, 6, 8, '¿En qué se basa un robot Forex?', 'En líneas de código escritas en forma de un lenguaje de programación específico.', 'En los deseos del trader', 'En líneas de venta escritas en forma de un lenguaje de programación específico.', NULL, 1, '2020-11-20 00:33:02', '2020-11-20 00:33:02'),
(41, 6, 9, '¿Qué tendrán que hacer los mejores robots Forex?', 'Tendrán que hacer paradas para lidiar con mercados inestables o cuando la tendencia no sea muy clara.', 'Tendrán que hacer ventas para lidiar con mercados inestables o cuando la tendencia no sea muy clara.', 'Tendrán que hacer compras para lidiar con mercados inestables o cuando la tendencia no sea muy clara.', NULL, 1, '2020-11-20 00:34:14', '2020-11-20 00:34:14'),
(42, 6, 10, '¿Cuál es la estrategia de seguimiento de tendencias?', 'Siguen tendencias en promedios móviles, desgloses de canales, movimientos de nivel de precios e indicadores técnicos', 'Se basa en el concepto de que los precios altos y bajos de un activo son un fenómeno temporal que regresa periódicamente a su valor promedio', 'Volúmen divide un pedido grande y libera al mercado porciones más pequeñas del activo utilizando perfiles de volumen histórico específicos de acciones o divisas', NULL, 1, '2020-11-20 00:35:14', '2020-11-20 00:35:14'),
(43, 7, 1, '¿A qué se le conoce como SPREAD?', 'A la diferencia entre la oferta y la demanda.', 'A la suma de la oferta y la demanda.', 'A la demanda.', NULL, 1, '2020-11-20 00:39:30', '2020-11-20 00:39:30'),
(44, 7, 2, '¿Cuáles son las 3 formas de entender su desempeño en los mercados?', 'Mente, Método y administración del dinero.', 'Método, Riesgo y administración.', 'Operación, Mente y Método.', NULL, 1, '2020-11-20 00:41:32', '2020-11-20 00:41:32'),
(45, 7, 3, '¿Qué es el Método?', 'Es la forma en la que se presentan las ideas de operación.', 'Es la forma en que se enfrenta el riesgo.', 'Es la forma en que elige los pares de divisas.', NULL, 1, '2020-11-20 00:43:39', '2020-11-20 00:43:39'),
(46, 7, 4, '¿Cuáles son dos de los factores principales para hacer negocios en el mercado de divisas?', 'La hora del día y cuando se publican los datos económicos.', 'El cierre de los mercados y las noticias', 'La apertura de los mercados y la hora del día.', NULL, 1, '2020-11-20 00:45:06', '2020-11-20 00:45:06'),
(47, 7, 5, '¿A qué se refiere el estilo Momentum?', 'Se trata de detectar una tendencia y luego tratar de ir a la parte posterior de esa secuencia', 'Se trata de abordar de inmediato una tendencia.', 'Se trata de vender en función de una tendencia.', NULL, 1, '2020-11-20 00:46:17', '2020-11-20 00:46:17'),
(48, 7, 6, '¿Qué es la media aritmética?', 'Es el valor obtenido al sumar todos los datos y dividir el resultado entre el número total de datos.', 'Es el valor obtenido de multiplicar los datos obtenidos.', 'Es el resultado de sumar y multiplicar los datos obtenidos.', NULL, 1, '2020-11-20 00:47:48', '2020-11-20 00:47:48'),
(49, 7, 7, '¿Qué indica desviación estándar?', 'Indica qué tan dispersos están los datos con respecto a la media. Mientras mayor sea la desviación estándar, mayor será la dispersión de los datos.', 'Indica qué tan dispersos están los datos con respecto al centro. Mientras menor sea la desviación estándar, mayor será la dispersión de los datos.', 'Indica qué tan iguales están los datos con respecto a la mediana. Mientras mayor sea la desviación estándar, mayor será la dispersión de los datos.', NULL, 1, '2020-11-20 00:48:53', '2020-11-20 00:48:53'),
(50, 7, 8, '¿Cuál es el objetivo principal del análisis econométrico?', 'Arrojar luz sobre el concepto y la aplicabilidad de las regresiones econométricas.', 'Arrojar luz sobre la suma de las regresiones econométricas.', 'Arrojar luz sobre el concepto y la aplicabilidad de las sumas econométricas.', NULL, 1, '2020-11-20 00:49:57', '2020-11-20 00:49:57'),
(51, 7, 9, '¿Cuál es la función del modelo de valuación de activos?', 'Se trata de un modelo teórico basado en el equilibrio del mercado. Es decir, se presume que la oferta de activos financieros iguala a la demanda.', 'Se trata de un modelo teórico basado en el riesgo del mercado. Es decir, se presume que la oferta de activos financieros iguala al riesgo.', 'Se trata de un modelo comprobado basado en la suma del mercado. Es decir, se presume que la oferta de activos financieros iguala a la demanda.', NULL, 1, '2020-11-20 00:52:37', '2020-11-20 00:52:37'),
(52, 7, 10, '¿Cómo se calcula la relación precio-ganancia?', 'La relación precio-ganancia se calcula tomando el precio de mercado de las acciones de una empresa determinada y dividiéndolo por la cifra de utilidades del último trimestre.', 'La relación precio-ganancia se calcula tomando el precio de mercado de las acciones de una empresa determinada y multiplicándolo por la cifra de utilidades del último trimestre.', 'La relación precio-ganancia se calcula tomando el precio de mercado de las acciones de una empresa determinada y sumándolo por la cifra de utilidades del último trimestre.', NULL, 1, '2020-11-20 00:53:38', '2020-11-20 00:53:38'),
(53, 8, 1, '¿Qué son las finanzas conductuales?', 'Las finanzas conductuales representan una intersección de las finanzas económicas por un lado y la psicología por el otro. Es una mezcla de finanzas y psicología', 'Las finanzas conductuales representan una intersección de los riesgos del mercado por un lado y la economía por el otro.', 'Las finanzas conductuales representan una mezcla de las finanzas de riesgo por un lado y la psicología por el otro.', NULL, 1, '2020-11-20 01:01:05', '2020-11-20 01:01:05'),
(54, 8, 2, '¿Qué nos dice la teoría financiera estándar?', 'La Teoría Financiera Estándar dice que los rendimientos son impredecibles, a este concepto lo llamamos Teoría de la Aleatoriedad', 'La Teoría Financiera Estándar dice que los riesgos son impredecibles, a este concepto lo llamamos Teoría de la Aleatoriedad', 'La Teoría Financiera Estándar dice que las divisas son impredecibles, a este concepto lo llamamos Teoría de la Aleatoriedad', NULL, 1, '2020-11-20 01:03:12', '2020-11-20 01:03:12'),
(55, 8, 3, '¿Cuál es la segunda anomalía de los mercados?', 'La segunda anomalía es: Reversiones, Autocorrelación Negativa. Los movimientos del mercado de hoy son lo opuesto a los movimientos del mercado de ayer. En el mercado financiero tenemos tanto el impulso como las reversiones.', 'La segunda anomalía es: Riesgo, correlación Negativa. Los movimientos del mercado de hoy son lo opuesto a los movimientos del mercado de ayer. En el mercado financiero tenemos tanto el impulso como las reversiones.', 'La segunda anomalía es: Riesgo, reversiones. Los movimientos del mercado de hoy son lo opuesto a los movimientos del mercado de ayer. En el mercado financiero tenemos tanto el impulso como las reversiones.', NULL, 1, '2020-11-20 01:04:35', '2020-11-20 01:04:35'),
(56, 8, 4, '¿Por qué se tiene tanto impulso como reversión en un mismo mercado?', 'Es porque ocurren en diferentes horizontes de tiempo', 'Es porque ocurren al mismo tiempo.', 'Es porque operas con diferentes instrumentos.', NULL, 1, '2020-11-20 01:05:41', '2020-11-20 01:05:41'),
(57, 8, 5, '¿Qué son las burbujas?', 'Llamamos burbuja a un gran movimiento sostenido, que persiste por un tiempo y luego se revierte casi completamente', 'Llamamos burbuja a un gran movimiento de reversión, que persiste por un tiempo y luego se completa .', 'Llamamos burbuja a una gran operación de riesgo sostenido, que persiste por un tiempo y luego se revierte.', NULL, 1, '2020-11-20 01:06:52', '2020-11-20 01:06:52'),
(58, 8, 6, '¿Qué es la anomalía de calendario?', 'Si entras en el mercado de valores en octubre y mantienes tu posición hasta mayo, es probable que obtengas un rendimiento positivo en promedio, por lo que es posible que ganes dinero. Pero entre junio y septiembre es más probable que pierdas dinero en el mercado de valores, lo que se llama el efecto de Halloween.', 'Si entras en el mercado de valores en enero y mantienes tu posición hasta junio, es probable que obtengas un rendimiento positivo en promedio, por lo que es posible que ganes dinero. Pero entre octubre y diciembre es más probable que pierdas dinero en el mercado de valores, lo que se llama el efecto de Halloween.', 'Si entras en el mercado de valores en mayo y mantienes tu posición hasta septiembre, es probable que obtengas un rendimiento positivo en promedio, por lo que es posible que ganes dinero. Pero entre junio y diciembre es más probable que pierdas dinero en el mercado de valores, lo que se llama el efecto de Halloween.', NULL, 1, '2020-11-20 01:08:20', '2020-11-20 01:08:20'),
(59, 8, 7, '¿Qué es el efecto de disposición?', 'La tendencia de los inversionistas a mantener las acciones perdedoras demasiado tiempo y vender las acciones ganadoras demasiado pronto', 'La tendencia de los inversionistas a mantener las acciones ganadoras demasiado tiempo y vender las acciones perdedoras demasiado pronto', 'La tendencia de los inversionistas a vender las acciones perdedoras demasiado rápido y mantener las acciones ganadoras demasiado tiempo.', NULL, 1, '2020-11-20 01:09:31', '2020-11-20 01:09:31'),
(60, 8, 8, '¿Qué es el exceso de confianza en los mercados?', 'Se define como la sobreestimación de la exactitud y la precisión de la información privada, la opinión o las creencias personales de uno', 'Se define como la inexperiencia y la precisión de la información privada, la opinión o las creencias personales de uno', 'Se define como la inexperiencia y confianza de la información privada, la opinión o las creencias personales de uno', NULL, 1, '2020-11-20 01:11:00', '2020-11-20 01:11:00'),
(61, 8, 9, '¿Qué es el sesgo de representatividad?', 'Cómo la tendencia humana a abrumarse por las observaciones más recientes e importantes.', 'Cómo la tendencia humana a alegrarse por las observaciones más recientes e importantes.', 'Cómo la tendencia humana a confiarse por las observaciones más recientes e importantes.', NULL, 1, '2020-11-20 01:12:41', '2020-11-20 01:12:41'),
(62, 8, 10, '¿Cuál fue la respuesta de los mercados a los ataques terroristas del 9/11?', 'El mercado bajó bruscamente.', 'El mercado subió bruscamente.', 'El mercado se mantuvo igual.', NULL, 1, '2020-11-20 01:14:09', '2020-11-20 01:14:09'),
(63, 2, 3, '¿Cómo se puede proteger la riqueza en tiempos de crisis?', 'Logrando diversificar su cartera y creando un plan de inversión estructurado.', 'Vendiendo todos sus activos.', 'Dejar que pase el tiempo.', NULL, 1, '2020-11-20 01:18:47', '2020-11-20 01:18:47'),
(64, 2, 4, '¿Qué es el riesgo?', 'Valentía y confianza.', 'Ambigüedad e incertidumbre.', 'Tranquilidad.', NULL, 2, '2020-11-20 01:19:58', '2020-11-20 01:19:58'),
(65, 2, 5, '¿Cómo se clasifica el riego?', 'Sistemático y No sistemático.', 'Alto y bajo.', 'Fuerte y débil.', NULL, 1, '2020-11-20 01:21:20', '2020-11-20 01:21:20'),
(66, 2, 6, '¿Cuáles son las características que hacen tan importante al oro?', 'Raro, casi indestructible y maleable.', 'Escaso, brillante y de alto valor.', 'Pesado, maleable y escaso.', NULL, 1, '2020-11-20 01:22:22', '2020-11-20 01:22:22'),
(67, 2, 7, '¿Cuáles son los tipos de bancos que existen?', 'Banco común, Banco de proyectos.', 'Banco del estado, Banco de proyectos.', 'Banco Central, Bancos comerciales y Bancos de inversión.', NULL, 3, '2020-11-20 01:23:55', '2020-11-20 01:23:55'),
(68, 2, 8, '¿Qué es la banca de reserva fraccional?', 'Mantener una fracción del dinero operado como garantía para los ahorradores.', 'Fraccionar el dinero de los ahorradores.', 'Ser garante de los ahorradores.', NULL, 1, '2020-11-20 01:27:31', '2020-11-20 01:27:31'),
(69, 2, 9, '¿Qué es lo más importante de un plan de inversión?', 'Es obtener información detallada sobre el activo en el que está a punto de invertir.', 'Comprar activos de forma rápida.', 'Comprar activos a bajo precio.', NULL, 1, '2020-11-20 01:28:43', '2020-11-20 01:28:43'),
(70, 2, 10, '¿Qué es una moneda FIAT?', 'Una moneda controlada por el gobierno.', 'Una moneda digital.', 'Una moneda híbrida.', NULL, 1, '2020-11-20 01:30:06', '2020-11-20 01:30:06'),
(71, 9, 1, '¿Cuáles son tres de las principales razones para operar en el mercado de divisas?', 'Opera las 24 horas, alta liquidez, apalancamiento', 'Apalancamiento, altas comisiones, riesgo', 'Altas comisiones, operaciones de largo, riesgo', NULL, 1, '2020-11-20 01:32:30', '2020-11-20 01:32:30'),
(72, 9, 2, '¿A qué se refiere el término “ir de largo” en el mercado de divisas?', 'Es un término usado para indicar que en este caso estamos comprando el par.', 'Significa que estamos vendiendo algo que no hemos comprado anteriormente.', 'Se refiere al alto apalancamiento.', NULL, 1, '2020-11-20 01:33:24', '2020-11-20 01:33:24'),
(73, 9, 3, '¿Por qué las monedas siempre se negocian en \"pares\"?', 'Porque necesitas otra divisa con la que intercambiar.', 'Para ganar más en el mercado.', NULL, NULL, 1, '2020-11-20 01:34:20', '2020-11-20 01:34:20'),
(74, 9, 4, '¿Qué es un PIP?', 'Es una unidad que representa la cantidad más pequeña por la que un par de divisas puede desplazarse en una dirección o en la otra.', 'Es un par de divisas.', 'Una estrategia de mercado.', NULL, 1, '2020-11-20 01:35:24', '2020-11-20 01:35:24'),
(75, 9, 5, '¿De hasta cuántas veces puede ser el apalancamiento?', 'De hasta 100 veces.', 'De hasta 200 veces.', 'De hasta 10 veces', NULL, 1, '2020-11-20 01:36:33', '2020-11-20 01:36:33'),
(76, 9, 6, '¿Cuál es una de las consideraciones más importantes a tomar en cuenta en el mercado de divisas?', 'Las principales noticias y datos generalmente afectarán al USD, la GBP y el EUR', 'Solo observar el JPY', 'Ignorar las correlaciones de moneda', NULL, 1, '2020-11-20 01:37:30', '2020-11-20 01:37:30'),
(77, 9, 7, '¿Qué es el riesgo operativo?', 'Es la cantidad de dinero que está dispuesto a perder en relación con lo que está tratando de ganar con su operación.', 'Es la cantidad de dinero que está dispuesto a ganar en relación con lo que está tratando de perder con su operación.', 'Es el precio por el que se compra un par de divisas.', NULL, 1, '2020-11-20 01:38:17', '2020-11-20 01:38:17'),
(78, 9, 8, '¿Cuáles son dos de las formas de gestionar el riesgo en el mercado de divisas?', 'Usando las ratios adecuados / aplicando paradas.', 'Comprando a altos precios / aplicando paradas.', 'Porcentaje de la cuenta / comprando a altos precios.', NULL, 1, '2020-11-20 01:39:13', '2020-11-20 01:39:13'),
(79, 9, 9, '¿Por qué son buenos los stops o paradas?', 'Son buenos por su capacidad de protegerte de perder más cuando una situación se sale de control.', 'Para conseguir mejores precios por cada par de divisas.', 'Para aumentar el nivel de riesgo de operación.', NULL, 1, '2020-11-20 01:40:07', '2020-11-20 01:40:07'),
(80, 9, 10, '¿Qué son las velas en el mercado de divisas?', 'La forma más fiable de interpretar los datos técnicos, porque cada vela tiene cinco piezas de información.', 'Son gráficos simples e inútiles.', 'Son estrategias de mercado.', NULL, 1, '2020-11-20 01:41:25', '2020-11-20 01:41:25'),
(81, 10, 1, '¿Qué incluye el indicador S&P 500?', 'Las 500 empresas más valiosas de Estados unidos.', 'Empresas del mundo.', 'Información financiera variada.', NULL, 1, '2020-11-20 01:44:18', '2020-11-20 01:44:18'),
(82, 10, 2, '¿Cuáles son tres de los instrumentos utilizados en el análisis PESTEL?', 'Político, económico y legal.', 'Ambiental, económico y contable.', 'Político, tecnológico y académico.', NULL, 1, '2020-11-20 01:45:24', '2020-11-20 01:45:24'),
(83, 10, 3, '¿De cuáles partes se compone un estado financiero?', 'Estado de resultados, hojas de balance y estado de flujos de efectivo.', 'Hojas de balance y estado de resultados.', 'Estado de resultados y flujos de efectivo', NULL, 1, '2020-11-20 01:46:23', '2020-11-20 01:46:23'),
(84, 10, 4, '¿Qué es lo que mide un índice de liquidez?', 'La capacidad de una empresa para reaccionar si enfrenta una necesidad de efectivo o si tiene que emitir deuda.', 'Los activos de la empresa', 'Los ingresos de la empresa.', NULL, 1, '2020-11-20 01:47:19', '2020-11-20 01:47:19'),
(85, 10, 5, '¿Qué datos requiere el análisis Dupont?', 'Ventas, beneficio neto, activos y nivel de endeudamiento.', 'Flujo de efectivo y cartera de clientes.', 'Deudas de la empresa y sus proveedores.', NULL, 1, '2020-11-20 01:48:19', '2020-11-20 01:48:19'),
(86, 10, 6, '¿Qué significa que una criptomoneda pueda ser minada?', 'Que muchas de las monedas de un criptograma permanecen ocultas hasta ser descubiertas o descifradas.', 'Que se puede reducir en valor.', 'Que pueden ser compradas en cualquier institución financiera.', NULL, 1, '2020-11-20 01:49:38', '2020-11-20 01:49:38'),
(87, 10, 7, '¿Cuáles son tres clases posibles de riesgo?', 'Riesgo de información, riesgo financiero, riesgo político.', 'Riesgo contable, riesgo ambiental, riesgo político.', 'Riesgo económico, riesgo financiero, riesgo ambiental.', NULL, 1, '2020-11-20 01:50:56', '2020-11-20 01:50:56'),
(88, 10, 8, '¿Qué eventos pueden aparecer en el riesgo diversificable?', 'Huelgas, demandas o pérdida de clientes.', 'Desastres naturales, demandas, falta de liquidez.', 'Falta de liquidez, huelgas o desastres naturales.', NULL, 1, '2020-11-20 01:51:45', '2020-11-20 01:51:45'),
(89, 10, 9, '¿Cuáles son los dos aspectos del riesgo?', 'Riesgo cuantitativo y psicológico.', 'Riesgo cualitativo y psicológico.', 'Riesgo financiero y psicológico.', NULL, 1, '2020-11-20 01:52:51', '2020-11-20 01:52:51'),
(90, 10, 10, '¿Cuál es el razonamiento más usado?', 'El razonamiento normativo.', 'El razonamiento financiero.', 'El razonamiento psicológico.', NULL, 1, '2020-11-20 01:53:59', '2020-11-20 01:53:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `comment` text,
  `points` int NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes_sociales`
--

CREATE TABLE `redes_sociales` (
  `id` int NOT NULL,
  `link` text NOT NULL,
  `tipo` int DEFAULT NULL COMMENT '1- glyphicon 2-imagen',
  `imagen` text NOT NULL,
  `color` varchar(250) DEFAULT NULL,
  `nombre` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `redes_sociales`
--

INSERT INTO `redes_sociales` (`id`, `link`, `tipo`, `imagen`, `color`, `nombre`, `updated_at`) VALUES
(4, 'https://twitter.com/intent/tweet?text=https%3A//mybusinessacademypro.com/academia/', 1, 'fab fa-twitter', 'ADD8E6', 'twitter', '2020-11-10 11:25:25'),
(2, 'https://web.whatsapp.com/', 1, 'fab fa-whatsapp', '00a65a', 'whatsapp', '2020-09-21 21:15:51'),
(3, 'https://www.facebook.com/sharer/sharer.php?u=https%3A//mybusinessacademypro.com/academia/', 1, 'fab fa-facebook-f', '3c8dbc', 'Facebook', '2020-11-10 11:24:08'),
(13, 'https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fmybusinessacademypro.com%2Facademia%2F', 1, 'fab fa-linkedin', '007bb5', 'Linkedin', '2020-11-10 11:29:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resources`
--

CREATE TABLE `resources` (
  `id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `resources`
--

INSERT INTO `resources` (`id`, `title`, `icon`, `status`) VALUES
(1, 'Configuración', 'settings.svg', '1'),
(2, 'Participantes', 'person.svg', '1'),
(3, 'Chat', 'comment.svg', '1'),
(4, 'Encuesta', 'lista.svg', '1'),
(5, 'Presentación', 'presentacion.svg', '1'),
(6, 'Vídeo', 'video.svg', '1'),
(7, 'Archivos', 'documentos.svg', '1'),
(8, 'Ofertas', 'descuento.svg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referidos` int DEFAULT '0',
  `refeact` int DEFAULT '0',
  `referidosd` int DEFAULT NULL,
  `referidosInd` int DEFAULT NULL,
  `compras` float DEFAULT '0',
  `grupal` float DEFAULT NULL COMMENT 'puntos grupales',
  `comisiones` float DEFAULT '0',
  `bonos` float DEFAULT '0',
  `niveles` int DEFAULT '0',
  `rolprevio` int DEFAULT NULL,
  `acepta_comision` tinyint(1) DEFAULT '1',
  `rolnecesario` int DEFAULT NULL,
  `rolnecesariocant` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `referidos`, `refeact`, `referidosd`, `referidosInd`, `compras`, `grupal`, `comisiones`, `bonos`, `niveles`, `rolprevio`, `acepta_comision`, `rolnecesario`, `rolnecesariocant`, `created_at`, `updated_at`) VALUES
(0, 'administrador', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(1, 'moderador', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(2, 'mentor', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(3, 'cliente', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE `schedule` (
  `id` int UNSIGNED NOT NULL,
  `event_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad`
--

CREATE TABLE `seguridad` (
  `id` int NOT NULL,
  `titulo` text,
  `contenido` longtext,
  `concepto` text,
  `tipo` int DEFAULT '1' COMMENT '1 - una ves al dia 2 - siempre 3 - cada treinta dias ',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seguridad`
--

INSERT INTO `seguridad` (`id`, `titulo`, `contenido`, `concepto`, `tipo`, `status`, `updated_at`) VALUES
(1, NULL, 'hola @nombre @correo le hemos enviado un codigo de seguridad para verificar que es usted su codigo es: @codigo', NULL, 1, 0, '2020-05-10 21:38:37'),
(2, 'Codigo Qr', NULL, 'Al activar el codigo Qr puede usar google autenticador, Authy o cualquier otra aplicacion para escanear los codigo qr este sera requerido al iniciar sesion\r\n', 1, 0, '2020-05-11 01:09:21'),
(3, 'Verificacion por correo', 'Hola @nombre @correo se a enviado un codigo para verificar que es usted su codigo es: @codigo', 'Se envia un codigo al correo el cual debera ingresar al iniciar sesion ', 1, 0, '2020-05-11 02:17:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semiautobinario`
--

CREATE TABLE `semiautobinario` (
  `id` int NOT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `idcomision` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `status` varchar(2) NOT NULL DEFAULT '0',
  `lado` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesions`
--

CREATE TABLE `sesions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `fecha` date NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sesions`
--

INSERT INTO `sesions` (`id`, `user_id`, `fecha`, `ip`, `actividad`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 3, '2020-03-26', '190.25.37.181', 'Inicio Sesion', NULL, '2020-03-26 22:07:03', '2020-03-26 22:07:03'),
(3, 1, '2020-03-26', '190.25.37.181', 'Inicio Sesion', NULL, '2020-03-27 00:15:00', '2020-03-27 00:15:00'),
(4, 1, '2020-04-11', '186.85.41.22', 'Inicio Sesion', NULL, '2020-04-11 21:56:09', '2020-04-11 21:56:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingactivacion`
--

CREATE TABLE `settingactivacion` (
  `id` int NOT NULL,
  `tipoactivacion` tinyint NOT NULL DEFAULT '0' COMMENT '1 - producto, 2 - dinero',
  `tiporecompra` tinyint DEFAULT '0' COMMENT '1 - producto, 2 - dinero',
  `requisitoactivacion` float NOT NULL,
  `requisitorecompra` float DEFAULT NULL,
  `desativar_usuarios` tinyint DEFAULT NULL COMMENT '0 - desactivar a fin de mes, 1 - desctivar despues de haber cumplido un mes en el sistema ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingactivacion`
--

INSERT INTO `settingactivacion` (`id`, `tipoactivacion`, `tiporecompra`, `requisitoactivacion`, `requisitorecompra`, `desativar_usuarios`, `updated_at`) VALUES
(1, 2, 0, 0, NULL, NULL, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingcliente`
--

CREATE TABLE `settingcliente` (
  `id` int NOT NULL,
  `cliente` tinyint(1) NOT NULL,
  `permiso` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingcliente`
--

INSERT INTO `settingcliente` (`id`, `cliente`, `permiso`, `updated_at`) VALUES
(1, 0, 0, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingcomision`
--

CREATE TABLE `settingcomision` (
  `id` int NOT NULL,
  `niveles` int NOT NULL,
  `tipocomision` varchar(200) NOT NULL,
  `valorgeneral` float NOT NULL,
  `valordetallado` text NOT NULL,
  `tipopago` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipotransferencia` tinyint(1) DEFAULT NULL COMMENT '0 - monto fijo 1 - monto por porcentaje',
  `comisiontransf` float DEFAULT NULL COMMENT 'esta es para el metodo de pago, es la comision por transferencia de dinero en la billetera',
  `bonoactivacion` longtext,
  `directos` tinyint(1) DEFAULT '1' COMMENT 'si solo los directos aceptan el bono de activacion',
  `tipobono` varchar(50) DEFAULT NULL,
  `primera_compra` tinyint(1) DEFAULT '1',
  `activacioncomision` tinyint(1) DEFAULT NULL COMMENT '1 - cobrar comision desde la fecha de activacion, 2 - cobrar comision desde inicio del mes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingcomision`
--

INSERT INTO `settingcomision` (`id`, `niveles`, `tipocomision`, `valorgeneral`, `valordetallado`, `tipopago`, `updated_at`, `tipotransferencia`, `comisiontransf`, `bonoactivacion`, `directos`, `tipobono`, `primera_compra`, `activacioncomision`) VALUES
(1, 5, 'producto', 0, '[{\"idproductos\":12,\"comisiones\":[{\"nivel\":1,\"comision\":170},{\"nivel\":2,\"comision\":10},{\"nivel\":3,\"comision\":10},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]},{\"idproductos\":28,\"comisiones\":[{\"nivel\":1,\"comision\":250},{\"nivel\":2,\"comision\":10},{\"nivel\":3,\"comision\":10},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]},{\"idproductos\":29,\"comisiones\":[{\"nivel\":1,\"comision\":0},{\"nivel\":2,\"comision\":0},{\"nivel\":3,\"comision\":0},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]}]', 'normal', '2020-03-26 21:47:34', NULL, NULL, '[{\"producto\":\"12\",\"bono\":\"170\",\"tipobono\":\"fijo\"},{\"producto\":\"600\",\"bono\":\"250\",\"tipobono\":\"fijo\"}]', 1, 'fijo', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingpagos`
--

CREATE TABLE `settingpagos` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `feed` float NOT NULL,
  `monto_min` float DEFAULT '0',
  `tipofeed` tinyint(1) NOT NULL COMMENT '0 - monto fijo 1 - porcentaje',
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `correo` tinyint(1) DEFAULT '0',
  `wallet` tinyint(1) DEFAULT '0',
  `datosbancarios` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingpermiso`
--

CREATE TABLE `settingpermiso` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `nameuser` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cursos` tinyint NOT NULL,
  `nuevo_registro` tinyint DEFAULT '0',
  `red_usuario` tinyint DEFAULT '0',
  `vision_usuario` tinyint DEFAULT '0',
  `billetera` tinyint DEFAULT '0',
  `pago` tinyint DEFAULT '0',
  `informes` tinyint DEFAULT '0',
  `tickets` tinyint DEFAULT '0',
  `buzon` tinyint DEFAULT '0',
  `ranking` tinyint DEFAULT '0',
  `historial_actividades` tinyint DEFAULT '0',
  `email_marketing` tinyint DEFAULT '0',
  `administrar_redes` tinyint DEFAULT '0',
  `soporte` tinyint DEFAULT '0',
  `ajuste` tinyint DEFAULT '0',
  `herramienta` tinyint DEFAULT '0',
  `calendario` tinyint DEFAULT '0',
  `correos` tinyint DEFAULT '0',
  `prospeccion` tinyint DEFAULT '0',
  `puntos` tinyint DEFAULT '0',
  `binario` tinyint DEFAULT '0',
  `usuario` tinyint DEFAULT '0',
  `tienda` tinyint DEFAULT '0',
  `transacciones` tinyint DEFAULT '0',
  `usuarios` tinyint DEFAULT '0',
  `red` tinyint DEFAULT '0',
  `eventos` tinyint DEFAULT '0',
  `banners` tinyint(1) NOT NULL DEFAULT '0',
  `entradas` tinyint DEFAULT '0',
  `historialcomision` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingpermiso`
--

INSERT INTO `settingpermiso` (`id`, `iduser`, `nameuser`, `cursos`, `nuevo_registro`, `red_usuario`, `vision_usuario`, `billetera`, `pago`, `informes`, `tickets`, `buzon`, `ranking`, `historial_actividades`, `email_marketing`, `administrar_redes`, `soporte`, `ajuste`, `herramienta`, `calendario`, `correos`, `prospeccion`, `puntos`, `binario`, `usuario`, `tienda`, `transacciones`, `usuarios`, `red`, `eventos`, `banners`, `entradas`, `historialcomision`, `updated_at`) VALUES
(1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-03-26 20:49:07'),
(10088, 10096, 'Genaro', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-11-11 13:07:57'),
(10087, 10094, 'pro', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-11-03 18:11:57'),
(10086, 10093, 'avanzado', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-11-03 18:10:38'),
(10085, 10092, 'intermedio', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-11-03 18:09:46'),
(10084, 10091, 'basico', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-11-03 18:08:56'),
(10083, 10090, 'principiante', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-11-03 18:08:09'),
(10082, 10088, 'AK08521 Alexis Valera', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-29 15:15:13'),
(10081, 10087, 'referido2sinergia', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-24 15:31:34'),
(10080, 10086, 'referidosinergia', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-24 15:28:57'),
(10079, 10082, 'caslo', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-21 06:30:09'),
(10078, 10081, 'freddy', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-20 17:37:21'),
(10077, 10079, 'tes1000', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-20 15:33:03'),
(10076, 10077, 'prueba cliente', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-20 10:31:26'),
(10075, 10076, 'luisana', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-10-20 08:15:42'),
(10089, 10099, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-11-25 08:21:57'),
(10090, 10101, 'Yanira', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-09 08:45:20'),
(10091, 10102, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-09 09:52:50'),
(10092, 10103, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-09 09:53:48'),
(10093, 10104, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-09 09:54:35'),
(10094, 10105, 'Soporte', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-10 13:57:22'),
(10095, 10106, 'juanita', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-10 19:48:39'),
(10096, 10107, 'Mercedes', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-11 12:17:41'),
(10097, 10108, 'Alejandra100', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-11 13:54:45'),
(10098, 10109, 'AlexisValera95', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-14 05:18:59'),
(10099, 10110, 'Prueba', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-14 14:50:57'),
(10100, 10111, 'alejandra', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-14 15:36:37'),
(10101, 10112, 'es5000', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-14 16:13:35'),
(10102, 10113, 'tes900', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-14 18:49:03'),
(10103, 10114, 'Luz', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-16 12:53:36'),
(10104, 10115, 'Ser', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-16 13:05:58'),
(10105, 10116, 'Hacer', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-16 13:13:45'),
(10106, 10117, 'Tener', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-16 13:16:23'),
(10107, 10118, 'Transcender', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2020-12-16 13:17:43'),
(10108, 10119, 'pruebaregistro', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-08 16:24:37'),
(10109, 10120, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-11 19:42:11'),
(10110, 10121, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-11 19:42:35'),
(10111, 10125, 'preba5000', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-26 12:16:07'),
(10112, 10126, 'Luisana Marín', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-27 13:07:57'),
(10113, 10127, 'anel samano', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-28 16:57:51'),
(10114, 10128, '1', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-02-19 21:57:25'),
(10115, 10129, 'noemy aleman', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-02-26 17:21:16'),
(10116, 10130, 'pietropasqualis', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-02-27 10:16:12'),
(10117, 10131, 'fjms', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-03 08:04:38'),
(10118, 10133, 'noemy aleman', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-05 17:40:52'),
(10119, 10134, 'prueba123@gmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-08 06:36:09'),
(10120, 10135, 'luisanaelenamarin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-08 07:12:09'),
(10121, 10136, 'luisanaelenamarin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-08 07:16:57'),
(10122, 10137, 'luisanaelenamarin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-08 07:18:56'),
(10123, 10138, 'luisanaelenamarin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-08 07:21:55'),
(10124, 10139, 'luisanaelenamarin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-08 07:25:29'),
(10125, 10140, 'luisanaelenamarin@gmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-08 07:27:33'),
(10126, 10141, 'direccion@humancia.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-10 00:10:10'),
(10127, 10142, 'noemy@humancia.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-03-25 19:22:06'),
(10128, 10143, 'thorby_1@hotmail.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-04 18:26:10'),
(10129, 10144, 'cliente1@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-06 07:44:53'),
(10130, 10145, 'cliente2@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-06 07:49:06'),
(10131, 10146, 'cliente3@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-06 07:53:35'),
(10132, 10147, 'cliente4@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-06 07:59:19'),
(10133, 10148, 'cliente5@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-06 08:01:02'),
(10134, 10149, 'cliente6@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-06 08:04:09'),
(10135, 10150, 'parkkimberley@yahoo.co.uk', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-07 08:47:49'),
(10136, 10151, 'cliente7@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-07 12:13:49'),
(10137, 10152, 'cliente8@mybusinessacademypro.com', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-07 12:15:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingplantilla`
--

CREATE TABLE `settingplantilla` (
  `id` int NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `contenido` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingplantilla`
--

INSERT INTO `settingplantilla` (`id`, `titulo`, `contenido`, `updated_at`) VALUES
(1, 'Bienvenido', '<p>@nombre</p><p>@usuario</p><p>@idpatrocionio</p><p>@clave</p><p>@correo</p> <p>@Nafiliacion</p>', '2020-03-26 21:51:53'),
(2, 'Pagos', '<p>@nombrecompleto</p><p><span style=\"color: rgb(165, 42, 42);\">@correo</span></p><p><span style=\"color: rgb(165, 42, 42);\">@pago</span></p><p><span style=\"color: rgb(165, 42, 42);\">@usuario</span></p><p><span style=\"color: rgb(165, 42, 42);\">@idpatrocinio<br></span><br></p>', '2020-03-26 21:52:52'),
(3, 'Compra', '<p>@nombre</p><p>@correo</p><p>@datos</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:53:42'),
(4, 'Compra', '<p>@nombre</p><p>@correo</p><p>@datos</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:54:53'),
(5, 'Liquidación', '<p>@nombre</p><p>@correo</p><p>@datosbancarios</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:55:48'),
(6, NULL, NULL, '0000-00-00 00:00:00'),
(8, 'Evento Agendado', NULL, '2020-11-18 11:45:20'),
(9, 'Live esta apunto de iniciar', NULL, '2020-11-18 11:45:29'),
(10, 'El live a iniciado', NULL, '2020-11-18 11:45:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AIO System',
  `slogan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Uno para todo.',
  `name_styled` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'AIO <strong>System</strong>',
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_type` int DEFAULT NULL,
  `enable_register` tinyint(1) DEFAULT '1',
  `enable_auth_fb` tinyint(1) DEFAULT '0',
  `enable_auth_tw` tinyint(1) DEFAULT '0',
  `enable_auth_google` tinyint(1) DEFAULT '0',
  `version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.2.0',
  `keycode` int DEFAULT NULL,
  `logo` int DEFAULT '1',
  `rol_default` int DEFAULT '3',
  `status_web` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referred_id_default` int NOT NULL DEFAULT '1',
  `referred_level_max` int NOT NULL DEFAULT '5',
  `edad_minino` int NOT NULL COMMENT 'edad minimo para ingresar al sistema',
  `licencia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fecha_vencimiento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `prefijo_wp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no_comision` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `activarBotones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'permite activar los botones de transferencia, retiro, pago total y pago masivo',
  `activarCorreos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `firma` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `limitar` int NOT NULL DEFAULT '0',
  `traductor` int DEFAULT '0',
  `recarga` int NOT NULL DEFAULT '0',
  `canje` int NOT NULL DEFAULT '0',
  `total_canje` double DEFAULT NULL,
  `estilo` int DEFAULT '1',
  `posicionamiento` int DEFAULT '0',
  `btc` int NOT NULL DEFAULT '0',
  `paypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `scriptpaypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `htmlpaypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login` int NOT NULL DEFAULT '1',
  `registro` int NOT NULL DEFAULT '2',
  `colorfondo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fff',
  `cololetras` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '333'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `name`, `slogan`, `name_styled`, `company_name`, `company_email`, `site_email`, `description`, `category_type`, `enable_register`, `enable_auth_fb`, `enable_auth_tw`, `enable_auth_google`, `version`, `keycode`, `logo`, `rol_default`, `status_web`, `created_at`, `updated_at`, `referred_id_default`, `referred_level_max`, `edad_minino`, `licencia`, `fecha_vencimiento`, `prefijo_wp`, `id_no_comision`, `activarBotones`, `activarCorreos`, `firma`, `limitar`, `traductor`, `recarga`, `canje`, `total_canje`, `estilo`, `posicionamiento`, `btc`, `paypal`, `scriptpaypal`, `htmlpaypal`, `login`, `registro`, `colorfondo`, `cololetras`) VALUES
(1, 'My Business Academy Pro', '123456', 'My Busineess Academy Pro', NULL, NULL, 'soporte@shapinetwork.com', NULL, NULL, 1, 0, 0, 0, '0.2.0', NULL, 1, 3, 1, '2020-03-26 20:49:07', '2020-03-26 20:49:07', 1, 5, 18, 'TlRBM0lWSTVObGxFT1RSVkxETTNVRklzSXloU0t6TmdVaXN6S0ZjS1lBbz0=', 'MjAyMy0wNy0yOQ==', 'wp98_', '/assets/img/image_landing_1603228894.png', '{\"btn_transferencia\":1,\"btn_retiro\":1,\"btn_masivo\":1,\"btn_todo\":1,\"btn_liquida\":1,\"btn_monto\":1}', '{\"pago\":1,\"compra\":1,\"pc\":1,\"liquidacion\":1}', '<p>Empresa</p><p>Telefono</p><p>direccion</p>', 0, 0, 0, 0, NULL, 1, 1, 0, NULL, NULL, NULL, 2, 2, 'fff', '333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingsestructura`
--

CREATE TABLE `settingsestructura` (
  `id` int NOT NULL,
  `tipoestructura` varchar(50) NOT NULL,
  `cantnivel` int NOT NULL,
  `cantfilas` int DEFAULT NULL,
  `estructuraprincipal` tinyint(1) DEFAULT NULL COMMENT '1: arbol - 2: matriz',
  `usuarioprincipal` tinyint(1) DEFAULT NULL COMMENT '1: admin - 2:user',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingsestructura`
--

INSERT INTO `settingsestructura` (`id`, `tipoestructura`, `cantnivel`, `cantfilas`, `estructuraprincipal`, `usuarioprincipal`, `updated_at`) VALUES
(1, 'arbol', 5, 0, 0, 0, '2020-03-26 21:33:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingspuntos`
--

CREATE TABLE `settingspuntos` (
  `id` int NOT NULL,
  `configuracion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipopuntos` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setttingsroles`
--

CREATE TABLE `setttingsroles` (
  `id` int NOT NULL,
  `rangos` int NOT NULL,
  `compras` tinyint(1) DEFAULT '0',
  `comisiones` tinyint(1) DEFAULT '0',
  `niveles` tinyint(1) DEFAULT '0',
  `referidos` tinyint(1) DEFAULT '0',
  `referidosact` tinyint(1) DEFAULT '0',
  `referidosd` tinyint(1) DEFAULT '0',
  `referidosInd` tinyint(1) DEFAULT '0',
  `grupal` tinyint(1) DEFAULT '0' COMMENT 'puntos grupales',
  `valorpuntos` float DEFAULT NULL,
  `bonos` tinyint(1) DEFAULT '0',
  `rolnecesario` tinyint(1) DEFAULT '0',
  `reseteomensual` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `setttingsroles`
--

INSERT INTO `setttingsroles` (`id`, `rangos`, `compras`, `comisiones`, `niveles`, `referidos`, `referidosact`, `referidosd`, `referidosInd`, `grupal`, `valorpuntos`, `bonos`, `rolnecesario`, `reseteomensual`, `updated_at`) VALUES
(1, 2, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, '2020-03-26 21:50:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int NOT NULL,
  `user_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int DEFAULT NULL,
  `membership_id` int DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`, `course_id`, `membership_id`, `period`, `offer_id`, `date`, `created_at`, `updated_at`) VALUES
(231, '10108', NULL, 1, 'Mensual', NULL, '2020-12-11', '2020-12-11 15:55:10', '2020-12-11 15:55:10'),
(252, '190.75.231.87', NULL, 2, 'Mensual', NULL, '2020-12-14', '2020-12-14 16:08:02', '2020-12-14 16:08:02'),
(256, '10111', NULL, 1, 'Mensual', NULL, '2020-12-14', '2020-12-14 17:39:12', '2020-12-14 17:39:12'),
(268, '10112', NULL, 1, 'Mensual', NULL, '2020-12-14', '2020-12-14 18:34:36', '2020-12-14 18:34:36'),
(275, '10113', NULL, 4, 'Mensual', NULL, '2020-12-14', '2020-12-14 21:26:10', '2020-12-14 21:26:10'),
(276, '181.61.87.131', NULL, 3, 'Mensual', NULL, '2020-12-15', '2020-12-15 11:20:39', '2020-12-15 11:20:39'),
(283, '190.200.126.167', NULL, 1, 'Mensual', NULL, '2020-12-17', '2020-12-17 12:12:56', '2020-12-17 12:12:56'),
(285, '186.30.159.117', NULL, 3, 'Mensual', NULL, '2020-12-17', '2020-12-17 12:22:17', '2020-12-17 12:22:17'),
(287, '10109', NULL, 3, 'Mensual', NULL, '2020-12-17', '2020-12-17 14:29:14', '2020-12-17 14:29:14'),
(290, '190.207.104.112', NULL, 1, 'Mensual', NULL, '2020-12-18', '2020-12-18 09:47:44', '2020-12-18 09:47:44'),
(291, '186.154.3.49', NULL, 1, 'Mensual', NULL, '2020-12-18', '2020-12-18 11:41:33', '2020-12-18 11:41:33'),
(292, '10086', NULL, 1, 'Mensual', NULL, '2020-12-23', '2020-12-23 18:19:44', '2020-12-23 18:19:44'),
(301, '10090', NULL, 4, 'Mensual', NULL, '2020-12-28', '2020-12-28 18:38:36', '2020-12-28 18:38:36'),
(303, '10114', NULL, 2, 'Mensual', NULL, '2020-12-29', '2020-12-29 18:00:41', '2020-12-29 18:00:41'),
(304, '10076', NULL, 4, 'Anual', NULL, '2020-12-30', '2020-12-30 11:58:41', '2020-12-30 11:58:41'),
(309, '171.51.145.154', NULL, 1, 'Anual', NULL, '2020-12-30', '2020-12-30 15:45:25', '2020-12-30 15:45:25'),
(311, '66.249.66.73', NULL, 3, 'Anual', NULL, '2021-01-12', '2021-01-12 03:05:30', '2021-01-12 03:05:30'),
(316, '66.249.76.105', NULL, 4, 'Mensual', NULL, '2021-01-12', '2021-01-12 09:24:20', '2021-01-12 09:24:20'),
(318, '66.249.76.103', NULL, 2, 'Anual', NULL, '2021-01-12', '2021-01-12 11:55:59', '2021-01-12 11:55:59'),
(323, '10115', NULL, 3, 'Mensual', NULL, '2021-01-14', '2021-01-14 19:43:29', '2021-01-14 19:43:29'),
(331, '13.66.139.6', NULL, 4, 'Mensual', NULL, '2021-01-18', '2021-01-18 18:13:23', '2021-01-18 18:13:23'),
(332, '13.66.139.90', NULL, 1, 'Mensual', NULL, '2021-01-18', '2021-01-18 19:22:36', '2021-01-18 19:22:36'),
(336, '13.66.139.39', NULL, 4, 'Mensual', NULL, '2021-01-25', '2021-01-25 10:36:11', '2021-01-25 10:36:11'),
(341, '10126', NULL, 2, 'Mensual', NULL, '2021-01-27', '2021-01-27 15:28:19', '2021-01-27 15:28:19'),
(343, '10127', NULL, 1, 'Mensual', NULL, '2021-01-28', '2021-01-28 19:07:21', '2021-01-28 19:07:21'),
(344, '13.66.139.73', NULL, 2, 'Anual', NULL, '2021-01-29', '2021-01-29 04:58:21', '2021-01-29 04:58:21'),
(346, '187.190.197.6', NULL, 1, 'Anual', NULL, '2021-01-29', '2021-01-29 14:54:44', '2021-01-29 14:54:44'),
(347, '189.169.170.107', NULL, 1, 'Mensual', NULL, '2021-01-30', '2021-01-30 15:34:33', '2021-01-30 15:34:33'),
(362, '10073', NULL, 1, 'Mensual', NULL, '2021-02-07', '2021-02-07 13:37:22', '2021-02-07 13:37:22'),
(363, '13.66.139.83', NULL, 3, 'Mensual', NULL, '2021-02-08', '2021-02-08 17:56:39', '2021-02-08 17:56:39'),
(389, '10118', NULL, 4, 'Anual', NULL, '2021-02-09', '2021-02-09 10:31:33', '2021-02-09 10:31:33'),
(390, '10117', NULL, 3, 'Mensual', NULL, '2021-02-09', '2021-02-09 13:52:29', '2021-02-09 13:52:29'),
(393, '13.66.139.2', NULL, 1, 'Mensual', NULL, '2021-02-18', '2021-02-18 08:03:13', '2021-02-18 08:03:13'),
(397, '10128', NULL, 1, 'Mensual', NULL, '2021-02-19', '2021-02-19 23:55:57', '2021-02-19 23:57:26'),
(403, '177.241.43.66', NULL, 1, 'Mensual', NULL, '2021-02-22', '2021-02-22 17:48:56', '2021-02-22 17:48:56'),
(404, '157.55.39.86', NULL, 3, 'Anual', NULL, '2021-02-22', '2021-02-22 20:32:10', '2021-02-22 20:32:10'),
(405, '179.33.164.199', NULL, 1, 'Mensual', NULL, '2021-02-23', '2021-02-23 14:05:44', '2021-02-23 14:05:44'),
(406, '13.66.139.81', NULL, 3, 'Mensual', NULL, '2021-02-24', '2021-02-24 16:08:33', '2021-02-24 16:08:33'),
(407, '13.66.139.140', NULL, 2, 'Anual', NULL, '2021-02-25', '2021-02-25 07:54:43', '2021-02-25 07:54:43'),
(411, '186.95.183.50', NULL, 1, 'Mensual', NULL, '2021-02-27', '2021-02-27 12:41:52', '2021-02-27 12:41:52'),
(412, '13.66.139.56', NULL, 2, 'Mensual', NULL, '2021-03-01', '2021-03-01 13:17:50', '2021-03-01 13:17:50'),
(422, '177.241.41.162', NULL, 3, 'Mensual', NULL, '2021-03-05', '2021-03-05 21:52:22', '2021-03-05 21:52:22'),
(426, '13.66.139.104', NULL, 3, 'Mensual', NULL, '2021-03-09', '2021-03-09 00:15:00', '2021-03-09 00:15:00'),
(427, '157.55.39.188', NULL, 4, 'Anual', NULL, '2021-03-10', '2021-03-10 09:41:06', '2021-03-10 09:41:06'),
(431, '157.55.39.106', NULL, 1, 'Mensual', NULL, '2021-03-12', '2021-03-12 03:48:08', '2021-03-12 03:48:08'),
(433, '13.66.139.122', NULL, 1, 'Mensual', NULL, '2021-03-12', '2021-03-12 17:01:12', '2021-03-12 17:01:12'),
(435, '54.36.149.85', NULL, 4, 'Anual', NULL, '2021-03-13', '2021-03-13 14:03:51', '2021-03-13 14:03:51'),
(437, '54.36.148.142', NULL, 1, 'Anual', NULL, '2021-03-13', '2021-03-13 23:20:48', '2021-03-13 23:20:48'),
(438, '54.36.148.41', NULL, 1, 'Mensual', NULL, '2021-03-14', '2021-03-14 03:03:33', '2021-03-14 03:03:33'),
(439, '13.66.139.121', NULL, 4, 'Mensual', NULL, '2021-03-15', '2021-03-15 00:12:25', '2021-03-15 00:12:25'),
(440, '13.66.139.152', NULL, 2, 'Mensual', NULL, '2021-03-15', '2021-03-15 23:03:05', '2021-03-15 23:03:05'),
(443, '40.77.167.75', NULL, 1, 'Anual', NULL, '2021-03-28', '2021-03-28 08:25:06', '2021-03-28 08:25:06'),
(444, '54.36.148.136', NULL, 2, 'Anual', NULL, '2021-03-31', '2021-03-31 12:48:09', '2021-03-31 12:48:09'),
(448, '13.66.139.97', NULL, 2, 'Anual', NULL, '2021-04-05', '2021-04-05 23:13:49', '2021-04-05 23:13:49'),
(449, '207.46.13.21', NULL, 4, 'Anual', NULL, '2021-04-06', '2021-04-06 00:27:16', '2021-04-06 00:27:16'),
(450, '54.36.148.71', NULL, 3, 'Mensual', NULL, '2021-04-06', '2021-04-06 14:01:17', '2021-04-06 14:01:17'),
(455, '1', NULL, 1, 'Mensual', NULL, '2021-04-07', '2021-04-07 08:06:04', '2021-04-07 08:06:04'),
(456, '54.36.148.37', NULL, 1, 'Anual', NULL, '2021-04-07', '2021-04-07 19:07:06', '2021-04-07 19:07:06'),
(457, '13.66.139.14', NULL, 3, 'Anual', NULL, '2021-04-07', '2021-04-07 19:27:41', '2021-04-07 19:27:41'),
(458, '40.77.167.83', NULL, 1, 'Mensual', NULL, '2021-04-07', '2021-04-07 21:52:43', '2021-04-07 21:52:43'),
(459, '54.36.149.81', NULL, 1, 'Mensual', NULL, '2021-04-08', '2021-04-08 00:14:22', '2021-04-08 00:14:22'),
(462, '66.249.65.235', NULL, 1, 'Mensual', NULL, '2021-04-10', '2021-04-10 18:38:01', '2021-04-10 18:38:01'),
(463, '66.249.65.233', NULL, 4, 'Mensual', NULL, '2021-04-10', '2021-04-10 18:38:06', '2021-04-10 18:38:06'),
(464, '66.249.65.231', NULL, 1, 'Anual', NULL, '2021-04-10', '2021-04-10 18:38:12', '2021-04-10 18:38:12'),
(466, '66.249.76.91', NULL, 3, 'Mensual', NULL, '2021-04-11', '2021-04-11 23:38:15', '2021-04-11 23:38:15'),
(467, '66.249.76.92', NULL, 2, 'Anual', NULL, '2021-04-11', '2021-04-11 23:41:41', '2021-04-11 23:41:41'),
(469, '13.66.139.40', NULL, 2, 'Mensual', NULL, '2021-04-13', '2021-04-13 20:40:49', '2021-04-13 20:40:49'),
(470, '207.46.13.60', NULL, 3, 'Anual', NULL, '2021-04-17', '2021-04-17 02:38:23', '2021-04-17 02:38:23'),
(471, '66.249.76.29', NULL, 3, 'Anual', NULL, '2021-04-17', '2021-04-17 06:47:36', '2021-04-17 06:47:36'),
(472, '217.61.227.104', NULL, 4, 'Mensual', NULL, '2021-04-21', '2021-04-21 00:45:42', '2021-04-21 00:45:42'),
(474, '40.77.167.2', NULL, 2, 'Mensual', NULL, '2021-04-26', '2021-04-26 06:47:08', '2021-04-26 06:47:08'),
(475, '207.46.13.71', NULL, 3, 'Mensual', NULL, '2021-04-28', '2021-04-28 00:32:47', '2021-04-28 00:32:47'),
(476, '207.46.13.167', NULL, 1, 'Anual', NULL, '2021-04-28', '2021-04-28 11:38:05', '2021-04-28 11:38:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Principiante', 'principiante', '2020-08-19 14:51:50', '2021-01-12 10:32:42'),
(2, 'Básico', 'basico', '2020-09-03 14:16:07', '2020-09-03 14:16:07'),
(3, 'Intermedio', 'intermedio', '2020-09-03 14:16:07', '2020-09-03 14:16:07'),
(4, 'Avanzado', 'avanzado', '2020-09-03 14:17:00', '2020-09-03 14:17:00'),
(5, 'Pro', 'pro', '2020-09-03 14:17:15', '2020-09-03 14:17:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supports`
--

CREATE TABLE `supports` (
  `id` int NOT NULL,
  `response` text NOT NULL,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` int NOT NULL COMMENT '1:respondida, 0:no respondida',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `supports`
--

INSERT INTO `supports` (`id`, `response`, `ticket_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>Prueba de respuesta de ticket creado.</p>', 2, 1, 1, '2020-11-27 19:23:24', '2020-11-27 19:23:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support_material`
--

CREATE TABLE `support_material` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'Archivo o Link',
  `material` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `support_material`
--

INSERT INTO `support_material` (`id`, `course_id`, `title`, `type`, `material`, `image`, `created_at`, `updated_at`) VALUES
(19, 1, 'File 2', 'Archivo', 'MANUAL IPO INGLES.pdf', 'eeuu.png', '2020-11-06 19:50:04', '2021-01-11 21:58:06'),
(20, 1, 'Dokument 1', 'Archivo', 'MANUAL IPO aleman.pdf', 'alemania.png', '2020-11-06 19:51:23', '2020-11-06 19:51:23'),
(21, 1, 'Document 1', 'Archivo', 'MANUAL IPO frances.pdf', 'francia.png', '2020-11-06 19:52:34', '2020-11-06 19:52:34'),
(22, 1, 'Documento 1', 'Archivo', 'MANUAL IPO portugues.pdf', 'portugal.png', '2020-11-06 19:54:24', '2020-11-06 19:54:24'),
(23, 1, 'Material 1', 'Archivo', 'MANUAL IPO- ESPA.pdf', 'españa.png', '2020-11-06 19:55:35', '2020-11-06 19:55:35'),
(24, 1, 'Documento 1', 'Archivo', 'MANUAL IPO Italiano.pdf', 'Italia.png', '2020-11-06 19:56:24', '2020-11-06 19:56:24'),
(25, 2, 'File 1', 'Archivo', 'MANUAL ARTIFICIAL INTELLIGENCE-INGLES.pdf', 'eeuu.png', '2020-11-06 20:03:20', '2020-11-06 20:03:20'),
(26, 2, 'Dokument 1', 'Archivo', 'MANUAL ARTIFICIAL INTELLIGENCE-aleman.pdf', 'alemania.png', '2020-11-06 20:04:35', '2020-11-06 20:04:35'),
(27, 2, 'Document 1', 'Archivo', 'MANUAL ARTIFICIAL INTELLIGENCE frances.pdf', 'francia.png', '2020-11-06 20:05:50', '2020-11-06 20:05:50'),
(28, 2, 'Documento 1', 'Archivo', 'MANUAL ARTIFICIAL INTELLIGENCE-portugues.pdf', 'portugal.png', '2020-11-06 20:06:58', '2020-11-06 20:06:58'),
(29, 2, 'Material 1', 'Archivo', 'MANUAL INTELIGENCIA ARTIFICIAL-ESP.pdf', 'españa.png', '2020-11-06 20:08:04', '2020-11-06 20:08:04'),
(30, 2, 'Documento 1', 'Archivo', 'MANUAL ARTIFICIAL INTELLIGENCE italiano.pdf', 'Italia.png', '2020-11-06 20:11:07', '2020-11-06 20:11:07'),
(31, 3, 'File 1', 'Archivo', 'MANUAL CRYPTO2-INGLES.pdf', 'eeuu.png', '2020-11-06 20:14:49', '2020-11-06 20:14:49'),
(32, 3, 'Dokument 1', 'Archivo', 'MANUAL CRYPTO2-aleman.pdf', 'alemania.png', '2020-11-06 20:17:07', '2020-11-06 20:17:07'),
(33, 3, 'Document 1', 'Archivo', 'MANUAL CRYPTO2-frances.pdf', 'francia.png', '2020-11-06 20:18:16', '2020-11-06 20:18:16'),
(34, 3, 'Documento 1', 'Archivo', 'MANUAL CRYPTO2-portugues.pdf', 'portugal.png', '2020-11-06 20:21:18', '2020-11-06 20:21:18'),
(35, 3, 'Material 1', 'Archivo', 'MANUAL CRIPTO2-ESPA.pdf', 'españa.png', '2020-11-06 20:25:05', '2020-11-06 20:25:05'),
(36, 3, 'Documento 1', 'Archivo', 'MANUAL CRYPTO2-italiano.pdf', 'Italia.png', '2020-11-06 20:26:04', '2020-11-06 20:26:04'),
(38, 4, 'File 1', 'Archivo', 'MANUAL ECONOMETRIC ANALISYS.pdf', 'eeuu.png', '2020-11-06 20:36:04', '2020-11-06 20:36:04'),
(40, 4, 'Dokument 1', 'Archivo', 'MANUAL ÖKONOMETRISCHE ANALYSE.pdf', 'alemania.png', '2020-11-06 20:38:24', '2020-11-06 20:38:24'),
(42, 4, 'Document 1', 'Archivo', 'MANUAL ANALYSE ECONOMETRIQUE.pdf', 'francia.png', '2020-11-06 20:43:38', '2020-11-06 20:43:38'),
(44, 4, 'Documento 1', 'Archivo', 'MANUAL ANALISE ECONOMETRICA.pdf', 'portugal.png', '2020-11-06 20:55:59', '2020-11-06 20:55:59'),
(46, 4, 'Material 1', 'Archivo', 'MANUAL ANÁLISIS ECONOMÉTRICO.pdf', 'españa.png', '2020-11-06 21:12:44', '2020-11-06 21:12:44'),
(48, 4, 'Documento 1', 'Archivo', 'MANUAL ANALISI ECONOMETRICA.pdf', 'Italia.png', '2020-11-06 21:15:50', '2020-11-06 21:15:50'),
(50, 5, 'File 1', 'Archivo', 'MANUALCRYPTO1-INGLES.pdf', 'eeuu.png', '2020-11-06 21:22:28', '2020-11-06 21:22:28'),
(51, 5, 'Dokument 1', 'Archivo', 'MANUALCRYPTO-aleman.pdf', NULL, '2020-11-06 21:23:55', '2020-11-06 21:23:55'),
(52, 5, 'Document 1', 'Archivo', 'MANUALCRYPTO1-frances.pdf', 'francia.png', '2020-11-06 21:24:43', '2020-11-06 21:24:43'),
(53, 5, 'Documento 1', 'Archivo', 'MANUALCRYPTO1-portugues.pdf', 'portugal.png', '2020-11-06 21:25:37', '2020-11-06 21:25:37'),
(54, 5, 'Material 1', 'Archivo', 'MANUAL CRIPTO1 -ESPA.pdf', 'españa.png', '2020-11-06 21:26:40', '2020-11-06 21:26:40'),
(55, 5, 'Documento 1', 'Archivo', 'MANUALCRYPTO1-italiano.pdf', 'Italia.png', '2020-11-06 21:27:36', '2020-11-06 21:27:36'),
(56, 6, 'File 1', 'Archivo', 'ManualAdvancedAnalysisIngFINAL.pdf', 'eeuu.png', '2020-11-06 21:49:08', '2020-11-06 21:49:08'),
(57, 6, 'File 2', 'Archivo', 'ManualBehavioralFinaceIngFINAL.pdf', 'eeuu.png', '2020-11-06 21:49:47', '2020-11-06 21:49:47'),
(58, 6, 'Dokument 1', 'Archivo', 'ManualAdvancedAnalysisIngFINAL.en.de.pdf', 'alemania.png', '2020-11-06 21:50:49', '2020-11-06 21:50:49'),
(59, 6, 'Dokument 2', 'Archivo', 'ManualBehavioralFinaceIngFINAL.en.de.pdf', 'alemania.png', '2020-11-06 21:51:33', '2020-11-06 21:51:33'),
(60, 6, 'Document 1', 'Archivo', 'ManualAdvancedAnalysisIngFINAL.en.fr.pdf', 'francia.png', '2020-11-06 21:53:10', '2020-11-06 21:53:10'),
(61, 6, 'Document 2', 'Archivo', 'ManualBehavioralFinaceIngFINAL.en.fr.pdf', 'francia.png', '2020-11-06 21:53:48', '2020-11-06 21:53:48'),
(62, 6, 'Documento 1', 'Archivo', 'ManualAdvancedAnalysisIngFINAL.en.pt.pdf', 'portugal.png', '2020-11-06 21:54:38', '2020-11-06 21:54:38'),
(63, 6, 'Documento 2', 'Archivo', 'ManualBehavioralFinaceIngFINAL.en.pt.pdf', 'portugal.png', '2020-11-06 21:55:46', '2020-11-06 21:55:46'),
(64, 6, 'Material 1', 'Archivo', 'ManualAnalisisTecnicoAvanzadoEspFINAL.pdf', 'españa.png', '2020-11-06 21:56:34', '2020-11-06 21:56:34'),
(65, 6, 'Material 2', 'Archivo', 'ManualFinanzasConductuales1EspFINAL .pdf', 'españa.png', '2020-11-06 21:57:25', '2020-11-06 21:57:25'),
(66, 6, 'Documento 1', 'Archivo', 'ManualAdvancedAnalysisIngFINAL.en.it.pdf', 'Italia.png', '2020-11-06 21:58:17', '2020-11-06 21:58:17'),
(67, 6, 'Documento 2', 'Archivo', 'ManualBehavioralFinaceIngFINAL.en.it.pdf', 'Italia.png', '2020-11-06 21:58:49', '2020-11-06 21:58:49'),
(68, 7, 'File 1', 'Archivo', 'GUIDE INTRODUCTION TO THE FINANCIAL WORLD (Inglés) OK.pdf', 'eeuu.png', '2020-11-06 22:10:57', '2020-11-06 22:10:57'),
(69, 7, 'Dokument 1', 'Archivo', 'GUIDE INTRODUCTION TO THE FINANCIAL WORLD (IngleÌ_s) OK.en.de.pdf', 'alemania.png', '2020-11-06 22:12:11', '2020-11-06 22:12:11'),
(70, 7, 'Document 1', 'Archivo', 'GUIDE INTRODUCTION TO THE FINANCIAL WORLD (IngleÌ_s) OK.en.fr.pdf', 'francia.png', '2020-11-06 22:12:58', '2020-11-06 22:12:58'),
(71, 7, 'Documento 1', 'Archivo', 'GUIDE INTRODUCTION TO THE FINANCIAL WORLD (IngleÌ_s) OK.en.pt.pdf', 'portugal.png', '2020-11-06 22:13:51', '2020-11-06 22:13:51'),
(72, 7, 'Material 1', 'Archivo', 'MANUAL INTRODUCCION AL MUNDO FINANCIERO (Español) OK.pdf', 'españa.png', '2020-11-06 22:16:48', '2020-11-06 22:16:48'),
(73, 7, 'Documento 1', 'Archivo', 'GUIDE INTRODUCTION TO THE FINANCIAL WORLD (IngleÌ_s) OK.en.it.pdf', 'Italia.png', '2020-11-06 22:17:29', '2020-11-06 22:17:29'),
(74, 8, 'File 1', 'Archivo', 'ManualFundamentalsOfForexIng FINAL.pdf', 'eeuu.png', '2020-11-06 22:18:41', '2020-11-06 22:18:41'),
(75, 8, 'Dokument 1', 'Archivo', 'ManualFundamentalsOfForexIng FINAL.en.de.pdf', 'alemania.png', '2020-11-06 22:19:30', '2020-11-06 22:19:30'),
(76, 8, 'Document 1', 'Archivo', 'ManualFundamentalsOfForexIng FINAL.en.fr.pdf', 'francia.png', '2020-11-06 22:20:20', '2020-11-06 22:20:20'),
(77, 8, 'Documento 1', 'Archivo', 'ManualFundamentalsOfForexIng FINAL.en.pt.pdf', 'portugal.png', '2020-11-06 22:21:08', '2020-11-06 22:21:08'),
(78, 8, 'Material 1', 'Archivo', 'ManualFundamentosDelForex Esp FINAL.pdf', 'españa.png', '2020-11-06 22:22:15', '2020-11-06 22:22:15'),
(79, 8, 'Documento 1', 'Archivo', 'ManualFundamentalsOfForexIng FINAL.en.it.pdf', 'Italia.png', '2020-11-06 22:22:55', '2020-11-06 22:22:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_options`
--

CREATE TABLE `survey_options` (
  `id` int NOT NULL,
  `question` text NOT NULL,
  `content_event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `survey_options`
--

INSERT INTO `survey_options` (`id`, `question`, `content_event_id`, `created_at`, `updated_at`) VALUES
(1, 'pregunta', 1, '2021-04-27 17:03:45', '2021-04-27 17:03:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_options_response`
--

CREATE TABLE `survey_options_response` (
  `id` int NOT NULL,
  `response` text NOT NULL,
  `survey_options_id` int NOT NULL,
  `selected` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `survey_options_response`
--

INSERT INTO `survey_options_response` (`id`, `response`, `survey_options_id`, `selected`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'respuesa', 1, 0, 10075, '2021-04-27 17:03:45', '2021-04-27 17:03:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'mba.', '2020-09-08 19:01:29', '2021-01-12 10:33:00'),
(2, 'trading', '2020-09-08 19:01:54', '2020-09-08 19:01:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('General','Academia','Afiliados') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `admin` int DEFAULT NULL,
  `status` enum('Abierto','Cerrado','Cancelado') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Abierto',
  `archivo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `soporte` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Soporte',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id`, `titulo`, `comentario`, `tipo`, `user_id`, `admin`, `status`, `archivo`, `archivo_name`, `fecha`, `soporte`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prueba de creación de ticket', '<p>Esto es una prueba</p>', 'General', 10076, NULL, 'Cancelado', '1.png', 'dia_fondo-02.png', '2020-11-26', 'Soporte', NULL, '2020-11-26 16:42:26', '2020-11-26 16:45:16'),
(2, 'Prueba', '<p>Esto es una prueba de creaci&oacute;n de tickets....</p>', 'Academia', 10076, NULL, 'Cerrado', '2.png', 'dia_fondo-02-02.png', '2020-11-26', 'Soporte', NULL, '2020-11-26 16:46:01', '2021-01-11 20:12:43'),
(3, 'prueba', '<p>hola&nbsp;</p>', 'General', 10095, NULL, 'Abierto', NULL, NULL, '2021-01-28', 'Soporte', NULL, '2021-01-28 14:00:14', '2021-01-28 14:00:14'),
(4, 'prueba', '<p>prueba</p>', 'Academia', 10118, NULL, 'Abierto', '4.PNG', '2.PNG', '2021-01-29', 'Soporte', NULL, '2021-01-29 13:12:58', '2021-01-29 13:12:58'),
(5, 'prueba', '<p>prueba</p>', 'Academia', 10118, NULL, 'Abierto', '5.PNG', '2.PNG', '2021-01-29', 'Soporte', NULL, '2021-01-29 13:13:02', '2021-01-29 13:13:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upgrade_messages`
--

CREATE TABLE `upgrade_messages` (
  `id` int NOT NULL,
  `membership_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `upgrade_messages`
--

INSERT INTO `upgrade_messages` (`id`, `membership_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(2, 2, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(3, 3, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(4, 4, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_campo`
--

CREATE TABLE `user_campo` (
  `ID` bigint NOT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `genero` varchar(250) DEFAULT NULL,
  `edad` date DEFAULT NULL,
  `nameuser` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `document` varchar(250) DEFAULT NULL,
  `direccion2` varchar(250) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  `ciudad` varchar(250) DEFAULT NULL,
  `codigo` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `fijo` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `instagram` varchar(250) DEFAULT NULL,
  `youtube` varchar(250) DEFAULT NULL,
  `linkedin` varchar(250) DEFAULT NULL,
  `banco` varchar(250) DEFAULT NULL,
  `tipocuenta` varchar(250) DEFAULT NULL,
  `titular` varchar(250) DEFAULT NULL,
  `documento_identidad_titular` varchar(250) DEFAULT NULL,
  `cuenta` varchar(250) DEFAULT NULL,
  `swift` varchar(250) DEFAULT NULL,
  `pan` varchar(250) DEFAULT NULL,
  `paypal` varchar(250) DEFAULT NULL,
  `blocktrail` varchar(250) DEFAULT NULL,
  `blockchain` varchar(250) DEFAULT NULL,
  `bitgo` varchar(250) DEFAULT NULL,
  `pais` varchar(250) DEFAULT NULL,
  `pago` varchar(250) DEFAULT NULL,
  `btc` longtext,
  `biografia` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_campo`
--

INSERT INTO `user_campo` (`ID`, `firstname`, `lastname`, `genero`, `edad`, `nameuser`, `direccion`, `document`, `direccion2`, `estado`, `ciudad`, `codigo`, `phone`, `fijo`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `banco`, `tipocuenta`, `titular`, `documento_identidad_titular`, `cuenta`, `swift`, `pan`, `paypal`, `blocktrail`, `blockchain`, `bitgo`, `pais`, `pago`, `btc`, `biografia`) VALUES
(1, 'ADMIN', 'Mba', 'M', NULL, 'shapinetadmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10101, 'Yanira', 'Picon', 'F', '2000-06-05', NULL, NULL, '4543212345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10099, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10098, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10097, 'Francisco', 'Valencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10096, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'México', NULL, NULL, NULL),
(10095, 'pedro', 'pedro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Armenia', NULL, NULL, NULL),
(10093, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10092, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10091, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10090, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yemen', NULL, NULL, NULL),
(10089, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10088, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'United States', NULL, NULL, NULL),
(10087, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Argentina', NULL, NULL, NULL),
(10086, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Antartica', NULL, NULL, NULL),
(10085, 'Sinergia', 'Group', 'M', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10084, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10082, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10081, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10080, 'Mentor', 'Experto', 'M', '1980-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Especialista en finanzas, forex, negocios, emprendimiento, marketing, inteligencia artificial, Asesor internacional'),
(10079, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10078, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10077, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10076, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10075, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10074, 'Erick', 'Reynaga', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Especialista con 6 años de experiencia en el mundo del Trading, Forex y las Criptodivisas, así como de fondos de inversión con marcas de reconocimiento internacional. Cuenta con una maestría en administración y negocios, es líder de proyectos educativos financieros para diferentes cúpulas de negocios de jóvenes empresarios en México y es promotor de una Sociedad Financiera de Operación Múltiple en la que se operan diversas transacciones con crypto.'),
(10073, 'Mirela', 'Vuckovic', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lic. en Economía por la University of Split de Croacia. Colaboró en Londres para importantes marcas de offshore banking. En México tiene 12 años como consultora directiva de reconocidas empresas Fintech en todo Latam. Así como instructora de diversos programas académicos con diferentes marcas de la industria financiera.'),
(10072, 'Manuel', 'Guerrero', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lic. en administración Financiera, apasionado del conocimiento y la aplicación de la tecnología en los mercados financieros, desde muy joven se ha interesado por explorar y promover temas de inversiones, forex, trading, IA, entre otros.'),
(10071, 'Tania', 'Tostado', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Licenciada en Administración financiera con especialidad en finanzas corporativas, ha colaborado con bancos de talla mundial como: UBS, Credit Suisse y Deutche Bank en Suiza, Bank Hapoalim en Israel, Baern Stearns Securities en EUA, entre muchos otros. En 2008, fue ganadora del premio Best Development, otorgado por la International Property Awards y CNBC. Como consultora independiente, asesora a múltiples y reconocidas empresas en latinoamérica para hacer importantes transacciones con cifras de millones de dólares.'),
(10109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Australia', NULL, NULL, NULL),
(10120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10123, 'Mentor', 'Experto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10124, 'Crisleivys', 'Gil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'México', NULL, NULL, NULL),
(10128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'México', NULL, NULL, NULL),
(10129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'México', NULL, NULL, NULL),
(10130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andorra', NULL, NULL, NULL),
(10131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'México', NULL, NULL, NULL),
(10134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'México', NULL, NULL, NULL),
(10142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'México', NULL, NULL, NULL),
(10143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'United States', NULL, NULL, NULL),
(10144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'United States', NULL, NULL, NULL),
(10151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `walletlog`
--

CREATE TABLE `walletlog` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcomision` int NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `debito` float NOT NULL,
  `credito` float NOT NULL,
  `balance` float NOT NULL,
  `descuento` float NOT NULL,
  `tipotransacion` tinyint NOT NULL COMMENT '0 - transferencia, 1 - retiros, 2 - comisiones,  3 - liquidaciones',
  `monedaAdicional` text,
  `membresia` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `walletlog`
--

INSERT INTO `walletlog` (`id`, `iduser`, `idcomision`, `usuario`, `descripcion`, `debito`, `credito`, `balance`, `descuento`, `tipotransacion`, `monedaAdicional`, `membresia`, `updated_at`) VALUES
(1, 10085, 1, 'Sinergia Group', 'Ganancia por la compra del referido referidosinergia por la Membresia Principiante', 7.2, 0, 7.2, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(2, 10085, 2, 'Sinergia Group', 'Ganancia por la compra del referido referidosinergia por la Membresia Principiante', 7.2, 0, 14.4, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(3, 1, 3, 'Administrador', 'Ganancia por la compra del referido luisana por la Membresia Principiante', 7.2, 0, 7.2, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(4, 1, 4, 'Administrador', 'Ganancia por la compra del referido luisana por la Membresia Principiante', 7.2, 0, 14.4, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(5, 1, 5, 'Administrador', 'Ganancia por la compra del referido luisana por la Membresia Principiante', 7.2, 0, 21.6, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(6, 1, 6, 'Administrador', 'Ganancia por la compra del referido luisana por la Membresia Ser', 2.997, 0, 24.597, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(7, 1, 7, 'Administrador', 'Ganancia por la compra del referido tes1000 por la Membresia Principiante', 0.3, 0, 24.897, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(8, 1, 8, 'Administrador', 'Ganancia por la compra del referido caslo por la Membresia Principiante', 0.3, 0, 25.197, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(9, 1, 9, 'Administrador', 'Ganancia por la compra del referido principiante por la Membresia Principiante', 7.2, 0, 32.397, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(10, 1, 10, 'Administrador', 'Ganancia por la compra del referido principiante por la Membresia Basico', 3.297, 0, 35.694, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(11, 1, 11, 'Administrador', 'Ganancia por la compra del referido basico por la Membresia Basico', 6.6, 0, 42.294, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(12, 1, 12, 'Administrador', 'Ganancia por la compra del referido basico por la Membresia Intermedio', 6, 0, 48.294, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(13, 1, 13, 'Administrador', 'Ganancia por la compra del referido basico por la Membresia Principiante', 7.2, 0, 55.494, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(14, 1, 14, 'Administrador', 'Ganancia por la compra del referido basico por la Membresia Principiante', 7.2, 0, 62.694, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(15, 1, 15, 'Administrador', 'Ganancia por la compra del referido basico por la Membresia Principiante', 7.2, 0, 69.894, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(16, 1, 16, 'Administrador', 'Ganancia por la compra del referido intermedio por la Membresia Intermedio', 6, 0, 75.894, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(17, 1, 17, 'Administrador', 'Ganancia por la compra del referido avanzado por la Membresia Avanzado', 5.4, 0, 81.294, 0, 2, '', NULL, '2020-12-08 06:28:53'),
(18, 10101, 0, 'Yanira', 'Orden 64 Compra con billetera del usuario: Yanira', 0, 0, 1000, 0, 1, '', NULL, '2020-12-09 10:59:38'),
(19, 10101, 0, 'Yanira', 'Orden 68 Compra con billetera del usuario: Yanira', 0, 1, 999, 0, 1, '', NULL, '2020-12-09 13:16:44'),
(20, 10101, 0, 'Yanira', 'Orden 69 Compra con billetera del usuario: Yanira', 0, 1, 998, 0, 1, '', NULL, '2020-12-09 13:36:34'),
(21, 10103, 0, 'Yanira Picon 2', 'Orden 72 Compra con billetera del usuario: Yanira Picon 2', 0, 1, 997, 0, 1, '', NULL, '2020-12-09 14:23:43'),
(22, 10101, 18, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Ser', 0, 0, 998, 0, 2, '', NULL, '2020-12-09 14:32:27'),
(23, 10101, 19, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Hacer', 0.3, 0, 998.3, 0, 2, '', NULL, '2020-12-09 14:32:27'),
(24, 10101, 20, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Ser', 0.3, 0, 998.6, 0, 2, '', NULL, '2020-12-09 14:32:27'),
(25, 10101, 21, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Ser', 0.3, 0, 998.9, 0, 2, '', NULL, '2020-12-09 14:32:27'),
(26, 10101, 22, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Ser', 0.3, 0, 999.2, 0, 2, '', NULL, '2020-12-09 14:32:27'),
(27, 10104, 0, 'Yanira Picon 3', 'Orden 73 Compra con billetera del usuario: Yanira Picon 3', 0, 1, 999, 0, 1, '', NULL, '2020-12-09 14:35:26'),
(28, 10101, 23, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 3 por la Membresia Ser', 0.3, 0, 999.5, 0, 2, '', NULL, '2020-12-09 14:36:53'),
(29, 10104, 0, 'Yanira Picon 3', 'Orden 74 Compra con billetera del usuario: Yanira Picon 3', 0, 1, 998, 0, 1, '', NULL, '2020-12-09 14:38:27'),
(30, 10104, 0, 'Yanira Picon 3', 'Orden 75 Compra con billetera del usuario: Yanira Picon 3', 0, 1, 997, 0, 1, '', NULL, '2020-12-09 14:50:19'),
(31, 10101, 24, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 3 por la Membresia Hacer', 0.3, 0, 999.8, 0, 2, '', NULL, '2020-12-09 14:58:51'),
(32, 10101, 25, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 3 por la Membresia Tener', 0.3, 0, 1000.1, 0, 2, '', NULL, '2020-12-09 14:58:51'),
(33, 10101, 0, 'Yanira Picon', 'Orden 76 Compra con billetera del usuario: Yanira Picon', 0, 1, 999.1, 0, 1, '', NULL, '2020-12-09 14:59:45'),
(34, 10101, 0, 'Yanira Picon', 'Orden 77 Compra con billetera del usuario: Yanira Picon', 0, 450, 549.1, 0, 1, '', NULL, '2020-12-10 12:54:04'),
(35, 10101, 0, 'Yanira Picon', 'Orden 78 Compra con billetera del usuario: Yanira Picon', 0, 1, 548.1, 0, 1, '', NULL, '2020-12-10 13:33:22'),
(36, 10102, 0, 'Yanira Picon 1', 'Orden 80 Compra con billetera del usuario: Yanira Picon 1', 0, 1, 998, 0, 1, '', NULL, '2020-12-10 13:51:54'),
(37, 10105, 0, 'Soporte', 'Orden 82 Compra con billetera del usuario: Soporte', 0, 1, 999, 0, 1, '', NULL, '2020-12-10 14:04:55'),
(38, 10105, 0, 'Soporte', 'Orden 83 Compra con billetera del usuario: Soporte', 0, 1, 998, 0, 1, '', NULL, '2020-12-10 14:11:51'),
(39, 10105, 0, 'Soporte', 'Orden 84 Compra con billetera del usuario: Soporte', 0, 1, 997, 0, 1, '', NULL, '2020-12-10 14:12:30'),
(40, 10105, 0, 'Soporte', 'Orden 85 Compra con billetera del usuario: Soporte', 0, 1, 996, 0, 1, '', NULL, '2020-12-10 14:13:07'),
(41, 10105, 0, 'Soporte', 'Orden 86 Compra con billetera del usuario: Soporte', 0, 1, 995, 0, 1, '', NULL, '2020-12-10 14:14:08'),
(42, 10105, 0, 'Soporte', 'Orden 87 Compra con billetera del usuario: Soporte', 0, 1, 994, 0, 1, '', NULL, '2020-12-10 14:15:07'),
(43, 10105, 0, 'Soporte', 'Orden 88 Compra con billetera del usuario: Soporte', 0, 1, 993, 0, 1, '', NULL, '2020-12-10 14:20:11'),
(44, 10105, 0, 'Soporte', 'Orden 90 Compra con billetera del usuario: Soporte', 0, 1, 992, 0, 1, '', NULL, '2020-12-10 14:22:51'),
(45, 10101, 26, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Tener', 0.3, 0, 548.4, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(46, 10101, 27, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Ser', 0.3, 0, 548.7, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(47, 10101, 28, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Ser', 0.3, 0, 549, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(48, 10101, 29, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 0.3, 0, 549.3, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(49, 10101, 30, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Tener', 0.3, 0, 549.6, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(50, 10101, 31, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 0.3, 0, 549.9, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(51, 10101, 32, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Ser', 0.3, 0, 550.2, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(52, 10101, 33, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 0.3, 0, 550.5, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(53, 10101, 34, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Tener', 0.3, 0, 550.8, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(54, 10101, 35, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 0.3, 0, 551.1, 0, 2, '', NULL, '2020-12-10 16:07:14'),
(55, 10101, 0, 'Yanira Picon', 'Orden 93 Compra con billetera del usuario: Yanira Picon', 0, 1, 550.1, 0, 1, '', NULL, '2020-12-10 16:40:04'),
(56, 10101, 0, 'Yanira Picon', 'Orden 94 Compra con billetera del usuario: Yanira Picon', 0, 1, 549.1, 0, 1, '', NULL, '2020-12-10 16:41:48'),
(57, 10101, 0, 'Yanira Picon', 'Orden 95 Compra con billetera del usuario: Yanira Picon', 0, 1, 548.1, 0, 1, '', NULL, '2020-12-10 16:42:51'),
(58, 10105, 0, 'Soporte', 'Orden 103 Compra con billetera del usuario: Soporte', 0, 1, 991, 0, 1, '', NULL, '2020-12-10 19:45:34'),
(59, 10105, 0, 'Soporte', 'Orden 104 Compra con billetera del usuario: Soporte', 0, 1, 990, 0, 1, '', NULL, '2020-12-10 19:46:37'),
(60, 10105, 0, 'Soporte', 'Orden 107 Compra con billetera del usuario: Soporte', 0, 1, 989, 0, 1, '', NULL, '2020-12-10 20:01:58'),
(61, 10105, 0, 'Soporte', 'Orden 108 Compra con billetera del usuario: Soporte', 0, 1, 988, 0, 1, '', NULL, '2020-12-10 20:02:07'),
(62, 10105, 0, 'Soporte', 'Orden 109 Compra con billetera del usuario: Soporte', 0, 1, 987, 0, 1, '', NULL, '2020-12-10 20:02:17'),
(63, 10105, 0, 'Soporte', 'Orden 110 Compra con billetera del usuario: Soporte', 0, 1, 986, 0, 1, '', NULL, '2020-12-10 20:02:27'),
(64, 10105, 0, 'Soporte', 'Orden 111 Compra con billetera del usuario: Soporte', 0, 1, 985, 0, 1, '', NULL, '2020-12-10 20:02:42'),
(65, 10105, 0, 'Soporte', 'Orden 112 Compra con billetera del usuario: Soporte', 0, 1, 984, 0, 1, '', NULL, '2020-12-10 20:02:57'),
(66, 10105, 0, 'Soporte', 'Orden 113 Compra con billetera del usuario: Soporte', 0, 1, 983, 0, 1, '', NULL, '2020-12-10 20:04:54'),
(67, 10107, 0, 'Mercedes', 'Orden 118 Compra con billetera del usuario: Mercedes', 0, 1, 999, 0, 1, '', NULL, '2020-12-11 13:00:04'),
(68, 10107, 0, 'Mercedes', 'Orden 120 Compra con billetera del usuario: Mercedes', 0, 1, 998, 0, 1, '', NULL, '2020-12-11 13:51:55'),
(69, 10107, 0, 'Mercedes', 'Orden 133 Compra con billetera del usuario: Mercedes', 0, 1, 997, 0, 1, '', NULL, '2020-12-11 15:34:06'),
(70, 10107, 0, 'Mercedes', 'Orden 135 Compra con billetera del usuario: Mercedes', 0, 1, 996, 0, 1, '', NULL, '2020-12-12 11:25:37'),
(71, 10110, 0, 'Prueba', 'Orden 144 Compra con billetera del usuario: Prueba', 0, 1, 999, 0, 1, '', NULL, '2020-12-14 16:09:24'),
(72, 10085, 36, 'Sinergia Group', 'Ganancia por la compra del referido referidosinergia por la Membresia Hacer', 0.3, 0, 14.7, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(73, 10085, 37, 'Sinergia Group', 'Ganancia por la compra del referido referidosinergia por la Membresia Hacer', 0.3, 0, 15, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(74, 10085, 38, 'Sinergia Group', 'Ganancia por la compra del referido referidosinergia por la Membresia Hacer', 0.3, 0, 15.3, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(75, 10086, 39, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Ser', 0, 0, 0, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(76, 10086, 40, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Ser', 0.3, 0, 0.3, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(77, 10086, 41, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Tener', 0.3, 0, 0.6, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(78, 10086, 42, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Trascender', 0.3, 0, 0.9, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(79, 10086, 43, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Trascender', 135, 0, 135.9, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(80, 10086, 44, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Hacer', 0.3, 0, 136.2, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(81, 10086, 45, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Hacer', 0.3, 0, 136.5, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(82, 10086, 46, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Hacer', 0.3, 0, 136.8, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(83, 10086, 47, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Tener', 0.3, 0, 137.1, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(84, 10086, 48, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon por la Membresia Trascender', 0.3, 0, 137.4, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(85, 10101, 49, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 1 por la Membresia Hacer', 0.3, 0, 548.4, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(86, 10101, 50, 'Yanira Picon', 'Ganancia por la compra del referido Yanira Picon 2 por la Membresia Hacer', 0.3, 0, 548.7, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(87, 10101, 51, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 0.3, 0, 549, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(88, 10101, 52, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Tener', 0.3, 0, 549.3, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(89, 10101, 53, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 0.3, 0, 549.6, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(90, 10101, 54, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Ser', 0.3, 0, 549.9, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(91, 10101, 55, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Ser', 0.3, 0, 550.2, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(92, 10101, 56, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 0.3, 0, 550.5, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(93, 10101, 57, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Hacer', 0.3, 0, 550.8, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(94, 10101, 58, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Tener', 0.3, 0, 551.1, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(95, 10101, 59, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Trascender', 0.3, 0, 551.4, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(96, 10101, 60, 'Yanira Picon', 'Ganancia por la compra del referido Soporte por la Membresia Ser', 0.3, 0, 551.7, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(97, 10105, 61, 'Soporte', 'Ganancia por la compra del referido juanita por la Membresia Tener', 0.3, 0, 983.3, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(98, 10105, 62, 'Soporte', 'Ganancia por la compra del referido juanita por la Membresia Trascender', 0.3, 0, 983.6, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(99, 10105, 63, 'Soporte', 'Ganancia por la compra del referido juanita por la Membresia Hacer', 0.3, 0, 983.9, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(100, 10107, 64, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Ser', 0.3, 0, 996.3, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(101, 10107, 65, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Hacer', 0.3, 0, 996.6, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(102, 10107, 66, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Tener', 0.3, 0, 996.9, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(103, 10107, 67, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Trascender', 0.3, 0, 997.2, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(104, 1, 68, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Ser', 0.3, 0, 81.594, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(105, 1, 69, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Hacer', 0.3, 0, 81.894, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(106, 1, 70, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Hacer', 0.3, 0, 82.194, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(107, 1, 71, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Tener', 0.3, 0, 82.494, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(108, 1, 72, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Trascender', 0.3, 0, 82.794, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(109, 1, 73, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Ser', 0.3, 0, 83.094, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(110, 1, 74, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Hacer', 0.3, 0, 83.394, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(111, 1, 75, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Tener', 0.3, 0, 83.694, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(112, 1, 76, 'Administrador', 'Ganancia por la compra del referido Mercedes por la Membresia Trascender', 0.3, 0, 83.994, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(113, 1, 77, 'Administrador', 'Ganancia por la compra del referido Alejandra100 por la Membresia Ser', 0.3, 0, 84.294, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(114, 1, 78, 'Administrador', 'Ganancia por la compra del referido AlexisValera95 por la Membresia Ser', 0.3, 0, 84.594, 0, 2, '', NULL, '2020-12-14 16:11:23'),
(115, 10107, 79, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Ser', 0.3, 0, 997.5, 0, 2, '', NULL, '2020-12-14 16:22:05'),
(116, 10107, 80, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Hacer', 0.3, 0, 997.8, 0, 2, '', NULL, '2020-12-14 16:22:05'),
(117, 1, 81, 'Administrador', 'Ganancia por la compra del referido es5000 por la Membresia Ser', 0.3, 0, 84.894, 0, 2, '', NULL, '2020-12-14 16:22:05'),
(118, 1, 82, 'Administrador', 'Ganancia por la compra del referido es5000 por la Membresia Hacer', 0.3, 0, 85.194, 0, 2, '', NULL, '2020-12-14 16:22:05'),
(119, 10112, 0, 'es5000', 'Orden 149 Compra con billetera del usuario: es5000', 0, 1, 999, 0, 1, '', NULL, '2020-12-14 16:24:53'),
(120, 10110, 0, 'Prueba', 'Orden 150 Compra con billetera del usuario: Prueba', 0, 1, 998, 0, 1, '', NULL, '2020-12-14 16:26:27'),
(121, 10110, 0, 'Prueba', 'Orden 151 Compra con billetera del usuario: Prueba', 0, 1, 997, 0, 1, '', NULL, '2020-12-14 16:33:42'),
(122, 10112, 0, 'es5000', 'Orden 152 Compra con billetera del usuario: es5000', 0, 1, 998, 0, 1, '', NULL, '2020-12-14 16:34:21'),
(123, 10107, 83, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Tener', 0.3, 0, 998.1, 0, 2, '', NULL, '2020-12-14 17:01:12'),
(124, 10107, 84, 'Mercedes', 'Ganancia por la compra del referido Prueba por la Membresia Ser', 0.3, 0, 998.4, 0, 2, '', NULL, '2020-12-14 17:01:12'),
(125, 1, 85, 'Administrador', 'Ganancia por la compra del referido es5000 por la Membresia Tener', 0.3, 0, 85.494, 0, 2, '', NULL, '2020-12-14 17:01:12'),
(126, 1, 86, 'Administrador', 'Ganancia por la compra del referido es5000 por la Membresia Trascender', 0.3, 0, 85.794, 0, 2, '', NULL, '2020-12-14 17:01:12'),
(127, 10113, 0, 'tes900', 'Orden 155 Compra con billetera del usuario: tes900', 0, 1, 99, 0, 1, '', NULL, '2020-12-14 19:21:24'),
(128, 10113, 0, 'tes900', 'Orden 156 Compra con billetera del usuario: tes900', 0, 1, 98, 0, 1, '', NULL, '2020-12-14 19:25:27'),
(129, 1, 87, 'Administrador', 'Ganancia por la compra del referido tes900 por la Membresia Ser', 0.3, 0, 86.094, 0, 2, '', NULL, '2020-12-23 11:31:36'),
(130, 1, 88, 'Administrador', 'Ganancia por la compra del referido tes900 por la Membresia Hacer', 0.3, 0, 86.394, 0, 2, '', NULL, '2020-12-23 11:31:36'),
(131, 1, 89, 'Administrador', 'Ganancia por la compra del referido tes900 por la Membresia Tener', 0.3, 0, 86.694, 0, 2, '', NULL, '2020-12-23 11:31:36'),
(132, 1, 90, 'Administrador', 'Ganancia por la compra del referido tes900 por la Membresia Tener', 0.3, 0, 86.994, 0, 2, ' ', 'Tener', '2020-12-23 11:31:36'),
(137, 1, 5, 'Administrador', 'Liquidacion del usuario Administrador', 0, 86.994, 0, 0, 3, '', NULL, '2020-12-29 16:18:00'),
(138, 10086, 6, 'referidosinergia', 'Liquidacion del usuario referidosinergia', 0, 137.4, 0, 0, 3, '', NULL, '2020-12-29 16:18:00'),
(139, 10081, 0, 'freddy', 'Orden 164 Compra con billetera del usuario: freddy', 0, 10, 40, 0, 1, '', 'noble', '2021-01-12 13:32:39'),
(140, 10072, 0, 'Manuel Guerrero', 'Orden 167 Compra con billetera del usuario: Manuel Guerrero', 0, 9.99, 90.01, 0, 1, '', 'Ser', '2021-01-16 06:55:08'),
(141, 10101, 0, 'Yanira Picon', 'Orden 168 Compra con billetera del usuario: Yanira Picon', 0, 39.99, 511.71, 0, 1, '', 'Trascender', '2021-01-16 06:58:41'),
(142, 10101, 0, 'Yanira Picon', 'Orden 169 Compra con billetera del usuario: Yanira Picon', 0, 10, 501.71, 0, 1, '', 'Prueba de menciones', '2021-01-16 07:16:22'),
(143, 10086, 91, 'referidosinergia', 'Ganancia por la compra del referido Yanira Picon', 11.997, 0, 11.997, 0, 2, '', 'Trascender', '2021-01-16 08:39:34'),
(144, 10114, 92, 'Luz', 'Ganancia por la compra del referido Ser', 5.997, 0, 5.997, 0, 2, '', 'Hacer', '2021-01-16 08:39:34'),
(145, 1, 93, 'Administrador', 'Ganancia por la compra del referido Manuel Guerrero', 2.997, 0, 2.997, 0, 2, '', 'Ser', '2021-01-16 08:39:34'),
(146, 10107, 0, 'Mercedes', 'Orden 170 Compra con billetera del usuario: Mercedes', 0, 39.99, 958.41, 0, 1, '', 'Trascender', '2021-01-25 14:16:02'),
(147, 1, 94, 'Administrador', 'Ganancia por la compra del referido Mercedes', 11.997, 0, 14.994, 0, 2, '', 'Trascender', '2021-02-07 11:28:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_actions`
--

CREATE TABLE `wp98_actionscheduler_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_claims`
--

CREATE TABLE `wp98_actionscheduler_claims` (
  `claim_id` bigint UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_groups`
--

CREATE TABLE `wp98_actionscheduler_groups` (
  `group_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_actionscheduler_groups`
--

INSERT INTO `wp98_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_logs`
--

CREATE TABLE `wp98_actionscheduler_logs` (
  `log_id` bigint UNSIGNED NOT NULL,
  `action_id` bigint UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_commentmeta`
--

CREATE TABLE `wp98_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_comments`
--

CREATE TABLE `wp98_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_links`
--

CREATE TABLE `wp98_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_ms_snippets`
--

CREATE TABLE `wp98_ms_snippets` (
  `id` bigint NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `priority` smallint NOT NULL DEFAULT '10',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_options`
--

CREATE TABLE `wp98_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_options`
--

INSERT INTO `wp98_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://shapinetwork.com', 'yes'),
(2, 'home', 'https://shapinetwork.com', 'yes'),
(3, 'blogname', 'shapinetwork', 'yes'),
(4, 'blogdescription', 'Shapinetwork', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@shapinetwork.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:238:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:9:\"tienda/?$\";s:27:\"index.php?post_type=product\";s:39:\"tienda/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"tienda/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:26:\"tienda/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"layout_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:51:\"layout_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:32:\"layout_category/([^/]+)/embed/?$\";s:48:\"index.php?layout_category=$matches[1]&embed=true\";s:44:\"layout_category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?layout_category=$matches[1]&paged=$matches[2]\";s:26:\"layout_category/([^/]+)/?$\";s:37:\"index.php?layout_category=$matches[1]\";s:52:\"layout_pack/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:47:\"layout_pack/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:28:\"layout_pack/([^/]+)/embed/?$\";s:44:\"index.php?layout_pack=$matches[1]&embed=true\";s:40:\"layout_pack/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_pack=$matches[1]&paged=$matches[2]\";s:22:\"layout_pack/([^/]+)/?$\";s:33:\"index.php?layout_pack=$matches[1]\";s:52:\"layout_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:47:\"layout_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:28:\"layout_type/([^/]+)/embed/?$\";s:44:\"index.php?layout_type=$matches[1]&embed=true\";s:40:\"layout_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_type=$matches[1]&paged=$matches[2]\";s:22:\"layout_type/([^/]+)/?$\";s:33:\"index.php?layout_type=$matches[1]\";s:46:\"scope/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:41:\"scope/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:22:\"scope/([^/]+)/embed/?$\";s:38:\"index.php?scope=$matches[1]&embed=true\";s:34:\"scope/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?scope=$matches[1]&paged=$matches[2]\";s:16:\"scope/([^/]+)/?$\";s:27:\"index.php?scope=$matches[1]\";s:53:\"module_width/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:48:\"module_width/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:29:\"module_width/([^/]+)/embed/?$\";s:45:\"index.php?module_width=$matches[1]&embed=true\";s:41:\"module_width/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?module_width=$matches[1]&paged=$matches[2]\";s:23:\"module_width/([^/]+)/?$\";s:34:\"index.php?module_width=$matches[1]\";s:40:\"et_pb_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"et_pb_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"et_pb_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"et_pb_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"et_pb_layout/([^/]+)/embed/?$\";s:60:\"index.php?post_type=et_pb_layout&name=$matches[1]&embed=true\";s:33:\"et_pb_layout/([^/]+)/trackback/?$\";s:54:\"index.php?post_type=et_pb_layout&name=$matches[1]&tb=1\";s:41:\"et_pb_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&paged=$matches[2]\";s:48:\"et_pb_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&cpage=$matches[2]\";s:38:\"et_pb_layout/([^/]+)/wc-api(/(.*))?/?$\";s:68:\"index.php?post_type=et_pb_layout&name=$matches[1]&wc-api=$matches[3]\";s:44:\"et_pb_layout/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"et_pb_layout/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"et_pb_layout/([^/]+)(?:/([0-9]+))?/?$\";s:66:\"index.php?post_type=et_pb_layout&name=$matches[1]&page=$matches[2]\";s:29:\"et_pb_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"et_pb_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"et_pb_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"et_pb_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:33:\"project/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?project=$matches[1]&wc-api=$matches[3]\";s:39:\"project/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"project/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:52:\"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:33:\"project_category/([^/]+)/embed/?$\";s:49:\"index.php?project_category=$matches[1]&embed=true\";s:45:\"project_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_category=$matches[1]&paged=$matches[2]\";s:27:\"project_category/([^/]+)/?$\";s:38:\"index.php?project_category=$matches[1]\";s:52:\"project_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:47:\"project_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:28:\"project_tag/([^/]+)/embed/?$\";s:44:\"index.php?project_tag=$matches[1]&embed=true\";s:40:\"project_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?project_tag=$matches[1]&paged=$matches[2]\";s:22:\"project_tag/([^/]+)/?$\";s:33:\"index.php?project_tag=$matches[1]\";s:57:\"categoria-producto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:52:\"categoria-producto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:33:\"categoria-producto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:45:\"categoria-producto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:27:\"categoria-producto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiqueta-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiqueta-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiqueta-producto/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiqueta-producto/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiqueta-producto/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"producto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"producto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"producto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"producto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"producto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"producto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"producto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"producto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"producto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"producto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"producto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"producto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"producto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"producto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:31:\"code-snippets/code-snippets.php\";i:2;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:3;s:29:\"divi-ghoster/divi-ghoster.php\";i:4;s:33:\"nav-menu-roles/nav-menu-roles.php\";i:5;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:6;s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";i:7;s:39:\"ultimate-branding/ultimate-branding.php\";i:8;s:46:\"under-construction-page/under-construction.php\";i:9;s:45:\"woocommerce-branding/woocommerce-branding.php\";i:10;s:27:\"woocommerce/woocommerce.php\";i:11;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Divi', 'yes'),
(41, 'stylesheet', 'Divi', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";s:46:\"under-construction-page/under-construction.php\";a:2:{i:0;s:3:\"UCP\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '22', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1600805135', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp98_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:20:{i:1600392339;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1600392936;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600392941;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600394822;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600395398;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1600406054;a:1:{s:22:\"wpmudev_scheduled_jobs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600416335;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600420467;a:1:{s:33:\"check_plugin_updates-divi-ghoster\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600427504;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600449114;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459535;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459589;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459590;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600459904;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600461336;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600464231;a:1:{s:21:\"et_builder_fonts_cron\";a:1:{s:32:\"552cbb9d6515dadbbc4718ad75114f08\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{s:8:\"interval\";s:5:\"daily\";}s:8:\"interval\";i:86400;}}}i:1600473600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600708364;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1601025241;a:1:{s:32:\"et_core_page_resource_auto_clear\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585257240;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(23077, '_site_transient_timeout_theme_roots', '1600393598', 'no'),
(23078, '_site_transient_theme_roots', 'a:6:{s:4:\"Divi\";s:7:\"/themes\";s:10:\"ghost_divi\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(23079, '_transient_timeout__woocommerce_helper_updates', '1600434998', 'no'),
(23080, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"2b07b128970885cf30d5311be8a6d9bc\";s:7:\"updated\";i:1600391798;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');
INSERT INTO `wp98_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(154, 'mw_adminimize', 'a:132:{s:29:\"mw_adminimize_admin_bar_nodes\";a:30:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:360:\"<img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=64&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\' /><span class=\'display-name\'>Shapinetwork</span><span class=\'username\'>shapinetadmin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:16:\"Editar mi perfil\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:5:\"Salir\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:70:\"https://shapinetwork.com/acceso/?action=logout&amp;_wpnonce=ae66835e5d\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"menu-toggle\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"menu-toggle\";s:5:\"title\";s:74:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">Menú</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:1:\"#\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:322:\"Hola, <span class=\"display-name\">Shapinetwork</span><img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=26&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\' />\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:19:\"Acerca de WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:43:\"https://shapinetwork.com/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:25:\"https://es.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:14:\"Documentación\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:7:\"Soporte\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:33:\"https://es.wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:11:\"Sugerencias\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:71:\"https://es.wordpress.org/support/forum/comunidad/peticiones-y-feedback/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:12:\"shapinetwork\";s:6:\"parent\";b:0;s:4:\"href\";s:25:\"https://shapinetwork.com/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"view-site\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"view-site\";s:5:\"title\";s:16:\"Visitar el sitio\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:25:\"https://shapinetwork.com/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"view-store\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"view-store\";s:5:\"title\";s:17:\"Visitar la tienda\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:32:\"https://shapinetwork.com/tienda/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:210:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text comments-in-moderation-text\">0 comentarios en moderación</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:51:\"https://shapinetwork.com/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:7:\"Entrada\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Medio\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:47:\"https://shapinetwork.com/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:7:\"Página\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:61:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-project\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-project\";s:5:\"title\";s:8:\"Proyecto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=project\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-product\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-product\";s:5:\"title\";s:8:\"Producto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=product\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"new-shop_order\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"new-shop_order\";s:5:\"title\";s:6:\"Pedido\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:67:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_order\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:15:\"new-shop_coupon\";O:8:\"stdClass\":6:{s:2:\"id\";s:15:\"new-shop_coupon\";s:5:\"title\";s:6:\"Cupón\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:68:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_coupon\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:7:\"Usuario\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}s:20:\"customize-divi-theme\";O:8:\"stdClass\":6:{s:2:\"id\";s:20:\"customize-divi-theme\";s:5:\"title\";s:23:\"Personalizador de temas\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:172:\"https://shapinetwork.com/wp-admin/customize.php?url=https%3A%2F%2Fshapinetwork.com%2Fwp-admin%2Foptions-general.php%3Fsettings-updated%3Dtrue&et_customizer_option_set=theme\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:20:\"hide-if-no-customize\";}}s:23:\"under-construction-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:23:\"under-construction-page\";s:5:\"title\";s:347:\"<img style=\"height: 17px; margin-bottom: -4px; padding-right: 3px;\" src=\"https://shapinetwork.com/wp-content/plugins/under-construction-page/images/ucp_icon.png\" alt=\"Modo en construcción activado\" title=\"Modo en construcción activado\"> <span class=\"ab-label\">UnderConstruction <i class=\"ucp-status-dot ucp-status-dot-enabled\">&#9679;</i></span>\";s:6:\"parent\";s:0:\"\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"ucp-enabled\";}}s:10:\"ucp-status\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"ucp-status\";s:5:\"title\";s:376:\"Modo en construcción<a href=\"https://shapinetwork.com/wp-admin/admin.php?action=ucp_change_status&amp;new_status=disabled&amp;redirect=%2Fwp-admin%2Foptions-general.php%3Fsettings-updated%3Dtrue&amp;_wpnonce=9b13c3d28a\" id=\"ucp-status-wrapper\" class=\"on\"><span id=\"ucp-status-off\" class=\"ucp-status-btn\">OFF</span><span id=\"ucp-status-on\" class=\"ucp-status-btn\">ON</span></a>\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"ucp-preview\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"ucp-preview\";s:5:\"title\";s:12:\"Vista previa\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:37:\"https://shapinetwork.com/?ucp_preview\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:6:\"target\";s:5:\"blank\";}}s:12:\"ucp-settings\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"ucp-settings\";s:5:\"title\";s:7:\"Ajustes\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}}s:52:\"mw_adminimize_disabled_admin_bar_administrator_items\";a:0:{}s:45:\"mw_adminimize_disabled_admin_bar_editor_items\";a:0:{}s:45:\"mw_adminimize_disabled_admin_bar_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_admin_bar_contributor_items\";a:0:{}s:49:\"mw_adminimize_disabled_admin_bar_subscriber_items\";a:0:{}s:47:\"mw_adminimize_disabled_admin_bar_customer_items\";a:0:{}s:51:\"mw_adminimize_disabled_admin_bar_shop_manager_items\";a:0:{}s:19:\"mw_adminimize_debug\";i:0;s:28:\"mw_adminimize_multiple_roles\";i:0;s:29:\"mw_adminimize_support_bbpress\";i:0;s:33:\"mw_adminimize_prevent_page_access\";i:0;s:38:\"mw_adminimize_admin_bar_frontend_nodes\";a:34:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:360:\"<img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=64&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\' /><span class=\'display-name\'>Shapinetwork</span><span class=\'username\'>shapinetadmin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:16:\"Editar mi perfil\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:5:\"Salir\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:70:\"https://shapinetwork.com/acceso/?action=logout&amp;_wpnonce=ae66835e5d\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"search\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"search\";s:5:\"title\";s:311:\"<form action=\"https://shapinetwork.com/\" method=\"get\" id=\"adminbarsearch\"><input class=\"adminbar-input\" name=\"s\" id=\"adminbar-search\" type=\"text\" value=\"\" maxlength=\"150\" /><label for=\"adminbar-search\" class=\"screen-reader-text\">Buscar</label><input type=\"submit\" class=\"adminbar-button\" value=\"Buscar\"/></form>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:2:{s:5:\"class\";s:16:\"admin-bar-search\";s:8:\"tabindex\";i:-1;}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:322:\"Hola, <span class=\"display-name\">Shapinetwork</span><img alt=\'\' src=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=26&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/b7999da42ed48b2d790650d53dfd67f6?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\' />\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:19:\"Acerca de WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:43:\"https://shapinetwork.com/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:25:\"https://es.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:14:\"Documentación\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:7:\"Soporte\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:33:\"https://es.wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:11:\"Sugerencias\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:71:\"https://es.wordpress.org/support/forum/comunidad/peticiones-y-feedback/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:12:\"shapinetwork\";s:6:\"parent\";b:0;s:4:\"href\";s:34:\"https://shapinetwork.com/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"dashboard\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"dashboard\";s:5:\"title\";s:10:\"Escritorio\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:34:\"https://shapinetwork.com/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"appearance\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"appearance\";s:5:\"title\";b:0;s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:6:\"themes\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"themes\";s:5:\"title\";s:5:\"Temas\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:44:\"https://shapinetwork.com/wp-admin/themes.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:7:\"widgets\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"widgets\";s:5:\"title\";s:7:\"Widgets\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:45:\"https://shapinetwork.com/wp-admin/widgets.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"menus\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"menus\";s:5:\"title\";s:6:\"Menús\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:47:\"https://shapinetwork.com/wp-admin/nav-menus.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"background\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"background\";s:5:\"title\";s:5:\"Fondo\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:67:\"https://shapinetwork.com/wp-admin/themes.php?page=custom-background\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:17:\"hide-if-customize\";}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:210:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text comments-in-moderation-text\">0 comentarios en moderación</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:51:\"https://shapinetwork.com/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:7:\"Entrada\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Medio\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:47:\"https://shapinetwork.com/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:7:\"Página\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:61:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-project\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-project\";s:5:\"title\";s:8:\"Proyecto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=project\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-product\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-product\";s:5:\"title\";s:8:\"Producto\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:64:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=product\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"new-shop_order\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"new-shop_order\";s:5:\"title\";s:6:\"Pedido\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:67:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_order\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:15:\"new-shop_coupon\";O:8:\"stdClass\":6:{s:2:\"id\";s:15:\"new-shop_coupon\";s:5:\"title\";s:6:\"Cupón\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:68:\"https://shapinetwork.com/wp-admin/post-new.php?post_type=shop_coupon\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:7:\"Usuario\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://shapinetwork.com/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}s:20:\"customize-divi-theme\";O:8:\"stdClass\":6:{s:2:\"id\";s:20:\"customize-divi-theme\";s:5:\"title\";s:23:\"Personalizador de temas\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:116:\"https://shapinetwork.com/wp-admin/customize.php?url=https%3A%2F%2Fshapinetwork.com%2F&et_customizer_option_set=theme\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:20:\"hide-if-no-customize\";}}s:23:\"under-construction-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:23:\"under-construction-page\";s:5:\"title\";s:347:\"<img style=\"height: 17px; margin-bottom: -4px; padding-right: 3px;\" src=\"https://shapinetwork.com/wp-content/plugins/under-construction-page/images/ucp_icon.png\" alt=\"Modo en construcción activado\" title=\"Modo en construcción activado\"> <span class=\"ab-label\">UnderConstruction <i class=\"ucp-status-dot ucp-status-dot-enabled\">&#9679;</i></span>\";s:6:\"parent\";s:0:\"\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"ucp-enabled\";}}s:10:\"ucp-status\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"ucp-status\";s:5:\"title\";s:320:\"Modo en construcción<a href=\"https://shapinetwork.com/wp-admin/admin.php?action=ucp_change_status&amp;new_status=disabled&amp;redirect=%2F&amp;_wpnonce=9b13c3d28a\" id=\"ucp-status-wrapper\" class=\"on\"><span id=\"ucp-status-off\" class=\"ucp-status-btn\">OFF</span><span id=\"ucp-status-on\" class=\"ucp-status-btn\">ON</span></a>\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"ucp-preview\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"ucp-preview\";s:5:\"title\";s:12:\"Vista previa\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:37:\"https://shapinetwork.com/?ucp_preview\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:6:\"target\";s:5:\"blank\";}}s:12:\"ucp-settings\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"ucp-settings\";s:5:\"title\";s:7:\"Ajustes\";s:6:\"parent\";s:23:\"under-construction-page\";s:4:\"href\";s:62:\"https://shapinetwork.com/wp-admin/options-general.php?page=ucp\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}}s:61:\"mw_adminimize_disabled_admin_bar_frontend_administrator_items\";a:0:{}s:54:\"mw_adminimize_disabled_admin_bar_frontend_editor_items\";a:0:{}s:54:\"mw_adminimize_disabled_admin_bar_frontend_author_items\";a:0:{}s:59:\"mw_adminimize_disabled_admin_bar_frontend_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_admin_bar_frontend_subscriber_items\";a:0:{}s:56:\"mw_adminimize_disabled_admin_bar_frontend_customer_items\";a:0:{}s:60:\"mw_adminimize_disabled_admin_bar_frontend_shop_manager_items\";a:0:{}s:24:\"_mw_adminimize_user_info\";i:0;s:21:\"_mw_adminimize_footer\";i:0;s:21:\"_mw_adminimize_header\";i:0;s:34:\"_mw_adminimize_exclude_super_admin\";i:0;s:24:\"_mw_adminimize_tb_window\";i:0;s:23:\"_mw_adminimize_cat_full\";i:0;s:26:\"_mw_adminimize_db_redirect\";i:0;s:26:\"_mw_adminimize_ui_redirect\";i:0;s:21:\"_mw_adminimize_advice\";i:0;s:25:\"_mw_adminimize_advice_txt\";s:0:\"\";s:24:\"_mw_adminimize_timestamp\";i:0;s:30:\"_mw_adminimize_db_redirect_txt\";s:0:\"\";s:47:\"mw_adminimize_disabled_menu_administrator_items\";a:0:{}s:50:\"mw_adminimize_disabled_submenu_administrator_items\";a:0:{}s:40:\"mw_adminimize_disabled_menu_editor_items\";a:0:{}s:43:\"mw_adminimize_disabled_submenu_editor_items\";a:0:{}s:40:\"mw_adminimize_disabled_menu_author_items\";a:0:{}s:43:\"mw_adminimize_disabled_submenu_author_items\";a:0:{}s:45:\"mw_adminimize_disabled_menu_contributor_items\";a:0:{}s:48:\"mw_adminimize_disabled_submenu_contributor_items\";a:0:{}s:44:\"mw_adminimize_disabled_menu_subscriber_items\";a:0:{}s:47:\"mw_adminimize_disabled_submenu_subscriber_items\";a:0:{}s:42:\"mw_adminimize_disabled_menu_customer_items\";a:0:{}s:45:\"mw_adminimize_disabled_submenu_customer_items\";a:0:{}s:46:\"mw_adminimize_disabled_menu_shop_manager_items\";a:7:{i:0;s:32:\"wc-admin&path=/analytics/revenue\";i:1;s:10:\"separator2\";i:2;s:11:\"plugins.php\";i:3;s:9:\"tools.php\";i:4;s:19:\"options-general.php\";i:5;s:14:\"separator-last\";i:6;s:21:\"et_ghost_divi_options\";}s:49:\"mw_adminimize_disabled_submenu_shop_manager_items\";a:4:{i:0;s:13:\"index.php__10\";i:1;s:14:\"woocommerce__5\";i:2;s:14:\"woocommerce__6\";i:3;s:14:\"woocommerce__7\";}s:28:\"_mw_adminimize_own_menu_slug\";s:0:\"\";s:35:\"_mw_adminimize_own_menu_custom_slug\";s:0:\"\";s:56:\"mw_adminimize_disabled_global_option_administrator_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_post_administrator_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_page_administrator_items\";a:0:{}s:60:\"mw_adminimize_disabled_metaboxes_project_administrator_items\";a:0:{}s:60:\"mw_adminimize_disabled_metaboxes_product_administrator_items\";a:0:{}s:54:\"mw_adminimize_disabled_link_option_administrator_items\";a:0:{}s:58:\"mw_adminimize_disabled_nav_menu_option_administrator_items\";a:0:{}s:56:\"mw_adminimize_disabled_widget_option_administrator_items\";a:0:{}s:59:\"mw_adminimize_disabled_dashboard_option_administrator_items\";a:0:{}s:49:\"mw_adminimize_disabled_global_option_editor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_post_editor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_page_editor_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_project_editor_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_product_editor_items\";a:0:{}s:47:\"mw_adminimize_disabled_link_option_editor_items\";a:0:{}s:51:\"mw_adminimize_disabled_nav_menu_option_editor_items\";a:0:{}s:49:\"mw_adminimize_disabled_widget_option_editor_items\";a:0:{}s:52:\"mw_adminimize_disabled_dashboard_option_editor_items\";a:0:{}s:49:\"mw_adminimize_disabled_global_option_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_post_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_page_author_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_project_author_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_product_author_items\";a:0:{}s:47:\"mw_adminimize_disabled_link_option_author_items\";a:0:{}s:51:\"mw_adminimize_disabled_nav_menu_option_author_items\";a:0:{}s:49:\"mw_adminimize_disabled_widget_option_author_items\";a:0:{}s:52:\"mw_adminimize_disabled_dashboard_option_author_items\";a:0:{}s:54:\"mw_adminimize_disabled_global_option_contributor_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_post_contributor_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_page_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_project_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_product_contributor_items\";a:0:{}s:52:\"mw_adminimize_disabled_link_option_contributor_items\";a:0:{}s:56:\"mw_adminimize_disabled_nav_menu_option_contributor_items\";a:0:{}s:54:\"mw_adminimize_disabled_widget_option_contributor_items\";a:0:{}s:57:\"mw_adminimize_disabled_dashboard_option_contributor_items\";a:0:{}s:53:\"mw_adminimize_disabled_global_option_subscriber_items\";a:0:{}s:54:\"mw_adminimize_disabled_metaboxes_post_subscriber_items\";a:0:{}s:54:\"mw_adminimize_disabled_metaboxes_page_subscriber_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_project_subscriber_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_product_subscriber_items\";a:0:{}s:51:\"mw_adminimize_disabled_link_option_subscriber_items\";a:0:{}s:55:\"mw_adminimize_disabled_nav_menu_option_subscriber_items\";a:0:{}s:53:\"mw_adminimize_disabled_widget_option_subscriber_items\";a:0:{}s:56:\"mw_adminimize_disabled_dashboard_option_subscriber_items\";a:0:{}s:51:\"mw_adminimize_disabled_global_option_customer_items\";a:0:{}s:52:\"mw_adminimize_disabled_metaboxes_post_customer_items\";a:0:{}s:52:\"mw_adminimize_disabled_metaboxes_page_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_project_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_product_customer_items\";a:0:{}s:49:\"mw_adminimize_disabled_link_option_customer_items\";a:0:{}s:53:\"mw_adminimize_disabled_nav_menu_option_customer_items\";a:0:{}s:51:\"mw_adminimize_disabled_widget_option_customer_items\";a:0:{}s:54:\"mw_adminimize_disabled_dashboard_option_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_global_option_shop_manager_items\";a:0:{}s:56:\"mw_adminimize_disabled_metaboxes_post_shop_manager_items\";a:0:{}s:56:\"mw_adminimize_disabled_metaboxes_page_shop_manager_items\";a:0:{}s:59:\"mw_adminimize_disabled_metaboxes_project_shop_manager_items\";a:0:{}s:59:\"mw_adminimize_disabled_metaboxes_product_shop_manager_items\";a:0:{}s:53:\"mw_adminimize_disabled_link_option_shop_manager_items\";a:0:{}s:57:\"mw_adminimize_disabled_nav_menu_option_shop_manager_items\";a:0:{}s:55:\"mw_adminimize_disabled_widget_option_shop_manager_items\";a:0:{}s:58:\"mw_adminimize_disabled_dashboard_option_shop_manager_items\";a:0:{}s:25:\"_mw_adminimize_own_values\";s:0:\"\";s:26:\"_mw_adminimize_own_options\";s:0:\"\";s:30:\"_mw_adminimize_own_post_values\";s:0:\"\";s:31:\"_mw_adminimize_own_post_options\";s:0:\"\";s:30:\"_mw_adminimize_own_page_values\";s:0:\"\";s:31:\"_mw_adminimize_own_page_options\";s:0:\"\";s:33:\"_mw_adminimize_own_values_project\";s:0:\"\";s:34:\"_mw_adminimize_own_options_project\";s:0:\"\";s:33:\"_mw_adminimize_own_values_product\";s:0:\"\";s:34:\"_mw_adminimize_own_options_product\";s:0:\"\";s:30:\"_mw_adminimize_own_link_values\";s:0:\"\";s:31:\"_mw_adminimize_own_link_options\";s:0:\"\";s:34:\"_mw_adminimize_own_nav_menu_values\";s:0:\"\";s:35:\"_mw_adminimize_own_nav_menu_options\";s:0:\"\";s:32:\"_mw_adminimize_own_widget_values\";s:0:\"\";s:33:\"_mw_adminimize_own_widget_options\";s:0:\"\";s:35:\"_mw_adminimize_own_dashboard_values\";s:0:\"\";s:36:\"_mw_adminimize_own_dashboard_options\";s:0:\"\";s:31:\"mw_adminimize_dashboard_widgets\";a:8:{s:17:\"dashboard_php_nag\";a:4:{s:2:\"id\";s:17:\"dashboard_php_nag\";s:5:\"title\";s:27:\"Es necesario actualizar PHP\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"high\";}s:19:\"dashboard_right_now\";a:4:{s:2:\"id\";s:19:\"dashboard_right_now\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:18:\"dashboard_activity\";a:4:{s:2:\"id\";s:18:\"dashboard_activity\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:22:\"tribe_dashboard_widget\";a:4:{s:2:\"id\";s:22:\"tribe_dashboard_widget\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:21:\"dashboard_quick_press\";a:4:{s:2:\"id\";s:21:\"dashboard_quick_press\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:17:\"dashboard_primary\";a:4:{s:2:\"id\";s:17:\"dashboard_primary\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:8:\"advanced\";s:8:\"priority\";s:3:\"low\";}s:36:\"woocommerce_dashboard_recent_reviews\";a:4:{s:2:\"id\";s:36:\"woocommerce_dashboard_recent_reviews\";s:5:\"title\";s:41:\"Valoraciones recientes de Sinergia Market\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:28:\"woocommerce_dashboard_status\";a:4:{s:2:\"id\";s:28:\"woocommerce_dashboard_status\";s:5:\"title\";s:25:\"Estado de Sinergia Market\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}}s:26:\"mw_adminimize_default_menu\";a:19:{i:0;a:7:{i:0;s:10:\"Escritorio\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";i:3;s:0:\"\";i:4;s:72:\"menu-top menu-top-first menu-icon-dashboard menu-top-first menu-top-last\";i:5;s:14:\"menu-dashboard\";i:6;s:19:\"dashicons-dashboard\";}i:1;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator1\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:2;a:7:{i:0;s:8:\"Entradas\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";i:3;s:0:\"\";i:4;s:52:\"menu-top menu-icon-post open-if-no-js menu-top-first\";i:5;s:10:\"menu-posts\";i:6;s:20:\"dashicons-admin-post\";}i:3;a:7:{i:0;s:6:\"Medios\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-media\";i:5;s:10:\"menu-media\";i:6;s:21:\"dashicons-admin-media\";}i:4;a:7:{i:0;s:8:\"Páginas\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";i:3;s:0:\"\";i:4;s:23:\"menu-top menu-icon-page\";i:5;s:10:\"menu-pages\";i:6;s:20:\"dashicons-admin-page\";}i:5;a:7:{i:0;s:205:\"Comentarios <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 comentarios en moderación</span></span>\";i:1;s:10:\"edit_posts\";i:2;s:17:\"edit-comments.php\";i:3;s:0:\"\";i:4;s:27:\"menu-top menu-icon-comments\";i:5;s:13:\"menu-comments\";i:6;s:24:\"dashicons-admin-comments\";}i:6;a:7:{i:0;s:9:\"Proyectos\";i:1;s:10:\"edit_posts\";i:2;s:26:\"edit.php?post_type=project\";i:3;s:0:\"\";i:4;s:40:\"menu-top menu-icon-project menu-top-last\";i:5;s:18:\"menu-posts-project\";i:6;s:20:\"dashicons-admin-post\";}i:7;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:21:\"separator-woocommerce\";i:3;s:0:\"\";i:4;s:29:\"wp-menu-separator woocommerce\";}i:8;a:7:{i:0;s:15:\"Sinergia Market\";i:1;s:18:\"manage_woocommerce\";i:2;s:11:\"woocommerce\";i:3;s:15:\"Sinergia Market\";i:4;s:67:\"menu-top menu-icon-generic toplevel_page_woocommerce menu-top-first\";i:5;s:25:\"toplevel_page_woocommerce\";i:6;s:76:\"https://sinergiared.com/wp-content/uploads/2018/11/icono-market-sinergia.png\";}i:9;a:7:{i:0;s:9:\"Productos\";i:1;s:13:\"edit_products\";i:2;s:26:\"edit.php?post_type=product\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-product\";i:5;s:18:\"menu-posts-product\";i:6;s:20:\"dashicons-admin-post\";}i:10;a:7:{i:0;s:9:\"Análisis\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/revenue\";i:3;s:9:\"Análisis\";i:4;s:69:\"menu-top toplevel_page_wc-admin&path=/analytics/revenue menu-top-last\";i:5;s:46:\"toplevel_page_wc-admin&path=/analytics/revenue\";i:6;s:19:\"dashicons-chart-bar\";}i:11;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator2\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:12;a:7:{i:0;s:10:\"Apariencia\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";i:3;s:0:\"\";i:4;s:44:\"menu-top menu-icon-appearance menu-top-first\";i:5;s:15:\"menu-appearance\";i:6;s:26:\"dashicons-admin-appearance\";}i:13;a:7:{i:0;s:87:\"Plugins <span class=\"update-plugins count-0\"><span class=\"plugin-count\">0</span></span>\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-plugins\";i:5;s:12:\"menu-plugins\";i:6;s:23:\"dashicons-admin-plugins\";}i:14;a:7:{i:0;s:8:\"Usuarios\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-users\";i:5;s:10:\"menu-users\";i:6;s:21:\"dashicons-admin-users\";}i:15;a:7:{i:0;s:12:\"Herramientas\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-tools\";i:5;s:10:\"menu-tools\";i:6;s:21:\"dashicons-admin-tools\";}i:16;a:7:{i:0;s:97:\"Ajustes<span class=\'update-plugins rsssl-update-count\'><span class=\'update-count\'>1</span></span>\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";i:3;s:0:\"\";i:4;s:41:\"menu-top menu-icon-settings menu-top-last\";i:5;s:13:\"menu-settings\";i:6;s:24:\"dashicons-admin-settings\";}i:17;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:14:\"separator-last\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:18;a:7:{i:0;s:8:\"Sinergia\";i:1;s:13:\"switch_themes\";i:2;s:21:\"et_ghost_divi_options\";i:3;s:8:\"Sinergia\";i:4;s:91:\"menu-top menu-icon-generic toplevel_page_et_ghost_divi_options menu-top-first menu-top-last\";i:5;s:35:\"toplevel_page_et_ghost_divi_options\";i:6;s:23:\"dashicons-admin-generic\";}}s:29:\"mw_adminimize_default_submenu\";a:14:{s:9:\"index.php\";a:2:{i:0;a:3:{i:0;s:6:\"Inicio\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";}i:10;a:3:{i:0;s:95:\"Actualizaciones <span class=\"update-plugins count-0\"><span class=\"update-count\">0</span></span>\";i:1;s:11:\"update_core\";i:2;s:15:\"update-core.php\";}}s:10:\"upload.php\";a:2:{i:5;a:3:{i:0;s:10:\"Biblioteca\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:12:\"upload_files\";i:2;s:13:\"media-new.php\";}}s:8:\"edit.php\";a:4:{i:5;a:3:{i:0;s:18:\"Todas las entradas\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";}i:10;a:3:{i:0;s:13:\"Añadir nueva\";i:1;s:10:\"edit_posts\";i:2;s:12:\"post-new.php\";}i:15;a:3:{i:0;s:11:\"Categorías\";i:1;s:17:\"manage_categories\";i:2;s:31:\"edit-tags.php?taxonomy=category\";}i:16;a:3:{i:0;s:9:\"Etiquetas\";i:1;s:16:\"manage_post_tags\";i:2;s:31:\"edit-tags.php?taxonomy=post_tag\";}}s:23:\"edit.php?post_type=page\";a:2:{i:5;a:3:{i:0;s:18:\"Todas las páginas\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";}i:10;a:3:{i:0;s:13:\"Añadir nueva\";i:1;s:10:\"edit_pages\";i:2;s:27:\"post-new.php?post_type=page\";}}s:26:\"edit.php?post_type=project\";a:4:{i:5;a:3:{i:0;s:19:\"Todos Los Proyectos\";i:1;s:10:\"edit_posts\";i:2;s:26:\"edit.php?post_type=project\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:10:\"edit_posts\";i:2;s:30:\"post-new.php?post_type=project\";}i:15;a:3:{i:0;s:11:\"Categorías\";i:1;s:17:\"manage_categories\";i:2;s:61:\"edit-tags.php?taxonomy=project_category&amp;post_type=project\";}i:16;a:3:{i:0;s:9:\"Etiquetas\";i:1;s:17:\"manage_categories\";i:2;s:56:\"edit-tags.php?taxonomy=project_tag&amp;post_type=project\";}}s:26:\"edit.php?post_type=product\";a:5:{i:5;a:3:{i:0;s:19:\"Todos los productos\";i:1;s:13:\"edit_products\";i:2;s:26:\"edit.php?post_type=product\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:13:\"edit_products\";i:2;s:30:\"post-new.php?post_type=product\";}i:15;a:3:{i:0;s:11:\"Categorías\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_cat&amp;post_type=product\";}i:16;a:3:{i:0;s:9:\"Etiquetas\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_tag&amp;post_type=product\";}i:17;a:4:{i:0;s:9:\"Atributos\";i:1;s:20:\"manage_product_terms\";i:2;s:18:\"product_attributes\";i:3;s:9:\"Atributos\";}}s:10:\"themes.php\";a:7:{i:5;a:3:{i:0;s:5:\"Temas\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";}i:6;a:5:{i:0;s:12:\"Personalizar\";i:1;s:9:\"customize\";i:2;s:82:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dadminimize-options\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:7;a:3:{i:0;s:7:\"Widgets\";i:1;s:18:\"edit_theme_options\";i:2;s:11:\"widgets.php\";}i:10;a:3:{i:0;s:6:\"Menús\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"nav-menus.php\";}i:20;a:5:{i:0;s:5:\"Fondo\";i:1;s:13:\"switch_themes\";i:2;s:127:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dadminimize-options&#038;autofocus%5Bcontrol%5D=background_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:21;a:4:{i:0;s:5:\"Fondo\";i:1;s:18:\"edit_theme_options\";i:2;s:17:\"custom-background\";i:3;s:5:\"Fondo\";}i:22;a:4:{i:0;s:15:\"Editor de temas\";i:1;s:11:\"edit_themes\";i:2;s:16:\"theme-editor.php\";i:3;s:15:\"Editor de temas\";}}s:11:\"plugins.php\";a:3:{i:5;a:3:{i:0;s:18:\"Plugins instalados\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:15:\"install_plugins\";i:2;s:18:\"plugin-install.php\";}i:15;a:3:{i:0;s:17:\"Editor de plugins\";i:1;s:12:\"edit_plugins\";i:2;s:17:\"plugin-editor.php\";}}s:9:\"users.php\";a:3:{i:5;a:3:{i:0;s:18:\"Todos los usuarios\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";}i:10;a:3:{i:0;s:13:\"Añadir nuevo\";i:1;s:12:\"create_users\";i:2;s:12:\"user-new.php\";}i:15;a:3:{i:0;s:9:\"Tu perfil\";i:1;s:4:\"read\";i:2;s:11:\"profile.php\";}}s:9:\"tools.php\";a:7:{i:5;a:3:{i:0;s:24:\"Herramientas disponibles\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";}i:10;a:3:{i:0;s:8:\"Importar\";i:1;s:6:\"import\";i:2;s:10:\"import.php\";}i:15;a:3:{i:0;s:8:\"Exportar\";i:1;s:6:\"export\";i:2;s:10:\"export.php\";}i:20;a:3:{i:0;s:15:\"Salud del sitio\";i:1;s:23:\"view_site_health_checks\";i:2;s:15:\"site-health.php\";}i:25;a:3:{i:0;s:29:\"Exportar los datos personales\";i:1;s:27:\"export_others_personal_data\";i:2;s:24:\"export-personal-data.php\";}i:30;a:3:{i:0;s:27:\"Borrar los datos personales\";i:1;s:26:\"erase_others_personal_data\";i:2;s:23:\"erase-personal-data.php\";}i:31;a:4:{i:0;s:20:\"Acciones programadas\";i:1;s:14:\"manage_options\";i:2;s:16:\"action-scheduler\";i:3;s:20:\"Acciones programadas\";}}s:19:\"options-general.php\";a:11:{i:10;a:3:{i:0;s:9:\"Generales\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";}i:15;a:3:{i:0;s:9:\"Escritura\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-writing.php\";}i:20;a:3:{i:0;s:7:\"Lectura\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-reading.php\";}i:25;a:3:{i:0;s:11:\"Comentarios\";i:1;s:14:\"manage_options\";i:2;s:22:\"options-discussion.php\";}i:30;a:3:{i:0;s:6:\"Medios\";i:1;s:14:\"manage_options\";i:2;s:17:\"options-media.php\";}i:40;a:3:{i:0;s:19:\"Enlaces permanentes\";i:1;s:14:\"manage_options\";i:2;s:21:\"options-permalink.php\";}i:45;a:3:{i:0;s:10:\"Privacidad\";i:1;s:22:\"manage_privacy_options\";i:2;s:19:\"options-privacy.php\";}i:46;a:4:{i:0;s:10:\"Adminimize\";i:1;s:14:\"manage_options\";i:2;s:18:\"adminimize-options\";i:3;s:22:\"Opciones de Adminimize\";}i:47;a:4:{i:0;s:17:\"Disable Gutenberg\";i:1;s:14:\"manage_options\";i:2;s:17:\"disable-gutenberg\";i:3;s:17:\"Disable Gutenberg\";}i:48;a:4:{i:0;s:17:\"UnderConstruction\";i:1;s:14:\"manage_options\";i:2;s:3:\"ucp\";i:3;s:17:\"UnderConstruction\";}i:49;a:4:{i:0;s:93:\"SSL<span class=\'update-plugins rsssl-update-count\'><span class=\'update-count\'>1</span></span>\";i:1;s:16:\"activate_plugins\";i:2;s:25:\"rlrsssl_really_simple_ssl\";i:3;s:11:\"Ajustes SSL\";}}s:11:\"woocommerce\";a:8:{i:0;a:4:{i:0;s:10:\"Escritorio\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:8:\"wc-admin\";i:3;s:10:\"Escritorio\";}i:1;a:4:{i:0;s:7:\"Pedidos\";i:1;s:16:\"edit_shop_orders\";i:2;s:29:\"edit.php?post_type=shop_order\";i:3;s:7:\"Pedidos\";}i:2;a:4:{i:0;s:7:\"Cupones\";i:1;s:17:\"edit_shop_coupons\";i:2;s:30:\"edit.php?post_type=shop_coupon\";i:3;s:7:\"Cupones\";}i:3;a:4:{i:0;s:8:\"Clientes\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:24:\"wc-admin&path=/customers\";i:3;s:8:\"Clientes\";}i:4;a:4:{i:0;s:8:\"Informes\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:10:\"wc-reports\";i:3;s:8:\"Informes\";}i:5;a:4:{i:0;s:7:\"Ajustes\";i:1;s:18:\"manage_woocommerce\";i:2;s:11:\"wc-settings\";i:3;s:26:\"Ajustes de Sinergia Market\";}i:6;a:4:{i:0;s:6:\"Estado\";i:1;s:18:\"manage_woocommerce\";i:2;s:9:\"wc-status\";i:3;s:25:\"Estado de Sinergia Market\";}i:7;a:4:{i:0;s:12:\"Extensiones \";i:1;s:18:\"manage_woocommerce\";i:2;s:9:\"wc-addons\";i:3;s:30:\"Extensiones de Sinergia Market\";}}s:32:\"wc-admin&path=/analytics/revenue\";a:9:{i:0;a:4:{i:0;s:8:\"Ingresos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/revenue\";i:3;s:8:\"Ingresos\";}i:1;a:4:{i:0;s:7:\"Pedidos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:31:\"wc-admin&path=/analytics/orders\";i:3;s:7:\"Pedidos\";}i:2;a:4:{i:0;s:9:\"Productos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:33:\"wc-admin&path=/analytics/products\";i:3;s:9:\"Productos\";}i:3;a:4:{i:0;s:11:\"Categorías\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:35:\"wc-admin&path=/analytics/categories\";i:3;s:11:\"Categorías\";}i:4;a:4:{i:0;s:7:\"Cupones\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/coupons\";i:3;s:7:\"Cupones\";}i:5;a:4:{i:0;s:9:\"Impuestos\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:30:\"wc-admin&path=/analytics/taxes\";i:3;s:9:\"Impuestos\";}i:6;a:4:{i:0;s:9:\"Descargas\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:34:\"wc-admin&path=/analytics/downloads\";i:3;s:9:\"Descargas\";}i:7;a:4:{i:0;s:10:\"Inventario\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:30:\"wc-admin&path=/analytics/stock\";i:3;s:10:\"Inventario\";}i:8;a:4:{i:0;s:7:\"Ajustes\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:33:\"wc-admin&path=/analytics/settings\";i:3;s:7:\"Ajustes\";}}s:21:\"et_ghost_divi_options\";a:5:{i:0;a:4:{i:0;s:17:\"Opciones del tema\";i:1;s:14:\"manage_options\";i:2;s:21:\"et_ghost_divi_options\";i:3;s:17:\"Opciones del tema\";}i:1;a:4:{i:0;s:23:\"Personalizador de temas\";i:1;s:14:\"manage_options\";i:2;s:44:\"customize.php?et_customizer_option_set=theme\";i:3;s:23:\"Personalizador de temas\";}i:2;a:4:{i:0;s:13:\"Editor de Rol\";i:1;s:14:\"manage_options\";i:2;s:25:\"et_ghost_divi_role_editor\";i:3;s:13:\"Editor de Rol\";}i:3;a:4:{i:0;s:22:\"Biblioteca de Sinergia\";i:1;s:14:\"manage_options\";i:2;s:31:\"edit.php?post_type=et_pb_layout\";i:3;s:22:\"Biblioteca de Sinergia\";}i:4;a:4:{i:0;s:14:\"Support Center\";i:1;s:14:\"manage_options\";i:2;s:17:\"et_support_center\";i:3;s:14:\"Support Center\";}}}}', 'yes'),
(123, 'WPLANG', 'es_ES', 'yes'),
(3565, '_transient_woocommerce_reports-transient-version', '1595524304', 'yes'),
(583, 'woocommerce_sales_record_date', '2020-03-26', 'yes'),
(584, 'woocommerce_sales_record_amount', '340', 'yes'),
(588, 'woocommerce_tracker_last_send', '1600137724', 'yes'),
(23075, '_transient_timeout__woocommerce_helper_subscriptions', '1600392698', 'no'),
(23076, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(23086, '_transient_doing_cron', '1602814965.9505109786987304687500', 'yes'),
(144, 'can_compress_scripts', '1', 'no'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'nav_menu_roles_db_version', '1.10.2', 'yes'),
(246, 'woocommerce_price_display_suffix', '', 'yes'),
(247, 'woocommerce_tax_total_display', 'itemized', 'no'),
(248, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(249, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(164, 'rlrsssl_options', 'a:16:{s:12:\"site_has_ssl\";b:1;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:19:\"review_notice_shown\";b:0;s:25:\"ssl_success_message_shown\";b:1;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:5:\"3.3.4\";s:5:\"debug\";b:0;s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:1;s:19:\"javascript_redirect\";b:0;s:11:\"wp_redirect\";b:1;s:31:\"switch_mixed_content_fixer_hook\";b:0;s:19:\"dismiss_all_notices\";b:0;s:21:\"dismiss_review_notice\";b:0;}', 'yes'),
(239, 'woocommerce_prices_include_tax', 'no', 'yes'),
(240, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(241, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(242, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(196, 'woocommerce_store_address', 'cale 1', 'yes'),
(197, 'woocommerce_store_address_2', '', 'yes'),
(198, 'woocommerce_store_city', 'lima', 'yes'),
(199, 'woocommerce_default_country', 'PE:APU', 'yes'),
(200, 'woocommerce_store_postcode', '111', 'yes'),
(201, 'woocommerce_allowed_countries', 'all', 'yes'),
(202, 'woocommerce_all_except_countries', '', 'yes'),
(203, 'woocommerce_specific_allowed_countries', '', 'yes'),
(243, 'woocommerce_tax_classes', '', 'yes'),
(244, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(245, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(313, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(314, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"RfSYNa2EW19iMGnk2rkna4zhxQtfMhTX\";}', 'yes'),
(172, 'rsssl_activation_timestamp', '1585254193', 'yes'),
(311, 'action_scheduler_lock_async-request-runner', '1602815027', 'yes'),
(191, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(192, 'schema-ActionScheduler_StoreSchema', '3.0.1585254934', 'yes'),
(193, 'schema-ActionScheduler_LoggerSchema', '2.0.1585254934', 'yes'),
(204, 'woocommerce_ship_to_countries', '', 'yes'),
(205, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(206, 'woocommerce_default_customer_address', 'base', 'yes'),
(207, 'woocommerce_calc_taxes', 'no', 'yes'),
(208, 'woocommerce_enable_coupons', 'yes', 'yes'),
(209, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(210, 'woocommerce_currency', 'PEN', 'yes'),
(211, 'woocommerce_currency_pos', 'left', 'yes'),
(212, 'woocommerce_price_thousand_sep', ',', 'yes'),
(213, 'woocommerce_price_decimal_sep', '.', 'yes'),
(214, 'woocommerce_price_num_decimals', '2', 'yes'),
(215, 'woocommerce_shop_page_id', '8', 'yes'),
(216, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(217, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(218, 'woocommerce_placeholder_image', '7', 'yes'),
(219, 'woocommerce_weight_unit', 'kg', 'yes'),
(220, 'woocommerce_dimension_unit', 'cm', 'yes'),
(221, 'woocommerce_enable_reviews', 'yes', 'yes'),
(222, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(223, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(224, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(225, 'woocommerce_review_rating_required', 'yes', 'no'),
(226, 'woocommerce_manage_stock', 'yes', 'yes'),
(227, 'woocommerce_hold_stock_minutes', '60', 'no'),
(228, 'woocommerce_notify_low_stock', 'yes', 'no'),
(229, 'woocommerce_notify_no_stock', 'yes', 'no'),
(230, 'woocommerce_stock_email_recipient', 'admin@shapinetwork.com', 'no'),
(231, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(232, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(233, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(234, 'woocommerce_stock_format', '', 'yes'),
(235, 'woocommerce_file_download_method', 'force', 'no'),
(236, 'woocommerce_downloads_require_login', 'no', 'no'),
(237, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(238, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(449, '_site_transient_et_update_all_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1595524647;}', 'no'),
(450, 'ucp_pointers', 'a:1:{s:15:\"getting_started\";a:4:{s:6:\"target\";s:29:\".ucp-main-tab li:nth-child(2)\";s:4:\"edge\";s:3:\"top\";s:5:\"align\";s:4:\"left\";s:7:\"content\";s:414:\"Watch the short <a href=\"https://www.youtube.com/watch?v=RN4XABhK7_w\" target=\"_blank\">getting started video</a> to get you up to speed with UCP in no time. If that doesn\'t answer your questions watch the longer <a href=\"https://www.youtube.com/watch?v=K3DF-NP6Fog\" target=\"_blank\">in-depth video walktrough</a>.<br>If you need the videos later, links are in the <a href=\"#\" class=\"change_tab\" data-tab=\"4\">FAQ</a>.\";}}', 'yes'),
(467, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(455, 'ucp_meta', 'a:3:{s:13:\"first_version\";s:4:\"3.65\";s:13:\"first_install\";i:1585257328;s:11:\"options_ver\";s:4:\"3.80\";}', 'yes'),
(457, 'adsdg_ultimate_theme', 'Divi', 'yes'),
(463, 'et_google_api_settings', 'a:3:{s:7:\"api_key\";s:0:\"\";s:26:\"enqueue_google_maps_script\";s:2:\"on\";s:16:\"use_google_fonts\";s:2:\"on\";}', 'yes'),
(250, 'woocommerce_ship_to_destination', 'billing', 'no'),
(251, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(252, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(253, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(254, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(255, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(256, 'woocommerce_registration_generate_username', 'yes', 'no'),
(257, 'woocommerce_registration_generate_password', 'yes', 'no'),
(258, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(259, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(260, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(261, 'woocommerce_registration_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web, gestionar el acceso a tu cuenta y otros propósitos descritos en nuestra [privacy_policy].', 'yes');
INSERT INTO `wp98_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(262, 'woocommerce_checkout_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web y otros propósitos descritos en nuestra [privacy_policy].', 'yes'),
(263, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(264, 'woocommerce_trash_pending_orders', '', 'no'),
(265, 'woocommerce_trash_failed_orders', '', 'no'),
(266, 'woocommerce_trash_cancelled_orders', '', 'no'),
(267, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(268, 'woocommerce_email_from_name', 'shapinetwork', 'no'),
(269, 'woocommerce_email_from_address', 'admin@shapinetwork.com', 'no'),
(270, 'woocommerce_email_header_image', '', 'no'),
(271, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(272, 'woocommerce_email_base_color', '#96588a', 'no'),
(273, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(274, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(275, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(276, 'woocommerce_cart_page_id', '9', 'no'),
(277, 'woocommerce_checkout_page_id', '10', 'no'),
(278, 'woocommerce_myaccount_page_id', '11', 'no'),
(279, 'woocommerce_terms_page_id', '', 'no'),
(280, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(281, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(282, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(283, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(284, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(285, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(286, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(287, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(288, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(289, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(290, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(291, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(292, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(293, 'woocommerce_api_enabled', 'no', 'yes'),
(294, 'woocommerce_allow_tracking', 'yes', 'no'),
(295, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(296, 'woocommerce_single_image_width', '600', 'yes'),
(297, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(298, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(299, 'woocommerce_demo_store', 'no', 'no'),
(300, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"producto\";s:13:\"category_base\";s:18:\"categoria-producto\";s:8:\"tag_base\";s:17:\"etiqueta-producto\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(301, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(302, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(20658, 'woocommerce_schema_version', '430', 'yes'),
(500, 'product_cat_children', 'a:0:{}', 'yes'),
(305, 'default_product_cat', '15', 'yes'),
(306, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(338, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(20659, 'woocommerce_version', '4.3.1', 'yes'),
(20660, 'woocommerce_db_version', '4.3.1', 'yes'),
(317, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(321, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(322, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(323, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(325, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(326, 'woocommerce_onboarding_opt_in', 'no', 'yes'),
(330, 'woocommerce_admin_install_timestamp', '1585254936', 'yes'),
(20704, 'woocommerce_admin_version', '1.3.1', 'yes'),
(334, 'action_scheduler_migration_status', 'complete', 'yes'),
(335, 'woocommerce_admin_last_orders_milestone', '1', 'yes'),
(336, 'woocommerce_onboarding_profile', 'a:1:{s:9:\"completed\";b:1;}', 'yes'),
(340, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(351, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(352, 'woocommerce_bacs_settings', 'a:10:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:30:\"Transferencia bancaria directa\";s:11:\"description\";s:202:\"Realiza tu pago directamente en nuestra cuenta bancaria. Por favor, usa el número del pedido como referencia de pago. Tu pedido no se procesará hasta que se haya recibido el importe en nuestra cuenta.\";s:12:\"instructions\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(353, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(359, '_transient_product_query-transient-version', '1598131696', 'yes'),
(343, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(346, 'woocommerce_product_type', 'both', 'yes'),
(347, 'woocommerce_sell_in_person', '1', 'yes'),
(354, '_transient_shipping-transient-version', '1585255058', 'yes'),
(364, 'hide-wc-extensions-message', '1', 'yes'),
(365, 'woocommerce_branding_name', 'Sinergia Market', 'yes'),
(360, '_transient_product-transient-version', '1585258701', 'yes'),
(366, 'woocommerce_branding_icon', 'https://sinergiared.com/wp-content/uploads/2018/11/icono-market-sinergia.png', 'yes'),
(367, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(404, 'current_theme', 'Divi', 'yes'),
(405, 'theme_mods_Divi', 'a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:14;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:2:{s:14:\"secondary-menu\";i:17;s:12:\"primary-menu\";i:16;}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:21:\"login_area_logo_image\";s:69:\"https://shapinetwork.com/wp-content/uploads/2020/03/logo_sinergia.png\";}', 'yes'),
(406, 'theme_switched', '', 'yes'),
(433, 'agsdg_settings', 'a:4:{s:13:\"branding_name\";s:8:\"Sinergia\";s:14:\"branding_image\";s:76:\"https://sinergiared.com/wp-content/uploads/2018/11/icono-market-sinergia.png\";s:10:\"theme_slug\";s:10:\"ghost_divi\";s:16:\"ultimate_ghoster\";s:3:\"yes\";}', 'yes'),
(407, 'et_pb_cache_notice', 'a:1:{s:6:\"3.26.6\";s:6:\"ignore\";}', 'yes'),
(412, 'et_core_version', '3.26.6', 'yes'),
(414, 'et_divi', 'a:252:{s:39:\"static_css_custom_css_safety_check_done\";b:1;s:23:\"2_5_flush_rewrite_rules\";s:4:\"done\";s:30:\"et_flush_rewrite_rules_library\";s:6:\"3.26.6\";s:31:\"divi_previous_installed_version\";s:0:\"\";s:29:\"divi_latest_installed_version\";s:6:\"3.26.6\";s:27:\"divi_skip_font_subset_force\";b:1;s:27:\"et_pb_clear_templates_cache\";b:1;s:23:\"builder_custom_defaults\";O:8:\"stdClass\":0:{}s:33:\"customizer_settings_migrated_flag\";b:1;s:34:\"builder_custom_defaults_unmigrated\";b:0;s:40:\"divi_email_provider_credentials_migrated\";b:1;s:15:\"divi_1_3_images\";s:7:\"checked\";s:21:\"et_pb_layouts_updated\";b:1;s:30:\"library_removed_legacy_layouts\";b:1;s:30:\"divi_2_4_documentation_message\";s:9:\"triggered\";s:9:\"divi_logo\";s:69:\"https://shapinetwork.com/wp-content/uploads/2020/03/logo_sinergia.png\";s:14:\"divi_fixed_nav\";s:2:\"on\";s:26:\"divi_gallery_layout_enable\";s:5:\"false\";s:18:\"divi_color_palette\";s:63:\"#000000|#ffffff|#e02b20|#e09900|#edf000|#7cda24|#0c71c3|#8300e9\";s:15:\"divi_grab_image\";s:5:\"false\";s:15:\"divi_blog_style\";s:5:\"false\";s:12:\"divi_sidebar\";s:16:\"et_right_sidebar\";s:22:\"divi_shop_page_sidebar\";s:16:\"et_right_sidebar\";s:23:\"divi_show_facebook_icon\";s:2:\"on\";s:22:\"divi_show_twitter_icon\";s:2:\"on\";s:21:\"divi_show_google_icon\";s:2:\"on\";s:24:\"divi_show_instagram_icon\";s:2:\"on\";s:18:\"divi_show_rss_icon\";s:2:\"on\";s:17:\"divi_facebook_url\";s:1:\"#\";s:16:\"divi_twitter_url\";s:1:\"#\";s:15:\"divi_google_url\";s:1:\"#\";s:18:\"divi_instagram_url\";s:1:\"#\";s:12:\"divi_rss_url\";s:0:\"\";s:34:\"divi_woocommerce_archive_num_posts\";i:9;s:17:\"divi_catnum_posts\";i:6;s:21:\"divi_archivenum_posts\";i:5;s:20:\"divi_searchnum_posts\";i:5;s:17:\"divi_tagnum_posts\";i:5;s:16:\"divi_date_format\";s:6:\"M j, Y\";s:16:\"divi_use_excerpt\";s:5:\"false\";s:26:\"divi_responsive_shortcodes\";s:2:\"on\";s:33:\"divi_gf_enable_all_character_sets\";s:5:\"false\";s:16:\"divi_back_to_top\";s:5:\"false\";s:18:\"divi_smooth_scroll\";s:5:\"false\";s:25:\"divi_disable_translations\";s:5:\"false\";s:27:\"divi_minify_combine_scripts\";s:2:\"on\";s:26:\"divi_minify_combine_styles\";s:2:\"on\";s:15:\"divi_custom_css\";s:0:\"\";s:21:\"divi_enable_dropdowns\";s:2:\"on\";s:14:\"divi_home_link\";s:2:\"on\";s:15:\"divi_sort_pages\";s:10:\"post_title\";s:15:\"divi_order_page\";s:3:\"asc\";s:22:\"divi_tiers_shown_pages\";i:3;s:32:\"divi_enable_dropdowns_categories\";s:2:\"on\";s:21:\"divi_categories_empty\";s:2:\"on\";s:27:\"divi_tiers_shown_categories\";i:3;s:13:\"divi_sort_cat\";s:4:\"name\";s:14:\"divi_order_cat\";s:3:\"asc\";s:20:\"divi_disable_toptier\";s:5:\"false\";s:25:\"divi_scroll_to_anchor_fix\";s:5:\"false\";s:27:\"et_pb_post_type_integration\";a:4:{s:4:\"post\";s:2:\"on\";s:4:\"page\";s:2:\"on\";s:7:\"project\";s:2:\"on\";s:7:\"product\";s:2:\"on\";}s:21:\"et_pb_static_css_file\";s:2:\"on\";s:19:\"et_pb_css_in_footer\";s:3:\"off\";s:25:\"et_pb_product_tour_global\";s:2:\"on\";s:24:\"et_enable_classic_editor\";s:3:\"off\";s:14:\"divi_postinfo2\";a:4:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";i:3;s:8:\"comments\";}s:22:\"divi_show_postcomments\";s:2:\"on\";s:15:\"divi_thumbnails\";s:2:\"on\";s:20:\"divi_page_thumbnails\";s:5:\"false\";s:23:\"divi_show_pagescomments\";s:5:\"false\";s:14:\"divi_postinfo1\";a:3:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";}s:21:\"divi_thumbnails_index\";s:2:\"on\";s:19:\"divi_seo_home_title\";s:5:\"false\";s:25:\"divi_seo_home_description\";s:5:\"false\";s:22:\"divi_seo_home_keywords\";s:5:\"false\";s:23:\"divi_seo_home_canonical\";s:5:\"false\";s:23:\"divi_seo_home_titletext\";s:0:\"\";s:29:\"divi_seo_home_descriptiontext\";s:0:\"\";s:26:\"divi_seo_home_keywordstext\";s:0:\"\";s:18:\"divi_seo_home_type\";s:27:\"BlogName | Blog description\";s:22:\"divi_seo_home_separate\";s:3:\" | \";s:21:\"divi_seo_single_title\";s:5:\"false\";s:27:\"divi_seo_single_description\";s:5:\"false\";s:24:\"divi_seo_single_keywords\";s:5:\"false\";s:25:\"divi_seo_single_canonical\";s:5:\"false\";s:27:\"divi_seo_single_field_title\";s:9:\"seo_title\";s:33:\"divi_seo_single_field_description\";s:15:\"seo_description\";s:30:\"divi_seo_single_field_keywords\";s:12:\"seo_keywords\";s:20:\"divi_seo_single_type\";s:21:\"Post title | BlogName\";s:24:\"divi_seo_single_separate\";s:3:\" | \";s:24:\"divi_seo_index_canonical\";s:5:\"false\";s:26:\"divi_seo_index_description\";s:5:\"false\";s:19:\"divi_seo_index_type\";s:24:\"Category name | BlogName\";s:23:\"divi_seo_index_separate\";s:3:\" | \";s:28:\"divi_integrate_header_enable\";s:2:\"on\";s:26:\"divi_integrate_body_enable\";s:2:\"on\";s:31:\"divi_integrate_singletop_enable\";s:2:\"on\";s:34:\"divi_integrate_singlebottom_enable\";s:2:\"on\";s:21:\"divi_integration_head\";s:0:\"\";s:21:\"divi_integration_body\";s:0:\"\";s:27:\"divi_integration_single_top\";s:0:\"\";s:30:\"divi_integration_single_bottom\";s:0:\"\";s:15:\"divi_468_enable\";s:5:\"false\";s:14:\"divi_468_image\";s:0:\"\";s:12:\"divi_468_url\";s:0:\"\";s:16:\"divi_468_adsense\";s:0:\"\";s:24:\"footer_widget_text_color\";s:7:\"#ffffff\";s:24:\"footer_widget_link_color\";s:7:\"#ffffff\";s:21:\"custom_footer_credits\";s:78:\"Diseñado por <a href=\"https://sinergiared.com\">Sinergia Red Internacional</a>\";s:19:\"post_meta_font_size\";s:2:\"14\";s:16:\"post_meta_height\";s:1:\"1\";s:17:\"post_meta_spacing\";s:1:\"0\";s:15:\"post_meta_style\";s:0:\"\";s:21:\"post_header_font_size\";s:2:\"30\";s:18:\"post_header_height\";s:1:\"1\";s:19:\"post_header_spacing\";s:1:\"0\";s:17:\"post_header_style\";s:0:\"\";s:12:\"boxed_layout\";s:0:\"\";s:13:\"content_width\";s:4:\"1080\";s:12:\"gutter_width\";s:1:\"3\";s:17:\"use_sidebar_width\";s:0:\"\";s:13:\"sidebar_width\";s:2:\"21\";s:15:\"section_padding\";s:1:\"4\";s:20:\"phone_section_height\";s:2:\"50\";s:21:\"tablet_section_height\";s:2:\"50\";s:11:\"row_padding\";s:1:\"2\";s:16:\"phone_row_height\";s:2:\"30\";s:17:\"tablet_row_height\";s:2:\"30\";s:16:\"cover_background\";s:2:\"on\";s:14:\"body_font_size\";s:2:\"14\";s:16:\"body_font_height\";s:3:\"1.7\";s:20:\"phone_body_font_size\";s:2:\"14\";s:21:\"tablet_body_font_size\";s:2:\"14\";s:16:\"body_header_size\";s:2:\"30\";s:19:\"body_header_spacing\";s:1:\"0\";s:18:\"body_header_height\";s:1:\"1\";s:17:\"body_header_style\";s:0:\"\";s:22:\"phone_header_font_size\";s:2:\"30\";s:23:\"tablet_header_font_size\";s:2:\"30\";s:12:\"heading_font\";s:4:\"none\";s:9:\"body_font\";s:4:\"none\";s:10:\"link_color\";s:7:\"#2ea3f2\";s:10:\"font_color\";s:7:\"#666666\";s:12:\"header_color\";s:7:\"#666666\";s:12:\"accent_color\";s:7:\"#2ea3f2\";s:13:\"color_schemes\";s:4:\"none\";s:12:\"header_style\";s:4:\"left\";s:12:\"vertical_nav\";s:0:\"\";s:24:\"vertical_nav_orientation\";s:4:\"left\";s:8:\"hide_nav\";s:0:\"\";s:24:\"show_header_social_icons\";s:0:\"\";s:16:\"show_search_icon\";s:2:\"on\";s:22:\"slide_nav_show_top_bar\";s:2:\"on\";s:15:\"slide_nav_width\";s:3:\"320\";s:19:\"slide_nav_font_size\";s:2:\"14\";s:23:\"slide_nav_top_font_size\";s:2:\"14\";s:24:\"fullscreen_nav_font_size\";s:2:\"30\";s:28:\"fullscreen_nav_top_font_size\";s:2:\"18\";s:22:\"slide_nav_font_spacing\";s:1:\"0\";s:14:\"slide_nav_font\";s:4:\"none\";s:20:\"slide_nav_font_style\";s:0:\"\";s:12:\"slide_nav_bg\";s:7:\"#2ea3f2\";s:21:\"slide_nav_links_color\";s:7:\"#ffffff\";s:28:\"slide_nav_links_color_active\";s:7:\"#ffffff\";s:19:\"slide_nav_top_color\";s:21:\"rgba(255,255,255,0.6)\";s:16:\"slide_nav_search\";s:21:\"rgba(255,255,255,0.6)\";s:19:\"slide_nav_search_bg\";s:15:\"rgba(0,0,0,0.2)\";s:13:\"nav_fullwidth\";s:0:\"\";s:17:\"hide_primary_logo\";s:0:\"\";s:11:\"menu_height\";s:2:\"66\";s:11:\"logo_height\";s:2:\"54\";s:15:\"menu_margin_top\";s:1:\"0\";s:21:\"primary_nav_font_size\";s:2:\"14\";s:24:\"primary_nav_font_spacing\";s:1:\"0\";s:16:\"primary_nav_font\";s:4:\"none\";s:22:\"primary_nav_font_style\";s:0:\"\";s:23:\"secondary_nav_font_size\";s:2:\"12\";s:23:\"secondary_nav_fullwidth\";s:0:\"\";s:26:\"secondary_nav_font_spacing\";s:1:\"0\";s:18:\"secondary_nav_font\";s:4:\"none\";s:24:\"secondary_nav_font_style\";s:0:\"\";s:9:\"menu_link\";s:15:\"rgba(0,0,0,0.6)\";s:16:\"hide_mobile_logo\";s:0:\"\";s:16:\"mobile_menu_link\";s:15:\"rgba(0,0,0,0.6)\";s:16:\"menu_link_active\";s:7:\"#2ea3f2\";s:14:\"primary_nav_bg\";s:7:\"#ffffff\";s:23:\"primary_nav_dropdown_bg\";s:7:\"#ffffff\";s:31:\"primary_nav_dropdown_line_color\";s:7:\"#2ea3f2\";s:31:\"primary_nav_dropdown_link_color\";s:15:\"rgba(0,0,0,0.7)\";s:30:\"primary_nav_dropdown_animation\";s:4:\"fade\";s:21:\"mobile_primary_nav_bg\";s:7:\"#ffffff\";s:16:\"secondary_nav_bg\";s:7:\"#2ea3f2\";s:28:\"secondary_nav_text_color_new\";s:7:\"#ffffff\";s:25:\"secondary_nav_dropdown_bg\";s:7:\"#2ea3f2\";s:33:\"secondary_nav_dropdown_link_color\";s:7:\"#ffffff\";s:32:\"secondary_nav_dropdown_animation\";s:4:\"fade\";s:22:\"primary_nav_text_color\";s:4:\"dark\";s:24:\"secondary_nav_text_color\";s:5:\"light\";s:15:\"hide_fixed_logo\";s:0:\"\";s:21:\"minimized_menu_height\";s:2:\"40\";s:27:\"fixed_primary_nav_font_size\";s:2:\"14\";s:20:\"fixed_primary_nav_bg\";s:7:\"#ffffff\";s:22:\"fixed_secondary_nav_bg\";s:7:\"#2ea3f2\";s:15:\"fixed_menu_link\";s:15:\"rgba(0,0,0,0.6)\";s:25:\"fixed_secondary_menu_link\";s:7:\"#ffffff\";s:22:\"fixed_menu_link_active\";s:7:\"#2ea3f2\";s:12:\"phone_number\";s:0:\"\";s:12:\"header_email\";s:0:\"\";s:24:\"show_footer_social_icons\";s:2:\"on\";s:14:\"footer_columns\";s:1:\"4\";s:9:\"footer_bg\";s:7:\"#222222\";s:23:\"widget_header_font_size\";d:18;s:24:\"widget_header_font_style\";b:0;s:21:\"widget_body_font_size\";s:2:\"14\";s:23:\"widget_body_line_height\";s:3:\"1.7\";s:22:\"widget_body_font_style\";b:0;s:26:\"footer_widget_header_color\";s:7:\"#2ea3f2\";s:26:\"footer_widget_bullet_color\";s:7:\"#2ea3f2\";s:28:\"footer_menu_background_color\";s:22:\"rgba(255,255,255,0.05)\";s:22:\"footer_menu_text_color\";s:7:\"#bbbbbb\";s:29:\"footer_menu_active_link_color\";s:7:\"#2ea3f2\";s:26:\"footer_menu_letter_spacing\";s:1:\"0\";s:22:\"footer_menu_font_style\";b:0;s:21:\"footer_menu_font_size\";s:2:\"14\";s:27:\"bottom_bar_background_color\";s:16:\"rgba(0,0,0,0.32)\";s:21:\"bottom_bar_text_color\";s:7:\"#666666\";s:21:\"bottom_bar_font_style\";b:0;s:20:\"bottom_bar_font_size\";s:2:\"14\";s:27:\"bottom_bar_social_icon_size\";s:2:\"24\";s:28:\"bottom_bar_social_icon_color\";s:7:\"#666666\";s:29:\"disable_custom_footer_credits\";s:0:\"\";s:21:\"all_buttons_font_size\";s:2:\"20\";s:22:\"all_buttons_text_color\";s:7:\"#ffffff\";s:20:\"all_buttons_bg_color\";s:13:\"rgba(0,0,0,0)\";s:24:\"all_buttons_border_width\";s:1:\"2\";s:24:\"all_buttons_border_color\";s:7:\"#ffffff\";s:25:\"all_buttons_border_radius\";s:1:\"3\";s:19:\"all_buttons_spacing\";s:1:\"0\";s:22:\"all_buttons_font_style\";s:0:\"\";s:16:\"all_buttons_font\";s:4:\"none\";s:16:\"all_buttons_icon\";s:3:\"yes\";s:25:\"all_buttons_selected_icon\";s:1:\"5\";s:22:\"all_buttons_icon_color\";s:7:\"#ffffff\";s:26:\"all_buttons_icon_placement\";s:5:\"right\";s:22:\"all_buttons_icon_hover\";s:3:\"yes\";s:28:\"all_buttons_text_color_hover\";s:7:\"#ffffff\";s:26:\"all_buttons_bg_color_hover\";s:21:\"rgba(255,255,255,0.2)\";s:30:\"all_buttons_border_color_hover\";s:13:\"rgba(0,0,0,0)\";s:31:\"all_buttons_border_radius_hover\";b:0;s:25:\"all_buttons_spacing_hover\";b:0;s:12:\"divi_favicon\";s:0:\"\";s:26:\"divi_bfb_optin_modal_shown\";s:2:\"no\";}', 'yes'),
(415, 'widget_aboutmewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(416, 'widget_adsensewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(417, 'widget_advwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(418, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(419, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"510\";s:6:\"height\";s:4:\"9999\";s:4:\"crop\";i:0;}', 'yes'),
(420, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"157\";s:4:\"crop\";i:1;}', 'yes'),
(421, 'et_support_site_id', '9PE*OG^WD+$c#2x1QMnY', 'yes'),
(422, 'et_safe_mode_plugins_whitelist', 'a:6:{i:0;s:27:\"ari-adminer/ari-adminer.php\";i:1;s:15:\"etdev/etdev.php\";i:2;s:29:\"divi-builder/divi-builder.php\";i:3;s:31:\"query-monitor/query-monitor.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}', 'yes'),
(423, 'et_support_center_installed', 'true', 'yes'),
(424, 'et_images_temp_folder', '/home/shapin/public_html/wp-content/uploads/et_temp', 'yes'),
(425, 'et_schedule_clean_images_last_time', '1602814966', 'yes'),
(426, 'et_bfb_settings', 'a:1:{s:10:\"enable_bfb\";s:2:\"on\";}', 'yes'),
(427, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(20671, 'wc_blocks_db_schema_version', '260', 'yes'),
(432, 'et_pb_builder_options', 'a:2:{i:0;b:0;s:35:\"email_provider_credentials_migrated\";b:1;}', 'yes'),
(438, 'external_updates-divi-ghoster', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1602814968;s:14:\"checkedVersion\";s:5:\"2.1.4\";s:6:\"update\";N;}', 'no'),
(440, 'et_account_status', 'active', 'no'),
(441, '_site_transient_et_update_themes', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:6:{s:4:\"Divi\";s:6:\"3.26.6\";s:10:\"ghost_divi\";s:6:\"3.26.6\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:1:{s:4:\"Divi\";a:3:{s:11:\"new_version\";s:5:\"4.5.1\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";}}s:12:\"last_checked\";i:1595524641;}', 'no'),
(464, 'et_automatic_updates_options', 'a:2:{s:8:\"username\";s:0:\"\";s:7:\"api_key\";s:0:\"\";}', 'no'),
(471, 'content_link_color', '#999999', 'yes'),
(472, 'background_color_tint', 'rgba(0,0,0,0)', 'yes'),
(526, 'woocommerce_tracker_ua', 'a:3:{i:0;s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";i:1;s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36\";i:2;s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";}', 'yes'),
(22322, '_transient_timeout_wc_low_stock_count', '1601496965', 'no'),
(22323, '_transient_wc_low_stock_count', '0', 'no'),
(22324, '_transient_timeout_wc_outofstock_count', '1601496965', 'no'),
(22325, '_transient_wc_outofstock_count', '0', 'no'),
(20801, 'ucp_options', 'a:34:{s:6:\"status\";s:1:\"1\";s:11:\"license_key\";s:0:\"\";s:14:\"license_active\";b:0;s:15:\"license_expires\";s:10:\"1900-01-01\";s:12:\"license_type\";s:0:\"\";s:8:\"end_date\";s:0:\"\";s:14:\"ga_tracking_id\";s:0:\"\";s:5:\"theme\";s:12:\"mad_designer\";s:10:\"custom_css\";s:0:\"\";s:5:\"title\";s:34:\"[site-title] is under construction\";s:11:\"description\";s:14:\"[site-tagline]\";s:8:\"heading1\";s:49:\"Lo siento, estamos haciendo trabajos en el sitio.\";s:7:\"content\";s:79:\"Gracias por tu paciencia. Estamos trabajando en el sito y volveremos enseguida.\";s:15:\"social_facebook\";s:0:\"\";s:14:\"social_twitter\";s:0:\"\";s:13:\"social_google\";s:0:\"\";s:15:\"social_linkedin\";s:0:\"\";s:14:\"social_youtube\";s:0:\"\";s:12:\"social_vimeo\";s:0:\"\";s:16:\"social_pinterest\";s:0:\"\";s:15:\"social_dribbble\";s:0:\"\";s:14:\"social_behance\";s:0:\"\";s:16:\"social_instagram\";s:0:\"\";s:13:\"social_tumblr\";s:0:\"\";s:9:\"social_vk\";s:0:\"\";s:12:\"social_email\";s:0:\"\";s:12:\"social_phone\";s:0:\"\";s:12:\"social_skype\";s:0:\"\";s:15:\"social_telegram\";s:0:\"\";s:15:\"social_whatsapp\";s:0:\"\";s:12:\"login_button\";s:1:\"1\";s:8:\"linkback\";s:1:\"0\";s:17:\"whitelisted_roles\";a:1:{i:0;s:13:\"administrator\";}s:17:\"whitelisted_users\";a:0:{}}', 'yes'),
(20793, 'sgr_version', '', 'yes'),
(20794, 'sgr_login_disable', '', 'yes'),
(20795, 'sgr_badge_hide', '', 'yes'),
(20796, 'sgr_site_key', '6LfXhnUUAAAAAPLxvCquHz94JzinMDCy6ToTBodJ', 'yes'),
(628, 'category_children', 'a:0:{}', 'yes'),
(5336, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"admin@shapinetwork.com\";s:7:\"version\";s:5:\"5.3.4\";s:9:\"timestamp\";i:1591862903;}', 'no'),
(20772, 'ub_login_image', 'https://sinergiared.com/wp-content/uploads/2016/05/logo_sinergia.png', 'yes'),
(20663, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(20667, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(20771, 'ub_admin_bar_style', '', 'yes'),
(20710, '_transient_rsssl_plusone_count', '1', 'yes'),
(20742, 'code_snippets_version', '2.14.0', 'yes'),
(23081, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1600391799;s:7:\"checked\";a:6:{s:4:\"Divi\";s:6:\"3.26.6\";s:10:\"ghost_divi\";s:6:\"3.26.6\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.2.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(23082, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600391799;s:7:\"checked\";a:13:{s:25:\"adminimize/adminimize.php\";s:6:\"1.11.7\";s:31:\"code-snippets/code-snippets.php\";s:6:\"2.14.0\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.1\";s:29:\"divi-ghoster/divi-ghoster.php\";s:5:\"2.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:6:\"1.10.2\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"3.3.4\";s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";s:3:\"3.7\";s:39:\"ultimate-branding/ultimate-branding.php\";s:5:\"2.0.0\";s:46:\"under-construction-page/under-construction.php\";s:4:\"3.80\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.3.1\";s:45:\"woocommerce-branding/woocommerce-branding.php\";s:6:\"1.0.19\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.5.6\";}s:8:\"response\";a:5:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"nav-menu-roles/nav-menu-roles.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/nav-menu-roles\";s:4:\"slug\";s:14:\"nav-menu-roles\";s:6:\"plugin\";s:33:\"nav-menu-roles/nav-menu-roles.php\";s:11:\"new_version\";s:5:\"2.0.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/nav-menu-roles/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/nav-menu-roles.2.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/nav-menu-roles/assets/icon-256x256.png?rev=2336319\";s:2:\"1x\";s:67:\"https://ps.w.org/nav-menu-roles/assets/icon-128x128.png?rev=2336319\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/nav-menu-roles/assets/banner-1544x500.png?rev=2336319\";s:2:\"1x\";s:69:\"https://ps.w.org/nav-menu-roles/assets/banner-772x250.png?rev=2336319\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.0\";s:12:\"requires_php\";s:5:\"5.3.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"3.3.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/really-simple-ssl.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2320223\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.png?rev=2320228\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:46:\"under-construction-page/under-construction.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/under-construction-page\";s:4:\"slug\";s:23:\"under-construction-page\";s:6:\"plugin\";s:46:\"under-construction-page/under-construction.php\";s:11:\"new_version\";s:4:\"3.81\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/under-construction-page/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/under-construction-page.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/under-construction-page/assets/icon-256x256.gif?rev=2284849\";s:2:\"1x\";s:76:\"https://ps.w.org/under-construction-page/assets/icon-128x128.gif?rev=2284852\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/under-construction-page/assets/banner-1544x500.png?rev=1628376\";s:2:\"1x\";s:78:\"https://ps.w.org/under-construction-page/assets/banner-772x250.png?rev=1575797\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:25:\"adminimize/adminimize.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/adminimize\";s:4:\"slug\";s:10:\"adminimize\";s:6:\"plugin\";s:25:\"adminimize/adminimize.php\";s:11:\"new_version\";s:6:\"1.11.7\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/adminimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/adminimize.1.11.7.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/adminimize_000000.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/adminimize/assets/banner-772x250.png?rev=1118207\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"code-snippets/code-snippets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/code-snippets\";s:4:\"slug\";s:13:\"code-snippets\";s:6:\"plugin\";s:31:\"code-snippets/code-snippets.php\";s:11:\"new_version\";s:6:\"2.14.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/code-snippets/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/code-snippets.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/code-snippets/assets/icon.svg?rev=2148878\";s:3:\"svg\";s:58:\"https://ps.w.org/code-snippets/assets/icon.svg?rev=2148878\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/code-snippets/assets/banner-1544x500.png?rev=2260997\";s:2:\"1x\";s:68:\"https://ps.w.org/code-snippets/assets/banner-772x250.png?rev=2256244\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/simple-google-recaptcha\";s:4:\"slug\";s:23:\"simple-google-recaptcha\";s:6:\"plugin\";s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";s:11:\"new_version\";s:3:\"3.7\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/simple-google-recaptcha/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/simple-google-recaptcha.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/simple-google-recaptcha/assets/icon-128x128.png?rev=1466520\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/simple-google-recaptcha/assets/banner-772x250.png?rev=1725176\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-branding/woocommerce-branding.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-branding\";s:4:\"slug\";s:20:\"woocommerce-branding\";s:6:\"plugin\";s:45:\"woocommerce-branding/woocommerce-branding.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-branding/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woocommerce-branding.1.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-branding/assets/icon-256x256.png?rev=1305743\";s:2:\"1x\";s:65:\"https://ps.w.org/woocommerce-branding/assets/icon.svg?rev=1305743\";s:3:\"svg\";s:65:\"https://ps.w.org/woocommerce-branding/assets/icon.svg?rev=1305743\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-branding/assets/banner-772x250.jpg?rev=1307387\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(23090, '_transient_et_core_path', '/home/shapin/public_html/wp-content/themes/Divi/core', 'no'),
(22506, '_transient_timeout_et_core_version', '1602901365', 'no'),
(22507, '_transient_et_core_version', '3.26.6', 'no'),
(22317, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(22338, 'new_admin_email', 'admin@shapinetwork.com', 'yes'),
(22339, 'whl_page', 'acceso', 'yes'),
(22340, 'whl_redirect_admin', '404', 'yes'),
(23089, '_transient_timeout_et_core_path', '1602901365', 'no'),
(20773, 'ub_login_image_height', '64', 'yes'),
(20774, 'ub_login_image_id', '', 'yes'),
(20775, 'ub_login_image_size', '', 'yes'),
(20776, 'ub_login_image_width', '64', 'yes'),
(20777, 'rwp_active_dashboard_widgets', 'a:5:{s:19:\"dashboard_right_now\";s:19:\"dashboard_right_now\";s:18:\"dashboard_activity\";s:18:\"dashboard_activity\";s:22:\"tribe_dashboard_widget\";s:22:\"tribe_dashboard_widget\";s:21:\"dashboard_quick_press\";s:21:\"dashboard_quick_press\";s:17:\"dashboard_primary\";s:17:\"dashboard_primary\";}', 'yes'),
(20778, 'ub_rwp_all_active_dashboard_widgets', 'a:7:{s:19:\"dashboard_right_now\";s:13:\"De un vistazo\";s:18:\"dashboard_activity\";s:9:\"Actividad\";s:36:\"woocommerce_dashboard_recent_reviews\";s:41:\"Valoraciones recientes de Sinergia Market\";s:28:\"woocommerce_dashboard_status\";s:25:\"Estado de Sinergia Market\";s:17:\"dashboard_php_nag\";s:27:\"Es necesario actualizar PHP\";s:21:\"dashboard_quick_press\";s:108:\"<span class=\"hide-if-no-js\">Borrador rápido</span> <span class=\"hide-if-js\">Tus borradores recientes</span>\";s:17:\"dashboard_primary\";s:31:\"Eventos y noticias de WordPress\";}', 'yes'),
(20747, 'code_snippets_settings', 'a:3:{s:7:\"general\";a:6:{s:19:\"activate_by_default\";b:1;s:21:\"snippet_scope_enabled\";b:1;s:11:\"enable_tags\";b:1;s:18:\"enable_description\";b:1;s:13:\"disable_prism\";b:0;s:18:\"complete_uninstall\";b:0;}s:18:\"description_editor\";a:3:{s:4:\"rows\";i:5;s:12:\"use_full_mce\";b:0;s:13:\"media_buttons\";b:0;}s:6:\"editor\";a:8:{s:5:\"theme\";s:7:\"default\";s:16:\"indent_with_tabs\";b:1;s:8:\"tab_size\";i:4;s:11:\"indent_unit\";i:4;s:10:\"wrap_lines\";b:1;s:12:\"line_numbers\";b:1;s:19:\"auto_close_brackets\";b:1;s:27:\"highlight_selection_matches\";b:1;}}', 'yes'),
(20754, 'ub_version', '2.0.0', 'yes'),
(20759, 'wdp_un_activated_flag', '0', 'no'),
(20764, 'recently_activated_snippets', 'a:0:{}', 'yes'),
(20761, 'wdp_un_local_themes', 'a:0:{}', 'no'),
(20762, 'wdp_un_local_projects', 'a:1:{i:9135;a:3:{s:4:\"type\";s:6:\"plugin\";s:7:\"version\";s:5:\"2.0.0\";s:8:\"filename\";s:39:\"ultimate-branding/ultimate-branding.php\";}}', 'no'),
(20763, 'wdp_un_updates_available', 'a:1:{i:9135;a:7:{s:4:\"type\";s:6:\"plugin\";s:7:\"version\";s:5:\"2.0.0\";s:8:\"filename\";s:39:\"ultimate-branding/ultimate-branding.php\";s:3:\"url\";s:54:\"https://premium.wpmudev.org/project/ultimate-branding/\";s:4:\"name\";s:10:\"Branda Pro\";s:11:\"new_version\";s:3:\"3.4\";s:10:\"autoupdate\";s:1:\"1\";}}', 'no'),
(20768, 'ultimatebranding_activated_modules', 'a:5:{s:20:\"custom-admin-bar.php\";s:3:\"yes\";s:21:\"admin-footer-text.php\";s:3:\"yes\";s:15:\"login-image.php\";s:3:\"yes\";s:17:\"export-import.php\";s:3:\"yes\";s:31:\"remove-wp-dashboard-widgets.php\";s:3:\"yes\";}', 'yes'),
(20769, 'ultimatebranding_messages', 'a:1:{i:0;a:2:{s:5:\"class\";s:7:\"success\";s:7:\"message\";s:64:\"Módulo \"<strong>Export & Import</strong>\"se activó con éxito.\";}}', 'yes'),
(20797, 'sgr_secret_key', '6LfXhnUUAAAAAEC6AQkZ_pFv9pN6ssD8SjnonQGP', 'yes'),
(20770, 'wdcab', 'a:4:{s:7:\"enabled\";s:1:\"0\";s:27:\"show_toolbar_for_non_logged\";s:1:\"0\";s:14:\"disabled_menus\";a:3:{i:0;s:7:\"wp-logo\";i:1;s:11:\"new-content\";i:2;s:7:\"updates\";}s:13:\"wp_menu_roles\";a:16:{s:13:\"Administrator\";s:13:\"administrator\";s:6:\"Editor\";s:6:\"editor\";s:6:\"Author\";s:6:\"author\";s:11:\"Contributor\";s:11:\"contributor\";s:10:\"Subscriber\";s:10:\"subscriber\";s:8:\"Customer\";s:8:\"customer\";s:12:\"Shop manager\";s:12:\"shop_manager\";s:9:\"Keymaster\";s:13:\"bbp_keymaster\";s:9:\"Moderator\";s:13:\"bbp_moderator\";s:11:\"Participant\";s:15:\"bbp_participant\";s:9:\"Spectator\";s:13:\"bbp_spectator\";s:7:\"Blocked\";s:11:\"bbp_blocked\";s:12:\"Group Leader\";s:12:\"group_leader\";s:10:\"Translator\";s:10:\"translator\";s:8:\"Director\";s:8:\"director\";s:30:\"Invitado (usuario sin usuario)\";s:5:\"guest\";}}', 'yes'),
(20779, 'admin_footer_text', 'Diseñado por <a href=\"https://sinergiared.com\"> Sinergia Red Internacional</a>', 'yes'),
(22501, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1600391798;s:15:\"version_checked\";s:5:\"5.3.4\";s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_postmeta`
--

CREATE TABLE `wp98_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_postmeta`
--

INSERT INTO `wp98_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', 'woocommerce-placeholder.png'),
(9, 12, '_edit_last', '1'),
(10, 12, '_edit_lock', '1585258491:1'),
(11, 12, '_regular_price', '340'),
(12, 12, 'total_sales', '0'),
(13, 12, '_tax_status', 'taxable'),
(14, 12, '_tax_class', ''),
(15, 12, '_manage_stock', 'no'),
(16, 12, '_backorders', 'no'),
(17, 12, '_sold_individually', 'no'),
(18, 12, '_virtual', 'no'),
(19, 12, '_downloadable', 'no'),
(20, 12, '_download_limit', '-1'),
(21, 12, '_download_expiry', '-1'),
(22, 12, '_stock', NULL),
(23, 12, '_stock_status', 'instock'),
(24, 12, '_wc_average_rating', '0'),
(25, 12, '_wc_review_count', '0'),
(26, 12, '_product_version', '4.0.1'),
(27, 12, '_price', '340'),
(28, 13, '_wp_attached_file', '2020/03/logo_sinergia.png'),
(29, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:25:\"2020/03/logo_sinergia.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"logo_sinergia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"logo_sinergia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 16, '_menu_item_type', 'post_type'),
(31, 16, '_menu_item_menu_item_parent', '0'),
(32, 16, '_menu_item_object_id', '11'),
(33, 16, '_menu_item_object', 'page'),
(34, 16, '_menu_item_target', ''),
(35, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 16, '_menu_item_xfn', ''),
(37, 16, '_menu_item_url', ''),
(59, 19, '_menu_item_object_id', '8'),
(39, 17, '_menu_item_type', 'custom'),
(40, 17, '_menu_item_menu_item_parent', '0'),
(41, 17, '_menu_item_object_id', '17'),
(42, 17, '_menu_item_object', 'custom'),
(43, 17, '_menu_item_target', ''),
(44, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 17, '_menu_item_xfn', ''),
(46, 17, '_menu_item_url', 'https://shapinetwork.com/mioficina/'),
(58, 19, '_menu_item_menu_item_parent', '0'),
(48, 18, '_menu_item_type', 'custom'),
(49, 18, '_menu_item_menu_item_parent', '0'),
(50, 18, '_menu_item_object_id', '18'),
(51, 18, '_menu_item_object', 'custom'),
(52, 18, '_menu_item_target', ''),
(53, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 18, '_menu_item_xfn', ''),
(55, 18, '_menu_item_url', 'https://shapinetwork.com/mioficina/aut/register'),
(57, 19, '_menu_item_type', 'post_type'),
(60, 19, '_menu_item_object', 'page'),
(61, 19, '_menu_item_target', ''),
(62, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 19, '_menu_item_xfn', ''),
(64, 19, '_menu_item_url', ''),
(85, 22, '_wp_attachment_context', 'site-icon'),
(66, 20, '_menu_item_type', 'custom'),
(67, 20, '_menu_item_menu_item_parent', '0'),
(68, 20, '_menu_item_object_id', '20'),
(69, 20, '_menu_item_object', 'custom'),
(70, 20, '_menu_item_target', ''),
(71, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 20, '_menu_item_xfn', ''),
(73, 20, '_menu_item_url', '#'),
(75, 21, '_menu_item_type', 'custom'),
(76, 21, '_menu_item_menu_item_parent', '0'),
(77, 21, '_menu_item_object_id', '21'),
(78, 21, '_menu_item_object', 'custom'),
(79, 21, '_menu_item_target', ''),
(80, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 21, '_menu_item_xfn', ''),
(82, 21, '_menu_item_url', '#'),
(84, 22, '_wp_attached_file', '2020/03/cropped-logo_sinergia.png'),
(86, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2020/03/cropped-logo_sinergia.png\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"et-pb-post-main-image\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"et-pb-portfolio-image\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-400x284.png\";s:5:\"width\";i:400;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"et-pb-portfolio-module-image\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-510x382.png\";s:5:\"width\";i:510;s:6:\"height\";i:382;s:9:\"mime-type\";s:9:\"image/png\";}s:35:\"et-pb-gallery-module-image-portrait\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-400x512.png\";s:5:\"width\";i:400;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"cropped-logo_sinergia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-logo_sinergia-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-logo_sinergia-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 26, '_menu_item_type', 'post_type'),
(94, 26, '_menu_item_menu_item_parent', '16'),
(95, 26, '_menu_item_object_id', '11'),
(96, 26, '_menu_item_object', 'page'),
(97, 26, '_menu_item_target', ''),
(98, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 26, '_menu_item_xfn', ''),
(100, 26, '_menu_item_url', ''),
(111, 26, '_nav_menu_role', 'out'),
(102, 27, '_menu_item_type', 'custom'),
(103, 27, '_menu_item_menu_item_parent', '16'),
(104, 27, '_menu_item_object_id', '27'),
(105, 27, '_menu_item_object', 'custom'),
(106, 27, '_menu_item_target', ''),
(107, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 27, '_menu_item_xfn', ''),
(109, 27, '_menu_item_url', 'https://shapinetwork.com/mi-cuenta/customer-logout/?_wpnonce=422496eabb'),
(112, 27, '_nav_menu_role', 'in'),
(113, 12, '_thumbnail_id', '13'),
(114, 12, '_et_pb_post_hide_nav', 'default'),
(115, 12, '_et_pb_page_layout', 'et_right_sidebar'),
(116, 12, '_et_pb_side_nav', 'off'),
(117, 12, '_et_pb_use_builder', ''),
(118, 12, '_et_pb_first_image', ''),
(119, 12, '_et_pb_truncate_post', ''),
(120, 12, '_et_pb_old_content', ''),
(121, 12, '_wp_old_slug', 'producto-de-prueba'),
(122, 28, '_edit_last', '1'),
(123, 28, '_edit_lock', '1585258474:1'),
(124, 28, '_thumbnail_id', '13'),
(125, 28, '_regular_price', '600'),
(126, 28, 'total_sales', '0'),
(127, 28, '_tax_status', 'taxable'),
(128, 28, '_tax_class', ''),
(129, 28, '_manage_stock', 'no'),
(130, 28, '_backorders', 'no'),
(131, 28, '_sold_individually', 'no'),
(132, 28, '_virtual', 'no'),
(133, 28, '_downloadable', 'no'),
(134, 28, '_download_limit', '-1'),
(135, 28, '_download_expiry', '-1'),
(136, 28, '_stock', NULL),
(137, 28, '_stock_status', 'instock'),
(138, 28, '_wc_average_rating', '0'),
(139, 28, '_wc_review_count', '0'),
(140, 28, '_product_version', '4.0.1'),
(141, 28, '_price', '600'),
(142, 28, '_et_pb_post_hide_nav', 'default'),
(143, 28, '_et_pb_page_layout', 'et_right_sidebar'),
(144, 28, '_et_pb_side_nav', 'off'),
(145, 28, '_et_pb_use_builder', ''),
(146, 28, '_et_pb_first_image', ''),
(147, 28, '_et_pb_truncate_post', ''),
(148, 28, '_et_pb_old_content', ''),
(149, 29, '_edit_last', '1'),
(150, 29, '_edit_lock', '1585258887:1'),
(151, 29, '_thumbnail_id', '13'),
(152, 29, '_regular_price', '280'),
(153, 29, 'total_sales', '0'),
(154, 29, '_tax_status', 'taxable'),
(155, 29, '_tax_class', ''),
(156, 29, '_manage_stock', 'no'),
(157, 29, '_backorders', 'no'),
(158, 29, '_sold_individually', 'no'),
(159, 29, '_virtual', 'no'),
(160, 29, '_downloadable', 'no'),
(161, 29, '_download_limit', '-1'),
(162, 29, '_download_expiry', '-1'),
(163, 29, '_stock', NULL),
(164, 29, '_stock_status', 'instock'),
(165, 29, '_wc_average_rating', '0'),
(166, 29, '_wc_review_count', '0'),
(167, 29, '_product_version', '4.0.1'),
(168, 29, '_price', '280'),
(169, 29, '_et_pb_post_hide_nav', 'default'),
(170, 29, '_et_pb_page_layout', 'et_right_sidebar'),
(171, 29, '_et_pb_side_nav', 'off'),
(172, 29, '_et_pb_use_builder', ''),
(173, 29, '_et_pb_first_image', ''),
(174, 29, '_et_pb_truncate_post', ''),
(175, 29, '_et_pb_old_content', ''),
(176, 30, '_orden_key', 'wc_order_MjAyMC0wMy0yNiAxNzoxMzoxNQ=='),
(177, 30, '_customer_user', '3'),
(178, 30, '_payment_method', 'bacs'),
(179, 30, '_payment_method_title', 'Wallet'),
(180, 30, '_transaction_id', ' '),
(181, 30, '_customer_ip_address', '190.25.37.181'),
(182, 30, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'),
(183, 30, '_created_via', 'checkout'),
(184, 30, '_date_completed', '2603202057'),
(185, 30, '_completed_date', '2603202057'),
(186, 30, '_date_paid', '2603202057'),
(187, 30, '_paid_date', '2603202057'),
(188, 30, '_cart_hash', '6d0c2837fd5b28bcc497943ad7bb0844'),
(189, 30, '_billing_first_name', 'Alberto'),
(190, 30, '_billing_last_name', 'Picon'),
(191, 30, '_billing_company', ''),
(192, 30, '_billing_address_1', NULL),
(193, 30, '_billing_address_2', ''),
(194, 30, '_billing_city', ''),
(195, 30, '_billing_state', ''),
(196, 30, '_billing_postcode', ''),
(197, 30, '_billing_country', NULL),
(198, 30, '_billing_email', 'cliente2@sinergiared.com'),
(199, 30, '_billing_phone', NULL),
(200, 30, '_shipping_first_name', ''),
(201, 30, '_shipping_last_name', ''),
(202, 30, '_shipping_company', ''),
(203, 30, '_shipping_address_1', ''),
(204, 30, '_shipping_address_2', ''),
(205, 30, '_shipping_city', ''),
(206, 30, '_shipping_state', ''),
(207, 30, '_shipping_postcode', ''),
(208, 30, '_shipping_country', ''),
(209, 30, '_order_currency', 'USD'),
(210, 30, '_cart_discount', '0'),
(211, 30, '_cart_discount_tax', '0'),
(212, 30, '_order_shipping', '0'),
(213, 30, '_order_shipping_tax', '0'),
(214, 30, '_order_tax', '0'),
(215, 30, '_order_total', '340.00'),
(216, 30, '_order_version', '3.5.2'),
(217, 30, '_prices_include_tax', 'no'),
(218, 30, '_billing_address_index', 'Alberto Picon    cliente2@sinergiared.com '),
(219, 30, '_shipping_address_index', ''),
(220, 30, '_recorded_sales', 'yes'),
(221, 30, '_recorded_coupon_usage_counts', 'yes'),
(222, 30, '_order_stock_reduced', 'yes'),
(223, 30, '_edit_lock', '2603202057:1'),
(224, 30, '_edit_last', '1'),
(225, 30, '_order_key', 'wc_order_MjAyMC0wMy0yNiAxNzoxMzoxNQ=='),
(226, 30, '_download_permissions_granted', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_posts`
--

CREATE TABLE `wp98_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_posts`
--

INSERT INTO `wp98_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2020-03-26 20:05:35', '2020-03-26 20:05:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://shapinetwork.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-03-26 20:05:35', '2020-03-26 20:05:35', '', 0, 'http://shapinetwork.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-03-26 20:05:35', '2020-03-26 20:05:35', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://shapinetwork.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-03-26 20:05:35', '2020-03-26 20:05:35', '', 0, 'http://shapinetwork.com/?page_id=3', 0, 'page', '', 0),
(8, 1, '2020-03-26 20:36:32', '2020-03-26 20:36:32', '', 'Tienda', '', 'publish', 'closed', 'closed', '', 'tienda', '', '', '2020-03-26 20:36:32', '2020-03-26 20:36:32', '', 0, 'https://shapinetwork.com/tienda/', 0, 'page', '', 0),
(7, 1, '2020-03-26 20:35:34', '2020-03-26 20:35:34', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-03-26 20:35:34', '2020-03-26 20:35:34', '', 0, 'https://shapinetwork.com/wp-content/uploads/2020/03/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2020-03-26 20:36:32', '2020-03-26 20:36:32', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Carrito', '', 'publish', 'closed', 'closed', '', 'carrito', '', '', '2020-03-26 20:36:32', '2020-03-26 20:36:32', '', 0, 'https://shapinetwork.com/carrito/', 0, 'page', '', 0),
(10, 1, '2020-03-26 20:36:32', '2020-03-26 20:36:32', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2020-03-26 20:36:32', '2020-03-26 20:36:32', '', 0, 'https://shapinetwork.com/finalizar-compra/', 0, 'page', '', 0),
(11, 1, '2020-03-26 20:36:32', '2020-03-26 20:36:32', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Mi cuenta', '', 'publish', 'closed', 'closed', '', 'mi-cuenta', '', '', '2020-03-26 20:36:32', '2020-03-26 20:36:32', '', 0, 'https://shapinetwork.com/mi-cuenta/', 0, 'page', '', 0),
(12, 1, '2020-03-26 20:38:07', '2020-03-26 20:38:07', '', 'Franquisia Empresario', '', 'publish', 'open', 'closed', '', 'franquisia-empresario', '', '', '2020-03-26 21:34:51', '2020-03-26 21:34:51', '', 0, 'https://shapinetwork.com/?post_type=product&#038;p=12', 0, 'product', '', 0),
(13, 1, '2020-03-26 21:19:55', '2020-03-26 21:19:55', '', 'logo_sinergia', '', 'inherit', 'open', 'closed', '', 'logo_sinergia', '', '', '2020-03-26 21:19:55', '2020-03-26 21:19:55', '', 0, 'https://shapinetwork.com/wp-content/uploads/2020/03/logo_sinergia.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-03-26 21:20:05', '2020-03-26 21:20:05', '', 'Divi', '', 'publish', 'closed', 'closed', '', 'divi', '', '', '2020-03-26 21:20:05', '2020-03-26 21:20:05', '', 0, 'https://shapinetwork.com/2020/03/26/divi/', 0, 'custom_css', '', 0),
(15, 1, '2020-03-26 21:20:05', '2020-03-26 21:20:05', '', 'Divi', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-26 21:20:05', '2020-03-26 21:20:05', '', 14, 'https://shapinetwork.com/2020/03/26/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-03-26 21:22:19', '2020-03-26 21:22:19', '', 'Acceso', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-03-26 21:27:22', '2020-03-26 21:27:22', '', 0, 'https://shapinetwork.com/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2020-03-26 21:22:19', '2020-03-26 21:22:19', '', 'Oficina Virtual', '', 'publish', 'closed', 'closed', '', 'oficina-virtual', '', '', '2020-03-26 21:27:22', '2020-03-26 21:27:22', '', 0, 'https://shapinetwork.com/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2020-03-26 21:22:19', '2020-03-26 21:22:19', '', 'Registro', '', 'publish', 'closed', 'closed', '', 'registro', '', '', '2020-03-26 21:27:22', '2020-03-26 21:27:22', '', 0, 'https://shapinetwork.com/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2020-03-26 21:23:36', '2020-03-26 21:23:36', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-03-26 21:23:36', '2020-03-26 21:23:36', '', 0, 'https://shapinetwork.com/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2020-03-26 21:23:36', '2020-03-26 21:23:36', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2020-03-26 21:23:36', '2020-03-26 21:23:36', '', 0, 'https://shapinetwork.com/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2020-03-26 21:23:36', '2020-03-26 21:23:36', '', 'Plan de negocio', '', 'publish', 'closed', 'closed', '', 'plan-de-negocio', '', '', '2020-03-26 21:23:36', '2020-03-26 21:23:36', '', 0, 'https://shapinetwork.com/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2020-03-26 21:24:43', '2020-03-26 21:24:43', 'https://shapinetwork.com/wp-content/uploads/2020/03/cropped-logo_sinergia.png', 'cropped-logo_sinergia.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_sinergia-png', '', '', '2020-03-26 21:24:43', '2020-03-26 21:24:43', '', 0, 'https://shapinetwork.com/wp-content/uploads/2020/03/cropped-logo_sinergia.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2020-03-26 21:27:22', '2020-03-26 21:27:22', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2020-03-26 21:27:22', '2020-03-26 21:27:22', '', 0, 'https://shapinetwork.com/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2020-03-26 21:27:22', '2020-03-26 21:27:22', '', 'Salir', '', 'publish', 'closed', 'closed', '', 'salir', '', '', '2020-03-26 21:27:22', '2020-03-26 21:27:22', '', 0, 'https://shapinetwork.com/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2020-03-26 21:35:43', '2020-03-26 21:35:43', '', 'Franquisia Premiun', '', 'publish', 'open', 'closed', '', 'franquisia-premiun', '', '', '2020-03-26 21:35:43', '2020-03-26 21:35:43', '', 0, 'https://shapinetwork.com/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2020-03-26 21:38:21', '2020-03-26 21:38:21', '', 'Mensualidad', '', 'publish', 'open', 'closed', '', 'mensualidad', '', '', '2020-03-26 21:38:21', '2020-03-26 21:38:21', '', 0, 'https://shapinetwork.com/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2020-03-26 17:13:15', '2020-03-26 17:13:15', ' ', 'Orden&ndash;Mar 26, 2020 @ 05:13 PM', ' ', 'wc-completed', 'open', 'closed', 'order_MjAyMC0wMy0yNiAxNzoxMzoxNQ==', 'perdido-Mar-26-2020-0513-pm', ' ', ' ', '2020-03-26 17:13:57', '2020-03-26 17:13:57', ' ', 0, 'https://shapinetwork.com/?post_type=shop_order&#038;p=30', 0, 'shop_order', ' ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_snippets`
--

CREATE TABLE `wp98_snippets` (
  `id` bigint NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `priority` smallint NOT NULL DEFAULT '10',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_snippets`
--

INSERT INTO `wp98_snippets` (`id`, `name`, `description`, `code`, `tags`, `scope`, `priority`, `active`, `modified`) VALUES
(6, 'Ocultar versiones de wordpress', '', 'add_action( \'admin_head\', \'ocultar_notificacion_actualizacion\', 1 );\nfunction ocultar_notificacion_actualizacion() {\n if ( ! current_user_can( \'update_core\' )) {\n remove_action( \'admin_notices\', \'update_nag\', 3 );\n }\n}', '', 'global', 10, 1, '2020-07-23 17:15:03'),
(7, 'eliminar notificaciones de plugins y temas', '', 'function hide_notices_dashboard() {\n    global $wp_filter;\n \n    if (is_network_admin() and isset($wp_filter[\"network_admin_notices\"])) {\n        unset($wp_filter[\'network_admin_notices\']);\n    } elseif(is_user_admin() and isset($wp_filter[\"user_admin_notices\"])) {\n        unset($wp_filter[\'user_admin_notices\']);\n    } else {\n        if(isset($wp_filter[\"admin_notices\"])) {\n            unset($wp_filter[\'admin_notices\']);\n        }\n    }\n \n    if (isset($wp_filter[\"all_admin_notices\"])) {\n        unset($wp_filter[\'all_admin_notices\']);\n    }\n}\nadd_action( \'admin_init\', \'hide_notices_dashboard\' );', '', 'global', 10, 1, '2020-07-23 17:15:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_termmeta`
--

CREATE TABLE `wp98_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_termmeta`
--

INSERT INTO `wp98_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 18, 'order', '0'),
(3, 18, 'product_count_product_cat', '2'),
(4, 19, 'order', '0'),
(5, 19, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_terms`
--

CREATE TABLE `wp98_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_terms`
--

INSERT INTO `wp98_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sin categorizar', 'sin-categorizar', 0),
(16, 'Principal', 'principal', 0),
(17, 'Secundario', 'secundario', 0),
(18, 'Activacion', 'activacion', 0),
(19, 'Recompra', 'recompra', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_term_relationships`
--

CREATE TABLE `wp98_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_term_relationships`
--

INSERT INTO `wp98_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(28, 18, 0),
(12, 2, 0),
(16, 17, 0),
(17, 17, 0),
(18, 17, 0),
(19, 16, 0),
(20, 16, 0),
(21, 16, 0),
(26, 17, 0),
(27, 17, 0),
(12, 18, 0),
(28, 2, 0),
(29, 19, 0),
(29, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_term_taxonomy`
--

CREATE TABLE `wp98_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_term_taxonomy`
--

INSERT INTO `wp98_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 3),
(17, 17, 'nav_menu', '', 0, 5),
(18, 18, 'product_cat', '', 0, 2),
(19, 19, 'product_cat', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_usermeta`
--

CREATE TABLE `wp98_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_usermeta`
--

INSERT INTO `wp98_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shapinetadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp98_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp98_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ee29f386674dd38db3bb46e2ce74cae83bec86879c9a68857a09b2ee661ec459\";a:4:{s:10:\"expiration\";i:1599077764;s:2:\"ip\";s:13:\"181.63.18.216\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598904964;}}'),
(17, 1, 'wp98_dashboard_quick_press_last_post_id', '31'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"181.63.18.0\";}'),
(57, 2, 'session_tokens', 'a:9:{s:64:\"6fd50f38b54133c1ed787f3c51fa356150251571390f51a22c0126025de6f2c6\";a:4:{s:10:\"expiration\";i:1592434618;s:2:\"ip\";s:14:\"144.217.193.11\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592261818;}s:64:\"a9e081582c93640a52697d4308779e2697495c04f9f93810f78d9d8aacc1cd5f\";a:4:{s:10:\"expiration\";i:1592441495;s:2:\"ip\";s:13:\"51.254.209.86\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592268695;}s:64:\"2280457580c82123fbd01b58805d65bd68896db4b72b0f329ba50f2e289f9382\";a:4:{s:10:\"expiration\";i:1592442340;s:2:\"ip\";s:14:\"91.134.248.249\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592269540;}s:64:\"1a823b8edeb2ac3d05f5a46b006fe5c0ed53eef0a10a313924fe8a398f123ee9\";a:4:{s:10:\"expiration\";i:1592444255;s:2:\"ip\";s:12:\"95.0.170.140\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592271455;}s:64:\"1e6efac89d2f252af2587472871dcd57e17112da681c37e385a432a8d3ed9981\";a:4:{s:10:\"expiration\";i:1592447633;s:2:\"ip\";s:10:\"81.4.96.82\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592274833;}s:64:\"295de33589cf54b7de2c59ccd3fc41a6a6abedd11d53466f584148554c1d3060\";a:4:{s:10:\"expiration\";i:1592449378;s:2:\"ip\";s:13:\"148.71.89.190\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592276578;}s:64:\"c7cd43287540453d80516e9aebfd0f658f3c14c91466057f52dec57a0cd01700\";a:4:{s:10:\"expiration\";i:1592450367;s:2:\"ip\";s:15:\"167.172.252.248\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592277567;}s:64:\"9e82976316508ed4c6d77924bad9284d39aabac545477629f846fb7bec26d87c\";a:4:{s:10:\"expiration\";i:1592451565;s:2:\"ip\";s:13:\"147.139.37.89\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592278765;}s:64:\"1bc4a7a9e680f7b490925a94088c765bce40b2211a8edb3a657aa190074fd5b1\";a:4:{s:10:\"expiration\";i:1592451831;s:2:\"ip\";s:14:\"197.232.53.182\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592279031;}}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:vMOf3jY+VY3SmA2rCHbJq9Kk'),
(20, 1, 'wc_last_active', '1598832000'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:8:{i:0;s:21:\"add-post-type-project\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-project_category\";i:5;s:15:\"add-project_tag\";i:6;s:15:\"add-product_cat\";i:7;s:15:\"add-product_tag\";}'),
(23, 1, 'wp98_user-settings', 'libraryContent=browse'),
(24, 1, 'wp98_user-settings-time', '1585257616'),
(25, 2, 'nickname', 'cliente1@sinergiared.com'),
(26, 2, 'first_name', 'Ramon'),
(27, 2, 'last_name', 'Picon'),
(28, 2, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(29, 2, 'billing_first_name', 'Ramon'),
(30, 2, 'billing_last_name', 'Picon'),
(31, 2, 'billing_email', 'cliente1@sinergiared.com'),
(32, 2, 'billing_phone', NULL),
(33, 3, 'nickname', 'cliente2@sinergiared.com'),
(34, 3, 'first_name', 'Alberto'),
(35, 3, 'last_name', 'Picon'),
(36, 3, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(37, 3, 'billing_first_name', 'Alberto'),
(38, 3, 'billing_last_name', 'Picon'),
(39, 3, 'billing_email', 'cliente2@sinergiared.com'),
(40, 3, 'billing_phone', NULL),
(42, 4, 'nickname', 'danieladmin'),
(43, 4, 'first_name', 'Daniel'),
(44, 4, 'last_name', 'Admin'),
(45, 4, 'description', ''),
(46, 4, 'rich_editing', 'true'),
(47, 4, 'syntax_highlighting', 'true'),
(48, 4, 'comment_shortcuts', 'false'),
(49, 4, 'admin_color', 'fresh'),
(50, 4, 'use_ssl', '0'),
(51, 4, 'show_admin_bar_front', 'true'),
(52, 4, 'locale', ''),
(53, 4, 'wp98_capabilities', 'a:1:{s:12:\"shop_manager\";b:1;}'),
(54, 4, 'wp98_user_level', '9'),
(55, 4, 'dismissed_wp_pointers', ''),
(56, 4, 'last_update', '1585266684'),
(58, 2, 'wc_last_active', '1592265600'),
(60, 3, 'session_tokens', 'a:16:{s:64:\"3fa0940b8547fcd7222bd9320c41f6ac9c8acb54568d1edce883210eab249200\";a:4:{s:10:\"expiration\";i:1592372074;s:2:\"ip\";s:13:\"47.254.69.237\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592199274;}s:64:\"21d74f40c82e31d9b66fecf3ee8c139aba6061e1074dd6b528a2a2250d95e8f4\";a:4:{s:10:\"expiration\";i:1592384333;s:2:\"ip\";s:13:\"134.122.93.28\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592211533;}s:64:\"75b3dbb9de2096ced2a569b3008a963dd9241c5c15d268dd4d371043c767f5a0\";a:4:{s:10:\"expiration\";i:1592389879;s:2:\"ip\";s:11:\"3.23.35.234\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592217079;}s:64:\"76035b3897705eadb60d3a951de24b77fe94c2fc7c4f1f19e3b1f9120a49ea89\";a:4:{s:10:\"expiration\";i:1592390453;s:2:\"ip\";s:11:\"3.7.236.223\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592217653;}s:64:\"bdae4624078dca3a5a81b58d0805b973652700efddb62e7e13f0ec4ba78b3727\";a:4:{s:10:\"expiration\";i:1592395045;s:2:\"ip\";s:12:\"34.86.202.44\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592222245;}s:64:\"17c9ff16aa547115a18c8dab87abfc64c0fbfe80e3c77af9136b5ccc65654e9a\";a:4:{s:10:\"expiration\";i:1592396678;s:2:\"ip\";s:12:\"51.68.229.67\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592223878;}s:64:\"1edba0c41fc27817cfcd104c37196b5ecf687e69455f56ef2b4d076812c6090a\";a:4:{s:10:\"expiration\";i:1592397492;s:2:\"ip\";s:14:\"104.248.16.191\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592224692;}s:64:\"0e4796bad9142ef569fefc430cfb83d2f37051277889e6f751d669438d5988f2\";a:4:{s:10:\"expiration\";i:1592398658;s:2:\"ip\";s:12:\"185.95.0.197\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592225858;}s:64:\"b87c87b0c58c229160c592b91ff81066c0ea8e070a5602dc675ce60cbb26f0f6\";a:4:{s:10:\"expiration\";i:1592398729;s:2:\"ip\";s:13:\"51.254.209.86\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592225929;}s:64:\"e9387cdbc7842344620d969f97f5e0a62b0a789b2399c766327e4aea8ee00b1b\";a:4:{s:10:\"expiration\";i:1592403121;s:2:\"ip\";s:13:\"167.71.211.11\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592230321;}s:64:\"dbb2d3c32647947fa9a238284d9fa75f6402010cb1c74b7425a526545105a547\";a:4:{s:10:\"expiration\";i:1592406002;s:2:\"ip\";s:13:\"157.230.91.15\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592233202;}s:64:\"eff17120dad5225b372299f279a70fa1539c921f3d4821bebc1c16a75ce5ed5b\";a:4:{s:10:\"expiration\";i:1592408950;s:2:\"ip\";s:14:\"188.166.55.115\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592236150;}s:64:\"1469dc0e445d9f04142e561507246872c10b279e70524a74913092e1bb33a0a2\";a:4:{s:10:\"expiration\";i:1592409322;s:2:\"ip\";s:13:\"107.191.44.45\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592236522;}s:64:\"69859b5b8864337c913ce5f86ba76c86a286cab51e066b9334a45ba45fa70648\";a:4:{s:10:\"expiration\";i:1592410010;s:2:\"ip\";s:13:\"183.181.85.69\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592237210;}s:64:\"091eed96a7b82901b6be11b9d6d82b0c50df1da5071f14456b8f430732fde621\";a:4:{s:10:\"expiration\";i:1592410223;s:2:\"ip\";s:15:\"167.172.110.159\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592237423;}s:64:\"c55e4e72c575c5fd6e098a8c20477a10f4342923e4af41b60c922f6b4bf18529\";a:4:{s:10:\"expiration\";i:1592417807;s:2:\"ip\";s:14:\"202.254.236.42\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1592245007;}}'),
(61, 3, 'wc_last_active', '1592179200'),
(144, 1, '_order_count', '0'),
(63, 3, '_order_count', '1'),
(164, 7, 'first_name', 'pietro'),
(163, 7, 'nickname', 'yo@gmail.com'),
(159, 6, 'billing_first_name', 'pietro'),
(160, 6, 'billing_last_name', 'pasqualis'),
(161, 6, 'billing_email', 'yo@gmail.com'),
(162, 6, 'billing_phone', NULL),
(155, 6, 'nickname', 'yo@gmail.com'),
(156, 6, 'first_name', 'pietro'),
(157, 6, 'last_name', 'pasqualis'),
(158, 6, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(151, 5, 'billing_first_name', 'pietro'),
(152, 5, 'billing_last_name', 'pasqualis'),
(153, 5, 'billing_email', 'yo@gmail.com'),
(154, 5, 'billing_phone', NULL),
(148, 5, 'first_name', 'pietro'),
(149, 5, 'last_name', 'pasqualis'),
(150, 5, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(71, 2, '_order_count', '0'),
(147, 5, 'nickname', 'yo@gmail.com'),
(146, 1, 'wp98_managetoplevel_page_snippetscolumnshidden', 'a:1:{i:0;s:2:\"id\";}'),
(165, 7, 'last_name', 'pasqualis'),
(166, 7, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(167, 7, 'billing_first_name', 'pietro'),
(168, 7, 'billing_last_name', 'pasqualis'),
(169, 7, 'billing_email', 'yo@gmail.com'),
(170, 7, 'billing_phone', NULL),
(173, 9, 'nickname', 'yo2@gmail.com'),
(172, 1, 'dismissed_wp_php_min_requirements_7.2_5.2_notice', '1'),
(174, 9, 'first_name', NULL),
(175, 9, 'last_name', NULL),
(176, 9, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(177, 9, 'billing_first_name', NULL),
(178, 9, 'billing_last_name', NULL),
(179, 9, 'billing_email', 'yo2@gmail.com'),
(180, 9, 'billing_phone', NULL),
(248, 10, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(247, 10, 'last_name', 'Sifontes'),
(246, 10, 'first_name', 'Andres'),
(245, 10, 'nickname', 'asifontes@mail.com'),
(283, 14, 'billing_email', 'yo@gmail.com'),
(282, 14, 'billing_last_name', NULL),
(281, 14, 'billing_first_name', NULL),
(280, 14, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(279, 14, 'last_name', NULL),
(278, 14, 'first_name', NULL),
(277, 14, 'nickname', 'yo@gmail.com'),
(291, 15, 'billing_email', 'yo@gmail.com'),
(290, 15, 'billing_last_name', NULL),
(289, 15, 'billing_first_name', NULL),
(288, 15, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(287, 15, 'last_name', NULL),
(286, 15, 'first_name', NULL),
(285, 15, 'nickname', 'yo@gmail.com'),
(299, 16, 'billing_email', 'alexisjoseva95@gmail.com'),
(298, 16, 'billing_last_name', NULL),
(297, 16, 'billing_first_name', NULL),
(296, 16, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(295, 16, 'last_name', NULL),
(294, 16, 'first_name', NULL),
(293, 16, 'nickname', 'alexisjoseva95@gmail.com'),
(307, 17, 'billing_email', 'lestermorales@sinergiared.com'),
(306, 17, 'billing_last_name', NULL),
(305, 17, 'billing_first_name', NULL),
(304, 17, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(303, 17, 'last_name', NULL),
(302, 17, 'first_name', NULL),
(301, 17, 'nickname', 'lestermorales@sinergiared.com'),
(221, 18, 'nickname', 'caramelodesabila@hotmail.com'),
(222, 18, 'first_name', 'Pietro Pascualis'),
(223, 18, 'last_name', 'Pietro Pascualis'),
(224, 18, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(225, 18, 'billing_first_name', 'Pietro Pascualis'),
(226, 18, 'billing_last_name', 'Pietro Pascualis'),
(227, 18, 'billing_email', 'caramelodesabila@hotmail.com'),
(228, 18, 'billing_phone', ' '),
(229, 19, 'nickname', 'caramelodesabila@hotmail.com'),
(230, 19, 'first_name', 'Pietro Pascualis'),
(231, 19, 'last_name', 'Pietro Pascualis'),
(232, 19, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(233, 19, 'billing_first_name', 'Pietro Pascualis'),
(234, 19, 'billing_last_name', 'Pietro Pascualis'),
(235, 19, 'billing_email', 'caramelodesabila@hotmail.com'),
(236, 19, 'billing_phone', ' '),
(237, 20, 'nickname', 'pietropasqualis55@gmail.com'),
(238, 20, 'first_name', 'Pietro Pasqualis'),
(239, 20, 'last_name', 'Pietro Pasqualis'),
(240, 20, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(241, 20, 'billing_first_name', 'Pietro Pasqualis'),
(242, 20, 'billing_last_name', 'Pietro Pasqualis'),
(243, 20, 'billing_email', 'pietropasqualis55@gmail.com'),
(244, 20, 'billing_phone', ' '),
(249, 10, 'billing_first_name', 'Andres'),
(250, 10, 'billing_last_name', 'Sifontes'),
(251, 10, 'billing_email', 'asifontes@mail.com'),
(252, 10, 'billing_phone', NULL),
(253, 11, 'nickname', 'alexisjsoe95@hotmail.com'),
(254, 11, 'first_name', NULL),
(255, 11, 'last_name', NULL),
(256, 11, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(257, 11, 'billing_first_name', NULL),
(258, 11, 'billing_last_name', NULL),
(259, 11, 'billing_email', 'alexisjsoe95@hotmail.com'),
(260, 11, 'billing_phone', NULL),
(261, 12, 'nickname', 'alexisjoseva959@gmail.com'),
(262, 12, 'first_name', 'aa'),
(263, 12, 'last_name', 'a'),
(264, 12, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(265, 12, 'billing_first_name', 'aa'),
(266, 12, 'billing_last_name', 'a'),
(267, 12, 'billing_email', 'alexisjoseva959@gmail.com'),
(268, 12, 'billing_phone', NULL),
(269, 13, 'nickname', 'alexisjoseva952@gmail.com'),
(270, 13, 'first_name', 'nombre'),
(271, 13, 'last_name', 'apellido'),
(272, 13, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(273, 13, 'billing_first_name', 'nombre'),
(274, 13, 'billing_last_name', 'apellido'),
(275, 13, 'billing_email', 'alexisjoseva952@gmail.com'),
(276, 13, 'billing_phone', NULL),
(284, 14, 'billing_phone', NULL),
(292, 15, 'billing_phone', NULL),
(300, 16, 'billing_phone', NULL),
(308, 17, 'billing_phone', NULL),
(320, 10000, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(319, 10000, 'last_name', 'Morales'),
(318, 10000, 'first_name', 'Lester'),
(317, 10000, 'nickname', 'mglesther@hotmail.com'),
(321, 10000, 'billing_first_name', 'Lester'),
(322, 10000, 'billing_last_name', 'Morales'),
(323, 10000, 'billing_email', 'mglesther@hotmail.com'),
(324, 10000, 'billing_phone', NULL),
(325, 10001, 'nickname', 'alexisjose95@hotmail.com'),
(326, 10001, 'first_name', NULL),
(327, 10001, 'last_name', NULL),
(328, 10001, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(329, 10001, 'billing_first_name', NULL),
(330, 10001, 'billing_last_name', NULL),
(331, 10001, 'billing_email', 'alexisjose95@hotmail.com'),
(332, 10001, 'billing_phone', NULL),
(333, 10002, 'nickname', 'conferencias_lm@hotmail.com'),
(334, 10002, 'first_name', 'Lester'),
(335, 10002, 'last_name', 'Morales'),
(336, 10002, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(337, 10002, 'billing_first_name', 'Lester'),
(338, 10002, 'billing_last_name', 'Morales'),
(339, 10002, 'billing_email', 'conferencias_lm@hotmail.com'),
(340, 10002, 'billing_phone', NULL),
(341, 10003, 'nickname', 'sinergia_group@live.com'),
(342, 10003, 'first_name', NULL),
(343, 10003, 'last_name', NULL),
(344, 10003, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(345, 10003, 'billing_first_name', NULL),
(346, 10003, 'billing_last_name', NULL),
(347, 10003, 'billing_email', 'sinergia_group@live.com'),
(348, 10003, 'billing_phone', NULL),
(349, 10004, 'nickname', 'yo@gmail.com'),
(350, 10004, 'first_name', 'pietro'),
(351, 10004, 'last_name', 'pasqualis'),
(352, 10004, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(353, 10004, 'billing_first_name', 'pietro'),
(354, 10004, 'billing_last_name', 'pasqualis'),
(355, 10004, 'billing_email', 'yo@gmail.com'),
(356, 10004, 'billing_phone', NULL),
(357, 10005, 'nickname', 'yo2@gmail.com'),
(358, 10005, 'first_name', 'pietro2'),
(359, 10005, 'last_name', 'pasqualis2'),
(360, 10005, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(361, 10005, 'billing_first_name', 'pietro2'),
(362, 10005, 'billing_last_name', 'pasqualis2'),
(363, 10005, 'billing_email', 'yo2@gmail.com'),
(364, 10005, 'billing_phone', NULL),
(365, 10006, 'nickname', 'yo3@gmail.com'),
(366, 10006, 'first_name', 'pietro3'),
(367, 10006, 'last_name', 'pasqualis3'),
(368, 10006, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(369, 10006, 'billing_first_name', 'pietro3'),
(370, 10006, 'billing_last_name', 'pasqualis3'),
(371, 10006, 'billing_email', 'yo3@gmail.com'),
(372, 10006, 'billing_phone', NULL),
(373, 10007, 'nickname', 'yo4@gmail.com'),
(374, 10007, 'first_name', 'pietro4'),
(375, 10007, 'last_name', 'pasqualis4'),
(376, 10007, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(377, 10007, 'billing_first_name', 'pietro4'),
(378, 10007, 'billing_last_name', 'pasqualis4'),
(379, 10007, 'billing_email', 'yo4@gmail.com'),
(380, 10007, 'billing_phone', NULL),
(381, 10008, 'nickname', 'you@gmail.com'),
(382, 10008, 'first_name', NULL),
(383, 10008, 'last_name', NULL),
(384, 10008, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(385, 10008, 'billing_first_name', NULL),
(386, 10008, 'billing_last_name', NULL),
(387, 10008, 'billing_email', 'you@gmail.com'),
(388, 10008, 'billing_phone', NULL),
(389, 10009, 'nickname', 'fernandoherrera@gmail.com'),
(390, 10009, 'first_name', 'Fernando'),
(391, 10009, 'last_name', 'Herrera'),
(392, 10009, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(393, 10009, 'billing_first_name', 'Fernando'),
(394, 10009, 'billing_last_name', 'Herrera'),
(395, 10009, 'billing_email', 'fernandoherrera@gmail.com'),
(396, 10009, 'billing_phone', NULL),
(397, 10010, 'nickname', 'alexisjoseva955656@gmail.com0'),
(398, 10010, 'first_name', NULL),
(399, 10010, 'last_name', NULL),
(400, 10010, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(401, 10010, 'billing_first_name', NULL),
(402, 10010, 'billing_last_name', NULL),
(403, 10010, 'billing_email', 'alexisjoseva955656@gmail.com0'),
(404, 10010, 'billing_phone', NULL),
(405, 10011, 'nickname', 'alexisjoseva955656@gmail.com2'),
(406, 10011, 'first_name', 'Alexisvalera'),
(407, 10011, 'last_name', 'AGDSCVVG'),
(408, 10011, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(409, 10011, 'billing_first_name', 'Alexisvalera'),
(410, 10011, 'billing_last_name', 'AGDSCVVG'),
(411, 10011, 'billing_email', 'alexisjoseva955656@gmail.com2'),
(412, 10011, 'billing_phone', NULL),
(413, 10012, 'nickname', 'alexisjoseva95@gmail.com3'),
(414, 10012, 'first_name', 'Daniel'),
(415, 10012, 'last_name', 'valera'),
(416, 10012, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(417, 10012, 'billing_first_name', 'Daniel'),
(418, 10012, 'billing_last_name', 'valera'),
(419, 10012, 'billing_email', 'alexisjoseva95@gmail.com3'),
(420, 10012, 'billing_phone', NULL),
(421, 10013, 'nickname', 'cgonzalez.byob@gmail.com'),
(422, 10013, 'first_name', NULL),
(423, 10013, 'last_name', NULL),
(424, 10013, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(425, 10013, 'billing_first_name', NULL),
(426, 10013, 'billing_last_name', NULL),
(427, 10013, 'billing_email', 'cgonzalez.byob@gmail.com'),
(428, 10013, 'billing_phone', NULL),
(429, 10014, 'nickname', 'prueba@gmail.com'),
(430, 10014, 'first_name', NULL),
(431, 10014, 'last_name', NULL),
(432, 10014, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(433, 10014, 'billing_first_name', NULL),
(434, 10014, 'billing_last_name', NULL),
(435, 10014, 'billing_email', 'prueba@gmail.com'),
(436, 10014, 'billing_phone', NULL),
(437, 10015, 'nickname', 'alexis@valdusoft.com'),
(438, 10015, 'first_name', NULL),
(439, 10015, 'last_name', NULL),
(440, 10015, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(441, 10015, 'billing_first_name', NULL),
(442, 10015, 'billing_last_name', NULL),
(443, 10015, 'billing_email', 'alexis@valdusoft.com'),
(444, 10015, 'billing_phone', NULL),
(445, 10016, 'nickname', 'iu@gmail.com'),
(446, 10016, 'first_name', NULL),
(447, 10016, 'last_name', NULL),
(448, 10016, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(449, 10016, 'billing_first_name', NULL),
(450, 10016, 'billing_last_name', NULL),
(451, 10016, 'billing_email', 'iu@gmail.com'),
(452, 10016, 'billing_phone', NULL),
(453, 10017, 'nickname', 'prueba5@gmail.com'),
(454, 10017, 'first_name', NULL),
(455, 10017, 'last_name', NULL),
(456, 10017, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(457, 10017, 'billing_first_name', NULL),
(458, 10017, 'billing_last_name', NULL),
(459, 10017, 'billing_email', 'prueba5@gmail.com'),
(460, 10017, 'billing_phone', NULL),
(461, 10018, 'nickname', 'yo@gmail.com'),
(462, 10018, 'first_name', NULL),
(463, 10018, 'last_name', NULL),
(464, 10018, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(465, 10018, 'billing_first_name', NULL),
(466, 10018, 'billing_last_name', NULL),
(467, 10018, 'billing_email', 'yo@gmail.com'),
(468, 10018, 'billing_phone', NULL),
(469, 10019, 'nickname', 'alexi@b.com'),
(470, 10019, 'first_name', NULL),
(471, 10019, 'last_name', NULL),
(472, 10019, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(473, 10019, 'billing_first_name', NULL),
(474, 10019, 'billing_last_name', NULL),
(475, 10019, 'billing_email', 'alexi@b.com'),
(476, 10019, 'billing_phone', NULL),
(477, 10020, 'nickname', 'yo2@gmail.com'),
(478, 10020, 'first_name', NULL),
(479, 10020, 'last_name', NULL),
(480, 10020, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(481, 10020, 'billing_first_name', NULL),
(482, 10020, 'billing_last_name', NULL),
(483, 10020, 'billing_email', 'yo2@gmail.com'),
(484, 10020, 'billing_phone', NULL),
(485, 10021, 'nickname', 'I@gmail.com'),
(486, 10021, 'first_name', NULL),
(487, 10021, 'last_name', NULL),
(488, 10021, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(489, 10021, 'billing_first_name', NULL),
(490, 10021, 'billing_last_name', NULL),
(491, 10021, 'billing_email', 'I@gmail.com'),
(492, 10021, 'billing_phone', NULL),
(493, 10022, 'nickname', 'conferencias.lestermorales@gmail.com'),
(494, 10022, 'first_name', NULL),
(495, 10022, 'last_name', NULL),
(496, 10022, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(497, 10022, 'billing_first_name', NULL),
(498, 10022, 'billing_last_name', NULL),
(499, 10022, 'billing_email', 'conferencias.lestermorales@gmail.com'),
(500, 10022, 'billing_phone', NULL),
(501, 10023, 'nickname', 'yo3@gmail.com'),
(502, 10023, 'first_name', NULL),
(503, 10023, 'last_name', NULL),
(504, 10023, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(505, 10023, 'billing_first_name', NULL),
(506, 10023, 'billing_last_name', NULL),
(507, 10023, 'billing_email', 'yo3@gmail.com'),
(508, 10023, 'billing_phone', NULL),
(509, 10024, 'nickname', 'preba8@gmail.com'),
(510, 10024, 'first_name', NULL),
(511, 10024, 'last_name', NULL),
(512, 10024, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(513, 10024, 'billing_first_name', NULL),
(514, 10024, 'billing_last_name', NULL),
(515, 10024, 'billing_email', 'preba8@gmail.com'),
(516, 10024, 'billing_phone', NULL),
(517, 10025, 'nickname', 'conferencias@lestermorales.com'),
(518, 10025, 'first_name', 'Lester'),
(519, 10025, 'last_name', 'Morales'),
(520, 10025, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(521, 10025, 'billing_first_name', 'Lester'),
(522, 10025, 'billing_last_name', 'Morales'),
(523, 10025, 'billing_email', 'conferencias@lestermorales.com'),
(524, 10025, 'billing_phone', NULL),
(525, 10026, 'nickname', 'moderador@gmail.com'),
(526, 10026, 'first_name', 'moderador'),
(527, 10026, 'last_name', 'moderador'),
(528, 10026, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(529, 10026, 'billing_first_name', 'moderador'),
(530, 10026, 'billing_last_name', 'moderador'),
(531, 10026, 'billing_email', 'moderador@gmail.com'),
(532, 10026, 'billing_phone', NULL),
(533, 10027, 'nickname', 'yo5@gmail.com'),
(534, 10027, 'first_name', NULL),
(535, 10027, 'last_name', NULL),
(536, 10027, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(537, 10027, 'billing_first_name', NULL),
(538, 10027, 'billing_last_name', NULL),
(539, 10027, 'billing_email', 'yo5@gmail.com'),
(540, 10027, 'billing_phone', NULL),
(541, 10028, 'nickname', 'yo6@gmail.com'),
(542, 10028, 'first_name', NULL),
(543, 10028, 'last_name', NULL),
(544, 10028, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(545, 10028, 'billing_first_name', NULL),
(546, 10028, 'billing_last_name', NULL),
(547, 10028, 'billing_email', 'yo6@gmail.com'),
(548, 10028, 'billing_phone', NULL),
(549, 10029, 'nickname', 'yo@gmail.com'),
(550, 10029, 'first_name', NULL),
(551, 10029, 'last_name', NULL),
(552, 10029, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(553, 10029, 'billing_first_name', NULL),
(554, 10029, 'billing_last_name', NULL),
(555, 10029, 'billing_email', 'yo@gmail.com'),
(556, 10029, 'billing_phone', NULL),
(557, 10030, 'nickname', 'yo2@gmail.com'),
(558, 10030, 'first_name', NULL),
(559, 10030, 'last_name', NULL),
(560, 10030, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(561, 10030, 'billing_first_name', NULL),
(562, 10030, 'billing_last_name', NULL),
(563, 10030, 'billing_email', 'yo2@gmail.com'),
(564, 10030, 'billing_phone', NULL),
(565, 10031, 'nickname', 'yo3@gmail.com'),
(566, 10031, 'first_name', NULL),
(567, 10031, 'last_name', NULL),
(568, 10031, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(569, 10031, 'billing_first_name', NULL),
(570, 10031, 'billing_last_name', NULL),
(571, 10031, 'billing_email', 'yo3@gmail.com'),
(572, 10031, 'billing_phone', NULL),
(573, 10032, 'nickname', 'yo4@gmail.com'),
(574, 10032, 'first_name', NULL),
(575, 10032, 'last_name', NULL),
(576, 10032, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(577, 10032, 'billing_first_name', NULL),
(578, 10032, 'billing_last_name', NULL),
(579, 10032, 'billing_email', 'yo4@gmail.com'),
(580, 10032, 'billing_phone', NULL),
(581, 10033, 'nickname', 'tes02@gmail.com'),
(582, 10033, 'first_name', NULL),
(583, 10033, 'last_name', NULL),
(584, 10033, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(585, 10033, 'billing_first_name', NULL),
(586, 10033, 'billing_last_name', NULL),
(587, 10033, 'billing_email', 'tes02@gmail.com'),
(588, 10033, 'billing_phone', NULL),
(589, 10034, 'nickname', 'tes04@gmail.com'),
(590, 10034, 'first_name', NULL),
(591, 10034, 'last_name', NULL),
(592, 10034, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(593, 10034, 'billing_first_name', NULL),
(594, 10034, 'billing_last_name', NULL),
(595, 10034, 'billing_email', 'tes04@gmail.com'),
(596, 10034, 'billing_phone', NULL),
(597, 10035, 'nickname', 'mm@gmail.com'),
(598, 10035, 'first_name', NULL),
(599, 10035, 'last_name', NULL),
(600, 10035, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(601, 10035, 'billing_first_name', NULL),
(602, 10035, 'billing_last_name', NULL),
(603, 10035, 'billing_email', 'mm@gmail.com'),
(604, 10035, 'billing_phone', NULL),
(605, 10036, 'nickname', 'iuo@gmail.com'),
(606, 10036, 'first_name', NULL),
(607, 10036, 'last_name', NULL),
(608, 10036, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(609, 10036, 'billing_first_name', NULL),
(610, 10036, 'billing_last_name', NULL),
(611, 10036, 'billing_email', 'iuo@gmail.com'),
(612, 10036, 'billing_phone', NULL),
(613, 10037, 'nickname', 'yoci@gmail.com'),
(614, 10037, 'first_name', NULL),
(615, 10037, 'last_name', NULL),
(616, 10037, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(617, 10037, 'billing_first_name', NULL),
(618, 10037, 'billing_last_name', NULL),
(619, 10037, 'billing_email', 'yoci@gmail.com'),
(620, 10037, 'billing_phone', NULL),
(621, 10038, 'nickname', 'al@gmail.com'),
(622, 10038, 'first_name', NULL),
(623, 10038, 'last_name', NULL),
(624, 10038, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(625, 10038, 'billing_first_name', NULL),
(626, 10038, 'billing_last_name', NULL),
(627, 10038, 'billing_email', 'al@gmail.com'),
(628, 10038, 'billing_phone', NULL),
(629, 10039, 'nickname', 'manuelguerrero@mbapro.com'),
(630, 10039, 'first_name', 'Manuel'),
(631, 10039, 'last_name', 'Guerrero'),
(632, 10039, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(633, 10039, 'billing_first_name', 'Manuel'),
(634, 10039, 'billing_last_name', 'Guerrero'),
(635, 10039, 'billing_email', 'manuelguerrero@mbapro.com'),
(636, 10039, 'billing_phone', NULL),
(637, 10040, 'nickname', 'consultas@sinergiared.com'),
(638, 10040, 'first_name', 'Lester Referido'),
(639, 10040, 'last_name', 'Referido2'),
(640, 10040, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(641, 10040, 'billing_first_name', 'Lester Referido'),
(642, 10040, 'billing_last_name', 'Referido2'),
(643, 10040, 'billing_email', 'consultas@sinergiared.com'),
(644, 10040, 'billing_phone', NULL),
(645, 10041, 'nickname', 'llso@gmail.com'),
(646, 10041, 'first_name', NULL),
(647, 10041, 'last_name', NULL),
(648, 10041, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(649, 10041, 'billing_first_name', NULL),
(650, 10041, 'billing_last_name', NULL),
(651, 10041, 'billing_email', 'llso@gmail.com'),
(652, 10041, 'billing_phone', NULL),
(653, 10042, 'nickname', 'cliente20@sinergiared.com'),
(654, 10042, 'first_name', 'Martha'),
(655, 10042, 'last_name', 'Gonzalez'),
(656, 10042, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(657, 10042, 'billing_first_name', 'Martha'),
(658, 10042, 'billing_last_name', 'Gonzalez'),
(659, 10042, 'billing_email', 'cliente20@sinergiared.com'),
(660, 10042, 'billing_phone', NULL),
(661, 10043, 'nickname', 'po@g.vom'),
(662, 10043, 'first_name', NULL),
(663, 10043, 'last_name', NULL),
(664, 10043, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(665, 10043, 'billing_first_name', NULL),
(666, 10043, 'billing_last_name', NULL),
(667, 10043, 'billing_email', 'po@g.vom'),
(668, 10043, 'billing_phone', NULL),
(669, 10044, 'nickname', 'ramo@gmail.com'),
(670, 10044, 'first_name', NULL),
(671, 10044, 'last_name', NULL),
(672, 10044, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(673, 10044, 'billing_first_name', NULL),
(674, 10044, 'billing_last_name', NULL),
(675, 10044, 'billing_email', 'ramo@gmail.com'),
(676, 10044, 'billing_phone', NULL),
(677, 10045, 'nickname', 'pro@gmail.com'),
(678, 10045, 'first_name', 'Ramon alberto'),
(679, 10045, 'last_name', 'picon'),
(680, 10045, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(681, 10045, 'billing_first_name', 'Ramon alberto'),
(682, 10045, 'billing_last_name', 'picon'),
(683, 10045, 'billing_email', 'pro@gmail.com'),
(684, 10045, 'billing_phone', NULL),
(685, 10046, 'nickname', '9@gmail.com'),
(686, 10046, 'first_name', NULL),
(687, 10046, 'last_name', NULL),
(688, 10046, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(689, 10046, 'billing_first_name', NULL),
(690, 10046, 'billing_last_name', NULL),
(691, 10046, 'billing_email', '9@gmail.com'),
(692, 10046, 'billing_phone', NULL),
(693, 10047, 'nickname', 'Alexisjoseva95@gmail.com4'),
(694, 10047, 'first_name', NULL),
(695, 10047, 'last_name', NULL),
(696, 10047, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(697, 10047, 'billing_first_name', NULL),
(698, 10047, 'billing_last_name', NULL),
(699, 10047, 'billing_email', 'Alexisjoseva95@gmail.com4'),
(700, 10047, 'billing_phone', NULL),
(701, 10048, 'nickname', 'cliente10@sinergiared.com'),
(702, 10048, 'first_name', 'Tania'),
(703, 10048, 'last_name', 'Tostao Ramos'),
(704, 10048, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(705, 10048, 'billing_first_name', 'Tania'),
(706, 10048, 'billing_last_name', 'Tostao Ramos'),
(707, 10048, 'billing_email', 'cliente10@sinergiared.com'),
(708, 10048, 'billing_phone', NULL),
(709, 10049, 'nickname', 'soporte@sinergiared.com'),
(710, 10049, 'first_name', 'ramon'),
(711, 10049, 'last_name', 'picon'),
(712, 10049, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(713, 10049, 'billing_first_name', 'ramon'),
(714, 10049, 'billing_last_name', 'picon'),
(715, 10049, 'billing_email', 'soporte@sinergiared.com'),
(716, 10049, 'billing_phone', NULL),
(717, 10050, 'nickname', 'tes5000@gmail.com'),
(718, 10050, 'first_name', 'tes5000'),
(719, 10050, 'last_name', 'picon'),
(720, 10050, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(721, 10050, 'billing_first_name', 'tes5000'),
(722, 10050, 'billing_last_name', 'picon'),
(723, 10050, 'billing_email', 'tes5000@gmail.com'),
(724, 10050, 'billing_phone', NULL),
(725, 10051, 'nickname', 'pedro@gmail.com'),
(726, 10051, 'first_name', NULL),
(727, 10051, 'last_name', NULL),
(728, 10051, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(729, 10051, 'billing_first_name', NULL),
(730, 10051, 'billing_last_name', NULL),
(731, 10051, 'billing_email', 'pedro@gmail.com'),
(732, 10051, 'billing_phone', NULL),
(733, 10052, 'nickname', 'erick@gmail.com'),
(734, 10052, 'first_name', 'Erick'),
(735, 10052, 'last_name', 'Reynaga'),
(736, 10052, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(737, 10052, 'billing_first_name', 'Erick'),
(738, 10052, 'billing_last_name', 'Reynaga'),
(739, 10052, 'billing_email', 'erick@gmail.com'),
(740, 10052, 'billing_phone', NULL),
(741, 10053, 'nickname', 'alexisjoseva95@gmail.com0'),
(742, 10053, 'first_name', NULL),
(743, 10053, 'last_name', NULL),
(744, 10053, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(745, 10053, 'billing_first_name', NULL),
(746, 10053, 'billing_last_name', NULL),
(747, 10053, 'billing_email', 'alexisjoseva95@gmail.com0'),
(748, 10053, 'billing_phone', NULL),
(749, 10054, 'nickname', '1@gmail.com'),
(750, 10054, 'first_name', 'Alexis'),
(751, 10054, 'last_name', 'valera'),
(752, 10054, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(753, 10054, 'billing_first_name', 'Alexis'),
(754, 10054, 'billing_last_name', 'valera'),
(755, 10054, 'billing_email', '1@gmail.com'),
(756, 10054, 'billing_phone', NULL),
(757, 10055, 'nickname', 'johan@gmail.com'),
(758, 10055, 'first_name', 'Johan'),
(759, 10055, 'last_name', 'Goncalves'),
(760, 10055, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(761, 10055, 'billing_first_name', 'Johan'),
(762, 10055, 'billing_last_name', 'Goncalves'),
(763, 10055, 'billing_email', 'johan@gmail.com'),
(764, 10055, 'billing_phone', NULL),
(765, 10056, 'nickname', 'mirela@gmail.com'),
(766, 10056, 'first_name', 'Mirela'),
(767, 10056, 'last_name', 'Vuckovic'),
(768, 10056, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(769, 10056, 'billing_first_name', 'Mirela'),
(770, 10056, 'billing_last_name', 'Vuckovic'),
(771, 10056, 'billing_email', 'mirela@gmail.com'),
(772, 10056, 'billing_phone', NULL),
(773, 10057, 'nickname', 'francisco@gmail.com'),
(774, 10057, 'first_name', 'Francisco'),
(775, 10057, 'last_name', 'Valencia Pérez'),
(776, 10057, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(777, 10057, 'billing_first_name', 'Francisco'),
(778, 10057, 'billing_last_name', 'Valencia Pérez'),
(779, 10057, 'billing_email', 'francisco@gmail.com'),
(780, 10057, 'billing_phone', NULL),
(781, 10058, 'nickname', 'luisanaelenamarin@gmail.com'),
(782, 10058, 'first_name', NULL),
(783, 10058, 'last_name', NULL),
(784, 10058, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(785, 10058, 'billing_first_name', NULL),
(786, 10058, 'billing_last_name', NULL),
(787, 10058, 'billing_email', 'luisanaelenamarin@gmail.com'),
(788, 10058, 'billing_phone', NULL),
(789, 10059, 'nickname', 'lvmb29@gmail.com'),
(790, 10059, 'first_name', 'Luisanaelena'),
(791, 10059, 'last_name', 'Marín'),
(792, 10059, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(793, 10059, 'billing_first_name', 'Luisanaelena'),
(794, 10059, 'billing_last_name', 'Marín'),
(795, 10059, 'billing_email', 'lvmb29@gmail.com'),
(796, 10059, 'billing_phone', NULL),
(797, 10060, 'nickname', 'ramalejtq@gmail.com'),
(798, 10060, 'first_name', 'Ramón Alberto'),
(799, 10060, 'last_name', 'Picon Guerra'),
(800, 10060, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(801, 10060, 'billing_first_name', 'Ramón Alberto'),
(802, 10060, 'billing_last_name', 'Picon Guerra'),
(803, 10060, 'billing_email', 'ramalejtq@gmail.com'),
(804, 10060, 'billing_phone', NULL),
(805, 10061, 'nickname', 'mentor@gmail.com'),
(806, 10061, 'first_name', 'mentor'),
(807, 10061, 'last_name', 'mentor'),
(808, 10061, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(809, 10061, 'billing_first_name', 'mentor'),
(810, 10061, 'billing_last_name', 'mentor'),
(811, 10061, 'billing_email', 'mentor@gmail.com'),
(812, 10061, 'billing_phone', NULL),
(813, 10062, 'nickname', 'alexis@prueba.com45'),
(814, 10062, 'first_name', NULL),
(815, 10062, 'last_name', NULL),
(816, 10062, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(817, 10062, 'billing_first_name', NULL),
(818, 10062, 'billing_last_name', NULL),
(819, 10062, 'billing_email', 'alexis@prueba.com45'),
(820, 10062, 'billing_phone', NULL),
(821, 10063, 'nickname', 'cliente5@sinergiared.com'),
(822, 10063, 'first_name', NULL),
(823, 10063, 'last_name', NULL),
(824, 10063, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(825, 10063, 'billing_first_name', NULL),
(826, 10063, 'billing_last_name', NULL),
(827, 10063, 'billing_email', 'cliente5@sinergiared.com'),
(828, 10063, 'billing_phone', NULL),
(829, 10064, 'nickname', 'alejandrocamacho@sinergiared.com'),
(830, 10064, 'first_name', NULL),
(831, 10064, 'last_name', NULL),
(832, 10064, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(833, 10064, 'billing_first_name', NULL),
(834, 10064, 'billing_last_name', NULL),
(835, 10064, 'billing_email', 'alejandrocamacho@sinergiared.com'),
(836, 10064, 'billing_phone', NULL),
(837, 10065, 'nickname', 'conferenciasg.rodriguez@gmail.com'),
(838, 10065, 'first_name', NULL),
(839, 10065, 'last_name', NULL),
(840, 10065, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(841, 10065, 'billing_first_name', NULL),
(842, 10065, 'billing_last_name', NULL),
(843, 10065, 'billing_email', 'conferenciasg.rodriguez@gmail.com'),
(844, 10065, 'billing_phone', NULL),
(845, 10066, 'nickname', 'elquintero22@gmail.com'),
(846, 10066, 'first_name', NULL),
(847, 10066, 'last_name', NULL),
(848, 10066, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(849, 10066, 'billing_first_name', NULL),
(850, 10066, 'billing_last_name', NULL),
(851, 10066, 'billing_email', 'elquintero22@gmail.com'),
(852, 10066, 'billing_phone', NULL),
(853, 10067, 'nickname', 'cliente11@sinergiared.com'),
(854, 10067, 'first_name', NULL),
(855, 10067, 'last_name', NULL),
(856, 10067, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(857, 10067, 'billing_first_name', NULL),
(858, 10067, 'billing_last_name', NULL),
(859, 10067, 'billing_email', 'cliente11@sinergiared.com'),
(860, 10067, 'billing_phone', NULL),
(861, 10068, 'nickname', 'prueba1@gmail.com'),
(862, 10068, 'first_name', NULL),
(863, 10068, 'last_name', NULL),
(864, 10068, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(865, 10068, 'billing_first_name', NULL),
(866, 10068, 'billing_last_name', NULL),
(867, 10068, 'billing_email', 'prueba1@gmail.com'),
(868, 10068, 'billing_phone', NULL),
(869, 10069, 'nickname', 'red1@gmail.com'),
(870, 10069, 'first_name', NULL),
(871, 10069, 'last_name', NULL),
(872, 10069, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(873, 10069, 'billing_first_name', NULL),
(874, 10069, 'billing_last_name', NULL),
(875, 10069, 'billing_email', 'red1@gmail.com'),
(876, 10069, 'billing_phone', NULL),
(877, 10070, 'nickname', 'lvmb29@gmail.com'),
(878, 10070, 'first_name', NULL),
(879, 10070, 'last_name', NULL),
(880, 10070, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(881, 10070, 'billing_first_name', NULL),
(882, 10070, 'billing_last_name', NULL),
(883, 10070, 'billing_email', 'lvmb29@gmail.com'),
(884, 10070, 'billing_phone', NULL),
(885, 10071, 'nickname', 'taniatostado@mybusinessacademypro.com'),
(886, 10071, 'first_name', NULL),
(887, 10071, 'last_name', NULL),
(888, 10071, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(889, 10071, 'billing_first_name', NULL),
(890, 10071, 'billing_last_name', NULL),
(891, 10071, 'billing_email', 'taniatostado@mybusinessacademypro.com'),
(892, 10071, 'billing_phone', NULL),
(893, 10072, 'nickname', 'manuelguerrero@mybusinessacademypro.com'),
(894, 10072, 'first_name', NULL),
(895, 10072, 'last_name', NULL),
(896, 10072, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(897, 10072, 'billing_first_name', NULL),
(898, 10072, 'billing_last_name', NULL),
(899, 10072, 'billing_email', 'manuelguerrero@mybusinessacademypro.com'),
(900, 10072, 'billing_phone', NULL),
(901, 10073, 'nickname', 'mirelavuckovic@mybusinessacademypro.com'),
(902, 10073, 'first_name', NULL),
(903, 10073, 'last_name', NULL),
(904, 10073, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(905, 10073, 'billing_first_name', NULL),
(906, 10073, 'billing_last_name', NULL),
(907, 10073, 'billing_email', 'mirelavuckovic@mybusinessacademypro.com'),
(908, 10073, 'billing_phone', NULL),
(909, 10074, 'nickname', 'erickreynaga@mybusinessacademypro.com'),
(910, 10074, 'first_name', NULL),
(911, 10074, 'last_name', NULL),
(912, 10074, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(913, 10074, 'billing_first_name', NULL),
(914, 10074, 'billing_last_name', NULL),
(915, 10074, 'billing_email', 'erickreynaga@mybusinessacademypro.com'),
(916, 10074, 'billing_phone', NULL),
(917, 10075, 'nickname', 'luisanaelenamarin@gmail.com'),
(918, 10075, 'first_name', NULL),
(919, 10075, 'last_name', NULL),
(920, 10075, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(921, 10075, 'billing_first_name', NULL),
(922, 10075, 'billing_last_name', NULL),
(923, 10075, 'billing_email', 'luisanaelenamarin@gmail.com'),
(924, 10075, 'billing_phone', NULL),
(925, 10076, 'nickname', 'lvmb29@gmail.com'),
(926, 10076, 'first_name', NULL),
(927, 10076, 'last_name', NULL),
(928, 10076, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(929, 10076, 'billing_first_name', NULL),
(930, 10076, 'billing_last_name', NULL),
(931, 10076, 'billing_email', 'lvmb29@gmail.com'),
(932, 10076, 'billing_phone', NULL),
(933, 10077, 'nickname', 'pruebacliente@gmail.com'),
(934, 10077, 'first_name', NULL),
(935, 10077, 'last_name', NULL),
(936, 10077, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(937, 10077, 'billing_first_name', NULL),
(938, 10077, 'billing_last_name', NULL),
(939, 10077, 'billing_email', 'pruebacliente@gmail.com'),
(940, 10077, 'billing_phone', NULL),
(941, 10078, 'nickname', 'ramalejtq@gmail.com'),
(942, 10078, 'first_name', NULL),
(943, 10078, 'last_name', NULL),
(944, 10078, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(945, 10078, 'billing_first_name', NULL),
(946, 10078, 'billing_last_name', NULL),
(947, 10078, 'billing_email', 'ramalejtq@gmail.com'),
(948, 10078, 'billing_phone', NULL),
(949, 10079, 'nickname', 'ramalejtq@hotmail.com'),
(950, 10079, 'first_name', NULL),
(951, 10079, 'last_name', NULL),
(952, 10079, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(953, 10079, 'billing_first_name', NULL),
(954, 10079, 'billing_last_name', NULL),
(955, 10079, 'billing_email', 'ramalejtq@hotmail.com'),
(956, 10079, 'billing_phone', NULL),
(957, 10080, 'nickname', 'lestermorales@sinergiared.com'),
(958, 10080, 'first_name', NULL),
(959, 10080, 'last_name', NULL),
(960, 10080, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(961, 10080, 'billing_first_name', NULL),
(962, 10080, 'billing_last_name', NULL),
(963, 10080, 'billing_email', 'lestermorales@sinergiared.com'),
(964, 10080, 'billing_phone', NULL),
(965, 10081, 'nickname', 'fjms93@gmail.com'),
(966, 10081, 'first_name', NULL),
(967, 10081, 'last_name', NULL),
(968, 10081, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(969, 10081, 'billing_first_name', NULL),
(970, 10081, 'billing_last_name', NULL),
(971, 10081, 'billing_email', 'fjms93@gmail.com'),
(972, 10081, 'billing_phone', NULL),
(973, 10082, 'nickname', 'caslo@prueba.com'),
(974, 10082, 'first_name', NULL),
(975, 10082, 'last_name', NULL),
(976, 10082, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(977, 10082, 'billing_first_name', NULL),
(978, 10082, 'billing_last_name', NULL),
(979, 10082, 'billing_email', 'caslo@prueba.com'),
(980, 10082, 'billing_phone', NULL),
(981, 10083, 'nickname', 'matias@mail.com'),
(982, 10083, 'first_name', NULL),
(983, 10083, 'last_name', NULL),
(984, 10083, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(985, 10083, 'billing_first_name', NULL),
(986, 10083, 'billing_last_name', NULL),
(987, 10083, 'billing_email', 'matias@mail.com'),
(988, 10083, 'billing_phone', NULL),
(989, 10084, 'nickname', 'prueba2@mail.com'),
(990, 10084, 'first_name', NULL),
(991, 10084, 'last_name', NULL),
(992, 10084, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(993, 10084, 'billing_first_name', NULL),
(994, 10084, 'billing_last_name', NULL),
(995, 10084, 'billing_email', 'prueba2@mail.com'),
(996, 10084, 'billing_phone', NULL),
(997, 10085, 'nickname', 'sinergia_group@live.com'),
(998, 10085, 'first_name', NULL),
(999, 10085, 'last_name', NULL),
(1000, 10085, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1001, 10085, 'billing_first_name', NULL),
(1002, 10085, 'billing_last_name', NULL),
(1003, 10085, 'billing_email', 'sinergia_group@live.com'),
(1004, 10085, 'billing_phone', NULL),
(1005, 10086, 'nickname', 'conferencias_lm@hotmail.com'),
(1006, 10086, 'first_name', NULL),
(1007, 10086, 'last_name', NULL),
(1008, 10086, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1009, 10086, 'billing_first_name', NULL),
(1010, 10086, 'billing_last_name', NULL),
(1011, 10086, 'billing_email', 'conferencias_lm@hotmail.com'),
(1012, 10086, 'billing_phone', NULL),
(1013, 10087, 'nickname', 'recursos.marketing@gmail.com'),
(1014, 10087, 'first_name', NULL),
(1015, 10087, 'last_name', NULL),
(1016, 10087, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1017, 10087, 'billing_first_name', NULL),
(1018, 10087, 'billing_last_name', NULL),
(1019, 10087, 'billing_email', 'recursos.marketing@gmail.com'),
(1020, 10087, 'billing_phone', NULL),
(1021, 10088, 'nickname', 'alexis@prueba.com88'),
(1022, 10088, 'first_name', NULL),
(1023, 10088, 'last_name', NULL),
(1024, 10088, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1025, 10088, 'billing_first_name', NULL),
(1026, 10088, 'billing_last_name', NULL),
(1027, 10088, 'billing_email', 'alexis@prueba.com88'),
(1028, 10088, 'billing_phone', NULL),
(1029, 10089, 'nickname', 'prueba-luisana@gmail.com'),
(1030, 10089, 'first_name', NULL),
(1031, 10089, 'last_name', NULL),
(1032, 10089, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1033, 10089, 'billing_first_name', NULL),
(1034, 10089, 'billing_last_name', NULL),
(1035, 10089, 'billing_email', 'prueba-luisana@gmail.com'),
(1036, 10089, 'billing_phone', NULL),
(1037, 10090, 'nickname', 'principiante@gmail.com'),
(1038, 10090, 'first_name', NULL),
(1039, 10090, 'last_name', NULL),
(1040, 10090, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1041, 10090, 'billing_first_name', NULL),
(1042, 10090, 'billing_last_name', NULL),
(1043, 10090, 'billing_email', 'principiante@gmail.com'),
(1044, 10090, 'billing_phone', NULL),
(1045, 10091, 'nickname', 'basico@gmail.com'),
(1046, 10091, 'first_name', NULL),
(1047, 10091, 'last_name', NULL),
(1048, 10091, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1049, 10091, 'billing_first_name', NULL),
(1050, 10091, 'billing_last_name', NULL),
(1051, 10091, 'billing_email', 'basico@gmail.com'),
(1052, 10091, 'billing_phone', NULL),
(1053, 10092, 'nickname', 'intermedio@gmail.com'),
(1054, 10092, 'first_name', NULL),
(1055, 10092, 'last_name', NULL),
(1056, 10092, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1057, 10092, 'billing_first_name', NULL),
(1058, 10092, 'billing_last_name', NULL),
(1059, 10092, 'billing_email', 'intermedio@gmail.com'),
(1060, 10092, 'billing_phone', NULL),
(1061, 10093, 'nickname', 'avanzado@gmail.com'),
(1062, 10093, 'first_name', NULL),
(1063, 10093, 'last_name', NULL),
(1064, 10093, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1065, 10093, 'billing_first_name', NULL),
(1066, 10093, 'billing_last_name', NULL),
(1067, 10093, 'billing_email', 'avanzado@gmail.com'),
(1068, 10093, 'billing_phone', NULL),
(1069, 10094, 'nickname', 'pro@gmail.com'),
(1070, 10094, 'first_name', NULL),
(1071, 10094, 'last_name', NULL),
(1072, 10094, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1073, 10094, 'billing_first_name', NULL),
(1074, 10094, 'billing_last_name', NULL),
(1075, 10094, 'billing_email', 'pro@gmail.com'),
(1076, 10094, 'billing_phone', NULL),
(1077, 10095, 'nickname', 'yo@gmail.com'),
(1078, 10095, 'first_name', 'pedro'),
(1079, 10095, 'last_name', 'pedro'),
(1080, 10095, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1081, 10095, 'billing_first_name', 'pedro'),
(1082, 10095, 'billing_last_name', 'pedro'),
(1083, 10095, 'billing_email', 'yo@gmail.com'),
(1084, 10095, 'billing_phone', NULL),
(1085, 10096, 'nickname', 'conferenciasg.rodriguez@gmail.com'),
(1086, 10096, 'first_name', NULL),
(1087, 10096, 'last_name', NULL),
(1088, 10096, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1089, 10096, 'billing_first_name', NULL),
(1090, 10096, 'billing_last_name', NULL),
(1091, 10096, 'billing_email', 'conferenciasg.rodriguez@gmail.com'),
(1092, 10096, 'billing_phone', NULL),
(1093, 10097, 'nickname', 'franciscovalencia@mybusinessacademypro.com'),
(1094, 10097, 'first_name', 'Francisco'),
(1095, 10097, 'last_name', 'Valencia'),
(1096, 10097, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1097, 10097, 'billing_first_name', 'Francisco'),
(1098, 10097, 'billing_last_name', 'Valencia'),
(1099, 10097, 'billing_email', 'franciscovalencia@mybusinessacademypro.com'),
(1100, 10097, 'billing_phone', NULL),
(1101, 10098, 'nickname', 'moderador@gmail.com'),
(1102, 10098, 'first_name', NULL),
(1103, 10098, 'last_name', NULL),
(1104, 10098, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1105, 10098, 'billing_first_name', NULL),
(1106, 10098, 'billing_last_name', NULL),
(1107, 10098, 'billing_email', 'moderador@gmail.com'),
(1108, 10098, 'billing_phone', NULL);
INSERT INTO `wp98_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1109, 10099, 'nickname', 'moderador2@gmail.com'),
(1110, 10099, 'first_name', NULL),
(1111, 10099, 'last_name', NULL),
(1112, 10099, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1113, 10099, 'billing_first_name', NULL),
(1114, 10099, 'billing_last_name', NULL),
(1115, 10099, 'billing_email', 'moderador2@gmail.com'),
(1116, 10099, 'billing_phone', NULL),
(1117, 10100, 'nickname', 'conferencias.lestermorales@gmail.com'),
(1118, 10100, 'first_name', NULL),
(1119, 10100, 'last_name', NULL),
(1120, 10100, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1121, 10100, 'billing_first_name', NULL),
(1122, 10100, 'billing_last_name', NULL),
(1123, 10100, 'billing_email', 'conferencias.lestermorales@gmail.com'),
(1124, 10100, 'billing_phone', NULL),
(1125, 10101, 'nickname', 'cliente2@sinergiared.com'),
(1126, 10101, 'first_name', NULL),
(1127, 10101, 'last_name', NULL),
(1128, 10101, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1129, 10101, 'billing_first_name', NULL),
(1130, 10101, 'billing_last_name', NULL),
(1131, 10101, 'billing_email', 'cliente2@sinergiared.com'),
(1132, 10101, 'billing_phone', NULL),
(1133, 10102, 'nickname', 'cliente3@sinergiared.com'),
(1134, 10102, 'first_name', NULL),
(1135, 10102, 'last_name', NULL),
(1136, 10102, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1137, 10102, 'billing_first_name', NULL),
(1138, 10102, 'billing_last_name', NULL),
(1139, 10102, 'billing_email', 'cliente3@sinergiared.com'),
(1140, 10102, 'billing_phone', NULL),
(1141, 10103, 'nickname', 'cliente4@sinergiared.com'),
(1142, 10103, 'first_name', NULL),
(1143, 10103, 'last_name', NULL),
(1144, 10103, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1145, 10103, 'billing_first_name', NULL),
(1146, 10103, 'billing_last_name', NULL),
(1147, 10103, 'billing_email', 'cliente4@sinergiared.com'),
(1148, 10103, 'billing_phone', NULL),
(1149, 10104, 'nickname', 'cliente5@sinergiared.com'),
(1150, 10104, 'first_name', NULL),
(1151, 10104, 'last_name', NULL),
(1152, 10104, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1153, 10104, 'billing_first_name', NULL),
(1154, 10104, 'billing_last_name', NULL),
(1155, 10104, 'billing_email', 'cliente5@sinergiared.com'),
(1156, 10104, 'billing_phone', NULL),
(1157, 10105, 'nickname', 'yanirapicon@sinergiared.com'),
(1158, 10105, 'first_name', NULL),
(1159, 10105, 'last_name', NULL),
(1160, 10105, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1161, 10105, 'billing_first_name', NULL),
(1162, 10105, 'billing_last_name', NULL),
(1163, 10105, 'billing_email', 'yanirapicon@sinergiared.com'),
(1164, 10105, 'billing_phone', NULL),
(1165, 10106, 'nickname', 'juanita712@hotmail.com'),
(1166, 10106, 'first_name', NULL),
(1167, 10106, 'last_name', NULL),
(1168, 10106, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1169, 10106, 'billing_first_name', NULL),
(1170, 10106, 'billing_last_name', NULL),
(1171, 10106, 'billing_email', 'juanita712@hotmail.com'),
(1172, 10106, 'billing_phone', NULL),
(1173, 10107, 'nickname', 'cliente6@sinergiared.com'),
(1174, 10107, 'first_name', NULL),
(1175, 10107, 'last_name', NULL),
(1176, 10107, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1177, 10107, 'billing_first_name', NULL),
(1178, 10107, 'billing_last_name', NULL),
(1179, 10107, 'billing_email', 'cliente6@sinergiared.com'),
(1180, 10107, 'billing_phone', NULL),
(1181, 10108, 'nickname', 'alberguerr05@gmail.com'),
(1182, 10108, 'first_name', NULL),
(1183, 10108, 'last_name', NULL),
(1184, 10108, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1185, 10108, 'billing_first_name', NULL),
(1186, 10108, 'billing_last_name', NULL),
(1187, 10108, 'billing_email', 'alberguerr05@gmail.com'),
(1188, 10108, 'billing_phone', NULL),
(1189, 10109, 'nickname', 'alexisjoseva95@gmail.com'),
(1190, 10109, 'first_name', NULL),
(1191, 10109, 'last_name', NULL),
(1192, 10109, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1193, 10109, 'billing_first_name', NULL),
(1194, 10109, 'billing_last_name', NULL),
(1195, 10109, 'billing_email', 'alexisjoseva95@gmail.com'),
(1196, 10109, 'billing_phone', NULL),
(1197, 10110, 'nickname', 'cliente9@sinergiared.com'),
(1198, 10110, 'first_name', NULL),
(1199, 10110, 'last_name', NULL),
(1200, 10110, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1201, 10110, 'billing_first_name', NULL),
(1202, 10110, 'billing_last_name', NULL),
(1203, 10110, 'billing_email', 'cliente9@sinergiared.com'),
(1204, 10110, 'billing_phone', NULL),
(1205, 10111, 'nickname', 'ramonpicon@sinergiared.com'),
(1206, 10111, 'first_name', NULL),
(1207, 10111, 'last_name', NULL),
(1208, 10111, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1209, 10111, 'billing_first_name', NULL),
(1210, 10111, 'billing_last_name', NULL),
(1211, 10111, 'billing_email', 'ramonpicon@sinergiared.com'),
(1212, 10111, 'billing_phone', NULL),
(1213, 10112, 'nickname', 'tes5000@gmail.com'),
(1214, 10112, 'first_name', NULL),
(1215, 10112, 'last_name', NULL),
(1216, 10112, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1217, 10112, 'billing_first_name', NULL),
(1218, 10112, 'billing_last_name', NULL),
(1219, 10112, 'billing_email', 'tes5000@gmail.com'),
(1220, 10112, 'billing_phone', NULL),
(1221, 10113, 'nickname', 'tes900@gmail.com'),
(1222, 10113, 'first_name', NULL),
(1223, 10113, 'last_name', NULL),
(1224, 10113, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1225, 10113, 'billing_first_name', NULL),
(1226, 10113, 'billing_last_name', NULL),
(1227, 10113, 'billing_email', 'tes900@gmail.com'),
(1228, 10113, 'billing_phone', NULL),
(1229, 10114, 'nickname', 'soporte1@gmail.com'),
(1230, 10114, 'first_name', NULL),
(1231, 10114, 'last_name', NULL),
(1232, 10114, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1233, 10114, 'billing_first_name', NULL),
(1234, 10114, 'billing_last_name', NULL),
(1235, 10114, 'billing_email', 'soporte1@gmail.com'),
(1236, 10114, 'billing_phone', NULL),
(1237, 10115, 'nickname', 'soporte2@gmail.com'),
(1238, 10115, 'first_name', NULL),
(1239, 10115, 'last_name', NULL),
(1240, 10115, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1241, 10115, 'billing_first_name', NULL),
(1242, 10115, 'billing_last_name', NULL),
(1243, 10115, 'billing_email', 'soporte2@gmail.com'),
(1244, 10115, 'billing_phone', NULL),
(1245, 10116, 'nickname', 'soporte3@gmail.com'),
(1246, 10116, 'first_name', NULL),
(1247, 10116, 'last_name', NULL),
(1248, 10116, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1249, 10116, 'billing_first_name', NULL),
(1250, 10116, 'billing_last_name', NULL),
(1251, 10116, 'billing_email', 'soporte3@gmail.com'),
(1252, 10116, 'billing_phone', NULL),
(1253, 10117, 'nickname', 'soporte4@gmail.com'),
(1254, 10117, 'first_name', NULL),
(1255, 10117, 'last_name', NULL),
(1256, 10117, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1257, 10117, 'billing_first_name', NULL),
(1258, 10117, 'billing_last_name', NULL),
(1259, 10117, 'billing_email', 'soporte4@gmail.com'),
(1260, 10117, 'billing_phone', NULL),
(1261, 10118, 'nickname', 'soporte5@gmail.com'),
(1262, 10118, 'first_name', NULL),
(1263, 10118, 'last_name', NULL),
(1264, 10118, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1265, 10118, 'billing_first_name', NULL),
(1266, 10118, 'billing_last_name', NULL),
(1267, 10118, 'billing_email', 'soporte5@gmail.com'),
(1268, 10118, 'billing_phone', NULL),
(1269, 10119, 'nickname', 'cliente10@sinergiared.com'),
(1270, 10119, 'first_name', NULL),
(1271, 10119, 'last_name', NULL),
(1272, 10119, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1273, 10119, 'billing_first_name', NULL),
(1274, 10119, 'billing_last_name', NULL),
(1275, 10119, 'billing_email', 'cliente10@sinergiared.com'),
(1276, 10119, 'billing_phone', NULL),
(1277, 10120, 'nickname', '1@gmail.com'),
(1278, 10120, 'first_name', NULL),
(1279, 10120, 'last_name', NULL),
(1280, 10120, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1281, 10120, 'billing_first_name', NULL),
(1282, 10120, 'billing_last_name', NULL),
(1283, 10120, 'billing_email', '1@gmail.com'),
(1284, 10120, 'billing_phone', NULL),
(1285, 10121, 'nickname', '2@gmail.com'),
(1286, 10121, 'first_name', NULL),
(1287, 10121, 'last_name', NULL),
(1288, 10121, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1289, 10121, 'billing_first_name', NULL),
(1290, 10121, 'billing_last_name', NULL),
(1291, 10121, 'billing_email', '2@gmail.com'),
(1292, 10121, 'billing_phone', NULL),
(1293, 10122, 'nickname', '4@gmail.com'),
(1294, 10122, 'first_name', NULL),
(1295, 10122, 'last_name', NULL),
(1296, 10122, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1297, 10122, 'billing_first_name', NULL),
(1298, 10122, 'billing_last_name', NULL),
(1299, 10122, 'billing_email', '4@gmail.com'),
(1300, 10122, 'billing_phone', NULL),
(1301, 10123, 'nickname', '5@gmail.com'),
(1302, 10123, 'first_name', 'Mentor'),
(1303, 10123, 'last_name', 'Experto'),
(1304, 10123, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1305, 10123, 'billing_first_name', 'Mentor'),
(1306, 10123, 'billing_last_name', 'Experto'),
(1307, 10123, 'billing_email', '5@gmail.com'),
(1308, 10123, 'billing_phone', NULL),
(1309, 10124, 'nickname', 'crisleivys@mail.com'),
(1310, 10124, 'first_name', 'Crisleivys'),
(1311, 10124, 'last_name', 'Gil'),
(1312, 10124, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1313, 10124, 'billing_first_name', 'Crisleivys'),
(1314, 10124, 'billing_last_name', 'Gil'),
(1315, 10124, 'billing_email', 'crisleivys@mail.com'),
(1316, 10124, 'billing_phone', NULL),
(1317, 10125, 'nickname', 'prueba5000@gmail.com'),
(1318, 10125, 'first_name', NULL),
(1319, 10125, 'last_name', NULL),
(1320, 10125, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1321, 10125, 'billing_first_name', NULL),
(1322, 10125, 'billing_last_name', NULL),
(1323, 10125, 'billing_email', 'prueba5000@gmail.com'),
(1324, 10125, 'billing_phone', NULL),
(1325, 10126, 'nickname', 'lvmb29@gmail.com'),
(1326, 10126, 'first_name', NULL),
(1327, 10126, 'last_name', NULL),
(1328, 10126, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1329, 10126, 'billing_first_name', NULL),
(1330, 10126, 'billing_last_name', NULL),
(1331, 10126, 'billing_email', 'lvmb29@gmail.com'),
(1332, 10126, 'billing_phone', NULL),
(1333, 10127, 'nickname', 'viva_mi_gato@hotmail.com'),
(1334, 10127, 'first_name', NULL),
(1335, 10127, 'last_name', NULL),
(1336, 10127, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1337, 10127, 'billing_first_name', NULL),
(1338, 10127, 'billing_last_name', NULL),
(1339, 10127, 'billing_email', 'viva_mi_gato@hotmail.com'),
(1340, 10127, 'billing_phone', NULL),
(1341, 10128, 'nickname', 'noemy.producer@gmail.com'),
(1342, 10128, 'first_name', NULL),
(1343, 10128, 'last_name', NULL),
(1344, 10128, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1345, 10128, 'billing_first_name', NULL),
(1346, 10128, 'billing_last_name', NULL),
(1347, 10128, 'billing_email', 'noemy.producer@gmail.com'),
(1348, 10128, 'billing_phone', NULL),
(1349, 10129, 'nickname', 'marketin@fenttix.com'),
(1350, 10129, 'first_name', NULL),
(1351, 10129, 'last_name', NULL),
(1352, 10129, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1353, 10129, 'billing_first_name', NULL),
(1354, 10129, 'billing_last_name', NULL),
(1355, 10129, 'billing_email', 'marketin@fenttix.com'),
(1356, 10129, 'billing_phone', NULL),
(1357, 10130, 'nickname', 'yo1@gmail.com'),
(1358, 10130, 'first_name', NULL),
(1359, 10130, 'last_name', NULL),
(1360, 10130, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1361, 10130, 'billing_first_name', NULL),
(1362, 10130, 'billing_last_name', NULL),
(1363, 10130, 'billing_email', 'yo1@gmail.com'),
(1364, 10130, 'billing_phone', NULL),
(1365, 10131, 'nickname', 'lic.freddymillan@gmail.com'),
(1366, 10131, 'first_name', NULL),
(1367, 10131, 'last_name', NULL),
(1368, 10131, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1369, 10131, 'billing_first_name', NULL),
(1370, 10131, 'billing_last_name', NULL),
(1371, 10131, 'billing_email', 'lic.freddymillan@gmail.com'),
(1372, 10131, 'billing_phone', NULL),
(1373, 10132, 'nickname', 'ale@fgmail.com'),
(1374, 10132, 'first_name', NULL),
(1375, 10132, 'last_name', NULL),
(1376, 10132, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1377, 10132, 'billing_first_name', NULL),
(1378, 10132, 'billing_last_name', NULL),
(1379, 10132, 'billing_email', 'ale@fgmail.com'),
(1380, 10132, 'billing_phone', NULL),
(1381, 10133, 'nickname', 'direccion@alianzaentrenamientos.com'),
(1382, 10133, 'first_name', NULL),
(1383, 10133, 'last_name', NULL),
(1384, 10133, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1385, 10133, 'billing_first_name', NULL),
(1386, 10133, 'billing_last_name', NULL),
(1387, 10133, 'billing_email', 'direccion@alianzaentrenamientos.com'),
(1388, 10133, 'billing_phone', NULL),
(1389, 10134, 'nickname', 'prueba123@gmail.com'),
(1390, 10134, 'first_name', NULL),
(1391, 10134, 'last_name', NULL),
(1392, 10134, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1393, 10134, 'billing_first_name', NULL),
(1394, 10134, 'billing_last_name', NULL),
(1395, 10134, 'billing_email', 'prueba123@gmail.com'),
(1396, 10134, 'billing_phone', NULL),
(1397, 10135, 'nickname', 'luisanaelenamarin@gmail.com'),
(1398, 10135, 'first_name', NULL),
(1399, 10135, 'last_name', NULL),
(1400, 10135, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1401, 10135, 'billing_first_name', NULL),
(1402, 10135, 'billing_last_name', NULL),
(1403, 10135, 'billing_email', 'luisanaelenamarin@gmail.com'),
(1404, 10135, 'billing_phone', NULL),
(1405, 10136, 'nickname', 'luisanaelenamarin@gmail.com'),
(1406, 10136, 'first_name', NULL),
(1407, 10136, 'last_name', NULL),
(1408, 10136, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1409, 10136, 'billing_first_name', NULL),
(1410, 10136, 'billing_last_name', NULL),
(1411, 10136, 'billing_email', 'luisanaelenamarin@gmail.com'),
(1412, 10136, 'billing_phone', NULL),
(1413, 10137, 'nickname', 'luisanaelenamarin@gmail.com'),
(1414, 10137, 'first_name', NULL),
(1415, 10137, 'last_name', NULL),
(1416, 10137, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1417, 10137, 'billing_first_name', NULL),
(1418, 10137, 'billing_last_name', NULL),
(1419, 10137, 'billing_email', 'luisanaelenamarin@gmail.com'),
(1420, 10137, 'billing_phone', NULL),
(1421, 10138, 'nickname', 'luisanaelenamarin@gmail.com'),
(1422, 10138, 'first_name', NULL),
(1423, 10138, 'last_name', NULL),
(1424, 10138, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1425, 10138, 'billing_first_name', NULL),
(1426, 10138, 'billing_last_name', NULL),
(1427, 10138, 'billing_email', 'luisanaelenamarin@gmail.com'),
(1428, 10138, 'billing_phone', NULL),
(1429, 10139, 'nickname', 'luisanaelenamarin@gmail.com'),
(1430, 10139, 'first_name', NULL),
(1431, 10139, 'last_name', NULL),
(1432, 10139, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1433, 10139, 'billing_first_name', NULL),
(1434, 10139, 'billing_last_name', NULL),
(1435, 10139, 'billing_email', 'luisanaelenamarin@gmail.com'),
(1436, 10139, 'billing_phone', NULL),
(1437, 10140, 'nickname', 'luisanaelenamarin@gmail.com'),
(1438, 10140, 'first_name', NULL),
(1439, 10140, 'last_name', NULL),
(1440, 10140, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1441, 10140, 'billing_first_name', NULL),
(1442, 10140, 'billing_last_name', NULL),
(1443, 10140, 'billing_email', 'luisanaelenamarin@gmail.com'),
(1444, 10140, 'billing_phone', NULL),
(1445, 10141, 'nickname', 'direccion@humancia.com'),
(1446, 10141, 'first_name', NULL),
(1447, 10141, 'last_name', NULL),
(1448, 10141, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1449, 10141, 'billing_first_name', NULL),
(1450, 10141, 'billing_last_name', NULL),
(1451, 10141, 'billing_email', 'direccion@humancia.com'),
(1452, 10141, 'billing_phone', NULL),
(1453, 10142, 'nickname', 'noemy@humancia.com'),
(1454, 10142, 'first_name', NULL),
(1455, 10142, 'last_name', NULL),
(1456, 10142, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1457, 10142, 'billing_first_name', NULL),
(1458, 10142, 'billing_last_name', NULL),
(1459, 10142, 'billing_email', 'noemy@humancia.com'),
(1460, 10142, 'billing_phone', NULL),
(1461, 10143, 'nickname', 'thorby_1@hotmail.com'),
(1462, 10143, 'first_name', NULL),
(1463, 10143, 'last_name', NULL),
(1464, 10143, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1465, 10143, 'billing_first_name', NULL),
(1466, 10143, 'billing_last_name', NULL),
(1467, 10143, 'billing_email', 'thorby_1@hotmail.com'),
(1468, 10143, 'billing_phone', NULL),
(1469, 10144, 'nickname', 'cliente1@mybusinessacademypro.com'),
(1470, 10144, 'first_name', NULL),
(1471, 10144, 'last_name', NULL),
(1472, 10144, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1473, 10144, 'billing_first_name', NULL),
(1474, 10144, 'billing_last_name', NULL),
(1475, 10144, 'billing_email', 'cliente1@mybusinessacademypro.com'),
(1476, 10144, 'billing_phone', NULL),
(1477, 10145, 'nickname', 'cliente2@mybusinessacademypro.com'),
(1478, 10145, 'first_name', NULL),
(1479, 10145, 'last_name', NULL),
(1480, 10145, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1481, 10145, 'billing_first_name', NULL),
(1482, 10145, 'billing_last_name', NULL),
(1483, 10145, 'billing_email', 'cliente2@mybusinessacademypro.com'),
(1484, 10145, 'billing_phone', NULL),
(1485, 10146, 'nickname', 'cliente3@mybusinessacademypro.com'),
(1486, 10146, 'first_name', NULL),
(1487, 10146, 'last_name', NULL),
(1488, 10146, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1489, 10146, 'billing_first_name', NULL),
(1490, 10146, 'billing_last_name', NULL),
(1491, 10146, 'billing_email', 'cliente3@mybusinessacademypro.com'),
(1492, 10146, 'billing_phone', NULL),
(1493, 10147, 'nickname', 'cliente4@mybusinessacademypro.com'),
(1494, 10147, 'first_name', NULL),
(1495, 10147, 'last_name', NULL),
(1496, 10147, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1497, 10147, 'billing_first_name', NULL),
(1498, 10147, 'billing_last_name', NULL),
(1499, 10147, 'billing_email', 'cliente4@mybusinessacademypro.com'),
(1500, 10147, 'billing_phone', NULL),
(1501, 10148, 'nickname', 'cliente5@mybusinessacademypro.com'),
(1502, 10148, 'first_name', NULL),
(1503, 10148, 'last_name', NULL),
(1504, 10148, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1505, 10148, 'billing_first_name', NULL),
(1506, 10148, 'billing_last_name', NULL),
(1507, 10148, 'billing_email', 'cliente5@mybusinessacademypro.com'),
(1508, 10148, 'billing_phone', NULL),
(1509, 10149, 'nickname', 'cliente6@mybusinessacademypro.com'),
(1510, 10149, 'first_name', NULL),
(1511, 10149, 'last_name', NULL),
(1512, 10149, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1513, 10149, 'billing_first_name', NULL),
(1514, 10149, 'billing_last_name', NULL),
(1515, 10149, 'billing_email', 'cliente6@mybusinessacademypro.com'),
(1516, 10149, 'billing_phone', NULL),
(1517, 10150, 'nickname', 'parkkimberley@yahoo.co.uk'),
(1518, 10150, 'first_name', NULL),
(1519, 10150, 'last_name', NULL),
(1520, 10150, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1521, 10150, 'billing_first_name', NULL),
(1522, 10150, 'billing_last_name', NULL),
(1523, 10150, 'billing_email', 'parkkimberley@yahoo.co.uk'),
(1524, 10150, 'billing_phone', NULL),
(1525, 10151, 'nickname', 'cliente7@mybusinessacademypro.com'),
(1526, 10151, 'first_name', NULL),
(1527, 10151, 'last_name', NULL),
(1528, 10151, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1529, 10151, 'billing_first_name', NULL),
(1530, 10151, 'billing_last_name', NULL),
(1531, 10151, 'billing_email', 'cliente7@mybusinessacademypro.com'),
(1532, 10151, 'billing_phone', NULL),
(1533, 10152, 'nickname', 'cliente8@mybusinessacademypro.com'),
(1534, 10152, 'first_name', NULL),
(1535, 10152, 'last_name', NULL),
(1536, 10152, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1537, 10152, 'billing_first_name', NULL),
(1538, 10152, 'billing_last_name', NULL),
(1539, 10152, 'billing_email', 'cliente8@mybusinessacademypro.com'),
(1540, 10152, 'billing_phone', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_users`
--

CREATE TABLE `wp98_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'avatar.png',
  `provider` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referred_id` int DEFAULT '0',
  `sponsor_id` bigint DEFAULT '0',
  `position_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rol_id` int NOT NULL DEFAULT '1',
  `wallet_amount` double NOT NULL DEFAULT '0',
  `billetera` double NOT NULL DEFAULT '0',
  `bank_amount` double NOT NULL DEFAULT '0',
  `clave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activacion` tinyint(1) DEFAULT '0',
  `fecha_activacion` datetime DEFAULT NULL,
  `token_correo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipouser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `ladomatriz` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puntosPro` double DEFAULT '0',
  `puntosRed` double DEFAULT '0',
  `puntosDer` double DEFAULT '0',
  `puntosIzq` double DEFAULT '0',
  `debiDer` double NOT NULL DEFAULT '0',
  `debiIzq` double DEFAULT '0',
  `binario` date DEFAULT NULL,
  `codigo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `limitar` int NOT NULL DEFAULT '1',
  `pop_up` int NOT NULL DEFAULT '0',
  `autenticacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `factor2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fechaver` date DEFAULT NULL,
  `modo_oscuro` int NOT NULL DEFAULT '0',
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `membership_id` int DEFAULT NULL,
  `membership_status` int DEFAULT NULL,
  `membership_expiration` date DEFAULT NULL,
  `streamings` int NOT NULL DEFAULT '0',
  `streaming_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_users`
--

INSERT INTO `wp98_users` (`ID`, `birthdate`, `gender`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_activation_key`, `user_status`, `display_name`, `password`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `created_at`, `updated_at`, `referred_id`, `sponsor_id`, `position_id`, `status`, `rol_id`, `wallet_amount`, `billetera`, `bank_amount`, `clave`, `activacion`, `fecha_activacion`, `token_correo`, `tipouser`, `ladomatriz`, `puntosPro`, `puntosRed`, `puntosDer`, `puntosIzq`, `debiDer`, `debiIzq`, `binario`, `codigo`, `correos`, `limitar`, `pop_up`, `autenticacion`, `factor2`, `fechaver`, `modo_oscuro`, `profession`, `about`, `cover_name`, `membership_id`, `membership_status`, `membership_expiration`, `streamings`, `streaming_token`) VALUES
(1, NULL, NULL, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'admin@shapinetwork.com', '', '', 0, 'Administrador', '$2y$10$yfar1ISof2qxLW7nZe6LzuzPyrU/9N9oyHZQqbMSxJQrdIQhj024W', 'avatar.png', NULL, NULL, NULL, 'lN4Z9GcOH5wlvNLAhYHJE7ZDOunDVVVZVCNJMoK9fmAMXMvAPht8KsnUjd4B', '2020-03-26 11:49:07', '2021-04-29 14:45:21', 0, 0, 0, 1, 0, 14.994, 0, 0, 'eyJpdiI6InJQQndUN1pURktaL0ZNejY4UnZ0N2c9PSIsInZhbHVlIjoiZVB4NUFoUnlPNDZUdXJLZHBQY0N2dz09IiwibWFjIjoiNTk0NWRjNzk3MjU4ZmJkNGUxMmM1Yjk3ZThlMTM1MGVlMDJjMzRiMjQ4OTQ4ZGI5NDhhNzM2Y2ZiMDg4NmU5NyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, '', NULL, NULL, 4, 1, '2023-01-01', 0, '1|c1MEuMnMVTmYEeXdrpM6aYmAjtCrlqCzfdK8LGtt'),
(10071, NULL, 'F', NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'taniatostado@mybusinessacademypro.com', '', '', 0, 'Tania Tostado', '$2y$10$NGgr.HauAu4B3S5Fz5nihu6NTEuFdrDl8mL/KhNGTHsSZY.LGzhgq', 'user_1602998951.jpg', NULL, NULL, NULL, NULL, '2020-10-17 22:29:11', '2020-12-23 17:07:32', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IjdPMDdMa0JIMVVDYnR1alVlK3B5eUE9PSIsInZhbHVlIjoibE5PMkxwczlobGRFYUFtbGRuR21udz09IiwibWFjIjoiOWJmOTkxMWU4Zjc1NjU0M2MzMGQzM2YzZjY1OTNlMmI0NjcxODk0NTliNmMxMjdkM2QwYTMyN2FhMzAzMWIzYyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, 'Mentora y Conferencista', 'Licenciada en Administración financiera con especialidad en finanzas corporativas, ha colaborado con bancos de talla mundial como: UBS, Credit Suisse y Deutche Bank en Suiza, Bank Hapoalim en Israel, Baern Stearns Securities en EUA, entre muchos otros. En 2008, fue ganadora del premio Best Development, otorgado por la International Property Awards y CNBC. Como consultora independiente, asesora a múltiples y reconocidas empresas en latinoamérica para hacer importantes transacciones con cifras de millones de dólares.', NULL, NULL, NULL, NULL, 0, '36|XyCHmWyUJhnbtOwPThhsTYDuSfbbT07sGFBSLCfK'),
(10072, NULL, 'M', NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'manuelguerrero@mybusinessacademypro.com', '', '', 0, 'Manuel Guerrero', '$2y$10$MnDZ/jJMh/SQdv0osrkNA.S6GyBl7N6gioluU.mAtgyacbQo19kf.', 'user_1603000725.jpg', NULL, NULL, NULL, NULL, '2020-10-17 22:58:45', '2021-01-25 14:04:27', 1, 1, 1, 1, 2, 90.01, 0, 0, 'eyJpdiI6Ik5VS09hcjVGVEQ1Vktnc2U1MHZWWnc9PSIsInZhbHVlIjoib0s1MVJ6YVBnUTFWSCtoWnk3SHloZz09IiwibWFjIjoiMDE4M2I4NTY3MWM0MmJkMzM2NzMzOGU4NTNjZGM0ZjRiMDRmZDJjYzZkMjc1YzU1MzYzNTcyZDM0NWYwN2U0OCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, 'Mentor', 'Lic. en administración Financiera, apasionado del conocimiento y la aplicación de la tecnología en los mercados financieros, desde muy joven se ha interesado por explorar y promover temas de inversiones, forex, trading, IA, entre otros.', NULL, 1, 0, '2021-02-16', 0, NULL),
(10073, NULL, 'F', NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'mirelavuckovic@mybusinessacademypro.com', '', '', 0, 'Mirela Vuckovic', '$2y$10$nzqYzXU9pWUmojVo7vCCkuK.NztwN60EHnyvjn2Obky/ZBJSjQ/kO', 'user_1603002670.jpg', NULL, NULL, NULL, NULL, '2020-10-17 23:31:10', '2021-02-07 11:36:42', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6Iml6OFhHSHozM3UxMXVPY3BYS3FmeVE9PSIsInZhbHVlIjoieHVxM2JGTDloK3F6Zi85TW5SSG5rQT09IiwibWFjIjoiNDI5M2U0NTRlNzFkMDQ0ZDZiN2U5OWEwZGQ4NDM2ZGEwOTMxYzBiODA2YzkzYjY4MjExMWMxNjJlYTc0YzhkNyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, 'Mentora', 'Lic. en Economía por la University of Split de Croacia. Colaboró en Londres para importantes marcas de offshore banking. En México tiene 12 años como consultora directiva de reconocidas empresas Fintech en todo Latam. Así como instructora de diversos programas académicos con diferentes marcas de la industria financiera.', NULL, NULL, NULL, NULL, 0, NULL),
(10074, NULL, 'M', NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'erickreynaga@mybusinessacademypro.com', '', '', 0, 'Erick Reynaga', '$2y$10$dGAHup0S1l.R28yWqfUOuumBfgPeMT24nZ1X..rJkqkHj2sqE.95a', 'user_1603003123.jpg', NULL, NULL, NULL, NULL, '2020-10-17 23:38:43', '2021-01-16 06:47:40', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IjYvMVVZZmlGT0xReTh6UStpdk9KVWc9PSIsInZhbHVlIjoiQ0EwM0lHU0k4c1RnUGVPOWdLWHZxUT09IiwibWFjIjoiYTM4MzE3Nzc4MjlkZWQ1NmZmN2Q3ZDRkNGJhN2ZkZDlmNTM4ZWEwYjEwZDMwMzJjODJhMzYyM2I0N2E3ZTA4NCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, 'Mentor', 'Especialista con 6 años de experiencia en el mundo del Trading, Forex y las Criptodivisas, así como de fondos de inversión con marcas de reconocimiento internacional. Cuenta con una maestría en administración y negocios, es líder de proyectos educativos financieros para diferentes cúpulas de negocios de jóvenes empresarios en México y es promotor de una Sociedad Financiera de Operación Múltiple en la que se operan diversas transacciones con crypto.', NULL, NULL, NULL, NULL, 0, NULL),
(10075, NULL, NULL, NULL, '8e90bc55fb687fa08dde18f7623c6aab', NULL, 'luisanaelenamarin@gmail.com', '', '', 0, 'Luisanaelena Marín', '$2y$10$NHUG05s2oB/Rgt0XUSLJp.oOgYqI4A0ai1D9V9QLfpw2Z7GZIp0ju', 'user_10075_1604087592.png', NULL, NULL, NULL, NULL, '2020-10-18 07:20:39', '2021-04-27 11:44:00', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6InVPMzcyamhvZTQxYVpFUnAxalFyTWc9PSIsInZhbHVlIjoiSjhhbzdmY1JSaXVTUmJib2JwaUN6UT09IiwibWFjIjoiZWM5ZWQ0ZWE3MjI5NDg2NDQzNDExYmQ5MjA3MDY4ZWE2Y2IzM2ZmNzI0ODI5YzNiOTM0MGQ0Zjc2YWMyNTI0MyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 'Esto es una prueba', NULL, 4, 0, '2021-03-31', 0, NULL),
(10076, NULL, NULL, 'luisana', '8e90bc55fb687fa08dde18f7623c6aab', 'luisana', 'pietropasqualis55@gmail.com', '', '', 0, 'luisana', '$2y$10$Y./7XfeDvE4.qy5896aj4OTcxg1IurPj7Uzp9yyclDBjl1sGKAbte', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-20 08:15:42', '2021-01-28 11:26:33', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InpaRW9YWXR2Mk5Xc1BieGo3ekZaWVE9PSIsInZhbHVlIjoiVlpHczQyWGFWMFRnNjFNN09ZUytFUT09IiwibWFjIjoiNjRiYmRlZWU4MGVhZGJjN2EzMDBjNzJjZjk2YzIyMWEzMGFmMDRlNDIyYTU4ZGEyOTE3ZTc2MTBkZGY0MjJkZCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, 1, NULL, 0, '17|EsGX4CDEgTzlIUJRYwqlUb8IwUGlNct9YHMrHrET'),
(10077, NULL, NULL, 'prueba cliente', '25f9e794323b453885f5181f1b624d0b', 'prueba cliente', 'pruebacliente@gmail.com', '', '', 0, 'prueba cliente', '$2y$10$gBOj3uaaZ0rfy.hsouf9xOxOclVM0FkbYR8Lj0Kd0g/le1SUukzDG', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-20 10:31:26', '2020-10-20 10:31:26', 10076, 10076, 10076, 0, 3, 0, 0, 0, 'eyJpdiI6InlpRnc1eHAxU2txVWhCRUFoeDdXaHc9PSIsInZhbHVlIjoia0pQcGw2K1B4ZUxpaFBmZTF5cStYS2ppTnFvZG9VNVFwRlA0Qzl1dHBKVT0iLCJtYWMiOiI1NjUwZjRhODhjN2U2MTdhYzUwMjgzYmYxYzNlZTllNzEwMzM1ODNkY2I5YmM1Zjc1MTAyN2IyZGMzNTYyMWUzIn0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, NULL, 0, '18|QClp0cDmNYRGxYXI22gIArK5koOLK7JLvueIp9aF'),
(10078, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'ramalejtq@gmail.com', '', '', 0, NULL, '$2y$10$U/LObjUQsCOyD4guboD/veF/kh1atn8JPimlgjGZzutlyi.8n5z.O', 'user_1603227365.jpeg', NULL, NULL, NULL, NULL, '2020-10-20 13:56:05', '2020-10-20 13:56:05', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6InVjOGFNUzY1WnNNYjVLakdQbUgyc0E9PSIsInZhbHVlIjoiLzlXZGl1S29LMjBJWjMweTVoY0ZLQT09IiwibWFjIjoiZDhiMmQ1OTk3ZjlhODY4N2I3Y2RhNzg3Y2MyZTRjNDdmYTE5ZTZjNWU2NDJkYTc3MTQ2ZmU1YWQ1M2NhMjVjZCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 'Soporte', NULL, NULL, NULL, NULL, 0, '35|CLLngKX7yOiqFDVcGg6lMcr6xvmeGAPaUYFFj9Pl'),
(10079, NULL, NULL, 'tes1000', 'e10adc3949ba59abbe56e057f20f883e', 'tes1000', 'ramalejtq@hotmail.com', '', '', 0, 'tes1000', '$2y$10$oc1jlL3BBBYyBVeadE/27.LjoQembdQLTLUpjOHUnB79L4wXtD9aO', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-20 15:33:03', '2020-10-20 15:33:03', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6IlJsYm9tb2o2NS9wVy9rOWJPV0lMK2c9PSIsInZhbHVlIjoiTHdRSko3WjQwZFdYS0sxdlpFSlhMZz09IiwibWFjIjoiYTk3Njc0ZGQxZTIwNWY5OTBmNjM4MzY4MGRjMWRhNjUzMzI2N2QyYWJhMzE0MjFkZjI4MTcxMjExZTNjYTQ0MyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-11-20', 0, NULL),
(10080, '1980-01-01', 'M', NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'lestermorales@sinergiared.com', '', '', 0, 'Mentor Experto', '$2y$10$OlRAvwRhxUm9Fm/d.T/co.bjjSGTQFjtm8.0YWHVmSvrzNsy2TOjW', 'user_10080_1605554551.jpg', NULL, NULL, NULL, NULL, '2020-10-20 16:50:18', '2020-11-18 20:01:49', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6ImNwVFdjOUJqUWZmYlllajNSckU5Ync9PSIsInZhbHVlIjoibEd2Znd5YXFHZjhVOHF4ZWtMZUJlQT09IiwibWFjIjoiYzI4NjYzMGI3MGY0NTI0ODY3MjM2MzM5Y2EwYzI5NGFmZTc2MGNiMjgxZmU2YWM2NTQ4NDNmYzYzMGM1ZTg2YSJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, 'Streaming Mentor', NULL, NULL, NULL, NULL, 0, NULL),
(10081, NULL, NULL, 'freddy', '25f9e794323b453885f5181f1b624d0b', 'freddy', 'fjms93@gmail.com', '', '', 0, 'freddy', '$2y$10$.L2RowssCndMFozFyGkns.3Ectzyox/gmsJrgdwkUnJB9b.YvLD9q', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-20 17:37:21', '2021-02-22 06:57:00', 10075, 10075, 10075, 0, 3, 40, 50, 0, 'eyJpdiI6IjBpY2ZUQTN2aEEzZnNHNVVINFpCcUE9PSIsInZhbHVlIjoiSWpLQXJHU2VEaC9wcGhBUjdJUGhlNVVvaUVQZTU5QWZ4MEdyNGJMM2RSaz0iLCJtYWMiOiJiZDY2N2Y5ZGE0N2RlMDkzODgyMjEzYTU3ZDc2ZDg0MzZiMzY5YjdlOTA2MzJkOWNkZGZmZDFjMGU4NzVjMWQ4In0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, NULL, 0, NULL),
(10082, NULL, NULL, 'caslo', '25d55ad283aa400af464c76d713c07ad', 'caslo', 'caslo@prueba.com', '', '', 0, 'caslo', '$2y$10$NQHo0SRWqYzbYbJz5mBrsOnDvbUEvqMBu2Z1CSmQ5.ScTLmUGMnuy', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-21 06:30:09', '2020-10-21 06:30:09', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6IllYTHNFQUdHQ1hPVDBTVnpHbHZoV3c9PSIsInZhbHVlIjoiZGw4UW0yWG0rMHkzYVk1L2xxRFdEZz09IiwibWFjIjoiN2M0OGFiMTg2YmZmODk0MDYyNDIxNTg3MzYyYTZkNjRjN2U1YzI3OThiOTBkMjk2ODI5ZjQ5OWQyZTgxZmQ0NiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-11-21', 0, NULL),
(10083, NULL, NULL, NULL, '25f9e794323b453885f5181f1b624d0b', NULL, 'matias@mail.com', '', '', 0, NULL, '$2y$10$hX7Mpn3G8iNJYzwNxdWR.ujqLm7.EFlaYD3zVrTmH3vXLGLBURpie', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-22 10:28:27', '2020-10-22 10:28:27', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjdSV1ZFUVY2cWI0UGE3ZFZUaklHcnc9PSIsInZhbHVlIjoiR1N6Nll0QjFmNUpDMC85V2Q4elZOZXFzb244ejBwYXZ5MUJxK2NTNXJHVT0iLCJtYWMiOiIzMjU3ODIyOGFhOTgzOWFhOWEwZWYxM2NlZTZhMGNmOTQwMTJlYzRhMzljOGYzOWQ4N2Q5NGZjYTQzNzhiNTM0In0=', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL),
(10084, NULL, NULL, NULL, '25f9e794323b453885f5181f1b624d0b', NULL, 'prueba2@mail.com', '', '', 0, NULL, '$2y$10$Ox6jSc26nHhblz5DdlTlUe7/XS674KVOlqllnh/JqRG6rL7hhY9ke', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-22 16:27:45', '2020-12-07 16:41:40', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6InNtalg4S3NGWFdYbk9KcHBwNzI1U1E9PSIsInZhbHVlIjoiQTdKS1l2d1l2OVJHWWphTHdHMEo4MmUxNUNvVEF3dk44UnpsSWNoSThGaz0iLCJtYWMiOiI3ZWY2YTgwNTlkMWFmMTJjZGM0YzBjMGE4OGZlZDMxMTA3YzliOWQxNDAyZTY4OTBjZjFhM2QyOTk2YjEyNDdjIn0=', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, 'Prueba', 'esto es una prueba', NULL, NULL, NULL, NULL, 0, NULL),
(10085, '1980-01-01', 'M', NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'sinergia_group@live.com', '', '', 0, 'Sinergia Group', '$2y$10$hSPqHsYkjG4e1UQ.Ll7brukGWdkZSBRyqP4MKvl/pPjIUoYBBHB7e', 'user_10085_1603495359.jpg', NULL, NULL, NULL, NULL, '2020-10-23 18:19:43', '2020-12-14 16:11:23', 1, 1, 1, 0, 3, 15.3, 0, 0, 'eyJpdiI6Im9wSXdxckV1bHhmVUhYM28yVVdSN1E9PSIsInZhbHVlIjoiMlg3c05lVUZFRW9zQTZKOG9NOG1UUT09IiwibWFjIjoiYmZkNzAyNzZjNDZjMzhkYjYwYmIxODA1NmNjZmRmZTBlZGRmMjhlZDBiMGM2YTdlMGViNTZkOTNkMzA4MWJlMCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-11-20', 0, NULL),
(10086, NULL, NULL, 'referidosinergia', 'e19d5cd5af0378da05f63f891c7467af', 'referidosinergia', 'conferencias_lm@hotmail.com', '', '', 0, 'referidosinergia', '$2y$10$ereXLXUPMvHQ8SjAVPN9BOPXNym5hWXn2ny0lYF2c69iAtbaoZy2m', 'user_10086_1604100358.jpg', NULL, NULL, NULL, NULL, '2020-10-24 15:28:57', '2021-04-06 08:04:48', 10085, 10085, 10085, 0, 3, 11.997, 0, 0, 'eyJpdiI6ImNIZ240bUdtUmJGRXI2YXRwOGRpU2c9PSIsInZhbHVlIjoiTVFxQnB0aWVwQWtjWHJRSm4vVzJMZz09IiwibWFjIjoiZjZlMWRlNjdmNDY4MGY2NjFkYWM2Zjk1NGQ1MmYyMjg1YTdiYTI2Mzk0ZWM5YTRkMjE1N2UyNGJiYzg3MTA1OCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-11-20', 0, NULL),
(10087, NULL, NULL, 'referido2sinergia', 'e19d5cd5af0378da05f63f891c7467af', 'referido2sinergia', 'recursos.marketing@gmail.com', '', '', 0, 'referido2sinergia', '$2y$10$BI6W9QHIkD2b44TfR7OisOS7LjaLVA.wztipzztQgo12OE0Rmw17W', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-24 15:31:34', '2020-11-11 19:46:14', 10086, 10086, 10086, 0, 3, 0, 0, 0, 'eyJpdiI6IkNQaUUxa201U1p1cmMxeXZLak1XUFE9PSIsInZhbHVlIjoiSDRrbjFZZmNjWlFPSERZSFB5WWE2QT09IiwibWFjIjoiOTVjNDRjMWZmZjFhZDZlNjExMzc5NzE3MTM4MmQ0YTVhODgyY2Y0MDBmMDQ1OGYzOTFjYjBmNGI4MWNhMDgxOCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-11-20', 0, NULL),
(10088, NULL, NULL, 'AK08521 Alexis Valera', '25d55ad283aa400af464c76d713c07ad', 'AK08521 Alexis Valera', 'alexis@prueba.com88', '', '', 0, 'AK08521 Alexis Valera', '$2y$10$gmSMHNDdy6pI/U/Ha42kb.reTJaIxK0Ctl6WAIT3pCobgr28U9ncW', 'avatar.png', NULL, NULL, NULL, NULL, '2020-10-29 15:15:13', '2020-10-29 15:15:13', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlkyekxWNlVWTkFUeTFDUWN4M0tYaFE9PSIsInZhbHVlIjoiZE1YR2ZDL3FYWDZnN3FmalJQYUduZz09IiwibWFjIjoiM2NiZThmMjM3YjEyM2U5MjgwMjU4N2MzOTNjMjY5ZmEwYzY2M2E1ODNhZWQxNzUwYTZmYTY3YWExYTMzMmJhMiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10089, NULL, NULL, NULL, '25f9e794323b453885f5181f1b624d0b', NULL, 'prueba-luisana@gmail.com', '', '', 0, NULL, '$2y$10$.GIMTxG1LNKBNzvu8WsheOPRMt1ACrtInZnpqpx9Qe6F.GNs94Ln2', 'user_1604090931.jpg', NULL, NULL, NULL, NULL, '2020-10-30 15:48:51', '2020-10-30 15:48:51', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IjhmbW4vZ3pMMGxIanVjdlV1SE1TUVE9PSIsInZhbHVlIjoiM25LT2x1cTVjemthNHpoWTFJYWRBdGdMZGd4a2RuTWhJclQwZVBBL1dLRT0iLCJtYWMiOiJhNzVlNTFkZGY2M2ZmYzgxZmUzMDA4YTAwYjRmMDU1ODQ0OWI1YmQxODM0ZWY1MDA3ZTNlMzA3MmE3NDQ2ZDM3In0=', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, 'Prueba', 'Prueba', NULL, NULL, NULL, NULL, 0, NULL),
(10090, NULL, NULL, 'principiante', 'e10adc3949ba59abbe56e057f20f883e', 'principiante', 'principiante@gmail.com', '', '', 0, 'principiante', '$2y$10$2MTVDZzGheEH48BVntnr4.AQwvRPAmwjFXelVb2HlbfTGeff8ynC2', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-03 18:08:09', '2020-12-28 16:32:55', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6IlZQTnNJdEFWYVR0UlRHZmY1enVYcFE9PSIsInZhbHVlIjoiKzBqdWJVR04xZHduWVRvbkYzaTkyZz09IiwibWFjIjoiNDQzOTRiOGM0YzM3MmYyNmRkZDI1ZWNkZjUyMDIyZDU2MTEwZjYxZmU4MmYxYThmYTQ0YWMyMDlmYThmODc2ZiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-01-07', 0, NULL),
(10091, NULL, NULL, 'basico', 'e10adc3949ba59abbe56e057f20f883e', 'basico', 'basico@gmail.com', '', '', 0, 'basico', '$2y$10$yQi.NJXDPO/J4ipe37reSO.DkVpy.yQWOa6utZxufervLZMtyMKC.', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-03 18:08:56', '2020-12-29 15:53:50', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6InNjb0swRVk2VVVNa283eE9laWRvemc9PSIsInZhbHVlIjoiaEZmQkRob1Brb21uUXEwL3NJK2FyUT09IiwibWFjIjoiYzc4ZDMyYWYwNzQyMTZmZGZkMWUyMzE0OGM1MmI1MzliZGM3ODhlM2M4M2M2ZjEwY2EzN2I2YmJlMjFiMGQyMyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-12-17', 0, NULL),
(10092, NULL, NULL, 'intermedio', 'e10adc3949ba59abbe56e057f20f883e', 'intermedio', 'intermedio@gmail.com', '', '', 0, 'intermedio', '$2y$10$3mapYG9aKSog.H3qZpKi/uGUaLZvCrQkXX0WgV7CMkV5wiXC7C/UC', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-03 18:09:46', '2020-12-07 16:39:04', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6InRROXR2T1lqZVB6Y1hwSGpqZUMrMHc9PSIsInZhbHVlIjoicjA5YTZuMlBtWXVaNlY3V1Y5ZW95UT09IiwibWFjIjoiYjZjNmI5OTljYTk2Yjg2YTNmMTQxNmU3MDgyMDMyMGFlYmU2MWQ1YTFjODU1ZjE5MWNmY2M5MGFjYTYyZTA0OCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-12-04', 0, NULL),
(10093, NULL, NULL, 'avanzado', 'e10adc3949ba59abbe56e057f20f883e', 'avanzado', 'avanzado@gmail.com', '', '', 0, 'avanzado', '$2y$10$3FGrcW3WDpbDqIyGoXrS6eWSk7Pv4dgdJclVDwf9CsqprQ8nGNJ0y', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-03 18:10:38', '2020-11-17 09:47:45', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6IllxUGpvdE9vdytrNVo4RG1wQ3c3MWc9PSIsInZhbHVlIjoiOG5GVWNkV1BGbEdPUEtreXgrN3RTQT09IiwibWFjIjoiMjRjM2UwMzdlMzhiMjA5ZTAyNGVjNTBiN2UxYjJlMWY4OTcxODIzODAxNjYwMDJiMjI5ODEyNTA2ZDAxMzRjMCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-12-04', 0, NULL),
(10094, NULL, NULL, 'pro', 'e10adc3949ba59abbe56e057f20f883e', 'pro', 'pro@gmail.com', '', '', 0, 'pro', '$2y$10$NVACwKT2.ZvAaW2X72xOp.zpg87bhs5JD0XBD15Jazr6obF.pZly2', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-03 18:11:57', '2020-11-03 18:11:57', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6Ii9hcmQxOHpiSkFxaHBSWlRBcy90aWc9PSIsInZhbHVlIjoiRkJ5SFAzSTI2czNyOFJiTnFVb0k0Zz09IiwibWFjIjoiZGI5OGY3NTAwZGUzYzkxNWI1NDRkMjA5ZWZhNWRkYTc2ZGU2MjBlYTgwMzIwZTgwZDlmY2Q2MWJhYzg5MThkZiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2020-12-04', 0, NULL),
(10095, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'yo@gmail.com', '', '', 0, 'pedro pedro', '$2y$10$kZJkwPnxJObFsvOfAkZQZedGR5S3JvX7C4fhLk5/MHlLagM16Uzry', 'user_1604521980.png', NULL, NULL, NULL, NULL, '2020-11-04 15:33:00', '2021-01-28 13:59:53', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IlowOUptZ2dVVlNGWW5sK2J4SU9JVWc9PSIsInZhbHVlIjoiVDZOMVA3d0tRK3ZReFBBK2FNS3R0dz09IiwibWFjIjoiODVhZTJiOWMwYWYxZmFjNzJjZjA2NTBkYzFiNmFmYWU5OTgwNDJiMDg5Y2FkZmYzOTQzYWVkOWQ5ZjAwYmM5OSJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, 'descr', 'biogra', NULL, NULL, NULL, NULL, 0, NULL),
(10096, NULL, NULL, 'Genaro', '09f0f854491bfb5a5a2311f2036e1e81', 'Genaro', 'conferenciasg.rodriguez@gmail.com', '', '', 0, 'Genaro', '$2y$10$ERMdrHm/cNwzIzlse8/VpuyA4yOjfr/XGtZ3ykFxbs0ini568.BL6', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-11 13:07:57', '2020-11-11 13:07:57', 10086, 10086, 10086, 0, 3, 0, 0, 0, 'eyJpdiI6IlU4REtScWUvWjdVYXpwMjcyaHhCbEE9PSIsInZhbHVlIjoiNzVJbjFJdkM2Mll6Q01TZWNWMTkzUT09IiwibWFjIjoiMzAwMTE3NjdmZjNiMjUxOTMzNDk1ZjE2MzEzN2UzZjAzNmU0NjJhOWU4ZDc0YmZjMjU2NGM1YjlkNjhiMzBmNCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10097, NULL, NULL, NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'franciscovalencia@mybusinessacademypro.com', '', '', 0, 'Francisco Valencia', '$2y$10$DyALxAzOt/2s5uKREqjgNuY8Ow5tw09BupkYQpJbHfmuLVLiBPOFe', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-11 22:36:37', '2020-11-11 22:36:37', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IkZNbHdxNjh0aGNWSCt4K3BrSmozaUE9PSIsInZhbHVlIjoicEhuWGxaZXUxTW45T2c4WHdYSUpxUT09IiwibWFjIjoiOTlmNWUzNTA0NGMxYzhmZTg3YzY3MmFjMjQ1OWRjNjg3M2E0ZDVlZTRjY2QwY2E3YzMwNDEwYjdjNmY4NDdjMCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Conferencista, Facilitador', 'Conferencista, Facilitador, Mentor', NULL, NULL, NULL, NULL, 0, NULL),
(10098, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'moderador@gmail.com', '', '', 0, NULL, '$2y$10$JtZ6aYX08QNRK9G24vgMlObG8jmcFQ7KbrlDdRxybeRF.cidmFOqq', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-25 08:20:24', '2020-11-25 08:20:24', 1, 1, 1, 0, 1, 0, 0, 0, 'eyJpdiI6ImFsWVZMbzgvbDJDcUZJRFM3QW5CZEE9PSIsInZhbHVlIjoiakhiNVQ3cEhHdTRFWk1KeEcvVDVpdz09IiwibWFjIjoiMjVhZTcwODcyMzZkZmNkYzAwYjU1NTI0ZWYxNTA5ZTU5OThiZDg1Y2JlMjU2YzA0M2UwZTdiN2YzMGQyMjg4NSJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10099, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'moderador2@gmail.com', '', '', 0, NULL, '$2y$10$bG7cdeJWwDsV9o7qWhWB4./nN4YMgED/B3xXN5UvA4BMgF8IOehuC', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-25 08:21:57', '2020-11-25 08:21:57', 1, 1, 1, 0, 1, 0, 0, 0, 'eyJpdiI6Ilk2dTcyQitNcVZhTzJNZVVVRk0wZEE9PSIsInZhbHVlIjoicENZNTk3a3RZcElvOW1GbGNBaUcrUT09IiwibWFjIjoiZGJjNDhlMTMzN2U5YzZkNTllYjQzYzVkNjczZmQxYjgyMDkxN2VmYzE4MjRmMWYzNDhmYjQ5MDNhMjg4ZTVlMyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10100, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'conferencias.lestermorales@gmail.com', '', '', 0, NULL, '$2y$10$M2NXtpcRmbZhkhPuOK0vNeuiFkwp03eLIXtn3QoetnYFzdCJPxR6i', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-03 07:39:29', '2020-12-04 16:20:48', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjBGUjlXRWFKcldHNDFYekIreVJhVVE9PSIsInZhbHVlIjoiSFlwNkR0U0lKNVdkbk5ZWWRCdkluUT09IiwibWFjIjoiNDAzNDQyNGM5MjkwOWRlMDg5MGQyZTc4YjNjNDM1ZDBjY2JhNzViMGFiNDk2MjEzNzE2MWVlNjBhY2Q3NjU4MyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10101, '2000-06-05', 'F', 'Yanira', 'e10adc3949ba59abbe56e057f20f883e', 'Yanira', 'cliente2@sinergiared.com', '', '', 0, 'Yanira Picon', '$2y$10$1L3/bIzCr03h0Wx6TiLx..e/K97Ss8lZAGRY.ZFPba4Q29X1r1LEm', 'user_10101_1607547615.jpeg', NULL, NULL, NULL, NULL, '2020-12-09 08:45:20', '2021-01-25 14:15:24', 10086, 10086, 10086, 1, 3, 501.71, 0, 0, 'eyJpdiI6ImwyZi9PcjR2K25Ob3ErRDZLb3Y4TXc9PSIsInZhbHVlIjoiTlgvanNjQ1hkMklhT3hrUDhQWEw0Zz09IiwibWFjIjoiMGJkMDA2YWYxMjZiZTFhNjBkZTY4ODZlN2I5NDVkNjNiOGE0NjAwMGQ2MDkzZTJkNmNiMTU2MmJmMWVkZmYzZiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, 0, '2021-02-16', 0, NULL),
(10102, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'cliente3@sinergiared.com', '', '', 0, 'Yanira Picon 1', '$2y$10$J3AKQ7cc25Dsqg2ssxHEX.F96F78/MxxlLzzNrz5yD1Wne/0rmXXy', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-09 09:52:50', '2020-12-10 19:30:38', 10101, 10101, 10101, 1, 3, 998, 0, 0, 'eyJpdiI6IlZaSHNKdm96TE1FSlE4YjZkdW9YdGc9PSIsInZhbHVlIjoiUU5PR2hlS2lPNXBscnppdWUvY09Tdz09IiwibWFjIjoiYmFkYWFjYWI0YTBkMGMxMTUxZTA2NDU2MTFjMTIyZThmZTcwNjUxMzEzNmFmNDU5NDBlNDY2NTM3MzQ1MTc3MiJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, '2021-01-10', 0, NULL),
(10103, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'cliente4@sinergiared.com', '', '', 0, 'Yanira Picon 2', '$2y$10$8Kxkmrhxp5rMgiMzBgkCJegOIaOrfeIIRNvlaO2hvxV4s6E17zeVa', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-09 09:53:48', '2020-12-12 13:20:28', 10101, 10101, 10101, 1, 3, 997, 0, 0, 'eyJpdiI6InBXUVhscitmNHVvTUx0dkdBcWdwRmc9PSIsInZhbHVlIjoiNnVaYkR5VDl2b3VpMXJ3T2MvZnl6dz09IiwibWFjIjoiNjVmOGIzOTk4NzQ1YTAxN2IzYzM4OTE0NDE2ODRhNDhlOTc1ZjFhZTkxN2Y1MmU1MGY3YTI5NzI3YjIwNWRjZiJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, '2021-01-10', 0, NULL),
(10104, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'cliente5@sinergiared.com', '', '', 0, 'Yanira Picon 3', '$2y$10$FSZhwIUGHF.EVFofsMeYbOnPJlf4SAuadNzlcESb/7ixTh.wlLF1y', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-09 09:54:35', '2020-12-09 14:50:19', 10101, 10101, 10101, 1, 3, 997, 0, 0, 'eyJpdiI6IkR4Um92Sk1jYlZiVHRJdUJtVHdPZUE9PSIsInZhbHVlIjoiTFN2ZnArWkU2N0tLTkRmNmltYjZ1Zz09IiwibWFjIjoiM2E2MGQzZWI5OTVlYmQ3ODc2ODY4YjQ4MGNhYzM3OTYxZjRmMTliZGM3ZTMzNDM0MjY1MThkMGJlY2M2NTk2YiJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, '2021-01-09', 0, NULL),
(10105, NULL, NULL, 'Soporte', 'e10adc3949ba59abbe56e057f20f883e', 'Soporte', 'yanirapicon@sinergiared.com', '', '', 0, 'Soporte', '$2y$10$3HQ5UyFGGn42su9NP/mwwuPSRcYNIL3tn3YTuRKYsKSwjQBfdNjFS', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-10 13:57:22', '2021-01-16 07:08:21', 10101, 10101, 10101, 1, 3, 983.9, 0, 0, 'eyJpdiI6ImJpdUFCaWFlYTRUOFBqeDgrcGNsTWc9PSIsInZhbHVlIjoiZkE4am1FazNxVFhiV3RSaEhCaVVGUT09IiwibWFjIjoiYzliZDJhMjliNjc2MGI3MThhZTk0NDlhMWJiZmQxNzRjMzMxMzM2NzI5Y2MxNTJiNTYzMDAzMmU0NTM2MDYyYiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, '2021-12-10', 0, NULL),
(10106, NULL, NULL, 'juanita', 'e10adc3949ba59abbe56e057f20f883e', 'juanita', 'juanita712@hotmail.com', '', '', 0, 'juanita', '$2y$10$Kji3SupoFyxuf8v0r/UWT.jS27JrfQSxalNd9ezVjintN/rmTm40a', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-10 19:48:38', '2020-12-10 20:15:23', 10105, 10105, 10105, 0, 3, 0, 0, 0, 'eyJpdiI6InB2TmVXbzE3YkpiczR2RjBicE8yOXc9PSIsInZhbHVlIjoiV0tVV1VtR212S3kwaUdWK1pKZ0dkdz09IiwibWFjIjoiMTBmNDQ0Y2I2ZjM4YTYzZWVkZGY5ZDE3OTI4YTA4YWI5NjU1NWM0N2Y5NDdiYmFkNTkzNWE1ZDIwYzM0ZGE2MyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10107, NULL, NULL, 'Mercedes', 'e10adc3949ba59abbe56e057f20f883e', 'Mercedes', 'cliente6@sinergiared.com', '', '', 0, 'Mercedes', '$2y$10$vpNsVNSNKA5Jo/O9wrNOB.5RE3Kmb7U9AcBzzCrPbalaWxhlRTOSy', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-11 12:17:41', '2021-01-25 14:16:02', 1, 1, 1, 1, 3, 958.41, 0, 0, 'eyJpdiI6Iml0YUJBMEdDRFNIM2p0c2hXZWpTMkE9PSIsInZhbHVlIjoiV2M3emcxL0k2VkdtZXpqQ0F3RTdSUT09IiwibWFjIjoiYzc4YTNiZTljMmFkNzFjOGNmZjc5OTkwOTIxNGE3YThkODg1NTRjNjlhNzQxMzFiNTBmNzhhNTM4MjhkY2Q4NSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, 0, '2021-02-25', 0, NULL),
(10108, NULL, NULL, 'Alejandra100', 'e19d5cd5af0378da05f63f891c7467af', 'Alejandra100', 'alberguerr05@gmail.com', '', '', 0, 'Alejandra100', '$2y$10$ixtegO2DyUVT2xanOvX0jea2lNQl7h6zscIsG8mHHfv/C6zAv5QA.', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-11 13:54:45', '2020-12-11 13:54:45', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ijc1MDJhTjQ0eTkyWkJyTVhvbVZCQWc9PSIsInZhbHVlIjoiVDFPeHVnQzBDYUMyYUZadTg2RlN3dz09IiwibWFjIjoiMWQ5MTNiZTExYzRlMWFkZTQ3MGI4YTFhNGY2NTZiMmJiNGFkNTgxOGU4NmZlNDY5Mzc4MTIyZDJjM2U3ZGRmMCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10109, NULL, NULL, 'AlexisValera95', '25d55ad283aa400af464c76d713c07ad', 'AlexisValera95', 'alexisjoseva95@gmail.com', '', '', 0, 'AlexisValera95', '$2y$10$NDFfAaIedGXsXDUtClpESOGQ3lQRT.7ERVFRIVFFtDlznQysSQuLO', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-14 05:18:59', '2020-12-17 12:24:26', 1, 1, 1, 1, 3, 0, 0, 0, 'eyJpdiI6IllDaVpuYmpkM2Q4M21Bd0RMZGdraFE9PSIsInZhbHVlIjoiRFZJcVhaUG9URzZJSHlwQ1JEbCtvQT09IiwibWFjIjoiNWNkOTExNDJmNDQ4ZTBlNGE4ZTVhZDdjMTg4OWMwZmNiN2Q5Y2MxOTRkOTY3ZmMwMzk0ZTkzNzU0MzU2YThhZCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-01-14', 0, NULL),
(10110, NULL, NULL, 'Prueba', 'e10adc3949ba59abbe56e057f20f883e', 'Prueba', 'cliente9@sinergiared.com', '', '', 0, 'Prueba', '$2y$10$0pDRGlmCEJqtXW0wdVS3fePhXopWeZzwEKmfejtJO3RnMo4Ts.GJi', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-14 14:50:57', '2020-12-14 16:33:42', 10107, 10107, 10107, 1, 3, 997, 0, 0, 'eyJpdiI6Ijcyb0x2dFdjMHpWRHhvOFJrM3Fsd3c9PSIsInZhbHVlIjoiYU1jeHpLWlRoRlh4MEJ1Q094c2lyQT09IiwibWFjIjoiNTVlZDE1NTU5MzkyZGMzMTc2YTBmNjI1OTliNWJkNjlkZjhiMTM0NTgyOWJlMzU1ZmY0NWVlMjk3ZjQyMDQzOCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, '2021-12-14', 0, NULL),
(10111, NULL, NULL, 'alejandra', 'e19d5cd5af0378da05f63f891c7467af', 'alejandra', 'ramonpicon@sinergiared.com', '', '', 0, 'alejandra', '$2y$10$TthCIB1a18XZ.sRED.bPyOjgtj647OchNG3JiI3TGv2JEb9sfQ7W6', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-14 15:36:37', '2020-12-15 15:46:20', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IitOT3pUWlFOMVZ4bVh2WHdqWnY1OFE9PSIsInZhbHVlIjoiUi9nbWJ1L3luVUk3VU9XbUJxY0E1QT09IiwibWFjIjoiYWFjNmNmMTg5ZjBjMmMyNjA2ODMyMjE2YTkyNWE1NDBjZWI3ODhlZjhlMmNhOGE4NzY5YWFkMDQxMDZiYjk0OSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10112, NULL, NULL, 'es5000', 'e10adc3949ba59abbe56e057f20f883e', 'es5000', 'tes5000@gmail.com', '', '', 0, 'es5000', '$2y$10$k2UMseqGKohcBfaOW4fvjuHIkB7CASbPqY5aamaep.zAtk3iwQHr6', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-14 16:13:35', '2020-12-15 16:15:41', 1, 1, 1, 1, 3, 998, 0, 0, 'eyJpdiI6IlpnbGFoUmxaYVJlQkFDZm5jRHlheUE9PSIsInZhbHVlIjoiNlVpUEhIa29hcTY5ZG9tblpDaDdtZz09IiwibWFjIjoiNzIwNzMwMTk5MDI2Zjk3ODMzMzViMzMyYzVkOGY4NzBmZmYzMzczMzczNjg5NjlkNzRiOTJhOTcwNmYzOGE3NCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, 1, '2021-12-14', 0, NULL),
(10114, NULL, NULL, 'Luz', 'e10adc3949ba59abbe56e057f20f883e', 'Luz', 'soporte1@gmail.com', '', '', 0, 'Luz', '$2y$10$FALUQSyxNMd9kGA5hOMWaO3g7ErvkVf22VOP5F9Mz94/ihUTnEfuC', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-16 12:53:36', '2021-01-16 08:39:34', 1, 1, 1, 1, 3, 5.997, 0, 0, 'eyJpdiI6ImdkcklRVEdINHhEVFpZcmEwbWwvS2c9PSIsInZhbHVlIjoibmc5SnJKLzkwZzVhZnNzQTFQRlRVdz09IiwibWFjIjoiNDZhMGE4ZmYyYjQwYmNmNjliZWJlMjMwZDg1N2Y5ZWYzYzIxMjQ0OTYxNmQ0YzU5NjU1MzI2YWZiNDE3NTc1NSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-01-31', 0, NULL),
(10113, NULL, NULL, 'tes900', 'ef73781effc5774100f87fe2f437a435', 'tes900', 'tes900@gmail.com', '', '', 0, 'tes900', '$2y$10$UHoFcL5DZh795fhzxGD6jeNkuYGnVd7e7O0edNifH8Br2tdUgzA0G', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-14 18:49:03', '2020-12-14 19:25:27', 1, 1, 1, 1, 3, 98, 0, 0, 'eyJpdiI6ImdWNWJjRlVuR2RMa1U2Z2ZNMFpGQVE9PSIsInZhbHVlIjoiNTA0ZE9mVDJFSVo1M01HTTM1QW9sdz09IiwibWFjIjoiYjFhZjZiYjRmMTRjNzQ5MzRlMGQ0NTYzMTIxNGIwODA5MmRjMjUzNDgxMTM4ZmNjNDY0YTkyMmZkODJjNzQ4OSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 1, '2021-12-14', 0, NULL),
(10115, NULL, NULL, 'Ser', 'e10adc3949ba59abbe56e057f20f883e', 'Ser', 'soporte2@gmail.com', '', '', 0, 'Ser', '$2y$10$xnd96qlLWCg0emJG5b.7beCMRqlMGkfM7O.RTdmPj/Vwlrr7zxmdK', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-16 13:05:58', '2021-02-09 11:13:22', 10114, 10114, 10114, 1, 3, 0, 0, 0, 'eyJpdiI6ImxXWXhwOHgzS28rQ2c5MkFDOWhoNFE9PSIsInZhbHVlIjoiWTRlaHhQU1BzSDgzMUd1a1Z6dTNzUT09IiwibWFjIjoiZDQ2MTkwMzQ5YzNjMjFlN2E3ZmZmYWJmYzZlZDc4NGEwZmM2NjlhMjUxNGEyZTk0MmJkMGFlN2UyM2U0MDQ1OSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, '2023-01-31', 0, NULL),
(10116, NULL, NULL, 'Hacer', 'e10adc3949ba59abbe56e057f20f883e', 'Hacer', 'soporte3@gmail.com', '', '', 0, 'Hacer', '$2y$10$g5yjzFeQhruSLCHvuEZh.eoeFOmE6Lv3PRGgCN1uPRFnTisa6TKTm', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-16 13:13:45', '2021-02-09 11:14:20', 10114, 10114, 10114, 1, 3, 0, 0, 0, 'eyJpdiI6IkFwMU9xQS9UUG1zdGVPU1h4Nm5ZT2c9PSIsInZhbHVlIjoicS8vamZUODFGZlgvME1LODIwWVRVZz09IiwibWFjIjoiNDU2YzMyM2Y3MmVhMTg5OTdjMGYzNjBlZTQ2NmJkYWE3OTY4ODk5ZDc3MzEzNmZhMDU1MjAyMWFkZTNjMzQ0NyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 1, '2023-01-31', 0, NULL),
(10118, NULL, NULL, 'Trascender', 'e10adc3949ba59abbe56e057f20f883e', 'Trascender', 'soporte5@gmail.com', '', '', 0, 'Trascender', '$2y$10$irqlKksv39ORVFBDsKTFfOEb/3WAcAxq.wzwe1VfaEiPnhtppILRy', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-16 13:17:43', '2021-03-26 17:56:08', 10114, 10114, 10114, 1, 3, 0, 0, 0, 'eyJpdiI6IlB4VjJNeWpZRlR0K2dVSE1WQmFhZkE9PSIsInZhbHVlIjoiNjlyenZuT3RvYnhheDRacHZ3LzdKUT09IiwibWFjIjoiZGVkNGM5MWVhNDdhNmE2OWYxMTkwZWY1ZTUzNmVhOTQ4MGFhYjc1NTg2OWU2Y2U0ZTUwMGQ2OTYyZTlkMzJlYSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, 1, '2023-01-31', 0, NULL),
(10117, NULL, NULL, 'Tener', 'e10adc3949ba59abbe56e057f20f883e', 'Tener', 'soporte4@gmail.com', '', '', 0, 'Tener', '$2y$10$cbwerdPnnGR7Bpq5bUDidei.XhMMoXtYrgHo5TFcEHyiOiOAfpvde', 'avatar.png', NULL, NULL, NULL, NULL, '2020-12-16 13:16:23', '2021-02-09 11:15:36', 10114, 10114, 10114, 1, 3, 0, 0, 0, 'eyJpdiI6Ik52MkNpZnZZWmdURm53K1dwRXM3dWc9PSIsInZhbHVlIjoiMGNvZEx5TkhvZFhYVkk5SW5YOXdUUT09IiwibWFjIjoiMDliNWQwNDFmZjczZDE5YjNlZjA3YTI5YjkyMWQ3MmY0MmI3MmNjYTJiMjQwYzhiN2RjNGVjNTZhYjc4N2QzYiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 1, '2023-01-31', 0, NULL),
(10119, NULL, NULL, 'pruebaregistro', 'e10adc3949ba59abbe56e057f20f883e', 'pruebaregistro', 'cliente10@sinergiared.com', '', '', 0, 'pruebaregistro', '$2y$10$DfNTrvGZI//M6MbVHf6UxOkFuliJP5B3oN8g7Ad144tSERWpsd4mq', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-08 16:24:37', '2021-01-08 16:24:40', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ik1wRWtHZmtLNEhzRmRyeTcvdlY1WEE9PSIsInZhbHVlIjoiT0VxVXNURFM2Q1AwZG9ldHUyMGRDUT09IiwibWFjIjoiZjE4NzZjNjZmNjQ4YWVjM2JjYTJiMmU5NTAzOTkzNDY3MWFiNzcxZjk1OGQ0Mzc5Yzk5NDQ5NzBlNDliODFjNCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10120, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', NULL, '1@gmail.com', '', '', 0, NULL, '$2y$10$GcLEqW4SuJ/2CEOCb0BVe.m7oYJfsKHOrEyaLhWAHljb4KW2z0tyC', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-11 19:42:11', '2021-01-11 19:42:11', 1, 1, 1, 0, 0, 0, 0, 0, 'eyJpdiI6IkJhR280VnRnc0RPdUpOVGhSL3VGL3c9PSIsInZhbHVlIjoiVytGcU02YnVzQUozZUdNSFl3NDloQT09IiwibWFjIjoiZTA3NTZiZjk5MWU2Y2Q1YWZlODc1YWVjYTJmM2RlNjhkZGQ4ODZiZDQ2YmUzM2IyYmFmZjk2YzE2ZmNkOTk2OCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10121, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', NULL, '2@gmail.com', '', '', 0, NULL, '$2y$10$GYHw895uo1JT8/VLGpJ9w.ih5TmwEQStu5OGP6ETtdxJyPAeV88lS', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-11 19:42:35', '2021-01-11 19:42:35', 1, 1, 1, 0, 1, 0, 0, 0, 'eyJpdiI6IlQ1U3N1b3VJbmxWOHVCZmg2eVRMalE9PSIsInZhbHVlIjoiUXE3NnFORkNiVG1NcjU4ZU5mSjZjQT09IiwibWFjIjoiNmYwNGI4OTc5OWI4YjYxZDI1MWZmY2YyZDQ5ZDk0ZGUxNzY4YTZkZjhkYzVmOGYzOTk1ZjlhODk0YTUzY2VmNyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10122, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', NULL, '4@gmail.com', '', '', 0, NULL, '$2y$10$.L56RoP1dwwHEb08OhWOwuDEtRFRWmYS4vTrwSdTCB98pTD1U6gay', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-11 19:43:10', '2021-01-11 19:43:10', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlBrdmYyZ3ZjOVA4TmhVd3plOXhDb3c9PSIsInZhbHVlIjoicDl4cHBOWStOS2l0aG1abERoQ3BaUT09IiwibWFjIjoiMGUyYTM3YzYwYmMwNGI2YmMyZTJhMDAxN2VjZWIwMjVhNjc3MTczNzhiYzI5ODE1NTc4NjUxNDcyZTUyMjFkNyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10123, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '5@gmail.com', '', '', 0, 'Mentor Experto', '$2y$10$KKQuG7b9qiWBrdb680LBZOJI4R4WwgmiOQDKKaUvZ2NWv8iQqTbDS', 'user_1610419448.jpg', NULL, NULL, NULL, NULL, '2021-01-11 19:44:08', '2021-01-11 19:44:08', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IlIvSE5BbUIxUkpuekJsaWFyZHdEdHc9PSIsInZhbHVlIjoiNzh2RmI0dStpNllVcEJxZThnamVoUT09IiwibWFjIjoiZGJiM2MzODk1YWJjNWM4NWFiMTBkOTBjYWExYmRhYThiMWZkNmNkOWRkZjdlOWFmYjg5NDdhYjQxMzlmNDczNCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Descripción', 'Biografía', NULL, NULL, NULL, NULL, 0, NULL),
(10124, NULL, NULL, NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'crisleivys@mail.com', '', '', 0, 'Crisleivys Gil', '$2y$10$h4MoUGYUVeTTiKmzEjjf2uiSDZesUTt/5nq/mu9fu7PQXYnXUAbDy', 'user_1610739805.jpg', NULL, NULL, NULL, NULL, '2021-01-15 12:43:25', '2021-01-15 12:43:25', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6InpkYmpqdmdjUUZzR1hPZUNlaE15d3c9PSIsInZhbHVlIjoiTDVkM01nSms2bWN2VEd3Z0dYQWNWUT09IiwibWFjIjoiNTFjZWJjZWUyODk4MTBmODkxYzQ2MzE5MGNmOWNiZWQzZWRjZGQyYmIyMTM1ZTQ3NDc4YWFmNmY0NWU3MjQ0OSJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Probando registro', 'Probando registro', NULL, NULL, NULL, NULL, 0, NULL),
(10143, NULL, NULL, 'thorby_1@hotmail.com', '5ac814a8125b1f2c0d28f63149bcbed1', 'thorby_1@hotmail.com', 'thorby_1@hotmail.com', '', '', 0, 'thorby_1@hotmail.com', '$2y$10$1CdtcpDnu4u8ZFc1lE.0Ne5qZm9auLtxvYw5lwE90Yh5B9sYKjAHe', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-04 18:26:10', '2021-04-04 18:26:11', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjUyVEwvdCt2Z3lURmhsY1RWSko4NVE9PSIsInZhbHVlIjoiUUN2UGVKVzlBMTJDeWEreC9xUlhna0VQdjNsWlRhcU4wRldQOEFFVXpJcz0iLCJtYWMiOiI2MWQ2MjM5MzM1MjdmZmZhYmFlZWU2ZjhlNGEzY2Q0N2MwN2FkNTUwODM1NDU1YzA2OTVmMzZiMTM0OWJkNWFhIn0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10125, NULL, NULL, 'preba5000', 'e10adc3949ba59abbe56e057f20f883e', 'preba5000', 'prueba5000@gmail.com', '', '', 0, 'preba5000', '$2y$10$lyaF6gqQ5PZGWkES3lqSquKKwb6saYyJpIAi3wjlSzPQsxfYtaVNe', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-26 12:16:07', '2021-01-26 12:16:08', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IldpaENNYmxpbENYS1hRRkQ5WWQrRlE9PSIsInZhbHVlIjoiL1hwUEZWelF6YjRZTGlBdWg5UHY5dz09IiwibWFjIjoiNWU0YmU4N2I4ZmY2NzQ0MTYxMTcyMzlmYmQ3MjhlYzc0MDg5MzJhODliYzNkMmNlM2Y1ZmFiOGQ5MjQ4MDcyNyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10127, NULL, NULL, 'anel samano', '782384aef075e2f61c986bba4a9ec7ef', 'anel samano', 'viva_mi_gato@hotmail.com', '', '', 0, 'anel samano', '$2y$10$kyfAbnuJrM5...FWaK6f1.sqd3kCz8ommLvsxu0PTadaKsEhQrJ/C', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-28 16:57:51', '2021-01-28 16:57:51', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ii9qZHBCeUZidER4ZWorQXhBR2lsNXc9PSIsInZhbHVlIjoia3FJWHFER3F0Zm9JRVY5SGZ6Nnc1dz09IiwibWFjIjoiZDA4OWNlMDE2Zjc4OTE1ZjAzNDIwYWI0Yzg2OGJhNGVhNzE3YWY4NjE1OTJmNDliZDBmYTU5MmMyOWNhZTg1OSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10126, NULL, NULL, 'Luisana Marín', '8e90bc55fb687fa08dde18f7623c6aab', 'Luisana Marín', 'lvmb29@gmail.com', '', '', 0, 'Luisana Marín', '$2y$10$qDp37v7R.EHUUACjcrcqh.J3aGqGGdMCrndI/SzD7iMxr9pv8t9E2', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-27 13:07:57', '2021-01-27 13:08:04', 10075, 10075, 10075, 0, 3, 0, 0, 0, 'eyJpdiI6IjZ4dkZpRnUvM0NwVjdzV2pTL2Jab0E9PSIsInZhbHVlIjoidXJZTzk5b0RTK1FnSU43TFp0VWtuQT09IiwibWFjIjoiOTUzYjYxM2EyMGNlYTk1ODY1ZDRkYzlhMzhkM2NhNTRiZDA5MGJjNmMwOTMxYWE1MDU1OWQzN2QxZWI0NGExZCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-02-28', 0, NULL),
(10131, NULL, NULL, 'fjms', '25f9e794323b453885f5181f1b624d0b', 'fjms', 'lic.freddymillan@gmail.com', '', '', 0, 'fjms', '$2y$10$1UHCyNb.EGBEHok0bQDIPODrfOtdwofFr3cTnjI89ryTvpReubmW.', 'avatar.png', NULL, NULL, NULL, NULL, '2021-03-03 08:04:38', '2021-03-03 08:04:40', 10126, 10126, 10126, 0, 3, 0, 0, 0, 'eyJpdiI6IlZYM01UK1UwTk9FRmFiK1RHblFYc1E9PSIsInZhbHVlIjoiNnVnem9qWm10bFJzUlNnT0VNUTZlOWRhRUs1NGxwSnVObVNFNUZ6M3A4az0iLCJtYWMiOiJmMjRkYTc1MGFiZjI5OGU1MTcyNTgxYTgwMTVkYjRhMmFjYjM5ZWU1MmFmYTY1OWExZjFhNTI4MDEzYTZhNmZjIn0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10128, NULL, NULL, '1', '124bd1296bec0d9d93c7b52a71ad8d5b', '1', 'noemy.producer@gmail.com', '', '', 0, '1', '$2y$10$D7XEpnL.TOc03FNRlkaZ3.pRkw7XZqHncOnYqmuB2SFhkrRxok0sS', 'avatar.png', NULL, NULL, NULL, NULL, '2021-02-19 21:57:25', '2021-02-19 21:57:25', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjJXdkQ2bWNadno4Y1o1UnZNN3FEQmc9PSIsInZhbHVlIjoiYmowN2FDSVRiVktWamtXekpYRll6dz09IiwibWFjIjoiNTMxZmUxY2Q0YzZhZmJhYmJhM2I1NDNhN2VkZjI2MmVjNTA2NmUxNTA2OWUzYjU4NTQyY2NjNjVkYTRlZGQzZSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10129, NULL, NULL, 'noemy aleman', 'e10adc3949ba59abbe56e057f20f883e', 'noemy aleman', 'marketin@fenttix.com', '', '', 0, 'noemy aleman', '$2y$10$Z4UgdSEIM4DUiTAtCvX3Le7L2fsuP5ZJLOfnSCKPldtKR86.F5tbm', 'avatar.png', NULL, NULL, NULL, NULL, '2021-02-26 17:21:16', '2021-02-26 17:21:17', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkRMUWJYbjdTQTEvdDdQYTYzNlJlOHc9PSIsInZhbHVlIjoieUttdnJwWnFaMWhRd3ZzRERwek1oUT09IiwibWFjIjoiOTBmN2U5MTNiMmZiNzViNGE4OTg4Y2JjOWY2NWUxYmFiMDZhMTIwOTlmNTUwYWI1OTY1N2Q4NDRhM2U4OTdlNyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10130, NULL, NULL, 'pietropasqualis', 'e10adc3949ba59abbe56e057f20f883e', 'pietropasqualis', 'yo1@gmail.com', '', '', 0, 'pietropasqualis', '$2y$10$xPCS8BhcWnDJcS/r.PLetu.IiLyDcKUp0VvFaqP2y/R1uVlrYAopG', 'avatar.png', NULL, NULL, NULL, NULL, '2021-02-27 10:16:12', '2021-02-27 10:16:12', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InB5MFBNLzUyOHMrd3ZrbHZnQWQvN3c9PSIsInZhbHVlIjoieFVFY0pkOW9wcWNSWFV2dm1LcTdJQT09IiwibWFjIjoiYmJhNTdiY2JjZWZkNTY3YWFkY2U4MjVjODc5YWYwNzhiODRhNDM0MWI2NjNlYjVkNjkwNWZiMjIxYjQ1ZDNiNiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10132, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'ale@fgmail.com', '', '', 0, NULL, '$2y$10$eMd.HlXyGbvakxX8d41sduyRsswgjsbpaCvBUqbBfoNktVCNMz/rO', 'avatar.png', NULL, NULL, NULL, NULL, '2021-03-04 09:42:21', '2021-03-04 09:42:51', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjVReGJsQS9WVzh2Tm5PNm1GR3BYdXc9PSIsInZhbHVlIjoia2l4ekMwdnJydWJHdVdZdEZUZjNNdz09IiwibWFjIjoiMmE2OTE5MzRkZTgxMGNiYzEyNTg1YjlkMWQwMzM2MTUwODNkMTc4OTEyYTczNzljM2VlNDBiMTQzZjgwZGI0ZiJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10133, NULL, NULL, 'noemy aleman', 'e10adc3949ba59abbe56e057f20f883e', 'noemy aleman', 'direccion@alianzaentrenamientos.com', '', '', 0, 'noemy aleman', '$2y$10$H4XK4YucokVuxQKw8BmmAeM1gyXsB0HWh6EQ8eu.idWpU8PI5lp4S', 'avatar.png', NULL, NULL, NULL, NULL, '2021-03-05 17:40:52', '2021-03-05 17:40:52', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ims2YmVMbTRoS2RDWk5EbnNBajBlcHc9PSIsInZhbHVlIjoidjJ3bEJjemovdmxJK1FuRi8vVjdadz09IiwibWFjIjoiZWMwOGU4YjE3ZGY0M2U2NTMxY2E5NmY2OTRiMjY5YjIxZTExNDM0OGM5MGFlMzM1YjE0ODk1ZTJkNGJmNjFiMSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10134, NULL, NULL, 'prueba123@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'prueba123@gmail.com', 'prueba123@gmail.com', '', '', 0, 'prueba123@gmail.com', '$2y$10$dY3i58NGZTRoKiWV35qQRu2W0jkmpQ3FcO3se8jRai1YB6.NVl3N.', 'avatar.png', NULL, NULL, NULL, NULL, '2021-03-08 06:36:09', '2021-03-08 06:36:10', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjBPRVlIRWkrWC9oZTNUM1lBSktZQ1E9PSIsInZhbHVlIjoiSDFCWXNpU1poZUFhREJUeXZlWlc1em9vUllyYkpYOGsyMjdqa0owWlhIdz0iLCJtYWMiOiJlMjU5MjhjMWZhMTg5ODU4ODAzNzU3MTdhYTEwZjFkNmE4ZjMzMTI1YWMwYTQ2MmVmYjNjYjQ0MzI3Mjk2MTE4In0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `wp98_users` (`ID`, `birthdate`, `gender`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_activation_key`, `user_status`, `display_name`, `password`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `created_at`, `updated_at`, `referred_id`, `sponsor_id`, `position_id`, `status`, `rol_id`, `wallet_amount`, `billetera`, `bank_amount`, `clave`, `activacion`, `fecha_activacion`, `token_correo`, `tipouser`, `ladomatriz`, `puntosPro`, `puntosRed`, `puntosDer`, `puntosIzq`, `debiDer`, `debiIzq`, `binario`, `codigo`, `correos`, `limitar`, `pop_up`, `autenticacion`, `factor2`, `fechaver`, `modo_oscuro`, `profession`, `about`, `cover_name`, `membership_id`, `membership_status`, `membership_expiration`, `streamings`, `streaming_token`) VALUES
(10140, NULL, NULL, 'luisanaelenamarin123@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'luisanaelenamarin@gmail.com', 'luisanaelenamarin@gmail.com', '', '', 0, 'luisanaelenamarin@gmail.com', '$2y$10$vCH7o.qcHEz/6zpOGc.KO.TUtNsIamV7e.717BMSRrUhdsdvZ590S', 'avatar.png', NULL, NULL, NULL, NULL, '2021-03-08 07:27:33', '2021-03-08 07:27:33', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ik5idmI0eW00UWVHalM0Z1l3RjJ3c0E9PSIsInZhbHVlIjoia3paRmR1TndGQTlxekd6WVRpa3Y2Z1g3bUU4MGpDQ2RWeURmKzdOVlJ2RT0iLCJtYWMiOiIzMTVhYzM2OWI2MDYyNzY2ZmQ1YWRhNGU4NGY2YmQ4YTgyOTcxNzMyZTZmYWFjYjRlMjFmYzkxODJmZDkwYTMyIn0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10141, NULL, NULL, 'direccion@humancia.com', 'e10adc3949ba59abbe56e057f20f883e', 'direccion@humancia.com', 'direccion@humancia.com', '', '', 0, 'direccion@humancia.com', '$2y$10$8nDUranoSzvCfAfH63UhVOpd/KO8ogUdhYPAvXn9tVFnU0sL.G75u', 'avatar.png', NULL, NULL, NULL, NULL, '2021-03-10 00:10:10', '2021-03-10 00:10:10', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkdlN2Z1YXF4cjM5eGUrQ0Q0Ny9SZlE9PSIsInZhbHVlIjoiZmMrM3k4N010bUQ5d0diZ3BuaHFwZz09IiwibWFjIjoiMTc1YmQwNTc0NjE3NGY2ZTgyNWUwODQwYjU4YjE0NmU3Mzg4MjZhZjRkNDBjNGM5OTIzMWI5ZGNlMmYxOGQ3YSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10142, NULL, NULL, 'noemy@humancia.com', 'e10adc3949ba59abbe56e057f20f883e', 'noemy@humancia.com', 'noemy@humancia.com', '', '', 0, 'noemy@humancia.com', '$2y$10$eDkQ1ZidYSSCv2Ibg/UmLu5JtqXxWz8Dxl3.RBd3NZVVOG6/Z2OKG', 'avatar.png', NULL, NULL, NULL, NULL, '2021-03-25 19:22:05', '2021-03-25 19:22:05', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkxNS214aXY0Y1poMVdSQXNhZ1hwSUE9PSIsInZhbHVlIjoiUFRZK21hNVk0MmtlUnlTang1THR2dz09IiwibWFjIjoiOGRhMWEyZDJiZTY5YTg0MzIxMmExYWZhNzkwNzFmNjU2ODY3N2E1OTBhMzlmZmU1MGU0ZDA0NjdiZDI2ZDdhMSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10144, NULL, NULL, 'cliente1@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente1@mybusinessacademypro.com', 'cliente1@mybusinessacademypro.com', '', '', 0, 'cliente1@mybusinessacademypro.com', '$2y$10$AAgGY2216PxmKH/S84k2e.rnPn4zBfILl5ZeudgamRhRyyiPV9hkO', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-06 07:44:52', '2021-04-06 18:01:55', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6ImZoZHVDdE1rak9tc3ZIclE2RTRMYXc9PSIsInZhbHVlIjoiWWRIS2FSS2J1MjBlaDhXOXBzRkdVdz09IiwibWFjIjoiMjdjMzE0YzkwY2IwYjI3ZDMzNWRjOTJlOTZkNTBlMjEzZWI0NTU1ZTU2NzhmNWE0MTg5MzgyZmQ0MThkNTg0OCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, '2021-07-31', 0, NULL),
(10145, NULL, NULL, 'cliente2@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente2@mybusinessacademypro.com', 'cliente2@mybusinessacademypro.com', '', '', 0, 'cliente2@mybusinessacademypro.com', '$2y$10$GAA1HaR02mBSPj2j/EnmQuaTckSWyf4tkf7547OM.aXnPTjj5Gy8a', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-06 07:49:06', '2021-04-06 07:49:07', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlRqaDJLclhEWlppQmQ4cEZodmJwamc9PSIsInZhbHVlIjoiSENKeGg5bXR6L0IwN0hjcWNVODZCdz09IiwibWFjIjoiNzgyMGVkZDQ1MDhlNjJiZWI2YzA1NTc3OWY5ZjMyNmVlMzc1YTY1OGJkMmM0MjNiYjU0MDUxNjhhMGFhNTcyYSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, '2021-07-31', 0, NULL),
(10146, NULL, NULL, 'cliente3@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente3@mybusinessacademypro.com', 'cliente3@mybusinessacademypro.com', '', '', 0, 'cliente3@mybusinessacademypro.com', '$2y$10$Q1hwC5TN.OxhQ52Z9nr.B.hrUEzAeJpTtxkdbkZ5cd14OMGOvlavm', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-06 07:53:35', '2021-04-06 07:53:37', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlFXb1lWTXlXNDhIU082UFpFUTYyYVE9PSIsInZhbHVlIjoieFlIZHlwcEtqaGVIOENvc3k2QXhkdz09IiwibWFjIjoiY2NiYTIyMjVhYzM5MTgwYTA5ZjM5ZTY4ZTE5Nzg5M2Q3OTc2ODZmYjg3YzE1ZWRkOGQ3ZTdiNGRlNjBkOTAwYiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 1, '2021-07-31', 0, NULL),
(10147, NULL, NULL, 'cliente4@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente4@mybusinessacademypro.com', 'cliente4@mybusinessacademypro.com', '', '', 0, 'cliente4@mybusinessacademypro.com', '$2y$10$40rTNBZvKxViMjpM9pyo0ushAuPSsZyy4FZrFKyQMibqy4BGweuze', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-06 07:59:19', '2021-04-06 18:05:00', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Iit3QjB2dzIrZ2JUL1lKa3NtT1NlSlE9PSIsInZhbHVlIjoiMGhYaUdJL2V2YlVGR0JzeG10blJvdz09IiwibWFjIjoiMWQ0N2JiMTdhNDEwZmY4MTQzMDg3NjA3YzA2ZGU3NjhjYTZhZWM0ZDEwZThlZDY3OWNiM2E5MTEzNTI0ZTY3YyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 1, '2021-07-31', 0, NULL),
(10148, NULL, NULL, 'cliente5@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente5@mybusinessacademypro.com', 'cliente5@mybusinessacademypro.com', '', '', 0, 'cliente5@mybusinessacademypro.com', '$2y$10$B71jrs4N5lReBI99DiCdcOFALxARmjE/BVENpe/N1061TzE8CZR1G', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-06 08:01:01', '2021-04-06 08:01:03', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InRialFFeCtuWElBYjUvRnNIWER0dXc9PSIsInZhbHVlIjoiOE5maXNFQ1Bkc0FXelRFdXVkWEE2Zz09IiwibWFjIjoiODlkZWUzNWNmYzUwNmQ1ZTM3ZmU3NDA0ODk4MDc4NGIwZDdjZjI5M2RhMTMyZTFhYWNmNTFkNjE3MjE2NzE5ZSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, 1, '2021-07-31', 0, NULL),
(10149, NULL, NULL, 'cliente6@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente6@mybusinessacademypro.com', 'cliente6@mybusinessacademypro.com', '', '', 0, 'cliente6@mybusinessacademypro.com', '$2y$10$FQ3emfNxo8oLUU5kRDUoeuKBrVyB206nPiatbPLzmoCwOCLLTUs16', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-06 08:04:09', '2021-04-18 15:44:13', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkNiK0Q3MDF2dnJkZjh5V3ZqWTFiR2c9PSIsInZhbHVlIjoiVkZTQnN1MG14eWMra01OWDdUaXA1dz09IiwibWFjIjoiNjVmYjczMzU3NDQxYTdkYzkwMDJjYWIwYTQ0MGUwZTZmOWRmODVkZjliM2ZiOTVmYzNjMWQ2MDAwMjM2NDhmNyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 4, 1, '2021-07-31', 0, NULL),
(10150, NULL, NULL, 'parkkimberley@yahoo.co.uk', '67abfc4fa62f07c2193682fc7443293f', 'parkkimberley@yahoo.co.uk', 'parkkimberley@yahoo.co.uk', '', '', 0, 'parkkimberley@yahoo.co.uk', '$2y$10$orWSjCGGzD84ep4RvJqu4OCqm0pQbw2uZCggBaikc35UdsN56l4am', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-07 08:47:49', '2021-04-07 08:47:49', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6ImcweWEyc2xCa3BMZEwrUzRkWmRKMWc9PSIsInZhbHVlIjoibDRIRnN0aSs4TjJTM2VYRVczSFcxSGI1VkVBRTBsRHNaMnM3SWRaQnNqQT0iLCJtYWMiOiJiMzY2YmEwMWMxNGRhNDhjMDkzMzUzY2Q5OWFlYzk3ZGIzZTc4NmMyOTY0NGFjMWI2MTZiOWMyMzhiY2E5OTdlIn0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10151, NULL, NULL, 'cliente7@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente7@mybusinessacademypro.com', 'cliente7@mybusinessacademypro.com', '', '', 0, 'cliente7@mybusinessacademypro.com', '$2y$10$/EHiFcFvOuOcgSqliFCUSuf6b4.6HWQ0GjhnXUCADeLqAG.LrWpmu', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-07 12:13:48', '2021-04-07 12:13:49', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InhWNmtsSGFYZ0NTV0Q5bEZqVzRSM1E9PSIsInZhbHVlIjoidkMxK0d4RU9wOEZOanY5YjlLUXhCdz09IiwibWFjIjoiZDIzZDc3ZGJiM2QxN2RlMDg5NDBmN2M3OTBlYjkzODYyYjM4MWFmNGUxMjYxYzVkZDMwMjcyNDAyNDYzZDRmYyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 1, '2021-07-31', 0, NULL),
(10152, NULL, NULL, 'cliente8@mybusinessacademypro.com', 'e10adc3949ba59abbe56e057f20f883e', 'cliente8@mybusinessacademypro.com', 'cliente8@mybusinessacademypro.com', '', '', 0, 'cliente8@mybusinessacademypro.com', '$2y$10$B5l3sKdPd4e7Ren3kGhl6uozl865CL.QTqMuqlJgqaQ57l6YotIru', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-07 12:15:05', '2021-04-07 12:16:27', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlU1RXRyc1VmQ3pSUTFEVTlZaUxFcWc9PSIsInZhbHVlIjoiaUtXeUdnWEFtWU9IWGtxOXl1UXNyZz09IiwibWFjIjoiN2I5NzYyMTc1N2U1M2IwNzIyMWUzYThjOGVmMWE4M2YxYTk0MTI0NjJmZDIzNTQyNjVlMmViY2E0MTRiNWEyOSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 1, '2021-07-31', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_users_old`
--

CREATE TABLE `wp98_users_old` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_users_old`
--

INSERT INTO `wp98_users_old` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shapinetadmin', '$P$B992jwyhEJzww0CCIg4l57J0j.pdf60', 'shapinetadmin', 'admin@shapinetwork.com', '', '2020-03-26 20:05:35', '', 0, 'shapinetadmin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_admin_notes`
--

CREATE TABLE `wp98_wc_admin_notes` (
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  `content_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_admin_notes`
--

INSERT INTO `wp98_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`) VALUES
(12, 'wc-admin-learn-more-about-product-settings', 'info', 'en_US', 'Aprender más acerca de los ajustes de producto', 'En este video encontrarás información sobre cómo configurar los ajustes del producto, cómo se muestran, editar las opciones de inventario, etc.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(11, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Da tu opinión', 'Ahora que nos has elegido como socio, nuestro objetivo es asegurarnos de que proporcionemos las herramientas adecuadas para satisfacer tus necesidades. Esperamos recibir tus comentarios sobre la experiencia de configuración de la tienda para que podamos mejorarla en el futuro.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(3, 'wc-admin-add-first-product', 'info', 'en_US', 'Añade tu primer producto', 'Aumenta tus ingresos añadiendo productos a tu tienda. Añade productos manualmente, importa desde una hoja o migra desde otra plataforma.', 'product', '{}', 'unactioned', 'woocommerce-admin', '2020-03-26 20:35:36', NULL, 0, '', NULL, 0),
(4, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Conectar con WooCommerce.com', 'Conéctate para recibir avisos y actualizaciones importantes de productos.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-03-26 20:35:36', NULL, 0, '', NULL, 0),
(5, 'wc-admin-orders-milestone', 'info', 'en_US', 'Primer pedido', '¡Enhorabuena por conseguir tu primer pedido de un cliente! Aprende cómo gestionar tus pedidos.', 'trophy', '{}', 'unactioned', 'woocommerce-admin', '2020-03-26 23:36:59', NULL, 0, '', NULL, 0),
(6, 'wc-admin-mobile-app', 'info', 'en_US', 'Instala la aplicación móvil Sinergia Market', 'Instala la aplicación móvil de Sinergia Market para gestionar pedidos, recibir avisos de ventas y ver métricas clave – allí donde estés.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2020-03-28 23:13:13', NULL, 0, '', NULL, 0),
(10, 'wc-admin-marketing-intro', 'info', 'en_US', 'Conecta con tu audiencia', 'Aumenta tu base de clientes e incrementa tus ventas con las herramientas de marketing creadas para Sinergia Market.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(9, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Trucos, actualizaciones de productos e inspiración', 'Estamos aquí para ti - consigue trucos, actualizaciones de productos e inspiración en tu buzón', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0),
(13, 'wc-admin-real-time-order-alerts', 'info', 'en_US', 'Recibe alertas de pedidos en tiempo real en cualquier lugar', 'Recibe avisos sobre la actividad de la tienda, incluidos nuevos pedidos y reseñas de productos directamente en tus dispositivos móviles con la aplicación Woo.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-23 21:35:35', NULL, 0, 'plain', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_admin_note_actions`
--

CREATE TABLE `wp98_wc_admin_note_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_admin_note_actions`
--

INSERT INTO `wp98_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(12, 11, 'share-feedback', 'Compartir comentarios', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0),
(3, 3, 'add-a-product', 'Añadir un producto', 'https://shapinetwork.com/wp-admin/post-new.php?post_type=product', 'actioned', 1),
(4, 4, 'connect', 'Conectar', '?page=wc-addons&section=helper', 'actioned', 0),
(5, 5, 'learn-more', 'Aprende más', 'https://docs.woocommerce.com/document/managing-orders/', 'actioned', 0),
(6, 6, 'learn-more', 'Aprende más', 'https://woocommerce.com/mobile/', 'actioned', 0),
(11, 10, 'open-marketing-hub', 'Abrir centro de marketing', 'https://shapinetwork.com/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0),
(10, 9, 'yes-please', '¡Sí, por favor!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0),
(13, 12, 'learn-more-about-product-settings', 'Ver el tutorial', 'https://www.youtube.com/watch?v=FEmwJsE8xDY&t=', 'actioned', 1),
(14, 13, 'learn-more', 'Aprende más', 'https://woocommerce.com/mobile/?utm_source=inbox', 'actioned', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_category_lookup`
--

CREATE TABLE `wp98_wc_category_lookup` (
  `category_tree_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_category_lookup`
--

INSERT INTO `wp98_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15),
(18, 18),
(19, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_customer_lookup`
--

CREATE TABLE `wp98_wc_customer_lookup` (
  `customer_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_customer_lookup`
--

INSERT INTO `wp98_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 3, 'albertop', 'Alberto', 'Picon', 'cliente2@sinergiared.com', '2020-06-15 05:00:00', '2020-04-20 15:07:02', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_download_log`
--

CREATE TABLE `wp98_wc_download_log` (
  `download_log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_coupon_lookup`
--

CREATE TABLE `wp98_wc_order_coupon_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_product_lookup`
--

CREATE TABLE `wp98_wc_order_product_lookup` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `variation_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_stats`
--

CREATE TABLE `wp98_wc_order_stats` (
  `order_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_tax_lookup`
--

CREATE TABLE `wp98_wc_order_tax_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_product_meta_lookup`
--

CREATE TABLE `wp98_wc_product_meta_lookup` (
  `product_id` bigint NOT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint DEFAULT '0',
  `tax_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_product_meta_lookup`
--

INSERT INTO `wp98_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(12, '', 0, 0, 340.0000, 340.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(28, '', 0, 0, 600.0000, 600.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(29, '', 0, 0, 280.0000, 280.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_reserved_stock`
--

CREATE TABLE `wp98_wc_reserved_stock` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_tax_rate_classes`
--

CREATE TABLE `wp98_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_wc_tax_rate_classes`
--

INSERT INTO `wp98_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Tasa reducida', 'tasa-reducida'),
(2, 'Tasa cero', 'tasa-cero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_webhooks`
--

CREATE TABLE `wp98_wc_webhooks` (
  `webhook_id` bigint UNSIGNED NOT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `delivery_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint NOT NULL,
  `failure_count` smallint NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_api_keys`
--

CREATE TABLE `wp98_woocommerce_api_keys` (
  `key_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp98_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint UNSIGNED NOT NULL,
  `attribute_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp98_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `download_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_log`
--

CREATE TABLE `wp98_woocommerce_log` (
  `log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_order_itemmeta`
--

CREATE TABLE `wp98_woocommerce_order_itemmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_woocommerce_order_itemmeta`
--

INSERT INTO `wp98_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '12'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '340'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '340'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_order_items`
--

CREATE TABLE `wp98_woocommerce_order_items` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_item_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_woocommerce_order_items`
--

INSERT INTO `wp98_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Franquisia Empresario', 'line_item', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp98_woocommerce_payment_tokenmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `payment_token_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_payment_tokens`
--

CREATE TABLE `wp98_woocommerce_payment_tokens` (
  `token_id` bigint UNSIGNED NOT NULL,
  `gateway_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_sessions`
--

CREATE TABLE `wp98_woocommerce_sessions` (
  `session_id` bigint UNSIGNED NOT NULL,
  `session_key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zones`
--

CREATE TABLE `wp98_woocommerce_shipping_zones` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `zone_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp98_woocommerce_shipping_zone_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp98_woocommerce_shipping_zone_methods` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `instance_id` bigint UNSIGNED NOT NULL,
  `method_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_tax_rates`
--

CREATE TABLE `wp98_woocommerce_tax_rates` (
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint UNSIGNED NOT NULL,
  `tax_rate_compound` int NOT NULL DEFAULT '0',
  `tax_rate_shipping` int NOT NULL DEFAULT '1',
  `tax_rate_order` bigint UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp98_woocommerce_tax_rate_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addres_ip`
--
ALTER TABLE `addres_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administradorgastos`
--
ALTER TABLE `administradorgastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administradorlista`
--
ALTER TABLE `administradorlista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `avatares`
--
ALTER TABLE `avatares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `awards_users`
--
ALTER TABLE `awards_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `binario`
--
ALTER TABLE `binario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bonoinicio`
--
ALTER TABLE `bonoinicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendarios`
--
ALTER TABLE `calendarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canjes`
--
ALTER TABLE `canjes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `capital`
--
ALTER TABLE `capital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_codigo`
--
ALTER TABLE `chat_codigo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coinpayment_transactions_txn_id_unique` (`txn_id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentarios_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comment_responses`
--
ALTER TABLE `comment_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentenoticias`
--
ALTER TABLE `componentenoticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentestransf`
--
ALTER TABLE `componentestransf`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentestransferencias`
--
ALTER TABLE `componentestransferencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compradirectas`
--
ALTER TABLE `compradirectas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consultacrypto`
--
ALTER TABLE `consultacrypto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `costo`
--
ALTER TABLE `costo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_orden`
--
ALTER TABLE `courses_orden`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_tags`
--
ALTER TABLE `courses_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_users`
--
ALTER TABLE `courses_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations_users`
--
ALTER TABLE `evaluations_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations_users_answers`
--
ALTER TABLE `evaluations_users_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events_users`
--
ALTER TABLE `events_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_content`
--
ALTER TABLE `event_content`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_countries`
--
ALTER TABLE `event_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_resources`
--
ALTER TABLE `event_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label` (`label`,`nameinput`);

--
-- Indices de la tabla `ganancias`
--
ALTER TABLE `ganancias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informacionbancaria`
--
ALTER TABLE `informacionbancaria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insignia`
--
ALTER TABLE `insignia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insignia_user`
--
ALTER TABLE `insignia_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legal_clauses`
--
ALTER TABLE `legal_clauses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legal_tabs`
--
ALTER TABLE `legal_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lessons_users`
--
ALTER TABLE `lessons_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `linkpagos`
--
ALTER TABLE `linkpagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulocomplementario`
--
ALTER TABLE `modulocomplementario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedadicional`
--
ALTER TABLE `monedadicional`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificacion_tickets`
--
ALTER TABLE `notificacion_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers_live`
--
ALTER TABLE `offers_live`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers_users`
--
ALTER TABLE `offers_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones_select`
--
ALTER TABLE `opciones_select`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `optioncarritos`
--
ALTER TABLE `optioncarritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagocarritos`
--
ALTER TABLE `pagocarritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pop`
--
ALTER TABLE `pop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prospeccion`
--
ALTER TABLE `prospeccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntosbonos`
--
ALTER TABLE `puntosbonos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pushs`
--
ALTER TABLE `pushs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `semiautobinario`
--
ALTER TABLE `semiautobinario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesions`
--
ALTER TABLE `sesions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sesions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `settingactivacion`
--
ALTER TABLE `settingactivacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingcliente`
--
ALTER TABLE `settingcliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingcomision`
--
ALTER TABLE `settingcomision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingpagos`
--
ALTER TABLE `settingpagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingpermiso`
--
ALTER TABLE `settingpermiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingplantilla`
--
ALTER TABLE `settingplantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingsestructura`
--
ALTER TABLE `settingsestructura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingspuntos`
--
ALTER TABLE `settingspuntos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `setttingsroles`
--
ALTER TABLE `setttingsroles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `support_material`
--
ALTER TABLE `support_material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_options`
--
ALTER TABLE `survey_options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_options_response`
--
ALTER TABLE `survey_options_response`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `upgrade_messages`
--
ALTER TABLE `upgrade_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_campo`
--
ALTER TABLE `user_campo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `walletlog`
--
ALTER TABLE `walletlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_actionscheduler_actions`
--
ALTER TABLE `wp98_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indices de la tabla `wp98_actionscheduler_claims`
--
ALTER TABLE `wp98_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp98_actionscheduler_groups`
--
ALTER TABLE `wp98_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp98_actionscheduler_logs`
--
ALTER TABLE `wp98_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp98_commentmeta`
--
ALTER TABLE `wp98_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_comments`
--
ALTER TABLE `wp98_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indices de la tabla `wp98_links`
--
ALTER TABLE `wp98_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp98_ms_snippets`
--
ALTER TABLE `wp98_ms_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_options`
--
ALTER TABLE `wp98_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp98_postmeta`
--
ALTER TABLE `wp98_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_posts`
--
ALTER TABLE `wp98_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp98_snippets`
--
ALTER TABLE `wp98_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_termmeta`
--
ALTER TABLE `wp98_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_terms`
--
ALTER TABLE `wp98_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp98_term_relationships`
--
ALTER TABLE `wp98_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp98_term_taxonomy`
--
ALTER TABLE `wp98_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp98_usermeta`
--
ALTER TABLE `wp98_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_users`
--
ALTER TABLE `wp98_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp98_users_old`
--
ALTER TABLE `wp98_users_old`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp98_wc_admin_notes`
--
ALTER TABLE `wp98_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `wp98_wc_admin_note_actions`
--
ALTER TABLE `wp98_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indices de la tabla `wp98_wc_category_lookup`
--
ALTER TABLE `wp98_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indices de la tabla `wp98_wc_customer_lookup`
--
ALTER TABLE `wp98_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `wp98_wc_download_log`
--
ALTER TABLE `wp98_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp98_wc_order_coupon_lookup`
--
ALTER TABLE `wp98_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_order_product_lookup`
--
ALTER TABLE `wp98_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_order_stats`
--
ALTER TABLE `wp98_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indices de la tabla `wp98_wc_order_tax_lookup`
--
ALTER TABLE `wp98_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_product_meta_lookup`
--
ALTER TABLE `wp98_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indices de la tabla `wp98_wc_reserved_stock`
--
ALTER TABLE `wp98_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indices de la tabla `wp98_wc_tax_rate_classes`
--
ALTER TABLE `wp98_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp98_wc_webhooks`
--
ALTER TABLE `wp98_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp98_woocommerce_api_keys`
--
ALTER TABLE `wp98_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp98_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp98_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp98_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp98_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indices de la tabla `wp98_woocommerce_log`
--
ALTER TABLE `wp98_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp98_woocommerce_order_itemmeta`
--
ALTER TABLE `wp98_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp98_woocommerce_order_items`
--
ALTER TABLE `wp98_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp98_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp98_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp98_woocommerce_payment_tokens`
--
ALTER TABLE `wp98_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp98_woocommerce_sessions`
--
ALTER TABLE `wp98_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `wp98_woocommerce_shipping_zones`
--
ALTER TABLE `wp98_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp98_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp98_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp98_woocommerce_tax_rates`
--
ALTER TABLE `wp98_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp98_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp98_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addres_ip`
--
ALTER TABLE `addres_ip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `administradorgastos`
--
ALTER TABLE `administradorgastos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administradorlista`
--
ALTER TABLE `administradorlista`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `avatares`
--
ALTER TABLE `avatares`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `awards_users`
--
ALTER TABLE `awards_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `binario`
--
ALTER TABLE `binario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bonoinicio`
--
ALTER TABLE `bonoinicio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `calendarios`
--
ALTER TABLE `calendarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `canjes`
--
ALTER TABLE `canjes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capital`
--
ALTER TABLE `capital`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat_codigo`
--
ALTER TABLE `chat_codigo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `comment_responses`
--
ALTER TABLE `comment_responses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `component`
--
ALTER TABLE `component`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `componentenoticias`
--
ALTER TABLE `componentenoticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentestransf`
--
ALTER TABLE `componentestransf`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentestransferencias`
--
ALTER TABLE `componentestransferencias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compradirectas`
--
ALTER TABLE `compradirectas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultacrypto`
--
ALTER TABLE `consultacrypto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `costo`
--
ALTER TABLE `costo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `courses_orden`
--
ALTER TABLE `courses_orden`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de la tabla `courses_tags`
--
ALTER TABLE `courses_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `courses_users`
--
ALTER TABLE `courses_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `evaluations_users`
--
ALTER TABLE `evaluations_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `evaluations_users_answers`
--
ALTER TABLE `evaluations_users_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `events_users`
--
ALTER TABLE `events_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `event_content`
--
ALTER TABLE `event_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `event_countries`
--
ALTER TABLE `event_countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `event_resources`
--
ALTER TABLE `event_resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ganancias`
--
ALTER TABLE `ganancias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informacionbancaria`
--
ALTER TABLE `informacionbancaria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insignia`
--
ALTER TABLE `insignia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `insignia_user`
--
ALTER TABLE `insignia_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `legal_clauses`
--
ALTER TABLE `legal_clauses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `legal_tabs`
--
ALTER TABLE `legal_tabs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `lessons_users`
--
ALTER TABLE `lessons_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT de la tabla `linkpagos`
--
ALTER TABLE `linkpagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulocomplementario`
--
ALTER TABLE `modulocomplementario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monedadicional`
--
ALTER TABLE `monedadicional`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `notificacion_tickets`
--
ALTER TABLE `notificacion_tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `offers_live`
--
ALTER TABLE `offers_live`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `offers_users`
--
ALTER TABLE `offers_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `opciones_select`
--
ALTER TABLE `opciones_select`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `optioncarritos`
--
ALTER TABLE `optioncarritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagocarritos`
--
ALTER TABLE `pagocarritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `pop`
--
ALTER TABLE `pop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prospeccion`
--
ALTER TABLE `prospeccion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntos`
--
ALTER TABLE `puntos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntosbonos`
--
ALTER TABLE `puntosbonos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `pushs`
--
ALTER TABLE `pushs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `qr`
--
ALTER TABLE `qr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `semiautobinario`
--
ALTER TABLE `semiautobinario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sesions`
--
ALTER TABLE `sesions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `settingactivacion`
--
ALTER TABLE `settingactivacion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingcliente`
--
ALTER TABLE `settingcliente`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingcomision`
--
ALTER TABLE `settingcomision`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingpagos`
--
ALTER TABLE `settingpagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `settingpermiso`
--
ALTER TABLE `settingpermiso`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10138;

--
-- AUTO_INCREMENT de la tabla `settingplantilla`
--
ALTER TABLE `settingplantilla`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingsestructura`
--
ALTER TABLE `settingsestructura`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingspuntos`
--
ALTER TABLE `settingspuntos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `setttingsroles`
--
ALTER TABLE `setttingsroles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `support_material`
--
ALTER TABLE `support_material`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `survey_options`
--
ALTER TABLE `survey_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `survey_options_response`
--
ALTER TABLE `survey_options_response`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `upgrade_messages`
--
ALTER TABLE `upgrade_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `walletlog`
--
ALTER TABLE `walletlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_actions`
--
ALTER TABLE `wp98_actionscheduler_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_claims`
--
ALTER TABLE `wp98_actionscheduler_claims`
  MODIFY `claim_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18442;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_groups`
--
ALTER TABLE `wp98_actionscheduler_groups`
  MODIFY `group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_logs`
--
ALTER TABLE `wp98_actionscheduler_logs`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `wp98_commentmeta`
--
ALTER TABLE `wp98_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp98_comments`
--
ALTER TABLE `wp98_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_links`
--
ALTER TABLE `wp98_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_ms_snippets`
--
ALTER TABLE `wp98_ms_snippets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_options`
--
ALTER TABLE `wp98_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23091;

--
-- AUTO_INCREMENT de la tabla `wp98_postmeta`
--
ALTER TABLE `wp98_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `wp98_posts`
--
ALTER TABLE `wp98_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `wp98_snippets`
--
ALTER TABLE `wp98_snippets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `wp98_termmeta`
--
ALTER TABLE `wp98_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp98_terms`
--
ALTER TABLE `wp98_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `wp98_term_taxonomy`
--
ALTER TABLE `wp98_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `wp98_usermeta`
--
ALTER TABLE `wp98_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1541;

--
-- AUTO_INCREMENT de la tabla `wp98_users`
--
ALTER TABLE `wp98_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10153;

--
-- AUTO_INCREMENT de la tabla `wp98_users_old`
--
ALTER TABLE `wp98_users_old`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_admin_notes`
--
ALTER TABLE `wp98_wc_admin_notes`
  MODIFY `note_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_admin_note_actions`
--
ALTER TABLE `wp98_wc_admin_note_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_customer_lookup`
--
ALTER TABLE `wp98_wc_customer_lookup`
  MODIFY `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_download_log`
--
ALTER TABLE `wp98_wc_download_log`
  MODIFY `download_log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_tax_rate_classes`
--
ALTER TABLE `wp98_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_webhooks`
--
ALTER TABLE `wp98_wc_webhooks`
  MODIFY `webhook_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_api_keys`
--
ALTER TABLE `wp98_woocommerce_api_keys`
  MODIFY `key_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp98_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp98_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_log`
--
ALTER TABLE `wp98_woocommerce_log`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_order_itemmeta`
--
ALTER TABLE `wp98_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_order_items`
--
ALTER TABLE `wp98_woocommerce_order_items`
  MODIFY `order_item_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp98_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_payment_tokens`
--
ALTER TABLE `wp98_woocommerce_payment_tokens`
  MODIFY `token_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_sessions`
--
ALTER TABLE `wp98_woocommerce_sessions`
  MODIFY `session_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zones`
--
ALTER TABLE `wp98_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_tax_rates`
--
ALTER TABLE `wp98_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp98_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
