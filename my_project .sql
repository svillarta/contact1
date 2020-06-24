-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2020 at 11:13 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `userId`, `name`, `company`, `email`, `phone`) VALUES
(1, 3, 'Sam', 'golog', 'sam@gmail.com', '09213364006'),
(2, 4, 'asdasd', 'Mayer-Jast', 'mjmontalban7@gmail.com', '2134234'),
(3, 4, 'dfgdfg', 'Mayer-Jast', 'samvillarta05@gmail.com', '234234'),
(4, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(5, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '242343'),
(6, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(7, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(8, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(9, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(10, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(11, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(12, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(13, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(14, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(15, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(16, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(17, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(18, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(19, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', ''),
(20, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '2134234'),
(21, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '342342'),
(22, 4, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '234234'),
(24, 4, 'asdasd;ldfkgh;flgkh;ljkfgh;lk1', 'Mayer-Jast', 'mjmontalban7@gmail.com', '+15948455534'),
(25, 8, 'Dr. Jaylin O\'Kon II', 'Mayer-Jast', 'mjmontalban7@gmail.com', '12345678990');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, '2020_06_17_061849_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(5, 'samuel', 'uwagan kaayu sa ka tanan', '2020-06-16 23:11:14', '2020-06-17 01:27:43'),
(10, 'create', 'laravel practice', '2020-06-17 01:05:00', '2020-06-17 01:23:33'),
(11, '#lolo', 'JOKe', '2020-06-17 01:23:19', '2020-06-17 01:26:21'),
(13, 'testing', 'HAHAHAHAHAHAAHAH', '2020-06-17 04:39:55', '2020-06-17 04:40:08'),
(16, 'bbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbbbbbbbbbb', '2020-06-18 06:17:11', '2020-06-18 06:17:11'),
(17, 'vvvvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvv', '2020-06-18 06:54:22', '2020-06-18 06:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$a7aDwh2TjV4sLELuXcXMgOzP8wGl5KPqs1GXtX7rALooM9vDJBXL.', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1592981392, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(3, '::1', 'samvillarta05@gmail.com', '$2y$10$/JJjfUXZ1qd43HIF7RK9x.GSUV4pcEKbPmsJbdwGdElZDngkXuN2S', 'samvillarta05@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1592980282, NULL, 1, 'Sam', NULL, NULL, NULL),
(4, '::1', 'mjmontalban744@gmail.com', '$2y$10$fKRcoeVdA.xSuGz23qOAzONlEZ9VM5ULaeL9rijIWKIjcWLQ/1Zvi', 'mjmontalban744@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1592984924, 1592984950, 1, 'mj', NULL, NULL, NULL),
(5, '::1', 'awdwad@g.com', '$2y$10$hioV30R/CAbiHy6lJuVNC.MJZig7fCdjTKG8YXvIKxPyLblYRXiUW', 'awdwad@g.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1592989323, NULL, 1, 'wewawad', NULL, NULL, NULL),
(6, '::1', 'awdwad123@g.com', '$2y$10$HPQs8yBNg2evSJI7dimRw.QhUFOPjx7qAzz.KAXPutobl0ILgF1Ee', 'awdwad123@g.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1592989402, NULL, 1, 'wewawad', NULL, NULL, NULL),
(7, '::1', 'asda@asdasd.com', '$2y$10$6/HSiFQNDvtZSlnf0d1HaOwLOj9bwHpeObKvVr8qG2N9fDabn8SHa', 'asda@asdasd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1592989692, NULL, 1, 'l;k;lk', NULL, NULL, NULL),
(8, '::1', 'villarta01@gmail.com', '$2y$10$SXrhXSF5opueREVUXJbl..jNCWuIR5pVUQvWBnasiIfz62jvUSN2m', 'villarta01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1592989785, 1592989805, 1, 'sam', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 3, 2),
(5, 4, 2),
(6, 5, 2),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
