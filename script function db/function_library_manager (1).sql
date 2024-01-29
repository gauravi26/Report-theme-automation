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
-- Table structure for table `function_library_manager`
--

CREATE TABLE IF NOT EXISTS `function_library_manager` (
`id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `enforcement_date_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `expiry_datetime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_id` varchar(11) NOT NULL,
  `view_access_id` varchar(100) NOT NULL,
  `original_filename` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `function_library_manager`
--
ALTER TABLE `function_library_manager`
 ADD PRIMARY KEY (`id`), ADD KEY `function_id` (`function_id`,`category_id`,`subcategory_id`,`status`,`group_id`), ADD KEY `category_id` (`category_id`), ADD KEY `subcategory_id` (`subcategory_id`), ADD KEY `status` (`status`), ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `function_library_manager`
--
ALTER TABLE `function_library_manager`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
