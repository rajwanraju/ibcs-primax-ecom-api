-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2021 at 03:32 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `deliveried_orders`
--

CREATE TABLE `deliveried_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(20,6) NOT NULL,
  `grand_total` decimal(20,6) NOT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveried_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveried_orders`
--

INSERT INTO `deliveried_orders` (`id`, `order_id`, `customer_id`, `status`, `sub_total`, `grand_total`, `products`, `name`, `phone_number`, `email`, `shipping_address`, `deliveried_at`, `created_at`, `updated_at`) VALUES
(2, 'ES-2696114389', 3, 'Deliveried', '100.000000', '100.000000', '[{\"id\":1,\"name\":\"Test Product 2\",\"slug\":\"test-product-2\",\"detail\":\"test product2\",\"image\":\"\\/storage\\/products\\/1639233710.jpg\",\"price\":20,\"quantity\":5,\"created_at\":\"11\\/12\\/2021\",\"updated_at\":\"11\\/12\\/2021\",\"totalPrice\":100}]', 'Rajwan', '01737909454', 'rajwan@mail.com', 'sdfsd', '2021-12-16', '2021-12-17 09:13:28', '2021-12-17 09:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(6, '2021_12_11_112109_create_products_table', 2),
(7, '2021_12_12_035818_create_orders_table', 3),
(8, '2021_12_17_150032_create_deliveried_orders_table', 4),
(10, '2021_12_17_163930_create_order_histories_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Pending','Processing','Shipped','Deliveried','Cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `sub_total` decimal(20,6) NOT NULL,
  `grand_total` decimal(20,6) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `customer_id`, `status`, `sub_total`, `grand_total`, `payment_method`, `products`, `name`, `phone_number`, `email`, `shipping_address`, `created_at`, `updated_at`) VALUES
(5, 'ES-2152601810', 3, 'Shipped', '20.000000', '20.000000', NULL, '[{\"id\":2,\"name\":\"Test Product\",\"slug\":\"test-product\",\"detail\":\"test product\",\"image\":\"\\/storage\\/products\\/1639233710.jpg\",\"price\":10,\"quantity\":2,\"created_at\":\"11\\/12\\/2021\",\"updated_at\":\"11\\/12\\/2021\",\"totalPrice\":20}]', 'Rajwan1', '017370099882', 'rajwan@mail.com', 'Dhaka', '2021-12-16 13:07:17', '2021-12-25 05:37:13'),
(6, 'ES-2285820534', 3, 'Processing', '20.000000', '20.000000', NULL, '[{\"id\":2,\"name\":\"Test Product\",\"slug\":\"test-product\",\"detail\":\"test product\",\"image\":\"\\/storage\\/products\\/1639233710.jpg\",\"price\":10,\"quantity\":2,\"created_at\":\"11\\/12\\/2021\",\"updated_at\":\"11\\/12\\/2021\",\"totalPrice\":20}]', 'Rajwan1', '01737909454', 'rajwan@mail.com', 'sdfsd', '2021-12-16 13:07:39', '2021-12-19 08:42:18'),
(7, 'ES-3210360829', 3, 'Processing', '20.000000', '20.000000', NULL, '[{\"id\":2,\"name\":\"Test Product\",\"slug\":\"test-product\",\"detail\":\"test product\",\"image\":\"\\/storage\\/products\\/1639233710.jpg\",\"price\":10,\"quantity\":2,\"created_at\":\"11\\/12\\/2021\",\"updated_at\":\"11\\/12\\/2021\",\"totalPrice\":20}]', 'Rajwan1', '01737909454', 'rajwan@mail.com', 'sdfsd', '2021-12-16 13:09:58', '2021-12-19 08:45:32'),
(8, 'ES-1074919490', 3, 'Pending', '100.000000', '100.000000', NULL, '[{\"id\":1,\"name\":\"Test Product 2\",\"slug\":\"test-product-2\",\"detail\":\"test product2\",\"image\":\"\\/storage\\/products\\/1639233710.jpg\",\"price\":20,\"quantity\":5,\"created_at\":\"11\\/12\\/2021\",\"updated_at\":\"11\\/12\\/2021\",\"totalPrice\":100}]', 'Rajwan Ullah', '01737909454', 'rajwan@mail.com', '51/A/1 West razabazer ,tejgoan Dhaka', '2021-12-16 13:11:43', '2021-12-25 06:17:04'),
(11, 'ES-3222840719', 3, 'Pending', '3160.000000', '3160.000000', NULL, '[{\"id\":3,\"name\":\"Test product 3\",\"slug\":\"test-product-3\",\"detail\":\"<p>Test product 3<\\/p>\",\"image\":\"\\/storage\\/products\\/product-1639744681.png\",\"price\":22,\"quantity\":100,\"created_at\":\"17\\/12\\/2021\",\"updated_at\":\"17\\/12\\/2021\",\"totalPrice\":2200},{\"id\":2,\"name\":\"Test Product\",\"slug\":\"test-product\",\"detail\":\"test product\",\"image\":\"\\/storage\\/products\\/1639233710.jpg\",\"price\":10,\"quantity\":96,\"created_at\":\"11\\/12\\/2021\",\"updated_at\":\"17\\/12\\/2021\",\"totalPrice\":960}]', 'Raj 1', '01737909454', 'rajwan@mail.com', 'sdfsd', '2021-12-19 08:04:04', '2021-12-25 06:19:02'),
(20, 'ES-3018232109', 3, 'Pending', '3160.000000', '3160.000000', NULL, '[{\"id\":3,\"name\":\"Test product 3\",\"slug\":\"test-product-3\",\"detail\":\"<p>Test product 3<\\/p>\",\"image\":\"\\/storage\\/products\\/product-1639744681.png\",\"price\":22,\"quantity\":100,\"created_at\":\"17\\/12\\/2021\",\"updated_at\":\"17\\/12\\/2021\",\"totalPrice\":2200},{\"id\":2,\"name\":\"Test Product\",\"slug\":\"test-product\",\"detail\":\"test product\",\"image\":\"\\/storage\\/products\\/1639233710.jpg\",\"price\":10,\"quantity\":96,\"created_at\":\"11\\/12\\/2021\",\"updated_at\":\"17\\/12\\/2021\",\"totalPrice\":960}]', 'raj11', '01737009980', 'rajwan@mail.com', 'Dhaka', '2021-12-19 08:19:09', '2021-12-25 11:25:42'),
(21, 'ES-112823401', 3, 'Pending', '216.000000', '216.000000', NULL, '[{\"id\":4,\"name\":\"Product 4\",\"slug\":\"product-4\",\"detail\":\"<p> Best Product<\\/p>\",\"image\":\"\\/storage\\/products\\/product-1639744681.png\",\"price\":27,\"quantity\":8,\"created_at\":\"19\\/12\\/2021\",\"updated_at\":\"19\\/12\\/2021\",\"totalPrice\":216}]', 'Rajwan Ullah', '01737909454', 'rajwan@mail.com', 'Dhaka', '2021-12-25 10:12:17', '2021-12-25 10:12:17'),
(22, 'ES-960276117', 3, 'Pending', '216.000000', '216.000000', NULL, '[{\"id\":4,\"name\":\"Product 4\",\"slug\":\"product-4\",\"detail\":\"<p> Best Product<\\/p>\",\"image\":\"\\/storage\\/products\\/product-1639744681.png\",\"price\":27,\"quantity\":8,\"created_at\":\"19\\/12\\/2021\",\"updated_at\":\"19\\/12\\/2021\",\"totalPrice\":216}]', 'Rajwan Ullah', '01737909454', 'rajwan@mail.com', 'sdfsd', '2021-12-25 10:19:34', '2021-12-25 10:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `edit_at` text COLLATE utf8mb4_unicode_ci,
  `edit_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_histories`
--

INSERT INTO `order_histories` (`id`, `order_id`, `edit_at`, `edit_by`, `edit_value`, `created_at`, `updated_at`) VALUES
(1, 5, 'status', 'admin', 'Shipped', '2021-12-19 20:58:27', '2021-12-19 20:58:27'),
(2, 20, 'phone_number', 'Rajwan Ullah', '01737009988', '2021-12-25 05:40:05', '2021-12-25 05:40:05'),
(3, 20, 'shipping_address', 'Rajwan Ullah', 'Dhaka', '2021-12-25 05:40:05', '2021-12-25 05:40:05'),
(4, 20, 'phone_number', 'Rajwan Ullah', '01737009981', '2021-12-25 05:42:25', '2021-12-25 05:42:25'),
(5, 8, 'phone_number', 'Rajwan Ullah', '01737909454', '2021-12-25 06:17:04', '2021-12-25 06:17:04'),
(6, 11, 'phone_number', 'Rajwan Ullah', '01737909454', '2021-12-25 06:18:24', '2021-12-25 06:18:24'),
(7, 11, 'phone_number', 'Rajwan Ullah', '01737909454', '2021-12-25 06:19:02', '2021-12-25 06:19:02'),
(8, 20, 'phone_number', 'Rajwan Ullah', '01737009980', '2021-12-25 11:25:42', '2021-12-25 11:25:42'),
(9, 20, 'phone_number', 'Rajwan Ullah', '01737009980', '2021-12-25 11:25:42', '2021-12-25 11:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '681200e7893773a543e53f4981e31c222e5c9aa5b90811e90a3ae0df680ad6a9', '[\"*\"]', NULL, '2021-12-11 05:43:17', '2021-12-11 05:43:17'),
(2, 'App\\Models\\User', 1, 'MyApp', '8d528877460bfba325b800c28b4e151cba3606d33b230544823a8cab250f8cad', '[\"*\"]', NULL, '2021-12-11 05:44:07', '2021-12-11 05:44:07'),
(3, 'App\\Models\\User', 1, 'MyApp', 'de94c90d3b6697f59651c18bbd9877f1ec5926e532288676fc33d886aa3dae6f', '[\"*\"]', NULL, '2021-12-11 05:47:02', '2021-12-11 05:47:02'),
(4, 'App\\Models\\User', 1, 'MyApp', 'bf11c7c9422ccc77c0de2da69c5020989d30087846ceac2589339ab6d311cdc6', '[\"*\"]', '2021-12-25 10:34:17', '2021-12-11 05:49:24', '2021-12-25 10:34:17'),
(5, 'App\\Models\\User', 1, 'MyApp', '7aae571ef1901608c12d8d7657b9cde8cdd04944abe3beb6227ceec1f79bcd4e', '[\"*\"]', NULL, '2021-12-11 23:51:07', '2021-12-11 23:51:07'),
(6, 'App\\Models\\User', 2, 'MyApp', 'bea235cc4200c6d66460a4585da1d6b4050e15d0506c6e7c988170f5bcd262b3', '[\"*\"]', NULL, '2021-12-12 00:40:18', '2021-12-12 00:40:18'),
(7, 'App\\Models\\User', 2, 'MyApp', '93a99f33d0d17371c27c2333b71ed9f31dfe86d4a56ccc681b0b34b7ac669dac', '[\"*\"]', NULL, '2021-12-12 00:43:36', '2021-12-12 00:43:36'),
(8, 'App\\Models\\User', 1, 'MyApp', '5b5741758c492ba197fdb3a7b3fcf86040e0e070760bdfdca49106c63e0cf43b', '[\"*\"]', NULL, '2021-12-12 00:43:45', '2021-12-12 00:43:45'),
(9, 'App\\Models\\User', 2, 'MyApp', 'e34198c8bb5304e248d1819cceb0c2ec3bc5bf0dea09a44c6a08a2c3a7578bc1', '[\"*\"]', NULL, '2021-12-12 00:44:17', '2021-12-12 00:44:17'),
(10, 'App\\Models\\User', 3, 'MyApp', '5d8460e1b2cf4d560687b3c8f4b8ac0763c1f4e39fc22954efedde14aceb0034', '[\"*\"]', NULL, '2021-12-12 00:47:31', '2021-12-12 00:47:31'),
(11, 'App\\Models\\User', 2, 'MyApp', 'bcf296c9e03f6499eb1af9a9798d1a1242e2b2c725305781441f3cb50074d3a0', '[\"*\"]', NULL, '2021-12-12 00:52:57', '2021-12-12 00:52:57'),
(12, 'App\\Models\\User', 2, 'MyApp', '35ad6024794aa55718f76dce06f690a9f8375d2a8059cde11009f27230e1ee4f', '[\"*\"]', NULL, '2021-12-12 01:01:59', '2021-12-12 01:01:59'),
(13, 'App\\Models\\User', 2, 'MyApp', 'f0c57e0c4b95da3d5b7ce8ad5d4e504614139f09daf2e7adb150ab5008f5488c', '[\"*\"]', NULL, '2021-12-12 01:14:57', '2021-12-12 01:14:57'),
(14, 'App\\Models\\User', 2, 'MyApp', 'b70d77a8a30eb8b3a22a0affb4c24b81c2bf898f188195d57bc036d7344b7f5a', '[\"*\"]', NULL, '2021-12-12 01:17:07', '2021-12-12 01:17:07'),
(15, 'App\\Models\\User', 2, 'MyApp', 'f6a8c8d206038a59509e27657b53cbe57faf071f6893812ca48d8bcf552dad50', '[\"*\"]', NULL, '2021-12-12 01:18:17', '2021-12-12 01:18:17'),
(16, 'App\\Models\\User', 2, 'MyApp', '4ddf4bd2d703f1e6a7bbd1ce0b970b1776a1d16583dbf01c0a580f70f06dedf0', '[\"*\"]', NULL, '2021-12-12 01:19:57', '2021-12-12 01:19:57'),
(17, 'App\\Models\\User', 1, 'MyApp', '5daa62ad29d0e035de8cbcb43addbb418319bfa90ebf145e3ecb28ba767186f6', '[\"*\"]', NULL, '2021-12-12 01:58:56', '2021-12-12 01:58:56'),
(18, 'App\\Models\\User', 3, 'MyApp', '4a8f9e265c3c944519f58a1524f048cc6e0eb456c4b036ed6d0244ae4b1cc389', '[\"*\"]', '2021-12-16 13:19:32', '2021-12-14 10:58:32', '2021-12-16 13:19:32'),
(19, 'App\\Models\\User', 1, 'MyApp', '6794cc727e72d2ef12889269aec222a8abdf7faea570b6c9bd468af844a2ba53', '[\"*\"]', NULL, '2021-12-16 13:26:14', '2021-12-16 13:26:14'),
(20, 'App\\Models\\User', 1, 'MyApp', '3b912a788548287cdafa132d9244821bffb7943a83f9d856662f86f06f4631ab', '[\"*\"]', '2021-12-16 14:29:50', '2021-12-16 13:33:28', '2021-12-16 14:29:50'),
(21, 'App\\Models\\User', 1, 'MyApp', '89eb5e874b900db534a86d71b3848f1f68553166b21c71e3725df4c143cddeb4', '[\"*\"]', '2021-12-16 22:02:24', '2021-12-16 22:02:18', '2021-12-16 22:02:24'),
(22, 'App\\Models\\User', 1, 'MyApp', '1498fcca188d9772e1e805dea051913237c4dc80503810630bea7222dba792c7', '[\"*\"]', '2021-12-17 06:03:32', '2021-12-17 06:03:07', '2021-12-17 06:03:32'),
(23, 'App\\Models\\User', 1, 'MyApp', 'ffa8e67f6f283649fedca026fafc8287b4fd69a2fb8587354b877e3c02edffc6', '[\"*\"]', NULL, '2021-12-17 06:06:12', '2021-12-17 06:06:12'),
(24, 'App\\Models\\User', 1, 'MyApp', 'b437c021048cd0e826c448e40362dd973af74aa82f5d8080d16a3901f8479928', '[\"*\"]', '2021-12-17 08:33:30', '2021-12-17 06:09:06', '2021-12-17 08:33:30'),
(25, 'App\\Models\\User', 3, 'MyApp', 'becca8eca3204f2c413b6d7f5aead8b4a9901b8bb8538ca017e079a70e3fc238', '[\"*\"]', '2021-12-19 07:46:27', '2021-12-17 10:32:44', '2021-12-19 07:46:27'),
(26, 'App\\Models\\User', 3, 'MyApp', '82fdca795e45561fde8b20baa6a87523e6e36fcf9b31dda3aa138c726f711c5c', '[\"*\"]', NULL, '2021-12-19 07:47:42', '2021-12-19 07:47:42'),
(27, 'App\\Models\\User', 1, 'MyApp', '4aa8c033b61e849c883624095ca7f4abdfb9ef1cc00b3a3467ca880998e39ee2', '[\"*\"]', NULL, '2021-12-19 07:48:17', '2021-12-19 07:48:17'),
(28, 'App\\Models\\User', 1, 'MyApp', '734a9545e27453eded6d9fcf0b5bc288a20f7840854592f9c3031e7f25f8f1bc', '[\"*\"]', '2021-12-19 07:52:33', '2021-12-19 07:51:48', '2021-12-19 07:52:33'),
(29, 'App\\Models\\User', 3, 'MyApp', '0121d5794b5c4127b73fa18763c72a97820c5a4551aceae0a0e79eb6ab533aa6', '[\"*\"]', '2021-12-19 08:22:22', '2021-12-19 07:52:55', '2021-12-19 08:22:22'),
(30, 'App\\Models\\User', 3, 'MyApp', 'da1f2d3c5b997c644188d32cac2c275f893c52952faba324e2f058de0b92dc03', '[\"*\"]', '2021-12-19 08:18:47', '2021-12-19 08:01:19', '2021-12-19 08:18:47'),
(31, 'App\\Models\\User', 1, 'MyApp', 'c23d05cf174b9c26389edc2fecd7a7f53185a1f00d19977e53ce09a8980a49c3', '[\"*\"]', '2021-12-19 20:58:27', '2021-12-19 08:37:18', '2021-12-19 20:58:27'),
(32, 'App\\Models\\User', 3, 'MyApp', '81eb7659290cca9084fcc1b440e79bb2b592ea7106c97d1900381c7c21fd3828', '[\"*\"]', '2021-12-19 21:04:37', '2021-12-19 20:58:58', '2021-12-19 21:04:37'),
(33, 'App\\Models\\User', 3, 'MyApp', '585e7f6b92abcab6d310e019854716a9b7e3d116258171231f7300745f86f671', '[\"*\"]', '2021-12-19 21:09:19', '2021-12-19 21:06:57', '2021-12-19 21:09:19'),
(34, 'App\\Models\\User', 3, 'MyApp', '0fd41aaf720f396a5969eadba490d692bc33eaa7f18d7593370486a4dab855ab', '[\"*\"]', NULL, '2021-12-19 21:13:33', '2021-12-19 21:13:33'),
(35, 'App\\Models\\User', 1, 'MyApp', '89e9dd30ea969f15c9825ff1fda4db3e3d9cabf652442a731efcdf066c3bca17', '[\"*\"]', '2021-12-25 03:52:08', '2021-12-25 03:04:02', '2021-12-25 03:52:08'),
(36, 'App\\Models\\User', 3, 'MyApp', 'c7b984f47dbb57b20b9c9b7ef6a766faed62e613d836021360614a94f7554eba', '[\"*\"]', '2021-12-25 05:42:52', '2021-12-25 04:07:36', '2021-12-25 05:42:52'),
(37, 'App\\Models\\User', 3, 'MyApp', '289362c997d7799055cdf370afcb7f699c37954af5ecd2ad55785da897a265f0', '[\"*\"]', '2021-12-25 04:51:12', '2021-12-25 04:26:00', '2021-12-25 04:51:12'),
(38, 'App\\Models\\User', 3, 'MyApp', '0675f8029560a8c20e603f1df020b9ffcb7f481200a203b6c0df53e1b3b5ba40', '[\"*\"]', '2021-12-25 11:23:10', '2021-12-25 05:30:53', '2021-12-25 11:23:10'),
(39, 'App\\Models\\User', 3, 'MyApp', 'e5cb6fc4204f5f45112122e098e3094ae307775b40976defec08cb05c3ba2109', '[\"*\"]', '2021-12-25 06:19:16', '2021-12-25 05:48:15', '2021-12-25 06:19:16'),
(40, 'App\\Models\\User', 1, 'MyApp', '90fd3ce01e7e56c290acb065ed55ae4022fb564d2e076800e6bb53fe6dc0fe55', '[\"*\"]', '2021-12-25 07:43:04', '2021-12-25 06:36:27', '2021-12-25 07:43:04'),
(41, 'App\\Models\\User', 3, 'MyApp', '51ce2874b19cf758c7639a732c0f0c3e72b26e3a024d4c2627a9ea93514b115b', '[\"*\"]', NULL, '2021-12-25 10:11:15', '2021-12-25 10:11:15'),
(42, 'App\\Models\\User', 3, 'MyApp', 'ff0704c53b9fb6e3215b426cae65d45af046dd1bcb52fc0ff167020a7e17688f', '[\"*\"]', '2021-12-25 10:11:25', '2021-12-25 10:11:22', '2021-12-25 10:11:25'),
(43, 'App\\Models\\User', 3, 'MyApp', '36852df74c78b8fe3f0357ea23ba1629c006084ae98359fe8c0ee9bcdcb41190', '[\"*\"]', '2021-12-25 10:12:17', '2021-12-25 10:12:00', '2021-12-25 10:12:17'),
(44, 'App\\Models\\User', 3, 'MyApp', 'b76115fcfe337c4517056713842686f4b5b559ee775f72e3653d8fc20c69ec60', '[\"*\"]', '2021-12-25 10:12:39', '2021-12-25 10:12:31', '2021-12-25 10:12:39'),
(45, 'App\\Models\\User', 3, 'MyApp', 'ebb803da9036ef669c8fc784fa9eb85849c66fd6589a72850cf126e72de31cd7', '[\"*\"]', NULL, '2021-12-25 10:17:28', '2021-12-25 10:17:28'),
(46, 'App\\Models\\User', 3, 'MyApp', 'd103d6d37ce5acf3d41b2f154daf978a0bdfeaff1c31119c0a3e55b27a2ffde5', '[\"*\"]', '2021-12-25 10:45:06', '2021-12-25 10:19:12', '2021-12-25 10:45:06'),
(47, 'App\\Models\\User', 1, 'MyApp', '926faf11e3e5d21e0bafd333d01364c772dabe521ae95e94012d8bc424af385a', '[\"*\"]', '2021-12-25 10:55:52', '2021-12-25 10:24:58', '2021-12-25 10:55:52'),
(48, 'App\\Models\\User', 1, 'MyApp', 'd0b3bf2eabc0a1ab829689397fe3dd83974eb37797ae65563e43ac714e25830c', '[\"*\"]', '2021-12-25 10:49:12', '2021-12-25 10:46:48', '2021-12-25 10:49:12'),
(49, 'App\\Models\\User', 3, 'MyApp', '56c0d3529bf3e79ad0075013a1c77b97fabadf40dd8267c56be98b57014c7e6f', '[\"*\"]', '2021-12-25 11:25:42', '2021-12-25 11:23:40', '2021-12-25 11:25:42'),
(50, 'App\\Models\\User', 1, 'MyApp', '7355edf0c6719995bc840e136e9a17f545c0b2a1d2b6f550af1fcd2fac25d647', '[\"*\"]', '2021-12-25 11:27:35', '2021-12-25 11:26:35', '2021-12-25 11:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `quantity`, `price`, `detail`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test Product 2', 'test-product-2', '1639233710.jpg', 100, 20, 'test product2', 1, '2021-12-11 08:56:04', '2021-12-11 08:56:04'),
(2, 'Test Product', 'test-product', '1639233710.jpg', 96, 10, 'test product', 1, '2021-12-11 08:56:34', '2021-12-17 08:31:55'),
(3, 'Test product 3', 'test-product-3', 'product-1639744681.png', 100, 22, '<p>Test product 3</p>', 0, '2021-12-17 06:38:06', '2021-12-17 06:38:06'),
(4, 'Product 4', 'product-4', 'product-1639744681.png', 10, 27, '<p> Best Product</p>', 0, '2021-12-19 08:25:14', '2021-12-25 11:26:53'),
(5, 'Test product 5', 'test-product-5', 'product-1640451331.png', 23, 212, '<p>Test product 5</p>', 0, '2021-12-25 10:55:52', '2021-12-25 10:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.com', NULL, '$2y$10$TYWfOuItP6.YgQY0uzxlYOFRMg3ZEHBTSAR6Xr28P62TApJcBMrpi', 1, NULL, '2021-12-11 05:43:17', '2021-12-11 05:43:17'),
(2, 'test user', 'user@mail.com', NULL, '$2y$10$k6d3urFGlKDFAG92LV6lBuKHuFdG43cpkSPL0BH42PIGMIeTczz5q', 0, NULL, '2021-12-12 00:40:18', '2021-12-12 00:40:18'),
(3, 'Rajwan Ullah', 'rajwan@mail.com', NULL, '$2y$10$14wWuCVApCozKe3e.NdSyeLlTKfqVfhyejLEdJGmCsJ1Xk5IN8LG.', 0, NULL, '2021-12-12 00:47:31', '2021-12-12 00:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deliveried_orders`
--
ALTER TABLE `deliveried_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deliveried_orders_order_id_unique` (`order_id`),
  ADD KEY `deliveried_orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_histories_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deliveried_orders`
--
ALTER TABLE `deliveried_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliveried_orders`
--
ALTER TABLE `deliveried_orders`
  ADD CONSTRAINT `deliveried_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD CONSTRAINT `order_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
