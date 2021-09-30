-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 10:49 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databaseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-09-30-184834', 'App\\Database\\Migrations\\Posts', 'default', 'App', 1633029849, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(150) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `judul`, `deskripsi`, `gambar`, `author`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Enim adipisci vel.', 'Nihil ipsa vel voluptas nihil sit laboriosam. Corrupti atque ullam aut ea. Omnis sapiente dolores at nemo reiciendis modi qui. Tenetur voluptatem possimus consequuntur est veritatis.', NULL, 'Isaias Aufderhar', 'nature', 'quam-ut-eveniet-exercitationem-delectus', '2021-09-30 15:27:28', '2021-09-30 15:27:28'),
(2, 'Expedita quasi cum.', 'Sequi magni ex eius quia aut temporibus quod. Eligendi eum minus suscipit vitae illum et nemo. Assumenda aliquid vel fugit nihil cupiditate dolores sunt. Minima delectus aliquam et est.', NULL, 'Levi Klein DDS', 'programming', 'fugiat-sunt-sequi-omnis', '2021-09-30 15:27:28', '2021-09-30 15:27:28'),
(3, 'Sunt dolores non.', 'Enim excepturi dolores dolorem ratione voluptas minus non quisquam. Voluptas reiciendis minus ipsum eos odit est quae. Voluptas et distinctio voluptate soluta repellendus numquam.', NULL, 'Elta Doyle', 'cat', 'sint-qui-eum', '2021-09-30 15:27:28', '2021-09-30 15:27:28'),
(4, 'Fuga quidem reiciendis quasi similique.', 'Qui soluta animi pariatur temporibus exercitationem. Voluptatem est deserunt minima saepe. Quasi quia non nam beatae fugiat. Quos vel qui non rerum.', NULL, 'Neha Kessler', 'sport', 'rem-quis', '2021-09-30 15:27:28', '2021-09-30 15:27:28'),
(5, 'Molestias dolor totam.', 'Dicta ex et eos similique ipsa. Possimus omnis doloremque rerum.', NULL, 'Elbert Reichert', 'lifestyle', 'qui-est-adipisci-veritatis', '2021-09-30 15:27:28', '2021-09-30 15:27:28'),
(6, 'Alias similique ut inventore.', 'Ipsa quasi sint cum quia dolor necessitatibus. Eos saepe mollitia voluptate cupiditate eaque enim ipsa. Non odio excepturi fugiat corrupti voluptatem explicabo.', NULL, 'Miss Tanya Schimmel IV', 'food', 'esse-quis-ut', '2021-09-30 15:27:28', '2021-09-30 15:27:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
