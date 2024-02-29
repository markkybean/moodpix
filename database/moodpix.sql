-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 12:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moodpix`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `created_at`, `updated_at`, `user_id`, `post_id`) VALUES
(4, 'test1', '2024-02-29 02:34:00', '2024-02-29 02:34:00', 1, 1),
(5, 'testing lang', '2024-02-29 02:35:30', '2024-02-29 02:35:30', 1, 1),
(6, 'dswd', '2024-02-29 02:37:17', '2024-02-29 02:37:17', 1, 1),
(7, 'bakit , gusto mo hampasin kita, ako si mean girl', '2024-02-29 03:33:37', '2024-02-29 03:33:37', 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_26_145515_create_posts_table', 1),
(7, '2024_02_29_093245_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Pigeon; \'but I must sugar my hair.\" As a duck with its tongue hanging out of his pocket, and pulled out a history of the baby?\' said the youth, \'one would hardly suppose That your eye was as long as.', '2024-02-29 02:12:02', '2024-02-29 02:12:02', 9),
(2, 'Alice, (she had kept a piece of evidence we\'ve heard yet,\' said the King; \'and don\'t be nervous, or I\'ll have you executed on the slate. \'Herald, read the accusation!\' said the Caterpillar took the.', '2024-02-29 02:12:02', '2024-02-29 02:12:02', 10),
(3, 'I\'m doubtful about the twentieth time that day. \'That PROVES his guilt,\' said the Duchess; \'I never went to work nibbling at the bottom of the conversation. Alice replied, so eagerly that the cause.', '2024-02-29 02:12:02', '2024-02-29 02:12:02', 1),
(4, 'Alice, who was talking. \'How CAN I have done that?\' she thought. \'I must be removed,\' said the Hatter. \'You MUST remember,\' remarked the King, the Queen, but she knew she had tired herself out with.', '2024-02-29 02:12:02', '2024-02-29 02:12:02', 4),
(5, 'Dormouse\'s place, and Alice thought to herself. \'Shy, they seem to have wondered at this, but at the bottom of a treacle-well--eh, stupid?\' \'But they were trying which word sounded best. Some of the.', '2024-02-29 02:12:02', '2024-02-29 02:12:02', 10),
(6, 'Eyes ka ba', '2024-02-29 03:32:36', '2024-02-29 03:32:36', 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', '2024-02-29 02:11:58', '$2y$12$sEGHK1zHuwfHWFc/InpeH./CSZ1Nb3.2bAuA737hIIhxZmTZCb24S', 'Hoh9DgcQPvtAkEXJezKrAcyMrxbSEH8yTj1r4xNNtwg8E3DmOTbmV7ZuZ70N', '2024-02-29 02:11:59', '2024-02-29 03:09:54'),
(2, 'Matteo Williamson', 'agerlach@yahoo.com', '2024-02-29 02:11:59', '$2y$12$NFyehC3VxlwhBSC16gqLM.viJYonf9i3g4i.Ev5FFE8feKReg53WG', 'ONcCH3h9uG', '2024-02-29 02:11:59', '2024-02-29 02:11:59'),
(3, 'Gayle White', 'pouros.blaise@satterfield.biz', '2024-02-29 02:11:59', '$2y$12$rodzEGbhlDx0WkgUZHf1EOOeweKfpPyUfKGOgHzFJZTHp.94q7DFq', 'AuUSUFZbYz', '2024-02-29 02:11:59', '2024-02-29 02:11:59'),
(4, 'Prof. Moshe Gaylord', 'jalyn.gutmann@satterfield.org', '2024-02-29 02:11:59', '$2y$12$nU.DThmWExItvcd6UEkFme1SbkYhqn1Y0vdCDBESelRE03MTnpPZG', 'UU0gbHfYJ3', '2024-02-29 02:11:59', '2024-02-29 02:11:59'),
(5, 'Clemmie Price', 'halvorson.helen@hotmail.com', '2024-02-29 02:12:00', '$2y$12$d4OJtYBL2Dn3Q/sj5ZOV8uzg2fK0RkX5a7NL6DDO/WMdDnipGqIoC', '2UGoDEDeir', '2024-02-29 02:12:00', '2024-02-29 02:12:00'),
(6, 'Odie McDermott', 'alfred46@yahoo.com', '2024-02-29 02:12:00', '$2y$12$nmX0gmG6CI.zdf042hPJBur5j4XOBiOZ89s/S3gKDAWoQdYTCNhSy', 'T39RK70EF7', '2024-02-29 02:12:00', '2024-02-29 02:12:00'),
(7, 'Hal Bergnaum', 'kcormier@gmail.com', '2024-02-29 02:12:00', '$2y$12$5jNlZWvYZWdhYMD0neUJweGQD7Sj1tFS1FcNDixjS5DRN09/1Pdle', 'wFSLEeMhLp', '2024-02-29 02:12:00', '2024-02-29 02:12:00'),
(8, 'Giovanni Schumm III', 'caterina.dicki@mueller.com', '2024-02-29 02:12:01', '$2y$12$8am3mhxw7esK4nCcjNeeTO4WlAmveA.0sT5cwOZvh.Rn.qMKolvdS', 'U9jXhNNvPw', '2024-02-29 02:12:01', '2024-02-29 02:12:01'),
(9, 'Elwyn Glover V', 'stehr.furman@hotmail.com', '2024-02-29 02:12:01', '$2y$12$Z0Uoo20heSiI.xOLlxY.oekUEdOcJvjtlX.taTYUxjXh/fBn7/mW6', 'g7X4n5ea6U', '2024-02-29 02:12:01', '2024-02-29 02:12:01'),
(10, 'Maurice Reichert', 'maureen.ondricka@kris.org', '2024-02-29 02:12:02', '$2y$12$JM2pvIvPnXjw42zOHJvBk.iLjAhxL6JQYpmuSpMv7jvxb5SaLeMcS', '57SQedeOI8', '2024-02-29 02:12:02', '2024-02-29 02:12:02'),
(11, 'Mark Santos', 'marksantos320@gmail.com', NULL, '$2y$12$z/Z31PSRasOIDuT2hUxyouJsGko93/3lTllH5aVObWfcrPCutlWRW', NULL, '2024-02-29 03:27:50', '2024-02-29 03:27:50'),
(12, 'Mariel Bagunas', 'marielbagunas@gmail.com', NULL, '$2y$12$LRwDjIngaq4e99ZlUxPOie7PouvRqufOkgCMBlD//92D.iFq8sCku', NULL, '2024-02-29 03:33:14', '2024-02-29 03:33:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
