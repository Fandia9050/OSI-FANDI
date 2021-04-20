-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 07:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
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
(44, '0.0.0.0', 'fandi', NULL, '2021-03-13 19:58:56', 0),
(45, '0.0.0.0', 'fandi', NULL, '2021-03-13 20:16:24', 0),
(46, '0.0.0.0', 'fandi', NULL, '2021-03-13 20:17:01', 0),
(47, '0.0.0.0', 'fandi', NULL, '2021-03-13 20:17:16', 0),
(48, '0.0.0.0', 'fandi9050@gmail.com', 14, '2021-03-13 20:44:59', 1),
(49, '0.0.0.0', 'admin', NULL, '2021-03-29 09:01:04', 0),
(50, '0.0.0.0', 'fandi9050@gmail.com', 14, '2021-03-29 09:01:49', 1),
(51, '0.0.0.0', 'fandi9050@gmail.com', 14, '2021-04-19 22:48:19', 1),
(52, '0.0.0.0', 'fandi', NULL, '2021-04-19 23:22:21', 0),
(53, '0.0.0.0', 'admin@gmail.com', 15, '2021-04-19 23:29:25', 1);

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
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
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
(1, 'seminar nasional', 'uinsu', '', '0000-00-00', '0000-00-00'),
(3, 'seminar internasional', 'uinsu', '', '2021-03-02', '2021-03-02'),
(4, 'seminar nasional', 'uinsu', '', '0000-00-00', '0000-00-00'),
(5, 'seminar TIK', 'uinsu', '', '2021-03-02', '2021-03-02'),
(6, 'seminar kesehatan', 'usu', '', '2021-03-02', '2021-03-02'),
(7, 'dsfsfsffsfs', 'wefw', '', '2021-03-02', '2021-03-02'),
(8, 'adsa', 'adsad', '', '2021-03-02', '2021-03-02'),
(9, 'seminar stik', 'uinsu', '', '2021-03-03', '2021-03-03'),
(10, 'seminar Sosial', 'uinsu', '', '2021-03-04', '2021-03-04'),
(11, 'seminar English', 'USU', '', '2021-03-04', '2021-03-04'),
(12, 'seminar cyber', 'UINSU', '', '2021-03-05', '2021-03-05'),
(13, 'ada', 'adad', '', '2021-03-05', '2021-03-05'),
(14, 'ada', 'dada', '', '2021-03-05', '2021-03-05'),
(15, 'seminar go internasional', 'uin', 'error.png', '2021-03-05', '2021-03-05'),
(16, 'seminar proposal', 'UIN Sumatera Utara', 'sertifikat.jpg', '2021-03-08', '2021-03-08'),
(17, 'seminar security', 'USU', 'sertifikat1.jpg', '2021-03-08', '2021-03-08');

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
(3, 'rifki', 'rifki', 'rifki@gmail.com', '98768u', '2a5c4c5a5ba1c332279685ddec507cd9', '', 1, '2021-02-01', '2021-02-01'),
(4, '0701162019', 'abdil', 'abdil@gmail.com', '08766554567', 'a7642d2ed30c7699f7e45a2f32a1fa10', '', 3, '2021-02-01', '2021-02-01'),
(5, '0701162018', 'wendi', 'wendi@gmail.com', '09897876', '48644c1428926ac27391832ead5c7856', '', 4, '2021-02-01', '2021-02-01'),
(6, 'reza', 'reza', 'reza@gmail.com', '9087890090', 'bb98b1d0b523d5e783f931550d7702b6', '', 1, '2021-02-01', '2021-02-01'),
(7, 'jnajsdna', 'jundewndes', 'jndesjnw@gmail.com', 'dihwuehduhw', '766ecc319cec8675344ae54597cf372d', '', 3, '2021-02-01', '2021-02-01'),
(8, 'jdsnjs', 'cnsdjncsj', 'djncjn@gmail.com', 'cuhsush', '9881b6a4b7d9bcea1857c9f5cbc879c4', '', 4, '2021-02-01', '2021-02-01'),
(9, 'sjdnjand', 'dksmckmsd', 'cnscjnsj@gmail.com', 'cshuchs', '53b4c181d383ab7384ecb23408f8461a', '', 3, '2021-02-01', '2021-02-01'),
(65, '0987654356', 'fandi', 'fandi9050@gmail.com', '08987666789', 'ba011a50e6c985c2419598cac67fbca1', '', 9, '2021-03-04', '2021-03-04'),
(66, '98796758', 'fandi', 'fandi9050@gmail.com', 'r353454353', '42f762f55dbcc0f3c8c49a8d928b523e', '', 17, '2021-03-08', '2021-03-08'),
(67, 'esgsggegegeg', 'jhjbhb', 'njnsjs@gmail.com', '08743093', '29a2e795f282a84057dff32fb96522f4', '', 1, '2021-03-10', '2021-03-10'),
(74, '', '', '', '', '', 'qr_8.png', 0, '2021-03-10', '2021-03-10'),
(75, '', '', '', '', '', 'qr_9.png', 0, '2021-03-10', '2021-03-10'),
(76, '', '', '', '', '', 'qr_10.png', 0, '2021-03-10', '2021-03-10'),
(77, '', '', '', '', '', 'qr_11.png', 0, '2021-03-10', '2021-03-10'),
(78, '', '', '', '', '', 'qr_12.png', 0, '2021-03-10', '2021-03-10'),
(79, '', '', '', '', '', 'qr_13.png', 0, '2021-03-10', '2021-03-10'),
(80, '', '', '', '', '', 'qr_14.png', 0, '2021-03-10', '2021-03-10'),
(81, '', '', '', '', '', 'qr_15.png', 0, '2021-03-10', '2021-03-10'),
(82, '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 1, '2021-03-13', '2021-03-13');

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
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 'fandi9050@gmail.com', 'fandi', '$2y$10$nPiziXKwkUsguvb6cg8nxejKeokyDry.ogzzwFOGh0n/pwfwyLt6W', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-13 20:44:20', '2021-03-13 20:44:20', NULL),
(15, 'admin@gmail.com', 'admin', '$2y$10$zfzNqbLk8NXUAJ2AnTOQS.DUDVkMegf3T2FWp0kWPnqjnV2qUqia2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-04-19 23:28:51', '2021-04-19 23:28:51', NULL);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pemilik_sertifikat`
--
ALTER TABLE `pemilik_sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
