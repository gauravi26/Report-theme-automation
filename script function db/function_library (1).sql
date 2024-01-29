-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 06:50 AM
-- Server version: 5.6.23
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swayam_prabha_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `function_library`
--

CREATE TABLE IF NOT EXISTS `function_library` (
`id` int(11) NOT NULL,
  `function_name` varchar(500) NOT NULL,
  `function_description` text NOT NULL,
  `syntax` varchar(100) NOT NULL,
  `class_name` varchar(200) NOT NULL,
  `parameter_description` text NOT NULL,
  `return_type` int(11) NOT NULL,
  `function_type` int(11) NOT NULL,
  `button_function` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `function_library`
--
ALTER TABLE `function_library`
 ADD UNIQUE KEY `id` (`id`), ADD KEY `function_type` (`function_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `function_library`
--
ALTER TABLE `function_library`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=601;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `function_library`
--
ALTER TABLE `function_library`
ADD CONSTRAINT `function_library_ibfk_1` FOREIGN KEY (`function_type`) REFERENCES `function_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
