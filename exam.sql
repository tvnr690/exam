-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 03:28 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonebook`
--

INSERT INTO `phonebook` (`id`, `name`, `phone`, `address`, `created_at`) VALUES
(1, 'venkat reddy', '8790010929', 'DArsi', '2019-08-28 12:49:27'),
(2, 'Rebecca Simoneau', '4155245674', '1529 Harrison Street', '2019-08-28 12:55:07'),
(3, 'Narayana Reddy', '8798855555', 'hyderabad', '2019-08-28 12:55:38'),
(4, 'Name', '98763210', 'BM', '2019-08-28 12:57:34'),
(5, 'Rebecca Simoneau', '4155245674', 'svndkdskjnsn', '2019-08-28 13:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`) VALUES
(1, 'Test', 'venkat.tumu1995@gmail.com', '1278888', '$2y$10$vL6v/0aU1K3X4znW7W/ecOTR4eIhcm356VACeO6FUgx0ZVBYznada', '2019-08-28 12:02:08'),
(2, 'T Venkata Narayana', 'tvnr690@gmail.com', '8790010929', '$2y$10$n1o/3yAqq5n9M2HLmdfY9..7SKx4NA1oU.hZ.MK/zEq9cIsrnhPGC', '2019-08-28 12:24:24'),
(3, 'venkat reddy', 'test@gmail.com', '123456789', '$2y$10$XrTRX0OYrFoIFowmmSwdie8dVDDfh/B9fxcgnryQ.ui4ya4qjs0om', '2019-08-28 12:29:54'),
(4, 'Adarsh', 'adarsh@mitiweb.com', '9876543210', '$2y$10$mk6mk3I4K9l11uVnkCZvT.GURyC1ePypfIr18o1n6P2JCUA5IGY1.', '2019-08-28 12:31:25'),
(5, 'test566', 'test666@gmail.com', '88888888', '$2y$10$fbPv4ey19WqMPP5n6pfCLOP0mpXuAywztUpA6H.Ew0HWJJs1f1icS', '2019-08-28 13:25:59'),
(6, 'Rebecca Simoneau', 'super@admin.com', '4155245674', '$2y$10$mpXsj3dsfl6Ith19qTbkROsBBAmrrxuG72J0rCWMFKtsfy/uQCBsy', '2019-08-28 13:27:43'),
(7, 'Rebecca Simoneau', 'vnr.tumu@gmail.com', '4155245674', '$2y$10$FZ175tmC7InopZp5w5Wt2uLcesYv2sWbfckjbdn/sOz79SiPbTcoe', '2019-08-28 13:28:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
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
-- AUTO_INCREMENT for table `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
