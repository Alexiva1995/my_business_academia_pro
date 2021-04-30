-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-04-2021 a las 16:56:45
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
-- Base de datos: `mbapro_streaming`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'option', 'created', 1, 'Option', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(2, 'option', 'updated', 1, 'Option', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(3, 'option', 'created', 2, 'Option', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(4, 'option', 'updated', 2, 'Option', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(5, 'page', 'created', 1, 'App\\Models\\Site\\Page', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(6, 'page', 'updated', 1, 'App\\Models\\Site\\Page', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(7, 'page', 'created', 2, 'App\\Models\\Site\\Page', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(8, 'page', 'updated', 2, 'App\\Models\\Site\\Page', NULL, NULL, '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(9, 'meeting', 'created', 1, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:30:06', '2020-10-17 11:30:06'),
(10, 'meeting', 'updated', 1, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:30:06', '2020-10-17 11:30:06'),
(11, 'meeting', 'updated', 1, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:30:06', '2020-10-17 11:30:06'),
(12, 'meeting', 'created', 2, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:33:28', '2020-10-17 11:33:28'),
(13, 'meeting', 'updated', 2, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:33:28', '2020-10-17 11:33:28'),
(14, 'meeting', 'updated', 2, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:33:28', '2020-10-17 11:33:28'),
(15, 'meeting', 'updated', 2, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:33:29', '2020-10-17 11:33:29'),
(16, 'meeting', 'updated', 2, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:33:35', '2020-10-17 11:33:35'),
(17, 'meeting', 'updated', 2, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:34:14', '2020-10-17 11:34:14'),
(18, 'meeting', 'created', 3, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:34:36', '2020-10-17 11:34:36'),
(19, 'meeting', 'updated', 3, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:34:36', '2020-10-17 11:34:36'),
(20, 'meeting', 'updated', 3, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:34:36', '2020-10-17 11:34:36'),
(21, 'meeting', 'updated', 3, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:34:36', '2020-10-17 11:34:36'),
(22, 'meeting', 'updated', 3, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:34:40', '2020-10-17 11:34:40'),
(23, 'meeting', 'created', 4, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:23', '2020-10-17 11:36:23'),
(24, 'meeting', 'updated', 4, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:23', '2020-10-17 11:36:23'),
(25, 'meeting', 'updated', 4, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:23', '2020-10-17 11:36:23'),
(26, 'meeting', 'updated', 4, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:23', '2020-10-17 11:36:23'),
(27, 'meeting', 'updated', 4, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:25', '2020-10-17 11:36:25'),
(28, 'meeting', 'updated', 4, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:31', '2020-10-17 11:36:31'),
(29, 'meeting', 'updated', 4, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:35', '2020-10-17 11:36:35'),
(30, 'meeting', 'created', 5, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:46', '2020-10-17 11:36:46'),
(31, 'meeting', 'updated', 5, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:46', '2020-10-17 11:36:46'),
(32, 'meeting', 'updated', 5, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:46', '2020-10-17 11:36:46'),
(33, 'meeting', 'updated', 5, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:36:46', '2020-10-17 11:36:46'),
(34, 'meeting', 'updated', 5, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1\"}', '2020-10-17 11:36:48', '2020-10-17 11:36:48'),
(35, 'meeting', 'created', 6, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:37:30', '2020-10-17 11:37:30'),
(36, 'meeting', 'updated', 6, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:37:30', '2020-10-17 11:37:30'),
(37, 'meeting', 'updated', 6, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:37:30', '2020-10-17 11:37:30'),
(38, 'meeting', 'updated', 6, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:37:30', '2020-10-17 11:37:30'),
(39, 'meeting', 'updated', 6, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:37:34', '2020-10-17 11:37:34'),
(40, 'meeting', 'updated', 6, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:40:08', '2020-10-17 11:40:08'),
(41, 'meeting', 'updated', 6, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.168\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-17 11:48:42', '2020-10-17 11:48:42'),
(42, 'contact', 'created', 1, 'App\\Models\\Contact', 2, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:49:24', '2020-10-17 11:49:24'),
(43, 'meeting', 'created', 1, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:49:24', '2020-10-17 11:49:24'),
(44, 'contact', 'created', 2, 'App\\Models\\Contact', 2, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:49:24', '2020-10-17 11:49:24'),
(45, 'meeting', 'created', 2, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:49:24', '2020-10-17 11:49:24'),
(46, 'meeting', 'updated', 1, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.77.236.187\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-17 11:49:25', '2020-10-17 11:49:25'),
(47, 'option', 'created', 3, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:26:12', '2020-10-17 13:26:12'),
(48, 'option', 'created', 4, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:27:00', '2020-10-17 13:27:00'),
(49, 'option', 'created', 5, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:27:23', '2020-10-17 13:27:23'),
(50, 'option', 'created', 6, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:27:46', '2020-10-17 13:27:46'),
(51, 'option', 'created', 7, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:28:10', '2020-10-17 13:28:10'),
(52, 'option', 'created', 8, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:28:38', '2020-10-17 13:28:38'),
(53, 'option', 'created', 9, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:28:52', '2020-10-17 13:28:52'),
(54, 'option', 'created', 10, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:29:06', '2020-10-17 13:29:06'),
(55, 'option', 'created', 11, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:29:23', '2020-10-17 13:29:23'),
(56, 'option', 'created', 12, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-17 13:29:37', '2020-10-17 13:29:37'),
(57, 'meeting', 'created', 7, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-19 07:14:47', '2020-10-19 07:14:47'),
(58, 'meeting', 'updated', 7, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-19 07:14:47', '2020-10-19 07:14:47'),
(59, 'meeting', 'updated', 7, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-19 07:14:47', '2020-10-19 07:14:47'),
(60, 'meeting', 'updated', 7, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-19 07:14:48', '2020-10-19 07:14:48'),
(61, 'meeting', 'updated', 7, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-19 07:14:51', '2020-10-19 07:14:51'),
(62, 'meeting', 'updated', 7, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-19 07:15:33', '2020-10-19 07:15:33'),
(63, 'meeting', 'updated', 7, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"157.34.14.90\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-19 07:45:00', '2020-10-19 07:45:00'),
(64, 'meeting', 'created', 8, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 10:32:05', '2020-10-19 10:32:05'),
(65, 'meeting', 'updated', 8, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 10:32:05', '2020-10-19 10:32:05'),
(66, 'meeting', 'updated', 8, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 10:32:05', '2020-10-19 10:32:05'),
(67, 'meeting', 'updated', 8, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 10:32:05', '2020-10-19 10:32:05'),
(68, 'meeting', 'updated', 8, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 10:32:11', '2020-10-19 10:32:11'),
(69, 'meeting', 'created', 3, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"186.167.242.242\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 10:38:24', '2020-10-19 10:38:24'),
(70, 'meeting', 'updated', 3, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"186.167.242.242\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 10:38:27', '2020-10-19 10:38:27'),
(71, 'contact', 'created', 3, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:02', '2020-10-19 11:28:02'),
(72, 'meeting', 'created', 9, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:14', '2020-10-19 11:28:14'),
(73, 'meeting', 'updated', 9, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:14', '2020-10-19 11:28:14'),
(74, 'meeting', 'updated', 9, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:14', '2020-10-19 11:28:14'),
(75, 'meeting', 'updated', 9, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:14', '2020-10-19 11:28:14'),
(76, 'meeting', 'updated', 9, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:18', '2020-10-19 11:28:18'),
(77, 'meeting', 'created', 10, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:37', '2020-10-19 11:28:37'),
(78, 'meeting', 'updated', 10, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:37', '2020-10-19 11:28:37'),
(79, 'meeting', 'updated', 10, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:37', '2020-10-19 11:28:37'),
(80, 'meeting', 'updated', 10, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:38', '2020-10-19 11:28:38'),
(81, 'meeting', 'updated', 10, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:28:40', '2020-10-19 11:28:40'),
(82, 'meeting', 'created', 4, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"186.95.151.125\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-19 11:32:54', '2020-10-19 11:32:54'),
(83, 'meeting', 'updated', 4, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"186.95.151.125\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-19 11:32:55', '2020-10-19 11:32:55'),
(84, 'meeting', 'created', 5, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-19 11:36:56', '2020-10-19 11:36:56'),
(85, 'meeting', 'updated', 5, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-19 11:36:57', '2020-10-19 11:36:57'),
(86, 'meeting', 'updated', 5, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-19 11:38:07', '2020-10-19 11:38:07'),
(87, 'meeting', 'updated', 5, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-19 11:38:22', '2020-10-19 11:38:22'),
(88, 'meeting', 'updated', 10, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.244.6\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-19 11:38:36', '2020-10-19 11:38:36'),
(89, 'meeting', 'updated', 5, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-19 11:38:56', '2020-10-19 11:38:56'),
(90, 'contact', 'created', 4, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:15:16', '2020-10-20 01:15:16'),
(91, 'meeting', 'created', 11, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:15', '2020-10-20 01:16:15'),
(92, 'meeting', 'updated', 11, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:15', '2020-10-20 01:16:15'),
(93, 'meeting', 'updated', 11, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:15', '2020-10-20 01:16:15'),
(94, 'meeting', 'updated', 11, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:16', '2020-10-20 01:16:16'),
(95, 'meeting', 'updated', 11, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:20', '2020-10-20 01:16:20'),
(96, 'meeting', 'created', 12, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:45', '2020-10-20 01:16:45'),
(97, 'meeting', 'updated', 12, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:45', '2020-10-20 01:16:45'),
(98, 'meeting', 'updated', 12, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:45', '2020-10-20 01:16:45'),
(99, 'meeting', 'updated', 12, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:46', '2020-10-20 01:16:46'),
(100, 'meeting', 'updated', 12, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:16:47', '2020-10-20 01:16:47'),
(101, 'contact', 'created', 5, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:19:44', '2020-10-20 01:19:44'),
(102, 'meeting', 'created', 13, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:20:03', '2020-10-20 01:20:03'),
(103, 'meeting', 'updated', 13, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:20:03', '2020-10-20 01:20:03'),
(104, 'meeting', 'updated', 13, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:20:03', '2020-10-20 01:20:03'),
(105, 'meeting', 'updated', 13, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:20:03', '2020-10-20 01:20:03'),
(106, 'meeting', 'updated', 13, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 01:20:05', '2020-10-20 01:20:05'),
(107, 'meeting', 'created', 6, 'App\\Models\\Invitee', 6, 'App\\Models\\User', '{\"ip\": \"191.95.59.12\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 01:20:52', '2020-10-20 01:20:52'),
(108, 'meeting', 'updated', 6, 'App\\Models\\Invitee', 6, 'App\\Models\\User', '{\"ip\": \"191.95.59.12\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 01:20:54', '2020-10-20 01:20:54'),
(109, 'meeting', 'updated', 6, 'App\\Models\\Invitee', 6, 'App\\Models\\User', '{\"ip\": \"191.95.59.12\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 01:38:42', '2020-10-20 01:38:42'),
(110, 'meeting', 'created', 14, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 02:16:53', '2020-10-20 02:16:53'),
(111, 'meeting', 'updated', 14, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 02:16:53', '2020-10-20 02:16:53'),
(112, 'meeting', 'updated', 14, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 02:16:53', '2020-10-20 02:16:53'),
(113, 'meeting', 'updated', 14, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 02:16:53', '2020-10-20 02:16:53'),
(114, 'meeting', 'updated', 14, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 02:16:58', '2020-10-20 02:16:58'),
(115, 'meeting', 'updated', 14, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 02:17:10', '2020-10-20 02:17:10'),
(116, 'meeting', 'created', 15, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 03:02:09', '2020-10-20 03:02:09'),
(117, 'meeting', 'updated', 15, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 03:02:09', '2020-10-20 03:02:09'),
(118, 'meeting', 'updated', 15, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 03:02:09', '2020-10-20 03:02:09'),
(119, 'meeting', 'updated', 15, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 03:02:09', '2020-10-20 03:02:09'),
(120, 'meeting', 'updated', 15, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 03:02:11', '2020-10-20 03:02:11'),
(121, 'meeting', 'created', 7, 'App\\Models\\Invitee', 6, 'App\\Models\\User', '{\"ip\": \"191.95.59.12\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 03:02:27', '2020-10-20 03:02:27'),
(122, 'meeting', 'updated', 7, 'App\\Models\\Invitee', 6, 'App\\Models\\User', '{\"ip\": \"191.95.59.12\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 03:02:42', '2020-10-20 03:02:42'),
(123, 'meeting', 'updated', 7, 'App\\Models\\Invitee', 6, 'App\\Models\\User', '{\"ip\": \"191.95.59.12\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 03:03:19', '2020-10-20 03:03:19'),
(124, 'meeting', 'created', 16, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:40:55', '2020-10-20 07:40:55'),
(125, 'meeting', 'updated', 16, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:40:55', '2020-10-20 07:40:55'),
(126, 'meeting', 'updated', 16, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:40:55', '2020-10-20 07:40:55'),
(127, 'meeting', 'updated', 16, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:40:55', '2020-10-20 07:40:55'),
(128, 'meeting', 'updated', 16, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:41:01', '2020-10-20 07:41:01'),
(129, 'meeting', 'updated', 16, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:42:43', '2020-10-20 07:42:43'),
(130, 'contact', 'created', 6, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:43:34', '2020-10-20 07:43:34'),
(131, 'meeting', 'created', 17, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:43:48', '2020-10-20 07:43:48'),
(132, 'meeting', 'updated', 17, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:43:48', '2020-10-20 07:43:48'),
(133, 'meeting', 'updated', 17, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:43:48', '2020-10-20 07:43:48'),
(134, 'meeting', 'updated', 17, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:43:48', '2020-10-20 07:43:48'),
(135, 'meeting', 'updated', 17, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.243\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 07:43:50', '2020-10-20 07:43:50'),
(136, 'meeting', 'created', 8, 'App\\Models\\Invitee', 7, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 07:44:11', '2020-10-20 07:44:11'),
(137, 'meeting', 'updated', 8, 'App\\Models\\Invitee', 7, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 07:44:18', '2020-10-20 07:44:18'),
(138, 'meeting', 'created', 18, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:11', '2020-10-20 10:03:11'),
(139, 'meeting', 'updated', 18, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:11', '2020-10-20 10:03:11'),
(140, 'meeting', 'updated', 18, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:11', '2020-10-20 10:03:11'),
(141, 'meeting', 'updated', 18, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:12', '2020-10-20 10:03:12'),
(142, 'meeting', 'updated', 18, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:20', '2020-10-20 10:03:20'),
(143, 'meeting', 'created', 19, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:27', '2020-10-20 10:03:27'),
(144, 'meeting', 'updated', 19, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:27', '2020-10-20 10:03:27'),
(145, 'meeting', 'updated', 19, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:27', '2020-10-20 10:03:27'),
(146, 'meeting', 'updated', 19, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:28', '2020-10-20 10:03:28'),
(147, 'meeting', 'updated', 19, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:29', '2020-10-20 10:03:29'),
(148, 'meeting', 'updated', 19, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:42', '2020-10-20 10:03:42'),
(149, 'meeting', 'updated', 19, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:03:46', '2020-10-20 10:03:46'),
(150, 'meeting', 'created', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:04:53', '2020-10-20 10:04:53'),
(151, 'meeting', 'updated', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:04:53', '2020-10-20 10:04:53'),
(152, 'meeting', 'updated', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:04:53', '2020-10-20 10:04:53'),
(153, 'meeting', 'updated', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:04:53', '2020-10-20 10:04:53'),
(154, 'meeting', 'updated', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:04:56', '2020-10-20 10:04:56'),
(155, 'meeting', 'updated', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:15', '2020-10-20 10:05:15'),
(156, 'meeting', 'updated', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:18', '2020-10-20 10:05:18'),
(157, 'meeting', 'updated', 20, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:24', '2020-10-20 10:05:24'),
(158, 'meeting', 'created', 21, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:36', '2020-10-20 10:05:36'),
(159, 'meeting', 'updated', 21, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:36', '2020-10-20 10:05:36'),
(160, 'meeting', 'updated', 21, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:36', '2020-10-20 10:05:36'),
(161, 'meeting', 'updated', 21, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:36', '2020-10-20 10:05:36'),
(162, 'meeting', 'updated', 21, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:05:39', '2020-10-20 10:05:39'),
(163, 'meeting', 'created', 9, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:11:12', '2020-10-20 10:11:12'),
(164, 'meeting', 'updated', 9, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:11:14', '2020-10-20 10:11:14'),
(165, 'meeting', 'created', 22, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.91\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:15:17', '2020-10-20 10:15:17'),
(166, 'meeting', 'updated', 22, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.91\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:15:17', '2020-10-20 10:15:17'),
(167, 'meeting', 'updated', 22, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.91\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:15:17', '2020-10-20 10:15:17'),
(168, 'meeting', 'updated', 22, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.91\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:15:17', '2020-10-20 10:15:17'),
(169, 'meeting', 'updated', 22, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.91\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 10:15:21', '2020-10-20 10:15:21'),
(170, 'meeting', 'created', 10, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:15:53', '2020-10-20 10:15:53'),
(171, 'meeting', 'updated', 10, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:15:57', '2020-10-20 10:15:57'),
(172, 'role', 'created', 3, 'Spatie\\Permission\\Models\\Role', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"attributes\": {\"id\": 3, \"name\": \"client\"}, \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:25:32', '2020-10-20 10:25:32'),
(173, 'role', 'created', 4, 'Spatie\\Permission\\Models\\Role', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"attributes\": {\"id\": 4, \"name\": \"mentor\"}, \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:25:37', '2020-10-20 10:25:37'),
(174, 'meeting', 'created', 23, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:27:24', '2020-10-20 10:27:24'),
(175, 'meeting', 'updated', 23, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:27:24', '2020-10-20 10:27:24'),
(176, 'meeting', 'updated', 23, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:27:24', '2020-10-20 10:27:24'),
(177, 'meeting', 'updated', 23, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:27:25', '2020-10-20 10:27:25'),
(178, 'meeting', 'updated', 23, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:27:26', '2020-10-20 10:27:26');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(179, 'contact', 'created', 7, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:28:03', '2020-10-20 10:28:03'),
(180, 'permission', 'assigned', NULL, NULL, 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:29:58', '2020-10-20 10:29:58'),
(181, 'permission', 'assigned', NULL, NULL, 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 10:30:12', '2020-10-20 10:30:12'),
(182, 'meeting', 'created', 24, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:43:10', '2020-10-20 12:43:10'),
(183, 'meeting', 'updated', 24, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:43:10', '2020-10-20 12:43:10'),
(184, 'meeting', 'updated', 24, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:43:10', '2020-10-20 12:43:10'),
(185, 'meeting', 'updated', 24, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:43:11', '2020-10-20 12:43:11'),
(186, 'meeting', 'updated', 24, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:43:13', '2020-10-20 12:43:13'),
(187, 'meeting', 'updated', 9, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 12:46:42', '2020-10-20 12:46:42'),
(188, 'chat', 'created', 1, 'App\\Models\\ChatRoom', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:47:25', '2020-10-20 12:47:25'),
(189, 'chat', 'created', 1, 'App\\Models\\ChatRoomMember', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:47:25', '2020-10-20 12:47:25'),
(190, 'chat', 'created', 2, 'App\\Models\\ChatRoomMember', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:47:25', '2020-10-20 12:47:25'),
(191, 'chat', 'created', 1, 'App\\Models\\Chat', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:47:25', '2020-10-20 12:47:25'),
(192, 'chat', 'updated', 1, 'App\\Models\\ChatRoom', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:47:25', '2020-10-20 12:47:25'),
(193, 'chat', 'created', 2, 'App\\Models\\Chat', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:48:05', '2020-10-20 12:48:05'),
(194, 'chat', 'updated', 1, 'App\\Models\\ChatRoom', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:48:05', '2020-10-20 12:48:05'),
(195, 'chat', 'created', 3, 'App\\Models\\Chat', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:48:20', '2020-10-20 12:48:20'),
(196, 'chat', 'updated', 1, 'App\\Models\\ChatRoom', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:48:20', '2020-10-20 12:48:20'),
(197, 'chat', 'created', 4, 'App\\Models\\Chat', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:48:47', '2020-10-20 12:48:47'),
(198, 'chat', 'updated', 1, 'App\\Models\\ChatRoom', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:48:47', '2020-10-20 12:48:47'),
(199, 'meeting', 'created', 11, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 12:48:57', '2020-10-20 12:48:57'),
(200, 'meeting', 'updated', 11, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 12:49:01', '2020-10-20 12:49:01'),
(201, 'chat', 'created', 5, 'App\\Models\\Chat', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:49:49', '2020-10-20 12:49:49'),
(202, 'chat', 'updated', 1, 'App\\Models\\ChatRoom', 1, 'App\\Models\\User', '{\"ip\": \"43.229.75.239\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 12:49:49', '2020-10-20 12:49:49'),
(203, 'meeting', 'created', 12, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 12:50:48', '2020-10-20 12:50:48'),
(204, 'meeting', 'updated', 12, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 12:50:49', '2020-10-20 12:50:49'),
(205, 'meeting', 'created', 25, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:57:44', '2020-10-20 12:57:44'),
(206, 'meeting', 'updated', 25, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:57:44', '2020-10-20 12:57:44'),
(207, 'meeting', 'updated', 25, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:57:44', '2020-10-20 12:57:44'),
(208, 'meeting', 'updated', 25, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:57:44', '2020-10-20 12:57:44'),
(209, 'meeting', 'updated', 25, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:57:49', '2020-10-20 12:57:49'),
(210, 'meeting', 'created', 26, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:59:00', '2020-10-20 12:59:00'),
(211, 'meeting', 'updated', 26, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:59:00', '2020-10-20 12:59:00'),
(212, 'meeting', 'updated', 26, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:59:00', '2020-10-20 12:59:00'),
(213, 'meeting', 'updated', 26, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:59:00', '2020-10-20 12:59:00'),
(214, 'meeting', 'updated', 26, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 12:59:03', '2020-10-20 12:59:03'),
(215, 'meeting', 'created', 13, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:02:35', '2020-10-20 13:02:35'),
(216, 'meeting', 'updated', 13, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:02:38', '2020-10-20 13:02:38'),
(217, 'meeting', 'updated', 13, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:02:45', '2020-10-20 13:02:45'),
(218, 'meeting', 'created', 27, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.111\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:03:04', '2020-10-20 13:03:04'),
(219, 'meeting', 'updated', 27, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.111\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:03:04', '2020-10-20 13:03:04'),
(220, 'meeting', 'updated', 27, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.111\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:03:04', '2020-10-20 13:03:04'),
(221, 'meeting', 'updated', 27, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.111\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:03:05', '2020-10-20 13:03:05'),
(222, 'meeting', 'updated', 27, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.111\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:03:07', '2020-10-20 13:03:07'),
(223, 'meeting', 'created', 14, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:03:24', '2020-10-20 13:03:24'),
(224, 'meeting', 'updated', 14, 'App\\Models\\Invitee', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:03:26', '2020-10-20 13:03:26'),
(225, 'meeting', 'created', 15, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:06:55', '2020-10-20 13:06:55'),
(226, 'meeting', 'updated', 15, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:07:01', '2020-10-20 13:07:01'),
(227, 'meeting', 'created', 28, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:07:53', '2020-10-20 13:07:53'),
(228, 'meeting', 'updated', 28, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:07:53', '2020-10-20 13:07:53'),
(229, 'meeting', 'updated', 28, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:07:53', '2020-10-20 13:07:53'),
(230, 'meeting', 'updated', 28, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:07:53', '2020-10-20 13:07:53'),
(231, 'meeting', 'updated', 28, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:07:56', '2020-10-20 13:07:56'),
(232, 'meeting', 'created', 16, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:09:03', '2020-10-20 13:09:03'),
(233, 'meeting', 'updated', 16, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:09:06', '2020-10-20 13:09:06'),
(234, 'meeting', 'updated', 16, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:09:21', '2020-10-20 13:09:21'),
(235, 'meeting', 'updated', 16, 'App\\Models\\Invitee', 4, 'App\\Models\\User', '{\"ip\": \"190.75.254.70\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 13:09:24', '2020-10-20 13:09:24'),
(236, 'meeting', 'updated', 28, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 13:10:11', '2020-10-20 13:10:11'),
(237, 'meeting', 'created', 29, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 13:14:50', '2020-10-20 13:14:50'),
(238, 'meeting', 'updated', 29, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 13:16:43', '2020-10-20 13:16:43'),
(239, 'meeting', 'created', 30, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 13:19:35', '2020-10-20 13:19:35'),
(240, 'meeting', 'created', 31, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 14:58:14', '2020-10-20 14:58:14'),
(241, 'meeting', 'updated', 31, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 15:09:32', '2020-10-20 15:09:32'),
(242, 'meeting', 'created', 32, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 15:20:47', '2020-10-20 15:20:47'),
(243, 'meeting', 'updated', 32, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 16:09:16', '2020-10-20 16:09:16'),
(244, 'meeting', 'updated', 32, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 16:09:23', '2020-10-20 16:09:23'),
(245, 'meeting', 'updated', 20, 'App\\Models\\Invitee', 9, 'App\\Models\\User', '{\"ip\": \"186.95.112.116\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; ANE-LX3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.99 Mobile Safari/537.36\"}', '2020-10-20 16:18:36', '2020-10-20 16:18:36'),
(246, 'meeting', 'updated', 32, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 16:21:59', '2020-10-20 16:21:59'),
(247, 'meeting', 'created', 33, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 18:58:30', '2020-10-20 18:58:30'),
(248, 'meeting', 'updated', 33, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 19:05:27', '2020-10-20 19:05:27'),
(249, 'meeting', 'created', 34, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 19:13:06', '2020-10-20 19:13:06'),
(250, 'meeting', 'created', 35, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 21:35:26', '2020-10-20 21:35:26'),
(251, 'meeting', 'created', 36, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 21:51:41', '2020-10-20 21:51:41'),
(252, 'meeting', 'updated', 36, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 21:56:36', '2020-10-20 21:56:36'),
(253, 'meeting', 'created', 37, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 21:58:25', '2020-10-20 21:58:25'),
(254, 'meeting', 'updated', 37, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 21:59:28', '2020-10-20 21:59:28'),
(255, 'meeting', 'created', 38, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 22:00:58', '2020-10-20 22:00:58'),
(256, 'meeting', 'updated', 38, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 22:06:19', '2020-10-20 22:06:19'),
(257, 'meeting', 'created', 39, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 22:08:07', '2020-10-20 22:08:07'),
(258, 'meeting', 'updated', 39, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 22:09:38', '2020-10-20 22:09:38'),
(259, 'meeting', 'created', 40, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 22:10:47', '2020-10-20 22:10:47'),
(260, 'meeting', 'updated', 40, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.95.112.116\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 22:11:08', '2020-10-20 22:11:08'),
(261, 'meeting', 'created', 41, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-20 22:14:34', '2020-10-20 22:14:34'),
(262, 'meeting', 'updated', 41, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.95.112.116\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 22:28:27', '2020-10-20 22:28:27'),
(263, 'meeting', 'updated', 41, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.95.112.116\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 22:28:36', '2020-10-20 22:28:36'),
(264, 'meeting', 'updated', 23, 'App\\Models\\Invitee', 9, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-20 22:44:14', '2020-10-20 22:44:14'),
(265, 'meeting', 'updated', 25, 'App\\Models\\Invitee', 14, 'App\\Models\\User', '{\"ip\": \"177.245.192.167\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 22:46:56', '2020-10-20 22:46:56'),
(266, 'meeting', 'updated', 25, 'App\\Models\\Invitee', 14, 'App\\Models\\User', '{\"ip\": \"177.245.192.167\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 22:51:16', '2020-10-20 22:51:16'),
(267, 'meeting', 'updated', 25, 'App\\Models\\Invitee', 14, 'App\\Models\\User', '{\"ip\": \"177.245.192.167\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-20 22:51:25', '2020-10-20 22:51:25'),
(268, 'contact', 'created', 16, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:02:20', '2020-10-20 23:02:20'),
(269, 'meeting', 'created', 42, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:02:24', '2020-10-20 23:02:24'),
(270, 'meeting', 'updated', 42, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:02:24', '2020-10-20 23:02:24'),
(271, 'meeting', 'updated', 42, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:02:24', '2020-10-20 23:02:24'),
(272, 'meeting', 'updated', 42, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:02:24', '2020-10-20 23:02:24'),
(273, 'meeting', 'updated', 42, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:02:27', '2020-10-20 23:02:27'),
(274, 'meeting', 'updated', 42, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:03:44', '2020-10-20 23:03:44'),
(275, 'meeting', 'created', 26, 'App\\Models\\Invitee', 15, 'App\\Models\\User', '{\"ip\": \"186.28.134.215\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8 Build/PKQ1.190616.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36\"}', '2020-10-20 23:04:08', '2020-10-20 23:04:08'),
(276, 'meeting', 'updated', 26, 'App\\Models\\Invitee', 15, 'App\\Models\\User', '{\"ip\": \"186.28.134.215\", \"user_agent\": \"Mozilla/5.0 (Linux; U; Android 9; es-us; Redmi Note 8 Build/PKQ1.190616.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/12.6.2-gn\"}', '2020-10-20 23:04:09', '2020-10-20 23:04:09'),
(277, 'meeting', 'created', 27, 'App\\Models\\Invitee', 13, 'App\\Models\\User', '{\"ip\": \"191.95.59.177\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 23:04:47', '2020-10-20 23:04:47'),
(278, 'meeting', 'updated', 27, 'App\\Models\\Invitee', 13, 'App\\Models\\User', '{\"ip\": \"191.95.59.177\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_0_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-20 23:04:48', '2020-10-20 23:04:48'),
(279, 'meeting', 'updated', 26, 'App\\Models\\Invitee', 15, 'App\\Models\\User', '{\"ip\": \"186.28.134.215\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.80 Safari/537.36\"}', '2020-10-20 23:07:37', '2020-10-20 23:07:37'),
(280, 'meeting', 'created', 43, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:52:21', '2020-10-21 17:52:21'),
(281, 'meeting', 'updated', 43, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:52:27', '2020-10-21 17:52:27'),
(282, 'meeting', 'created', 44, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:53:11', '2020-10-21 17:53:11'),
(283, 'meeting', 'updated', 44, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:53:18', '2020-10-21 17:53:18'),
(284, 'meeting', 'created', 45, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:53:58', '2020-10-21 17:53:58'),
(285, 'meeting', 'updated', 45, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:54:11', '2020-10-21 17:54:11'),
(286, 'meeting', 'created', 46, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:55:04', '2020-10-21 17:55:04'),
(287, 'meeting', 'updated', 46, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 17:55:07', '2020-10-21 17:55:07'),
(288, 'meeting', 'created', 47, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 18:00:40', '2020-10-21 18:00:40'),
(289, 'meeting', 'updated', 47, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 18:01:32', '2020-10-21 18:01:32'),
(290, 'meeting', 'created', 48, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 18:02:35', '2020-10-21 18:02:35'),
(291, 'meeting', 'updated', 48, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 18:03:03', '2020-10-21 18:03:03'),
(292, 'meeting', 'created', 49, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.199.92.2\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-21 18:04:20', '2020-10-21 18:04:20'),
(293, 'meeting', 'created', 50, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-21 18:10:20', '2020-10-21 18:10:20'),
(294, 'meeting', 'created', 51, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.115.191\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-22 11:40:17', '2020-10-22 11:40:17'),
(295, 'meeting', 'created', 28, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"190.78.115.191\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-22 11:56:51', '2020-10-22 11:56:51'),
(296, 'meeting', 'created', 52, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.115.191\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-22 12:56:29', '2020-10-22 12:56:29'),
(297, 'meeting', 'updated', 52, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.115.191\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-22 12:56:37', '2020-10-22 12:56:37'),
(298, 'meeting', 'created', 53, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.115.191\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-22 13:04:27', '2020-10-22 13:04:27'),
(299, 'meeting', 'created', 54, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-23 20:26:11', '2020-10-23 20:26:11'),
(300, 'meeting', 'created', 55, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-23 20:27:18', '2020-10-23 20:27:18'),
(301, 'meeting', 'created', 56, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-23 23:19:11', '2020-10-23 23:19:11'),
(302, 'contact', 'created', 17, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:04:56', '2020-10-24 00:04:56'),
(303, 'meeting', 'created', 57, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:05:48', '2020-10-24 00:05:48'),
(304, 'meeting', 'updated', 57, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:05:48', '2020-10-24 00:05:48'),
(305, 'meeting', 'updated', 57, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:05:48', '2020-10-24 00:05:48'),
(306, 'meeting', 'updated', 57, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:05:49', '2020-10-24 00:05:49'),
(307, 'meeting', 'updated', 57, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:05:54', '2020-10-24 00:05:54'),
(308, 'meeting', 'created', 58, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:06:18', '2020-10-24 00:06:18'),
(309, 'meeting', 'updated', 58, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:06:18', '2020-10-24 00:06:18'),
(310, 'meeting', 'updated', 58, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:06:18', '2020-10-24 00:06:18'),
(311, 'meeting', 'updated', 58, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:06:18', '2020-10-24 00:06:18'),
(312, 'meeting', 'updated', 58, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:06:19', '2020-10-24 00:06:19'),
(313, 'meeting', 'created', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-24 00:10:55', '2020-10-24 00:10:55'),
(314, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\"}', '2020-10-24 00:10:55', '2020-10-24 00:10:55'),
(315, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:27:17', '2020-10-24 00:27:17'),
(316, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:43:56', '2020-10-24 00:43:56'),
(317, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:44:48', '2020-10-24 00:44:48'),
(318, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:57:42', '2020-10-24 00:57:42'),
(319, 'meeting', 'created', 59, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 00:59:59', '2020-10-24 00:59:59'),
(320, 'meeting', 'updated', 59, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 01:01:25', '2020-10-24 01:01:25'),
(321, 'meeting', 'created', 60, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 01:04:37', '2020-10-24 01:04:37'),
(322, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 01:20:11', '2020-10-24 01:20:11'),
(323, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 02:01:13', '2020-10-24 02:01:13'),
(324, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 02:01:29', '2020-10-24 02:01:29'),
(325, 'meeting', 'updated', 29, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.193.47\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 02:02:04', '2020-10-24 02:02:04'),
(326, 'meeting', 'created', 61, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 22:44:56', '2020-10-24 22:44:56'),
(327, 'meeting', 'updated', 61, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 22:48:17', '2020-10-24 22:48:17'),
(328, 'meeting', 'updated', 61, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:81.0) Gecko/20100101 Firefox/81.0\"}', '2020-10-24 23:01:57', '2020-10-24 23:01:57'),
(329, 'meeting', 'created', 62, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 23:06:17', '2020-10-24 23:06:17'),
(330, 'meeting', 'updated', 62, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 23:30:18', '2020-10-24 23:30:18'),
(331, 'meeting', 'created', 63, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 23:33:48', '2020-10-24 23:33:48'),
(332, 'meeting', 'updated', 63, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 23:34:35', '2020-10-24 23:34:35'),
(333, 'meeting', 'created', 64, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 23:37:34', '2020-10-24 23:37:34'),
(334, 'meeting', 'updated', 64, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 23:40:24', '2020-10-24 23:40:24'),
(335, 'meeting', 'created', 65, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 23:42:19', '2020-10-24 23:42:19'),
(336, 'meeting', 'updated', 65, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 23:45:14', '2020-10-24 23:45:14'),
(337, 'meeting', 'created', 66, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-24 23:48:04', '2020-10-24 23:48:04'),
(338, 'meeting', 'updated', 66, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-24 23:50:17', '2020-10-24 23:50:17'),
(339, 'meeting', 'created', 67, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 02:48:10', '2020-10-26 02:48:10'),
(340, 'meeting', 'updated', 67, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 02:48:10', '2020-10-26 02:48:10'),
(341, 'meeting', 'updated', 67, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 02:48:10', '2020-10-26 02:48:10'),
(342, 'meeting', 'updated', 67, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 02:48:10', '2020-10-26 02:48:10'),
(343, 'meeting', 'updated', 67, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 02:48:12', '2020-10-26 02:48:12'),
(344, 'meeting', 'created', 68, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 12:33:50', '2020-10-26 12:33:50'),
(345, 'meeting', 'updated', 68, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 12:33:56', '2020-10-26 12:33:56'),
(346, 'meeting', 'created', 69, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 12:34:21', '2020-10-26 12:34:21'),
(347, 'meeting', 'created', 70, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 12:39:34', '2020-10-26 12:39:34'),
(348, 'meeting', 'updated', 70, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 13:42:39', '2020-10-26 13:42:39'),
(349, 'meeting', 'created', 71, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 13:45:14', '2020-10-26 13:45:14'),
(350, 'meeting', 'created', 72, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 13:50:06', '2020-10-26 13:50:06'),
(351, 'meeting', 'created', 73, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 13:53:36', '2020-10-26 13:53:36'),
(352, 'meeting', 'created', 74, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:00:33', '2020-10-26 14:00:33'),
(353, 'meeting', 'updated', 74, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:01:12', '2020-10-26 14:01:12'),
(354, 'meeting', 'created', 75, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:01:59', '2020-10-26 14:01:59'),
(355, 'meeting', 'updated', 75, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:02:04', '2020-10-26 14:02:04'),
(356, 'meeting', 'updated', 71, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:15:14', '2020-10-26 14:15:14'),
(357, 'meeting', 'updated', 71, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:15:15', '2020-10-26 14:15:15'),
(358, 'meeting', 'updated', 71, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:16:22', '2020-10-26 14:16:22'),
(359, 'meeting', 'updated', 71, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 14:25:54', '2020-10-26 14:25:54'),
(360, 'meeting', 'updated', 72, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.204.111.243\", \"user_agent\": \"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 15:54:46', '2020-10-26 15:54:46'),
(361, 'meeting', 'created', 76, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 16:01:36', '2020-10-26 16:01:36');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(362, 'meeting', 'updated', 76, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 16:03:30', '2020-10-26 16:03:30'),
(363, 'meeting', 'created', 77, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 16:04:53', '2020-10-26 16:04:53'),
(364, 'meeting', 'created', 78, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 16:36:09', '2020-10-26 16:36:09'),
(365, 'meeting', 'created', 79, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 16:44:12', '2020-10-26 16:44:12'),
(366, 'meeting', 'updated', 79, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 16:44:50', '2020-10-26 16:44:50'),
(367, 'meeting', 'created', 80, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 16:46:14', '2020-10-26 16:46:14'),
(368, 'meeting', 'updated', 78, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 16:51:03', '2020-10-26 16:51:03'),
(369, 'meeting', 'created', 81, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:21', '2020-10-26 17:04:21'),
(370, 'meeting', 'updated', 81, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:21', '2020-10-26 17:04:21'),
(371, 'meeting', 'updated', 81, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:21', '2020-10-26 17:04:21'),
(372, 'meeting', 'updated', 81, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:22', '2020-10-26 17:04:22'),
(373, 'meeting', 'updated', 81, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:24', '2020-10-26 17:04:24'),
(374, 'meeting', 'created', 82, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:45', '2020-10-26 17:04:45'),
(375, 'meeting', 'updated', 82, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:45', '2020-10-26 17:04:45'),
(376, 'meeting', 'updated', 82, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:45', '2020-10-26 17:04:45'),
(377, 'meeting', 'updated', 82, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:45', '2020-10-26 17:04:45'),
(378, 'meeting', 'updated', 82, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:04:47', '2020-10-26 17:04:47'),
(379, 'meeting', 'created', 83, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:05:18', '2020-10-26 17:05:18'),
(380, 'meeting', 'updated', 83, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:05:18', '2020-10-26 17:05:18'),
(381, 'meeting', 'updated', 83, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:05:18', '2020-10-26 17:05:18'),
(382, 'meeting', 'updated', 83, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:05:19', '2020-10-26 17:05:19'),
(383, 'meeting', 'updated', 83, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:05:20', '2020-10-26 17:05:20'),
(384, 'meeting', 'created', 84, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:07:18', '2020-10-26 17:07:18'),
(385, 'meeting', 'updated', 84, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:07:18', '2020-10-26 17:07:18'),
(386, 'meeting', 'updated', 84, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:07:18', '2020-10-26 17:07:18'),
(387, 'meeting', 'updated', 84, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:07:18', '2020-10-26 17:07:18'),
(388, 'meeting', 'updated', 84, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:07:21', '2020-10-26 17:07:21'),
(389, 'meeting', 'created', 85, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 17:07:31', '2020-10-26 17:07:31'),
(390, 'meeting', 'updated', 85, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:08:08', '2020-10-26 17:08:08'),
(391, 'meeting', 'created', 86, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 17:09:22', '2020-10-26 17:09:22'),
(392, 'meeting', 'updated', 86, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:15:17', '2020-10-26 17:15:17'),
(393, 'meeting', 'updated', 86, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:15:35', '2020-10-26 17:15:35'),
(394, 'meeting', 'updated', 80, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:20:16', '2020-10-26 17:20:16'),
(395, 'meeting', 'updated', 37, 'App\\Models\\Invitee', 19, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15\"}', '2020-10-26 17:22:58', '2020-10-26 17:22:58'),
(396, 'meeting', 'updated', 37, 'App\\Models\\Invitee', 19, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15\"}', '2020-10-26 17:23:59', '2020-10-26 17:23:59'),
(397, 'meeting', 'created', 87, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 17:28:44', '2020-10-26 17:28:44'),
(398, 'meeting', 'updated', 87, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:29:36', '2020-10-26 17:29:36'),
(399, 'meeting', 'updated', 38, 'App\\Models\\Invitee', 19, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15\"}', '2020-10-26 17:30:43', '2020-10-26 17:30:43'),
(400, 'meeting', 'updated', 39, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:34:54', '2020-10-26 17:34:54'),
(401, 'meeting', 'updated', 87, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:38:14', '2020-10-26 17:38:14'),
(402, 'meeting', 'updated', 87, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:38:55', '2020-10-26 17:38:55'),
(403, 'meeting', 'created', 88, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 17:40:15', '2020-10-26 17:40:15'),
(404, 'meeting', 'updated', 88, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:41:21', '2020-10-26 17:41:21'),
(405, 'meeting', 'updated', 40, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:42:28', '2020-10-26 17:42:28'),
(406, 'meeting', 'updated', 40, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:46:45', '2020-10-26 17:46:45'),
(407, 'meeting', 'updated', 40, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:46:49', '2020-10-26 17:46:49'),
(408, 'meeting', 'created', 89, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 17:55:48', '2020-10-26 17:55:48'),
(409, 'meeting', 'updated', 89, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:57:09', '2020-10-26 17:57:09'),
(410, 'meeting', 'updated', 42, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 17:58:15', '2020-10-26 17:58:15'),
(411, 'meeting', 'created', 90, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 18:14:07', '2020-10-26 18:14:07'),
(412, 'meeting', 'updated', 90, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:20:10', '2020-10-26 18:20:10'),
(413, 'meeting', 'updated', 43, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:20:48', '2020-10-26 18:20:48'),
(414, 'meeting', 'updated', 45, 'App\\Models\\Invitee', 3, 'App\\Models\\User', '{\"ip\": \"190.207.60.71\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:21:02', '2020-10-26 18:21:02'),
(415, 'meeting', 'updated', 44, 'App\\Models\\Invitee', 19, 'App\\Models\\User', '{\"ip\": \"186.28.134.215\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:21:58', '2020-10-26 18:21:58'),
(416, 'meeting', 'updated', 44, 'App\\Models\\Invitee', 19, 'App\\Models\\User', '{\"ip\": \"186.28.134.215\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:24:44', '2020-10-26 18:24:44'),
(417, 'meeting', 'updated', 43, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"191.95.58.146\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-26 18:25:16', '2020-10-26 18:25:16'),
(418, 'meeting', 'updated', 90, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:37:20', '2020-10-26 18:37:20'),
(419, 'meeting', 'updated', 44, 'App\\Models\\Invitee', 19, 'App\\Models\\User', '{\"ip\": \"186.28.134.215\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:46:38', '2020-10-26 18:46:38'),
(420, 'meeting', 'updated', 90, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:50:31', '2020-10-26 18:50:31'),
(421, 'meeting', 'updated', 43, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-26 18:58:09', '2020-10-26 18:58:09'),
(422, 'meeting', 'created', 91, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-26 21:53:09', '2020-10-26 21:53:09'),
(423, 'meeting', 'created', 92, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-27 13:58:45', '2020-10-27 13:58:45'),
(424, 'meeting', 'updated', 92, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-27 14:03:57', '2020-10-27 14:03:57'),
(425, 'meeting', 'updated', 92, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-27 14:06:15', '2020-10-27 14:06:15'),
(426, 'meeting', 'updated', 92, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-27 14:11:41', '2020-10-27 14:11:41'),
(427, 'meeting', 'updated', 92, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-27 14:40:52', '2020-10-27 14:40:52'),
(428, 'meeting', 'updated', 92, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-27 14:42:22', '2020-10-27 14:42:22'),
(429, 'meeting', 'created', 93, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-28 03:06:09', '2020-10-28 03:06:09'),
(430, 'meeting', 'updated', 93, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:10:12', '2020-10-28 03:10:12'),
(431, 'meeting', 'created', 94, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:27:09', '2020-10-28 03:27:09'),
(432, 'meeting', 'updated', 94, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:27:09', '2020-10-28 03:27:09'),
(433, 'meeting', 'updated', 94, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:27:09', '2020-10-28 03:27:09'),
(434, 'meeting', 'updated', 94, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:27:09', '2020-10-28 03:27:09'),
(435, 'meeting', 'updated', 94, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:27:12', '2020-10-28 03:27:12'),
(436, 'contact', 'created', 21, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"191.95.48.180\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-28 03:28:07', '2020-10-28 03:28:07'),
(437, 'meeting', 'created', 48, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"191.95.48.180\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-28 03:28:07', '2020-10-28 03:28:07'),
(438, 'meeting', 'updated', 48, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"191.95.48.180\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1\"}', '2020-10-28 03:28:07', '2020-10-28 03:28:07'),
(439, 'meeting', 'created', 95, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:30:57', '2020-10-28 03:30:57'),
(440, 'meeting', 'updated', 95, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:31:05', '2020-10-28 03:31:05'),
(441, 'meeting', 'created', 96, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:33:55', '2020-10-28 03:33:55'),
(442, 'meeting', 'updated', 96, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 03:34:11', '2020-10-28 03:34:11'),
(443, 'meeting', 'created', 97, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.72.0 PHP/7.4.11\"}', '2020-10-28 17:12:51', '2020-10-28 17:12:51'),
(444, 'meeting', 'updated', 97, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 17:13:53', '2020-10-28 17:13:53'),
(445, 'meeting', 'updated', 97, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 17:16:14', '2020-10-28 17:16:14'),
(446, 'meeting', 'updated', 97, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 17:16:16', '2020-10-28 17:16:16'),
(447, 'meeting', 'updated', 97, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 17:16:35', '2020-10-28 17:16:35'),
(448, 'meeting', 'updated', 49, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"177.245.192.239\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-28 17:24:57', '2020-10-28 17:24:57'),
(449, 'meeting', 'created', 98, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-30 19:21:10', '2020-10-30 19:21:10'),
(450, 'meeting', 'created', 99, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-30 20:50:10', '2020-10-30 20:50:10'),
(451, 'meeting', 'created', 100, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-30 20:59:04', '2020-10-30 20:59:04'),
(452, 'meeting', 'created', 101, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-30 23:39:32', '2020-10-30 23:39:32'),
(453, 'meeting', 'updated', 101, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-30 23:50:51', '2020-10-30 23:50:51'),
(454, 'meeting', 'created', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:26:40', '2020-10-31 01:26:40'),
(455, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:26:40', '2020-10-31 01:26:40'),
(456, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:26:40', '2020-10-31 01:26:40'),
(457, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:26:40', '2020-10-31 01:26:40'),
(458, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:26:42', '2020-10-31 01:26:42'),
(459, 'meeting', 'created', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:28:12', '2020-10-31 01:28:12'),
(460, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:28:12', '2020-10-31 01:28:12'),
(461, 'contact', 'created', 24, 'App\\Models\\Contact', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 01:37:31', '2020-10-31 01:37:31'),
(462, 'meeting', 'created', 52, 'App\\Models\\Invitee', 22, 'App\\Models\\User', '{\"ip\": \"190.140.251.162\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 02:11:39', '2020-10-31 02:11:39'),
(463, 'meeting', 'updated', 52, 'App\\Models\\Invitee', 22, 'App\\Models\\User', '{\"ip\": \"190.140.251.162\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 02:11:40', '2020-10-31 02:11:40'),
(464, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 02:28:04', '2020-10-31 02:28:04'),
(465, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 02:28:17', '2020-10-31 02:28:17'),
(466, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 02:30:11', '2020-10-31 02:30:11'),
(467, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\"}', '2020-10-31 03:28:47', '2020-10-31 03:28:47'),
(468, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:30:43', '2020-10-31 03:30:43'),
(469, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\"}', '2020-10-31 03:31:23', '2020-10-31 03:31:23'),
(470, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:31:39', '2020-10-31 03:31:39'),
(471, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:31:42', '2020-10-31 03:31:42'),
(472, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:31:58', '2020-10-31 03:31:58'),
(473, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:32:23', '2020-10-31 03:32:23'),
(474, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:36:57', '2020-10-31 03:36:57'),
(475, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:37:18', '2020-10-31 03:37:18'),
(476, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:38:40', '2020-10-31 03:38:40'),
(477, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:38:46', '2020-10-31 03:38:46'),
(478, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:38:50', '2020-10-31 03:38:50'),
(479, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:40:47', '2020-10-31 03:40:47'),
(480, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:50:20', '2020-10-31 03:50:20'),
(481, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:50:25', '2020-10-31 03:50:25'),
(482, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:50:38', '2020-10-31 03:50:38'),
(483, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:50:55', '2020-10-31 03:50:55'),
(484, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:51:12', '2020-10-31 03:51:12'),
(485, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:51:28', '2020-10-31 03:51:28'),
(486, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:51:57', '2020-10-31 03:51:57'),
(487, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:52:03', '2020-10-31 03:52:03'),
(488, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:52:08', '2020-10-31 03:52:08'),
(489, 'meeting', 'updated', 51, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:52:30', '2020-10-31 03:52:30'),
(490, 'meeting', 'updated', 102, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 03:54:04', '2020-10-31 03:54:04'),
(491, 'meeting', 'created', 103, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-31 13:45:20', '2020-10-31 13:45:20'),
(492, 'meeting', 'created', 104, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-31 14:50:44', '2020-10-31 14:50:44'),
(493, 'meeting', 'updated', 104, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 14:55:37', '2020-10-31 14:55:37'),
(494, 'meeting', 'created', 105, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-31 17:40:59', '2020-10-31 17:40:59'),
(495, 'meeting', 'created', 106, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-31 17:55:38', '2020-10-31 17:55:38'),
(496, 'meeting', 'updated', 105, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-31 17:56:25', '2020-10-31 17:56:25'),
(497, 'meeting', 'created', 107, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-10-31 18:22:40', '2020-10-31 18:22:40'),
(498, 'meeting', 'updated', 107, 'Meeting', 5, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 18:29:18', '2020-10-31 18:29:18'),
(499, 'meeting', 'updated', 56, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.29.204.213\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 18:35:15', '2020-10-31 18:35:15'),
(500, 'meeting', 'updated', 56, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.29.204.213\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 18:43:21', '2020-10-31 18:43:21'),
(501, 'meeting', 'updated', 56, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.29.204.213\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-10-31 18:43:58', '2020-10-31 18:43:58'),
(502, 'meeting', 'created', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 00:18:38', '2020-11-01 00:18:38'),
(503, 'meeting', 'updated', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 00:18:38', '2020-11-01 00:18:38'),
(504, 'meeting', 'updated', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 00:18:38', '2020-11-01 00:18:38'),
(505, 'meeting', 'updated', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 00:18:39', '2020-11-01 00:18:39'),
(506, 'meeting', 'updated', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 00:19:10', '2020-11-01 00:19:10'),
(507, 'meeting', 'created', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 00:24:11', '2020-11-01 00:24:11'),
(508, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 00:24:11', '2020-11-01 00:24:11'),
(509, 'meeting', 'updated', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 01:03:03', '2020-11-01 01:03:03'),
(510, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 01:26:04', '2020-11-01 01:26:04'),
(511, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:03:39', '2020-11-01 02:03:39'),
(512, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:03:53', '2020-11-01 02:03:53'),
(513, 'meeting', 'updated', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\"}', '2020-11-01 02:04:48', '2020-11-01 02:04:48'),
(514, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:05:04', '2020-11-01 02:05:04'),
(515, 'meeting', 'created', 109, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-11-01 02:26:29', '2020-11-01 02:26:29'),
(516, 'meeting', 'updated', 109, 'Meeting', 5, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:30:51', '2020-11-01 02:30:51'),
(517, 'meeting', 'created', 110, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-11-01 02:40:32', '2020-11-01 02:40:32'),
(518, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:46:31', '2020-11-01 02:46:31'),
(519, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:47:12', '2020-11-01 02:47:12'),
(520, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:47:32', '2020-11-01 02:47:32'),
(521, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:48:13', '2020-11-01 02:48:13'),
(522, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:48:34', '2020-11-01 02:48:34'),
(523, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:48:40', '2020-11-01 02:48:40'),
(524, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:49:44', '2020-11-01 02:49:44'),
(525, 'meeting', 'created', 111, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-11-01 02:50:10', '2020-11-01 02:50:10'),
(526, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:52:33', '2020-11-01 02:52:33'),
(527, 'meeting', 'updated', 57, 'App\\Models\\Invitee', 16, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:52:43', '2020-11-01 02:52:43'),
(528, 'meeting', 'created', 112, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-11-01 02:54:03', '2020-11-01 02:54:03'),
(529, 'meeting', 'updated', 108, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.49\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15\"}', '2020-11-01 02:55:47', '2020-11-01 02:55:47'),
(530, 'meeting', 'created', 58, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"177.245.195.143\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\"}', '2020-11-01 02:59:23', '2020-11-01 02:59:23'),
(531, 'meeting', 'created', 113, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-11-02 13:14:45', '2020-11-02 13:14:45'),
(532, 'meeting', 'created', 114, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-11-04 13:48:34', '2020-11-04 13:48:34'),
(533, 'meeting', 'created', 115, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.11\"}', '2020-11-05 20:55:42', '2020-11-05 20:55:42'),
(534, 'meeting', 'created', 116, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.12\"}', '2020-11-16 17:30:14', '2020-11-16 17:30:14'),
(535, 'meeting', 'updated', 116, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.12\"}', '2020-11-16 17:30:53', '2020-11-16 17:30:53'),
(536, 'meeting', 'created', 117, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.12\"}', '2020-11-16 17:35:06', '2020-11-16 17:35:06'),
(537, 'meeting', 'created', 118, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.12\"}', '2020-11-16 18:33:37', '2020-11-16 18:33:37'),
(538, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 18:41:25', '2020-11-16 18:41:25'),
(539, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 18:42:52', '2020-11-16 18:42:52'),
(540, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 18:43:20', '2020-11-16 18:43:20'),
(541, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 19:45:51', '2020-11-16 19:45:51'),
(542, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 19:47:49', '2020-11-16 19:47:49'),
(543, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 19:47:58', '2020-11-16 19:47:58');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(544, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 19:48:05', '2020-11-16 19:48:05'),
(545, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 19:48:25', '2020-11-16 19:48:25'),
(546, 'meeting', 'updated', 62, 'App\\Models\\Invitee', 18, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:82.0) Gecko/20100101 Firefox/82.0\"}', '2020-11-16 19:51:42', '2020-11-16 19:51:42'),
(547, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 19:58:43', '2020-11-16 19:58:43'),
(548, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 20:03:12', '2020-11-16 20:03:12'),
(549, 'meeting', 'updated', 118, 'Meeting', 13, 'App\\Models\\User', '{\"ip\": \"186.84.21.95\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-16 20:03:31', '2020-11-16 20:03:31'),
(550, 'meeting', 'created', 119, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.124.17\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-18 19:11:28', '2020-11-18 19:11:28'),
(551, 'meeting', 'updated', 119, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.124.17\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-18 19:12:01', '2020-11-18 19:12:01'),
(552, 'meeting', 'updated', 119, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.124.17\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-18 19:12:40', '2020-11-18 19:12:40'),
(553, 'meeting', 'updated', 119, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.124.17\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-18 19:12:43', '2020-11-18 19:12:43'),
(554, 'meeting', 'updated', 119, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.124.17\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-18 19:13:33', '2020-11-18 19:13:33'),
(555, 'meeting', 'updated', 119, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.124.17\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-18 19:14:17', '2020-11-18 19:14:17'),
(556, 'meeting', 'updated', 119, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.124.17\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-18 19:14:19', '2020-11-18 19:14:19'),
(557, 'meeting', 'created', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:08:19', '2020-11-19 18:08:19'),
(558, 'meeting', 'updated', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:08:19', '2020-11-19 18:08:19'),
(559, 'meeting', 'updated', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:08:19', '2020-11-19 18:08:19'),
(560, 'meeting', 'updated', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:08:20', '2020-11-19 18:08:20'),
(561, 'meeting', 'updated', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:08:29', '2020-11-19 18:08:29'),
(562, 'meeting', 'updated', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:08:41', '2020-11-19 18:08:41'),
(563, 'meeting', 'updated', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:08:51', '2020-11-19 18:08:51'),
(564, 'meeting', 'updated', 120, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:09:36', '2020-11-19 18:09:36'),
(565, 'meeting', 'created', 121, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:18:57', '2020-11-19 18:18:57'),
(566, 'meeting', 'updated', 121, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:18:57', '2020-11-19 18:18:57'),
(567, 'meeting', 'updated', 121, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:18:57', '2020-11-19 18:18:57'),
(568, 'meeting', 'updated', 121, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:18:57', '2020-11-19 18:18:57'),
(569, 'meeting', 'updated', 121, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.251.198\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-11-19 18:18:59', '2020-11-19 18:18:59'),
(570, 'meeting', 'created', 122, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.242.72\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\"}', '2020-11-23 22:44:20', '2020-11-23 22:44:20'),
(571, 'meeting', 'updated', 122, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.242.72\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\"}', '2020-11-23 22:44:20', '2020-11-23 22:44:20'),
(572, 'meeting', 'updated', 122, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.242.72\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\"}', '2020-11-23 22:44:20', '2020-11-23 22:44:20'),
(573, 'meeting', 'updated', 122, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.242.72\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\"}', '2020-11-23 22:44:20', '2020-11-23 22:44:20'),
(574, 'meeting', 'updated', 122, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.167.242.72\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\"}', '2020-11-23 22:44:26', '2020-11-23 22:44:26'),
(575, 'meeting', 'created', 123, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.13\"}', '2020-12-14 14:17:16', '2020-12-14 14:17:16'),
(576, 'meeting', 'updated', 123, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.75.231.87\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-14 14:36:59', '2020-12-14 14:36:59'),
(577, 'meeting', 'updated', 123, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.75.231.87\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-14 14:45:23', '2020-12-14 14:45:23'),
(578, 'meeting', 'updated', 123, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.75.231.87\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-14 14:55:25', '2020-12-14 14:55:25'),
(579, 'meeting', 'updated', 66, 'App\\Models\\Invitee', 24, 'App\\Models\\User', '{\"ip\": \"190.36.42.155\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-14 15:09:22', '2020-12-14 15:09:22'),
(580, 'meeting', 'created', 124, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.13\"}', '2020-12-15 00:59:50', '2020-12-15 00:59:50'),
(581, 'meeting', 'created', 125, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.73.0 PHP/7.4.13\"}', '2020-12-15 01:05:08', '2020-12-15 01:05:08'),
(582, 'meeting', 'created', 126, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.21.31\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-12-17 11:20:56', '2020-12-17 11:20:56'),
(583, 'meeting', 'updated', 126, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.21.31\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-12-17 11:20:56', '2020-12-17 11:20:56'),
(584, 'meeting', 'updated', 126, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.21.31\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-12-17 11:20:56', '2020-12-17 11:20:56'),
(585, 'meeting', 'updated', 126, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.21.31\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-12-17 11:20:56', '2020-12-17 11:20:56'),
(586, 'meeting', 'updated', 126, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.21.31\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-12-17 11:21:08', '2020-12-17 11:21:08'),
(587, 'meeting', 'updated', 126, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.21.31\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\"}', '2020-12-17 11:21:36', '2020-12-17 11:21:36'),
(588, 'option', 'created', 13, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2020-12-28 21:47:22', '2020-12-28 21:47:22'),
(589, 'option', 'created', 14, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2020-12-29 20:30:51', '2020-12-29 20:30:51'),
(590, 'meeting', 'created', 127, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2020-12-30 16:54:11', '2020-12-30 16:54:11'),
(591, 'meeting', 'updated', 127, 'Meeting', 17, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-30 16:58:56', '2020-12-30 16:58:56'),
(592, 'meeting', 'updated', 127, 'Meeting', 17, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-30 16:59:17', '2020-12-30 16:59:17'),
(593, 'meeting', 'updated', 77, 'App\\Models\\Invitee', 30, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Safari/605.1.15\"}', '2020-12-30 17:42:41', '2020-12-30 17:42:41'),
(594, 'meeting', 'updated', 78, 'App\\Models\\Invitee', 31, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-30 17:54:08', '2020-12-30 17:54:08'),
(595, 'meeting', 'updated', 76, 'App\\Models\\Invitee', 28, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2020-12-30 17:56:28', '2020-12-30 17:56:28'),
(596, 'option', 'created', 15, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2021-01-12 01:00:17', '2021-01-12 01:00:17'),
(597, 'option', 'deleted', 15, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2021-01-12 01:00:29', '2021-01-12 01:00:29'),
(598, 'option', 'updated', 8, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2021-01-12 13:29:40', '2021-01-12 13:29:40'),
(599, 'option', 'updated', 8, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2021-01-12 13:31:24', '2021-01-12 13:31:24'),
(600, 'meeting', 'created', 128, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.13\"}', '2021-01-12 17:37:25', '2021-01-12 17:37:25'),
(601, 'meeting', 'updated', 128, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"143.255.87.118\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2021-01-12 18:08:50', '2021-01-12 18:08:50'),
(602, 'meeting', 'updated', 80, 'App\\Models\\Invitee', 14, 'App\\Models\\User', '{\"ip\": \"190.200.35.21\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-12 18:11:13', '2021-01-12 18:11:13'),
(603, 'meeting', 'updated', 128, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"143.255.87.118\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\"}', '2021-01-12 18:18:52', '2021-01-12 18:18:52'),
(604, 'meeting', 'updated', 128, 'Meeting', 14, 'App\\Models\\User', '{\"ip\": \"190.200.35.21\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-12 18:21:18', '2021-01-12 18:21:18'),
(605, 'meeting', 'updated', 80, 'App\\Models\\Invitee', 14, 'App\\Models\\User', '{\"ip\": \"190.200.35.21\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-12 18:23:09', '2021-01-12 18:23:09'),
(606, 'meeting', 'created', 129, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-15 23:31:25', '2021-01-15 23:31:25'),
(607, 'meeting', 'updated', 129, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-15 23:35:00', '2021-01-15 23:35:00'),
(608, 'meeting', 'created', 130, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-16 11:51:32', '2021-01-16 11:51:32'),
(609, 'meeting', 'updated', 130, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-16 11:55:53', '2021-01-16 11:55:53'),
(610, 'meeting', 'updated', 130, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-16 11:56:51', '2021-01-16 11:56:51'),
(611, 'meeting', 'updated', 130, 'Meeting', 17, 'App\\Models\\User', '{\"ip\": \"186.29.205.253\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-16 12:01:41', '2021-01-16 12:01:41'),
(612, 'meeting', 'updated', 81, 'App\\Models\\Invitee', 33, 'App\\Models\\User', '{\"ip\": \"186.148.193.133\", \"user_agent\": \"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-16 12:05:04', '2021-01-16 12:05:04'),
(613, 'meeting', 'updated', 130, 'Meeting', 17, 'App\\Models\\User', '{\"ip\": \"186.29.205.253\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-16 12:11:47', '2021-01-16 12:11:47'),
(614, 'meeting', 'updated', 130, 'Meeting', 33, 'App\\Models\\User', '{\"ip\": \"186.148.193.133\", \"user_agent\": \"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-16 12:15:05', '2021-01-16 12:15:05'),
(615, 'meeting', 'updated', 81, 'App\\Models\\Invitee', 33, 'App\\Models\\User', '{\"ip\": \"186.148.193.133\", \"user_agent\": \"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-16 12:19:52', '2021-01-16 12:19:52'),
(616, 'meeting', 'created', 131, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-18 15:31:55', '2021-01-18 15:31:55'),
(617, 'meeting', 'updated', 131, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-18 15:31:55', '2021-01-18 15:31:55'),
(618, 'meeting', 'updated', 131, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-18 15:31:55', '2021-01-18 15:31:55'),
(619, 'meeting', 'updated', 131, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-18 15:31:55', '2021-01-18 15:31:55'),
(620, 'meeting', 'updated', 131, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-18 15:31:58', '2021-01-18 15:31:58'),
(621, 'option', 'created', 16, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-18 16:20:08', '2021-01-18 16:20:08'),
(622, 'option', 'created', 17, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-18 16:20:08', '2021-01-18 16:20:08'),
(623, 'option', 'deleted', 16, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-18 16:20:17', '2021-01-18 16:20:17'),
(624, 'meeting', 'created', 132, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-18 18:15:04', '2021-01-18 18:15:04'),
(625, 'meeting', 'created', 133, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-18 18:17:51', '2021-01-18 18:17:51'),
(626, 'meeting', 'created', 134, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-18 18:28:32', '2021-01-18 18:28:32'),
(627, 'meeting', 'created', 135, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-25 19:06:14', '2021-01-25 19:06:14'),
(628, 'meeting', 'updated', 135, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-25 19:06:44', '2021-01-25 19:06:44'),
(629, 'meeting', 'updated', 135, 'Meeting', 17, 'App\\Models\\User', '{\"ip\": \"186.29.207.41\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36\"}', '2021-01-25 19:19:37', '2021-01-25 19:19:37'),
(630, 'meeting', 'updated', 84, 'App\\Models\\Invitee', 33, 'App\\Models\\User', '{\"ip\": \"186.185.135.172\", \"user_agent\": \"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-25 19:21:24', '2021-01-25 19:21:24'),
(631, 'meeting', 'updated', 84, 'App\\Models\\Invitee', 33, 'App\\Models\\User', '{\"ip\": \"186.185.135.172\", \"user_agent\": \"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-25 19:25:25', '2021-01-25 19:25:25'),
(632, 'meeting', 'updated', 135, 'Meeting', 33, 'App\\Models\\User', '{\"ip\": \"186.185.135.172\", \"user_agent\": \"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-25 19:35:28', '2021-01-25 19:35:28'),
(633, 'meeting', 'created', 136, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-27 18:03:00', '2021-01-27 18:03:00'),
(634, 'meeting', 'updated', 136, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"143.255.87.118\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-27 18:09:17', '2021-01-27 18:09:17'),
(635, 'meeting', 'updated', 85, 'App\\Models\\Invitee', 3, 'App\\Models\\User', '{\"ip\": \"190.198.243.18\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-27 18:10:58', '2021-01-27 18:10:58'),
(636, 'meeting', 'updated', 86, 'App\\Models\\Invitee', 14, 'App\\Models\\User', '{\"ip\": \"190.198.243.18\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.93 Mobile Safari/537.36\"}', '2021-01-27 18:12:04', '2021-01-27 18:12:04'),
(637, 'meeting', 'updated', 136, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"143.255.87.118\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\"}', '2021-01-27 18:19:20', '2021-01-27 18:19:20'),
(638, 'meeting', 'updated', 136, 'Meeting', 14, 'App\\Models\\User', '{\"ip\": \"190.198.243.18\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.93 Mobile Safari/537.36\"}', '2021-01-27 18:22:08', '2021-01-27 18:22:08'),
(639, 'meeting', 'created', 137, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-29 11:02:19', '2021-01-29 11:02:19'),
(640, 'meeting', 'created', 138, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36\"}', '2021-01-29 21:22:00', '2021-01-29 21:22:00'),
(641, 'meeting', 'updated', 138, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36\"}', '2021-01-29 21:22:00', '2021-01-29 21:22:00'),
(642, 'meeting', 'updated', 138, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36\"}', '2021-01-29 21:22:00', '2021-01-29 21:22:00'),
(643, 'meeting', 'updated', 138, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36\"}', '2021-01-29 21:22:01', '2021-01-29 21:22:01'),
(644, 'meeting', 'updated', 138, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36\"}', '2021-01-29 21:22:04', '2021-01-29 21:22:04'),
(645, 'meeting', 'updated', 132, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36\"}', '2021-01-29 22:53:25', '2021-01-29 22:53:25'),
(646, 'meeting', 'created', 139, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-01-30 11:44:55', '2021-01-30 11:44:55'),
(647, 'meeting', 'created', 140, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.14\"}', '2021-02-07 16:21:10', '2021-02-07 16:21:10'),
(648, 'meeting', 'created', 141, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.74.0 PHP/7.4.15\"}', '2021-02-22 11:54:21', '2021-02-22 11:54:21'),
(649, 'meeting', 'updated', 141, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.198.245.179\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74\"}', '2021-02-22 12:11:59', '2021-02-22 12:11:59'),
(650, 'meeting', 'created', 142, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\"}', '2021-03-09 22:15:49', '2021-03-09 22:15:49'),
(651, 'meeting', 'updated', 142, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\"}', '2021-03-09 22:15:49', '2021-03-09 22:15:49'),
(652, 'meeting', 'updated', 142, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\"}', '2021-03-09 22:15:49', '2021-03-09 22:15:49'),
(653, 'meeting', 'updated', 142, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\"}', '2021-03-09 22:15:50', '2021-03-09 22:15:50'),
(654, 'meeting', 'updated', 142, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\"}', '2021-03-09 22:15:52', '2021-03-09 22:15:52'),
(655, 'meeting', 'created', 91, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\"}', '2021-03-09 22:15:55', '2021-03-09 22:15:55'),
(656, 'meeting', 'created', 143, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.15\"}', '2021-03-10 18:07:08', '2021-03-10 18:07:08'),
(657, 'meeting', 'created', 144, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.200.40.211\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\"}', '2021-03-10 18:19:57', '2021-03-10 18:19:57'),
(658, 'meeting', 'updated', 144, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.200.40.211\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\"}', '2021-03-10 18:19:57', '2021-03-10 18:19:57'),
(659, 'meeting', 'updated', 144, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.200.40.211\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\"}', '2021-03-10 18:19:57', '2021-03-10 18:19:57'),
(660, 'meeting', 'updated', 144, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.200.40.211\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\"}', '2021-03-10 18:19:58', '2021-03-10 18:19:58'),
(661, 'meeting', 'updated', 144, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.200.40.211\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\"}', '2021-03-10 18:20:02', '2021-03-10 18:20:02'),
(662, 'meeting', 'updated', 144, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.200.40.211\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\"}', '2021-03-10 18:20:14', '2021-03-10 18:20:14'),
(663, 'meeting', 'created', 145, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:47:21', '2021-03-17 12:47:21'),
(664, 'meeting', 'updated', 145, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:47:21', '2021-03-17 12:47:21'),
(665, 'meeting', 'updated', 145, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:47:21', '2021-03-17 12:47:21'),
(666, 'meeting', 'updated', 145, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:47:21', '2021-03-17 12:47:21'),
(667, 'meeting', 'updated', 145, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:47:22', '2021-03-17 12:47:22'),
(668, 'meeting', 'created', 93, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:47:25', '2021-03-17 12:47:25'),
(669, 'meeting', 'created', 146, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:50:06', '2021-03-17 12:50:06'),
(670, 'meeting', 'updated', 146, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:50:06', '2021-03-17 12:50:06'),
(671, 'meeting', 'updated', 146, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:50:06', '2021-03-17 12:50:06'),
(672, 'meeting', 'updated', 146, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:50:07', '2021-03-17 12:50:07'),
(673, 'meeting', 'updated', 146, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:50:08', '2021-03-17 12:50:08'),
(674, 'meeting', 'created', 94, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 12:50:10', '2021-03-17 12:50:10'),
(675, 'meeting', 'created', 147, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"191.95.59.46\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1\"}', '2021-03-17 16:26:06', '2021-03-17 16:26:06'),
(676, 'meeting', 'updated', 147, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"191.95.59.46\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1\"}', '2021-03-17 16:26:06', '2021-03-17 16:26:06'),
(677, 'meeting', 'updated', 147, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"191.95.59.46\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1\"}', '2021-03-17 16:26:06', '2021-03-17 16:26:06'),
(678, 'meeting', 'updated', 147, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"191.95.59.46\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1\"}', '2021-03-17 16:26:07', '2021-03-17 16:26:07'),
(679, 'meeting', 'updated', 147, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"191.95.59.46\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1\"}', '2021-03-17 16:26:13', '2021-03-17 16:26:13'),
(680, 'meeting', 'created', 95, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"191.95.59.46\", \"user_agent\": \"Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1\"}', '2021-03-17 16:26:20', '2021-03-17 16:26:20'),
(681, 'meeting', 'created', 148, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 16:33:21', '2021-03-17 16:33:21'),
(682, 'meeting', 'updated', 148, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 16:33:29', '2021-03-17 16:33:29'),
(683, 'meeting', 'created', 149, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 16:35:08', '2021-03-17 16:35:08'),
(684, 'meeting', 'updated', 149, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-17 16:35:27', '2021-03-17 16:35:27'),
(685, 'meeting', 'created', 150, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-23 12:29:15', '2021-03-23 12:29:15'),
(686, 'meeting', 'updated', 150, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36\"}', '2021-03-23 12:31:52', '2021-03-23 12:31:52'),
(687, 'meeting', 'updated', 150, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 9; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36\"}', '2021-03-23 12:33:34', '2021-03-23 12:33:34'),
(688, 'option', 'created', 18, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-24 01:18:19', '2021-03-24 01:18:19'),
(689, 'meeting', 'created', 151, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-24 10:56:05', '2021-03-24 10:56:05'),
(690, 'meeting', 'updated', 151, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-24 10:56:05', '2021-03-24 10:56:05'),
(691, 'meeting', 'updated', 151, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-24 10:56:05', '2021-03-24 10:56:05'),
(692, 'meeting', 'updated', 151, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-24 10:56:05', '2021-03-24 10:56:05'),
(693, 'meeting', 'updated', 151, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-24 10:56:14', '2021-03-24 10:56:14'),
(694, 'meeting', 'created', 97, 'App\\Models\\Invitee', 1, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-24 10:56:21', '2021-03-24 10:56:21'),
(695, 'meeting', 'created', 152, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-24 11:00:19', '2021-03-24 11:00:19'),
(696, 'meeting', 'updated', 152, 'Meeting', 2, 'App\\Models\\User', '{\"ip\": \"190.78.109.93\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\"}', '2021-03-24 11:01:41', '2021-03-24 11:01:41'),
(697, 'option', 'created', 19, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-25 02:11:58', '2021-03-25 02:11:58'),
(698, 'option', 'created', 20, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-31 00:50:30', '2021-03-31 00:50:30'),
(699, 'option', 'created', 21, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-31 00:55:18', '2021-03-31 00:55:18'),
(700, 'option', 'created', 22, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-31 01:10:27', '2021-03-31 01:10:27'),
(701, 'option', 'created', 23, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-31 01:24:23', '2021-03-31 01:24:23'),
(702, 'option', 'created', 24, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-31 01:39:10', '2021-03-31 01:39:10'),
(703, 'meeting', 'created', 153, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-03-31 16:15:04', '2021-03-31 16:15:04'),
(704, 'meeting', 'created', 154, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-04-03 14:20:44', '2021-04-03 14:20:44'),
(705, 'meeting', 'created', 155, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.75.0 PHP/7.4.16\"}', '2021-04-03 14:25:06', '2021-04-03 14:25:06'),
(706, 'meeting', 'created', 156, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-18 20:17:26', '2021-04-18 20:17:26'),
(707, 'meeting', 'created', 157, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-18 21:21:26', '2021-04-18 21:21:26'),
(708, 'option', 'updated', 3, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 12:58:22', '2021-04-19 12:58:22'),
(709, 'option', 'updated', 4, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 12:58:55', '2021-04-19 12:58:55'),
(710, 'option', 'updated', 5, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 12:59:24', '2021-04-19 12:59:24'),
(711, 'option', 'updated', 6, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 12:59:57', '2021-04-19 12:59:57'),
(712, 'option', 'updated', 7, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 13:00:27', '2021-04-19 13:00:27'),
(713, 'option', 'updated', 8, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 13:00:56', '2021-04-19 13:00:56'),
(714, 'option', 'updated', 9, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 13:01:28', '2021-04-19 13:01:28'),
(715, 'option', 'updated', 10, 'Option', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-19 13:01:46', '2021-04-19 13:01:46'),
(716, 'meeting', 'created', 158, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\"}', '2021-04-20 22:03:29', '2021-04-20 22:03:29'),
(717, 'meeting', 'updated', 158, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\"}', '2021-04-20 22:03:29', '2021-04-20 22:03:29'),
(718, 'meeting', 'updated', 158, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\"}', '2021-04-20 22:03:29', '2021-04-20 22:03:29'),
(719, 'meeting', 'updated', 158, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\"}', '2021-04-20 22:03:29', '2021-04-20 22:03:29'),
(720, 'meeting', 'updated', 158, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"186.84.20.30\", \"user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36\"}', '2021-04-20 22:03:33', '2021-04-20 22:03:33'),
(721, 'meeting', 'created', 159, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-21 20:34:51', '2021-04-21 20:34:51'),
(722, 'meeting', 'updated', 159, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-21 20:44:58', '2021-04-21 20:44:58'),
(723, 'meeting', 'created', 160, 'Meeting', 1, 'App\\Models\\User', '{\"ip\": \"168.119.36.183\", \"user_agent\": \"GuzzleHttp/6.5.5 curl/7.76.0 PHP/7.4.16\"}', '2021-04-26 09:44:28', '2021-04-26 09:44:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_room_id` bigint UNSIGNED DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`id`, `uuid`, `chat_room_id`, `message`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(1, '6503b035-ca7d-4c5e-a5de-196d459772ac', 1, 'Hi', 1, NULL, '2020-10-20 12:47:25', '2020-10-20 12:47:25'),
(2, '27450490-7f84-4a04-8bc5-1366a5075978', 1, 'Nagesh here from Kodemint!', 1, NULL, '2020-10-20 12:48:05', '2020-10-20 12:48:05'),
(3, 'f817cd51-d2c8-468e-93dd-c04136b29a00', 1, 'https://streaming.mybusinessacademypro.com/m/OgHikP', 1, NULL, '2020-10-20 12:48:20', '2020-10-20 12:48:20'),
(4, '8eba31f1-c29a-4111-a251-93266de7537f', 1, 'Meeting Code&nbsp;OgHikP', 1, NULL, '2020-10-20 12:48:47', '2020-10-20 12:48:47'),
(5, 'b0dca3bf-8b37-4835-94e3-1efd47407e5b', 1, 'eveything working right?', 1, NULL, '2020-10-20 12:49:49', '2020-10-20 12:49:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_conversation_at` datetime DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_rooms`
--

INSERT INTO `chat_rooms` (`id`, `uuid`, `name`, `last_conversation_at`, `meta`, `created_at`, `updated_at`) VALUES
(1, '68679fbc-a067-44bc-9869-34c38d97d30a', NULL, '2020-10-20 14:49:49', '[]', '2020-10-20 12:47:25', '2020-10-20 12:49:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_room_members`
--

CREATE TABLE `chat_room_members` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_room_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `joined_at` datetime DEFAULT NULL,
  `left_at` datetime DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_room_members`
--

INSERT INTO `chat_room_members` (`id`, `chat_room_id`, `user_id`, `joined_at`, `left_at`, `is_owner`, `is_moderator`, `meta`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2020-10-20 14:47:25', NULL, 0, 0, NULL, '2020-10-20 12:47:25', '2020-10-20 12:47:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configs`
--

CREATE TABLE `configs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` json DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configs`
--

INSERT INTO `configs` (`id`, `name`, `value`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'domain', '{\"app\": \"https://streaming.mybusinessacademypro.com\"}', NULL, '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(2, 'notification', '{\"vapid_public_key\": \"BCICvkPyi4TN73WDekrIe-j_Fx5JQPAVOZUYorJouIF8Ua06Hgx7mrI0XmgUjkptE4IS3vA_tqtY7ZmLCmVPG_A\", \"vapid_private_key\": \"dK2utSrHPxeFqHuNf6T_MX3T2LMfSSb5M_UxDlZbtko\"}', NULL, '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(3, 'pusher', '{\"pusher_app_id\": \"1075997\", \"pusher_app_key\": \"c92816561f9134ce8d8c\", \"pusher_app_secret\": \"f5bc62681836080c41c4\", \"pusher_app_cluster\": \"us2\"}', NULL, '2020-10-17 11:31:33', '2020-10-17 11:31:33'),
(4, 'signal', '{\"url\": \"https://signal.ftxlive.com:9001/\"}', NULL, '2020-10-17 11:32:20', '2020-10-20 10:40:06'),
(5, 'ice', '{\"servers\": [{\"urls\": \"stun:ice.ftxlive.com:5349\", \"secret\": \"\", \"username\": \"\", \"credential\": \"\", \"expires_in\": \"43200\", \"time_difference\": \"0\", \"requires_credential\": false, \"expirable_credentials\": false}, {\"urls\": \"turn:ice.ftxlive.com:5349\", \"secret\": \"ab373bb90e2aaea36f1acf50f4de9304cda65092\", \"username\": \"\", \"credential\": \"\", \"expires_in\": \"43200\", \"time_difference\": \"0\", \"requires_credential\": true, \"expirable_credentials\": true}]}', NULL, '2020-10-17 11:32:40', '2020-10-20 10:40:36'),
(6, 'mail', '{\"driver\": \"smtp\", \"from_name\": \"MBA Pro\", \"smtp_host\": \"mail.mybusinessacademypro.com\", \"smtp_port\": \"465\", \"from_address\": \"streaming@mybusinessacademypro.com\", \"smtp_password\": \"mbapro2020\", \"smtp_username\": \"streaming@mybusinessacademypro.com\", \"mailgun_domain\": \"\", \"mailgun_secret\": \"\", \"smtp_encryption\": \"ssl\", \"mailgun_endpoint\": \"\"}', NULL, '2020-10-17 11:45:26', '2020-10-17 11:45:26'),
(7, 'ui', '{\"layout\": \"default-layout\", \"wallpaper\": false, \"toggle_rtl\": false, \"full_screen\": false, \"page_header\": {\"sort\": \"\", \"links\": [], \"title\": \"\", \"buttons\": [], \"sub_title\": \"\", \"hide_links\": \"\"}, \"scroll_lock\": false, \"color_scheme\": \"custom\", \"app_is_loading\": false, \"top_navbar_hide\": false, \"page_footer_show\": true, \"page_header_show\": true, \"top_navbar_color\": \"gray-darker\", \"top_navbar_fixed\": true, \"left_sidebar_show\": false, \"left_sidebar_color\": \"wallpaper\", \"left_sidebar_style\": \"folded\", \"modal_sidebar_show\": false, \"right_sidebar_show\": false, \"search_screen_show\": false, \"config_sidebar_show\": false, \"left_sidebar_height\": \"normal\", \"left_sidebar_shadow\": true, \"modal_sidebar_color\": \"black\", \"modal_sidebar_style\": \"over\", \"nav_menu_horizontal\": false, \"right_sidebar_color\": \"gray-darkest\", \"right_sidebar_style\": \"over\", \"config_sidebar_color\": \"light\", \"modal_sidebar_height\": \"full\", \"modal_sidebar_shadow\": true, \"nav_menu_letter_icon\": false, \"page_header_is_boxed\": false, \"right_sidebar_height\": \"full\", \"right_sidebar_shadow\": true, \"special_sidebar_show\": false, \"left_sidebar_backdrop\": true, \"notification_duration\": \"5000\", \"notification_position\": \"bottom-center\", \"page_background_color\": \"black\", \"special_sidebar_color\": \"black\", \"top_navbar_logo_light\": true, \"modal_sidebar_backdrop\": true, \"page_color_scheme_type\": \"light\", \"right_sidebar_backdrop\": true, \"left_sidebar_logo_light\": true, \"nav_menu_thumb_on_right\": false, \"left_sidebar_backdrop_color\": \"dark\", \"modal_sidebar_backdrop_color\": \"dark\", \"page_header_background_color\": \"transparent\", \"right_sidebar_backdrop_color\": \"dark\", \"page_container_background_color\": \"gray-darkest\"}', NULL, '2020-10-17 13:54:56', '2020-10-28 03:41:38'),
(8, 'basic', '{\"org_fax\": \"\", \"app_desc\": \"Streaming, Webinars, Conferences\", \"app_name\": \"MbaPro Streaming\", \"org_city\": \"\", \"org_name\": \"Mba Pro Streaming\", \"org_email\": \"soporte@mybusinessacademypro.com\", \"org_phone\": \"\", \"org_state\": \"\", \"org_country\": \"Panamá\", \"org_website\": \"https://mybusinessacademypro.com/\", \"org_zipcode\": \"\", \"org_tax_number\": \"\", \"app_theme_color\": \"#38B6FF\", \"org_running_body\": \"\", \"org_address_line1\": \"Calle 55-30 A Urbanización Obarrio Edificio SFC\", \"org_address_line2\": \"\", \"org_foundation_date\": \"1970-01-01\", \"app_background_color\": \"#ffffff\", \"org_recognition_body\": \"\", \"org_recognition_number\": \"\"}', NULL, '2020-10-17 13:59:22', '2020-10-28 03:45:30'),
(9, 'system', '{\"todo\": true, \"https\": false, \"backup\": false, \"locale\": \"en\", \"currency\": \"USD\", \"fy_start\": \"\", \"per_page\": \"10\", \"timezone\": \"Africa/Accra\", \"email_log\": false, \"ip_filter\": false, \"date_format\": \"D-MM-YY\", \"time_format\": \"h:mm A\", \"error_display\": false, \"footer_credit\": \"FTX Live\", \"print_preview\": true, \"email_template\": false, \"frontend_website\": \"\", \"maintenance_mode\": false, \"enable_aths_alert\": false, \"date_time_always_eng\": false, \"maintenance_mode_message\": \"\"}', NULL, '2020-10-20 10:45:13', '2020-11-19 18:21:27'),
(10, 'auth', '{\"github\": false, \"google\": false, \"twitter\": false, \"facebook\": false, \"lock_screen\": false, \"registration\": true, \"social_login\": false, \"sms_otp_login\": false, \"login_throttle\": false, \"reset_password\": true, \"email_otp_login\": false, \"account_approval\": false, \"github_client_id\": \"\", \"google_client_id\": \"\", \"session_lifetime\": \"1440\", \"twitter_client_id\": \"\", \"email_verification\": true, \"facebook_client_id\": \"\", \"lock_screen_timeout\": \"60\", \"two_factor_security\": false, \"github_client_secret\": \"\", \"google_client_secret\": \"\", \"twitter_client_secret\": \"\", \"facebook_client_secret\": \"\", \"login_throttle_attempt\": \"\", \"login_throttle_timeout\": \"\", \"reset_password_token_lifetime\": \"30\"}', NULL, '2020-10-26 03:04:59', '2021-03-17 16:28:44'),
(11, 'chat', '{\"enabled\": true, \"enter_to_submit\": true, \"separate_window\": false, \"enable_auto_open\": true, \"mute_sound_notification\": false}', NULL, '2020-10-28 03:42:05', '2020-10-28 03:42:05'),
(12, 'meeting', '{\"layout\": \"fullpage\", \"debug_mode\": false, \"enable_pam\": false, \"force_turn\": false, \"enable_chat\": false, \"disable_scroll\": false, \"mirrored_video\": true, \"enable_recording\": true, \"footer_auto_hide\": false, \"speech_detection\": false, \"enable_whiteboard\": true, \"enable_file_sharing\": false, \"enable_hand_gesture\": true, \"enable_link_sharing\": true, \"enable_screen_sharing\": true, \"recording_format_audio\": \"audio/webm\", \"recording_format_video\": \"video/webm\", \"instant_meeting_auto_ended\": \"180\", \"mute_participants_on_start\": false, \"pam_open_join_as_guest_page\": true, \"allow_deleting_ended_meetings\": false, \"allow_joining_without_devices\": false, \"pam_enable_whiteboard_for_guest\": true, \"allow_deleting_cancelled_meetings\": false, \"pam_enable_link_sharing_for_guest\": true, \"pam_enable_screen_sharing_for_guest\": true}', NULL, '2021-04-27 13:22:58', '2021-04-27 13:22:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `uuid`, `name`, `email`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'e910ea19-912c-4d8f-8a3b-8b73934e9b76', 'luisana', 'luisanaelenamarin@gmail.com', 2, NULL, '2020-10-17 11:49:24', '2020-10-17 11:49:24'),
(2, '548717c4-f9dc-4b06-81c5-1c4cffb5e899', 'luisana', 'luisanaelenamarin@gmail.com', 2, NULL, '2020-10-17 11:49:24', '2020-10-17 11:49:24'),
(4, '1c5b5537-0744-49f5-8431-e5e66229a38d', 'Lester', 'lestermorales@sinergiared.com', NULL, NULL, '2020-10-20 01:15:16', '2020-10-20 01:15:16'),
(5, '7fbb6027-fb26-4b49-b03f-07f6a88c0653', 'Lester Morales', 'mglesther@hotmail.com', 6, NULL, '2020-10-20 01:19:44', '2020-10-20 01:19:44'),
(6, '0b1a5819-3328-4047-b0ef-bcf5d10d6e0c', 'Kode Mint', 'hi@kodemint.in', 7, NULL, '2020-10-20 07:43:34', '2020-10-20 07:43:34'),
(7, '02807717-fac9-4ddd-8468-ca33a9a830d3', 'Prueba', 'prueba@gmail.com', 8, NULL, '2020-10-20 10:28:03', '2020-10-20 10:28:03'),
(8, 'facac60a-b5b1-4c0c-8eb9-b3aa0144c71b', 'lvmb29@gmail.com', 'lvmb29@gmail.com', 3, NULL, '2020-10-20 08:16:26', '2020-10-20 08:16:26'),
(9, '559a0788-d94f-490f-9032-fc2d095c3f52', 'pruebacliente@gmail.com', 'pruebacliente@gmail.com', 9, NULL, '2020-10-20 10:32:23', '2020-10-20 10:32:23'),
(10, 'acaa273a-a67b-463d-801b-e2a7add03428', 'ramalejtq@gmail.com', 'ramalejtq@gmail.com', 10, NULL, '2020-10-20 13:58:29', '2020-10-20 13:58:29'),
(11, '779eb59e-91bb-44c8-a219-3ee1f10c301a', 'taniatostado@mybusinessacademypro.com', 'taniatostado@mybusinessacademypro.com', 11, NULL, '2020-10-20 14:05:27', '2020-10-20 14:05:27'),
(12, '1020e60d-e0f7-4581-b495-5512a7e41703', 'erickreynaga@mybusinessacademypro.com', 'erickreynaga@mybusinessacademypro.com', 5, NULL, '2020-10-20 14:52:08', '2020-10-20 14:52:08'),
(13, '43f93928-29f9-48f2-a987-be55743a4f0d', 'ramalejtq@hotmail.com', 'ramalejtq@hotmail.com', 12, NULL, '2020-10-20 16:32:28', '2020-10-20 16:32:28'),
(14, 'b83a5d26-fdc7-41b1-9f4c-788e11ab5a51', 'lestermorales@sinergiared.com', 'lestermorales@sinergiared.com', 13, NULL, '2020-10-20 16:51:41', '2020-10-20 16:51:41'),
(15, '3a85c415-86d5-49a7-aa6f-e9f4e2ecccfe', 'fjms93@gmail.com', 'fjms93@gmail.com', 14, NULL, '2020-10-20 17:40:24', '2020-10-20 17:40:24'),
(16, 'e2db02bd-27e5-48bc-b044-313a050efd31', 'Ramon Picon', 'soporte@sinergiared.com', 15, NULL, '2020-10-20 23:02:20', '2020-10-20 23:02:20'),
(17, 'be00cf5d-7ae3-4174-af1b-0d9546f87ab0', 'Noemy Aleman', 'noemy.producer@gmail.com', 16, NULL, '2020-10-24 00:04:56', '2020-10-24 00:04:56'),
(18, '36a3adff-90ea-4970-aa77-f9b6d2941954', 'manuelguerrero@mybusinessacademypro.com', 'manuelguerrero@mybusinessacademypro.com', 17, NULL, '2020-10-23 20:04:37', '2020-10-23 20:04:37'),
(19, '64557553-6bdd-473d-bcf8-646807124322', 'conferencias_lm@hotmail.com', 'conferencias_lm@hotmail.com', 18, NULL, '2020-10-24 18:07:36', '2020-10-24 18:07:36'),
(20, '1edd0a2a-f310-4dce-9e1b-6409fd41ad88', 'recursos.marketing@gmail.com', 'recursos.marketing@gmail.com', 19, NULL, '2020-10-24 18:44:51', '2020-10-24 18:44:51'),
(21, 'a172204d-c618-411c-8e07-ae8e8deafc68', 'MBA PRO', 'mail@mybusinessacademypro.com', 1, NULL, '2020-10-28 03:28:07', '2020-10-28 03:28:07'),
(23, '433d7341-f74d-4aaa-9895-f7f6abcb1f6e', 'prueba-luisana@gmail.com', 'prueba-luisana@gmail.com', 21, NULL, '2020-10-30 15:59:04', '2020-10-30 15:59:04'),
(24, '8455f2b8-0623-4834-a4a7-f1e7a399f0e2', 'Douglas Carrillo', 'dcarrillo@fenttix.com', 22, NULL, '2020-10-31 01:37:31', '2020-10-31 01:37:31'),
(25, '43e36dcf-4c81-4c35-8886-cd2c95a28ef7', 'prueba2@mail.com', 'prueba2@mail.com', 23, NULL, '2020-10-31 12:34:57', '2020-10-31 12:34:57'),
(26, '05536ff0-b500-4e31-abf4-806fedcfb226', 'alexisjoseva95@gmail.com', 'alexisjoseva95@gmail.com', 24, NULL, '2020-12-14 10:06:58', '2020-12-14 10:06:58'),
(27, 'a4db3371-ec84-4181-b32e-2fc0e7e9ffd1', 'pietropasqualis55@gmail.com', 'pietropasqualis55@gmail.com', 25, NULL, '2020-12-14 10:31:02', '2020-12-14 10:31:02'),
(28, '3ea2fc55-f281-4010-a085-820b6be910c3', 'cliente9@sinergiared.com', 'cliente9@sinergiared.com', 26, NULL, '2020-12-14 15:18:39', '2020-12-14 15:18:39'),
(29, '4c7cfd3e-b1ea-41f4-9f08-1fbc7e20544c', 'tes900@gmail.com', 'tes900@gmail.com', 27, NULL, '2020-12-14 20:05:59', '2020-12-14 20:05:59'),
(30, '67d328a7-6cc6-4212-be3d-99910e57786c', 'admin@shapinetwork.com', 'admin@shapinetwork.com', 28, NULL, '2020-12-15 10:56:19', '2020-12-15 10:56:19'),
(31, '8810cefd-3328-4c07-b44d-acd07a82b634', 'tes5000@gmail.com', 'tes5000@gmail.com', 29, NULL, '2020-12-15 15:57:19', '2020-12-15 15:57:19'),
(32, '48b876c5-b856-4e01-875b-e0403b1aaeeb', 'soporte2@gmail.com', 'soporte2@gmail.com', 30, NULL, '2020-12-30 12:38:27', '2020-12-30 12:38:27'),
(33, '2416d912-9a21-4f67-8ac5-0e5a2eba9ec8', 'soporte1@gmail.com', 'soporte1@gmail.com', 31, NULL, '2020-12-30 12:53:38', '2020-12-30 12:53:38'),
(34, '325d73b4-82d8-4a49-97f8-1bed0df10554', 'soporte3@gmail.com', 'soporte3@gmail.com', 32, NULL, '2020-12-30 13:01:42', '2020-12-30 13:01:42'),
(35, 'e06b440a-e027-44a2-9b61-c2944ae6e997', 'cliente2@sinergiared.com', 'cliente2@sinergiared.com', 33, NULL, '2021-01-16 06:58:56', '2021-01-16 06:58:56'),
(36, '35dc7209-951c-45be-b1cd-f0a13ff97e41', 'yanirapicon@sinergiared.com', 'yanirapicon@sinergiared.com', 34, NULL, '2021-01-16 07:08:44', '2021-01-16 07:08:44'),
(37, 'cffd39d4-8624-4097-bc8a-aa76db6cbb13', 'cliente6@sinergiared.com', 'cliente6@sinergiared.com', 35, NULL, '2021-01-25 14:16:22', '2021-01-25 14:16:22'),
(38, 'c28ea515-10f6-4003-aeff-54dbb039f7f5', 'soporte5@gmail.com', 'soporte5@gmail.com', 36, NULL, '2021-01-29 13:28:15', '2021-01-29 13:28:15'),
(39, '96738d69-668c-40e4-8d5d-632a8da2501c', 'cliente6@mybusinessacademypro.com', 'cliente6@mybusinessacademypro.com', 37, NULL, '2021-04-18 16:13:32', '2021-04-18 16:13:32'),
(40, '1a5a8d0a-1a81-4272-9467-efc29d1c2591', 'crisleivys@mail.com', 'crisleivys@mail.com', 38, NULL, '2021-04-18 16:21:26', '2021-04-18 16:21:26'),
(41, '545bf806-48b9-4bc5-a5cc-14d589fd1908', '5@gmail.com', '5@gmail.com', 39, NULL, '2021-04-21 15:34:51', '2021-04-21 15:34:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_segment`
--

CREATE TABLE `contact_segment` (
  `contact_id` bigint UNSIGNED DEFAULT NULL,
  `segment_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_user`
--

CREATE TABLE `contact_user` (
  `contact_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agenda` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date_time` datetime DEFAULT NULL,
  `period` int NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `meetings`
--

INSERT INTO `meetings` (`id`, `uuid`, `type`, `title`, `agenda`, `description`, `start_date_time`, `period`, `category_id`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'ef79462a-4d96-4e82-83cb-41c06f3268b2', 'webinar', NULL, NULL, NULL, '2020-10-17 11:34:01', 60, NULL, 1, '{\"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"1UyqmYa8hIgIG2UUpIik\", \"identifier\": \"xxtDu8\", \"started_at\": \"2020-10-17T13:30:06.543464Z\", \"accessible_via_link\": true}', '2020-10-17 11:30:06', '2020-10-17 11:30:06'),
(2, '5bd020a8-4883-4517-b400-80518911d87a', 'webinar', NULL, NULL, NULL, '2020-10-17 13:33:28', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.167.244.168\", \"start\": \"2020-10-17T13:33:29.393431Z\"}, {\"ip\": \"186.167.244.168\", \"start\": \"2020-10-17T13:33:35.250843Z\"}, {\"ip\": \"186.167.244.168\", \"start\": \"2020-10-17T13:34:14.133289Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"HtiJ940NyY4ZQC8uFWoe\", \"identifier\": \"WQNQCW\", \"started_at\": \"2020-10-17T13:33:28.931232Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-17 11:33:28', '2020-10-17 11:34:14'),
(3, 'a6b907e1-e63b-4fca-8fa1-d84c3ea92f49', 'webinar', NULL, NULL, NULL, '2020-10-17 13:34:36', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:34:36.497008Z\"}, {\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:34:40.540210Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"rYLnOt1UGAH1fKnoWOVv\", \"identifier\": \"2c5JgC\", \"started_at\": \"2020-10-17T13:34:36.057853Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-17 11:34:36', '2020-10-17 11:34:40'),
(4, '1fb4fd3b-a6e9-4928-83e6-ce0e638253d3', 'webinar', NULL, NULL, NULL, '2020-10-17 13:36:23', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:36:23.750427Z\"}, {\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:36:25.108607Z\"}, {\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:36:31.113594Z\"}, {\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:36:35.618841Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"ZuBL9nUtU7vunnuNNpoN\", \"identifier\": \"xMA4im\", \"started_at\": \"2020-10-17T13:36:23.311918Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-17 11:36:23', '2020-10-17 11:36:35'),
(5, '4197c0d8-63bb-4fce-bb4f-452a44d10fdf', 'webinar', NULL, NULL, NULL, '2020-10-17 13:36:46', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:36:46.573213Z\"}, {\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:36:48.198610Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"jfiIAqheGD5PYMkxtSaG\", \"identifier\": \"NakOMh\", \"started_at\": \"2020-10-17T13:36:46.136682Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-17 11:36:46', '2020-10-17 11:36:48'),
(6, 'c50de9e2-496c-4739-b006-353170cb47dc', 'webinar', NULL, NULL, NULL, '2020-10-17 13:37:30', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.167.244.168\", \"start\": \"2020-10-17T13:37:30.727103Z\"}, {\"ip\": \"186.167.244.168\", \"start\": \"2020-10-17T13:37:34.485120Z\"}, {\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:40:08.571460Z\"}, {\"ip\": \"186.167.244.168\", \"start\": \"2020-10-17T13:48:42.765237Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"vuf6wnODQ9nTJzWiqvRh\", \"identifier\": \"HJ2MdF\", \"started_at\": \"2020-10-17T13:37:30.291299Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-17 11:37:30', '2020-10-17 11:48:42'),
(7, '1ad6f53d-f125-4868-9bc0-88e16900a25c', 'video_conference', NULL, NULL, NULL, '2020-10-19 09:14:47', 60, NULL, 1, '{\"logs\": [{\"ip\": \"43.229.75.239\", \"start\": \"2020-10-19T09:14:48.202363Z\"}, {\"ip\": \"43.229.75.239\", \"start\": \"2020-10-19T09:14:51.798554Z\"}, {\"ip\": \"43.229.75.239\", \"start\": \"2020-10-19T09:15:33.279405Z\"}, {\"ip\": \"157.34.14.90\", \"start\": \"2020-10-19T09:45:00.191064Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"7dWuhuQk2kmvBjlrF5Vl\", \"identifier\": \"YHoYA7\", \"started_at\": \"2020-10-19T09:14:47.747533Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-19 07:14:47', '2020-10-19 07:45:00'),
(8, 'df9ab8d6-1c23-42a8-960d-edc9acff2956', 'webinar', NULL, NULL, NULL, '2020-10-19 12:32:05', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T12:32:05.936622Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T12:32:11.583930Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"fAIFX0pWhUl7kkh5QDOI\", \"identifier\": \"I2pqaU\", \"started_at\": \"2020-10-19T12:32:05.471394Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-19 10:32:05', '2020-10-19 10:32:11'),
(9, 'd918ee96-2399-434f-bbb9-02bb9757f094', 'webinar', NULL, NULL, NULL, '2020-10-19 13:28:14', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:28:14.909202Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:28:18.426645Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"8ZtDUAq0cKj87lJbNxfk\", \"identifier\": \"JzQek6\", \"started_at\": \"2020-10-19T13:28:14.452004Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-19 11:28:14', '2020-10-19 11:28:18'),
(10, '9df79f2e-6865-47c9-b55a-3378cad31953', 'video_conference', NULL, NULL, NULL, '2020-10-19 13:28:37', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:28:38.036708Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:28:40.964157Z\"}, {\"ip\": \"186.167.244.6\", \"start\": \"2020-10-19T13:38:36.308199Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"BCGkqhxLmYMAQmw90xeM\", \"identifier\": \"ROitIm\", \"started_at\": \"2020-10-19T13:28:37.598083Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-19 11:28:37', '2020-10-19 11:38:36'),
(11, '9539225a-d02c-4368-a83d-7c632f93aeea', 'video_conference', NULL, NULL, NULL, '2020-10-20 03:16:15', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T03:16:16.109754Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T03:16:20.936813Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"03eGY53oXSwOh22lwKby\", \"identifier\": \"Xvck39\", \"started_at\": \"2020-10-20T03:16:15.662978Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 01:16:15', '2020-10-20 01:16:20'),
(12, '921ebf10-c689-4b9f-b1d6-f8627f0aa69b', 'live_class', NULL, NULL, NULL, '2020-10-20 03:16:45', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T03:16:46.250628Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T03:16:47.923516Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"AYaO8bCWrm27Fr3pgiAO\", \"identifier\": \"qC6Bqm\", \"started_at\": \"2020-10-20T03:16:45.809595Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 01:16:45', '2020-10-20 01:16:47'),
(13, 'c4cbf7f2-7fef-4f3d-ac68-1a72a6206eda', 'live_class', NULL, NULL, NULL, '2020-10-20 03:20:03', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T03:20:03.519978Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T03:20:05.174996Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"kxpt65C8Ujkwex1cZ9LZ\", \"identifier\": \"39fapp\", \"started_at\": \"2020-10-20T03:20:03.077478Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 01:20:03', '2020-10-20 01:20:05'),
(14, '1ebf40ea-311a-44ce-9230-5a79f18da3e9', 'video_conference', NULL, NULL, NULL, '2020-10-20 04:16:53', 60, NULL, 1, '{\"logs\": [{\"ip\": \"43.229.75.243\", \"start\": \"2020-10-20T04:16:53.746807Z\"}, {\"ip\": \"43.229.75.243\", \"start\": \"2020-10-20T04:16:58.302389Z\"}], \"config\": [], \"status\": \"ended\", \"instant\": true, \"room_id\": \"ijo25VRVvnaXygNHL3xK\", \"ended_at\": \"2020-10-20T04:17:10.893022Z\", \"identifier\": \"7GsgqV\", \"started_at\": \"2020-10-20T04:16:53.196537Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 02:16:53', '2020-10-20 02:17:10'),
(15, 'a8ce8ac6-653d-4e34-9c92-9cba5188ea82', 'live_class', NULL, NULL, NULL, '2020-10-20 05:02:09', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T05:02:09.619950Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-20T05:02:11.720771Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"89R52NreJqR7e8b3cr4k\", \"identifier\": \"54OBfF\", \"started_at\": \"2020-10-20T05:02:09.178519Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 03:02:09', '2020-10-20 03:02:11'),
(16, '9e9ee3d0-c99b-48e1-9c43-7429ad0d6f62', 'video_conference', NULL, NULL, NULL, '2020-10-20 09:40:55', 60, NULL, 1, '{\"logs\": [{\"ip\": \"43.229.75.243\", \"start\": \"2020-10-20T09:40:55.823361Z\"}, {\"ip\": \"43.229.75.243\", \"start\": \"2020-10-20T09:41:01.833351Z\"}], \"config\": [], \"status\": \"ended\", \"instant\": true, \"room_id\": \"AKqHoCQVBIX65Wfj3Jbh\", \"ended_at\": \"2020-10-20T09:42:43.688288Z\", \"identifier\": \"doVKt9\", \"started_at\": \"2020-10-20T09:40:55.352472Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 07:40:55', '2020-10-20 07:42:43'),
(17, 'c61d920e-87c2-4150-a15b-9c7316516bdc', 'video_conference', NULL, NULL, NULL, '2020-10-20 09:43:48', 60, NULL, 1, '{\"logs\": [{\"ip\": \"43.229.75.243\", \"start\": \"2020-10-20T09:43:48.593214Z\"}, {\"ip\": \"43.229.75.243\", \"start\": \"2020-10-20T09:43:50.838872Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"BcM0D9ltkjZG8U1kEuFZ\", \"identifier\": \"LsfJNE\", \"started_at\": \"2020-10-20T09:43:48.155402Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 07:43:48', '2020-10-20 07:43:50'),
(18, '15c5bafb-f0ab-4afc-b999-e8f4cdaf859f', 'webinar', NULL, NULL, NULL, '2020-10-20 12:03:11', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:03:12.108123Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:03:20.334608Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"cBtGsJrzGoIVgxMQxsKi\", \"identifier\": \"IuVDjx\", \"started_at\": \"2020-10-20T12:03:11.653513Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 10:03:11', '2020-10-20 10:03:20'),
(19, '193bede4-5368-4089-bd18-a7528ec97734', 'video_conference', NULL, NULL, NULL, '2020-10-20 12:03:27', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:03:28.412815Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:03:29.854348Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:03:42.032910Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:03:46.249394Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"BobdD8ec9ZAPFCZPWzPC\", \"identifier\": \"NRduBf\", \"started_at\": \"2020-10-20T12:03:27.974297Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 10:03:27', '2020-10-20 10:03:46'),
(20, 'd949f28d-8c28-4dd1-9d40-20dfb9ba00d6', 'video_conference', NULL, NULL, NULL, '2020-10-20 12:04:53', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:04:53.691089Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:04:56.059212Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:05:15.642505Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:05:18.343488Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:05:24.313453Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"uw0MIkUAsWzREZBW1Kol\", \"identifier\": \"FiGf9d\", \"started_at\": \"2020-10-20T12:04:53.249662Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 10:04:53', '2020-10-20 10:05:24'),
(21, 'bbc8cba0-2926-464f-a479-99852f88f788', 'video_conference', NULL, NULL, NULL, '2020-10-20 12:05:36', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:05:36.843567Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:05:39.294373Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"c3GkOZqgEaRZ0MwjMuBM\", \"identifier\": \"mfulFc\", \"started_at\": \"2020-10-20T12:05:36.400845Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 10:05:36', '2020-10-20 10:05:39'),
(22, '62938a02-3260-48cb-bf45-ab4d73bda08d', 'video_conference', NULL, NULL, NULL, '2020-10-20 12:15:17', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.167.251.91\", \"start\": \"2020-10-20T12:15:17.902112Z\"}, {\"ip\": \"186.167.251.91\", \"start\": \"2020-10-20T12:15:21.410821Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"3BO6kyNQBeOw6RNFQA67\", \"identifier\": \"XBNebA\", \"started_at\": \"2020-10-20T12:15:17.454564Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 10:15:17', '2020-10-20 10:15:21'),
(23, '5f6f9d25-d4b0-4687-a8ea-194e89b58ff2', 'video_conference', NULL, NULL, NULL, '2020-10-20 12:27:24', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:27:25.189178Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T12:27:26.665437Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"DY8esjWbo2o2bTYItwRF\", \"identifier\": \"3La7nz\", \"started_at\": \"2020-10-20T12:27:24.744948Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 10:27:24', '2020-10-20 10:27:26'),
(24, '31425910-f281-419f-854c-91e1ffb8ae09', 'video_conference', NULL, NULL, NULL, '2020-10-20 14:43:10', 60, NULL, 1, '{\"logs\": [{\"ip\": \"43.229.75.239\", \"start\": \"2020-10-20T14:43:11.181745Z\"}, {\"ip\": \"43.229.75.239\", \"start\": \"2020-10-20T14:43:13.945813Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"ujD3VpOpNZFDoUJg0nQ1\", \"identifier\": \"OgHikP\", \"started_at\": \"2020-10-20T14:43:10.716813Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 12:43:10', '2020-10-20 12:43:13'),
(25, 'fcf627ee-6d1f-4f18-9f15-b628e2136fc9', 'video_conference', NULL, NULL, NULL, '2020-10-20 14:57:44', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T14:57:44.597324Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T14:57:49.667555Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"JrYmvKhGotx5jTMLMCd2\", \"identifier\": \"G38k7v\", \"started_at\": \"2020-10-20T14:57:44.152685Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 12:57:44', '2020-10-20 12:57:49'),
(26, 'eb752b22-779d-40cd-99a9-05d63c8078ca', 'video_conference', NULL, NULL, NULL, '2020-10-20 14:59:00', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T14:59:00.552472Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T14:59:03.975286Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"FHBqwJeQIVL2vVP1ggqu\", \"identifier\": \"gS45lW\", \"started_at\": \"2020-10-20T14:59:00.112218Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 12:59:00', '2020-10-20 12:59:03'),
(27, '2e158087-7eb9-4bb3-83ee-27fcb87f4865', 'video_conference', NULL, NULL, NULL, '2020-10-20 15:03:04', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.167.251.111\", \"start\": \"2020-10-20T15:03:05.420739Z\"}, {\"ip\": \"186.167.251.111\", \"start\": \"2020-10-20T15:03:07.773788Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"4cIKwlqleSyAHGhjrNBZ\", \"identifier\": \"Rs2H4g\", \"started_at\": \"2020-10-20T15:03:04.980685Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 13:03:04', '2020-10-20 13:03:07'),
(28, '22f8eb56-b599-4943-acb3-97c3fabc67dd', 'video_conference', NULL, NULL, NULL, '2020-10-20 15:07:53', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T15:07:53.601485Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T15:07:56.253420Z\"}], \"config\": [], \"status\": \"ended\", \"instant\": true, \"room_id\": \"L3bnmqkiNryLCo4CD8gc\", \"ended_at\": \"2020-10-20T15:10:11.000582Z\", \"identifier\": \"ltkodC\", \"started_at\": \"2020-10-20T15:07:53.153183Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 13:07:53', '2020-10-20 13:10:11'),
(29, '4990c495-5c0d-4910-b5f9-afee0086b54b', 'webinar', 'Prueba de Transmisión', 'Esto es una prueba de funcionamiento para la transmisi&oacute;n de mba', '<p>Esto es una prueba de funcionamiento para la transmisi&oacute;n de mba</p>', '2020-10-20 05:50:00', 45, 1, 2, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"UGr9o4\", \"cancelled_at\": \"2020-10-20T15:16:43.555099Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 13:14:50', '2020-10-20 13:16:43'),
(30, 'c513bbe8-3b87-416b-808c-474ac990c8fb', 'webinar', 'Prueba', 'Esto es una prieba de funcionamiento para ver que todo marcha al 100%', '<p>Esto es una prieba de funcionamiento para ver que todo marcha al 100%</p>', '2020-10-20 08:00:00', 60, 1, 2, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"j86rer\", \"accessible_via_link\": false}', '2020-10-20 13:19:35', '2020-10-20 08:19:35'),
(31, '8feef6a2-c870-4be4-9116-01b2c0d054e1', 'webinar', 'Prueba', 'Esto es una prueba de funcionamiento para la transmisi&amp;oacute;n de mba', '<p>Esto es una prueba de funcionamiento para la transmisi&amp;oacute;n de mba</p>', '2020-10-20 07:30:00', 60, 1, 2, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"2u82MK\", \"cancelled_at\": \"2020-10-20T17:09:32.218962Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 14:58:14', '2020-10-20 15:09:32'),
(32, '8148b7ce-c473-4dd0-8a4d-e52320835a99', 'webinar', 'Prueba Hora', 'Esto es una prueba para configurar correctamente la hora de los meetings', '<p>Esto es una prueba para configurar correctamente la hora de los meetings</p>', '2020-10-20 18:00:00', 45, 1, 2, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T18:09:23.972724Z\"}], \"status\": \"ended\", \"instant\": false, \"room_id\": \"68mPrPefjA7TKB3WsrrU\", \"ended_at\": \"2020-10-20T18:21:59.132007Z\", \"identifier\": \"3rFXNd\", \"started_at\": \"2020-10-20T18:09:16.428757Z\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-20 15:20:47', '2020-10-20 16:21:59'),
(33, '4253065f-8d97-49a6-b73c-debbeded545d', 'webinar', 'Sinergia100', 'Muestra de los procesos de desarrollo.', '<p><strong>Muestra de los procesos de desarrollo.</strong></p>', '2020-10-20 19:57:00', 20, 1, 10, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"35gl7Y\", \"cancelled_at\": \"2020-10-20T21:05:27.408435Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 18:58:30', '2020-10-20 19:05:27'),
(34, 'b566e630-d395-420c-aa1f-b1d9d5bdb6c0', 'webinar', 'Sinergia101', 'Prueba de curso y de relaci&oacute;n en las finanzas para todos', '<p>Prueba de curso y de relaci&oacute;n en las finanzas para todos</p>', '2020-10-20 20:12:00', 25, 1, 11, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"MOHRGg\", \"accessible_via_link\": false}', '2020-10-20 19:13:06', '2020-10-20 14:13:06'),
(35, 'f4d42655-ded2-4750-a733-cb2701101290', 'webinar', 'Streaming Demostración Junta', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-20 18:40:00', 15, 1, 5, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"1ZYAyO\", \"accessible_via_link\": false}', '2020-10-20 21:35:26', '2020-10-20 16:35:26'),
(36, 'f77c6e2e-bb87-4bb8-9574-6d3ab208731b', 'webinar', 'Demostración Streaming Junta 02', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-20 18:59:00', 20, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"vxHSVF\", \"cancelled_at\": \"2020-10-20T23:56:35.999963Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 21:51:41', '2020-10-20 21:56:36'),
(37, '80a55525-d3c3-4a7f-8589-17f4516011f1', 'webinar', 'Streaming Junta Prueba 3', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-20 19:57:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"wGxhGY\", \"cancelled_at\": \"2020-10-20T23:59:28.239023Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 21:58:25', '2020-10-20 21:59:28'),
(38, '7de68a6c-4c77-4263-8eb1-2e29746b38db', 'webinar', 'prueba streaming 04', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-20 23:05:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"zO0BpY\", \"cancelled_at\": \"2020-10-21T00:06:19.640239Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 22:00:58', '2020-10-20 22:06:19'),
(39, '4fb03373-9b94-4a08-8d3e-56f38addfe0c', 'webinar', 'nuevo', 'nnxnxjxjjsjdjdjdjdjdjdjdjdjdjdjdsjafkjdsshgjkfdnfjkdnsfkjdnfjd nsjhfs jf sdjf s', '<p>nnxnxjxjjsjdjdjdjdjdjdjdjdjdjdjdsjafkjdsshgjkfdnfjkdnsfkjdnfjd nsjhfs jf sdjf s</p>', '2020-10-20 20:10:00', 10, 1, 11, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"Y0yZBj\", \"cancelled_at\": \"2020-10-21T00:09:38.786428Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 22:08:07', '2020-10-20 22:09:38'),
(40, '56c585e2-d0c5-4ecd-9278-0879fae56277', 'webinar', 'prueba100', 'dojdjjdjsjsjajajajajajaajajajajajajajajajajajajajajajajajajajajajaja', '<p>dojdjjdjsjsjajajajajajaajajajajajajajajajajajajajajajajajajajajajaja</p>', '2020-10-20 20:12:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"ey5gxB\", \"cancelled_at\": \"2020-10-21T00:11:08.591003Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-20 22:10:47', '2020-10-20 22:11:08'),
(41, '92ee1db3-3ae4-437a-9cf1-e57e28618d2c', 'webinar', 'Riesgo y Bolsa de Valores', 'kdskdjfnjsdhbfjsbdgbdhgfbsdhfbjsgdjbfgsdbhgvdshfsgdbfshbdfshjbndjksnfjknsdjfnshjdnfshdbf', '<p>kdskdjfnjsdhbfjsbdgbdhgfbsdhfbjsgdjbfgsdbhgvdshfsgdbfshbdfshjbndjksnfjknsdjfnshjdnfshdbf</p>', '2020-10-21 20:00:00', 50, 1, 13, '{\"logs\": [{\"ip\": \"186.95.112.116\", \"start\": \"2020-10-21T00:28:36.939122Z\"}], \"status\": \"live\", \"instant\": false, \"room_id\": \"jeikGNKSmsFpleuvwTFw\", \"identifier\": \"hWYQKZ\", \"started_at\": \"2020-10-21T00:28:27.600650Z\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-20 22:14:34', '2020-10-20 22:28:36'),
(42, 'ba79ff82-5a47-412e-9f33-e08c231c119a', 'video_conference', NULL, NULL, NULL, '2020-10-21 01:02:24', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-21T01:02:24.917647Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-21T01:02:27.257924Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-21T01:03:44.349515Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"W7lzBLD4wIOE27VLBkT1\", \"identifier\": \"fS5F9o\", \"started_at\": \"2020-10-21T01:02:24.477943Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-20 23:02:24', '2020-10-20 23:03:44'),
(43, 'd5285b12-2a5e-40c2-b2d5-f910b45e680a', 'webinar', 'Prueba para Hora', 'jkzsbdhkjsahbfjdbhsfBVHJDS BVJHBDSFBCKJSA VCKJSDBFJKDSFJKADSHJDHSAJGVNJFKSD VNJNDSKJBFVJKDSBGJKBDJBGJSGBHSGDFSJKGS', '<p>SADFSFADSF</p>', '2020-10-21 10:12:03', 60, NULL, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"f6iNTT\", \"cancelled_at\": \"2020-10-21T19:52:27.354944Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-21 17:52:21', '2020-10-21 17:52:27'),
(44, '7946d7a1-cd38-4d97-b534-98eea82bd398', 'webinar', 'Prueba Hora 2', 'asdjsknfkjABFJDSV DSFJKSHDKJFHSKJHFJKSDHF SAFDJSFJKDSFDS', '<p>DFSDF</p>', '2020-10-21 15:22:00', 60, NULL, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"OG96Ow\", \"cancelled_at\": \"2020-10-21T19:53:18.594259Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-21 17:53:11', '2020-10-21 17:53:18'),
(45, '4f9031de-83cd-4e35-8dea-5f0fab56cbe9', 'webinar', 'Prueba 3', 'sfdsbfhdsbh bsfhabfhdsbhfbdshf b ajdhsabdsbhb dsfb jdsfsfd', NULL, '2020-10-21 16:23:00', 60, NULL, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"w0hnBY\", \"cancelled_at\": \"2020-10-21T19:54:11.339291Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-21 17:53:58', '2020-10-21 17:54:11'),
(46, '8943dc69-fb72-46fc-b839-1e3d00dae059', 'webinar', 'Prueba 4', 'tipo webinar ni se le asigna a el usuario que especifico en update evento\n\nfunciones que se realizan desde subdominio deben redirigirse al mismo', NULL, '2020-10-21 17:24:00', 60, NULL, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"RikB5M\", \"cancelled_at\": \"2020-10-21T19:55:07.966766Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-21 17:55:04', '2020-10-21 17:55:07'),
(47, 'd9f73a81-f7dd-4187-b111-253828ce5187', 'audio_conference', 'luisana 1', 'tipo webinar ni se le asigna a el usuario que especifico en update evento\n\nfunciones que se realizan desde subdominio deben redirigirse al mismo', NULL, '2020-10-21 04:30:00', 60, NULL, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"h8efas\", \"cancelled_at\": \"2020-10-21T20:01:32.234016Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-21 18:00:40', '2020-10-21 18:01:32'),
(48, '5a4179d6-6dc0-401a-a536-bb5af5d43424', 'audio_conference', 'luisana 2', 'tipo webinar ni se le asigna a el usuario que especifico en update evento\n\nfunciones que se realizan desde subdominio deben redirigirse al mismo', NULL, '2020-10-21 18:00:00', 60, NULL, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"ZxOnIu\", \"cancelled_at\": \"2020-10-21T20:03:03.215769Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-21 18:02:35', '2020-10-21 18:03:03'),
(49, 'a9a70326-1582-462f-8969-efdab064e9f5', 'audio_conference', 'luisana 3', 'tipo webinar ni se le asigna a el usuario que especifico en update evento\n\nfunciones que se realizan desde subdominio deben redirigirse al mismo', NULL, '2020-10-22 00:30:00', 60, NULL, 1, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"OClrZg\", \"accessible_via_link\": false}', '2020-10-21 18:04:20', '2020-10-21 18:04:20'),
(50, 'eca6f12f-46b0-4130-aad4-620fe43d46f9', 'webinar', 'Prueba MBA', 'sdflkjsdkfjkdsaf sdhfjkdhsfjkhdsjkghjads dhsfjkhdsajghjfghsdjghjfdg', '<p>sdflkjsdkfjkdsaf sdhfjkdhsfjkhdsjkghjads dhsfjkhdsajghjfghsdjghjfdg</p>', '2020-10-21 06:00:00', 60, 1, 2, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"iPPJcF\", \"accessible_via_link\": false}', '2020-10-21 18:10:20', '2020-10-21 13:10:20'),
(51, '2329455a-2c1c-4aa9-9b99-02529f70ebd4', 'webinar', 'prueba hora bogota', 'shnjfkhjfbhsadfbhdsafb vhdshfhavhsaf c sfhbsahfgvAKHSAHVSGHAfva', NULL, '2020-10-22 13:00:00', 60, NULL, 1, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"S3Dcyn\", \"accessible_via_link\": false}', '2020-10-22 11:40:17', '2020-10-22 11:40:17'),
(52, '3cab4f44-9cee-4b39-a193-572fbe80cc33', 'webinar', 'prueba final', 'gdfgdcfc fgc c fcgcghghfhhgfhgfgh fhgfhfghfhgfhgfgf fhgfghfhgfghgfgghfg', NULL, '2020-10-22 09:00:00', 60, 10, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"ijNlqe\", \"cancelled_at\": \"2020-10-22T12:56:37.209273Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-22 12:56:29', '2020-10-22 12:56:37'),
(53, 'd42149fa-37c1-4aee-8213-4fad1d0c0ccc', 'webinar', 'Pruea Hora Ghana', 'sfhjdfhnjds vjdghdjshgjsdhjghsdjg sdfhdjghjdshjhjshgjshdghjds sdhfjsdhgjdhgjhsdhgds', NULL, '2020-10-22 13:20:00', 60, NULL, 1, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"F4Xq4I\", \"accessible_via_link\": false}', '2020-10-22 13:04:27', '2020-10-22 13:04:27'),
(54, '0f6f64c1-8889-4db9-a6ab-555af7f81e8a', 'webinar', 'Prueba Paises Zona Horaria', 'Esto es una prueba para mostrar varias zonas horarias en el live y la hora correcta en el servidor', '<p>Esto es una prueba para mostrar varias zonas horarias en el live y la hora correcta en el servidor</p>', '2020-10-24 12:00:00', 60, 1, 2, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"wO6r1u\", \"accessible_via_link\": false}', '2020-10-23 20:26:11', '2020-10-23 15:26:11'),
(55, '7fbd37cc-1985-4049-a643-0ae940f6c63c', 'webinar', 'Prueba Paises Zona Horaria', 'Esto es una prueba para mostrar varias zonas horarias en el live y la hora correcta en el servidor', '<p>Esto es una prueba para mostrar varias zonas horarias en el live y la hora correcta en el servidor</p>', '2020-10-24 12:00:00', 60, 1, 2, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"mpFOQh\", \"accessible_via_link\": false}', '2020-10-23 20:27:18', '2020-10-23 15:27:18'),
(56, '0b531136-e879-424d-8273-254457a57297', 'webinar', 'Prueba 23 oct. Streaming', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-23 18:25:00', 20, 1, 13, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"pyqVrp\", \"accessible_via_link\": false}', '2020-10-23 23:19:11', '2020-10-23 18:19:11'),
(57, '303b3fd7-c184-4fb4-9928-60a79cd0327b', 'video_conference', NULL, NULL, NULL, '2020-10-24 00:05:48', 60, NULL, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-24T00:05:49.099568Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-24T00:05:54.370101Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"R9MJB5VMr93yOKzGxLq4\", \"identifier\": \"YIU14s\", \"started_at\": \"2020-10-24T00:05:48.646739Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-24 00:05:48', '2020-10-24 00:05:54'),
(58, '3652ef51-bf36-4de9-bff2-6e7730be400d', 'video_conference', NULL, NULL, NULL, '2020-10-24 00:06:18', 60, NULL, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-24T00:06:18.591018Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-24T00:06:19.766151Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"KqCPxbcqP2lxKGoB277V\", \"identifier\": \"KAnutk\", \"started_at\": \"2020-10-24T00:06:18.091622Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-24 00:06:18', '2020-10-24 00:06:19'),
(59, '5c45f1a0-7319-4560-b772-d70eb44eb4fe', 'video_conference', 'Revisión Plataforma mbapro', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', '2020-10-24 10:00:00', 60, NULL, 13, '{\"config\": {\"layout\": \"fullpage\", \"enable_chat\": true, \"enable_comments\": false, \"enable_recording\": true, \"footer_auto_hide\": true, \"private_comments\": false, \"enable_file_sharing\": true, \"enable_hand_gesture\": true, \"enable_screen_sharing\": true, \"enable_comment_before_meeting_starts\": false}, \"status\": \"scheduled\", \"instant\": false, \"identifier\": \"RFsu44\", \"accessible_via_link\": true}', '2020-10-24 00:59:59', '2020-10-24 01:01:25'),
(60, '37b666fa-3a93-4f94-8094-b40856c2a48a', 'webinar', 'Revisión mybusiness', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>', '2020-10-24 12:00:00', 30, 1, 17, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"ck5hY5\", \"accessible_via_link\": false}', '2020-10-24 01:04:37', '2020-10-23 20:04:37'),
(61, '34d880f2-fdf0-4be5-adb0-0171742903ce', 'webinar', 'Prueba 24 octubre Streaming', 'Lorem Ipsum&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>', '2020-10-24 18:00:00', 20, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"mD9xCP\", \"cancelled_at\": \"2020-10-24T23:01:57.449070Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-24 22:44:56', '2020-10-24 23:01:57'),
(62, '301d294c-7476-49cb-a158-02088b76ec97', 'webinar', 'Prueba 24 oct. Streaming2', '&iquest;De d&oacute;nde viene?\r\n\r\nAl contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32', '<h2>&iquest;De d&oacute;nde viene?</h2>\r\n\r\n<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32</p>', '2020-10-24 18:30:00', 20, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"8xW0SJ\", \"cancelled_at\": \"2020-10-24T23:30:18.288237Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-24 23:06:17', '2020-10-24 23:30:18'),
(63, '05386f04-3368-4536-ae5f-da5bc98b2b43', 'webinar', 'Prueba 3 streaming 24oct', '&iquest;De d&oacute;nde viene?\r\n\r\nAl contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32', '<h2>&iquest;De d&oacute;nde viene?</h2>\r\n\r\n<p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl&acute;sica de la literatura del Latin, que data del a&ntilde;o 45 antes de Cristo, haciendo que este adquiera mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, viene de una linea en la secci&oacute;n 1.10.32</p>', '2020-10-24 19:02:00', 20, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"shOT90\", \"cancelled_at\": \"2020-10-24T23:34:35.510587Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-24 23:33:48', '2020-10-24 23:34:35'),
(64, '23867472-0541-4a98-b834-71cdb85ae321', 'webinar', 'Prueba 4 24oct', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-24 18:42:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"98OVxA\", \"cancelled_at\": \"2020-10-24T23:40:24.078915Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-24 23:37:34', '2020-10-24 23:40:24'),
(65, 'dc1be042-15cb-4401-9bb1-8dd39e314912', 'webinar', 'Prueba 5 24oct', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-24 18:45:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"2IxHkh\", \"cancelled_at\": \"2020-10-24T23:45:14.713880Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-24 23:42:19', '2020-10-24 23:45:14');
INSERT INTO `meetings` (`id`, `uuid`, `type`, `title`, `agenda`, `description`, `start_date_time`, `period`, `category_id`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(66, '1807793d-3963-484a-be93-25dae873d9c5', 'webinar', 'Preba 06 streaming 24oct', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-24 18:50:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"BwoeTd\", \"cancelled_at\": \"2020-10-24T23:50:17.337636Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-24 23:48:04', '2020-10-24 23:50:17'),
(67, 'a433ea17-a6aa-4008-bb9f-5b0c49da6290', 'webinar', NULL, NULL, NULL, '2020-10-26 02:48:10', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T02:48:10.501761Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T02:48:12.574606Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"7VJ0iMItfDw5UCvXa2gw\", \"identifier\": \"N6Jelw\", \"started_at\": \"2020-10-26T02:48:10.040457Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-26 02:48:10', '2020-10-26 02:48:12'),
(68, '87c78aa6-be6d-49bf-a14c-5d41e45c64f0', 'audio_conference', 'prueba', 'sdfjdsngvajdsn vjk dscdsahfadgssh fjsdkgjdsbgajdsgsdf', '<p>dgfdg</p>', '2020-10-26 10:33:00', 60, NULL, 1, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"csrUDG\", \"cancelled_at\": \"2020-10-26T12:33:56.494251Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 12:33:50', '2020-10-26 12:33:56'),
(69, '0e4d1afc-9abe-4b16-abb2-600f57d44c26', 'audio_conference', 'prueba 2', 'ndfjkndsjknfjdas ngjkdsjgnjfdngadsfgfdgfd', '<p>dsgdsg</p>', '2020-10-26 13:00:00', 60, NULL, 1, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"Vn3LSl\", \"accessible_via_link\": false}', '2020-10-26 12:34:21', '2020-10-26 12:34:21'),
(70, '0bfb1934-db92-462b-91b3-b5810a9d97e2', 'webinar', 'Prueba Lunes', 'Eso es una prueba de funcionamiento para ver la hora+', '<p>Eso es una prueba de funcionamiento para ver la hora+</p>', '2020-10-26 12:40:00', 60, 1, 2, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"48qYeP\", \"cancelled_at\": \"2020-10-26T13:42:39.202565Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 12:39:34', '2020-10-26 13:42:39'),
(71, '88a4a25b-79d1-4d6a-894a-f288a67f4289', 'webinar', 'Prueba 26 octubre', 'Where does it come from?\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.', '<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '2020-10-26 13:37:00', 15, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T14:15:15.176746Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T14:16:22.341898Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T14:25:54.479506Z\"}], \"status\": \"live\", \"instant\": false, \"room_id\": \"pkDjsXAc3APucNnHMNHu\", \"identifier\": \"wGjI1i\", \"started_at\": \"2020-10-26T14:15:14.718985Z\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 13:45:14', '2020-10-26 14:25:54'),
(72, '9f91de0b-3421-469d-9645-aa47f9eca3d6', 'webinar', 'Evento Luisana', 'este es un live de Luisana para ver si se cancela el evento', '<p>este es un live de Luisana para ver si se cancela el evento</p>', '2020-10-26 14:00:00', 45, 1, 2, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"vWPfiT\", \"cancelled_at\": \"2020-10-26T15:54:46.044854Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 13:50:06', '2020-10-26 15:54:46'),
(73, '3a5c01a9-01a8-425c-93b1-e4db74698ac7', 'webinar', 'Intercambio de Divisas y Análisis Econométrico', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-26 13:56:00', 10, 1, 13, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"JEBwoz\", \"accessible_via_link\": false}', '2020-10-26 13:53:36', '2020-10-26 08:53:36'),
(74, 'be6b76bb-d177-4e04-ac54-303bc22a5343', 'webinar', 'Evento demo 26 oct', 'Where does it come from?\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<h2>Where does it come from?</h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '2020-10-26 09:05:00', 60, 10, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"5lhHoI\", \"cancelled_at\": \"2020-10-26T14:01:12.713341Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 14:00:33', '2020-10-26 14:01:12'),
(75, '38bbc10b-b4d7-4e5e-9481-3315aa357628', 'webinar', 'Prueba demo2', 'Where does it come from?\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<h2>Where does it come from?</h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '2020-10-26 09:06:00', 60, NULL, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"BBNwC0\", \"cancelled_at\": \"2020-10-26T14:02:04.583760Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 14:01:59', '2020-10-26 14:02:04'),
(76, '01fda823-6690-4c84-a112-162531242ad8', 'webinar', 'Streaming 26 oct 04', 'Por qu&eacute; lo usamos?\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).', '<h2>Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '2020-10-26 11:05:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"0T72k2\", \"cancelled_at\": \"2020-10-26T16:03:30.463565Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 16:01:36', '2020-10-26 16:03:30'),
(77, '37084691-f72e-4028-b27b-35ffde3c7ea3', 'webinar', 'Prueba Streaming 05 26oct', 'Por qu&eacute; lo usamos?\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).', '<h2>Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '2020-10-26 16:10:00', 15, 1, 13, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"px5FGz\", \"accessible_via_link\": false}', '2020-10-26 16:04:53', '2020-10-26 11:04:53'),
(78, 'a83cc4c1-c00a-42a5-af80-cf68e7d1f1bf', 'webinar', 'Luisana Marin', 'b sd bsa fcB SAJDJSHDSJGHAFGDHSFGHDS FVCDSFHDJSHFJS', '<p>b sd bsa fcB SAJDJSHDSJGHAFGDHSFGHDS FVCDSFHDJSHFJS</p>', '2020-10-26 17:00:00', 60, 1, 2, '{\"logs\": [{\"ip\": \"190.207.60.71\", \"start\": \"2020-10-26T16:51:03.289574Z\"}], \"status\": \"live\", \"instant\": false, \"identifier\": \"ZIL7MG\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 16:36:09', '2020-10-26 16:51:03'),
(79, '631a38d4-0892-4f7e-bf5c-0b6a26901c87', 'webinar', 'Streaming Prueba MbaPro', 'Por qu&eacute; lo usamos?\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).', '<h2>Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '2020-10-26 11:50:00', 15, 1, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"IeaB3o\", \"cancelled_at\": \"2020-10-26T16:44:50.178637Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 16:44:12', '2020-10-26 16:44:50'),
(80, 'b555014d-93de-411a-be72-40408fa00147', 'webinar', 'Streaming MBAPRO', 'Por qu&eacute; lo usamos?\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).', '<h2>Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '2020-10-26 16:50:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:20:16.054209Z\"}], \"status\": \"live\", \"instant\": false, \"identifier\": \"eJ70m4\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 16:46:14', '2020-10-26 17:20:16'),
(81, 'f5341d5e-f8e4-4dbb-bf7d-e86965e75738', 'video_conference', NULL, NULL, NULL, '2020-10-26 17:04:21', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:04:22.028864Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:04:24.126993Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"Kz49DpqeXCdvsrphXI4Q\", \"identifier\": \"QEX5l6\", \"started_at\": \"2020-10-26T17:04:21.558213Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-26 17:04:21', '2020-10-26 17:04:24'),
(82, '24309ad8-df8f-4064-b4c7-6dd55b6f2b66', 'video_conference', NULL, NULL, NULL, '2020-10-26 17:04:45', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:04:45.994421Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:04:47.759257Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"lRfZBysYha24smIQzlh2\", \"identifier\": \"eAdzWO\", \"started_at\": \"2020-10-26T17:04:45.553627Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-26 17:04:45', '2020-10-26 17:04:47'),
(83, '7a2b4cac-6178-4beb-8e49-a70561086000', 'video_conference', NULL, NULL, NULL, '2020-10-26 17:05:18', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:05:19.092355Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:05:20.956094Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"dtZvigf8Rpn5yj8iPePZ\", \"identifier\": \"N1JDgj\", \"started_at\": \"2020-10-26T17:05:18.650188Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-26 17:05:18', '2020-10-26 17:05:20'),
(84, 'b26a4038-64ad-44f0-bee0-3bd0f186c56b', 'video_conference', NULL, NULL, NULL, '2020-10-26 17:07:18', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:07:18.852749Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:07:21.167891Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"tmJH30Pc6wgzldhMmsDZ\", \"identifier\": \"N65Yld\", \"started_at\": \"2020-10-26T17:07:18.401374Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-26 17:07:18', '2020-10-26 17:07:21'),
(85, 'f96487a1-5e44-4272-b5ec-45eafdfe0899', 'webinar', 'Luisana Marin 2', 'dsfadfgfd gdhhagfhfsgb gfhgdhdgfhgfb gghdfhfhgdhdg', '<p>dsfadfgfd gdhhagfhfsgb gfhgdhdgfhgfb gghdfhfhgdhdg</p>', '2020-10-26 13:10:00', 60, 1, 2, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"zz5RzB\", \"cancelled_at\": \"2020-10-26T17:08:08.708645Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-26 17:07:31', '2020-10-26 17:08:08'),
(86, '82e250b5-b40b-497b-a5f7-788d73cdf826', 'webinar', 'Luisana Marin Final', 'sadsfds fdgjfkdhgjfhdg jkfdhgjfhdjgfd sgfjkhgjksfdhjghdf', '<p>sadsfds fdgjfkdhgjfhdg jkfdhgjfhdjgfd sgfjkhgjksfdhjghdf</p>', '2020-10-26 17:12:00', 60, 1, 2, '{\"logs\": [{\"ip\": \"190.207.60.71\", \"start\": \"2020-10-26T17:15:17.254632Z\"}], \"status\": \"ended\", \"instant\": false, \"ended_at\": \"2020-10-26T17:15:35.504725Z\", \"identifier\": \"1MRBe6\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 17:09:22', '2020-10-26 17:15:35'),
(87, '7dcb4e1d-b0db-4661-8504-3eddf6528f9b', 'webinar', 'Prueba MBAPRO Streaming1', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-26 12:35:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:29:36.235824Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:38:14.761032Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:38:55.582547Z\"}], \"status\": \"live\", \"instant\": false, \"identifier\": \"D7M6N2\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 17:28:44', '2020-10-26 17:38:55'),
(88, '4cde2ec5-4ab3-4b03-9ece-dc745782392c', 'webinar', 'Prueba Final Streaming MBAPro', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-26 12:45:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:41:21.471891Z\"}], \"status\": \"live\", \"instant\": false, \"identifier\": \"h53F2v\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 17:40:15', '2020-10-26 17:41:21'),
(89, 'c057c912-a121-40b6-9b5e-d31c60106426', 'webinar', 'Prueba Final Final', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-26 13:59:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:57:09.000438Z\"}], \"status\": \"live\", \"instant\": false, \"identifier\": \"Md4q4A\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 17:55:48', '2020-10-26 17:57:09'),
(90, 'cc306103-a750-48e5-87ee-7a5a4c4a2f8d', 'webinar', 'Prueba Streaming MBAPro', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-26 18:20:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T18:20:10.414657Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T18:37:20.342081Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T18:50:31.750668Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"az76Sh\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-26 18:14:07', '2020-10-29 16:00:01'),
(91, '14ccceb3-9c9d-4276-b86c-81eef9d85828', 'webinar', 'Evento de Luisana Para Probar', 'Esto es un evento para probar las funcionalidades del mentor', '<p>Esto es un evento para probar las funcionalidades del mentor</p>', '2020-10-26 21:55:00', 60, 1, 2, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"CJ04oM\", \"accessible_via_link\": false}', '2020-10-26 21:53:09', '2020-10-29 16:00:01'),
(92, 'c6d3355e-5705-41f3-9bc6-ad99e2ffb0fa', 'webinar', 'Streming 27 octubre', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-27 09:10:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-27T14:03:57.101289Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-27T14:06:15.034394Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-27T14:11:41.964577Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-27T14:40:52.549845Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-27T14:42:22.823566Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"19dMxD\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-27 13:58:45', '2020-10-29 16:00:01'),
(93, '5576be6e-bae0-469e-bc4b-9314b67b5c34', 'webinar', 'Streaming Negocios', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2020-10-28 03:10:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-28T03:10:12.308670Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"wGW0H1\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-28 03:06:09', '2020-10-29 16:00:01'),
(94, 'e367958c-c0db-4370-bc47-41875ae8bfb3', 'webinar', NULL, NULL, NULL, '2020-10-28 03:27:09', 60, NULL, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-28T03:27:09.685941Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-28T03:27:12.306490Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"PZOtnr5qWtX5GBaduORZ\", \"identifier\": \"cFX4k1\", \"started_at\": \"2020-10-28T03:27:09.238174Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-28 03:27:09', '2020-10-28 03:27:12'),
(95, '82be7236-0a9e-40c1-9074-806774613a7b', 'audio_conference', 'Prueba Streaming Programado', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-27 22:36:00', 60, NULL, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"2qH68n\", \"cancelled_at\": \"2020-10-28T03:31:05.995388Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-28 03:30:57', '2020-10-28 03:31:05'),
(96, '2305e917-4f7d-42b2-bef7-8935a3ba839b', 'webinar', 'Streaming Prueba 27 oct 10pm', 'What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-27 22:40:00', 20, 10, 13, '{\"status\": \"cancelled\", \"instant\": false, \"identifier\": \"YglhTj\", \"cancelled_at\": \"2020-10-28T03:34:11.381316Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2020-10-28 03:33:55', '2020-10-28 03:34:11'),
(97, '3550b51d-93e8-4da2-9e1e-2e03abd8c1da', 'webinar', 'Streaming Prueba 28 octubre', 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2020-10-28 23:10:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-28T17:13:53.307891Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-28T17:16:14.321062Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-28T17:16:16.767889Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-28T17:16:35.653903Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"NebDU9\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-28 17:12:51', '2020-10-29 16:00:01'),
(98, '79e016f4-951d-49ea-8d04-a00bc219819d', 'webinar', 'Prueba Luisana Chat', 'Esto es una prueba para ver que se muestre la imagen del chat', '<p>Esto es una prueba para ver que se muestre la imagen del chat</p>', '2020-10-31 01:25:00', 45, 1, 2, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"rMm6kA\", \"accessible_via_link\": false}', '2020-10-30 19:21:10', '2020-10-31 01:00:01'),
(100, '74d5c62a-8aee-4461-b655-0cdad0220e6d', 'webinar', 'Prueba Luisana Avatar', '&lt;p&gt;Esto es una prueba para ver si el avatar del usuario en mba se crea en el sistema de streaming&lt;/p&gt;', '<p>&lt;p&gt;Esto es una prueba para ver si el avatar del usuario en mba se crea en el sistema de streaming&lt;/p&gt;</p>', '2020-10-31 03:00:00', 60, 1, 21, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"h28w0j\", \"accessible_via_link\": false}', '2020-10-30 20:59:04', '2020-10-31 02:00:01'),
(101, '9d79d664-7fe8-457a-ad3c-811f793db817', 'webinar', 'Streaming 30 octubre', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-10-31 05:45:00', 20, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-30T23:50:51.864106Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"iF79vL\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-30 23:39:32', '2020-10-31 05:00:02'),
(102, '351bc958-1f3e-41bd-99f6-586053c7b226', 'video_conference', NULL, NULL, NULL, '2020-10-31 01:26:40', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T01:26:40.660708Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T01:26:42.740299Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T02:28:04.768555Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T02:28:17.216632Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:28:47.004362Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:31:23.407106Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:31:42.976617Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:32:23.158469Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:36:57.025272Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:37:18.759700Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:38:46.618287Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:40:47.166566Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:51:12.763906Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T03:54:04.426499Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"yeBGRQnM6wgYNNPqEmkn\", \"identifier\": \"KVLClc\", \"started_at\": \"2020-10-31T01:26:40.201264Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-10-31 01:26:40', '2020-10-31 03:54:04'),
(103, 'be89bc15-e4d0-4d0d-a472-42ada88e68f1', 'webinar', 'Prueba sinergia', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-31 18:44:00', 20, 1, 13, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"cH4ari\", \"accessible_via_link\": false}', '2020-10-31 13:45:20', '2020-10-31 18:00:01'),
(104, '417e0354-10de-4ba1-9ce4-7770e5f78256', 'webinar', 'Streaming 31 octubre 2020', '\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nWhat is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2020-10-31 20:55:00', 30, 1, 13, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T14:55:37.587254Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"Kpa6PZ\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-31 14:50:43', '2020-10-31 20:00:01'),
(105, '70efc1ae-a6ef-4df0-819c-5567a08205ca', 'webinar', 'Prueba 45', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-10-31 21:39:00', 56, 1, 17, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"IrnFgQ\", \"accessible_via_link\": false}', '2020-10-31 17:40:59', '2020-10-31 21:00:01');
INSERT INTO `meetings` (`id`, `uuid`, `type`, `title`, `agenda`, `description`, `start_date_time`, `period`, `category_id`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(106, '54117525-0fa0-4402-9021-669d6796b2b7', 'webinar', 'Prueba46', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-11-01 00:54:00', 50, 1, 17, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"Q75Srn\", \"accessible_via_link\": false}', '2020-10-31 17:55:38', '2020-11-01 00:00:02'),
(107, '2db1ebd7-d8bd-440b-8344-834cc7914d30', 'webinar', 'Streaming Inversiones 31 octubre', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2020-11-01 00:26:00', 20, 1, 5, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-31T18:29:18.013307Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"rM1x5c\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-10-31 18:22:40', '2020-11-01 00:00:02'),
(108, 'f34b61ae-af90-46c4-b2ca-f3f1b9e13b22', 'video_conference', NULL, NULL, NULL, '2020-11-01 00:18:38', 60, NULL, 1, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-11-01T00:18:39.189872Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-11-01T00:19:10.782700Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-11-01T01:03:03.514269Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-11-01T02:04:48.577094Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-11-01T02:55:47.503389Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"7WCSnOvbLcAXrJWif5Yc\", \"identifier\": \"1Rp7sh\", \"started_at\": \"2020-11-01T00:18:38.726120Z\", \"is_attendee\": true, \"accessible_via_link\": true}', '2020-11-01 00:18:38', '2020-11-01 02:55:47'),
(109, 'a1b35458-f8e7-4853-8f8b-c742e9bee786', 'webinar', 'Streaming Hallowen', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2020-11-01 08:21:00', 30, 1, 5, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-11-01T02:30:51.381108Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"klv1XM\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-11-01 02:26:29', '2020-11-01 08:00:01'),
(110, 'cbe4dfda-8fc9-4114-944d-82e60a6c2c80', 'webinar', 'Streaming Halloween 2', '&iquest;Por qu&eacute; lo usamos?\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).', '<h2>&iquest;Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '2020-11-01 08:45:00', 20, 1, 5, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"DMeM2V\", \"accessible_via_link\": false}', '2020-11-01 02:40:32', '2020-11-01 08:00:01'),
(111, '1ee65133-7d39-4489-8479-5e13fc05abc3', 'webinar', 'Halloween Streaming 3', '&iquest;Por qu&eacute; lo usamos?\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).', '<h2>&iquest;Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '2020-11-01 08:47:00', 20, 1, 5, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"LuToAO\", \"accessible_via_link\": false}', '2020-11-01 02:50:10', '2020-11-01 08:00:01'),
(112, '59d22d66-7ff0-45f2-82f3-368cb3eedea3', 'webinar', 'Streaming Halloween 4', '&iquest;Por qu&eacute; lo usamos?\r\n\r\nEs un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).', '<h2>&iquest;Por qu&eacute; lo usamos?</h2>\r\n\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>', '2020-11-01 09:15:00', 30, 1, 5, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"WHd4Xm\", \"accessible_via_link\": false}', '2020-11-01 02:54:03', '2020-11-01 09:00:01'),
(113, 'c8998573-9018-40d7-be72-067226ceca71', 'webinar', 'Streaming 02 nov', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n&nbsp;', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>', '2020-11-02 19:17:00', 20, 1, 5, '{\"status\": \"live\", \"instant\": false, \"identifier\": \"okWKcP\", \"accessible_via_link\": false}', '2020-11-02 13:14:45', '2020-11-02 08:17:40'),
(114, '365af158-9b80-4d1c-a3cb-545cce919256', 'webinar', 'Prueba Recursos (Luisana)', 'Esto es una prueba para el funcionamiento de la carga de recursos y notificaciones en tiempo real', '<p>Esto es una prueba para el funcionamiento de la carga de recursos y notificaciones en tiempo real</p>', '2020-11-04 20:00:00', 45, 1, 2, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"cSzzTr\", \"accessible_via_link\": false}', '2020-11-04 13:48:34', '2020-11-04 19:00:01'),
(115, 'a467ade6-99fb-470c-9e80-d54c20f36eef', 'webinar', 'Prueba Final', 'Esto es una prueba. No tomar en cuenta. Probando que todo este perfecto', '<p>Esto es una prueba. No tomar en cuenta. Probando que todo este perfecto</p>', '2020-11-06 03:55:00', 60, 1, 2, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"Y5tnvp\", \"accessible_via_link\": false}', '2020-11-05 20:55:42', '2020-11-06 03:00:01'),
(116, 'c40880ae-8526-4654-96d0-4d92f5933884', 'webinar', 'Fortalece tus habilidades financieras', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-11-17 02:30:00', 45, 1, 11, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"N3ToFw\", \"accessible_via_link\": false}', '2020-11-16 17:30:14', '2020-11-19 00:00:02'),
(117, '5af031cb-7092-45f5-b557-d7d344e9a32f', 'webinar', 'Inteligencia Artificial en Marketing', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-11-17 17:30:00', 45, 1, 17, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"spnmRy\", \"accessible_via_link\": false}', '2020-11-16 17:35:06', '2020-11-17 15:00:01'),
(118, '6b8a6f68-2462-4839-939a-cea0e50dab71', 'webinar', 'Streaming Lanzamiento', '.\r\n\r\nWhy do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p>.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-11-17 02:41:00', 30, 1, 13, '{\"logs\": [{\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T20:41:25.496260Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T20:42:52.177814Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T20:43:20.931602Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T21:45:51.275403Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T21:47:49.985841Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T21:47:58.410619Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T21:48:05.588735Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T21:48:25.329310Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T21:58:43.548040Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T22:03:12.269080Z\"}, {\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T22:03:31.024099Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"bbCwy7\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-11-16 18:33:37', '2020-11-17 00:00:01'),
(119, '73c56394-413c-4714-8d71-c992119cd322', 'webinar', 'Prueba controles', 'safndjkds nfjkds fjdshfjksdkfsd fdksjfjkdsjfkjksf ksdfjkdsjfkds', NULL, '2020-11-18 23:20:00', 60, NULL, 1, '{\"logs\": [{\"ip\": \"190.78.124.17\", \"start\": \"2020-11-18T21:12:01.818777Z\"}, {\"ip\": \"190.78.124.17\", \"start\": \"2020-11-18T21:12:40.933678Z\"}, {\"ip\": \"190.78.124.17\", \"start\": \"2020-11-18T21:12:43.097460Z\"}, {\"ip\": \"190.78.124.17\", \"start\": \"2020-11-18T21:13:33.339864Z\"}, {\"ip\": \"190.78.124.17\", \"start\": \"2020-11-18T21:14:17.377898Z\"}, {\"ip\": \"190.78.124.17\", \"start\": \"2020-11-18T21:14:19.759875Z\"}], \"status\": \"live\", \"instant\": false, \"identifier\": \"hrnCTb\", \"is_attendee\": true, \"accessible_via_link\": false}', '2020-11-18 19:11:28', '2020-11-18 19:14:19'),
(120, 'ed325082-5e85-4d50-b518-b0f7b46c2030', 'webinar', NULL, NULL, NULL, '2020-11-19 20:08:19', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.167.251.198\", \"start\": \"2020-11-19T20:08:20.208059Z\"}, {\"ip\": \"186.167.251.198\", \"start\": \"2020-11-19T20:08:29.788410Z\"}, {\"ip\": \"186.167.251.198\", \"start\": \"2020-11-19T20:08:41.901103Z\"}, {\"ip\": \"186.167.251.198\", \"start\": \"2020-11-19T20:08:51.665008Z\"}, {\"ip\": \"186.167.251.198\", \"start\": \"2020-11-19T20:09:36.470301Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"wyNqE2aPTPmZp0wkY1sh\", \"identifier\": \"bBP6Pb\", \"keep_alive\": false, \"started_at\": \"2020-11-19T20:08:19.758970Z\", \"is_attendee\": true, \"estimated_end_time\": \"2020-11-19T23:08:19.751485Z\", \"accessible_via_link\": true}', '2020-11-19 18:08:19', '2020-11-19 18:09:36'),
(121, '25f2a9c4-0838-4208-8933-4b25905301c0', 'webinar', NULL, NULL, NULL, '2020-11-19 20:18:57', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.167.251.198\", \"start\": \"2020-11-19T20:18:57.806591Z\"}, {\"ip\": \"186.167.251.198\", \"start\": \"2020-11-19T20:18:59.401436Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"nmY3dAQPVQNInIYcEJlb\", \"identifier\": \"lClalG\", \"keep_alive\": false, \"started_at\": \"2020-11-19T20:18:57.348812Z\", \"is_attendee\": true, \"estimated_end_time\": \"2020-11-19T23:18:57.341285Z\", \"accessible_via_link\": true}', '2020-11-19 18:18:57', '2020-11-19 18:18:59'),
(122, 'aff78a94-2615-4edd-b6cc-d7253d741231', 'webinar', NULL, NULL, NULL, '2020-11-24 00:44:20', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.167.242.72\", \"start\": \"2020-11-24T00:44:20.722493Z\"}, {\"ip\": \"186.167.242.72\", \"start\": \"2020-11-24T00:44:26.331750Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"H2PLud9kcxAsBZFpa3S5\", \"identifier\": \"6XFsOt\", \"keep_alive\": false, \"started_at\": \"2020-11-24T00:44:20.265303Z\", \"is_attendee\": true, \"estimated_end_time\": \"2020-11-24T03:44:20.255924Z\", \"accessible_via_link\": true}', '2020-11-23 22:44:20', '2020-11-23 22:44:26'),
(123, '06bb75f1-168a-4f56-b5be-47c94dbb592f', 'webinar', 'Evento de Prueba', 'Esto es una prueba para verificar el funcionamiento de los eventos', '<p>Esto es una prueba para verificar el funcionamiento de los eventos</p>', '2020-12-14 16:20:00', 45, 1, 2, '{\"logs\": [{\"ip\": \"190.75.231.87\", \"start\": \"2020-12-14T16:36:59.825061Z\"}, {\"ip\": \"190.75.231.87\", \"start\": \"2020-12-14T16:45:23.394607Z\"}], \"status\": \"live\", \"instant\": false, \"identifier\": \"Zt2ubY\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2020-12-14T17:06:00.000000Z\", \"accessible_via_link\": false}', '2020-12-14 14:17:16', '2020-12-14 14:55:25'),
(124, 'cec7b9fe-e650-49dc-ac87-199ffcf41984', 'webinar', 'PRUEBA DE SINERGIA 56', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-12-14 03:55:00', 30, 1, 13, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"KcAMaM\", \"keep_alive\": false, \"estimated_end_time\": \"2020-12-14T04:25:00.000000Z\", \"accessible_via_link\": false}', '2020-12-15 00:59:50', '2020-12-15 17:00:02'),
(125, 'd083163f-2963-4f64-8f8a-fe9fe4ad3e59', 'webinar', 'PRUEBA DE SINERGIA 57', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2020-12-16 22:04:00', 56, 1, 5, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"deRAwD\", \"keep_alive\": false, \"estimated_end_time\": \"2020-12-16T23:00:00.000000Z\", \"accessible_via_link\": false}', '2020-12-15 01:05:08', '2020-12-17 02:00:02'),
(126, '247c30b4-2468-4f90-a92a-85f754aeaed2', 'webinar', NULL, NULL, NULL, '2020-12-17 13:20:56', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.84.21.31\", \"start\": \"2020-12-17T13:20:56.801329Z\"}, {\"ip\": \"186.84.21.31\", \"start\": \"2020-12-17T13:21:08.835698Z\"}, {\"ip\": \"186.84.21.31\", \"start\": \"2020-12-17T13:21:36.722251Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"bEqcEVulS6Jy6MvIiRDH\", \"identifier\": \"qWJXRE\", \"keep_alive\": false, \"started_at\": \"2020-12-17T13:20:56.361516Z\", \"is_attendee\": true, \"estimated_end_time\": \"2020-12-17T16:20:56.352292Z\", \"accessible_via_link\": true}', '2020-12-17 11:20:56', '2020-12-17 11:21:36'),
(127, 'ceb388ec-d5f1-4997-abdd-27a9bf90c2a0', 'webinar', 'Como sacar tu negocio de la crisis', 'Este a&ntilde;o fue muy dificil para muchos emprendedores y empresarios, si tu eres uno de ellos que est&aacute; batallando para levantar su negocio este evento es especial para ti, descubre como desarrollar un plan estrat&eacute;gico para salir de la crisis.', '<p>Este a&ntilde;o fue muy dificil para muchos emprendedores y empresarios, si tu eres uno de ellos que est&aacute; batallando para levantar su negocio este evento es especial para ti, descubre como desarrollar un plan estrat&eacute;gico para salir de la crisis.</p>', '2020-12-30 17:15:00', 60, 1, 17, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2020-12-30T18:58:56.224820Z\"}, {\"ip\": \"186.84.20.30\", \"start\": \"2020-12-30T18:59:17.644005Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"muA4Tv\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2020-12-30T18:15:00.000000Z\", \"accessible_via_link\": false}', '2020-12-30 16:54:11', '2020-12-30 21:00:02'),
(128, '6a52f300-4c3d-4034-977a-2dc2a61c7e62', 'webinar', 'Prueba 12-01-2021', 'Esto es una prueba de funcionamiento entre Alexis y Luisana', '<p>Esto es una prueba de funcionamiento entre Alexis y Luisana</p>', '2021-01-12 19:45:00', 45, 1, 2, '{\"logs\": [{\"ip\": \"143.255.87.118\", \"start\": \"2021-01-12T20:08:50.977606Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"2Zvjzb\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2021-01-12T20:32:00.000000Z\", \"accessible_via_link\": false}', '2021-01-12 17:37:25', '2021-01-12 23:00:02'),
(129, 'b2701339-4f90-4bd0-800e-c6bb7c22e886', 'webinar', 'Equipo tecnico', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2021-01-15 01:33:00', 30, 1, 2, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"6RYfk2\", \"keep_alive\": false, \"cancelled_at\": \"2021-01-16T01:35:00.460527Z\", \"estimated_end_time\": \"2021-01-15T02:03:00.000000Z\", \"accessible_via_link\": false, \"cancellation_reason\": \"auto\"}', '2021-01-15 23:31:25', '2021-01-15 19:00:01'),
(130, 'e6653ad3-4cf2-4998-861b-afc6a48f723c', 'webinar', 'Equipo1', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-01-16 14:01:00', 30, 1, 17, '{\"logs\": [{\"ip\": \"186.29.205.253\", \"start\": \"2021-01-16T14:01:41.744055Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"QwdMLY\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2021-01-16T15:28:00.000000Z\", \"accessible_via_link\": false}', '2021-01-16 11:51:32', '2021-01-16 18:00:02'),
(131, '495474c7-e0c5-4aa5-b2c4-d66410119a1d', 'video_conference', NULL, NULL, NULL, '2021-01-18 17:31:55', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2021-01-18T17:31:55.777351Z\"}, {\"ip\": \"186.84.20.30\", \"start\": \"2021-01-18T17:31:58.637554Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"JFnxlSaCmoKr3f5y4o4d\", \"identifier\": \"tIfy5J\", \"keep_alive\": false, \"started_at\": \"2021-01-18T17:31:55.223949Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-01-18T20:31:55.212611Z\", \"accessible_via_link\": true}', '2021-01-18 15:31:55', '2021-01-18 15:31:58'),
(132, '8e853801-744b-4eb1-8733-3f0ca27a17cf', 'video_conference', 'Próximo evento', 'Pr&oacute;ximo evento', '<p>Pr&oacute;ximo evento</p>', '2021-01-31 20:00:00', 60, 1, 1, '{\"config\": {\"layout\": \"gallery\", \"enable_chat\": false, \"enable_comments\": false, \"enable_recording\": true, \"footer_auto_hide\": false, \"private_comments\": false, \"enable_file_sharing\": false, \"enable_hand_gesture\": false, \"enable_link_sharing\": false, \"enable_screen_sharing\": true, \"mute_participants_on_start\": false, \"allow_joining_without_devices\": false, \"enable_comment_before_meeting_starts\": false}, \"status\": \"scheduled\", \"instant\": false, \"identifier\": \"yUNJBu\", \"keep_alive\": false, \"estimated_end_time\": \"2021-01-31T21:00:00.000000Z\", \"accessible_via_link\": false}', '2021-01-18 18:15:04', '2021-01-29 22:53:25'),
(133, 'e064f7bd-da20-4e17-b458-df668503f196', 'video_conference', 'Próximo evento', 'Pr&oacute;ximo evento', '<p>Pr&oacute;ximo evento</p>', '2021-01-31 20:00:00', 60, 1, 1, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"eSwWAo\", \"keep_alive\": false, \"estimated_end_time\": \"2021-01-31T21:00:00.000000Z\", \"accessible_via_link\": false}', '2021-01-18 18:17:51', '2021-01-18 18:17:51'),
(134, 'e2ef5b86-1e40-42dc-a2d1-d1201fbaaecb', 'video_conference', 'Próximo evento', 'Pr&oacute;ximo evento', '<p>Pr&oacute;ximo evento</p>', '2021-01-31 18:00:00', 60, 1, 1, '{\"status\": \"scheduled\", \"instant\": false, \"identifier\": \"Qtitbc\", \"keep_alive\": false, \"estimated_end_time\": \"2021-01-31T19:00:00.000000Z\", \"accessible_via_link\": false}', '2021-01-18 18:28:32', '2021-01-18 18:28:32'),
(135, '04a5a7a5-be9e-41e8-bd03-49d1234b8b42', 'webinar', 'prueba sinergia lunes', '&nbsp;\r\n\r\nAdded a new item&nbsp;agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos&nbsp;to the checklist', '<p>&nbsp;</p>\r\n\r\n<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist</p>', '2021-01-25 21:19:00', 70, 1, 17, '{\"logs\": [{\"ip\": \"186.29.207.41\", \"start\": \"2021-01-25T21:19:37.606848Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"EhqFZi\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2021-01-25T22:35:00.000000Z\", \"accessible_via_link\": false}', '2021-01-25 19:06:14', '2021-01-26 01:00:01'),
(136, 'eb4bf612-d31c-4144-a881-d696fee9bcfd', 'webinar', 'Evento 27-01', 'Esto es una prueba de funcionamiento del equipo t&eacute;cnico', '<p>Esto es una prueba de funcionamiento del equipo t&eacute;cnico</p>', '2021-01-27 20:05:00', 45, 1, 2, '{\"logs\": [{\"ip\": \"143.255.87.118\", \"start\": \"2021-01-27T20:09:17.835225Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"VY4PIg\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2021-01-27T20:52:00.000000Z\", \"accessible_via_link\": false}', '2021-01-27 18:03:00', '2021-01-28 00:00:01'),
(137, '1a9098d9-4ad1-41f0-a737-4a701a668839', 'webinar', 'Prueba 29-01', 'Esto es una prueba de funcionamiento del equipo t&eacute;cnico', '<p>Esto es una prueba de funcionamiento del equipo t&eacute;cnico</p>', '2021-01-29 14:01:00', 50, 1, 2, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"ZKWNUn\", \"keep_alive\": false, \"estimated_end_time\": \"2021-01-29T14:51:00.000000Z\", \"accessible_via_link\": false}', '2021-01-29 11:02:19', '2021-01-29 18:00:02'),
(138, 'b365fdfe-0ec9-477d-9db3-8aa3cca93c41', 'video_conference', NULL, NULL, NULL, '2021-01-29 23:22:00', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2021-01-29T23:22:01.176311Z\"}, {\"ip\": \"186.84.20.30\", \"start\": \"2021-01-29T23:22:04.855804Z\"}], \"config\": [], \"status\": \"live\", \"instant\": true, \"room_id\": \"SEKB7HX2HJk2lRYtBuQ9\", \"identifier\": \"eLvyPV\", \"keep_alive\": false, \"started_at\": \"2021-01-29T23:22:00.731818Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-01-30T02:22:00.723546Z\", \"accessible_via_link\": true}', '2021-01-29 21:22:00', '2021-01-29 21:22:04'),
(139, 'f144dbf0-0ed1-40a6-a627-376f9e1e89e8', 'webinar', 'Prueba 30-01', 'Esto es una prueba de funcionaminenrfjdsncnakflhndklfkjadsf', '<p>Esto es una prueba de funcionaminenrfjdsncnakflhndklfkjadsf</p>', '2021-01-30 18:45:00', 45, 1, 2, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"PB60nh\", \"keep_alive\": false, \"estimated_end_time\": \"2021-01-30T19:30:00.000000Z\", \"accessible_via_link\": false}', '2021-01-30 11:44:55', '2021-01-30 17:00:02'),
(140, '070ff7a7-cbbb-469c-9327-9c1a3c3f1bf2', 'webinar', 'test febrero 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', '2021-02-07 19:00:00', 20, 1, 23, '{\"status\": \"ended\", \"instant\": false, \"identifier\": \"EtsQ8d\", \"keep_alive\": false, \"estimated_end_time\": \"2021-02-07T19:20:00.000000Z\", \"accessible_via_link\": false}', '2021-02-07 16:21:10', '2021-02-07 17:00:02'),
(141, 'c231df1d-fcd2-475f-851d-3af2808a4cc0', 'webinar', 'Prueba 22-02', 'Esto es una prueba del equipo t&eacute;cnico', '<p>Esto es una prueba del equipo t&eacute;cnico</p>', '2021-02-22 19:00:00', 60, 1, 2, '{\"logs\": [{\"ip\": \"190.198.245.179\", \"start\": \"2021-02-22T14:11:59.280713Z\"}], \"status\": \"ended\", \"instant\": false, \"identifier\": \"EA5KLO\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2021-02-22T20:00:00.000000Z\", \"accessible_via_link\": false}', '2021-02-22 11:54:21', '2021-02-22 17:00:02'),
(142, 'd4c265cd-a884-4cbe-a666-3c71ef58d383', 'video_conference', NULL, NULL, NULL, '2021-03-10 00:15:49', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2021-03-10T00:15:50.237235Z\"}, {\"ip\": \"186.84.20.30\", \"start\": \"2021-03-10T00:15:52.692815Z\"}], \"config\": [], \"is_pam\": false, \"status\": \"live\", \"instant\": true, \"room_id\": \"qkw8N8WThC12I4X3RsPn\", \"identifier\": \"liunQH\", \"keep_alive\": false, \"started_at\": \"2021-03-10T00:15:49.795056Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-03-10T03:15:49.786574Z\", \"accessible_via_link\": true}', '2021-03-09 22:15:49', '2021-03-09 22:15:52'),
(143, '04db3a80-e155-4b3e-bfea-3cab33c8762e', 'webinar', 'Prueba Final 10-03', 'Esto es una prueba de funcionamiento por actualizaci&oacute;n de sistema de streaming', '<p>Esto es una prueba de funcionamiento por actualizaci&oacute;n de sistema de streaming</p>', '2021-03-11 01:00:00', 45, 1, 2, '{\"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"lmo63X\", \"keep_alive\": false, \"estimated_end_time\": \"2021-03-11T01:45:00.000000Z\", \"accessible_via_link\": false}', '2021-03-10 18:07:08', '2021-03-10 23:00:02'),
(144, '07e04522-926e-4d31-81e9-8e5eaf688328', 'webinar', NULL, NULL, NULL, '2021-03-10 20:19:57', 180, 1, 1, '{\"logs\": [{\"ip\": \"190.200.40.211\", \"start\": \"2021-03-10T20:19:58.073465Z\"}, {\"ip\": \"190.200.40.211\", \"start\": \"2021-03-10T20:20:02.554249Z\"}, {\"ip\": \"190.200.40.211\", \"start\": \"2021-03-10T20:20:14.985261Z\"}], \"config\": [], \"is_pam\": false, \"status\": \"live\", \"instant\": true, \"room_id\": \"yP0QRSFv7jC8pbMnfEgo\", \"identifier\": \"fkAIFK\", \"keep_alive\": false, \"started_at\": \"2021-03-10T20:19:57.598494Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-03-10T23:19:57.590588Z\", \"accessible_via_link\": true}', '2021-03-10 18:19:57', '2021-03-10 18:20:14'),
(145, '9073de09-2f91-420e-bb9e-c4de59598513', 'video_conference', NULL, NULL, NULL, '2021-03-17 14:47:21', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2021-03-17T14:47:21.748077Z\"}, {\"ip\": \"186.84.20.30\", \"start\": \"2021-03-17T14:47:22.928019Z\"}], \"config\": [], \"is_pam\": false, \"status\": \"live\", \"instant\": true, \"room_id\": \"Yf3FT5WZjqXsHI68og9v\", \"identifier\": \"XEwv1I\", \"keep_alive\": false, \"started_at\": \"2021-03-17T14:47:21.304361Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-03-17T17:47:21.294409Z\", \"accessible_via_link\": true}', '2021-03-17 12:47:21', '2021-03-17 12:47:22'),
(146, '94e10516-d146-496c-9f29-4bddc07120ba', 'video_conference', NULL, NULL, NULL, '2021-03-17 14:50:06', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2021-03-17T14:50:07.368207Z\"}, {\"ip\": \"186.84.20.30\", \"start\": \"2021-03-17T14:50:08.479349Z\"}], \"config\": [], \"is_pam\": false, \"status\": \"live\", \"instant\": true, \"room_id\": \"xvkmpQk0GeHtgzmMimkL\", \"identifier\": \"MQnI2x\", \"keep_alive\": true, \"started_at\": \"2021-03-17T14:50:06.926920Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-03-17T17:50:06.917418Z\", \"accessible_via_link\": true}', '2021-03-17 12:50:06', '2021-03-17 12:50:08'),
(147, 'e178c50d-e968-4808-9761-f0c05303bba9', 'video_conference', NULL, NULL, NULL, '2021-03-17 18:26:06', 180, 1, 1, '{\"logs\": [{\"ip\": \"191.95.59.46\", \"start\": \"2021-03-17T18:26:07.445693Z\"}, {\"ip\": \"191.95.59.46\", \"start\": \"2021-03-17T18:26:13.648464Z\"}], \"config\": [], \"is_pam\": false, \"status\": \"live\", \"instant\": true, \"room_id\": \"eVmpwUhW4boDFceF1Usi\", \"identifier\": \"Demo\", \"keep_alive\": true, \"started_at\": \"2021-03-17T18:26:06.976306Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-03-17T21:26:06.967251Z\", \"accessible_via_link\": true}', '2021-03-17 16:26:06', '2021-03-17 16:26:13'),
(148, '349f4987-e315-4a24-afdb-3b4eedd34716', 'video_conference', 'Demo Videoconferencia', 'el objetivo es probar la plataforma de videollamadas', '<p>demo, demo, demo</p>', '2021-03-17 13:32:25', 60, NULL, 1, '{\"is_pam\": false, \"status\": \"cancelled\", \"instant\": false, \"identifier\": \"SUnFgX\", \"keep_alive\": false, \"cancelled_at\": \"2021-03-17T18:33:29.654071Z\", \"estimated_end_time\": \"2021-03-17T14:32:25.000000Z\", \"accessible_via_link\": true, \"cancellation_reason\": \"auto\"}', '2021-03-17 16:33:21', '2021-03-17 16:33:29'),
(149, '9b03d0fb-f969-4cc0-915a-5752bc810526', 'video_conference', 'Demo Videoconferencia', 'el objetivo es probar la plataforma de videollamadas', '<p>demo, demo, demo, demo</p>', '2021-03-17 13:39:00', 60, NULL, 1, '{\"is_pam\": false, \"status\": \"cancelled\", \"instant\": false, \"identifier\": \"cnGMSG\", \"keep_alive\": false, \"cancelled_at\": \"2021-03-17T18:35:27.714752Z\", \"estimated_end_time\": \"2021-03-17T14:39:00.000000Z\", \"accessible_via_link\": true, \"cancellation_reason\": \"auto\"}', '2021-03-17 16:35:08', '2021-03-17 16:35:27'),
(150, '74083dd4-1d53-4b0e-8b80-f14bee300bb9', 'webinar', 'Nueva Prueba 23-03', 'Esto es una prueba del equipo t&eacute;cnico para verificar la transmisi&oacute;n de video', '<p>Esto es una prueba del equipo t&eacute;cnico para verificar la transmisi&oacute;n de video</p>', '2021-03-23 14:30:00', 45, 1, 2, '{\"logs\": [{\"ip\": \"190.78.109.93\", \"start\": \"2021-03-23T14:31:52.980812Z\"}, {\"ip\": \"190.78.109.93\", \"start\": \"2021-03-23T14:33:34.434730Z\"}], \"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"tojxps\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2021-03-23T15:15:00.000000Z\", \"accessible_via_link\": false}', '2021-03-23 12:29:15', '2021-03-23 18:00:02'),
(151, '794bdb1f-b201-4f1e-a071-409d2f8c3fd0', 'webinar', NULL, NULL, NULL, '2021-03-24 12:56:05', 180, 1, 1, '{\"logs\": [{\"ip\": \"190.78.109.93\", \"start\": \"2021-03-24T12:56:05.660538Z\"}, {\"ip\": \"190.78.109.93\", \"start\": \"2021-03-24T12:56:14.474345Z\"}], \"config\": [], \"is_pam\": false, \"status\": \"live\", \"instant\": true, \"room_id\": \"x51pIbUOMWC212ZBGQ3q\", \"identifier\": \"Cf6pKW\", \"keep_alive\": false, \"started_at\": \"2021-03-24T12:56:05.212794Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-03-24T15:56:05.203381Z\", \"accessible_via_link\": true}', '2021-03-24 10:56:05', '2021-03-24 10:56:14'),
(152, '3caf1c8e-b6ef-42b1-b82f-a7777cca6bff', 'webinar', 'Esto es una prueba', 'pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;', '<p>pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;pueba&nbsp;</p>', '2021-03-24 13:00:00', 45, 1, 2, '{\"logs\": [{\"ip\": \"190.78.109.93\", \"start\": \"2021-03-24T13:01:41.976684Z\"}], \"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"CSfIMW\", \"keep_alive\": false, \"is_attendee\": true, \"estimated_end_time\": \"2021-03-24T13:45:00.000000Z\", \"accessible_via_link\": false}', '2021-03-24 11:00:19', '2021-03-24 16:00:02'),
(153, '076d6cc6-6103-4ad5-872a-643a816e6abf', 'webinar', 'Prueba', 'Esto es una prueba para el eliminado de eventos posterior a la creaci&oacute;n', '<p>Esto es una prueba para el eliminado de eventos posterior a la creaci&oacute;n</p>', '2021-03-31 19:20:00', 45, 1, 2, '{\"is_pam\": false, \"status\": \"scheduled\", \"instant\": false, \"identifier\": \"il1FkG\", \"keep_alive\": false, \"estimated_end_time\": \"2021-03-31T20:05:00.000000Z\", \"accessible_via_link\": false}', '2021-03-31 16:15:04', '2021-03-31 11:15:04');
INSERT INTO `meetings` (`id`, `uuid`, `type`, `title`, `agenda`, `description`, `start_date_time`, `period`, `category_id`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(154, '8d77bd91-41d1-4691-8d4c-651988b955dc', 'webinar', 'De Emprendedor a Empresario', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-04-10 14:00:00', 45, 1, 5, '{\"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"V6nXlV\", \"keep_alive\": false, \"estimated_end_time\": \"2021-04-10T14:45:00.000000Z\", \"accessible_via_link\": false}', '2021-04-03 14:20:44', '2021-04-10 16:00:02'),
(155, 'bbde4d20-d6bc-4fdd-b27e-7f887dcd7c2d', 'webinar', 'Principios de Trading con Crypto', 'Why do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-04-17 16:30:00', 60, 1, 5, '{\"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"4C6yme\", \"keep_alive\": false, \"estimated_end_time\": \"2021-04-17T17:30:00.000000Z\", \"accessible_via_link\": false}', '2021-04-03 14:25:06', '2021-04-17 19:00:02'),
(156, '289f8246-2877-49d9-a063-476d54b8620c', 'webinar', 'PRUEBA DOMINGUERA CON DOUG MBA', 'Lorem Ipsum&nbsp;es simplemente texto ficticio de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica.&nbsp;Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.&nbsp;Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.&nbsp;Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que conten&iacute;an pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que inclu&iacute;a versiones de Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;es simplemente texto ficticio de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica.&nbsp;Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.&nbsp;Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.&nbsp;Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que conten&iacute;an pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que inclu&iacute;a versiones de Lorem Ipsum.</p>', '2021-04-18 01:12:00', 15, 1, 11, '{\"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"QNQPbR\", \"keep_alive\": false, \"estimated_end_time\": \"2021-04-18T01:27:00.000000Z\", \"accessible_via_link\": false}', '2021-04-18 20:17:26', '2021-04-18 16:00:02'),
(157, '00fe67a1-3676-4c09-9574-74a4c1335d07', 'webinar', 'Test DE EVENTO', 'adsfdgfhgh,j,jhjgredghfjh,mjhgmfddfadsfgdhghf', '<p>adsfdgfhgh,j,jhjgredghfjh,mjhgmfddfadsfgdhghf</p>', '2021-04-19 00:28:00', 30, 1, 38, '{\"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"q3htcP\", \"keep_alive\": false, \"estimated_end_time\": \"2021-04-19T00:58:00.000000Z\", \"accessible_via_link\": false}', '2021-04-18 21:21:26', '2021-04-19 03:00:02'),
(158, '3cb1085a-bbbd-439b-ba23-2d8ae7e96a23', 'video_conference', NULL, NULL, NULL, '2021-04-21 01:03:28', 180, 1, 1, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2021-04-21T01:03:29.450566Z\"}, {\"ip\": \"186.84.20.30\", \"start\": \"2021-04-21T01:03:33.347718Z\"}], \"config\": [], \"is_pam\": false, \"status\": \"live\", \"instant\": true, \"room_id\": \"5KSPgmXSwAE9luH7shmk\", \"identifier\": \"2JMLOP\", \"keep_alive\": false, \"started_at\": \"2021-04-21T01:03:29.006948Z\", \"is_attendee\": true, \"estimated_end_time\": \"2021-04-21T04:03:28.997005Z\", \"accessible_via_link\": true}', '2021-04-20 22:03:29', '2021-04-20 22:03:33'),
(159, 'f9d2c264-154c-465b-bcee-e2e2d2e51c90', 'webinar', 'Lanza tu producto digital', 'Aprende como lanzar tu producto digital al mercado, como promocionar en redes', '<p>Aprende como lanzar tu producto digital al mercado, como promocionar en redes</p>', '2021-05-01 09:00:00', 60, 1, 39, '{\"is_pam\": false, \"status\": \"scheduled\", \"instant\": false, \"identifier\": \"niBDhY\", \"keep_alive\": false, \"estimated_end_time\": \"2021-04-30T02:00:00.000000Z\", \"accessible_via_link\": false}', '2021-04-21 20:34:51', '2021-04-21 15:44:58'),
(160, '1e032368-e87c-47a7-a4dd-5a19c9ccf3a3', 'webinar', 'Evento de Soporte Técnico', 'Esto es una prueba de soporte t&eacute;cnico para verificar el funcionamiento y afinar detalles', '<p>Esto es una prueba de soporte t&eacute;cnico para verificar el funcionamiento y afinar detalles</p>', '2021-04-26 12:45:00', 45, 1, 2, '{\"is_pam\": false, \"status\": \"ended\", \"instant\": false, \"identifier\": \"YE10ii\", \"keep_alive\": false, \"estimated_end_time\": \"2021-04-26T13:30:00.000000Z\", \"accessible_via_link\": false}', '2021-04-26 09:44:28', '2021-04-26 15:00:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meeting_invitees`
--

CREATE TABLE `meeting_invitees` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_attendee` tinyint(1) NOT NULL DEFAULT '0',
  `meeting_id` bigint UNSIGNED DEFAULT NULL,
  `contact_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `meeting_invitees`
--

INSERT INTO `meeting_invitees` (`id`, `uuid`, `is_attendee`, `meeting_id`, `contact_id`, `meta`, `created_at`, `updated_at`) VALUES
(1, '23b50bf0-9a32-418e-9b72-f2581ff9df20', 1, 6, 1, '{\"logs\": [{\"ip\": \"190.77.236.187\", \"start\": \"2020-10-17T13:49:25.169229Z\"}]}', '2020-10-17 11:49:24', '2020-10-17 11:49:25'),
(2, 'b2a4454e-0233-4acf-8c81-8e83ddabd5df', 0, 6, 2, NULL, '2020-10-17 11:49:24', '2020-10-17 11:49:24'),
(3, 'b5162700-c8a2-4973-bfd4-f57e80737656', 1, 8, 1, '{\"logs\": [{\"ip\": \"186.167.242.242\", \"start\": \"2020-10-19T12:38:27.741423Z\"}]}', '2020-10-19 10:38:24', '2020-10-19 10:38:27'),
(5, '8b54b9cf-df22-46c6-9a36-70b745775c5a', 1, 10, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:36:57.137435Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:38:07.417835Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:38:22.289114Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-19T13:38:56.626808Z\"}]}', '2020-10-19 11:36:56', '2020-10-19 11:38:56'),
(6, '74620b72-6e0b-4c5d-a3c2-6f24f81fef8f', 1, 13, 5, '{\"logs\": [{\"ip\": \"191.95.59.12\", \"start\": \"2020-10-20T03:20:54.123300Z\"}, {\"ip\": \"191.95.59.12\", \"start\": \"2020-10-20T03:38:42.935247Z\"}]}', '2020-10-20 01:20:52', '2020-10-20 01:38:42'),
(7, 'a363ffc2-4a7d-468c-a0d7-7d0159d4ee49', 1, 15, 5, '{\"logs\": [{\"ip\": \"191.95.59.12\", \"start\": \"2020-10-20T05:02:42.125359Z\"}, {\"ip\": \"191.95.59.12\", \"start\": \"2020-10-20T05:03:19.100500Z\"}]}', '2020-10-20 03:02:27', '2020-10-20 03:03:19'),
(8, '94ab27de-6d56-414f-906a-51a4df698847', 1, 17, 6, '{\"logs\": [{\"ip\": \"43.229.75.239\", \"start\": \"2020-10-20T09:44:18.006718Z\"}]}', '2020-10-20 07:44:11', '2020-10-20 07:44:18'),
(12, '93cfb05f-32a8-41d6-86b8-5a7e51799750', 1, 24, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T14:50:49.183207Z\"}]}', '2020-10-20 12:50:48', '2020-10-20 12:50:49'),
(13, 'b366c00f-90ce-477a-8779-5eb992724f06', 1, 26, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T15:02:38.096605Z\"}, {\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T15:02:45.097840Z\"}]}', '2020-10-20 13:02:35', '2020-10-20 13:02:45'),
(14, '1382525a-032a-451e-abfb-a7e81a50b097', 1, 27, 1, '{\"logs\": [{\"ip\": \"190.199.92.2\", \"start\": \"2020-10-20T15:03:26.691243Z\"}]}', '2020-10-20 13:03:24', '2020-10-20 13:03:26'),
(17, '0357248e-f89e-495d-b964-ca4d785b569f', 0, 29, 8, NULL, '2020-10-20 08:16:26', '2020-10-20 08:16:26'),
(18, '22919e5d-0d6e-4189-9b31-378341d604ce', 0, 31, 8, NULL, '2020-10-20 10:09:20', '2020-10-20 10:09:20'),
(19, '50ff5cfe-5a67-491d-b1d7-3e96c5e3f210', 0, 32, 8, NULL, '2020-10-20 10:29:36', '2020-10-20 10:29:36'),
(20, '0b980d02-a711-4199-94d8-35ee9714b34b', 1, 32, 9, '{\"logs\": [{\"ip\": \"186.95.112.116\", \"start\": \"2020-10-20T18:18:36.695870Z\"}]}', '2020-10-20 10:32:23', '2020-10-20 16:18:36'),
(21, '754fcb09-8923-4771-acba-c03efc9ea50f', 0, 34, 13, NULL, '2020-10-20 16:32:28', '2020-10-20 16:32:28'),
(22, '33c08c3d-f078-416b-9e2b-9a6b47bafd5e', 0, 36, 9, NULL, '2020-10-20 16:53:41', '2020-10-20 16:53:41'),
(23, '1fd02f18-016a-4d7b-98de-6f77a7633fd9', 1, 41, 9, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-21T00:44:14.614995Z\"}]}', '2020-10-20 17:25:07', '2020-10-20 22:44:14'),
(24, '2947e790-c765-4f99-83fc-13867accea6b', 0, 41, 8, NULL, '2020-10-20 17:33:19', '2020-10-20 17:33:19'),
(25, '5fd74fe2-f47b-45cf-9286-71252fafaa9c', 1, 41, 15, '{\"logs\": [{\"ip\": \"177.245.192.167\", \"start\": \"2020-10-21T00:46:56.215708Z\"}, {\"ip\": \"177.245.192.167\", \"start\": \"2020-10-21T00:51:16.080066Z\"}, {\"ip\": \"177.245.192.167\", \"start\": \"2020-10-21T00:51:25.984334Z\"}]}', '2020-10-20 17:40:24', '2020-10-20 22:51:25'),
(26, '2ae86e21-d421-403e-af98-f6c7a99f5e9e', 1, 42, 16, '{\"logs\": [{\"ip\": \"186.28.134.215\", \"start\": \"2020-10-21T01:04:09.501873Z\"}, {\"ip\": \"186.28.134.215\", \"start\": \"2020-10-21T01:07:37.555982Z\"}]}', '2020-10-20 23:04:08', '2020-10-20 23:07:37'),
(27, '1a1f9ee1-9fba-48ae-8b0f-f7e6737be81e', 1, 42, 14, '{\"logs\": [{\"ip\": \"191.95.59.177\", \"start\": \"2020-10-21T01:04:48.467287Z\"}]}', '2020-10-20 23:04:47', '2020-10-20 23:04:48'),
(29, 'eee35cbb-4c8a-40e2-b57c-4f9159bc81ff', 1, 58, 17, '{\"logs\": [{\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T00:10:55.720409Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T00:27:17.607875Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T00:43:56.182915Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T00:44:48.270481Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T00:57:42.789855Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T01:20:11.449900Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T02:01:13.028988Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T02:01:29.170010Z\"}, {\"ip\": \"177.245.193.47\", \"start\": \"2020-10-24T02:02:04.974877Z\"}]}', '2020-10-24 00:10:55', '2020-10-24 02:02:04'),
(30, '3b03cd97-fd1d-41c2-b1df-04417d6ac90f', 0, 62, 19, NULL, '2020-10-24 18:07:36', '2020-10-24 18:07:36'),
(31, 'e0f17c36-e040-4a6d-a8d2-0e8973664e4b', 0, 64, 19, NULL, '2020-10-24 18:38:38', '2020-10-24 18:38:38'),
(32, '8c98904c-5f60-46d6-bca4-72118cc513cf', 0, 65, 19, NULL, '2020-10-24 18:43:19', '2020-10-24 18:43:19'),
(33, '7b7e63ab-dce0-4b09-abc8-f32c50d52d0d', 0, 65, 20, NULL, '2020-10-24 18:44:51', '2020-10-24 18:44:51'),
(34, '354506f0-a07a-4c4d-bbbf-a8aeab5429ae', 0, 66, 19, NULL, '2020-10-24 18:48:11', '2020-10-24 18:48:11'),
(35, '783d1ece-6583-4f98-83f8-194515933a48', 0, 70, 8, NULL, '2020-10-26 07:43:19', '2020-10-26 07:43:19'),
(36, '2363832d-c785-4efd-8358-66f183ef2ed4', 0, 80, 19, NULL, '2020-10-26 12:21:00', '2020-10-26 12:21:00'),
(37, 'a526c981-59f3-42ae-8456-3986519bda65', 1, 80, 20, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:22:58.622350Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:23:59.405104Z\"}]}', '2020-10-26 12:22:34', '2020-10-26 17:23:59'),
(38, '396519c0-39fd-4e6f-ab89-ad8f13ad81f6', 1, 87, 20, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:30:43.518599Z\"}]}', '2020-10-26 12:30:26', '2020-10-26 17:30:43'),
(39, 'a8b2ebfd-8a87-4f88-8ec2-a6318f31a2e4', 1, 87, 19, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:34:54.925477Z\"}]}', '2020-10-26 12:34:20', '2020-10-26 17:34:54'),
(40, '05acfe86-f918-4b23-aee1-94379a52d972', 1, 88, 19, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:42:28.889533Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:46:45.770090Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:46:49.767152Z\"}]}', '2020-10-26 12:42:09', '2020-10-26 17:46:49'),
(41, '9a2bce85-1dd8-4fee-b532-7284e8e2290d', 0, 89, 20, NULL, '2020-10-26 12:57:18', '2020-10-26 12:57:18'),
(42, '55d6da66-d7cd-45fb-b37c-ca8bec801649', 1, 89, 19, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T17:58:15.655197Z\"}]}', '2020-10-26 12:57:55', '2020-10-26 17:58:15'),
(43, 'f43e5998-c2cd-4574-899e-1a1e737bd032', 1, 90, 19, '{\"logs\": [{\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T18:20:48.453698Z\"}, {\"ip\": \"191.95.58.146\", \"start\": \"2020-10-26T18:25:16.022421Z\"}, {\"ip\": \"186.84.20.49\", \"start\": \"2020-10-26T18:58:09.468131Z\"}]}', '2020-10-26 13:15:08', '2020-10-26 18:58:09'),
(44, '995947b1-4fd7-4836-8194-aff1c88cf717', 1, 90, 20, '{\"logs\": [{\"ip\": \"186.28.134.215\", \"start\": \"2020-10-26T18:21:58.018469Z\"}, {\"ip\": \"186.28.134.215\", \"start\": \"2020-10-26T18:24:44.031334Z\"}, {\"ip\": \"186.28.134.215\", \"start\": \"2020-10-26T18:46:38.617658Z\"}]}', '2020-10-26 13:15:24', '2020-10-26 18:46:38'),
(45, '10b05711-0dde-4ad2-a895-247b88e47016', 1, 90, 8, '{\"logs\": [{\"ip\": \"190.207.60.71\", \"start\": \"2020-10-26T18:21:02.535104Z\"}]}', '2020-10-26 13:16:44', '2020-10-26 18:21:02'),
(46, '31ff31c8-6d3e-4a12-9e19-b248c17a99e2', 0, 92, 19, NULL, '2020-10-27 09:00:12', '2020-10-27 09:00:12'),
(47, NULL, 0, 91, 8, NULL, NULL, NULL),
(48, '4ab8fa53-8d41-4986-b2da-8b8778fa7b34', 1, 94, 21, '{\"logs\": [{\"ip\": \"191.95.48.180\", \"start\": \"2020-10-28T03:28:07.320760Z\"}]}', '2020-10-28 03:28:07', '2020-10-28 03:28:07'),
(49, 'b2e070d7-27cc-4068-b9dd-0679c272fe00', 1, 97, 19, '{\"logs\": [{\"ip\": \"177.245.192.239\", \"start\": \"2020-10-28T17:24:57.789655Z\"}]}', '2020-10-28 12:24:25', '2020-10-28 17:24:57'),
(50, 'ffeb2a86-d1ca-4e89-a2bb-5b866969b675', 0, 101, 19, NULL, '2020-10-30 18:45:45', '2020-10-30 18:45:45'),
(51, 'efb03fd7-b31b-4e1d-bbea-4dc02c687fc8', 1, 102, 17, '{\"logs\": [{\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T01:28:12.872554Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T02:30:11.796998Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:30:43.350484Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:31:39.735464Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:31:58.816329Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:38:40.232620Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:38:50.008937Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:50:20.879193Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:50:25.505118Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:50:38.334782Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:50:55.017918Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:51:28.864845Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:51:57.680728Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:52:03.156436Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:52:08.662294Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-10-31T03:52:30.005634Z\"}]}', '2020-10-31 01:28:12', '2020-10-31 03:52:30'),
(52, 'e86aba3a-ae92-4638-a58b-185355a33b31', 1, 102, 24, '{\"logs\": [{\"ip\": \"190.140.251.162\", \"start\": \"2020-10-31T02:11:40.607166Z\"}]}', '2020-10-31 02:11:39', '2020-10-31 02:11:40'),
(53, '7c62919d-ad4d-4232-85c2-294657417e82', 0, 103, 19, NULL, '2020-10-31 08:47:03', '2020-10-31 08:47:03'),
(54, '65049cf2-d0c4-455d-a51e-a7e1e0522be7', 0, 104, 19, NULL, '2020-10-31 09:51:15', '2020-10-31 09:51:15'),
(55, 'a9718160-baec-44ee-b8ce-f53acaf5f19f', 0, 104, 20, NULL, '2020-10-31 09:53:16', '2020-10-31 09:53:16'),
(56, '0e3c7e88-7aab-45c7-8d1c-482575eceaad', 1, 107, 19, '{\"logs\": [{\"ip\": \"186.29.204.213\", \"start\": \"2020-10-31T18:35:15.949613Z\"}, {\"ip\": \"186.29.204.213\", \"start\": \"2020-10-31T18:43:21.200180Z\"}, {\"ip\": \"186.29.204.213\", \"start\": \"2020-10-31T18:43:58.621712Z\"}]}', '2020-10-31 13:33:57', '2020-10-31 18:43:58'),
(57, 'd08bd8ef-56c3-4ce7-8d3f-ca81cc6b3ded', 1, 108, 17, '{\"logs\": [{\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T00:24:11.974137Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T01:26:04.665949Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:03:39.835342Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:03:53.289015Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:05:04.749704Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:46:31.367973Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:47:12.235673Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:47:32.526154Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:48:13.825065Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:48:34.340269Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:48:40.323901Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:49:44.587624Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:52:33.187604Z\"}, {\"ip\": \"177.245.195.143\", \"start\": \"2020-11-01T02:52:43.775660Z\"}]}', '2020-11-01 00:24:11', '2020-11-01 02:52:43'),
(58, 'd445a77f-7053-4b96-bac3-444e8642ee25', 0, 108, 19, NULL, '2020-11-01 02:59:23', '2020-11-01 02:59:23'),
(59, '7c18baaa-e3f7-43a5-a9ed-06b9a0e13f66', 0, 113, 19, NULL, '2020-11-02 08:17:20', '2020-11-02 08:17:20'),
(60, 'f676c116-fee9-490d-bac8-e042de3dabb7', 0, 115, 8, NULL, '2020-11-05 15:57:41', '2020-11-05 15:57:41'),
(61, 'ecae1783-900b-4bd4-8658-961f3fc3de19', 0, 116, 19, NULL, '2020-11-16 14:33:59', '2020-11-16 14:33:59'),
(62, 'cdf318e5-fc41-4867-820c-c4b015f8801b', 1, 118, 19, '{\"logs\": [{\"ip\": \"186.84.21.95\", \"start\": \"2020-11-16T21:51:42.256381Z\"}]}', '2020-11-16 14:43:01', '2020-11-16 19:51:42'),
(63, 'e3620764-a28a-45e7-9763-ab5c43aa3f41', 0, 116, 8, NULL, '2020-11-16 17:58:14', '2020-11-16 17:58:14'),
(66, '64f178a0-6aa6-4d65-ab9c-16aecfc3ecbc', 1, 123, 26, '{\"logs\": [{\"ip\": \"190.36.42.155\", \"start\": \"2020-12-14T17:09:22.675434Z\"}]}', '2020-12-14 10:06:58', '2020-12-14 15:09:22'),
(67, '0d1103be-f1fc-45e5-9bfe-90d432e83d2c', 0, 123, 27, NULL, '2020-12-14 10:31:02', '2020-12-14 10:31:02'),
(68, 'dadd2580-0e1e-454d-8dac-d022b57b1b9f', 0, 123, 28, NULL, '2020-12-14 15:18:39', '2020-12-14 15:18:39'),
(69, '42b2842b-3628-4125-9942-861596d98ec6', 0, 125, 29, NULL, '2020-12-14 20:05:59', '2020-12-14 20:05:59'),
(70, 'f789c378-3ac8-45ab-a119-b2b5e6a0bf44', 0, 125, 30, NULL, '2020-12-15 10:56:19', '2020-12-15 10:56:19'),
(71, '51826e56-d253-46f4-9bad-e9de7b791f35', 0, 125, 27, NULL, '2020-12-15 13:49:38', '2020-12-15 13:49:38'),
(72, '906411d2-6ec7-4669-92d3-b78b44ebfe1c', 0, 124, 27, NULL, '2020-12-15 15:04:43', '2020-12-15 15:04:43'),
(73, 'e405a065-d184-434e-a43e-45ff3a05616e', 0, 124, 31, NULL, '2020-12-15 15:57:19', '2020-12-15 15:57:19'),
(74, '2553aa77-f09f-4a0a-8523-6a44ed5fa2df', 0, 125, 31, NULL, '2020-12-15 15:58:02', '2020-12-15 15:58:02'),
(75, '86f85c1b-7eb1-415e-a8d3-111667b2bbd5', 0, 125, 31, NULL, '2020-12-15 16:16:02', '2020-12-15 16:16:02'),
(76, 'b6d06ca2-57b9-4485-a904-01bab9c5b912', 1, 127, 30, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2020-12-30T19:56:28.049442Z\"}]}', '2020-12-30 11:56:37', '2020-12-30 17:56:28'),
(77, 'b7de5970-dc33-412c-a840-598cb0c31e9a', 1, 127, 32, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2020-12-30T19:42:41.046018Z\"}]}', '2020-12-30 12:38:27', '2020-12-30 17:42:41'),
(78, '567ed2c0-bb1a-4e17-ac3e-8819fe608654', 1, 127, 33, '{\"logs\": [{\"ip\": \"186.84.20.30\", \"start\": \"2020-12-30T19:54:08.717077Z\"}]}', '2020-12-30 12:53:38', '2020-12-30 17:54:08'),
(79, '7158cc61-8a69-44b3-ba84-8c05b8aedbfd', 0, 127, 34, NULL, '2020-12-30 13:01:42', '2020-12-30 13:01:42'),
(80, 'a272d36d-e3de-47e2-aa03-f93cb812df4b', 1, 128, 15, '{\"logs\": [{\"ip\": \"190.200.35.21\", \"start\": \"2021-01-12T20:11:13.044146Z\"}, {\"ip\": \"190.200.35.21\", \"start\": \"2021-01-12T20:23:09.790499Z\"}]}', '2021-01-12 12:47:44', '2021-01-12 18:23:09'),
(81, '965e9932-a7bd-4eaf-8fb3-3b2d952b219c', 1, 130, 35, '{\"logs\": [{\"ip\": \"186.148.193.133\", \"start\": \"2021-01-16T14:05:04.096642Z\"}, {\"ip\": \"186.148.193.133\", \"start\": \"2021-01-16T14:19:52.942402Z\"}]}', '2021-01-16 06:58:56', '2021-01-16 12:19:52'),
(82, 'e3baee4f-0c14-41e0-b0ce-d949da2ec355', 0, 130, 36, NULL, '2021-01-16 07:08:44', '2021-01-16 07:08:44'),
(83, '40070f4e-e691-4d6e-b802-4aded9a21aa6', 0, 135, 37, NULL, '2021-01-25 14:16:22', '2021-01-25 14:16:22'),
(84, '2923eb88-df14-4cc5-bc2d-823c573aa43d', 1, 135, 35, '{\"logs\": [{\"ip\": \"186.185.135.172\", \"start\": \"2021-01-25T21:21:24.024169Z\"}, {\"ip\": \"186.185.135.172\", \"start\": \"2021-01-25T21:25:25.103016Z\"}]}', '2021-01-25 14:18:01', '2021-01-25 19:25:25'),
(85, 'c59f523a-6bb8-442e-b108-408d7eba576c', 1, 136, 8, '{\"logs\": [{\"ip\": \"190.198.243.18\", \"start\": \"2021-01-27T20:10:58.812140Z\"}]}', '2021-01-27 13:08:51', '2021-01-27 18:10:58'),
(86, '082a5a0a-dd09-4ebc-824b-b1e695c678e5', 1, 136, 15, '{\"logs\": [{\"ip\": \"190.198.243.18\", \"start\": \"2021-01-27T20:12:04.720394Z\"}]}', '2021-01-27 13:10:52', '2021-01-27 18:12:04'),
(87, '857aed40-33cd-485e-a229-cc6601e5c68a', 0, 137, 38, NULL, '2021-01-29 13:28:15', '2021-01-29 13:28:15'),
(88, 'a0590827-f91c-4c36-8c9d-ef5e20e5efc8', 0, 139, 15, NULL, '2021-01-30 06:57:41', '2021-01-30 06:57:41'),
(89, '9a13bc80-e0cf-4b82-a719-fe8b9eb3e5ea', 0, 140, 30, NULL, '2021-02-07 11:29:13', '2021-02-07 11:29:13'),
(90, '6ad10e6d-5f39-4f85-8991-4c1629e1a284', 0, 141, 15, NULL, '2021-02-22 06:57:32', '2021-02-22 06:57:32'),
(91, '044838eb-89be-47e9-9b85-e0d29eafd24c', 0, 142, 21, NULL, '2021-03-09 22:15:55', '2021-03-09 22:15:55'),
(92, '3b6180f5-e47d-425a-a72a-3ca060190f07', 0, 143, 30, NULL, '2021-03-10 14:07:35', '2021-03-10 14:07:35'),
(93, '34d3612c-56b5-4987-a291-c1a2e4192cf1', 0, 145, 21, NULL, '2021-03-17 12:47:25', '2021-03-17 12:47:25'),
(94, '8fa4fa22-57c2-48cf-9f53-37fd340278c9', 0, 146, 21, NULL, '2021-03-17 12:50:10', '2021-03-17 12:50:10'),
(95, '012c58bd-2d42-4858-ad61-9c60912e6b09', 0, 147, 21, NULL, '2021-03-17 16:26:20', '2021-03-17 16:26:20'),
(96, '79a7c35f-f496-43a0-b76d-19e88c33e894', 0, 150, 30, NULL, '2021-03-23 07:29:41', '2021-03-23 07:29:41'),
(97, '5e36b382-298d-4bb8-8b5e-23e0fa7ada12', 0, 151, 21, NULL, '2021-03-24 10:56:21', '2021-03-24 10:56:21'),
(98, 'bf3cecb0-50b4-43ea-8a88-645fc33e225e', 0, 154, 2, NULL, '2021-04-18 16:13:19', '2021-04-18 16:13:19'),
(99, 'b290a468-0a90-4ffa-94d2-2a44fb2f5281', 0, 154, 39, NULL, '2021-04-18 16:13:32', '2021-04-18 16:13:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_08_08_100000_create_telescope_entries_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_04_06_140659_create_permission_tables', 1),
(6, '2020_04_06_142503_create_activity_log_table', 1),
(7, '2020_04_06_145125_create_media_table', 1),
(8, '2020_04_07_065852_create_notifications_table', 1),
(9, '2020_04_07_065904_create_jobs_table', 1),
(10, '2020_04_07_070304_create_configs_table', 1),
(11, '2020_04_07_070705_create_tags_table', 1),
(12, '2020_04_07_070911_create_taggables_table', 1),
(13, '2020_04_07_071338_create_options_table', 1),
(14, '2020_04_09_054225_create_password_resets_table', 1),
(15, '2020_04_12_031749_create_todos_table', 1),
(16, '2020_04_25_053441_create_comments_table', 1),
(17, '2020_04_28_090817_create_contacts_table', 1),
(18, '2020_04_28_092928_create_segments_table', 1),
(19, '2020_04_28_092938_create_contact_segment_table', 1),
(20, '2020_04_28_104044_create_meetings_table', 1),
(21, '2020_04_28_104343_create_meeting_invitees_table', 1),
(22, '2020_07_28_063830_create_chat_rooms_table', 1),
(23, '2020_07_28_063835_create_chat_room_members_table', 1),
(24, '2020_07_28_063939_create_chats_table', 1),
(25, '2020_08_25_080957_create_site_subscribers_table', 1),
(26, '2020_08_25_081048_create_site_queries_table', 1),
(27, '2020_09_10_133301_create_site_pages_table', 1),
(28, '2020_10_11_052821_create_push_subscriptions_table', 1),
(29, '2020_11_11_044541_create_contact_user_table', 2),
(30, '2020_11_11_050812_create_segment_user_table', 2),
(31, '2020_11_17_075803_update_chat_room_members_table_with_left_at_column', 2),
(32, '2020_12_14_155739_update_tags_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
--

CREATE TABLE `options` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `options`
--

INSERT INTO `options` (`id`, `uuid`, `name`, `slug`, `type`, `description`, `parent_id`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'c7e85d1c-22f3-435a-aefc-ebd261ec83e2', 'Default', 'default', 'page_template', '', NULL, NULL, '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(2, 'e7a97282-5a2b-4712-8b22-24dd34d9f505', 'Blank', 'blank', 'page_template', '', NULL, NULL, '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(3, '5a4edf05-2450-4c17-9874-b8f23790cff4', 'Desarrollo Humano', 'desarrollo-humano', 'meeting_category', 'Desarrollo Humano', NULL, NULL, '2020-10-17 13:26:12', '2021-04-19 12:58:22'),
(4, '2ffa7f8c-fcaf-4041-8796-6778a8bc6781', 'Educación Financiera', 'educacion-financiera', 'meeting_category', 'Educación Financiera', NULL, NULL, '2020-10-17 13:27:00', '2021-04-19 12:58:55'),
(5, 'f307abbf-413b-45cf-bdb6-916c961c97e2', 'Ventas', 'ventas', 'meeting_category', 'Ventas', NULL, NULL, '2020-10-17 13:27:23', '2021-04-19 12:59:24'),
(6, 'd1a7fdf3-08c8-479a-a978-f4a1d5389dbd', 'Emprendurismo', 'emprendurismo', 'meeting_category', 'Emprendurismo', NULL, NULL, '2020-10-17 13:27:46', '2021-04-19 12:59:57'),
(7, '6b0d7a7f-4f2b-4f3c-a2ab-ddffde94d555', 'Fintech', 'fintech', 'meeting_category', 'Fintech', NULL, NULL, '2020-10-17 13:28:10', '2021-04-19 13:00:27'),
(8, 'c3ceecdd-4b94-4a6c-aa7d-be9e8786c928', 'Real Estate', 'real-estate', 'meeting_category', 'Real Estate', NULL, NULL, '2020-10-17 13:28:38', '2021-04-19 13:00:56'),
(9, '258ce72d-b396-4643-9a09-f20bb6f5fb08', 'Enseñanza - Aprendizaje', 'ensenanza-aprendizaje', 'meeting_category', 'Enseñanza - Aprendizaje', NULL, NULL, '2020-10-17 13:28:52', '2021-04-19 13:01:28'),
(10, '579e944d-5d0f-4065-9fbd-2ff34d6420dd', 'Bienestar', 'bienestar', 'meeting_category', 'Bienestar', NULL, NULL, '2020-10-17 13:29:06', '2021-04-19 13:01:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `uuid`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ab7da1a8-c0ef-44e7-9a13-5307f12f7d41', 'access-config', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(2, '42c7a1a6-47ed-4587-89dc-91d8a8346c41', 'access-ui-config', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(3, 'be2a88c8-425b-4ab9-bb42-8fe958496880', 'enable-login', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(4, '4bfe58dc-1c4f-49d1-8f19-d438aab6e397', 'access-todo', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(5, 'f7b8df2f-9c48-42f9-83c3-03d637b8acb8', 'access-page', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(6, '8cb6313b-8abc-431e-b542-e035dd589f8c', 'access-page-config', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(7, 'd6c779a1-af09-4f29-aee7-f5465d608099', 'list-query', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(8, '87809a0a-31c7-440e-bb67-3096d87774ba', 'response-query', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(9, 'fa109def-267d-4af6-952c-e10759a17f8f', 'delete-query', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(10, '09422705-970c-45c0-b0b3-c2429a3060f2', 'list-subscriber', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(11, 'fd2d2298-33eb-4f89-8b00-889f8d7bdc48', 'delete-subscriber', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(12, '9cca4a18-c07f-4bc8-aba6-0ad422a6af92', 'list-user', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(13, '67feda53-f028-4db0-bac8-26b755447e4f', 'create-user', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(14, '5e7f4fc6-bc44-41db-be22-db97d7f2400a', 'edit-user', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(15, '5fa04446-0a2e-4b9c-9799-f885bc1fbcb2', 'delete-user', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(16, '683b42cb-2dff-4c85-8155-e46d8fcfede9', 'access-contact', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(17, 'f33ab915-8599-4f72-8f6b-8b8352f50354', 'list-meeting', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(18, '384cac25-4d3d-44d9-9806-4b49b0020204', 'create-meeting', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(19, '27911bac-969f-4b1d-87f9-c08dbc5bfd8b', 'edit-meeting', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(20, '2fa3e8cf-73c9-4031-8bc7-cfc4c80e234c', 'delete-meeting', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(21, '59dfb617-1510-4c15-8a5a-feaeda6e5d6f', 'access-meeting-config', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'admin-device', 'b6da398a961c0cafe54c8f674199ff84a13a38bfd3063e1950e9d3ac7735c775', '[\"*\"]', '2021-04-26 09:44:28', '2020-10-17 13:24:19', '2021-04-26 09:44:28'),
(2, 'App\\Models\\User', 1, 'admin-device', 'f77b145e079f3bd9a3819ec440007f504805aab7113bb65f9841b7dd8b4ad22d', '[\"*\"]', '2020-10-17 13:26:12', '2020-10-17 13:26:12', '2020-10-17 13:26:12'),
(3, 'App\\Models\\User', 1, 'admin-device', 'beb5be5af5de64c1f1504ad381b2efa8b2785da26daef6432805712aef1a15d8', '[\"*\"]', '2020-10-17 13:27:00', '2020-10-17 13:27:00', '2020-10-17 13:27:00'),
(4, 'App\\Models\\User', 1, 'admin-device', 'aba3b5066f596d08bdffe8317c6d0275b757faf5b67ed7b25a97fd86dbbdb8f2', '[\"*\"]', '2020-10-17 13:27:23', '2020-10-17 13:27:22', '2020-10-17 13:27:23'),
(5, 'App\\Models\\User', 1, 'admin-device', 'beeee108de346ac10980a677d529ca6713512d876b5391524cb5b73fa219bc7e', '[\"*\"]', '2020-10-17 13:27:46', '2020-10-17 13:27:46', '2020-10-17 13:27:46'),
(6, 'App\\Models\\User', 1, 'admin-device', '396b3dd7cf3d9233774300e40251510314f6a7bfd806d5b2bf6658e9e7268223', '[\"*\"]', '2020-10-17 13:28:10', '2020-10-17 13:28:10', '2020-10-17 13:28:10'),
(7, 'App\\Models\\User', 1, 'admin-device', '84dec718f6ebd6fe942ffff90ab95dc15e9e16b275a483ecebf3371e0c0b9e0a', '[\"*\"]', '2020-10-17 13:28:38', '2020-10-17 13:28:38', '2020-10-17 13:28:38'),
(8, 'App\\Models\\User', 1, 'admin-device', '94ee733aaabafc63dcd901a75bf5e863d5d3ad968c936f55d94dcd0c832d80d5', '[\"*\"]', '2020-10-17 13:28:52', '2020-10-17 13:28:52', '2020-10-17 13:28:52'),
(9, 'App\\Models\\User', 1, 'admin-device', '534131db9ca51353eecec33fbbd76d5606ba59cd64a522e556afe960323ffbde', '[\"*\"]', '2020-10-17 13:29:06', '2020-10-17 13:29:06', '2020-10-17 13:29:06'),
(10, 'App\\Models\\User', 1, 'admin-device', '40126c50cae76df03f9a5052dfd9e2c90cf7e464ee8064ba800de84ae5a3e936', '[\"*\"]', '2020-10-17 13:29:23', '2020-10-17 13:29:23', '2020-10-17 13:29:23'),
(11, 'App\\Models\\User', 1, 'admin-device', 'cf129283b9b9b728e367cde53ab4ee2a8b6378dbbe8405d0786b7d75af0269ed', '[\"*\"]', '2020-10-17 13:29:37', '2020-10-17 13:29:37', '2020-10-17 13:29:37'),
(12, 'App\\Models\\User', 1, 'admin-device', '6fa7ad9f2ee8c47c1cfd74542b722ef598cb181e32f693f7e21d847f9d254645', '[\"*\"]', '2020-10-20 13:16:43', '2020-10-20 13:16:32', '2020-10-20 13:16:43'),
(13, 'App\\Models\\User', 1, 'admin-device', '7b6358ebaa517f19e777d11f4cc30ac2a49fa7bc96471a433d3fb54136be5e7c', '[\"*\"]', '2020-10-20 13:29:44', '2020-10-20 13:16:43', '2020-10-20 13:29:44'),
(14, 'App\\Models\\User', 1, 'admin-device', '3e9b5951d8464d0ff99cbcf71b170c0e1bd8002cdb6298c7863733660ad853a1', '[\"*\"]', '2020-10-20 13:29:59', '2020-10-20 13:29:44', '2020-10-20 13:29:59'),
(15, 'App\\Models\\User', 1, 'admin-device', '6efddcdc777eb671ac0148142b5a4afb107a35e75e4a40a26a16239eb40b19e9', '[\"*\"]', '2020-10-20 15:09:32', '2020-10-20 13:29:59', '2020-10-20 15:09:32'),
(16, 'App\\Models\\User', 1, 'admin-device', '1b40163dc1f1f0dcb613fd7c5066f7219cc66847ad60bed419434c754a66fdf5', '[\"*\"]', '2020-10-20 15:29:40', '2020-10-20 15:09:32', '2020-10-20 15:29:40'),
(17, 'App\\Models\\User', 1, 'admin-device', 'd105485c615606a7771381c443823e144c7c1823b027b76a27c774290e835da2', '[\"*\"]', NULL, '2020-10-20 15:29:40', '2020-10-20 15:29:40'),
(18, 'App\\Models\\User', 1, 'admin-device', 'add2d8f31145f36400a934baec81414b24e7aebba0ef63adc5563629b86df5fc', '[\"*\"]', NULL, '2020-10-20 15:32:27', '2020-10-20 15:32:27'),
(19, 'App\\Models\\User', 1, 'admin-device', '2944dd7551cf316ceb814c148d3cdbe85d31e4ff66231497e93377743baa5035', '[\"*\"]', '2020-10-20 15:35:42', '2020-10-20 15:35:42', '2020-10-20 15:35:42'),
(20, 'App\\Models\\User', 1, 'admin-device', '259a0c24541d0cd9a0ba12f72ec4648a1877753af801068386ecfcfeff2d0f1f', '[\"*\"]', '2020-10-20 15:40:38', '2020-10-20 15:40:38', '2020-10-20 15:40:38'),
(21, 'App\\Models\\User', 1, 'admin-device', '11138d687da24035f2c2921c578cb29531a34c9fcd80fee62b2274a322f41b24', '[\"*\"]', '2020-10-20 15:40:59', '2020-10-20 15:40:59', '2020-10-20 15:40:59'),
(22, 'App\\Models\\User', 1, 'admin-device', 'f1a406d601ed72185486a2e31d28f94fd84ea597f43abdf8a1e08ea5b6a59939', '[\"*\"]', '2020-10-20 15:47:40', '2020-10-20 15:47:40', '2020-10-20 15:47:40'),
(23, 'App\\Models\\User', 1, 'admin-device', 'cd74e789fc26c2971ec1d48d573129f24aa85a6451f681973dc4d1d571dc84cc', '[\"*\"]', '2020-10-20 15:48:02', '2020-10-20 15:48:02', '2020-10-20 15:48:02'),
(24, 'App\\Models\\User', 1, 'admin-device', 'a63541f965154adc631f6775a01306af8c2815e3573751ad239964e83782254c', '[\"*\"]', '2020-10-20 15:50:14', '2020-10-20 15:50:14', '2020-10-20 15:50:14'),
(25, 'App\\Models\\User', 1, 'admin-device', 'ff29bafa65d9cbedfc9d122ec32cb09261b2c2773dd49fc5341fe44d996223f7', '[\"*\"]', '2020-10-20 15:51:18', '2020-10-20 15:51:18', '2020-10-20 15:51:18'),
(26, 'App\\Models\\User', 1, 'admin-device', '79bb872e9d2f1b6d8b99ef77dcbca10101ecf30882e7d52068b9c3802b3e831a', '[\"*\"]', '2020-10-20 15:51:27', '2020-10-20 15:51:27', '2020-10-20 15:51:27'),
(27, 'App\\Models\\User', 1, 'admin-device', 'e5ac56547f6872f78290043c9357840fc6969ff3d2324d909d91d80f849d06cd', '[\"*\"]', '2020-10-20 15:52:04', '2020-10-20 15:52:04', '2020-10-20 15:52:04'),
(28, 'App\\Models\\User', 1, 'admin-device', 'af496665c10f176b7a47c0515ef09c54b1bfa468fa3a3c9ff4b0e3ac18f53d96', '[\"*\"]', '2020-10-20 15:53:47', '2020-10-20 15:53:47', '2020-10-20 15:53:47'),
(29, 'App\\Models\\User', 1, 'admin-device', '1cce88097a455f0f53c80a3e0cb2b541c052834e3ee5478940de1b0d98ceb203', '[\"*\"]', '2020-10-20 16:09:03', '2020-10-20 16:09:02', '2020-10-20 16:09:03'),
(30, 'App\\Models\\User', 1, 'admin-device', '58ea589d1195474b2571bd8227bdff4bdee72b0c05eddbaef36dce3a79246e0a', '[\"*\"]', '2020-10-20 16:09:29', '2020-10-20 16:09:29', '2020-10-20 16:09:29'),
(31, 'App\\Models\\User', 1, 'admin-device', 'a2347a813ce09af878d2d2557fd7354077e4cde8ba8a88c97e79ddb60770ca7d', '[\"*\"]', '2020-10-20 16:10:01', '2020-10-20 16:10:01', '2020-10-20 16:10:01'),
(32, 'App\\Models\\User', 1, 'admin-device', '84424d81e86aa6bf0d79bbf36970915761c5414cb4cae84f4234450db963ac4c', '[\"*\"]', '2020-10-20 16:10:21', '2020-10-20 16:10:21', '2020-10-20 16:10:21'),
(33, 'App\\Models\\User', 1, 'admin-device', 'df9fdfac986acaf01aef821df8027fc9e2a062a7d57c8bf4549638c9762693e6', '[\"*\"]', '2020-10-20 16:11:59', '2020-10-20 16:11:58', '2020-10-20 16:11:59'),
(34, 'App\\Models\\User', 1, 'admin-device', '5ea01523d940da0b5675271efb86dcc6331f415c94ab0b99758bdbb7f0bc4ebb', '[\"*\"]', '2020-10-20 16:17:58', '2020-10-20 16:17:58', '2020-10-20 16:17:58'),
(35, 'App\\Models\\User', 1, 'admin-device', 'e83ff3a282393914b85219edf88fa1fc6ddb045b57ac48ed2edbef5fa777ba42', '[\"*\"]', NULL, '2020-10-20 19:02:06', '2020-10-20 19:02:06'),
(36, 'App\\Models\\User', 1, 'admin-device', 'd639ea1867b7d8ae4175ab3084ab7d70f0c05ab0b9298e5563026c92e06267d4', '[\"*\"]', NULL, '2020-10-20 19:13:46', '2020-10-20 19:13:46'),
(37, 'App\\Models\\User', 1, 'admin-device', '88ea092cccc0f1c2cb1c1fa58e09fa30a9a11b51afe4081fd34412769d32347b', '[\"*\"]', '2020-10-20 19:34:24', '2020-10-20 19:34:24', '2020-10-20 19:34:24'),
(38, 'App\\Models\\User', 1, 'admin-device', '8570c52b90f0bf8c512ca0b24b187196389c4ba1c641df71e5e407bc70f48eb8', '[\"*\"]', '2020-12-28 21:47:22', '2020-12-28 21:47:22', '2020-12-28 21:47:22'),
(39, 'App\\Models\\User', 1, 'admin-device', '7f8ed94c9f3a35fa637904058540c5f91c4af4dbafa383c6a8216446714ef17a', '[\"*\"]', '2020-12-29 20:30:51', '2020-12-29 20:30:51', '2020-12-29 20:30:51'),
(40, 'App\\Models\\User', 1, 'admin-device', '536cc6b1bc2f2aaa831811da7ff8450f39cc9eba0b8ebc3f21913347140dbf0e', '[\"*\"]', '2021-01-12 01:00:17', '2021-01-12 01:00:17', '2021-01-12 01:00:17'),
(41, 'App\\Models\\User', 1, 'admin-device', '841c24972bbba55895009b3403496c1e635ab4a8304190277bc46f75b96bfb30', '[\"*\"]', '2021-01-18 16:20:08', '2021-01-18 16:20:08', '2021-01-18 16:20:08'),
(42, 'App\\Models\\User', 1, 'admin-device', '740c77911800fefe70648d0c93d7bfd17ebc32f2ed41d75bdf08378dd8116244', '[\"*\"]', '2021-01-18 16:20:08', '2021-01-18 16:20:08', '2021-01-18 16:20:08'),
(43, 'App\\Models\\User', 1, 'admin-device', '3e52f82673142eecedfe918f56e42236e62b872e201ae1181e0739008d4e8334', '[\"*\"]', '2021-03-24 01:18:19', '2021-03-24 01:18:19', '2021-03-24 01:18:19'),
(44, 'App\\Models\\User', 1, 'admin-device', 'c8df7f5122ec6d1a55f5c8487720abc5aa477e7ef540d9fd19382192e571258a', '[\"*\"]', '2021-03-25 02:11:57', '2021-03-25 02:11:57', '2021-03-25 02:11:57'),
(45, 'App\\Models\\User', 1, 'admin-device', 'a8129bdbbd2f7c43ddcd070b89a71b98406e07013af07d57d8190620ee1e70ed', '[\"*\"]', '2021-03-31 00:50:30', '2021-03-31 00:50:30', '2021-03-31 00:50:30'),
(46, 'App\\Models\\User', 1, 'admin-device', '0142936018157e45c9eb8d9229bf85807fd647f13d50f0426f5019d626b61b9c', '[\"*\"]', '2021-03-31 00:55:18', '2021-03-31 00:55:18', '2021-03-31 00:55:18'),
(47, 'App\\Models\\User', 1, 'admin-device', 'f1f6af82c3fa86b6128eb5e161e73580644646494b790d7b6d76904381e0d00d', '[\"*\"]', '2021-03-31 01:10:27', '2021-03-31 01:10:27', '2021-03-31 01:10:27'),
(48, 'App\\Models\\User', 1, 'admin-device', '91ff633fbdc7d03c14dbe7e9540dec07c5ee7864905f0f6e021cc882950d4a62', '[\"*\"]', '2021-03-31 01:24:23', '2021-03-31 01:24:23', '2021-03-31 01:24:23'),
(49, 'App\\Models\\User', 1, 'admin-device', '7afb017e89a92cf0304410f45d895d6544355be793c2055f83994b8e3069c010', '[\"*\"]', '2021-03-31 01:39:10', '2021-03-31 01:39:10', '2021-03-31 01:39:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` int UNSIGNED NOT NULL,
  `subscribable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribable_id` bigint UNSIGNED NOT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `push_subscriptions`
--

INSERT INTO `push_subscriptions` (`id`, `subscribable_type`, `subscribable_id`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fOjfXdaCygY:APA91bF4Bh8vmS2Vw8VFX_gOhJEjcN7bK53Q7hpZSYcjQmFcreTdT2ElIo9gpzoBFam6r2Y5_U3v-i6kpWjdaamL2UDt-GU1ZmoPPqHpgXm_4VJAX86ZodGOf8A2AR6bd6OIiz9PE8Ze', 'BMZKNN5ks40EY4qGFNz9vRYvWbEZc/FuVtQdK82i7Sq9YnJIbp7d7SyHx7QOY1PlGx59SxcG0EA6ZRYA1BUU71w=', 'xLWB98X72vt0czgT5y99jw==', 'aes128gcm', '2020-10-17 13:53:45', '2020-10-17 13:53:45'),
(6, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/eO91zky2XqY:APA91bEpeOxlQHy1Jpm7WAIJF39YPijWYIlBbBGoczh5eX0LpS74DztkYBH5gcyeG_Gy-zWAsqhjeAygNhLtMA7_ZvUvGISQCt63ncrRNT6EWld9n6oD1TUpp7mgC5MckBh7ZmKjtl95', 'BPkr0oBF/96N5TLjLPMMiaWgW4/wOziZXbhnOYITcA/xDbDPaGTGofuWtT/cD9yOnKo0omsqwCt5zQBOs7jENuE=', '3O0yePDqOwu66JSULqhWjw==', 'aes128gcm', '2020-10-19 00:58:29', '2020-10-19 00:58:29'),
(8, 'App\\Models\\User', 4, 'https://fcm.googleapis.com/fcm/send/coWsDBBFilI:APA91bFlShDz_fH0Tg3ri0l8Ew1_d61E341afHFaXkqytUR1clzJfzZdb8EaBFr-DC4SQLIqSfzl16uHXDimT7T1CSa1A4tzFoqf2KaTCfiH0kXbRdRqfGEzSR1NJ1t9CYUcDv0tuVPN', 'BHRd6PTsZM6BpvdkjSELZ8mdjPlQbwfjLn+LF51XVnTa3qFBVDurnCWwJ0ABC8TvWljDp6sDrBNyCGekNfiUX4Q=', 'Ts4CNXQE56rgkYiXo2A/tw==', 'aes128gcm', '2020-10-19 11:32:56', '2020-10-19 11:32:56'),
(10, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fd3TXulkTSM:APA91bFmZgb8IqF_axB3wgwrfRVqG1VUxs_xVrCPTaA42iSzmIcET2sGIQXEqOns_Eb_r-vbSb8xph5rdSkfecCXF93o9Nf-ge7SUfitpIYsv_NdVse9P2bbc39Y34OjwVEIYy5SyNyJ', 'BKFrn4SCOESZkvWujznZzvAYCv7EYbv9lacztaaEXkP3mwPTHgZk+aghQUsE5R9yQXU83OwWAavrzpA5YrjA0Fg=', 'YjeodlF/r1i0C+qcYhjdcQ==', 'aes128gcm', '2020-10-20 01:13:19', '2020-10-20 01:13:19'),
(13, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fcxeb0CcCkQ:APA91bG_VmsZQ2IrfOhkAOEFxBfAPnZQQflj2Xo3Nj0SRKE9-5gWYKN-3iiqwfn40BWRs80n8sa4UW9XxQ_PLb1rR1D-mn_ZUxs4MkOb2NzbpfMipGhQ3V45ajPcjUwlS7xM7rfx4rZs', 'BJ/vQO4ma1NhN6E7KkIZNKgw9o1HuFm+Y00zn73M7l7i45YchW/Iu5Cmf3sX/FALkvX7DUNdRMM8B17bQzKw8b4=', 'HxRjMcH/Yxgsc8lXdy2cdA==', 'aes128gcm', '2020-10-20 12:57:35', '2020-10-20 12:57:35'),
(16, 'App\\Models\\User', 9, 'https://fcm.googleapis.com/fcm/send/dhEVV_0ubxI:APA91bHmVFxdTBRhhhPYFJOExmVmvRwBEIo1FlVRHSs7HjmCrlCbu_VrvaIvL7vI96i2dCc4OgEIY9DWX9wGlSPISzO1jdxdHrtYvxOl3Lo9ijTbNtaP5Dqg03LKyRYa8SRSGp79NaDg', 'BNNwDiGYctA5nbylDx+nPHp8q5K28A5P9osBl3wPDh2JPsbLpcdg8eE3cPp7taofIev2bIT35ijb5OQQdJ5iCNs=', 'Rhf/LyTr7n7y3wHsgBsbSA==', 'aes128gcm', '2020-10-20 16:18:31', '2020-10-20 16:18:31'),
(17, 'App\\Models\\User', 14, 'https://fcm.googleapis.com/fcm/send/fi4Fpfl__1M:APA91bE3oKyFTN3TYryBO6EU85N0tbPwyHkDsVdYpQljyk-ADWiKyxmvGESVv9bp4L3tzpqv3DvdRwRctjABttPoo7XWo3xsb6nYNOc2_pqkX7rCWIwfygXHRLguSOwJQso6908LwbuW', 'BPXlgnTSedflYYt2sfsbA9yQL898MGmtcsX04KqPtE+wjew6BuaKRKhhoy/OinVfyJFM1Lihr95jAREpPf0vPoo=', '43/9Q7gCLaqov3wMXjoBvw==', 'aes128gcm', '2020-10-20 22:46:53', '2020-10-20 22:46:53'),
(26, 'App\\Models\\User', 16, 'https://fcm.googleapis.com/fcm/send/dbqAfMD-pHo:APA91bHlGBPVc_UbablJCkT6uEULmvvB3CNEvR7x81GUFdkmuoPpWZQNlVml5gIzmP8nzPryq37sgOM6xr8H0gh5xts0PMDY_CNYU2_9QHjNDJ1-8iRFZY_daSCf0wUL15MyKT7q1yIZ', 'BNLj3XeuWlMjJR/3KQH2U3Q3cFJjbVJ05xD98AHW8Y5Dvc4sMTvZZTnJZGaKvIBbImHQQ5odjWC9n2fMjVzI4hk=', 'J1DgzZRSwWTw9WMxUI3oWw==', 'aes128gcm', '2020-10-24 00:27:35', '2020-10-24 00:27:35'),
(34, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/d41iXgLDf0Q:APA91bHvWti54fOLQ9zssPvtnyXFz8HHjeuOrsNkq8U2JOenuKroTmjtM09zSNvLILuW8Njfhkpr1mfWCM2O-m7T3_uOYo-nPDg0qDSBIgry1vwVkgl9dJZaMU-wZLV60vK9xSevWlKL', 'BCv08CeFgOmJN179Z5YMit4DH8sgWrQDcAJCQUfH/QZLwgIjnbIfVguv5WOIw+CvSIGRFjgxyqEvJ/QffVMYwPE=', '025qVzYrrBwSTRCFdqxz8Q==', 'aes128gcm', '2020-10-26 17:04:15', '2020-10-26 17:04:15'),
(35, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/c8Pgj0x4z5Q:APA91bH0bDdiwhCy84q2HJJFfGPOGupFLEoRbOmkwdVBEHQRk3sime9W8843srxMff1S6BGT1cg_yHf3nlQ04dgo-MJp6yeLIMMUNanxER9IrnUyUOceiBUqEB-XQ_EUUmavt7fWvZ46', 'BPWbnoOwUkmwTdpsJxi43szZOzzLVY0sWW7k0FhdJImPbC+v8hlDBhG0CQpaD16PKxVBtesLzvNEBAKA3HQ5vCY=', 'Xbg/0B5iEX/Tg/hsdT+3/w==', 'aes128gcm', '2020-10-26 17:07:14', '2020-10-26 17:07:14'),
(36, 'App\\Models\\User', 18, 'https://fcm.googleapis.com/fcm/send/dgHERZfrMRA:APA91bFNGht78DLKiHQ49SyPjIQD_W7tXeznImqkcvPYx3ivvC1j0X4FDjlA9pAU9pkzAxJ_zoUlphCiK-KtEbYyciRJ8Kd6oqTvDG0fRrxEM5OHamOpqew7OqM_m4pc8ALwccBPRa2e', 'BK0dJPm3Qb6Z26OHC4xFTTLnxlxtDTVtxaxsPffIwia/8NiOYhiGrXlTSiaRShwn6S9TsY83DFvJMYz+3JAReRw=', 'IkWW3kuZiFJxnhPN0qa8jQ==', 'aes128gcm', '2020-10-26 17:34:49', '2020-10-26 17:34:49'),
(37, 'App\\Models\\User', 18, 'https://fcm.googleapis.com/fcm/send/cnlI7FMGsgs:APA91bHYJbG8FmFda8OAy-DG_U2gk8q_ezgyDH_cwkY1I_P1WlsALOUgDecNCzQfrKwJJRk3dM--YYxd6QNzcfof7yXohTqXhteH2Yh6-O42BaasEcHsQxeU4ir_wvVveoxJgxgiG2cF', 'BMjlhD6V6Sh4nHSxontP+Dj/a+qTLh2q1s6aGzoVCtdFAEtyawlnAT5Z2Q5UkPkIMGHj5AlTP0gSvBVH71dxAPU=', '7uhRTm7AubZJkBURXqFxlA==', 'aes128gcm', '2020-10-26 17:51:27', '2020-10-26 17:51:27'),
(38, 'App\\Models\\User', 18, 'https://fcm.googleapis.com/fcm/send/c03A8INoBwA:APA91bHnD9Derc2mC6h2JeWLPjZrVF2R-PWlcr8kKn9cyq7uENhtke1Nh3B7t5YY9-xly2aDGiRSc9jOZrsU-APyindUW8WnokmQueUycsU6kRzhrYjP8-bpwK5qDfuPYBiRXCZBbgi-', 'BEMeyfOTOxGpluWmM4H8EvC9/+iFg8HcYk4QNYjd2SnoNsiGZa2n9c8/UA9g9N63V5YHWnQr0HUHI+qduwPT7JE=', '6zp/TXthdaPPcHP/CO01og==', 'aes128gcm', '2020-10-26 17:58:10', '2020-10-26 17:58:10'),
(39, 'App\\Models\\User', 18, 'https://fcm.googleapis.com/fcm/send/e7gcuFZ8TOs:APA91bEeaDOIn8CzrfPOY2fnFTM7CuyPVfqWahsWyZjA847_4aX5PRNtsOG5C-PtDZ5IoL1D5g2oI8NJVIpNcm0FwyXL4qqit89q6ezqH4m8kak1GHKKBpFugx6_LY_05Qepl4VNnofh', 'BM62jv7KJd38AH09RCjQJMdNvY2WcrlglfOmufnnqVk+bVL8xeGj1pYEjAvtGS6Vn5SfZbLGvV3iSk+y1vA3X94=', 'qtktwYtXttKBZJgZXtGquQ==', 'aes128gcm', '2020-10-26 18:20:44', '2020-10-26 18:20:44'),
(41, 'App\\Models\\User', 19, 'https://fcm.googleapis.com/fcm/send/cbCwIH-AJjY:APA91bHyqylceqKCYXABosbRxJVTADOd4fBHo-f6I2d6wX4TTF-kCz65xsdmjoR74NoJQylx5V5zgC77OzFA4C20daK73sk8Tp6CkpnFlLbHDhTVa6yGnKsH8Fif0cdla6O9vd5nk47h', 'BHn6F6AoSUpcOmBJ6HgG7FiwoZXwK/BPd3RNjXZxtIePLUX2335rPpDafzsJPtxJfOu6PIXbfnuMdEID2BCV9IE=', 'mbHEOWzGjOWiGe19Ya6ovg==', 'aes128gcm', '2020-10-26 18:21:52', '2020-10-26 18:21:52'),
(44, 'App\\Models\\User', 13, 'https://fcm.googleapis.com/fcm/send/eECNj5ypc74:APA91bE5eKg5aRomL56mv6nTv8s2vY6L4rY_XtKWJATIZeyJjR1_S_SqTEC_yGG5ayUrERD60Eh2zjJXmKZkq2-zezpKWBgE1F9Jwy5jQow_6cP-0OUL_98Mw8QOv2aOuNS_ezeL7spK', 'BFUYzJdcsphLKLLGzwjsJD4BblzHLxgFs+/N3ubV5ikAVZ5i6zuPd5qebAfMMxEmp9QtTK3IfTAtDUce6FcMVvs=', 'oFodrhfSLfAdEtgvcnRtFA==', 'aes128gcm', '2020-10-27 14:03:53', '2020-10-27 14:03:53'),
(46, 'App\\Models\\User', 3, 'https://fcm.googleapis.com/fcm/send/fuv-mTgHU-w:APA91bGEFQE8KGvy0wmA6pWNTcs4R85J1N_jedRIjtZZJdXNq2yJAe-p2qZpFskGB3NH9aZM5NsvKUqAbrC__J3Y5uG6Jjlt3clplkEYeh5doGniymuIPV9mCnDcY05PP3AzdpUSiPJ_', 'BKcBBDfeYlbZM0tcu4D8IxAsaOz1WeQlipPiEIxYBldQZW2Y1k+K5LkTYNHsa4j+09ZEfyANohVdhAT/lc5e8Eo=', 'U6BQZMJQo6oRP0TaAlG7zg==', 'aes128gcm', '2020-10-27 16:30:09', '2020-10-27 16:30:09'),
(49, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fnoHWIbbnK0:APA91bFSO4icYfKKZXQrL3vRR-TwU6YJYqOQAlysfbpqG-HeIuqs1DQBPoaPpwojEyCUao_yxSGSJJHCa63mj-6xb01xXg7dDOx8nJt5fHsbNHkJH9_sNGwCspRB0_aN_lV-k4jMMW5v', 'BOVPOT/GMLrv+7w953R5JKF2aArTXWYQHMBbweb1entMRlZXs82QMHDQZe3x1/CiuKMbChOOSmU1N5Fj4jSQT50=', 'b6ZByKdYfhFR32lZ+HqHPw==', 'aes128gcm', '2020-10-28 03:34:56', '2020-10-28 03:34:56'),
(50, 'App\\Models\\User', 13, 'https://fcm.googleapis.com/fcm/send/eY45f9U1v-M:APA91bFFZ01PcOw_OBZ8k9iys6yRYDLir9FBd7tvK7emOoYYAwxJf-aaWR4cbUFiTBJtf5tA0cXl5B0hVpLY_AEySK6G9PTywg08wLaS83rtwdjTx2y1nGP4u3x9CE93LdNKte3NA1Pj', 'BPdix+wqT0vyAlOrbxge5hCHaXshEm8fibngoj+F7500FWk2Fdh+vs9MdznycX/PETg+qd1dE1tDqDki2P22xKk=', 'mmGuPJvN1f1QuZF7cCysGQ==', 'aes128gcm', '2020-10-28 17:13:48', '2020-10-28 17:13:48'),
(54, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/dLwI17goAOw:APA91bEeiUI3w6krao_jxwEZ_5JIKg_M-A25hGo6PvKVf1MSY0Y3YUwQCL0JdGeCj0KVex04VMs7ijbz8EFV65sY8OoRFe7foNFznQwY_jYFWxLh22K-FQNEVIhMGoUbGLjeAanzdH2I', 'BK3ycCjjjGRgucMDFUhvKKtCJlQWlff2OY43L7gogKq1ODb2kG/l29f0HyDBZrqvZteSp5nWnlrHb/6IaCbolY4=', 'WWpoXOq7Q9sTmyhU7j37zg==', 'aes128gcm', '2020-10-29 15:37:10', '2020-10-29 15:37:10'),
(57, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/f_yPhPJW2BE:APA91bHuyZ6_Sk2ENYyEBryMGHIt7VTVtrKLEnT7R4Yrmh5I3Oc8LtgYHDOP9u9sycfUo-_H3rtMoRIKXUYMzm20oeYZYhIZucLuXR683g3zt30rGSdjjE2ETtTNL4uCEUbs-jnmKUNG', 'BBlmHV/P4/ddZq0EPWFmQ50hTqQapkObVAYFgHtaHs8Q8848KuPlYghRtA9/eTzjmIFiBi41u3b8pvibQR3Oi3M=', 'w25YlJlEVngm3LHPMzexLg==', 'aes128gcm', '2020-10-31 01:26:30', '2020-10-31 01:26:30'),
(58, 'App\\Models\\User', 16, 'https://fcm.googleapis.com/fcm/send/e-jqlMqSJWo:APA91bGlD_mt9uoWq1hvoCnBi3_A2FSGG103OkQnHfxeyYIaNezJ3ORJtew6jQ28QLYHbDxT8--3tF9VjDSfjftqrcBeLqRlbAXGVyLJzXWZ5ejOaQkWslPoct1bveXqJIjBNQrbYVMN', 'BEcu/IHD3Lx84yz8oO0HfMD2x1xeY33+yg7/79XKlPNSz8mbrJEdO+i500FJ9tWxoEFPOo2bjPZWYQ6VRl1K9TA=', '5COApFWGlUxWkk22Zq2i4w==', 'aes128gcm', '2020-10-31 01:28:42', '2020-10-31 01:28:42'),
(59, 'App\\Models\\User', 22, 'https://fcm.googleapis.com/fcm/send/fXn_bCmatuk:APA91bHNZSDb97CKUMyQNC8Xhhz983vwubkyheIomD9xKeFXIHDNCVWZOBJgvaZFXOVQsFWpFYvCPnUwMmqPG8qkv-ruFMQhwgROWxHDiDSgEzEOUeTVSB_2WVz9H30wy8-m2nAevNsd', 'BBn9AUDZF+6d+AyHIDDboGS/5Fj7zYjL8BsWklP+TaQMAob0DDtDnZMt3HngwU3uVQ9MGMgl2gCUn2RmbS7CGZs=', 'dWiNcPPgi6hO4woJF2TcJw==', 'aes128gcm', '2020-10-31 02:11:44', '2020-10-31 02:11:44'),
(60, 'App\\Models\\User', 16, 'https://fcm.googleapis.com/fcm/send/c1nF1PIbzXY:APA91bHKCfVu_1mSPBAXJjvngw0a04C8TAnABo8zanhn7HRGL2FkskTqi5HB71p3VoYqLoai3zqB6Fj_xP4jlXsSsMIJSlH7WUfG8xrjxXm8GzCyyytJsGEDzewlEHTLtACnqCf2tnxE', 'BB2vV7kuEB3Ce+LinaUDHldBaGW07zOijo6qE5ql9i1iEIHhqpJ2kSkTaz6c+YXZQmXXrBDI5gGsGdEGd2WoYx8=', 'Py3wJ/+yhIm9/ywJ/Fq51Q==', 'aes128gcm', '2020-10-31 03:50:20', '2020-10-31 03:50:20'),
(61, 'App\\Models\\User', 13, 'https://fcm.googleapis.com/fcm/send/calXLju3J2k:APA91bEhIVAlaq-OvDvWNNNgH3FSSOvYM70ErOzIZPTUhWJpekQ__SHzEzX5mdQYURLQlcs-6ZvNBWTxXFZ1UtQsykj8YOANv5byimYO284mVtkM2P7Cl3_cOLm_kvlzdSol0VWd4MT6', 'BLQpedCZCh3bp4dGrfo682RZs+6j6XJcXCLyXO1uEP4tFCTB0ges8q13Wxf7ADLkLXL5uO+P3eBgsiazXC7dfu4=', 'cDEYi6GoJFYZxPBT4QUazQ==', 'aes128gcm', '2020-10-31 14:55:35', '2020-10-31 14:55:35'),
(62, 'App\\Models\\User', 5, 'https://fcm.googleapis.com/fcm/send/e65__rVbEzk:APA91bH44E3XkFoWiOPVUA34OU-YvNnDY-0zISRniKoUK3xN1NfyTrKQINaIS9TxSSFyXbQ_TmSkTtl1Wx-nYw37PHFeS_LvELMNKpFeepdoiVWPvlpBfZMjR5o3kg6o1ia3spZx4lIB', 'BF4S1SaxBY1Cn5W+wdoljvQPBOdso/clf1kHMQA8HFdLjToithusZgA4gXKK0vWOGEF9+yVasyyWtNWIpRKVEd4=', 'arDpfLPtPPmwLnBbrFMygQ==', 'aes128gcm', '2020-10-31 18:28:54', '2020-10-31 18:28:54'),
(63, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/ctvpcueO_uM:APA91bHdoPzROO11992g8sHsYTGYzTKnbD78maQNlYTkAuwAKXP2S6IttYwWs0HAKcfUuOdu0_si40RYWT-WOIwURtb-5PohvjajYYJ7GABDrevI8bc10oSwobbWSRsT264H6bS01AaE', 'BLnAD+g5kDwv7m2b2aCBi3tvS3/d8C+RQZWfuQbw9ij51bSYde8wh2UBqK7ifQyCH4n4Mss6RtJaxw1UrSdW5SY=', '8YWWNDrJcBPO0gIF3Byydg==', 'aes128gcm', '2020-11-01 00:18:31', '2020-11-01 00:18:31'),
(65, 'App\\Models\\User', 18, 'https://fcm.googleapis.com/fcm/send/cunpXjhRWoI:APA91bGPtfkIpMOTLzJHOl7FGJeLGuq5DqI82A766oNF1IkBnvM-axwYf-TJ6ikr-Gwm3u7n23EoKtZ8daDsyKXbKrIPnUISMfVX6a1qEp5M46ufTvY1geBRIW3Pm1VVpbdpPMraY_yq', 'BGj9ottetk87CIbDsHseozESj/eL+GGr0QzuaHCeAJZEpQoN0BLErCVAdTv4MnZ3yPKEDkpFfrYAAvE/MLTh/Kk=', '4NENMdbLoZfMc3YJ5hTykQ==', 'aes128gcm', '2020-11-01 02:31:07', '2020-11-01 02:31:07'),
(66, 'App\\Models\\User', 18, 'https://fcm.googleapis.com/fcm/send/dFCa737m6W4:APA91bHB6-qcOBNbpD6Ry0mPbu0WcNit1NNlvHzFbEMnaA7pcSsfb6y9binbQPoPKgclXOV37ZEwpQPJfmQjvgdKUCJ937dVe76QDPe2Xr4cjixlUY_QvJC4j2_xROx8aodfbg0XgM5Q', 'BJJlW74MqsO4L9h3imJYzY4DjDeyB5UYkS/om0g1vjNVo0FhR473iI3g5niJUudHmWIfktNh9PUuYvVhJk/Q3eM=', 'jCWd3XccROO29KpC9TqBHw==', 'aes128gcm', '2020-11-02 13:19:02', '2020-11-02 13:19:02'),
(67, 'App\\Models\\User', 13, 'https://fcm.googleapis.com/fcm/send/eUcRVwOgys0:APA91bHojDY4Gds_T4ZaOjtf1XKLHMyPuriIKZRLaT9OV4f9wYZkcajaHf5AmkbQpAVvaN3bCEtNdjYKldLFon2I_My5B7pjMf_jUnpSGkr3DSHIVv5tIBorL9fawXTy6dCtJdTirtgI', 'BBRnzDtpa2FCmP0QHuxYN+o2q44aB2sVKbzeXxShao2QKKE5Y1CiHq5NhRd1i9K85cagYfsf5WLjKf4RGCzPsok=', 'l3Aifkyz9ENG3fmi9N8Y1Q==', 'aes128gcm', '2020-11-16 18:41:21', '2020-11-16 18:41:21'),
(70, 'App\\Models\\User', 2, 'https://fcm.googleapis.com/fcm/send/fTCXaPUonNg:APA91bHGScbk3uHuvbzjX9ZKlS4V_SjPIr85xtrOhN_k2SvApCqTD23xJt7X7s04wIumYvARigxm0HHMSZ-uzZMiprjmmc1dcM2d09CJQvaZlLQMyHwBb6-7S6aL0Tas-J9sQlvx08Db', 'BLzm2lObruFE+lZJnqRa6ChUlsCLRsy0Pt9nCMF75OC7pUzA5rbiMNJpx/htiwE0y06UtN0hm/btR96K9nWhSa0=', 'il3B0CdDkZlHnkkahgFnBg==', 'aes128gcm', '2020-12-14 14:36:34', '2020-12-14 14:36:34'),
(71, 'App\\Models\\User', 2, 'https://fcm.googleapis.com/fcm/send/czQBjwS8g2c:APA91bHWRQTHQcHHZ2OUWxPE93LPklf6HqJ6iuRotgG0vXEVXDNsVoviGS83JE-YEFX_Za1Rbv63VIoQTih4MXgXg_2oeO79fLQ-uryBj3qVL85jDcuZXO5QmH0dQ3GGNH33NAqxwrrb', 'BGKjUdqX5h7V45GLaWrwXtU/QU+ahAimTsu1h7Ckh0ZTSZ1BIORbOL1Xb8fNWipf4mkQ0yFQgbyH0UIoeM0E/lw=', 'PuB+lVoRjHtWDiedT0blrQ==', 'aes128gcm', '2020-12-14 14:36:53', '2020-12-14 14:36:53'),
(73, 'App\\Models\\User', 25, 'https://fcm.googleapis.com/fcm/send/dpsx3Fg9Kho:APA91bFjzIXp30Ft0-LFDSoK_kP7x4TTubL0o-OUKCBh3v--KyN4iSP4Un10LL4AQ78I2Ja3o1MIz-SoQVnozgQ-RGyl3kGJHxtgrgdkM4Yw6BE_Bn5QCWzx31_7tz5MU7p8vIKReObs', 'BMdjsi8uDUF2poAh9JgoM/b2u2ZWC2B73VGaAtt5WeTfYqjpZdQInAdAo6cvgfxoKMrwjItgJljbvhOpfWZaajM=', 'kR3eLt8wI0fsBL3SaeyLdg==', 'aes128gcm', '2020-12-14 15:31:21', '2020-12-14 15:31:21'),
(75, 'App\\Models\\User', 2, 'https://fcm.googleapis.com/fcm/send/dJEsCu2GoIA:APA91bEbXpwx3L7u82uxg_5lYUCoFIWzzBx2yPih9AmFcDOyRj0R2m1Qtkorxfrb07EiQJSh2PFqjUETJ3nMw8U13ZRcnMPNSxh_hSMYU8askEy05sPFVqz7-vm4_0rjbbjA40qobxlN', 'BMlmZ7IGlvquJzGj46dXPxaSRQ5WxUnRhjj0EoG1e3SjT5Ra6pIn+SJc08U5VW5c3e2skcMrO2y1nfGW4oZb1s8=', 'LCdHsXshvKU5AuFmZ9Jb6A==', 'aes128gcm', '2020-12-14 20:44:08', '2020-12-14 20:44:08'),
(76, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/elKQXdaRJgo:APA91bG5et94L1p78MtiBIqiZ_9_rDIFV0vJQrsKDvXxMbBP0wkNN48myAIFg1vwDP3Sr8aOmbRHh0bT5kAQruUgjpF5m2rnKAbggp4PO_RxQcY6zbd6HmrljZmxACr_IeHTnDCmSECa', 'BD83kRpiFCNiHbatFblgD7xWHbanLSQKAjWllaaVpb2xluUZfQjpPNUgBB+HNutoA8JLCQHgV7l5pcbR8O0elqY=', 'O+xF0g0yLFjZVusW0B4IcQ==', 'aes128gcm', '2020-12-17 11:17:41', '2020-12-17 11:17:41'),
(81, 'App\\Models\\User', 32, 'https://fcm.googleapis.com/fcm/send/dJsCu8xSSwo:APA91bHX5QcjajUwv6pMF2jCvm9qddtLtYJZbqSiVcKnRaj0UJOLG5Gy6vOlDiW4A82nth1ZUyVJtsxygu-oEXbS9cAA9WDIQVMyPEmcr7qKEFYdGIy6FyMJnir1qZud_ShlKY-e49-T', 'BPSolAqtCOnucr4Y83RO6CwKDOzJwYhZA5DSW69s5Sv/cahzZBt9oOqUSvu7i5bXPnXzVx9l8rqj6rSqp/OABXU=', 'nyT6MT0Bulr2GHdi8iXgDA==', 'aes128gcm', '2020-12-30 18:01:52', '2020-12-30 18:01:52'),
(87, 'App\\Models\\User', 17, 'https://fcm.googleapis.com/fcm/send/csr_Jg5UXww:APA91bHniuIrRR0qAa-N7nHHylw7Z9UboVyTodF0FJlWjdXCZL2cI8VOzQfH6jwyw3QIIg1UINA9VDPvvD1OEtkmloubgBEJn1S9aFoJ27UexxMLRPjbDpmoS8Y1AHkAs42d7dm_fEIA', 'BJrCeBpnzHHmTSPHRm9jGAIoFOZfzCDdXuYt/CFTSQSAvBtE/Jnk26wkAXd6bhbSjctUCskxnKIXNTY1BsAhoow=', 'cv6NfUizNW/bpQOoETit2Q==', 'aes128gcm', '2021-01-16 12:01:33', '2021-01-16 12:01:33'),
(88, 'App\\Models\\User', 34, 'https://fcm.googleapis.com/fcm/send/dIp1NOlHKqY:APA91bHNJXw0D6Xn5u_nntZZJLi0i2FVbVls72mVazXIZNqMRpt3ki_8nfEHEmcJ_LQol5C2SElALSGBJB5KsMWb9sYDMDRrOzsa29Dc51JgTspCCQIthrZwswbspwpkvNtaGkqeZrKv', 'BGPxf4fp6Qdv1MIVjQKsGzfjJh0fFzvLehP+p7Rwd+Mbysw6m4nEUNdknxrlLW+e6TuYWe7SC5Di5D4mPkW2lsk=', 'PoRg++fhiBKh4JzdiR1MUw==', 'aes128gcm', '2021-01-16 12:12:21', '2021-01-16 12:12:21'),
(89, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fhoifrsPrqI:APA91bEaJHt1uyYRl4G1jS-hz0jSyfnJHtijLisLvGcpISZiSBvsebxuJ7q59aEtbXYD_cyzjftRZSb4kMobIEjfKBVrs4jMTxjP7DdPl1KnGIsGNbdW069BlwHCz2XB0t4iVd_Ygu6H', 'BA11qmC9oxaHvPEvFPyYhlsDmBXOlJJI6SK24kfDrX0pOSHUs/zRGAA+0iAZ8q27V+tylKo/f7mDn9asEmg8emw=', '9cCySjY6Kw2aPFz4XlszFA==', 'aes128gcm', '2021-01-18 15:31:48', '2021-01-18 15:31:48'),
(90, 'App\\Models\\User', 1, 'https://fcm.googleapis.com/fcm/send/fPnXcgMmVFE:APA91bFYvu7OibpZ5CtlKG3LqUSJ07_dU-jH-momkgvKnKC-oQCYhM1-tUgiDfDytfM_zIOh2xzKP_KMRacHfdEUE_eM6s0j4rZDdYKSxSbglZTe5XCXKw3oXhffVUn1QUFczK_U_XKy', 'BECYn9YBLl0XMC3EJMWnl+gor/ff/E1VXs7jFySC9OKAjMYgrdzjQPWMRSRm1FnzAdbu+oIjWQq2xGyFDog8jko=', '9k7hMHDNUnkNynghd3s9vg==', 'aes128gcm', '2021-01-22 01:50:45', '2021-01-22 01:50:45'),
(93, 'App\\Models\\User', 2, 'https://fcm.googleapis.com/fcm/send/cgkEhZEcUlU:APA91bHaM4GqrZ4XfL_VaPKhloUmumL43cLMLudB-hCUJjqDlEeepaaLxmi9oK5v2z9P6fCP685smFFY74W8ETMSv7a1R256qmTBArQOHbrj6yqNEjTYxEbcf9mGTssuqb890Yk02_mV', 'BHO1MJuiqYP1iQ2J5H4FJ2hqCtilAEihrg4q957v4KtzYPlNfb4VILHbT7csiV+nr++S4gl6B46fM7aFZKz52e0=', 'WnOiz5HNpCxrwgdEe1S6xQ==', 'aes128gcm', '2021-01-30 11:55:49', '2021-01-30 11:55:49'),
(97, 'App\\Models\\User', 2, 'https://fcm.googleapis.com/fcm/send/c31rF1MKctg:APA91bEk7Nfuj0hLWuXlr50zfBk7NeBYn-APvp1Ax3QR3bmMbFV-AzugLdp4rPsfzzYtS8guxfERzzUiO-Dee8ETTEy4FJiikleDT2tbdinZ6o7CnQIEM_5l5O96pAD5Xo4BINTtaoZh', 'BHEkcGH8nMyryOleyn6Xr/htJJD2mUpbJm+JxlQq4FrYifvpjPPODE/SfrlSzyGlMee2LX+XaseR3NpwDbF4DQQ=', 'MmcYShq/J2VvVr6fWjxOtw==', 'aes128gcm', '2021-03-23 12:31:43', '2021-03-23 12:31:43'),
(101, 'App\\Models\\User', 2, 'https://fcm.googleapis.com/fcm/send/cmPfqURHQLo:APA91bHLECSSMlyP_QK0wrhbrhr1e_CE-d9NX8fQtwyMdWeitUMjCgqIkb6MRbP64yd4tZ21lKaxVl-HfOxZrskeR5lyucymRm1Zz22mtIgRfl7EJGNPYGWGZ3sZlrZqTWhe8eBqfD7a', 'BPML6ROOZ/k44Qs6kiN6t5HFOF+9iScjm2jD90vZMw3ZVrLfcM37+9DpsZfrWmcpUUk35xLU/nhvIqN0y9C6pps=', 'jQF5+MfZFYxkvwMDPOQJRw==', 'aes128gcm', '2021-04-27 16:45:05', '2021-04-27 16:45:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `uuid`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, '69f62626-5d0b-4bf6-9aac-d0916c1d1f8e', 'admin', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(2, '1d976874-e7b9-434d-9c0e-72c5d4b86cbe', 'user', 'web', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(3, 'd9780a72-8e92-41d0-8304-9ebccd179dc6', 'client', 'web', '2020-10-20 10:25:32', '2020-10-20 10:25:32'),
(4, '16b931bd-5ff5-48d4-bd2e-eb1dbae930df', 'mentor', 'web', '2020-10-20 10:25:37', '2020-10-20 10:25:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(3, 2),
(4, 2),
(7, 2),
(10, 2),
(17, 2),
(3, 3),
(17, 3),
(3, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segments`
--

CREATE TABLE `segments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segment_user`
--

CREATE TABLE `segment_user` (
  `segment_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_pages`
--

CREATE TABLE `site_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `template_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `site_pages`
--

INSERT INTO `site_pages` (`id`, `uuid`, `title`, `slug`, `body`, `status`, `parent_id`, `template_id`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'a6769bce-c2a6-4860-aaef-7065cbe80448', 'Privacy Policy', 'privacy', 'Here goes your privacy policy', 1, NULL, 2, '{\"keywords\": null, \"seo_title\": null, \"description\": null}', '2020-10-17 11:28:23', '2020-10-17 11:28:23'),
(2, '37e6ca00-5d80-4447-b73a-6de91380f09c', 'Terms of Service', 'terms', 'Here goes your terms of service', 1, NULL, 2, '{\"keywords\": null, \"seo_title\": null, \"description\": null}', '2020-10-17 11:28:23', '2020-10-17 11:28:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_queries`
--

CREATE TABLE `site_queries` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `message` text COLLATE utf8mb4_unicode_ci,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_subscribers`
--

CREATE TABLE `site_subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed_at` datetime DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` json DEFAULT NULL,
  `slug` json DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_column` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `todos`
--

CREATE TABLE `todos` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `due_date` date DEFAULT NULL,
  `due_time` time DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preference` json DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `username`, `birth_date`, `gender`, `avatar`, `email_verified_at`, `password`, `status`, `preference`, `remember_token`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'cf8a4b16-07ac-4736-be77-d346b06e0a04', 'MBA PRO', 'mail@mybusinessacademypro.com', 'mbapro', NULL, NULL, '/storage/avatar/5.jpg', '2020-10-17 11:28:23', '$2y$10$P2wgG57.wUmTyxYHMMqFa.7NP1/BqSFvK0qP.XyIeI.MxA/tCOjx.', 'activated', '{\"chat\": {\"enter_to_submit\": \"1\", \"enable_auto_open\": \"1\", \"mute_sound_notification\": \"1\"}, \"system\": {\"locale\": \"en\"}}', NULL, NULL, '2020-10-17 11:28:23', '2021-03-17 16:32:23'),
(2, '2d5dcc19-c968-4920-8bc9-170e7b0893b1', 'luisana', 'luisanaelenamarin@gmail.com', 'lvmb29', NULL, NULL, '/storage/avatar/2.png', '2020-10-17 07:46:00', '$2y$10$jWNde7AXGFS0CLko59yAq.SKaWtrLGVQtNav8BFETFgz2qTAgeIpG', 'activated', NULL, NULL, '{\"activation_token\": \"ea3b3f2b-8e39-4828-9124-5e4302d66b63\"}', '2020-10-17 11:41:26', '2020-10-30 14:53:12'),
(3, '0b6a8f51-7d50-495b-8b1d-a9e34399fc23', 'luisana', 'lvmb29@gmail.com', 'luisana', NULL, NULL, '/storage/avatar/3.png', NULL, '$2y$10$7Y8JfhKPUMKBleVClIrd3uTb2ljx7IZBDP8PAWpyvcUakH13e3476', 'activated', NULL, NULL, '{\"activation_token\": \"e2d2036c-d75a-48ce-ac84-87b162e9b978\"}', '2020-10-17 11:47:29', '2020-10-30 16:08:33'),
(5, '23ee646a-c76a-4a84-afba-464b7aeae05f', 'Erick Reynaga', 'erickreynaga@mybusinessacademypro.com', 'erickreynaga@mybusinessacademypro.com', NULL, NULL, '/storage/avatar/5.jpg', NULL, '$2y$10$dGAHup0S1l.R28yWqfUOuumBfgPeMT24nZ1X..rJkqkHj2sqE.95a', 'activated', NULL, NULL, NULL, '2020-10-19 20:05:27', '2020-10-30 16:08:33'),
(6, '07ed79a8-5109-428b-89d6-570359dd810e', 'Lester Morales', 'mglesther@hotmail.com', 'mglesther', '1981-10-09', 'male', NULL, NULL, '$2y$10$riMDy4ucwKglgmJV2BP9webv6FTrqgX8/aDQsDcKIIiBFyl18IZue', 'activated', NULL, NULL, '{\"activation_token\": \"8a56904f-a1c8-46fb-bfa6-fad036fc5804\"}', '2020-10-20 01:18:38', '2020-10-20 01:19:56'),
(7, '8f51752d-fe2a-4226-a401-df8092a97ab7', 'Kode Mint', 'hi@kodemint.in', 'kodemint', '1987-10-14', 'male', NULL, NULL, '$2y$10$OzbhkuJVz6nFKJaJd/HSL.ewXAOWR7W8s.LoY1koD3AW433M./mci', 'activated', NULL, NULL, NULL, '2020-10-20 07:43:34', '2020-10-20 07:43:34'),
(8, 'c78be201-1398-40f5-ad9d-c64dee9a64bf', 'Prueba', 'prueba@gmail.com', 'prueba', '2020-10-20', 'male', NULL, NULL, '$2y$10$y0XqK2BHuhH5SjlbaaL0weYeu2MqxEcgDS/AJujDXO8Irvl4.Khb2', 'activated', NULL, NULL, NULL, '2020-10-20 10:28:03', '2020-10-20 10:28:03'),
(9, '00230d8c-8667-4235-8c4e-734f253506f2', 'prueba cliente', 'pruebacliente@gmail.com', 'pruebacliente@gmail.com', NULL, NULL, '/storage/avatar/9.png', NULL, '$2y$10$gBOj3uaaZ0rfy.hsouf9xOxOclVM0FkbYR8Lj0Kd0g/le1SUukzDG', 'activated', NULL, NULL, NULL, '2020-10-20 10:32:23', '2020-10-30 16:08:33'),
(10, 'efffcb9e-742e-462a-9c8b-6abf696e1544', NULL, 'ramalejtq@gmail.com', 'ramalejtq@gmail.com', NULL, NULL, '/storage/avatar/10.jpeg', NULL, '$2y$10$U/LObjUQsCOyD4guboD/veF/kh1atn8JPimlgjGZzutlyi.8n5z.O', 'activated', NULL, NULL, NULL, '2020-10-20 13:58:29', '2020-10-30 16:08:33'),
(11, '94211570-fca6-41ed-aabd-ac39a28c465a', 'Tania Tostado', 'taniatostado@mybusinessacademypro.com', 'taniatostado@mybusinessacademypro.com', NULL, NULL, '/storage/avatar/11.jpg', NULL, '$2y$10$NGgr.HauAu4B3S5Fz5nihu6NTEuFdrDl8mL/KhNGTHsSZY.LGzhgq', 'activated', NULL, NULL, NULL, '2020-10-20 14:05:27', '2020-10-30 16:08:33'),
(12, '3e572f60-2a39-471e-bbe1-128b8f3714df', 'tes1000', 'ramalejtq@hotmail.com', 'ramalejtq@hotmail.com', NULL, NULL, '/storage/avatar/12.png', NULL, '$2y$10$oc1jlL3BBBYyBVeadE/27.LjoQembdQLTLUpjOHUnB79L4wXtD9aO', 'activated', NULL, NULL, NULL, '2020-10-20 16:32:28', '2020-10-30 16:08:33'),
(13, 'eb497a57-9f5b-48ac-9fb4-d1dffcfcdab3', 'Lester Morales', 'lestermorales@sinergiared.com', 'lestermorales@sinergiared.com', '1981-10-09', 'male', '/storage/avatar/13.jpg', NULL, '$2y$10$OlRAvwRhxUm9Fm/d.T/co.bjjSGTQFjtm8.0YWHVmSvrzNsy2TOjW', 'activated', NULL, NULL, NULL, '2020-10-20 16:51:41', '2020-10-30 16:08:33'),
(14, '93459865-11fc-4bea-ba6f-a09279cc2960', 'freddy', 'fjms93@gmail.com', 'fjms93@gmail.com', NULL, NULL, '/storage/avatar/14.png', NULL, '$2y$10$.L2RowssCndMFozFyGkns.3Ectzyox/gmsJrgdwkUnJB9b.YvLD9q', 'activated', NULL, NULL, NULL, '2020-10-20 17:40:24', '2020-10-30 16:08:33'),
(15, '6a56cc05-8851-4697-a2e4-0f8097dbb253', 'Ramon Picon', 'soporte@sinergiared.com', 'ramonpicon', '1980-10-14', 'male', NULL, NULL, '$2y$10$wPdesnzU3sUmdAWd6Qq4FOXHOmKuynaB5RHo7.KJ4qkpsLU.yY0gK', 'activated', NULL, NULL, NULL, '2020-10-20 23:02:20', '2020-10-20 23:02:20'),
(16, '203778d5-cf68-4f5e-ac53-7942fe2e6d50', 'Noemy Aleman', 'noemy.producer@gmail.com', 'noemy.producer', NULL, 'female', NULL, NULL, '$2y$10$K3vLFVq5gQZQAxlDB3HfDeaO2DGJmbkHt0My48I2a304.7V4H4L6u', 'activated', NULL, NULL, NULL, '2020-10-24 00:04:56', '2020-10-24 00:04:56'),
(17, '56eb845d-f3cf-4d60-97e4-4e6dae134502', 'Manuel Guerrero', 'manuelguerrero@mybusinessacademypro.com', 'manuelguerrero@mybusinessacademypro.com', NULL, NULL, '/storage/avatar/17.jpg', NULL, '$2y$10$MnDZ/jJMh/SQdv0osrkNA.S6GyBl7N6gioluU.mAtgyacbQo19kf.', 'activated', NULL, NULL, NULL, '2020-10-23 20:04:37', '2020-10-30 16:08:33'),
(18, 'd993fadd-3fb0-4f45-989f-0d70e68c8ebe', 'referidosinergia', 'conferencias_lm@hotmail.com', 'conferencias_lm@hotmail.com', NULL, NULL, '/storage/avatar/18.jpg', NULL, '$2y$10$ereXLXUPMvHQ8SjAVPN9BOPXNym5hWXn2ny0lYF2c69iAtbaoZy2m', 'activated', NULL, NULL, NULL, '2020-10-24 18:07:36', '2020-10-30 16:08:33'),
(19, '813c52fe-bb7e-43f7-99e9-62d21460e214', 'referido2sinergia', 'recursos.marketing@gmail.com', 'recursos.marketing@gmail.com', NULL, NULL, '/storage/avatar/19.png', NULL, '$2y$10$BI6W9QHIkD2b44TfR7OisOS7LjaLVA.wztipzztQgo12OE0Rmw17W', 'activated', '{\"chat\": {\"enter_to_submit\": \"1\", \"enable_auto_open\": \"1\", \"mute_sound_notification\": \"1\"}}', NULL, NULL, '2020-10-24 18:44:51', '2020-10-30 16:08:33'),
(21, '1e86809a-51ed-4247-9967-ad60b033e328', NULL, 'prueba-luisana@gmail.com', 'prueba-luisana@gmail.com', NULL, NULL, '/storage/avatar/21.jpg', NULL, '$2y$10$.GIMTxG1LNKBNzvu8WsheOPRMt1ACrtInZnpqpx9Qe6F.GNs94Ln2', 'activated', NULL, NULL, NULL, '2020-10-30 15:59:04', '2020-10-30 15:59:04'),
(22, 'decc851c-55f9-4072-bf35-5816ec1da278', 'Douglas Carrillo', 'dcarrillo@fenttix.com', 'dcarrillo', '1998-10-08', 'male', NULL, NULL, '$2y$10$6Oa.BN36aQpQFYy1rWuN8.sc7E2msM8nT83RPgouuOydHN.qp1eOS', 'activated', NULL, NULL, NULL, '2020-10-31 01:37:31', '2020-10-31 01:37:31'),
(23, '1eb4e190-dd1b-410d-a632-3b41dcd80c63', NULL, 'prueba2@mail.com', 'prueba2@mail.com', NULL, NULL, '/storage/avatar/23.png', NULL, '$2y$10$KUgEJR/zBYSjUYSHNazl2.mGboR7YJS/JfdXPT0Vy4E9Gg7o5Do7W', 'activated', NULL, NULL, NULL, '2020-10-31 12:34:57', '2020-10-31 12:34:57'),
(24, 'e81122fd-ab78-4555-8c66-7be3f224b253', 'AlexisValera95', 'alexisjoseva95@gmail.com', 'alexisjoseva95@gmail.com', NULL, NULL, '/storage/avatar/24.png', NULL, '$2y$10$NDFfAaIedGXsXDUtClpESOGQ3lQRT.7ERVFRIVFFtDlznQysSQuLO', 'activated', NULL, NULL, NULL, '2020-12-14 10:06:57', '2020-12-14 10:06:58'),
(25, '3714a9c9-693a-4c91-a897-d4ad4df533a7', 'luisana', 'pietropasqualis55@gmail.com', 'pietropasqualis55@gmail.com', NULL, NULL, '/storage/avatar/25.png', NULL, '$2y$10$Y./7XfeDvE4.qy5896aj4OTcxg1IurPj7Uzp9yyclDBjl1sGKAbte', 'activated', NULL, NULL, NULL, '2020-12-14 10:31:02', '2020-12-14 10:31:02'),
(26, '4d66959e-b675-45d0-b9b5-f78721ba3297', 'Prueba', 'cliente9@sinergiared.com', 'cliente9@sinergiared.com', NULL, NULL, '/storage/avatar/26.png', NULL, '$2y$10$0pDRGlmCEJqtXW0wdVS3fePhXopWeZzwEKmfejtJO3RnMo4Ts.GJi', 'activated', NULL, NULL, NULL, '2020-12-14 15:18:39', '2020-12-14 15:18:39'),
(27, '3984c4d5-d03a-48b3-a9c4-c6f54a6c5472', 'tes900', 'tes900@gmail.com', 'tes900@gmail.com', NULL, NULL, '/storage/avatar/27.png', NULL, '$2y$10$UHoFcL5DZh795fhzxGD6jeNkuYGnVd7e7O0edNifH8Br2tdUgzA0G', 'activated', NULL, NULL, NULL, '2020-12-14 20:05:59', '2020-12-14 20:05:59'),
(28, '0dd03617-b9a2-4037-b23e-5cbae180e3cd', 'Administrador', 'admin@shapinetwork.com', 'admin@shapinetwork.com', NULL, NULL, '/storage/avatar/28.png', NULL, '$2y$10$X901K/MPP45Icd.9GyBvJO/7246PTmMW4HGRftL/w5aOGMeD/kmVK', 'activated', NULL, NULL, NULL, '2020-12-15 10:56:19', '2020-12-15 10:56:19'),
(29, '4536270f-6a2a-40f1-8c57-a3b220746886', 'es5000', 'tes5000@gmail.com', 'tes5000@gmail.com', NULL, NULL, '/storage/avatar/29.png', NULL, '$2y$10$k2UMseqGKohcBfaOW4fvjuHIkB7CASbPqY5aamaep.zAtk3iwQHr6', 'activated', NULL, NULL, NULL, '2020-12-15 15:57:19', '2020-12-15 15:57:19'),
(30, 'c48fa978-87e4-48ec-854f-0c6fab9a3fc6', 'Ser', 'soporte2@gmail.com', 'soporte2@gmail.com', NULL, NULL, '/storage/avatar/30.png', NULL, '$2y$10$xnd96qlLWCg0emJG5b.7beCMRqlMGkfM7O.RTdmPj/Vwlrr7zxmdK', 'activated', NULL, NULL, NULL, '2020-12-30 12:38:27', '2020-12-30 12:38:27'),
(31, '04f5b72c-1e6c-4671-a5ca-4de98226d782', 'Luz', 'soporte1@gmail.com', 'soporte1@gmail.com', NULL, NULL, '/storage/avatar/31.png', NULL, '$2y$10$FALUQSyxNMd9kGA5hOMWaO3g7ErvkVf22VOP5F9Mz94/ihUTnEfuC', 'activated', NULL, NULL, NULL, '2020-12-30 12:53:38', '2020-12-30 12:53:38'),
(32, '23033e40-7399-4057-bb87-847cc9d82bea', 'Hacer', 'soporte3@gmail.com', 'soporte3@gmail.com', NULL, NULL, '/storage/avatar/32.png', NULL, '$2y$10$g5yjzFeQhruSLCHvuEZh.eoeFOmE6Lv3PRGgCN1uPRFnTisa6TKTm', 'activated', NULL, NULL, NULL, '2020-12-30 13:01:42', '2020-12-30 13:01:42'),
(33, '46dd7e87-ac4a-4eb3-a9c8-c853afed14c3', 'Yanira Picon', 'cliente2@sinergiared.com', 'cliente2@sinergiared.com', NULL, NULL, '/storage/avatar/33.jpeg', NULL, '$2y$10$1L3/bIzCr03h0Wx6TiLx..e/K97Ss8lZAGRY.ZFPba4Q29X1r1LEm', 'activated', NULL, NULL, NULL, '2021-01-16 06:58:56', '2021-01-16 06:58:56'),
(34, '57d77060-f07d-4ed8-9d82-f2ce67437c66', 'Soporte', 'yanirapicon@sinergiared.com', 'yanirapicon@sinergiared.com', NULL, NULL, '/storage/avatar/34.png', NULL, '$2y$10$3HQ5UyFGGn42su9NP/mwwuPSRcYNIL3tn3YTuRKYsKSwjQBfdNjFS', 'activated', NULL, NULL, NULL, '2021-01-16 07:08:44', '2021-01-16 07:08:44'),
(35, '5d50e7c5-514e-487e-ace4-b09b893a6e04', 'Mercedes', 'cliente6@sinergiared.com', 'cliente6@sinergiared.com', NULL, NULL, '/storage/avatar/35.png', NULL, '$2y$10$vpNsVNSNKA5Jo/O9wrNOB.5RE3Kmb7U9AcBzzCrPbalaWxhlRTOSy', 'activated', NULL, NULL, NULL, '2021-01-25 14:16:22', '2021-01-25 14:16:22'),
(36, '0e517d6c-4856-4e83-9052-057bf5cf4aeb', 'Transcender', 'soporte5@gmail.com', 'soporte5@gmail.com', NULL, NULL, '/storage/avatar/36.png', NULL, '$2y$10$irqlKksv39ORVFBDsKTFfOEb/3WAcAxq.wzwe1VfaEiPnhtppILRy', 'activated', NULL, NULL, NULL, '2021-01-29 13:28:15', '2021-01-29 13:28:15'),
(37, '083742b2-58b1-4de7-9610-9e88205e20fe', 'cliente6@mybusinessacademypro.com', 'cliente6@mybusinessacademypro.com', 'cliente6@mybusinessacademypro.com', NULL, NULL, '/storage/avatar/37.png', NULL, '$2y$10$FQ3emfNxo8oLUU5kRDUoeuKBrVyB206nPiatbPLzmoCwOCLLTUs16', 'activated', NULL, NULL, NULL, '2021-04-18 16:13:32', '2021-04-18 16:13:32'),
(38, '07a9754d-93fb-4154-9967-6fdad4e9a1b5', 'Crisleivys Gil', 'crisleivys@mail.com', 'crisleivys@mail.com', NULL, NULL, '/storage/avatar/38.jpg', NULL, '$2y$10$h4MoUGYUVeTTiKmzEjjf2uiSDZesUTt/5nq/mu9fu7PQXYnXUAbDy', 'activated', NULL, NULL, NULL, '2021-04-18 16:21:26', '2021-04-18 16:21:26'),
(39, '05934454-2c4c-4bef-8005-deb12a3073f2', 'Mentor Experto', '5@gmail.com', '5@gmail.com', NULL, NULL, '/storage/avatar/39.jpg', NULL, '$2y$10$KKQuG7b9qiWBrdb680LBZOJI4R4WwgmiOQDKKaUvZ2NWv8iQqTbDS', 'activated', NULL, NULL, NULL, '2021-04-21 15:34:51', '2021-04-21 15:34:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_chat_room_id_foreign` (`chat_room_id`),
  ADD KEY `chats_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_room_members`
--
ALTER TABLE `chat_room_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_room_members_chat_room_id_foreign` (`chat_room_id`),
  ADD KEY `chat_room_members_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `contact_segment`
--
ALTER TABLE `contact_segment`
  ADD KEY `contact_segment_contact_id_foreign` (`contact_id`),
  ADD KEY `contact_segment_segment_id_foreign` (`segment_id`);

--
-- Indices de la tabla `contact_user`
--
ALTER TABLE `contact_user`
  ADD KEY `contact_user_contact_id_foreign` (`contact_id`),
  ADD KEY `contact_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indices de la tabla `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_category_id_foreign` (`category_id`),
  ADD KEY `meetings_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `meeting_invitees`
--
ALTER TABLE `meeting_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_invitees_meeting_id_foreign` (`meeting_id`),
  ADD KEY `meeting_invitees_contact_id_foreign` (`contact_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `segment_user`
--
ALTER TABLE `segment_user`
  ADD KEY `segment_user_segment_id_foreign` (`segment_id`),
  ADD KEY `segment_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `site_pages`
--
ALTER TABLE `site_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_pages_parent_id_foreign` (`parent_id`),
  ADD KEY `site_pages_template_id_foreign` (`template_id`);

--
-- Indices de la tabla `site_queries`
--
ALTER TABLE `site_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `site_subscribers`
--
ALTER TABLE `site_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_foreign` (`tag_id`),
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`);

--
-- Indices de la tabla `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indices de la tabla `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `chat_room_members`
--
ALTER TABLE `chat_room_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `meeting_invitees`
--
ALTER TABLE `meeting_invitees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `segments`
--
ALTER TABLE `segments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `site_pages`
--
ALTER TABLE `site_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `site_queries`
--
ALTER TABLE `site_queries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `site_subscribers`
--
ALTER TABLE `site_subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_chat_room_id_foreign` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `chat_room_members`
--
ALTER TABLE `chat_room_members`
  ADD CONSTRAINT `chat_room_members_chat_room_id_foreign` FOREIGN KEY (`chat_room_id`) REFERENCES `chat_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_room_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `contact_segment`
--
ALTER TABLE `contact_segment`
  ADD CONSTRAINT `contact_segment_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contact_segment_segment_id_foreign` FOREIGN KEY (`segment_id`) REFERENCES `segments` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `meeting_invitees`
--
ALTER TABLE `meeting_invitees`
  ADD CONSTRAINT `meeting_invitees_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_invitees_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `site_pages`
--
ALTER TABLE `site_pages`
  ADD CONSTRAINT `site_pages_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `site_pages` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `site_pages_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `options` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Filtros para la tabla `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
