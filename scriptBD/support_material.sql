-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 09:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mba`
--

-- --------------------------------------------------------

--
-- Table structure for table `support_material`
--

CREATE TABLE `support_material` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'Archivo o Link',
  `material` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `support_material`
--

INSERT INTO `support_material` (`id`, `course_id`, `title`, `type`, `material`, `image`, `created_at`, `updated_at`) VALUES
(19, 1, 'File 1', 'Archivo', 'MANUAL IPO INGLES.pdf', 'eeuu.png', '2020-11-06 19:50:04', '2020-11-06 19:50:04'),
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
(39, 4, 'File 2', 'Archivo', 'MANUAL RISK MANAGEMENT FOREX2.pdf', 'eeuu.png', '2020-11-06 20:37:16', '2020-11-06 20:37:16'),
(40, 4, 'Dokument 1', 'Archivo', 'MANUAL ÖKONOMETRISCHE ANALYSE.pdf', 'alemania.png', '2020-11-06 20:38:24', '2020-11-06 20:38:24'),
(41, 4, 'Dokument 2', 'Archivo', 'MANUAL RISIKO MANAGEMENT FOREX2.pdf', 'alemania.png', '2020-11-06 20:40:18', '2020-11-06 20:40:18'),
(42, 4, 'Document 1', 'Archivo', 'MANUAL ANALYSE ECONOMETRIQUE.pdf', 'francia.png', '2020-11-06 20:43:38', '2020-11-06 20:43:38'),
(43, 4, 'Document 2', 'Archivo', 'MANUAL GESTION DES RIQUES FOREX2.pdf', 'francia.png', '2020-11-06 20:45:08', '2020-11-06 20:45:08'),
(44, 4, 'Documento 1', 'Archivo', 'MANUAL ANALISE ECONOMETRICA.pdf', 'portugal.png', '2020-11-06 20:55:59', '2020-11-06 20:55:59'),
(45, 4, 'Documento 2', 'Archivo', 'MANUAL GESTÃO DE RISCO FOREX.pdf', 'portugal.png', '2020-11-06 20:57:03', '2020-11-06 20:57:03'),
(46, 4, 'Material 1', 'Archivo', 'MANUAL ANÁLISIS ECONOMÉTRICO.pdf', 'españa.png', '2020-11-06 21:12:44', '2020-11-06 21:12:44'),
(47, 4, 'Material 2', 'Archivo', 'MANUAL MANEJO DEL RIESGO FOREX2.pdf', 'españa.png', '2020-11-06 21:14:34', '2020-11-06 21:14:34'),
(48, 4, 'Documento 1', 'Archivo', 'MANUAL ANALISI ECONOMETRICA.pdf', 'Italia.png', '2020-11-06 21:15:50', '2020-11-06 21:15:50'),
(49, 4, 'Documento 2', 'Archivo', 'MANUAL GESTIONE DEL RICHIO FOREX2.pdf', 'Italia.png', '2020-11-06 21:16:55', '2020-11-06 21:16:55'),
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `support_material`
--
ALTER TABLE `support_material`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `support_material`
--
ALTER TABLE `support_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
