-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 03:24 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveller`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `lokasi` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(12) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `foto`, `title`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'shutterstock_716559922.jpg              ', 'Mandalika, Nusa Tenggara Barat', 'Untuk menarik perhatian dunia, pemerintah tengah membangun resort dan infrastruktur lainnya. Bahkan kecantikan pantai-pantainya nggak kalah menarik dengan yang ada di Bali.                                                 ', '2020-04-25 22:16:29', '2020-04-25 22:16:29', '2020-04-25 22:16:29'),
(2, 'Sunrise-at-Peucang-Island-Ujung-Kulon-National-Park-Banten-Indonesia-Image.jpg', 'Pulau Peucang, Banten', 'Teman Traveler sudah pernah berkunjung ke Taman Nasional Ujung Kulon? Nah!', '2020-04-25 22:31:47', '2020-04-25 22:31:47', '2020-04-25 22:31:47'),
(3, 'shutterstock_98778623.jpg', 'Kepulauan Seribu, DKI Jakarta', 'Terletak di bagian utara Jakarta, Kepulauan Seribu seperti surga berjarak dekat yang bisa dikunjungi warga ibu kota saat penat.', '2020-04-25 23:08:18', '2020-04-25 23:08:18', '2020-04-25 23:08:18'),
(4, '60-Tempat-Wisata-di-Indonesia-yang-Bikin-Tambah-Bangga-4.jpg', 'Nusa Dua, Bali', 'Masih di Bali ada destinasi wisata lainnya yang tidak kalah eksotis, yakni Nusa Dua.', '2020-04-25 23:08:58', '2020-04-25 23:08:58', '2020-04-25 23:08:58'),
(5, '60-Tempat-Wisata-di-Indonesia-yang-Bikin-Tambah-Bangga-5.jpg\"', 'Taman Nasional Gunung Kelimutu, Flores, Nusa Tenggara Timur', 'Dari Pulau Dewata kita melipir ke Nusa Tenggara Timur (NTT).', '2020-04-25 23:09:40', '2020-04-25 23:09:40', '2020-04-25 23:09:40'),
(6, 'rajam.jpg', 'Taman Nasional Raja Ampat, Papua', 'Raja Ampat sendiri merupakan nama yang diberikan bagi keempat pulau indah yang berasal dari mitos lokal, yaitu Waigeo, Salawati, Batanta, dan Misool.', '2020-04-25 23:10:56', '2020-04-25 23:10:56', '2020-04-25 23:10:56'),
(7, 'Gunung-Bromo-Jawa-Timur-300x169.jpg', 'Gunung Bromo', 'Gunung Bromo adalah Gunung paling populer di kalangan wisatawan mancanegara maupun domestik.', '2020-04-25 23:32:59', '2020-04-25 23:32:59', '2020-04-25 23:32:59'),
(8, 'Danau-Toba-Sumatera-Utara-300x167.jpg', 'Danau Toba', 'Danau Toba adalah salah satu Danau yang terkenal di Indonesia. Danau Toba terletak di Sumatera Utara.', '2020-04-25 23:33:44', '2020-04-25 23:33:44', '2020-04-25 23:33:44'),
(9, 'Pulaukomodo.jpg', 'Taman Nasional Pulau Komodo', 'Wisata yang sudah terkenal di mata dunia ini, menampilkan keunikan yang tidak dimiliki pulau lain. Maka dari itu, bertemu dengan reptil langka ini menjadi momen yang harus dibanggakan.', '2020-04-25 23:34:22', '2020-04-25 23:34:22', '2020-04-25 23:34:22'),
(10, 'shutterstock_719684647.jpg', 'Candi Pramabanan', 'Prambanan adalah sebuah kompleks candi Hindhu dari era keemasan Kerajaan Mataram. Mereka sempat menguasai wilayah Jawa bagian tengah dan menaklukkan Dinasti Sailendra.', '2020-04-25 23:34:59', '2020-04-25 23:34:59', '2020-04-25 23:34:59'),
(11, 'shutterstock_555758284.jpg', 'Candi Borobudur', 'Beberapa Wisata sejarah yang sudah tak asing lagi di telinga adalah Candi Borobudur yang terletak di Magelang. Relief yang begitu unik dan jumlah candi yang tak sedikit selalu membuat siapa saja yang datang dibuat penasaran.', '2020-04-25 23:35:36', '2020-04-25 23:35:36', '2020-04-25 23:35:36'),
(12, 'Blue-Fire-di-Kawah-Ijen-via-Shutterstock.jpg', 'Blue Fire di Kawah Ijen', 'Jika Lombok memang dikenal akan keindahan gili-gilinya, Mandalika juga nggak mau kalah. Untuk menarik perhatian dunia, pemerintah tengah membangun resort dan infrastruktur lainnya.', '2020-04-25 23:36:53', '2020-04-25 23:36:53', '2020-04-25 23:36:53'),
(13, 'Nusa-lembongan-seaweed-farming-in-Bali-Indonesia.jpg', 'Nusa lembongan seaweed farming, Bali', 'Teman Traveler sudah pernah berkunjung ke Taman Nasional Ujung Kulon? Nah! Pulau Peucang berada di bagian timur kawasan tersebut! Bukan main-main, pulau ini sudah ditetapkan menjadi salah satu situs warisan budaya UNESCO lho!', '2020-04-25 23:37:28', '2020-04-25 23:37:28', '2020-04-25 23:37:28'),
(14, 'Gereja-Ayam-via-Shutterstock.jpg', 'Gereja Ayam', 'Terletak di bagian utara Jakarta, Kepulauan Seribu seperti surga berjarak dekat yang bisa dikunjungi warga ibu kota saat penat.', '2020-04-25 23:38:33', '2020-04-25 23:38:33', '2020-04-25 23:38:33'),
(15, 'Gunung-Tangkuban-Perahu-2.jpg', 'Gunung Tangkuban Perahu', 'Masih di Bali ada destinasi wisata lainnya yang tidak kalah eksotis, yakni Nusa Dua.', '2020-04-25 23:39:23', '2020-04-25 23:39:23', '2020-04-25 23:39:23'),
(16, 'Istana-Anak-Anak-Playcentre-in-Taman-Mini-Indonesia-Park..jpg', 'Istana Anak Playcentre', 'Dari Pulau Dewata kita melipir ke Nusa Tenggara Timur (NTT). Wilayah ini juga menawarkan beragam destinasi wisata yang memesona, tidak kalah dengan destinasi lainnya di Indonesia.', '2020-04-25 23:40:02', '2020-04-25 23:40:02', '2020-04-25 23:40:02'),
(17, 'Pulau-Maratua-di-Kepulauan-Derawan-via-Shutterstock.jpg', 'Pulau Maratua, Kepulauan Derawan', 'Dari Pulau Dewata kita melipir ke Nusa Tenggara Timur (NTT). Wilayah ini juga menawarkan beragam destinasi wisata yang memesona, tidak kalah dengan destinasi lainnya di Indonesia.', '2020-04-25 23:40:35', '2020-04-25 23:40:35', '2020-04-25 23:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DINA SEPTIANA', '$2y$10$RdnXu8sbcTje8YaDyEWIEe1lA9qzhuHyxhwQlrU0bHq6TBwwM7pmi', '2020-04-05 03:49:25', '2020-04-05 03:49:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
