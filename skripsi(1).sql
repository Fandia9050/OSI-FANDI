-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 04:43 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '0.0.0.0', 'dodo', NULL, '2021-01-30 09:43:07', 0),
(2, '0.0.0.0', 'Fandi', NULL, '2021-01-30 09:45:53', 0),
(3, '0.0.0.0', 'fandi', 2, '2021-01-30 09:58:03', 0),
(4, '0.0.0.0', 'fandi', 2, '2021-01-30 10:00:50', 0),
(5, '0.0.0.0', 'fandi', 4, '2021-01-30 10:08:16', 0),
(6, '0.0.0.0', 'fandi', 5, '2021-01-30 10:10:32', 0),
(7, '0.0.0.0', 'dodo', 6, '2021-01-30 10:11:16', 0),
(8, '0.0.0.0', 'fandi9050@gmail.com', 5, '2021-01-30 10:12:07', 1),
(9, '0.0.0.0', 'fandi', 7, '2021-01-30 10:22:26', 0),
(10, '0.0.0.0', 'gogo', 8, '2021-01-30 10:25:40', 0),
(11, '0.0.0.0', 'fandi9050@gmail.com', 7, '2021-01-30 10:29:30', 1),
(12, '0.0.0.0', 'fandi9050@gmail.com', 7, '2021-02-03 18:10:18', 1),
(13, '::1', 'fandi', 9, '2021-02-15 08:03:06', 0),
(14, '::1', 'fandi9050@gmail.com', 9, '2021-02-15 08:04:00', 1),
(15, '::1', 'fandi', NULL, '2021-02-15 08:05:22', 0),
(16, '::1', 'fandi9050@gmail.com', 10, '2021-02-15 08:06:24', 1),
(17, '::1', 'fandi9050@gmail.com', 11, '2021-02-15 08:16:27', 0),
(18, '::1', 'fandi', 11, '2021-02-15 19:09:51', 0),
(19, '::1', 'fandi9050@gmail.com', 12, '2021-02-15 19:11:38', 1),
(20, '::1', 'fandi9050@gmail.com', 12, '2021-02-17 19:25:53', 1),
(21, '::1', 'fandi9050@gmail.com', 12, '2021-02-21 19:12:42', 1),
(22, '::1', 'fandi9050@gmail.com', 12, '2021-02-21 23:21:19', 1),
(23, '::1', 'fandi9050@gmail.com', 12, '2021-02-23 00:21:28', 1),
(24, '::1', 'fandi9050@gmail.com', 12, '2021-02-23 05:16:15', 1),
(25, '::1', 'fandi9050@gmail.com', 12, '2021-02-23 10:36:45', 1),
(26, '::1', 'fandi9050@gmail.com', 12, '2021-02-25 02:00:11', 1),
(27, '::1', 'fandi9050@gmail.com', 12, '2021-03-02 00:52:24', 1),
(28, '::1', 'fandi9050@gmail.com', 12, '2021-03-02 18:03:01', 1),
(29, '::1', 'fandi9050@gmail.com', 12, '2021-03-02 21:27:42', 1),
(30, '::1', 'fandi9050@gmail.com', 12, '2021-03-02 21:48:41', 1),
(31, '::1', 'fandi9050@gmail.com', 12, '2021-03-03 03:12:26', 1),
(32, '::1', 'fandi9050@gmail.com', 12, '2021-03-04 01:01:27', 1),
(33, '::1', 'fandi9050@gmail.com', 12, '2021-03-04 03:21:48', 1),
(34, '::1', 'fandi9050@gmail.com', 12, '2021-03-04 18:11:39', 1),
(35, '::1', 'fandi9050@gmail.com', 12, '2021-03-05 01:10:33', 1),
(36, '::1', 'fandi9050@gmail.com', 12, '2021-03-05 04:55:06', 1),
(37, '::1', 'fandi9050@gmail.com', 12, '2021-03-05 10:20:22', 1),
(38, '::1', 'fandi9050@gmail.com', 12, '2021-03-06 20:20:29', 1),
(39, '::1', 'fandi9050@gmail.com', 12, '2021-03-06 23:13:13', 1),
(40, '::1', 'fandi9050@gmail.com', 12, '2021-03-08 19:01:39', 1),
(41, '::1', 'fandi9050@gmail.com', 12, '2021-03-09 02:18:53', 1),
(42, '::1', 'fandi9050@gmail.com', 12, '2021-03-10 04:17:30', 1),
(43, '::1', 'fandi9050@gmail.com', 12, '2021-03-10 08:05:33', 1),
(44, '::1', 'fandi9050@gmail.com', 12, '2021-03-10 17:45:26', 1),
(45, '::1', 'fandi9050@gmail.com', 12, '2021-03-13 09:00:33', 1),
(46, '::1', 'fandi9050@gmail.com', 12, '2021-03-13 09:00:56', 1),
(47, '::1', 'fandi9050@gmail.com', 12, '2021-03-15 08:16:08', 1),
(48, '::1', 'fandi9050@gmail.com', 12, '2021-03-22 11:32:20', 1),
(49, '::1', 'fandi9050@gmail.com', 12, '2021-03-23 01:33:15', 1),
(50, '::1', 'fandi9050@gmail.com', 12, '2021-03-23 21:24:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(100) NOT NULL,
  `nama_event` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `nama_organisasi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sertifikat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `nama_event`, `nama_organisasi`, `sertifikat`, `created_at`, `updated_at`) VALUES
(1, 'afdsd', 'ada', 'err_1.png', '0000-00-00', '2021-03-10'),
(3, 'seminar internasional', 'uinsu', 'sertifikat.jpg', '2021-03-02', '2021-03-02'),
(4, 'seminar nasional', 'uinsu', 'sertifikat.jpg', '0000-00-00', '0000-00-00'),
(5, 'seminar TIK', 'uinsu', 'sertifikat1.jpg', '2021-03-02', '2021-03-02'),
(6, 'seminar kesehatan', 'usu', 'sertifikat.jpg', '2021-03-02', '2021-03-02'),
(7, 'dsfsfsffsfs', 'wefw', 'sertifikat1.jpg', '2021-03-02', '2021-03-02'),
(8, 'adsa', 'adsad', 'sertifikat.jpg', '2021-03-02', '2021-03-02'),
(9, 'seminar stik', 'uinsu', 'sertifikat1.jpg', '2021-03-03', '2021-03-03'),
(10, 'seminar Sosial', 'uinsu', 'sertifikat.jpg', '2021-03-04', '2021-03-04'),
(11, 'seminar English', 'USU', 'sertifikat1.jpg', '2021-03-04', '2021-03-04'),
(12, 'seminar cyber', 'UINSU', 'sertifikat.jpg', '2021-03-05', '2021-03-05'),
(13, 'ada', 'adad', 'sertifikat.jpg', '2021-03-05', '2021-03-05'),
(14, 'seminar olahraga', 'usu', 'sertifikat_1.jpg', '2021-03-05', '2021-03-13'),
(15, 'seminar go internasional', 'uin', 'error.png', '2021-03-05', '2021-03-05'),
(16, 'seminar proposal', 'UIN Sumatera Utara', 'sertifikat.jpg', '2021-03-08', '2021-03-08'),
(17, 'seminar security', 'USU', 'sertifikat1.jpg', '2021-03-08', '2021-03-08'),
(18, 'seminar internasional', 'usu', 'err.png', '2021-03-10', '2021-03-10'),
(19, 'asdaad', 'usus', 'sertifikat1_1.jpg', '2021-03-10', '2021-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1612020936, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik_sertifikat`
--

CREATE TABLE `pemilik_sertifikat` (
  `id` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `hash_value` varchar(255) NOT NULL,
  `qr_code` varchar(256) NOT NULL,
  `event_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `pemilik_sertifikat`
--

INSERT INTO `pemilik_sertifikat` (`id`, `nim`, `nama`, `email`, `no_hp`, `hash_value`, `qr_code`, `event_id`, `created_at`, `updated_at`) VALUES
(85, '0701162001', 'Rifki Mahsyaf Adha', 'rifki@gmail.com', '0875567655546', 'e0ad462fb6f5b61dd7366543f05ee493', 'jUvuLzSd', 11, '2021-03-15', '2021-03-23'),
(86, '0701162002', 'Muhammad Reza', 'reza@gmail.com', '0987656766767', '00fa8bd0aea930b9b2a91711d4e40344', 'Sjc5n0m3', 9, '2021-03-15', '2021-03-15'),
(87, '0701162019', 'Abdillah', 'abdil98@gmail.com', '087654616898', 'a7642d2ed30c7699f7e45a2f32a1fa10', 'dPQYEjJ7', 9, '2021-03-23', '2021-03-23'),
(88, '0701162009', 'Munawir Anas', 'Munawir@gmail.com', '087655437788', '4a14ddba00c8053af542645130d079f5', 'KCG6_Re9', 5, '2021-03-23', '2021-03-23'),
(89, '0701162008', 'Nilwan Ramadhan', 'Nilwan@gmail.com', '082287653546', '51c9586913e96d9664b36a10de87a72f', '_f5liLjE', 11, '2021-03-23', '2021-03-23'),
(90, '0701162010', 'Mahyudi', 'Mahyudi@gmail.com', '087765453647', '3891c9aee8108b9ea845c3cfbffeae2b', '0ISXeUiv', 6, '2021-03-23', '2021-03-23'),
(91, '0701162016', 'Juendi Baehaki', 'juendi@gmail.com', '085243566336', 'ef1eb49da96cd334a4a228f26f118007', 'fQ1aQOi0', 6, '2021-03-23', '2021-03-23'),
(92, '0701162018', 'Fahriza Fahmi', 'Fahriza@gmail.com', '085764748494', '48644c1428926ac27391832ead5c7856', '9VSfGS8I', 3, '2021-03-23', '2021-03-23'),
(94, '0701162012', 'Suci syahputri', 'suci@gmail.com', '082287653546', 'd110ebe85c8d401e0d882a6b51dcedc3', '9a2FANEZ', 9, '2021-03-23', '2021-03-23'),
(95, '0701162020', 'Fandi Ahmad', 'fandi9050@gmail.com', '085765433050', '02a0403954ec6b4ccfb2876de20f73f7', 'RGJ2aY41', 9, '2021-03-23', '2021-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'fandi9050@gmail.com', 'fandi', '$2y$10$bOiHjvzpVbXff5gR4PauOOj93IBNMlbsygcOgbU/K15vQMaVplXvK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-15 19:10:42', '2021-02-15 19:10:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemilik_sertifikat`
--
ALTER TABLE `pemilik_sertifikat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pemilik_sertifikat`
--
ALTER TABLE `pemilik_sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
