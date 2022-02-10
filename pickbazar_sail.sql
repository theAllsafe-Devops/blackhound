-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2022 at 11:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pickbazar_sail`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`address`)),
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `title`, `type`, `default`, `address`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'Product', 'billing', 0, '{\"id\":1,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', 26, '2021-12-23 01:29:01', '2021-12-23 01:32:45'),
(2, 'Shipping', 'shipping', 0, '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', 26, '2021-12-23 01:29:55', '2021-12-23 01:33:02'),
(3, 'Shipping', 'shipping', 0, '{\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"UP\",\"zip\":\"232323\",\"street_address\":\"Lucknow\"}', 26, '2022-01-08 07:40:19', '2022-01-08 07:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, NULL, '2021-12-21 04:33:07', '2021-12-21 04:33:07'),
(2, '', '2021-12-21 04:33:42', '2021-12-21 04:33:42'),
(3, '', '2021-12-21 04:36:02', '2021-12-21 04:36:02'),
(4, '', '2021-12-21 04:37:04', '2021-12-21 04:37:04'),
(5, '', '2021-12-21 04:37:47', '2021-12-21 04:37:47'),
(6, NULL, '2021-12-21 04:56:33', '2021-12-21 04:56:33'),
(7, NULL, '2021-12-21 05:05:36', '2021-12-21 05:05:36'),
(8, NULL, '2021-12-21 05:06:09', '2021-12-21 05:06:09'),
(9, NULL, '2021-12-21 05:07:02', '2021-12-21 05:07:02'),
(10, NULL, '2021-12-21 05:08:13', '2021-12-21 05:08:13'),
(11, NULL, '2021-12-21 05:09:25', '2021-12-21 05:09:25'),
(12, NULL, '2021-12-21 05:09:58', '2021-12-21 05:09:58'),
(13, NULL, '2021-12-21 05:16:18', '2021-12-21 05:16:18'),
(14, NULL, '2021-12-21 05:21:34', '2021-12-21 05:21:34'),
(15, NULL, '2021-12-21 05:34:56', '2021-12-21 05:34:56'),
(16, NULL, '2021-12-21 05:35:43', '2021-12-21 05:35:43'),
(17, NULL, '2021-12-21 05:36:27', '2021-12-21 05:36:27'),
(18, NULL, '2021-12-21 11:35:45', '2021-12-21 11:35:45'),
(19, NULL, '2021-12-21 11:50:52', '2021-12-21 11:50:52'),
(20, NULL, '2021-12-21 12:03:16', '2021-12-21 12:03:16'),
(21, NULL, '2021-12-21 12:09:31', '2021-12-21 12:09:31'),
(22, NULL, '2021-12-21 12:15:49', '2021-12-21 12:15:49'),
(23, NULL, '2021-12-21 12:23:11', '2021-12-21 12:23:11'),
(24, NULL, '2021-12-21 12:24:29', '2021-12-21 12:24:29'),
(25, NULL, '2021-12-21 12:38:31', '2021-12-21 12:38:31'),
(26, NULL, '2021-12-21 12:40:29', '2021-12-21 12:40:29'),
(27, NULL, '2021-12-21 12:41:05', '2021-12-21 12:41:05'),
(28, NULL, '2021-12-21 12:56:16', '2021-12-21 12:56:16'),
(29, NULL, '2021-12-21 12:56:28', '2021-12-21 12:56:28'),
(30, NULL, '2021-12-21 12:57:03', '2021-12-21 12:57:03'),
(31, NULL, '2021-12-21 12:57:40', '2021-12-21 12:57:40'),
(32, NULL, '2021-12-21 12:58:24', '2021-12-21 12:58:24'),
(33, NULL, '2021-12-21 12:59:14', '2021-12-21 12:59:14'),
(34, NULL, '2021-12-21 12:59:55', '2021-12-21 12:59:55'),
(35, NULL, '2021-12-21 13:00:20', '2021-12-21 13:00:20'),
(36, NULL, '2021-12-21 13:00:46', '2021-12-21 13:00:46'),
(37, NULL, '2021-12-21 13:01:16', '2021-12-21 13:01:16'),
(38, NULL, '2021-12-21 13:02:01', '2021-12-21 13:02:01'),
(39, NULL, '2021-12-21 13:03:47', '2021-12-21 13:03:47'),
(40, NULL, '2021-12-21 13:09:22', '2021-12-21 13:09:22'),
(41, NULL, '2021-12-21 13:15:38', '2021-12-21 13:15:38'),
(42, NULL, '2021-12-21 13:16:00', '2021-12-21 13:16:00'),
(43, NULL, '2021-12-21 13:21:26', '2021-12-21 13:21:26'),
(44, NULL, '2021-12-21 13:22:10', '2021-12-21 13:22:10'),
(45, NULL, '2021-12-21 13:23:31', '2021-12-21 13:23:31'),
(46, NULL, '2021-12-21 13:25:58', '2021-12-21 13:25:58'),
(47, NULL, '2021-12-21 13:26:36', '2021-12-21 13:26:36'),
(48, NULL, '2021-12-21 13:26:53', '2021-12-21 13:26:53'),
(49, NULL, '2021-12-21 13:28:49', '2021-12-21 13:28:49'),
(50, NULL, '2021-12-21 13:31:11', '2021-12-21 13:31:11'),
(51, NULL, '2021-12-21 13:31:55', '2021-12-21 13:31:55'),
(52, NULL, '2021-12-21 13:33:37', '2021-12-21 13:33:37'),
(53, NULL, '2021-12-21 13:35:14', '2021-12-21 13:35:14'),
(54, NULL, '2021-12-21 13:56:41', '2021-12-21 13:56:41'),
(55, NULL, '2021-12-21 13:57:48', '2021-12-21 13:57:48'),
(56, NULL, '2021-12-21 13:59:27', '2021-12-21 13:59:27'),
(57, NULL, '2021-12-21 14:00:33', '2021-12-21 14:00:33'),
(58, NULL, '2021-12-21 14:01:17', '2021-12-21 14:01:17'),
(59, NULL, '2021-12-21 14:03:59', '2021-12-21 14:03:59'),
(60, NULL, '2021-12-21 14:04:14', '2021-12-21 14:04:14'),
(61, NULL, '2021-12-21 14:04:15', '2021-12-21 14:04:15'),
(62, NULL, '2021-12-21 14:04:16', '2021-12-21 14:04:16'),
(63, NULL, '2021-12-21 14:04:17', '2021-12-21 14:04:17'),
(64, NULL, '2021-12-21 14:04:19', '2021-12-21 14:04:19'),
(65, NULL, '2021-12-22 02:13:45', '2021-12-22 02:13:45'),
(66, NULL, '2021-12-22 02:14:26', '2021-12-22 02:14:26'),
(67, NULL, '2021-12-22 02:37:04', '2021-12-22 02:37:04'),
(68, NULL, '2021-12-22 02:37:24', '2021-12-22 02:37:24'),
(69, NULL, '2021-12-22 03:27:24', '2021-12-22 03:27:24'),
(70, NULL, '2021-12-22 03:27:41', '2021-12-22 03:27:41'),
(71, NULL, '2021-12-22 03:27:42', '2021-12-22 03:27:42'),
(72, NULL, '2021-12-22 03:27:44', '2021-12-22 03:27:44'),
(73, NULL, '2021-12-22 03:27:45', '2021-12-22 03:27:45'),
(74, NULL, '2021-12-22 03:27:47', '2021-12-22 03:27:47'),
(75, NULL, '2021-12-22 03:32:56', '2021-12-22 03:32:56'),
(76, NULL, '2021-12-22 03:33:26', '2021-12-22 03:33:26'),
(77, NULL, '2021-12-22 03:33:28', '2021-12-22 03:33:28'),
(78, NULL, '2021-12-22 03:33:31', '2021-12-22 03:33:31'),
(79, NULL, '2021-12-22 03:33:32', '2021-12-22 03:33:32'),
(80, NULL, '2021-12-22 03:34:32', '2021-12-22 03:34:32'),
(81, NULL, '2021-12-22 03:34:42', '2021-12-22 03:34:42'),
(82, NULL, '2021-12-22 03:34:43', '2021-12-22 03:34:43'),
(83, NULL, '2021-12-22 03:34:45', '2021-12-22 03:34:45'),
(84, NULL, '2021-12-22 03:34:46', '2021-12-22 03:34:46'),
(85, NULL, '2021-12-22 03:35:39', '2021-12-22 03:35:39'),
(86, NULL, '2021-12-22 03:35:52', '2021-12-22 03:35:52'),
(87, NULL, '2021-12-22 03:35:53', '2021-12-22 03:35:53'),
(88, NULL, '2021-12-22 03:35:54', '2021-12-22 03:35:54'),
(89, NULL, '2021-12-22 03:35:56', '2021-12-22 03:35:56'),
(90, NULL, '2021-12-22 03:39:29', '2021-12-22 03:39:29'),
(91, NULL, '2021-12-22 03:39:36', '2021-12-22 03:39:36'),
(92, NULL, '2021-12-22 03:39:38', '2021-12-22 03:39:38'),
(93, NULL, '2021-12-22 03:39:40', '2021-12-22 03:39:40'),
(94, NULL, '2021-12-22 03:39:42', '2021-12-22 03:39:42'),
(95, NULL, '2021-12-22 03:40:36', '2021-12-22 03:40:36'),
(96, NULL, '2021-12-22 03:40:43', '2021-12-22 03:40:43'),
(97, NULL, '2021-12-22 03:40:44', '2021-12-22 03:40:44'),
(98, NULL, '2021-12-22 03:40:46', '2021-12-22 03:40:46'),
(99, NULL, '2021-12-22 03:40:48', '2021-12-22 03:40:48'),
(100, NULL, '2021-12-22 03:41:40', '2021-12-22 03:41:40'),
(101, NULL, '2021-12-22 03:41:50', '2021-12-22 03:41:50'),
(102, NULL, '2021-12-22 03:41:52', '2021-12-22 03:41:52'),
(103, NULL, '2021-12-22 03:41:53', '2021-12-22 03:41:53'),
(104, NULL, '2021-12-22 03:41:55', '2021-12-22 03:41:55'),
(105, NULL, '2021-12-22 03:42:32', '2021-12-22 03:42:32'),
(106, NULL, '2021-12-22 03:42:42', '2021-12-22 03:42:42'),
(107, NULL, '2021-12-22 03:42:44', '2021-12-22 03:42:44'),
(108, NULL, '2021-12-22 03:42:46', '2021-12-22 03:42:46'),
(109, NULL, '2021-12-22 03:42:48', '2021-12-22 03:42:48'),
(110, NULL, '2021-12-22 03:45:41', '2021-12-22 03:45:41'),
(111, NULL, '2021-12-22 03:45:50', '2021-12-22 03:45:50'),
(112, NULL, '2021-12-22 03:45:52', '2021-12-22 03:45:52'),
(113, NULL, '2021-12-22 03:45:53', '2021-12-22 03:45:53'),
(114, NULL, '2021-12-22 03:45:54', '2021-12-22 03:45:54'),
(115, NULL, '2021-12-22 03:47:20', '2021-12-22 03:47:20'),
(116, NULL, '2021-12-22 03:47:31', '2021-12-22 03:47:31'),
(117, NULL, '2021-12-22 03:47:33', '2021-12-22 03:47:33'),
(118, NULL, '2021-12-22 03:47:34', '2021-12-22 03:47:34'),
(119, NULL, '2021-12-22 03:47:36', '2021-12-22 03:47:36'),
(120, NULL, '2021-12-22 03:48:40', '2021-12-22 03:48:40'),
(121, NULL, '2021-12-22 03:48:48', '2021-12-22 03:48:48'),
(122, NULL, '2021-12-22 03:48:49', '2021-12-22 03:48:49'),
(123, NULL, '2021-12-22 03:48:51', '2021-12-22 03:48:51'),
(124, NULL, '2021-12-22 03:48:52', '2021-12-22 03:48:52'),
(125, NULL, '2021-12-22 03:49:49', '2021-12-22 03:49:49'),
(126, NULL, '2021-12-22 03:49:52', '2021-12-22 03:49:52'),
(127, NULL, '2021-12-22 03:49:55', '2021-12-22 03:49:55'),
(128, NULL, '2021-12-22 03:49:56', '2021-12-22 03:49:56'),
(129, NULL, '2021-12-22 03:49:57', '2021-12-22 03:49:57'),
(130, NULL, '2021-12-22 03:51:13', '2021-12-22 03:51:13'),
(131, NULL, '2021-12-22 03:51:17', '2021-12-22 03:51:17'),
(132, NULL, '2021-12-22 03:51:18', '2021-12-22 03:51:18'),
(133, NULL, '2021-12-22 03:51:20', '2021-12-22 03:51:20'),
(134, NULL, '2021-12-22 03:51:22', '2021-12-22 03:51:22'),
(135, NULL, '2021-12-22 03:58:23', '2021-12-22 03:58:23'),
(136, NULL, '2021-12-22 04:00:41', '2021-12-22 04:00:41'),
(137, NULL, '2021-12-22 04:00:45', '2021-12-22 04:00:45'),
(138, NULL, '2021-12-23 02:05:32', '2021-12-23 02:05:32'),
(139, NULL, '2021-12-23 02:05:44', '2021-12-23 02:05:44'),
(140, NULL, '2021-12-23 02:08:47', '2021-12-23 02:08:47'),
(141, NULL, '2021-12-23 02:08:54', '2021-12-23 02:08:54'),
(142, NULL, '2021-12-23 02:32:30', '2021-12-23 02:32:30'),
(143, NULL, '2021-12-25 04:21:23', '2021-12-25 04:21:23'),
(144, NULL, '2021-12-25 04:49:17', '2021-12-25 04:49:17'),
(145, NULL, '2022-01-13 04:20:54', '2022-01-13 04:20:54'),
(146, NULL, '2022-01-13 04:26:05', '2022-01-13 04:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `slug`, `name`, `shop_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'color', 6, NULL, NULL),
(2, 'Size', 'Size', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_product`
--

INSERT INTO `attribute_product` (`id`, `attribute_value_id`, `product_id`, `created_at`, `updated_at`) VALUES
(18, 9, 192, NULL, NULL),
(19, 8, 192, NULL, NULL),
(20, 14, 192, NULL, NULL),
(21, 15, 192, NULL, NULL),
(22, 16, 192, NULL, NULL),
(23, 11, 192, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `meta`, `created_at`, `updated_at`) VALUES
(8, 1, 'Red', '#ce1f6a', '2021-05-09 10:40:56', '2021-05-09 13:23:16'),
(9, 1, 'Blue', '#344fa1', '2021-05-09 10:41:20', '2021-05-09 13:22:35'),
(10, 1, 'White', '#e1e5ea', '2021-05-09 10:41:35', '2021-05-09 13:28:16'),
(11, 2, '1', NULL, '2021-05-09 10:41:43', '2021-05-09 10:41:43'),
(14, 2, '2', NULL, '2021-05-09 12:15:39', '2021-05-09 12:15:39'),
(15, 2, '3', 'M', NULL, NULL),
(16, 2, '4', 'L', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `admin_commission_rate` double DEFAULT NULL,
  `total_earnings` double NOT NULL DEFAULT 0,
  `withdrawn_amount` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_info`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `shop_id`, `admin_commission_rate`, `total_earnings`, `withdrawn_amount`, `current_balance`, `payment_info`, `created_at`, `updated_at`) VALUES
(4, 6, 1, 3415.5, 0, 3415.5, '{\"bank\": \"Bank6\", \"name\": \"Grocery Shop\", \"email\": \"grocery@demo.com\", \"account\": 231321635465465}', '2021-06-27 22:18:49', '2022-01-09 09:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` bigint(20) UNSIGNED DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `image`, `details`, `parent`, `type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FORMAL', 'FORMAL', 'WomenDress', '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/running-icon-26719.png\",\"id\":142}', NULL, 120, 1, '2021-03-08 01:51:31', '2021-03-08 01:51:31', NULL),
(4, 'CASUAL', 'CASUAL', 'WomenDress', '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/running-icon-26719.png\",\"id\":142}', NULL, 120, 1, '2021-03-08 03:24:16', '2021-03-08 03:24:16', NULL),
(7, 'LOAFERS', 'LOAFERS', 'WomenDress', '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/running-icon-26719.png\",\"id\":142}', NULL, 120, 1, '2021-03-08 03:25:56', '2021-03-08 03:25:56', NULL),
(13, 'MOCCASIN', 'MOCCASIN', 'WomenDress', '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/running-icon-26719.png\",\"id\":142}', NULL, 120, 1, '2021-03-08 04:17:41', '2021-03-08 04:17:41', NULL),
(18, 'MULE', 'MULE', 'WomenDress', '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/87\\/running-icon-26719.png\",\"id\":142}', NULL, 120, 1, '2021-03-08 04:21:38', '2021-12-23 02:32:38', NULL),
(120, 'Product', 'product', 'WomenDress', '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/90\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/90\\/running-icon-26719.png\",\"id\":145}', 'Product', NULL, 1, '2022-01-13 04:21:26', '2022-01-13 04:21:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`) VALUES
(953, 192, 1),
(954, 191, 1),
(955, 190, 1),
(956, 189, 1),
(957, 188, 4),
(958, 187, 4),
(959, 186, 4),
(960, 185, 4),
(961, 184, 7),
(962, 183, 7),
(963, 182, 7),
(964, 181, 7),
(965, 20, 7),
(966, 542, 13),
(967, 543, 18),
(968, 543, 13);

-- --------------------------------------------------------

--
-- Table structure for table `category_shop`
--

CREATE TABLE `category_shop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `type` enum('fixed','percentage','free_shipping') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `active_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'PickBazar\\Database\\Models\\Attachment', 56, '8d642fd7-27e0-41dc-b67a-939a5341b3f1', 'default', 'Logo', 'Logo.png', 'image/png', 'public', 'public', 192671, '[]', '{\"thumbnail\":true}', '[]', '[]', 1, '2021-12-21 13:59:27', '2021-12-21 13:59:27'),
(2, 'PickBazar\\Database\\Models\\Attachment', 57, '5b9ad4a8-1ffd-4984-abc9-53f2c7d8b2f7', 'default', 'Logo', 'Logo.png', 'image/png', 'public', 'public', 192671, '[]', '{\"thumbnail\":true}', '[]', '[]', 2, '2021-12-21 14:00:33', '2021-12-21 14:00:34'),
(3, 'PickBazar\\Database\\Models\\Attachment', 58, '41567e7c-598d-45c4-859e-cc95e675e315', 'default', 'Logo', 'Logo.png', 'image/png', 'public', 'public', 192671, '[]', '{\"thumbnail\":true}', '[]', '[]', 3, '2021-12-21 14:01:17', '2021-12-21 14:01:18'),
(4, 'PickBazar\\Database\\Models\\Attachment', 59, 'e1851435-22e4-4b2f-9c25-e268af6c5c01', 'default', 'DSC_1783', 'DSC_1783.jpg', 'image/jpeg', 'public', 'public', 118210, '[]', '{\"thumbnail\":true}', '[]', '[]', 4, '2021-12-21 14:04:00', '2021-12-21 14:04:01'),
(5, 'PickBazar\\Database\\Models\\Attachment', 60, '55b2c122-5bed-4854-834c-b536ed47e07e', 'default', 'DSC_1783', 'DSC_1783.jpg', 'image/jpeg', 'public', 'public', 118210, '[]', '{\"thumbnail\":true}', '[]', '[]', 5, '2021-12-21 14:04:14', '2021-12-21 14:04:15'),
(6, 'PickBazar\\Database\\Models\\Attachment', 61, 'cb22d0fa-083c-44ef-a99a-28ad033391af', 'default', 'DSC_1784', 'DSC_1784.jpg', 'image/jpeg', 'public', 'public', 114449, '[]', '{\"thumbnail\":true}', '[]', '[]', 6, '2021-12-21 14:04:15', '2021-12-21 14:04:16'),
(7, 'PickBazar\\Database\\Models\\Attachment', 62, '3e4699be-a55f-4fba-8068-89073c75f07a', 'default', 'DSC_1785', 'DSC_1785.jpg', 'image/jpeg', 'public', 'public', 158664, '[]', '{\"thumbnail\":true}', '[]', '[]', 7, '2021-12-21 14:04:16', '2021-12-21 14:04:17'),
(8, 'PickBazar\\Database\\Models\\Attachment', 63, '62de9c9e-b01d-48f8-a09e-0773cea847b0', 'default', 'DSC_1786', 'DSC_1786.jpg', 'image/jpeg', 'public', 'public', 102937, '[]', '{\"thumbnail\":true}', '[]', '[]', 8, '2021-12-21 14:04:18', '2021-12-21 14:04:19'),
(9, 'PickBazar\\Database\\Models\\Attachment', 64, '173ee3c0-7d7f-417b-a660-e9d751f5a8f7', 'default', 'DSC_1880', 'DSC_1880.jpg', 'image/jpeg', 'public', 'public', 115588, '[]', '{\"thumbnail\":true}', '[]', '[]', 9, '2021-12-21 14:04:19', '2021-12-21 14:04:20'),
(10, 'PickBazar\\Database\\Models\\Attachment', 65, 'c5704361-aee8-42a2-a433-940fafeb2dcf', 'default', 'logo', 'logo.jpeg', 'image/jpeg', 'public', 'public', 42204, '[]', '{\"thumbnail\":true}', '[]', '[]', 10, '2021-12-22 02:13:47', '2021-12-22 02:13:51'),
(11, 'PickBazar\\Database\\Models\\Attachment', 66, 'dbdf69e3-c11b-4620-b547-5a9c2ac44f5e', 'default', 'logo', 'logo.jpeg', 'image/jpeg', 'public', 'public', 42204, '[]', '{\"thumbnail\":true}', '[]', '[]', 11, '2021-12-22 02:14:26', '2021-12-22 02:14:27'),
(12, 'PickBazar\\Database\\Models\\Attachment', 67, 'e90960bc-2a21-402c-833e-ba96a22b19a6', 'default', 'logo', 'logo.jpeg', 'image/jpeg', 'public', 'public', 42204, '[]', '{\"thumbnail\":true}', '[]', '[]', 12, '2021-12-22 02:37:05', '2021-12-22 02:37:05'),
(13, 'PickBazar\\Database\\Models\\Attachment', 68, '6b3e61d9-72b0-4fa8-8d55-44f3f5016707', 'default', 'footwear-1838767_1920', 'footwear-1838767_1920.jpg', 'image/jpeg', 'public', 'public', 208263, '[]', '{\"thumbnail\":true}', '[]', '[]', 13, '2021-12-22 02:37:24', '2021-12-22 02:37:25'),
(14, 'PickBazar\\Database\\Models\\Attachment', 69, 'a0a1f42d-6784-4939-a29f-89f42a5a2b8a', 'default', 'DSC_1783', 'DSC_1783.jpg', 'image/jpeg', 'public', 'public', 118210, '[]', '{\"thumbnail\":true}', '[]', '[]', 14, '2021-12-22 03:27:25', '2021-12-22 03:27:26'),
(15, 'PickBazar\\Database\\Models\\Attachment', 70, '4824c5cb-c641-4ebd-a8fc-e403b8d001f3', 'default', 'DSC_1783', 'DSC_1783.jpg', 'image/jpeg', 'public', 'public', 118210, '[]', '{\"thumbnail\":true}', '[]', '[]', 15, '2021-12-22 03:27:41', '2021-12-22 03:27:42'),
(16, 'PickBazar\\Database\\Models\\Attachment', 71, 'da602afc-a128-405e-aa97-d84bf327e9db', 'default', 'DSC_1784', 'DSC_1784.jpg', 'image/jpeg', 'public', 'public', 114449, '[]', '{\"thumbnail\":true}', '[]', '[]', 16, '2021-12-22 03:27:42', '2021-12-22 03:27:43'),
(17, 'PickBazar\\Database\\Models\\Attachment', 72, '02b61170-59c3-4110-a156-ec40be39e95f', 'default', 'DSC_1785', 'DSC_1785.jpg', 'image/jpeg', 'public', 'public', 158664, '[]', '{\"thumbnail\":true}', '[]', '[]', 17, '2021-12-22 03:27:44', '2021-12-22 03:27:45'),
(18, 'PickBazar\\Database\\Models\\Attachment', 73, '385ed1ac-c506-4c89-9a37-746ad5be2b78', 'default', 'DSC_1786', 'DSC_1786.jpg', 'image/jpeg', 'public', 'public', 102937, '[]', '{\"thumbnail\":true}', '[]', '[]', 18, '2021-12-22 03:27:45', '2021-12-22 03:27:47'),
(19, 'PickBazar\\Database\\Models\\Attachment', 74, '65db242d-718b-45bc-a0d1-e5ee4f496ace', 'default', 'DSC_1880', 'DSC_1880.jpg', 'image/jpeg', 'public', 'public', 115588, '[]', '{\"thumbnail\":true}', '[]', '[]', 19, '2021-12-22 03:27:47', '2021-12-22 03:27:48'),
(20, 'PickBazar\\Database\\Models\\Attachment', 75, '96a383fe-b597-4464-a09f-047a713777c9', 'default', 'DSC_1992', 'DSC_1992.jpg', 'image/jpeg', 'public', 'public', 147684, '[]', '{\"thumbnail\":true}', '[]', '[]', 20, '2021-12-22 03:32:56', '2021-12-22 03:32:57'),
(21, 'PickBazar\\Database\\Models\\Attachment', 76, 'aaca643e-d365-4945-b1af-c50f99b54ae5', 'default', 'DSC_1936', 'DSC_1936.jpg', 'image/jpeg', 'public', 'public', 131033, '[]', '{\"thumbnail\":true}', '[]', '[]', 21, '2021-12-22 03:33:27', '2021-12-22 03:33:27'),
(22, 'PickBazar\\Database\\Models\\Attachment', 77, '3350223d-9bad-4535-88e8-57bb0957fb52', 'default', 'DSC_1937', 'DSC_1937.jpg', 'image/jpeg', 'public', 'public', 127650, '[]', '{\"thumbnail\":true}', '[]', '[]', 22, '2021-12-22 03:33:29', '2021-12-22 03:33:31'),
(23, 'PickBazar\\Database\\Models\\Attachment', 78, '0b74fe5c-a4e9-401a-ad18-10fa057e6427', 'default', 'DSC_1938', 'DSC_1938.jpg', 'image/jpeg', 'public', 'public', 115594, '[]', '{\"thumbnail\":true}', '[]', '[]', 23, '2021-12-22 03:33:31', '2021-12-22 03:33:32'),
(24, 'PickBazar\\Database\\Models\\Attachment', 79, 'e3c64367-6d10-41a1-acac-70565a5e40c0', 'default', 'DSC_1939', 'DSC_1939.jpg', 'image/jpeg', 'public', 'public', 98398, '[]', '{\"thumbnail\":true}', '[]', '[]', 24, '2021-12-22 03:33:32', '2021-12-22 03:33:33'),
(25, 'PickBazar\\Database\\Models\\Attachment', 80, '2978f07a-f40a-4799-b72f-cfdac0d8f67e', 'default', 'DSC_1880', 'DSC_1880.jpg', 'image/jpeg', 'public', 'public', 115588, '[]', '{\"thumbnail\":true}', '[]', '[]', 25, '2021-12-22 03:34:32', '2021-12-22 03:34:33'),
(26, 'PickBazar\\Database\\Models\\Attachment', 81, 'fdd578f1-fd51-4c8c-82d5-e9a07c1c5e7c', 'default', 'DSC_1880', 'DSC_1880.jpg', 'image/jpeg', 'public', 'public', 115588, '[]', '{\"thumbnail\":true}', '[]', '[]', 26, '2021-12-22 03:34:42', '2021-12-22 03:34:43'),
(27, 'PickBazar\\Database\\Models\\Attachment', 82, 'cf7abb64-bd65-4aff-829b-592d14480b77', 'default', 'DSC_1881', 'DSC_1881.jpg', 'image/jpeg', 'public', 'public', 115743, '[]', '{\"thumbnail\":true}', '[]', '[]', 27, '2021-12-22 03:34:44', '2021-12-22 03:34:45'),
(28, 'PickBazar\\Database\\Models\\Attachment', 83, '904eb787-e50f-401f-a534-c58fa7cd74dd', 'default', 'DSC_1882', 'DSC_1882.jpg', 'image/jpeg', 'public', 'public', 92082, '[]', '{\"thumbnail\":true}', '[]', '[]', 28, '2021-12-22 03:34:45', '2021-12-22 03:34:46'),
(29, 'PickBazar\\Database\\Models\\Attachment', 84, '8f646669-bf93-4731-a5c0-a256b28854b5', 'default', 'DSC_1883', 'DSC_1883.jpg', 'image/jpeg', 'public', 'public', 103441, '[]', '{\"thumbnail\":true}', '[]', '[]', 29, '2021-12-22 03:34:46', '2021-12-22 03:34:47'),
(30, 'PickBazar\\Database\\Models\\Attachment', 85, 'd921eeec-b25f-4da7-a21a-c95a612cf6af', 'default', 'DSC_1992', 'DSC_1992.jpg', 'image/jpeg', 'public', 'public', 147684, '[]', '{\"thumbnail\":true}', '[]', '[]', 30, '2021-12-22 03:35:39', '2021-12-22 03:35:40'),
(31, 'PickBazar\\Database\\Models\\Attachment', 86, 'b8710087-2b3d-4afb-aee7-d52ec6fe822b', 'default', 'DSC_1992', 'DSC_1992.jpg', 'image/jpeg', 'public', 'public', 147684, '[]', '{\"thumbnail\":true}', '[]', '[]', 31, '2021-12-22 03:35:52', '2021-12-22 03:35:53'),
(32, 'PickBazar\\Database\\Models\\Attachment', 87, '1bb45692-4f18-4906-a213-63169efd2d22', 'default', 'DSC_1993', 'DSC_1993.jpg', 'image/jpeg', 'public', 'public', 146895, '[]', '{\"thumbnail\":true}', '[]', '[]', 32, '2021-12-22 03:35:53', '2021-12-22 03:35:54'),
(33, 'PickBazar\\Database\\Models\\Attachment', 88, 'e2649537-1751-4b7c-9027-395ce2d3df19', 'default', 'DSC_1994', 'DSC_1994.jpg', 'image/jpeg', 'public', 'public', 108286, '[]', '{\"thumbnail\":true}', '[]', '[]', 33, '2021-12-22 03:35:54', '2021-12-22 03:35:56'),
(34, 'PickBazar\\Database\\Models\\Attachment', 89, '30a9f0bd-f654-4318-bb2e-f1046a94fbe7', 'default', 'DSC_1995', 'DSC_1995.jpg', 'image/jpeg', 'public', 'public', 106030, '[]', '{\"thumbnail\":true}', '[]', '[]', 34, '2021-12-22 03:35:57', '2021-12-22 03:35:57'),
(35, 'PickBazar\\Database\\Models\\Attachment', 90, '11102cf8-d129-4a58-a161-d7da8af3a0d2', 'default', 'DSC_1799', 'DSC_1799.jpg', 'image/jpeg', 'public', 'public', 126118, '[]', '{\"thumbnail\":true}', '[]', '[]', 35, '2021-12-22 03:39:30', '2021-12-22 03:39:30'),
(36, 'PickBazar\\Database\\Models\\Attachment', 91, '23b38d6c-8646-495a-8974-7d9e97b820f2', 'default', 'DSC_1799', 'DSC_1799.jpg', 'image/jpeg', 'public', 'public', 126118, '[]', '{\"thumbnail\":true}', '[]', '[]', 36, '2021-12-22 03:39:36', '2021-12-22 03:39:37'),
(37, 'PickBazar\\Database\\Models\\Attachment', 92, '81cbcc41-e7a6-4b9b-8523-603a01a50ee6', 'default', 'DSC_1800', 'DSC_1800.jpg', 'image/jpeg', 'public', 'public', 120846, '[]', '{\"thumbnail\":true}', '[]', '[]', 37, '2021-12-22 03:39:38', '2021-12-22 03:39:39'),
(38, 'PickBazar\\Database\\Models\\Attachment', 93, '212d3605-d935-47a1-944a-cbf4ad383aac', 'default', 'DSC_1801', 'DSC_1801.jpg', 'image/jpeg', 'public', 'public', 112038, '[]', '{\"thumbnail\":true}', '[]', '[]', 38, '2021-12-22 03:39:40', '2021-12-22 03:39:42'),
(39, 'PickBazar\\Database\\Models\\Attachment', 94, '0d09eca1-5578-4328-824a-266658459272', 'default', 'DSC_1802', 'DSC_1802.jpg', 'image/jpeg', 'public', 'public', 104996, '[]', '{\"thumbnail\":true}', '[]', '[]', 39, '2021-12-22 03:39:42', '2021-12-22 03:39:43'),
(40, 'PickBazar\\Database\\Models\\Attachment', 95, '0e3ebbf8-4ef7-4225-b68d-1bd2690fd676', 'default', 'DSC_1960', 'DSC_1960.jpg', 'image/jpeg', 'public', 'public', 110336, '[]', '{\"thumbnail\":true}', '[]', '[]', 40, '2021-12-22 03:40:36', '2021-12-22 03:40:37'),
(41, 'PickBazar\\Database\\Models\\Attachment', 96, '07766fd7-ffd1-4864-8158-ff39b863bfdf', 'default', 'DSC_1960', 'DSC_1960.jpg', 'image/jpeg', 'public', 'public', 110336, '[]', '{\"thumbnail\":true}', '[]', '[]', 41, '2021-12-22 03:40:43', '2021-12-22 03:40:44'),
(42, 'PickBazar\\Database\\Models\\Attachment', 97, '4e14dd4e-61fd-4b69-b62a-4658f9e31fdf', 'default', 'DSC_1961', 'DSC_1961.jpg', 'image/jpeg', 'public', 'public', 104766, '[]', '{\"thumbnail\":true}', '[]', '[]', 42, '2021-12-22 03:40:45', '2021-12-22 03:40:45'),
(43, 'PickBazar\\Database\\Models\\Attachment', 98, '7ba6aee8-caa9-49a2-b9f1-38c2bdd9ed0c', 'default', 'DSC_1962', 'DSC_1962.jpg', 'image/jpeg', 'public', 'public', 121846, '[]', '{\"thumbnail\":true}', '[]', '[]', 43, '2021-12-22 03:40:46', '2021-12-22 03:40:47'),
(44, 'PickBazar\\Database\\Models\\Attachment', 99, '2cea5a81-f61f-48ac-bf5a-349cae9d3fa5', 'default', 'DSC_1963', 'DSC_1963.jpg', 'image/jpeg', 'public', 'public', 97929, '[]', '{\"thumbnail\":true}', '[]', '[]', 44, '2021-12-22 03:40:49', '2021-12-22 03:40:49'),
(45, 'PickBazar\\Database\\Models\\Attachment', 100, '5b348609-8672-4235-b1ce-5a2f50f3e427', 'default', 'DSC_9264', 'DSC_9264.jpg', 'image/jpeg', 'public', 'public', 159243, '[]', '{\"thumbnail\":true}', '[]', '[]', 45, '2021-12-22 03:41:40', '2021-12-22 03:41:41'),
(46, 'PickBazar\\Database\\Models\\Attachment', 101, 'af0a58cd-f339-4776-a0fd-978c6395c09b', 'default', 'DSC_9264', 'DSC_9264.jpg', 'image/jpeg', 'public', 'public', 159243, '[]', '{\"thumbnail\":true}', '[]', '[]', 46, '2021-12-22 03:41:50', '2021-12-22 03:41:51'),
(47, 'PickBazar\\Database\\Models\\Attachment', 102, 'cdb7363d-5dfd-4c81-af72-0b910f75a4ef', 'default', 'DSC_9265', 'DSC_9265.jpg', 'image/jpeg', 'public', 'public', 157335, '[]', '{\"thumbnail\":true}', '[]', '[]', 47, '2021-12-22 03:41:52', '2021-12-22 03:41:53'),
(48, 'PickBazar\\Database\\Models\\Attachment', 103, '9fbcf749-60a5-4507-b3f4-780ffec15e9c', 'default', 'DSC_9266', 'DSC_9266.jpg', 'image/jpeg', 'public', 'public', 119945, '[]', '{\"thumbnail\":true}', '[]', '[]', 48, '2021-12-22 03:41:54', '2021-12-22 03:41:54'),
(49, 'PickBazar\\Database\\Models\\Attachment', 104, '18abdae3-ba30-43b8-8e03-9b88036c7316', 'default', 'DSC_9267', 'DSC_9267.jpg', 'image/jpeg', 'public', 'public', 115922, '[]', '{\"thumbnail\":true}', '[]', '[]', 49, '2021-12-22 03:41:55', '2021-12-22 03:41:55'),
(50, 'PickBazar\\Database\\Models\\Attachment', 105, '4104237d-2d8a-4159-aa31-b96adbf19948', 'default', 'DSC_9269', 'DSC_9269.jpg', 'image/jpeg', 'public', 'public', 158455, '[]', '{\"thumbnail\":true}', '[]', '[]', 50, '2021-12-22 03:42:33', '2021-12-22 03:42:34'),
(51, 'PickBazar\\Database\\Models\\Attachment', 106, 'd046f118-1355-477c-95a6-c52d3305f5c8', 'default', 'DSC_9269', 'DSC_9269.jpg', 'image/jpeg', 'public', 'public', 158455, '[]', '{\"thumbnail\":true}', '[]', '[]', 51, '2021-12-22 03:42:42', '2021-12-22 03:42:43'),
(52, 'PickBazar\\Database\\Models\\Attachment', 107, '10ce376c-1cbb-4ac8-a9fc-6c28226485bc', 'default', 'DSC_9270', 'DSC_9270.jpg', 'image/jpeg', 'public', 'public', 161947, '[]', '{\"thumbnail\":true}', '[]', '[]', 52, '2021-12-22 03:42:44', '2021-12-22 03:42:46'),
(53, 'PickBazar\\Database\\Models\\Attachment', 108, '15038a21-abfa-42a5-a133-19419cfc0728', 'default', 'DSC_9271', 'DSC_9271.jpg', 'image/jpeg', 'public', 'public', 121892, '[]', '{\"thumbnail\":true}', '[]', '[]', 53, '2021-12-22 03:42:46', '2021-12-22 03:42:47'),
(54, 'PickBazar\\Database\\Models\\Attachment', 109, 'f96722e3-7d8e-4d63-99d3-7f247b6374a6', 'default', 'DSC_9272', 'DSC_9272.jpg', 'image/jpeg', 'public', 'public', 144353, '[]', '{\"thumbnail\":true}', '[]', '[]', 54, '2021-12-22 03:42:48', '2021-12-22 03:42:48'),
(55, 'PickBazar\\Database\\Models\\Attachment', 110, '4eb52748-41f3-431b-9bf7-d368d35cf305', 'default', 'DSC_1868', 'DSC_1868.jpg', 'image/jpeg', 'public', 'public', 111400, '[]', '{\"thumbnail\":true}', '[]', '[]', 55, '2021-12-22 03:45:41', '2021-12-22 03:45:42'),
(56, 'PickBazar\\Database\\Models\\Attachment', 111, '85b11cd0-5779-4564-948b-350fc301db38', 'default', 'DSC_1868', 'DSC_1868.jpg', 'image/jpeg', 'public', 'public', 111400, '[]', '{\"thumbnail\":true}', '[]', '[]', 56, '2021-12-22 03:45:50', '2021-12-22 03:45:51'),
(57, 'PickBazar\\Database\\Models\\Attachment', 112, 'b61266ab-e88e-4a04-9a64-bc64b1e41ae5', 'default', 'DSC_1869 (1)', 'DSC_1869-(1).jpg', 'image/jpeg', 'public', 'public', 121519, '[]', '{\"thumbnail\":true}', '[]', '[]', 57, '2021-12-22 03:45:52', '2021-12-22 03:45:53'),
(58, 'PickBazar\\Database\\Models\\Attachment', 113, 'c7790c5b-03f9-4886-8dbe-80ee93bfbe6d', 'default', 'DSC_1870', 'DSC_1870.jpg', 'image/jpeg', 'public', 'public', 127507, '[]', '{\"thumbnail\":true}', '[]', '[]', 58, '2021-12-22 03:45:53', '2021-12-22 03:45:54'),
(59, 'PickBazar\\Database\\Models\\Attachment', 114, 'baa25be0-720e-439f-931b-f7a032988068', 'default', 'DSC_1871 (1)', 'DSC_1871-(1).jpg', 'image/jpeg', 'public', 'public', 105856, '[]', '{\"thumbnail\":true}', '[]', '[]', 59, '2021-12-22 03:45:54', '2021-12-22 03:45:55'),
(60, 'PickBazar\\Database\\Models\\Attachment', 115, '64a56afe-bf83-4ec5-b50d-6ef562d71e06', 'default', 'DSC_1929', 'DSC_1929.jpg', 'image/jpeg', 'public', 'public', 126783, '[]', '{\"thumbnail\":true}', '[]', '[]', 60, '2021-12-22 03:47:20', '2021-12-22 03:47:21'),
(61, 'PickBazar\\Database\\Models\\Attachment', 116, '150e4e2f-3c25-45e0-882c-e8e60af43f79', 'default', 'DSC_1928', 'DSC_1928.jpg', 'image/jpeg', 'public', 'public', 135781, '[]', '{\"thumbnail\":true}', '[]', '[]', 61, '2021-12-22 03:47:31', '2021-12-22 03:47:32'),
(62, 'PickBazar\\Database\\Models\\Attachment', 117, '6fe1600c-fdf3-4c3b-8651-fef58e2d3896', 'default', 'DSC_1929', 'DSC_1929.jpg', 'image/jpeg', 'public', 'public', 126783, '[]', '{\"thumbnail\":true}', '[]', '[]', 62, '2021-12-22 03:47:33', '2021-12-22 03:47:33'),
(63, 'PickBazar\\Database\\Models\\Attachment', 118, '75c6599d-88cd-4119-8019-9e98a671f7b1', 'default', 'DSC_1930', 'DSC_1930.jpg', 'image/jpeg', 'public', 'public', 138454, '[]', '{\"thumbnail\":true}', '[]', '[]', 63, '2021-12-22 03:47:35', '2021-12-22 03:47:36'),
(64, 'PickBazar\\Database\\Models\\Attachment', 119, 'cf2c82f1-8fe3-4355-90cb-e0237b89bf47', 'default', 'DSC_1931', 'DSC_1931.jpg', 'image/jpeg', 'public', 'public', 115366, '[]', '{\"thumbnail\":true}', '[]', '[]', 64, '2021-12-22 03:47:36', '2021-12-22 03:47:37'),
(65, 'PickBazar\\Database\\Models\\Attachment', 120, 'e4349170-fe8b-47ac-ae2d-44f5e1958d05', 'default', 'DSC_1933', 'DSC_1933.jpg', 'image/jpeg', 'public', 'public', 118738, '[]', '{\"thumbnail\":true}', '[]', '[]', 65, '2021-12-22 03:48:40', '2021-12-22 03:48:41'),
(66, 'PickBazar\\Database\\Models\\Attachment', 121, 'd3c75449-8a39-44df-9611-f2c53c81535f', 'default', 'DSC_1932', 'DSC_1932.jpg', 'image/jpeg', 'public', 'public', 138449, '[]', '{\"thumbnail\":true}', '[]', '[]', 66, '2021-12-22 03:48:48', '2021-12-22 03:48:49'),
(67, 'PickBazar\\Database\\Models\\Attachment', 122, 'f63e5178-9c7a-4efc-b7dd-8f7bd843689f', 'default', 'DSC_1933', 'DSC_1933.jpg', 'image/jpeg', 'public', 'public', 118738, '[]', '{\"thumbnail\":true}', '[]', '[]', 67, '2021-12-22 03:48:49', '2021-12-22 03:48:50'),
(68, 'PickBazar\\Database\\Models\\Attachment', 123, 'c387729e-e073-4bc6-914c-897dcada616a', 'default', 'DSC_1934', 'DSC_1934.jpg', 'image/jpeg', 'public', 'public', 138813, '[]', '{\"thumbnail\":true}', '[]', '[]', 68, '2021-12-22 03:48:51', '2021-12-22 03:48:52'),
(69, 'PickBazar\\Database\\Models\\Attachment', 124, 'bfddd367-e678-4186-9d60-5f369d8275b1', 'default', 'DSC_1935', 'DSC_1935.jpg', 'image/jpeg', 'public', 'public', 117147, '[]', '{\"thumbnail\":true}', '[]', '[]', 69, '2021-12-22 03:48:52', '2021-12-22 03:48:53'),
(70, 'PickBazar\\Database\\Models\\Attachment', 125, 'fb6dc9a0-c0d4-4b14-959b-4cbeed68251a', 'default', 'DSC_9244', 'DSC_9244.jpg', 'image/jpeg', 'public', 'public', 124616, '[]', '{\"thumbnail\":true}', '[]', '[]', 70, '2021-12-22 03:49:49', '2021-12-22 03:49:51'),
(71, 'PickBazar\\Database\\Models\\Attachment', 126, '3a7df17a-ad52-42dd-a03e-40c6ba2771f0', 'default', 'DSC_9244', 'DSC_9244.jpg', 'image/jpeg', 'public', 'public', 124616, '[]', '{\"thumbnail\":true}', '[]', '[]', 71, '2021-12-22 03:49:53', '2021-12-22 03:49:54'),
(72, 'PickBazar\\Database\\Models\\Attachment', 127, 'fdf36a4b-8bc5-46a2-94be-9cf02fca287a', 'default', 'DSC_9245', 'DSC_9245.jpg', 'image/jpeg', 'public', 'public', 117902, '[]', '{\"thumbnail\":true}', '[]', '[]', 72, '2021-12-22 03:49:55', '2021-12-22 03:49:56'),
(73, 'PickBazar\\Database\\Models\\Attachment', 128, '9f33d130-5c52-48ee-8410-a0ba5402ea10', 'default', 'DSC_9246', 'DSC_9246.jpg', 'image/jpeg', 'public', 'public', 129481, '[]', '{\"thumbnail\":true}', '[]', '[]', 73, '2021-12-22 03:49:56', '2021-12-22 03:49:57'),
(74, 'PickBazar\\Database\\Models\\Attachment', 129, '275cd39e-0ab6-4dfe-a782-c373f9b99517', 'default', 'DSC_9247', 'DSC_9247.jpg', 'image/jpeg', 'public', 'public', 98645, '[]', '{\"thumbnail\":true}', '[]', '[]', 74, '2021-12-22 03:49:57', '2021-12-22 03:49:58'),
(75, 'PickBazar\\Database\\Models\\Attachment', 130, 'e3ca5ce0-1a83-494f-b203-1fadc0631aa3', 'default', 'DSC_9249', 'DSC_9249.jpg', 'image/jpeg', 'public', 'public', 126668, '[]', '{\"thumbnail\":true}', '[]', '[]', 75, '2021-12-22 03:51:13', '2021-12-22 03:51:14'),
(76, 'PickBazar\\Database\\Models\\Attachment', 131, '38b165d7-2b4a-4366-98c6-6409a22aa4f0', 'default', 'DSC_9248', 'DSC_9248.jpg', 'image/jpeg', 'public', 'public', 134276, '[]', '{\"thumbnail\":true}', '[]', '[]', 76, '2021-12-22 03:51:17', '2021-12-22 03:51:18'),
(77, 'PickBazar\\Database\\Models\\Attachment', 132, '9cd3dcb2-cf5e-49bf-9950-30457d5b935b', 'default', 'DSC_9249', 'DSC_9249.jpg', 'image/jpeg', 'public', 'public', 126668, '[]', '{\"thumbnail\":true}', '[]', '[]', 77, '2021-12-22 03:51:19', '2021-12-22 03:51:19'),
(78, 'PickBazar\\Database\\Models\\Attachment', 133, 'ae8017de-a037-4fd6-8bf4-c96177c7c74a', 'default', 'DSC_9250', 'DSC_9250.jpg', 'image/jpeg', 'public', 'public', 135171, '[]', '{\"thumbnail\":true}', '[]', '[]', 78, '2021-12-22 03:51:20', '2021-12-22 03:51:22'),
(79, 'PickBazar\\Database\\Models\\Attachment', 134, '9073d652-80c6-4ff1-b42d-eb5a6e5ec77a', 'default', 'DSC_9251', 'DSC_9251.jpg', 'image/jpeg', 'public', 'public', 123308, '[]', '{\"thumbnail\":true}', '[]', '[]', 79, '2021-12-22 03:51:22', '2021-12-22 03:51:26'),
(80, 'PickBazar\\Database\\Models\\Attachment', 135, 'e8533fd1-2955-4e98-96d5-701bd7629228', 'default', 'logo', 'logo.jpeg', 'image/jpeg', 'public', 'public', 42204, '[]', '{\"thumbnail\":true}', '[]', '[]', 80, '2021-12-22 03:58:23', '2021-12-22 03:58:24'),
(81, 'PickBazar\\Database\\Models\\Attachment', 136, 'eb6ad5f3-f3ea-4928-bf92-d49bfd19cacf', 'default', 'logo', 'logo.jpeg', 'image/jpeg', 'public', 'public', 42204, '[]', '{\"thumbnail\":true}', '[]', '[]', 81, '2021-12-22 04:00:41', '2021-12-22 04:00:41'),
(82, 'PickBazar\\Database\\Models\\Attachment', 137, 'e54942ca-e5d0-4c04-af40-b6e68723efba', 'default', 'logo2', 'logo2.png', 'image/png', 'public', 'public', 32822, '[]', '{\"thumbnail\":true}', '[]', '[]', 82, '2021-12-22 04:00:45', '2021-12-22 04:00:45'),
(83, 'PickBazar\\Database\\Models\\Attachment', 138, 'd6af9d5d-f8b3-49c9-a451-f711d0b25fa5', 'default', 'running-icon-26719', 'running-icon-26719.png', 'image/png', 'public', 'public', 26047, '[]', '{\"thumbnail\":true}', '[]', '[]', 83, '2021-12-23 02:05:33', '2021-12-23 02:05:33'),
(84, 'PickBazar\\Database\\Models\\Attachment', 139, 'f268a38b-ca2e-49b5-b11e-def00c397fa0', 'default', 'footwear-1838767_1920', 'footwear-1838767_1920.jpg', 'image/jpeg', 'public', 'public', 208263, '[]', '{\"thumbnail\":true}', '[]', '[]', 84, '2021-12-23 02:05:44', '2021-12-23 02:05:45'),
(85, 'PickBazar\\Database\\Models\\Attachment', 140, 'f4c18f6d-8c2f-4f26-88b9-c64d6f9368c9', 'default', 'edge-3528319_1920', 'edge-3528319_1920.jpg', 'image/jpeg', 'public', 'public', 307365, '[]', '{\"thumbnail\":true}', '[]', '[]', 85, '2021-12-23 02:08:47', '2021-12-23 02:08:48'),
(86, 'PickBazar\\Database\\Models\\Attachment', 141, 'bb105cca-6121-441e-94e3-d60dffde1434', 'default', 'shoe-icon-11003-Windows', 'shoe-icon-11003-Windows.ico', 'image/vnd.microsoft.icon', 'public', 'public', 16958, '[]', '[]', '[]', '[]', 86, '2021-12-23 02:08:54', '2021-12-23 02:08:54'),
(87, 'PickBazar\\Database\\Models\\Attachment', 142, '54e1d8e4-d95f-48fd-b34e-0acae883c201', 'default', 'running-icon-26719', 'running-icon-26719.png', 'image/png', 'public', 'public', 26047, '[]', '{\"thumbnail\":true}', '[]', '[]', 87, '2021-12-23 02:32:30', '2021-12-23 02:32:31'),
(88, 'PickBazar\\Database\\Models\\Attachment', 143, 'db6dd77e-1090-439a-8373-386bae0bbf81', 'default', 'logo-removebg-preview', 'logo-removebg-preview.png', 'image/png', 'public', 'public', 39763, '[]', '{\"thumbnail\":true}', '[]', '[]', 88, '2021-12-25 04:21:27', '2021-12-25 04:21:33'),
(89, 'PickBazar\\Database\\Models\\Attachment', 144, '05281c67-fe0a-4a94-917c-8081afc00431', 'default', 'ddddd_20201129155325', 'ddddd_20201129155325.jpg', 'image/jpeg', 'public', 'public', 96130, '[]', '{\"thumbnail\":true}', '[]', '[]', 89, '2021-12-25 04:49:18', '2021-12-25 04:49:20'),
(90, 'PickBazar\\Database\\Models\\Attachment', 145, 'f053b1bb-4c38-413c-95a6-451cab891e41', 'default', 'running-icon-26719', 'running-icon-26719.png', 'image/png', 'public', 'public', 26047, '[]', '{\"thumbnail\":true}', '[]', '[]', 90, '2022-01-13 04:20:57', '2022-01-13 04:21:02'),
(91, 'PickBazar\\Database\\Models\\Attachment', 146, '16a4f8bc-5d76-4df2-a274-e238f976d8be', 'default', 'running-icon-26719', 'running-icon-26719.png', 'image/png', 'public', 'public', 26047, '[]', '{\"thumbnail\":true}', '[]', '[]', 91, '2022-01-13 04:26:06', '2022-01-13 04:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_04_17_194830_create_permission_tables', 1),
(6, '2020_06_02_051901_create_pickbazar_tables', 1),
(7, '2020_10_26_163529_create_media_table', 1),
(8, '2021_04_17_051901_create_new_pickbazar_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'PickBazar\\Database\\Models\\User', 24),
(2, 'PickBazar\\Database\\Models\\User', 1),
(2, 'PickBazar\\Database\\Models\\User', 22),
(2, 'PickBazar\\Database\\Models\\User', 25),
(2, 'PickBazar\\Database\\Models\\User', 26),
(3, 'PickBazar\\Database\\Models\\User', 1),
(3, 'PickBazar\\Database\\Models\\User', 22);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'PickBazar\\Database\\Models\\User', 24);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `sales_tax` double DEFAULT NULL,
  `paid_total` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`shipping_address`)),
  `billing_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`billing_address`)),
  `logistics_provider` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_fee` double DEFAULT NULL,
  `delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_number`, `customer_id`, `customer_contact`, `status`, `amount`, `sales_tax`, `paid_total`, `total`, `coupon_id`, `parent_id`, `shop_id`, `discount`, `payment_id`, `payment_gateway`, `shipping_address`, `billing_address`, `logistics_provider`, `delivery_fee`, `delivery_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ycoUDDXlTUOD', 26, '4(756) 745 75 67', 1, 75, 0, 75, 75, NULL, NULL, NULL, 0, NULL, 'cod', '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', '{\"id\":1,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, 0, '90 min express delivery', NULL, '2021-12-23 03:24:21', '2021-12-23 03:24:21'),
(2, '4UB6Yj1eb2HG', 26, '4(756) 745 75 67', 1, 75, 0, 75, 75, NULL, 1, 6, 0, NULL, NULL, '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, NULL, 0, '90 min express delivery', NULL, '2021-12-23 03:24:21', '2021-12-23 03:24:21'),
(3, 'sttyCsoGPANv', 26, '4(756) 745 75 67', 1, 75, 0, 75, 75, NULL, NULL, NULL, 0, NULL, 'cod', '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', '{\"id\":1,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, 0, '90 min express delivery', NULL, '2021-12-23 03:25:51', '2021-12-23 03:25:51'),
(4, 'IeRhzZKm45MU', 26, '4(756) 745 75 67', 1, 75, 0, 75, 75, NULL, 3, 6, 0, NULL, NULL, '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, NULL, 0, '90 min express delivery', NULL, '2021-12-23 03:25:51', '2021-12-23 03:25:51'),
(5, '3N2WdzfYoRrY', 26, '4(756) 745 75 67', 7, 75, 0, 75, 75, NULL, NULL, NULL, 0, NULL, 'cod', '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', '{\"id\":1,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, 0, '90 min express delivery', NULL, '2021-12-23 03:30:18', '2021-12-23 03:36:11'),
(6, 'cWQXJk1nKN8F', 26, '4(756) 745 75 67', 7, 75, 0, 75, 75, NULL, 5, 6, 0, NULL, NULL, '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, NULL, 0, '90 min express delivery', NULL, '2021-12-23 03:30:19', '2021-12-23 03:36:11'),
(7, 'cadvRqgGkV3v', 26, '9(686) 876 86 78', 2, 525, 0, 525, 525, NULL, NULL, NULL, 0, NULL, 'cod', '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', '{\"id\":1,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, 0, '90 min express delivery', NULL, '2021-12-25 04:40:43', '2021-12-25 04:43:40'),
(8, 'JyIKrglSkJry', 26, '9(686) 876 86 78', 2, 525, 0, 525, 525, NULL, 7, 6, 0, NULL, NULL, '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, NULL, 0, '90 min express delivery', NULL, '2021-12-25 04:40:44', '2021-12-25 04:43:40'),
(9, 'q86oJHXALxxT', 26, '8(931) 844 0', 1, 1650, 0, 1650, 1650, NULL, NULL, NULL, 0, NULL, 'cod', '{\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"UP\",\"zip\":\"232323\",\"street_address\":\"Lucknow\"}', '{\"id\":1,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, 0, '90 min express delivery', NULL, '2022-01-08 07:42:24', '2022-01-08 07:42:24'),
(10, 'CxbyzGHeql5e', 26, '8(931) 844 0', 1, 1650, 0, 1650, 1650, NULL, 9, 6, 0, NULL, NULL, '{\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"UP\",\"zip\":\"232323\",\"street_address\":\"Lucknow\"}', NULL, NULL, 0, '90 min express delivery', NULL, '2022-01-08 07:42:25', '2022-01-08 07:42:25'),
(11, 'rUqWc9WsVjPa', 26, '8(931) 833 66 0', 2, 1200, 0, 1200, 1200, NULL, NULL, NULL, 0, NULL, 'cod', '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', '{\"id\":1,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, 0, '90 min express delivery', NULL, '2022-01-09 09:36:08', '2022-01-09 09:38:43'),
(12, 'UTOkovLewlPL', 26, '8(931) 833 66 0', 2, 1200, 0, 1200, 1200, NULL, 11, 6, 0, NULL, NULL, '{\"id\":2,\"country\":\"INR\",\"city\":\"Lucknow\",\"state\":\"Uttar pradesh\",\"zip\":\"273413\",\"street_address\":\"INR\"}', NULL, NULL, 0, '90 min express delivery', NULL, '2022-01-09 09:36:08', '2022-01-09 09:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `variation_option_id`, `order_quantity`, `unit_price`, `subtotal`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 182, NULL, '1', '75', '75', NULL, '2021-12-23 03:24:21', '2021-12-23 03:24:21'),
(2, 2, 182, NULL, '1', '75', '75', NULL, '2021-12-23 03:24:21', '2021-12-23 03:24:21'),
(3, 3, 182, NULL, '1', '75', '75', NULL, '2021-12-23 03:25:51', '2021-12-23 03:25:51'),
(4, 4, 182, NULL, '1', '75', '75', NULL, '2021-12-23 03:25:52', '2021-12-23 03:25:52'),
(5, 5, 182, NULL, '1', '75', '75', NULL, '2021-12-23 03:30:18', '2021-12-23 03:30:18'),
(6, 6, 182, NULL, '1', '75', '75', NULL, '2021-12-23 03:30:19', '2021-12-23 03:30:19'),
(7, 7, 181, NULL, '1', '450', '450', NULL, '2021-12-25 04:40:43', '2021-12-25 04:40:43'),
(8, 7, 182, NULL, '1', '75', '75', NULL, '2021-12-25 04:40:43', '2021-12-25 04:40:43'),
(9, 8, 181, NULL, '1', '450', '450', NULL, '2021-12-25 04:40:44', '2021-12-25 04:40:44'),
(10, 8, 182, NULL, '1', '75', '75', NULL, '2021-12-25 04:40:44', '2021-12-25 04:40:44'),
(11, 9, 20, NULL, '1', '1200', '1200', NULL, '2022-01-08 07:42:25', '2022-01-08 07:42:25'),
(12, 9, 181, NULL, '1', '450', '450', NULL, '2022-01-08 07:42:25', '2022-01-08 07:42:25'),
(13, 10, 20, NULL, '1', '1200', '1200', NULL, '2022-01-08 07:42:25', '2022-01-08 07:42:25'),
(14, 10, 181, NULL, '1', '450', '450', NULL, '2022-01-08 07:42:25', '2022-01-08 07:42:25'),
(15, 11, 20, NULL, '1', '1200', '1200', NULL, '2022-01-09 09:36:08', '2022-01-09 09:36:08'),
(16, 12, 20, NULL, '1', '1200', '1200', NULL, '2022-01-09 09:36:08', '2022-01-09 09:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` int(11) NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `serial`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', 1, '#23b848', '2021-03-08 16:03:52', '2021-03-08 16:04:04'),
(2, 'Order Processing', 2, '#d87b64', '2021-03-13 09:31:42', '2021-03-13 09:31:42'),
(3, 'Ready To Dispatch', 3, '#d87b64', '2021-03-13 09:32:15', '2021-03-13 09:32:15'),
(4, 'Order Dispatched', 4, '#d87b64', '2021-03-13 09:32:49', '2021-03-13 09:32:49'),
(5, 'At Local Facility', 5, '#d87b64', '2021-03-13 09:33:15', '2021-03-13 09:33:15'),
(6, 'Out For Delivery', 6, '#d87b64', '2021-03-13 09:34:13', '2021-03-13 09:34:13'),
(7, 'Delivered', 11, '#d87b64', '2021-03-13 09:34:26', '2021-03-13 09:39:03'),
(8, 'Failed to collect payment', 8, '#d87b64', '2021-03-13 09:34:57', '2021-03-13 09:34:57'),
(9, 'falied to contact Consignee', 9, '#d87b64', '2021-03-13 09:35:18', '2021-03-13 09:35:18'),
(10, 'Shipment Refused by Consignee', 10, '#d87b64', '2021-03-13 09:35:35', '2021-03-13 09:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'api', '2021-06-26 22:43:00', '2021-06-26 22:43:00'),
(2, 'customer', 'api', '2021-06-26 22:43:00', '2021-06-26 22:43:00'),
(3, 'store_owner', 'api', '2021-06-26 22:43:00', '2021-06-26 22:43:00'),
(4, 'staff', 'api', '2021-06-26 22:43:00', '2021-06-26 22:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'PickBazar\\Database\\Models\\User', 1, 'auth_token', '2bb6bf56abee1445626115fc18db10f3f3acff1353d10597452a3ec48daf8371', '[\"*\"]', NULL, '2021-12-20 11:33:54', '2021-12-20 11:33:54'),
(2, 'PickBazar\\Database\\Models\\User', 1, 'auth_token', 'c6292ba8f32fd0c2b23e4f1f295d6b9b89d4e63bcdb939b01aa0b49df3881058', '[\"*\"]', NULL, '2021-12-20 11:41:15', '2021-12-20 11:41:15'),
(3, 'PickBazar\\Database\\Models\\User', 1, 'auth_token', 'a8a40352021b2a5ea5e44a288c8e19763d9bf43017db99f1b52dc00e321b7272', '[\"*\"]', NULL, '2021-12-20 11:55:04', '2021-12-20 11:55:04'),
(4, 'PickBazar\\Database\\Models\\User', 13, 'auth_token', '5b5a2cac66c248a1500470739ebc85f827406f06ba41d5ab19cb769df5460bf2', '[\"*\"]', NULL, '2021-12-20 12:31:18', '2021-12-20 12:31:18'),
(7, 'PickBazar\\Database\\Models\\User', 25, 'auth_token', '7de6cdc244e93214da8068d82e4efdcea8bd28d3118fb75890935229b9edd272', '[\"*\"]', '2021-12-21 01:20:39', '2021-12-21 01:07:17', '2021-12-21 01:20:39'),
(9, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', '771abd3635d80aa4575b93b09effa26ca8ba0de554b351c9671bd18740c986f6', '[\"*\"]', '2021-12-21 13:37:39', '2021-12-21 04:51:13', '2021-12-21 13:37:39'),
(10, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', '09edccf87b50a1053cca63f92ee943f08888aa6389834b8b477a4d02b42325af', '[\"*\"]', '2021-12-21 14:06:12', '2021-12-21 05:08:33', '2021-12-21 14:06:12'),
(11, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', 'aa45908c34c0330a2e6c82004f63947e7ec8fc8cb72378aee4336cc58025436e', '[\"*\"]', '2021-12-22 04:56:03', '2021-12-22 02:07:47', '2021-12-22 04:56:03'),
(12, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', 'd44f6b7cda31bc639ccec24382d15eaafd093f4f16493bc87d8c699fbf5eba2f', '[\"*\"]', '2021-12-23 04:01:41', '2021-12-23 01:24:32', '2021-12-23 04:01:41'),
(13, 'PickBazar\\Database\\Models\\User', 26, 'auth_token', '9a2cebb8675cee11d8cea8723611d28a936d2328aab0f40cb05bd73d875f0dad', '[\"*\"]', '2021-12-23 04:20:00', '2021-12-23 01:27:57', '2021-12-23 04:20:00'),
(14, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', '41956c23ec81386c7cc08231d1961f45fe7aaa8d9d2f700a4ea17c3de1ac988f', '[\"*\"]', '2021-12-25 04:49:52', '2021-12-25 04:04:40', '2021-12-25 04:49:52'),
(15, 'PickBazar\\Database\\Models\\User', 26, 'auth_token', 'cd2c3d2f2da6ed91c5a808340bd5bfd2a010162c37287b78d9237d7df2e68658', '[\"*\"]', '2021-12-25 04:50:19', '2021-12-25 04:39:12', '2021-12-25 04:50:19'),
(16, 'PickBazar\\Database\\Models\\User', 26, 'auth_token', '33d232abafdf8d974e160fae86c3c0f2de1cd0189844fd5943fcef017598c9e5', '[\"*\"]', '2022-01-08 07:33:59', '2022-01-08 07:33:31', '2022-01-08 07:33:59'),
(17, 'PickBazar\\Database\\Models\\User', 26, 'auth_token', '90663e9c9a300e434561460af2c86a4142761c361b68145ddbfccfb8f869568d', '[\"*\"]', '2022-01-08 08:27:04', '2022-01-08 07:39:10', '2022-01-08 08:27:04'),
(18, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', 'd46613acc9fb924bb2916ac3993ba3a9c8a03298dd352786e3a635802f0a65f4', '[\"*\"]', '2022-01-08 08:03:46', '2022-01-08 07:47:43', '2022-01-08 08:03:46'),
(19, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', '9667ff4b738f1b0fa9631d3382bdd08b18a6896773a8482094b8cbb05ce550fe', '[\"*\"]', '2022-01-09 09:47:12', '2022-01-09 09:21:48', '2022-01-09 09:47:12'),
(20, 'PickBazar\\Database\\Models\\User', 26, 'auth_token', 'cfb87e5e1880556935a4988433a0128c0aa0a72b5656bc49b72cb140a99bdbe5', '[\"*\"]', '2022-01-09 09:49:45', '2022-01-09 09:26:37', '2022-01-09 09:49:45'),
(21, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', '212d76ec73d58fd4bcfdcd7036b32eb407807e9bcabcb0eefa77683d1b18b2ba', '[\"*\"]', '2022-01-13 05:29:52', '2022-01-13 03:45:35', '2022-01-13 05:29:52'),
(22, 'PickBazar\\Database\\Models\\User', 26, 'auth_token', 'cb0a2c6c3c85a4b1fc0938f453752eff58a06f00721361a0dd2997fc2fed40dd', '[\"*\"]', '2022-01-17 02:43:49', '2022-01-17 02:35:56', '2022-01-17 02:43:49'),
(23, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', 'd6733776228d1d9c66484e14542e70df8aceba9619407522d180b1b19a87ecf6', '[\"*\"]', '2022-01-18 04:23:58', '2022-01-18 04:18:28', '2022-01-18 04:23:58'),
(24, 'PickBazar\\Database\\Models\\User', 24, 'auth_token', '2a783524d87c74f9dfbb5aafecba46d2f3e924b31a8af4256bc04a88317bfacf', '[\"*\"]', '2022-01-19 03:57:34', '2022-01-19 02:34:04', '2022-01-19 03:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) DEFAULT 0.00,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sale_price` double(8,2) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `in_stock` tinyint(1) NOT NULL DEFAULT 1,
  `is_taxable` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `product_type` enum('simple','variable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gallery`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `max_price` double(8,2) DEFAULT NULL,
  `min_price` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `max_price`, `min_price`) VALUES
(20, 'Loafers For Men', 'lemon', 'The lemon/lime, Citrus limon Osbeck, is a species of small evergreen tree in the flowering plant family Rutaceae, native to South Asia, primarily North eastern India.', 1, 1500.00, 6, 1200.00, '20', 60, 1, 0, NULL, 'publish', 'simple', '4pc(s)', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/75\\/conversions\\/DSC_9249-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/75\\/DSC_9249.jpg\",\"id\":130}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/76\\/conversions\\/DSC_9248-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/76\\/DSC_9248.jpg\",\"id\":131},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/77\\/conversions\\/DSC_9249-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/77\\/DSC_9249.jpg\",\"id\":132},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/78\\/conversions\\/DSC_9250-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/78\\/DSC_9250.jpg\",\"id\":133},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/79\\/conversions\\/DSC_9251-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/79\\/DSC_9251.jpg\",\"id\":134}]', NULL, '2021-03-08 05:31:10', '2021-12-22 03:51:39', NULL, NULL),
(181, 'BRUTON', 'signature-salmon', 'Salmon is a common food classified as an oily fish with a rich content of protein and omega-3 fatty acids', 1, 495.00, 6, 450.00, '1400', 50, 1, 0, NULL, 'publish', 'simple', '1lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/70\\/conversions\\/DSC_9244-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/70\\/DSC_9244.jpg\",\"id\":125}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/71\\/conversions\\/DSC_9244-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/71\\/DSC_9244.jpg\",\"id\":126},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/72\\/conversions\\/DSC_9245-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/72\\/DSC_9245.jpg\",\"id\":127},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/73\\/conversions\\/DSC_9246-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/73\\/DSC_9246.jpg\",\"id\":128},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/74\\/conversions\\/DSC_9247-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/74\\/DSC_9247.jpg\",\"id\":129}]', NULL, '2021-03-10 14:24:48', '2021-12-22 03:50:24', NULL, NULL),
(182, 'aadi', 'cod-fillet', 'Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae. Cod is also used as part of the common name for a number of other fish species, and some species suggested to belong to genus Gadus are not called cod.', 1, 100.00, 6, 75.00, '1401', 50, 1, 0, NULL, 'publish', 'simple', '1lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/65\\/conversions\\/DSC_1933-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/65\\/DSC_1933.jpg\",\"id\":120}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/69\\/conversions\\/DSC_1935-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/69\\/DSC_1935.jpg\",\"id\":124}]', NULL, '2021-03-10 14:25:57', '2022-01-13 04:08:32', NULL, NULL),
(183, 'Punch', 'swordfish-fillet', 'The swordfish meat has a very delicate flavour, meaty and mild. Swordfish, also known as broadbills, is an oily fish similar to tuna, chunky meat without bones.', 1, 10000.00, 6, 7500.00, '1402', 50, 1, 0, NULL, 'publish', 'simple', '1.5lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/60\\/conversions\\/DSC_1929-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/60\\/DSC_1929.jpg\",\"id\":115}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/61\\/conversions\\/DSC_1928-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/61\\/DSC_1928.jpg\",\"id\":116},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/62\\/conversions\\/DSC_1929-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/62\\/DSC_1929.jpg\",\"id\":117},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/63\\/conversions\\/DSC_1930-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/63\\/DSC_1930.jpg\",\"id\":118},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/64\\/conversions\\/DSC_1931-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/64\\/DSC_1931.jpg\",\"id\":119}]', NULL, '2021-03-10 14:27:06', '2021-12-22 03:48:01', NULL, NULL),
(184, 'ROCKFIELD', 'halibut-fillet', 'Hippoglossus stenolepis, the Pacific halibut, is a species of righteye flounder. This very large species of flatfish is native to the North Pacific and is fished by commercial fisheries, sport fishers, and subsistence fishers.', 1, 1500.00, 6, 1200.00, '1403', 50, 1, 0, NULL, 'publish', 'simple', '2lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/55\\/conversions\\/DSC_1868-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/55\\/DSC_1868.jpg\",\"id\":110}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/56\\/conversions\\/DSC_1868-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/56\\/DSC_1868.jpg\",\"id\":111},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/57\\/conversions\\/DSC_1869-(1)-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/57\\/DSC_1869-(1).jpg\",\"id\":112},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/58\\/conversions\\/DSC_1870-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/58\\/DSC_1870.jpg\",\"id\":113},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/59\\/conversions\\/DSC_1871-(1)-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/59\\/DSC_1871-(1).jpg\",\"id\":114}]', NULL, '2021-03-10 14:29:09', '2021-12-22 03:46:50', NULL, NULL),
(185, 'Walking Shoes For Men', 'tilapia-fillet', 'Tilapia is the common name for nearly a hundred species of cichlid fish from the coelotilapine, coptodonine, heterotilapine, oreochromine, pelmatolapiine and tilapiine tribes, with the economically most important species placed in Coptodonini and Oreochromini.', 1, 7000.00, 6, 6500.00, '1404', 50, 1, 0, NULL, 'publish', 'simple', '1lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/50\\/conversions\\/DSC_9269-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/50\\/DSC_9269.jpg\",\"id\":105}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/51\\/conversions\\/DSC_9269-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/51\\/DSC_9269.jpg\",\"id\":106},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/52\\/conversions\\/DSC_9270-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/52\\/DSC_9270.jpg\",\"id\":107},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/53\\/conversions\\/DSC_9271-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/53\\/DSC_9271.jpg\",\"id\":108},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/54\\/conversions\\/DSC_9272-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/54\\/DSC_9272.jpg\",\"id\":109}]', NULL, '2021-03-10 14:30:15', '2021-12-22 03:43:06', NULL, NULL),
(186, 'Combo Pack of 2 Casual Shoes Sneakers For Men', 'fresh-beef', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 1, 600.00, 6, 500.00, '1405', 50, 1, 0, NULL, 'publish', 'simple', '1lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/45\\/conversions\\/DSC_9264-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/45\\/DSC_9264.jpg\",\"id\":100}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/46\\/conversions\\/DSC_9264-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/46\\/DSC_9264.jpg\",\"id\":101},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/47\\/conversions\\/DSC_9265-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/47\\/DSC_9265.jpg\",\"id\":102},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/48\\/conversions\\/DSC_9266-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/48\\/DSC_9266.jpg\",\"id\":103},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/49\\/conversions\\/DSC_9267-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/49\\/DSC_9267.jpg\",\"id\":104}]', NULL, '2021-03-10 14:37:09', '2021-12-22 03:42:09', NULL, NULL),
(187, 'K\' Footlance', 'sliced-turkey-breast', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 1, 8000.00, 6, 7000.00, '1406', 50, 1, 0, NULL, 'publish', 'simple', '1lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/40\\/conversions\\/DSC_1960-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/40\\/DSC_1960.jpg\",\"id\":95}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/41\\/conversions\\/DSC_1960-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/41\\/DSC_1960.jpg\",\"id\":96},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/42\\/conversions\\/DSC_1961-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/42\\/DSC_1961.jpg\",\"id\":97},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/43\\/conversions\\/DSC_1962-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/43\\/DSC_1962.jpg\",\"id\":98},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/44\\/conversions\\/DSC_1963-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/44\\/DSC_1963.jpg\",\"id\":99}]', NULL, '2021-03-10 14:39:09', '2021-12-22 03:41:14', NULL, NULL),
(188, 'Casuals For Men', 'chicken-thighs', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 1, 10000.00, 6, 8000.00, '1407', 49, 1, 0, NULL, 'publish', 'simple', '5lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/35\\/conversions\\/DSC_1799-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/35\\/DSC_1799.jpg\",\"id\":90}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/36\\/conversions\\/DSC_1799-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/36\\/DSC_1799.jpg\",\"id\":91},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/37\\/conversions\\/DSC_1800-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/37\\/DSC_1800.jpg\",\"id\":92},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/38\\/conversions\\/DSC_1801-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/38\\/DSC_1801.jpg\",\"id\":93},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/39\\/conversions\\/DSC_1802-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/39\\/DSC_1802.jpg\",\"id\":94}]', NULL, '2021-03-10 14:40:23', '2021-12-22 03:40:10', NULL, NULL),
(189, 'Boss-01 Slip On For Men', 'chicken-breast', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 1, 2500.00, 6, 2350.00, '1408', 50, 1, 0, NULL, 'publish', 'simple', '5lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/30\\/conversions\\/DSC_1992-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/30\\/DSC_1992.jpg\",\"id\":85}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/31\\/conversions\\/DSC_1992-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/31\\/DSC_1992.jpg\",\"id\":86},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/32\\/conversions\\/DSC_1993-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/32\\/DSC_1993.jpg\",\"id\":87},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/33\\/conversions\\/DSC_1994-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/33\\/DSC_1994.jpg\",\"id\":88},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/34\\/conversions\\/DSC_1995-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/34\\/DSC_1995.jpg\",\"id\":89}]', NULL, '2021-03-10 14:41:23', '2021-12-22 03:36:23', NULL, NULL),
(190, 'Slip On For Men', 'beef-steak', 'Meat is animal flesh that is eaten as food. Humans have hunted and killed animals for meat since prehistoric times. The advent of civilization allowed the domestication of animals such as chickens, sheep, rabbits, pigs and cattle.', 1, 2000.00, 6, 1500.00, '1410', 50, 1, 0, NULL, 'publish', 'simple', '5lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/25\\/conversions\\/DSC_1880-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/25\\/DSC_1880.jpg\",\"id\":80}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/26\\/conversions\\/DSC_1880-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/26\\/DSC_1880.jpg\",\"id\":81},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/27\\/conversions\\/DSC_1881-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/27\\/DSC_1881.jpg\",\"id\":82},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/28\\/conversions\\/DSC_1882-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/28\\/DSC_1882.jpg\",\"id\":83},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/29\\/conversions\\/DSC_1883-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/29\\/DSC_1883.jpg\",\"id\":84}]', NULL, '2021-03-10 14:43:24', '2021-12-22 03:35:12', NULL, NULL),
(191, 'Long OfficeWear Corporate Casuals For Men', 'belmont-custard-cream', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened.', 1, 1500.00, 6, 1000.00, '1500', 50, 1, 0, NULL, 'publish', 'simple', '1lb', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/20\\/conversions\\/DSC_1992-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/20\\/DSC_1992.jpg\",\"id\":75}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/21\\/conversions\\/DSC_1936-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/21\\/DSC_1936.jpg\",\"id\":76},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/22\\/conversions\\/DSC_1937-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/22\\/DSC_1937.jpg\",\"id\":77},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/23\\/conversions\\/DSC_1938-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/23\\/DSC_1938.jpg\",\"id\":78},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/24\\/conversions\\/DSC_1939-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/24\\/DSC_1939.jpg\",\"id\":79}]', NULL, '2021-03-11 00:18:01', '2021-12-22 03:34:09', NULL, NULL),
(192, 'Lace Up For Men', 'crawford-digestives', 'A biscuit is a flour-based baked food product. This article covers the type of biscuit found in Africa, Asia, and Europe, which is typically hard, flat, and unleavened.', 1, NULL, 6, NULL, '1501', 574, 1, 0, NULL, 'publish', 'variable', '8', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/14\\/conversions\\/DSC_1783-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/14\\/DSC_1783.jpg\",\"id\":69}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/16\\/conversions\\/DSC_1784-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/16\\/DSC_1784.jpg\",\"id\":71},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/17\\/conversions\\/DSC_1785-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/17\\/DSC_1785.jpg\",\"id\":72},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/18\\/conversions\\/DSC_1786-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/18\\/DSC_1786.jpg\",\"id\":73},{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/19\\/conversions\\/DSC_1880-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/19\\/DSC_1880.jpg\",\"id\":74}]', NULL, '2021-03-11 00:19:20', '2022-01-13 04:47:22', 120.00, 2.00),
(542, 'Name', 'name', NULL, 1, 1000.00, 6, 800.00, '123', 1000, 1, 0, NULL, 'publish', 'simple', '10', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/83\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/83\\/running-icon-26719.png\",\"id\":138}', '[]', '2021-12-25 04:08:49', '2021-12-23 02:06:27', '2021-12-25 04:08:49', NULL, NULL),
(543, 'Name', 'name-2', NULL, 1, 1000.00, 6, 200.00, '123', 200, 1, 0, NULL, 'publish', 'simple', '100', NULL, NULL, NULL, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/85\\/conversions\\/edge-3528319_1920-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/85\\/edge-3528319_1920.jpg\",\"id\":140}', '[{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/86\\/conversions\\/shoe-icon-11003-Windows-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/86\\/shoe-icon-11003-Windows.ico\",\"id\":141}]', '2021-12-25 04:08:56', '2021-12-23 02:09:33', '2021-12-25 04:08:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`) VALUES
(1, 192, 1);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'store_owner', 'store_owner', NULL, NULL),
(2, 'super_admin', 'super_admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `options`, `created_at`, `updated_at`) VALUES
(1, '{\"siteTitle\":\"Blackhound I Shoes |\",\"siteSubtitle\":null,\"seo\":{\"metaTitle\":null,\"metaDescription\":null,\"metaTags\":null,\"canonicalUrl\":null,\"ogTitle\":null,\"ogDescription\":null,\"twitterHandle\":null,\"twitterCardType\":null,\"ogImage\":[]},\"logo\":{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/88\\/conversions\\/logo-removebg-preview-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/88\\/logo-removebg-preview.png\",\"id\":143},\"currency\":\"INR\"}', '2021-03-24 10:00:18', '2021-12-25 04:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_classes`
--

CREATE TABLE `shipping_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `is_global` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `type` enum('fixed','percentage','free_shipping') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_classes`
--

INSERT INTO `shipping_classes` (`id`, `name`, `amount`, `is_global`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Shipping', 100, '1', 'fixed', '2021-12-23 03:14:27', '2021-12-23 03:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cover_image`)),
  `logo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`logo`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`address`)),
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`settings`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `owner_id`, `name`, `slug`, `description`, `cover_image`, `logo`, `is_active`, `address`, `settings`, `created_at`, `updated_at`) VALUES
(6, 24, 'Blackhound I Shoes-Ecommerce', 'Blackhound I Shoes-Ecommerce', 'The grocery shop is the best shop around the city. This is being run under the store owner and our aim is to provide fresh and quality product and hassle free customer service.', '{\"id\": \"894\", \"original\": \"https://pickbazarlaravel.s3.ap-southeast-1.amazonaws.com/892/Untitled-2.jpg\", \"thumbnail\": \"https://pickbazarlaravel.s3.ap-southeast-1.amazonaws.com/892/conversions/Untitled-2-thumbnail.jpg\"}', '{\"id\": \"893\", \"original\": \"https://pickbazarlaravel.s3.ap-southeast-1.amazonaws.com/891/Group-36321.png\", \"thumbnail\": \"https://pickbazarlaravel.s3.ap-southeast-1.amazonaws.com/891/conversions/Group-36321-thumbnail.jpg\"}', 1, '{\"zip\": \"61032\", \"city\": \"Freeport\", \"state\": \"Illinois\", \"country\": \"USA\", \"street_address\": \"1986  Spinnaker Lane\"}', '{\"contact\": \"018927525111\", \"socials\": [{\"url\": \"https://www.facebook.com/\", \"icon\": \"FacebookIcon\"}, {\"url\": \"https://www.instagram.com/\", \"icon\": \"InstagramIcon\"}, {\"url\": \"https://www.twitter.com/\", \"icon\": \"TwitterIcon\"}], \"website\": \"https://redq.io/\", \"location\": {\"lat\": 38.9032325, \"lng\": -77.0211068, \"city\": \"Washington\", \"state\": \"DC\", \"country\": \"United States\", \"formattedAddress\": \"New York Ave NW, Washington, DC, USA\"}}', '2021-06-26 22:18:23', '2021-07-08 03:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `icon`, `image`, `details`, `type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'shoes', 'shoes', 'WomenDress', '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/91\\/conversions\\/running-icon-26719-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/91\\/running-icon-26719.png\",\"id\":146}', 'shoes', 1, '2022-01-13 04:26:28', '2022-01-13 04:26:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` double NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_global` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `on_shipping` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `slug`, `icon`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Shoes', 'shoes', 'DressIcon', NULL, '2021-03-08 01:48:25', '2021-12-21 03:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_active`, `shop_id`) VALUES
(1, 'Store Owner', 'store_owner@demo.com', NULL, '$2y$10$YcO21.ddXuoiA.8AD5X1OOxfjmBHkl45Vg58pAdMQ3sZ/bjkpXYZK', NULL, '2021-06-26 22:43:00', '2021-06-26 22:43:00', 1, NULL),
(15, 'Name is required', 'email4@123', NULL, '$2y$10$/xPSfPGOR9GnVLIjYTUkveFM34EJ9o9.MTR455yn1/vr67J5J6v.2', NULL, '2021-12-20 12:37:02', '2021-12-20 12:37:02', 1, NULL),
(16, 'Name is required', 'email5@123', NULL, '$2y$10$STUf5F4x1LVAA/BBXn7n5O3M9n9VTSYMvMKqq1ZExFyc6RNdVdxiG', NULL, '2021-12-20 12:38:59', '2021-12-20 12:38:59', 1, NULL),
(17, 'q', 'q@1.c', NULL, '$2y$10$5fZcYdZkLcuFqpvPA22qMOd97rKoZdqAc3A40VtOfuFNKa8ewe6fm', NULL, '2021-12-20 12:43:27', '2021-12-20 12:43:27', 1, NULL),
(18, 'q', 'q1@1.c', NULL, '$2y$10$Kfj/i.1pDDEo3dBhKtayjuYcza1/mMG.IpCiXNc7jh26hLKVYAbUy', NULL, '2021-12-20 12:54:39', '2021-12-20 12:54:39', 1, NULL),
(19, 'q113', 'q121@q.c', NULL, '$2y$10$COlaUDZPlN62Kqy46SSRs..tpxfWCrolW4sKoowTrt81iV4raBALy', NULL, '2021-12-20 12:58:55', '2021-12-20 12:58:55', 1, NULL),
(20, 'q', 'q111@1.c', NULL, '$2y$10$1Q7DlJvFJ9Z18jSYv3.Wnu5eY.LvMz1H/VuXq8crROnKFOTXCWMU2', NULL, '2021-12-20 13:11:13', '2021-12-20 13:11:13', 1, NULL),
(21, 'q', 'q1112@1.c', NULL, '$2y$10$Z7zWT6ybzrkSLdKVsLDJAel8ZCSz.fLFhq5TJWZLitjudNG7U6PEG', NULL, '2021-12-20 13:21:44', '2021-12-20 13:21:44', 1, NULL),
(22, 'q', 'q11132@1.c', NULL, '$2y$10$uySxcyU4H49pXWZZvAiSjeNYgAg0vFzW67H6XrJI2urzeND0YNUiq', NULL, '2021-12-20 13:27:34', '2021-12-20 13:27:34', 1, NULL),
(23, 'q', 'q123@q.com', NULL, '$2y$10$m3sj6XjkzJPuuqSp2b1cXu41HAFlz.u47vz3Kx5KU6nk44RccMFyG', NULL, '2021-12-21 01:04:57', '2021-12-21 01:04:57', 1, NULL),
(24, 'Blackhound I Shoes-Ecommerce', 'admin@admin.com', NULL, '$2y$10$cgIwioDhMUqasYLas/dzCeUMr/ix5x6Y8bDfZSmW1hbEizcoFh3bS', NULL, '2021-12-21 01:06:41', '2021-12-22 04:15:31', 1, NULL),
(25, 'z', 'z123@z.com', NULL, '$2y$10$d5E/PybW85rxr4YM/EMamOvhXAjZp/09KLU5W5czX3KLrLhmnENLW', NULL, '2021-12-21 01:07:16', '2021-12-21 01:07:16', 1, NULL),
(26, 'Dheeraj', 'Dheeraj@gmail.com', NULL, '$2y$10$H7S20HSfe6F1gqs4IKuoiuCUDy36Y1daT4GSzQlNj4N0yy7MkTRse', NULL, '2021-12-23 01:27:56', '2021-12-23 01:27:56', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`avatar`)),
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`socials`)),
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `avatar`, `bio`, `socials`, `contact`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '{\"thumbnail\":\"http:\\/\\/localhost:8000\\/storage\\/89\\/conversions\\/ddddd_20201129155325-thumbnail.jpg\",\"original\":\"http:\\/\\/localhost:8000\\/storage\\/89\\/ddddd_20201129155325.jpg\",\"id\":144}', 'This is the store owner and we have 6 shops under our banner. We are running all the shops to give our customers hassle-free service and quality products. Our goal is to provide best possible customer service and products for our clients', NULL, '9876543210', 24, '2021-06-30 05:50:29', '2021-12-25 04:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `variation_options`
--

CREATE TABLE `variation_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_disable` tinyint(1) NOT NULL DEFAULT 0,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_options`
--

INSERT INTO `variation_options` (`id`, `title`, `price`, `sale_price`, `quantity`, `is_disable`, `sku`, `options`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 'Blue/2', '100', '90', '100', 0, '1', '[{\"name\":\"color\",\"value\":\"Blue\"},{\"name\":\"Size\",\"value\":\"2\"}]', 192, '2022-01-13 04:32:09', '2022-01-13 04:47:21'),
(4, 'Blue/3', '120', '90', '80', 0, '1', '[{\"name\":\"color\",\"value\":\"Blue\"},{\"name\":\"Size\",\"value\":\"3\"}]', 192, '2022-01-13 04:32:09', '2022-01-13 04:47:21'),
(5, 'Blue/4', '100', '50', '50', 0, '12', '[{\"name\":\"color\",\"value\":\"Blue\"},{\"name\":\"Size\",\"value\":\"4\"}]', 192, '2022-01-13 04:42:30', '2022-01-13 04:47:21'),
(6, 'Blue/1', '100', '90', '100', 0, '12', '[{\"name\":\"color\",\"value\":\"Blue\"},{\"name\":\"Size\",\"value\":\"1\"}]', 192, '2022-01-13 04:42:30', '2022-01-13 04:47:21'),
(7, 'Red/2', '100', '20', '20', 0, '1', '[{\"name\":\"color\",\"value\":\"Red\"},{\"name\":\"Size\",\"value\":\"2\"}]', 192, '2022-01-13 04:47:21', '2022-01-13 04:47:21'),
(8, 'Red/3', '12', '2', '1', 0, '1', '[{\"name\":\"color\",\"value\":\"Red\"},{\"name\":\"Size\",\"value\":\"3\"}]', 192, '2022-01-13 04:47:21', '2022-01-13 04:47:21'),
(9, 'Red/4', '120', '100', '100', 0, '1', '[{\"name\":\"color\",\"value\":\"Red\"},{\"name\":\"Size\",\"value\":\"4\"}]', 192, '2022-01-13 04:47:21', '2022-01-13 04:47:21'),
(10, 'Red/1', '100', '50', '123', 0, '1', '[{\"name\":\"color\",\"value\":\"Red\"},{\"name\":\"Size\",\"value\":\"1\"}]', 192, '2022-01-13 04:47:21', '2022-01-13 04:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','precessing','rejected','pending','on_hold') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_attribute_value_id_foreign` (`attribute_value_id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balances_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_foreign` (`parent`),
  ADD KEY `categories_type_id_foreign` (`type_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `category_shop`
--
ALTER TABLE `category_shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_shop_shop_id_foreign` (`shop_id`),
  ADD KEY `category_shop_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_tracking_number_unique` (`tracking_number`),
  ADD KEY `orders_status_foreign` (`status`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_shop_id_foreign` (`shop_id`),
  ADD KEY `orders_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`),
  ADD KEY `order_product_variation_option_id_foreign` (`variation_option_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_type_id_foreign` (`type_id`),
  ADD KEY `products_shipping_class_id_foreign` (`shipping_class_id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `providers_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_classes`
--
ALTER TABLE `shipping_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_type_id_foreign` (`type_id`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `variation_options`
--
ALTER TABLE `variation_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_shop_id_foreign` (`shop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;

--
-- AUTO_INCREMENT for table `category_shop`
--
ALTER TABLE `category_shop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_classes`
--
ALTER TABLE `shipping_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variation_options`
--
ALTER TABLE `variation_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `balances`
--
ALTER TABLE `balances`
  ADD CONSTRAINT `balances_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_shop`
--
ALTER TABLE `category_shop`
  ADD CONSTRAINT `category_shop_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_shop_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_status_foreign` FOREIGN KEY (`status`) REFERENCES `order_status` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_product_variation_option_id_foreign` FOREIGN KEY (`variation_option_id`) REFERENCES `variation_options` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_shipping_class_id_foreign` FOREIGN KEY (`shipping_class_id`) REFERENCES `shipping_classes` (`id`),
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `providers`
--
ALTER TABLE `providers`
  ADD CONSTRAINT `providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `variation_options`
--
ALTER TABLE `variation_options`
  ADD CONSTRAINT `variation_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD CONSTRAINT `withdraws_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
