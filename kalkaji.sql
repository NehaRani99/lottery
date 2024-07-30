-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 06:43 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kalkaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_admin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `time`, `update_time`, `is_admin`) VALUES
(1, 'admin@gmail.com', '1234', '2024-06-03 11:11:37', '2024-06-03 11:11:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `number` varchar(10) NOT NULL,
  `old_number` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `date`, `time`, `number`, `old_number`, `created_at`) VALUES
(56, '2024-06-23', '10:00:00', '68', '89', '2024-06-15 07:33:22'),
(57, '2024-06-23', '11:00:00', '67', '22', '2024-06-19 05:06:33'),
(59, '2024-06-23', '12:00:00', '23', '55', '2024-06-19 05:31:29'),
(61, '2024-06-23', '13:00:00', '89', '32', '2024-06-19 06:38:29'),
(62, '2024-06-23', '14:00:00', '90', '87', '2024-06-19 07:34:28'),
(63, '2024-06-23', '15:00:00', '90', '80', '2024-06-19 09:27:02'),
(64, '2024-06-23', '16:00:00', '12', '35', '2024-06-19 09:34:31'),
(65, '2024-06-23', '17:00:00', '23', '57', '2024-06-19 10:59:23'),
(81, '2024-06-23', '18:00:00', '33', '12', '2024-06-23 16:39:14'),
(82, '2024-06-23', '19:00:00', '12', '88', '2024-06-23 16:39:44'),
(83, '2024-06-23', '20:00:00', '12', '88', '2024-06-23 16:39:52'),
(84, '2024-06-23', '21:00:00', '12', '88', '2024-06-23 16:39:53'),
(85, '2024-06-23', '22:00:00', '12', '88', '2024-06-23 16:39:55'),
(86, '2024-06-23', '23:00:00', '12', '88', '2024-06-23 16:39:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
