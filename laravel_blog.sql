-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2024 at 09:47 AM
-- Server version: 10.8.4-MariaDB
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Marketing', 'marketing', '2024-01-31 19:54:56', '2024-01-31 19:54:56'),
(8, 'Make money', 'make-money', '2024-01-31 19:55:04', '2024-01-31 19:55:04');

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
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_01_28_103341_create_categories_table', 1),
(8, '2024_01_28_103434_create_tags_table', 1),
(9, '2024_01_28_103454_create_posts_table', 1),
(10, '2024_01_28_103621_create_post_tag_table', 1),
(11, '2024_01_29_162147_create_users_table', 2),
(12, '2024_02_03_130014_alter_table_posts_add_title_index', 3);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `category_id`, `views`, `thumbnail`, `created_at`, `updated_at`) VALUES
(6, 'You can learn how to make money with your blog and videos', 'you-can-learn-how-to-make-money-with-your-blog-and-videos', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, animi atque consectetur culpa deleniti doloremque, eum mollitia nam officiis pariatur quas reiciendis repellat reprehenderit sed soluta suscipit velit voluptatem voluptatum?</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, animi atque consectetur culpa deleniti doloremque, eum mollitia nam officiis pariatur quas reiciendis repellat reprehenderit sed soluta suscipit velit voluptatem voluptatum?</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, animi atque consectetur culpa deleniti doloremque, eum mollitia nam officiis pariatur quas reiciendis repellat reprehenderit sed soluta suscipit velit voluptatem voluptatum?</p>', 8, 2, 'images/2024-01-31/N5nQ40eKApiZuwMC8qNJhwv4WwU2ytNJde68IOtM.jpg', '2024-01-31 20:06:04', '2024-02-11 11:59:12'),
(7, 'The way to reach hundreds of thousands of customers is through the SEO', 'the-way-to-reach-hundreds-of-thousands-of-customers-is-through-the-seo', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet illo minus nobis quo. Aliquam beatae error iusto libero minus quo. Cupiditate fugiat incidunt iure numquam velit. Accusamus incidunt possimus totam.</p>', 7, 7, 'images/2024-02-01/QQzRsAqPD3QPtVD8HcfcbZAcJzckRPzzaz7b1Rwp.jpg', '2024-01-31 20:07:36', '2024-02-11 11:59:10'),
(8, 'Ways to reach the world through mobile phones', 'ways-to-reach-the-world-through-mobile-phones', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet illo minus nobis quo. Aliquam beatae error iusto libero minus quo. Cupiditate fugiat incidunt iure numquam velit. Accusamus incidunt possimus totam.</p>', 8, 1, 'images/2024-01-31/aLfD4zPwqqvGJMScQJri7watuL7mvpFtvLZTMoBC.jpg', '2024-01-31 20:08:09', '2024-02-01 11:27:37'),
(9, 'Would you like to work as a freelancer for lifetime?', 'would-you-like-to-work-as-a-freelancer-for-lifetime', '<p>Aenean interdum arcu blandit, vehicula magna non, placerat elit. Mauris et pharetratortor. Suspendissea sodales urna. In at augue elit. Vivamus enimcerat elicerat eli nibh, maximus ac felis nec, maximus tempor odio.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet illo minus nobis quo. Aliquam beatae error iusto libero minus quo. Cupiditate fugiat incidunt iure numquam velit. Accusamus incidunt possimus totam.</p>', 8, 15, 'images/2024-02-03/07LFnyXuRY3JrkeQ51ESlzIQI21I3x4wUrR3lOmU.png', '2024-01-31 20:08:40', '2024-02-11 11:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(10, 15, 6, '2024-01-31 20:06:04', '2024-01-31 20:06:04'),
(11, 16, 6, '2024-01-31 20:06:04', '2024-01-31 20:06:04'),
(12, 18, 6, '2024-01-31 20:06:04', '2024-01-31 20:06:04'),
(15, 18, 8, '2024-01-31 20:08:09', '2024-01-31 20:08:09'),
(16, 15, 9, '2024-01-31 20:08:40', '2024-01-31 20:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(14, 'Marketing', 'marketing', '2024-01-31 19:55:16', '2024-01-31 19:55:16'),
(15, 'SEO', 'seo', '2024-01-31 19:55:24', '2024-01-31 19:55:24'),
(16, 'Digital agency', 'digital-agency', '2024-01-31 19:55:35', '2024-01-31 19:55:35'),
(17, 'Blogging', 'blogging', '2024-01-31 19:55:42', '2024-01-31 19:55:42'),
(18, 'Video Tuts', 'video-tuts', '2024-01-31 19:55:55', '2024-01-31 19:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', NULL, '$2y$12$3MFfSMDQdh7D0wlBo3Q.beDTGX.R9AUYy5CB0WG1dtSlRTTP.C3z2', 1, NULL, '2024-01-29 13:36:35', '2024-01-29 13:36:35'),
(2, 'user1', 'user@mail.com', NULL, '$2y$12$3lvMqvvUy0EXGZ/aivz1PeyASbWh4Cvg1029ATiRGflp0/Qa0KAQe', 0, NULL, '2024-01-29 19:49:38', '2024-01-29 19:49:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_title_index` (`title`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
