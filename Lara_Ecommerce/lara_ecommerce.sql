-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 03:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Super Admin' COMMENT 'Admin|Super Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone_no`, `avatar`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Shohely', 'shohely@integra-bd.com', '$2y$10$fIKo6Cm5dD8HIyzjzLP4nO1moAz8tUSl7oDinm5HLo4u19DZV.s9a', '01907640595', NULL, 'Super Admin', '2021-02-25 23:02:00', '2021-02-25 23:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Sony', 'fttttttttttt', '1613579940.jpg', '2021-02-17 10:39:01', '2021-02-17 10:39:01'),
(3, 'Samsung', 'SamsungSamsungSamsung', '1613579985.png', '2021-02-17 10:39:45', '2021-02-17 10:39:45'),
(4, 'Others', 'OthersOthersOthersOthers', '1613580060.jpg', '2021-02-17 10:41:00', '2021-02-17 10:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(34, 3, NULL, 8, '127.0.0.1', 2, '2021-03-02 08:30:56', '2021-03-02 08:34:48'),
(35, 2, NULL, 8, '127.0.0.1', 1, '2021-03-02 08:30:58', '2021-03-02 08:34:48'),
(36, 1, NULL, 8, '127.0.0.1', 1, '2021-03-02 08:31:01', '2021-03-02 08:34:48'),
(37, 3, NULL, 9, '127.0.0.1', 1, '2021-03-02 08:36:53', '2021-03-02 08:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(11, 'cable', NULL, '1613489486.png', NULL, '2021-02-16 09:31:26', '2021-02-16 09:31:26'),
(12, 'Phone', 'erer', '1613703941.jpg', NULL, '2021-02-18 21:05:42', '2021-02-18 21:05:42'),
(13, 'Samsung', NULL, '1613704012.png', 12, '2021-02-18 21:06:52', '2021-02-18 21:06:52'),
(14, 'Camera', 'Camera', '1614763798.jpg', NULL, '2021-03-03 03:29:59', '2021-03-03 03:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Chandpur', 3, '2021-02-20 18:59:23', '2021-02-20 19:03:35'),
(2, 'Khulna Sadar', 4, '2021-02-20 19:58:08', '2021-02-20 19:58:08'),
(3, 'Dhaka', 1, '2021-02-20 19:58:55', '2021-02-20 19:58:55'),
(4, 'Rangpur Sadar', 8, '2021-02-20 20:02:11', '2021-02-20 20:02:11'),
(5, 'Barishal Sadar', 5, '2021-02-20 20:02:36', '2021-02-20 20:02:36'),
(6, 'Mymensingh Sadar', 7, '2021-02-20 20:03:18', '2021-02-20 20:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2021-02-20 09:30:50', '2021-02-20 09:30:50'),
(2, 'Rajshahi', 2, '2021-02-20 09:31:21', '2021-02-20 09:31:21'),
(3, 'Chittagong', 3, '2021-02-20 09:31:54', '2021-02-20 09:31:54'),
(4, 'Khulna', 5, '2021-02-20 09:32:35', '2021-02-20 09:32:35'),
(5, 'Barishal', 4, '2021-02-20 19:59:47', '2021-02-20 19:59:47'),
(6, 'Sylhet', 6, '2021-02-20 20:00:04', '2021-02-20 20:00:04'),
(7, 'Mymensingh', 7, '2021-02-20 20:01:15', '2021-02-20 20:01:15'),
(8, 'Rangpur', 8, '2021-02-20 20:01:34', '2021-02-20 20:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2021_02_09_132840_create_categories_table', 2),
(7, '2021_02_09_132932_create_brands_table', 2),
(9, '2021_02_09_141718_create_product_images_table', 2),
(10, '2021_02_08_141032_create_products_table', 3),
(12, '2014_10_12_000000_create_users_table', 4),
(13, '2021_02_20_131505_create_divisions_table', 4),
(14, '2021_02_20_131528_create_districts_table', 4),
(16, '2021_02_23_134746_create_carts_table', 5),
(17, '2021_02_24_154738_create_settings_table', 6),
(18, '2021_02_25_004615_create_payments_table', 7),
(19, '2021_02_23_134652_create_orders_table', 8),
(20, '2021_02_09_133127_create_admins_table', 9),
(21, '2021_02_28_154724_create_sliders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_charge` int(11) NOT NULL DEFAULT 60,
  `custom_discount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `ip_address`, `name`, `phone_no`, `shipping_address`, `email`, `message`, `is_paid`, `is_completed`, `is_seen_by_admin`, `transaction_id`, `created_at`, `updated_at`, `shipping_charge`, `custom_discount`) VALUES
(5, 9, NULL, NULL, 'Shohely', '01907640595', 'Dhaka', 'sanjidashohely@gmail.com', NULL, 1, 1, 1, NULL, NULL, NULL, 60, 0),
(6, 11, NULL, NULL, 'Prity', '01818223910', 'Barishal', 'shohely@integra-bd.com', NULL, 1, 1, 1, NULL, NULL, '2021-02-27 22:48:30', 60, 0),
(7, 9, 4, '127.0.0.1', 'Sanjida Shohely', '01907640595', 'Chandpur', 'sanjidashohely@gmail.com', NULL, 1, 0, 1, '24245694', '2021-02-27 21:00:41', '2021-03-01 10:30:00', 62, 5),
(8, 9, 4, '127.0.0.1', 'Sanjida Shohely', '01907640595', 'Chandpur', 'sanjidashohely@gmail.com', NULL, 0, 0, 0, NULL, '2021-03-02 08:34:48', '2021-03-02 08:34:48', 60, 0),
(9, 9, 4, '127.0.0.1', 'Sanjida Shohely', '01907640595', 'Chandpur', 'sanjidashohely@gmail.com', NULL, 0, 0, 0, NULL, '2021-03-02 08:38:49', '2021-03-02 08:38:49', 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sanjidashohely@gmail.com', '$2y$10$sS3F4fO.mQvphd03HsXyk.XbiSX9iFIeB8JI1l4zEn0w7BTP9pwNm', '2021-02-27 07:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payment No',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'agent|personal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `image`, `priority`, `short_name`, `no`, `type`, `created_at`, `updated_at`) VALUES
(4, 'Cash In', NULL, 1, 'cash_in', NULL, 'personal', NULL, NULL),
(5, 'Bkash', NULL, 2, 'bkash', NULL, 'agent', NULL, NULL),
(6, 'Rocket', NULL, 3, 'rocket', NULL, 'agent', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `offer_price` int(11) DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `description`, `slug`, `quantity`, `price`, `status`, `offer_price`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 11, 4, 'New Product', 'uiiiiiiiii', 'new-product', 10, 10, 0, NULL, 1, '2021-02-18 20:29:51', '2021-02-18 20:59:39'),
(2, 13, 3, 'Samsung Galaxy', 'Samsung GalaxySamsung Galaxy', 'samsung-galaxy', 2, 20000, 0, NULL, 1, '2021-02-18 21:00:16', '2021-02-18 21:06:17'),
(3, 12, 4, 'Symphony', 'SymphonySymphony', 'symphony', 1, 10000, 0, NULL, 1, '2021-02-18 21:01:22', '2021-02-18 21:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1.png', NULL, NULL),
(2, 2, '2.png', NULL, NULL),
(3, 1, '3.png', NULL, NULL),
(4, 2, '1613053082.png', '2021-02-11 08:18:02', '2021-02-11 08:18:02'),
(5, 2, '1613056628.png', '2021-02-11 09:17:08', '2021-02-11 09:17:08'),
(7, 1, '1613701791.png', '2021-02-18 20:29:52', '2021-02-18 20:29:52'),
(8, 2, '1613703617.png', '2021-02-18 21:00:17', '2021-02-18 21:00:17'),
(9, 3, '1613703682.png', '2021-02-18 21:01:22', '2021-02-18 21:01:22'),
(10, 4, '1614769105.png', '2021-03-03 04:58:25', '2021-03-03 04:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 'test@example.com', '01907640595', 'Dhaka-1230, dhaka', 100, '2021-02-24 15:52:05', '2021-02-24 15:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) UNSIGNED DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `button_text`, `button_link`, `priority`, `created_at`, `updated_at`) VALUES
(7, 'First Slider', '1614573518.jpg', NULL, 'https://www.youtube.com/watch?v=hHGZgSA0Syc&t=532s', 1, '2021-02-28 22:36:35', '2021-03-01 04:30:30'),
(8, 'Second Slider', '1614573507.png', 'Test2', 'https://www.youtube.com/watch?v=hHGZgSA0Syc&t=532s', 2, '2021-02-28 22:38:27', '2021-02-28 22:38:27'),
(9, 'Third', '1614574312.jpg', 'Test3', 'https://www.youtube.com/watch?v=hHGZgSA0Syc&t=532s', 3, '2021-02-28 22:39:04', '2021-02-28 22:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL COMMENT 'Division Table ID',
  `district_id` int(10) UNSIGNED NOT NULL COMMENT 'District Table ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=Inactive|1=active|2=Ban',
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `phone_no`, `email`, `email_verified_at`, `password`, `street_address`, `division_id`, `district_id`, `status`, `ip_address`, `avatar`, `shipping_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'Sanjida', 'Shohely', 'sanjidashohely', '01907640595', 'sanjidashohely@gmail.com', NULL, '$2y$10$AIL5.JlTIygVnJJZwFokz.vmB9HjucwMMSK7pMlaaA3aQ44MYJR2i', '1230', 1, 3, 1, '127.0.0.1', NULL, 'Chandpur', 'WnaqjZUuKovKnwzvxivI0TLy6i36mDgwNcT6xZQhe2cxlXeXa6OX8FWgtvXC', '2021-02-23 03:55:31', '2021-02-23 05:43:02'),
(11, 'Sanjida', 'Prity', 'sanjidaprity', '01818223910', 'shohely@integra-bd.com', NULL, '$2y$10$bw.2itx4xl2cN/NpT3c//eQU5Lwsn1y6yA7pSkOWqgpptE3pA/qUy', '1230', 1, 1, 0, '127.0.0.1', NULL, NULL, '6z2znYZ69zVmrMvZvsZlJY6P2hJUXvINIpIFB2204IsTsqubpi', '2021-02-27 19:19:10', '2021-02-27 19:19:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_short_name_unique` (`short_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
