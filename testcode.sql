-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2022 a las 01:20:51
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testcode`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `bday` datetime NOT NULL,
  `phone` bigint(20) UNSIGNED DEFAULT NULL,
  `ctype` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`id`, `name`, `bday`, `phone`, `ctype`, `created_at`, `updated_at`) VALUES
(1061, 'Juan', '0000-00-00 00:00:00', 8585858, 'Contact Type 1', '1996-09-30 16:41:27', '2022-01-16 10:46:55'),
(1062, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1988-09-13 05:33:15', '2021-12-30 04:50:53'),
(1063, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1973-07-05 15:35:52', '2021-12-30 04:50:53'),
(1065, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1981-01-10 01:32:31', '2021-12-30 04:50:53'),
(1066, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-22 01:06:16', '2021-12-30 04:50:53'),
(1067, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-22 01:09:29', '2021-12-30 04:50:53'),
(1068, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-22 01:15:26', '2021-12-30 04:50:53'),
(1069, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-22 01:15:40', '2021-12-30 04:50:53'),
(1071, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-23 13:15:09', '2021-12-30 04:50:53'),
(1072, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-26 23:07:46', '2021-12-30 04:50:53'),
(1073, 'BELEN', '0000-00-00 00:00:00', 5555, '', '2021-12-26 23:08:14', '2021-12-30 06:21:47'),
(1074, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-28 01:32:51', '2021-12-30 04:50:53'),
(1075, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-28 01:34:01', '2021-12-30 04:50:53'),
(1076, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2013-05-17 06:40:55', '2021-12-30 04:50:53'),
(1077, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2001-12-23 18:01:11', '2021-12-30 04:50:53'),
(1078, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2013-02-01 06:15:19', '2021-12-30 04:50:53'),
(1079, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1982-02-02 06:36:23', '2021-12-30 04:50:53'),
(1080, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2014-10-31 18:18:12', '2021-12-30 04:50:53'),
(1081, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2019-09-12 11:57:07', '2021-12-30 04:50:53'),
(1082, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1972-09-11 19:13:50', '2021-12-30 04:50:53'),
(1083, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1988-07-30 11:45:52', '2021-12-30 04:50:53'),
(1084, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1978-01-04 10:17:31', '2021-12-30 04:50:53'),
(1085, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1980-02-29 15:34:23', '2021-12-30 04:50:53'),
(1086, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1983-10-25 09:17:22', '2021-12-30 04:50:53'),
(1087, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2001-06-23 09:23:59', '2021-12-30 04:50:53'),
(1088, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1979-09-10 01:50:24', '2021-12-30 04:50:53'),
(1089, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2013-07-23 11:34:27', '2021-12-30 04:50:53'),
(1090, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2003-03-03 13:53:57', '2021-12-30 04:50:53'),
(1091, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2013-01-28 06:38:13', '2021-12-30 04:50:53'),
(1092, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2020-04-01 17:57:34', '2021-12-30 04:50:53'),
(1093, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1978-04-09 11:33:10', '2021-12-30 04:50:53'),
(1094, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2014-03-17 08:17:12', '2021-12-30 04:50:53'),
(1095, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1973-11-16 04:48:00', '2021-12-30 04:50:53'),
(1096, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1984-06-01 17:55:59', '2021-12-30 04:50:53'),
(1097, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1984-02-26 01:34:42', '2021-12-30 04:50:53'),
(1098, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1982-09-30 17:33:28', '2021-12-30 04:50:53'),
(1099, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1995-01-31 12:51:16', '2021-12-30 04:50:53'),
(1100, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1977-05-23 15:26:41', '2021-12-30 04:50:53'),
(1101, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1990-01-03 10:43:51', '2021-12-30 04:50:53'),
(1102, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2017-09-06 02:58:57', '2021-12-30 04:50:53'),
(1103, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1990-03-03 08:33:45', '2021-12-30 04:50:53'),
(1104, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1999-05-23 05:09:40', '2021-12-30 04:50:53'),
(1105, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2017-09-05 22:19:21', '2021-12-30 04:50:53'),
(1106, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2004-09-09 11:14:49', '2021-12-30 04:50:53'),
(1107, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2018-09-01 23:00:04', '2021-12-30 04:50:53'),
(1108, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2017-02-01 04:12:50', '2021-12-30 04:50:53'),
(1109, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2011-08-09 11:44:52', '2021-12-30 04:50:53'),
(1110, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2000-04-24 00:59:52', '2021-12-30 04:50:53'),
(1111, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1983-08-31 09:34:54', '2021-12-30 04:50:53'),
(1112, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1977-05-19 01:49:14', '2021-12-30 04:50:53'),
(1113, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2014-01-29 04:14:06', '2021-12-30 04:50:53'),
(1114, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1981-07-07 12:25:01', '2021-12-30 04:50:53'),
(1115, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1995-09-17 14:29:56', '2021-12-30 04:50:53'),
(1116, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1991-02-02 14:53:20', '2021-12-30 04:50:53'),
(1117, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1978-03-10 10:15:44', '2021-12-30 04:50:53'),
(1118, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2014-09-07 18:46:14', '2021-12-30 04:50:53'),
(1119, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '1971-05-02 13:24:49', '2021-12-30 04:50:53'),
(1120, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2011-12-09 04:48:43', '2021-12-30 04:50:53'),
(1121, 'Martina Schaden DVM', '0000-00-00 00:00:00', 5555, '', '2021-12-30 04:06:49', '2021-12-30 04:50:53'),
(1122, 'Juan -rudy', '2002-01-23 00:00:00', 152753779, 'Contact Type 2', '2022-01-16 10:56:50', '2022-01-16 10:56:50'),
(1123, 'Juan rudy', '2002-01-09 00:00:00', 5555555, 'Contact Type 4', '2022-01-16 10:57:37', '2022-01-16 10:57:37'),
(1124, 'Belen', '2002-01-21 00:00:00', 55555555, 'Contact Type 2', '2022-01-16 11:03:46', '2022-01-16 11:03:46'),
(1125, 'Belen', '2002-01-15 00:00:00', 55555, 'Contact Type 2', '2022-01-16 11:10:18', '2022-01-16 11:10:18'),
(1126, 'Belen', '2002-01-09 00:00:00', 888888, 'Contact Type 3', '2022-01-16 11:14:21', '2022-01-16 11:14:21'),
(1127, 'Juan', '2002-01-30 00:00:00', 55555, 'Contact Type 2', '2022-01-16 11:40:02', '2022-01-16 11:49:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_factories`
--

CREATE TABLE `db_factories` (
  `id` int(9) NOT NULL,
  `name` varchar(31) NOT NULL,
  `uid` varchar(31) NOT NULL,
  `class` varchar(63) NOT NULL,
  `icon` varchar(31) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_migrations`
--

CREATE TABLE `db_migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `db_migrations`
--

INSERT INTO `db_migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(27, '2020-02-22-222222', 'Tests\\Support\\Database\\Migrations\\ExampleMigration', 'tests', 'Tests\\Support', 1640852734, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(15, '2021-12-09-153201', 'App\\Database\\Migrations\\Ctype', 'default', 'App', 1639081848, 1),
(16, '2021-12-09-153207', 'App\\Database\\Migrations\\Contact', 'default', 'App', 1639081848, 1),
(17, '2021-12-09-190300', 'App\\Database\\Migrations\\Reservtype', 'default', 'App', 1639081848, 1),
(18, '2021-12-09-190308', 'App\\Database\\Migrations\\Reservation', 'default', 'App', 1639081848, 1),
(19, '2021-12-30-090556', 'App\\Database\\Migrations\\Reservation', 'default', 'App', 1640855423, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation`
--

CREATE TABLE `reservation` (
  `id_r` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `rtype` varchar(30) NOT NULL,
  `rdate` datetime NOT NULL,
  `phone` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservation`
--

INSERT INTO `reservation` (`id_r`, `name`, `rtype`, `rdate`, `phone`, `description`, `created_at`) VALUES
(5, 'Mrs. Annamae Howell', '', '2021-12-16 00:00:00', 1, 'Accusantium quam sed sit corrupti. Natus in et qui soluta. Qui quisquam quaerat et saepe.', '1993-11-26 06:38:48'),
(6, 'Elyssa Reichel', '', '2021-12-10 00:00:00', 1423, NULL, '1986-04-11 02:07:44'),
(7, 'Dana Emmerich III', '', '2021-12-08 00:00:00', 0, 'Sunt voluptas ut voluptatem inventore facere cum et omnis. Aut quia blanditiis nulla nobis nesciunt eum ut. Rerum delectus accusantium est est.', '1984-01-17 16:49:47'),
(8, 'Adele Gutmann', '', '2021-12-28 00:00:00', 1, 'Corrupti beatae vel aut vitae. Vel laudantium et molestias sit fugit. Ut ipsa ea vitae labore. Omnis ut qui hic officia non expedita totam.', '2002-06-11 11:59:00'),
(9, 'Marion Farrell', '', '2021-12-23 00:00:00', 1, 'Et exercitationem quaerat blanditiis. Asperiores in consequuntur non occaecati est debitis dolores voluptatem. Voluptatibus natus quod tempora.', '2001-11-16 02:49:35'),
(10, 'Miss Nova Mosciski', '', '2021-12-18 00:00:00', 785817, 'Eaque veniam nam explicabo nihil quia. Ut enim provident sequi. Vel aut corrupti qui est cupiditate veniam. Est aut mollitia repellat exercitationem.', '1998-01-02 17:41:23'),
(11, 'Dakota Reynolds', '', '2021-12-23 00:00:00', 0, 'Est quo inventore et perspiciatis. Eum tempora atque consequatur. Consectetur molestias sed ipsam dolores iste.', '1985-12-25 12:47:14'),
(12, 'Hazle Block', '', '2021-12-03 00:00:00', 1, 'Quis impedit nihil laboriosam occaecati possimus sequi quos. Consequatur qui non fugit totam. Omnis id aspernatur sed deleniti eum omnis.', '2016-05-13 08:07:50'),
(13, 'Kirsten Langworth', '', '2021-12-29 00:00:00', 17075615296, 'Itaque molestias voluptas ut. Quis ut corporis temporibus aut saepe. Sunt laborum beatae vel eius et.', '1986-09-10 07:08:17'),
(14, 'Rick Johns', '', '2021-12-13 00:00:00', 1, 'Tempora aut dolores nihil est doloribus dolorem. Quia distinctio et autem quo ut. Facilis voluptates quis deleniti placeat necessitatibus.', '1982-07-12 16:14:06'),
(15, 'Geovany Osinski', '', '2021-12-24 00:00:00', 13648981677, 'Nihil assumenda et nihil ut ipsa iure. Sequi recusandae consequatur qui aut aut aperiam. Omnis laudantium vel quis velit odit.', '2010-05-10 19:31:53'),
(16, 'def', '0', '2021-12-31 00:00:00', 0, 'fd\n', '0000-00-00 00:00:00'),
(17, 'jiuhygtf', 'Reservation Type 2', '2021-12-31 00:00:00', 0, 'hygtfrds\n', '0000-00-00 00:00:00'),
(18, 'Belen', 'Reservation Type 2', '2021-12-31 00:00:00', 46656, 'ssdc\n', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `db_factories`
--
ALTER TABLE `db_factories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `uid` (`uid`),
  ADD KEY `deleted_at_id` (`deleted_at`,`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indices de la tabla `db_migrations`
--
ALTER TABLE `db_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_r`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1128;

--
-- AUTO_INCREMENT de la tabla `db_factories`
--
ALTER TABLE `db_factories`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_migrations`
--
ALTER TABLE `db_migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_r` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
