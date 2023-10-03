-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Oct 03, 2023 at 04:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raiseupdbbb`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `roleID` int(1) NOT NULL,
  `organization` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `username`, `email`, `password`, `roleID`, `organization`, `address`) VALUES
(1, 'saad', 'saad123', 'saad@gmail.com', '1234', 1, NULL, NULL),
(2, 'sakib', 'sakib75', 'sakib@gmail.com', '7575', 1, NULL, NULL),
(3, 'NGolo Kante', 'Kante', 'kante@chelsea.com', 'chelsea123', 2, NULL, NULL),
(5, 'NRG Ardiis', 'ardiis', 'ardiis@nrg.com', 'ardiis123', 1, NULL, NULL),
(7, 'Drich', 'admin', 'admin@raiseup.com', 'admin123', 3, '', ''),
(8, 'johnathon trott', 'john', 'john@testing.com', 'john123', 1, NULL, NULL),
(10, 'Sen ', 'tenz', 't@sentinels.com', 'tenz123', 1, NULL, NULL),
(12, 'Loud ', 'aspas', 'aspas@loud.com', 'aspas123', 2, NULL, NULL),
(13, 'XYZ', 'xyz', 'zy@theoffice.com', 'xyz123', 1, NULL, NULL),
(14, 'after image', 'aft', 'aft@gmail.com', '123', 1, NULL, NULL),
(15, 'trialname', 'trials', 'trial@trial.com', 'trial123', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `roles` (`roleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
