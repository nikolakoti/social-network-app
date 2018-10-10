-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2018 at 10:12 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------


--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `accepted`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, NULL, NULL),
(2, 2, 3, 1, NULL, NULL),
(3, 3, 4, 1, NULL, NULL),
(4, 3, 5, 1, NULL, NULL),
(5, 3, 7, 1, NULL, NULL),
(6, 5, 6, 1, NULL, NULL),
(7, 5, 7, 1, NULL, NULL),
(8, 5, 10, 1, NULL, NULL),
(9, 5, 11, 1, NULL, NULL),
(10, 7, 8, 1, NULL, NULL),
(11, 7, 12, 1, NULL, NULL),
(12, 7, 20, 1, NULL, NULL),
(13, 9, 12, 1, NULL, NULL),
(14, 10, 11, 1, NULL, NULL),
(15, 11, 19, 1, NULL, NULL),
(16, 11, 20, 1, NULL, NULL),
(17, 12, 13, 1, NULL, NULL),
(18, 12, 20, 1, NULL, NULL),
(19, 13, 14, 1, NULL, NULL),
(20, 13, 20, 1, NULL, NULL),
(21, 14, 15, 1, NULL, NULL),
(22, 16, 18, 1, NULL, NULL),
(23, 16, 20, 1, NULL, NULL),
(24, 17, 18, 1, NULL, NULL),
(25, 17, 20, 1, NULL, NULL),
(26, 19, 20, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
