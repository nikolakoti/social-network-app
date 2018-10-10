-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2018 at 10:15 AM
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `age`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Paul', 'Crowe', 28, 'male', NULL, NULL),
(2, 'Rob', 'Fitz', 23, 'male', NULL, NULL),
(3, 'Ben', 'OCarolan', NULL, 'male', NULL, NULL),
(4, 'Victor', 'Jefferson', 28, 'male', NULL, NULL),
(5, 'Peter', 'Mac', 29, 'male', NULL, NULL),
(6, 'John', 'Barry', 18, 'male', NULL, NULL),
(7, 'Sarah', 'Lane', 30, 'female', NULL, NULL),
(8, 'Susan', 'Downe', 28, 'female', NULL, NULL),
(9, 'Jack', 'Stam', 28, 'male', NULL, NULL),
(10, 'Amy', 'Lane', 24, 'female', NULL, NULL),
(11, 'Sandra', 'Phelan', 28, 'female', NULL, NULL),
(12, 'Laura', 'Murphy', 33, 'female', NULL, NULL),
(13, 'Lisa', 'Daly', 28, 'female', NULL, NULL),
(14, 'Mark', 'Johnson', 28, 'male', NULL, NULL),
(15, 'Seamus', 'Crowe', 24, 'male', NULL, NULL),
(16, 'Daren', 'Slater', 28, 'male', NULL, NULL),
(17, 'Dara', 'Zoltan', 48, 'male', NULL, NULL),
(18, 'Marie', 'D', 28, 'female', NULL, NULL),
(19, 'Catriona', 'Long', 28, 'female', NULL, NULL),
(20, 'Kathy', 'Couch', 28, 'female', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
