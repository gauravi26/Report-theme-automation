-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 12:23 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_forms`
--

CREATE TABLE `application_forms` (
  `id` int(11) NOT NULL,
  `menu_form` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_forms`
--

INSERT INTO `application_forms` (`id`, `menu_form`, `controller`, `action`) VALUES
(1, 'Faculty', 'faculty', 'create'),
(2, 'Departments', 'departments', 'create'),
(3, 'Courses', 'courses', 'create'),
(4, 'Student_Information', 'studentInformation', 'create'),
(5, 'Themes ', 'themes', 'index'),
(6, 'Course Type', 'courseType', 'create'),
(7, 'Customize Theme ', '', ''),
(8, 'Set Form Theme', '', ''),
(9, 'Effect', 'effects', 'create'),
(10, 'Test Report', 'faculty', 'testReport'),
(11, 'Report', 'report', 'testReport'),
(12, 'Data table', 'tabletheme', 'manage'),
(13, 'report create form', 'report', 'create'),
(14, 'Demo report', 'reportThemeMapping', 'testReport'),
(15, 'Sudent Report', 'studentInformation', 'testReport'),
(16, 'Themes of Report', 'themeForReport', 'reportTestTheme'),
(17, 'Student Dynamic Report', 'studentinformation', 'reportTest'),
(18, 'Course Report', 'courses', 'reportTest');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_link` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_link`, `department_id`, `course_type_id`) VALUES
(3, 'B.ScE', 'www.science.com ', 5, 5),
(7, 'Btech', 'www.flipkart.com', 4, 5),
(13, 'B.com', 'www.abc.com ', 7, 6),
(14, 'B.com', 'www.xyz.com ', 5, 9),
(15, 'M.tech', 'www.amazon.com', 3, 6),
(16, 'Bio', 'www.fisnv', 118, 5);

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE `course_type` (
  `id` int(11) NOT NULL,
  `course_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`id`, `course_type`) VALUES
(9, '12th'),
(6, 'PG'),
(7, 'PhD'),
(5, 'UG');

-- --------------------------------------------------------

--
-- Table structure for table `css_properties`
--

CREATE TABLE `css_properties` (
  `id` int(11) NOT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `property_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `css_properties`
--

INSERT INTO `css_properties` (`id`, `property_name`, `property_value`) VALUES
(0, NULL, NULL),
(1, 'background-color', '#FFF'),
(2, 'font-size', '14px'),
(3, 'color', '#000'),
(4, 'border', '1px solid #DDD'),
(5, 'margin', '15px 15px 15px 15px'),
(6, 'padding', '15px 20px 15px 20px'),
(7, 'border-radius', '7px'),
(8, 'display', 'inline-block'),
(9, 'margin-right', '10px'),
(10, 'float', 'left'),
(11, 'position', 'relative'),
(12, 'text-align', 'left'),
(13, 'width', '100%'),
(16, 'border-color', '#C00'),
(17, 'background', '#FEE'),
(18, 'font-weight', 'bold'),
(19, 'max-width', '#C00'),
(20, 'border-color', '#C6D880'),
(21, 'height', NULL),
(22, 'box-sizing', NULL),
(23, 'font-style', NULL),
(24, 'clear', NULL),
(25, 'text-decoration', NULL),
(26, 'box-shadow', NULL),
(27, 'opacity', NULL),
(28, 'transition-property', NULL),
(29, 'transition-duration', NULL),
(30, 'transition-timing-function', NULL),
(31, 'resize', NULL),
(32, 'grid', NULL),
(33, 'grid-template-columns', NULL),
(34, 'grid-gap', NULL),
(35, 'justify-content', NULL),
(36, 'align-items', NULL),
(37, 'font-family', NULL),
(38, 'grid-column', NULL),
(39, 'border-collapse', NULL),
(40, 'border-spacing', NULL),
(41, 'margin-top', NULL),
(42, 'empty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

CREATE TABLE `current_theme` (
  `id` int(11) NOT NULL,
  `theme_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `theme_ID`) VALUES
(1, 121);

-- --------------------------------------------------------

--
-- Table structure for table `custom_page_properties`
--

CREATE TABLE `custom_page_properties` (
  `id` int(11) NOT NULL,
  `application_forms_id` int(11) NOT NULL,
  `element` varchar(255) NOT NULL,
  `css_properties` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_page_properties`
--

INSERT INTO `custom_page_properties` (`id`, `application_forms_id`, `element`, `css_properties`, `value`) VALUES
(1, 2, 'h1', 'color', 'green'),
(2, 2, 'h1', 'font-size', '30px'),
(6, 2, 'body', 'color', 'blue'),
(7, 2, 'body', 'font-size', '12'),
(8, 2, 'body', 'background-color', 'coral');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_code`, `department_name`, `department_desc`) VALUES
(3, '001', 'CSE', 'ABCD'),
(4, '002', 'ETC', 'Electronics '),
(5, '345', 'Civil', 'erty'),
(6, '678', '123', 'qwer'),
(7, '004', 'Commerce ', 'Business'),
(118, '777', 'Food Technology', 'Farm and Food '),
(119, '564', 'Sports', 'Health and Body '),
(120, '3456', 'Sports', 'Health and Body '),
(121, '48538', 'Biotech ', 'Micro-orgranizms'),
(122, '23892u', 'Phy', 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `effects`
--

CREATE TABLE `effects` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `trigger_id` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `effect_code_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `effects`
--

INSERT INTO `effects` (`id`, `form_id`, `trigger_id`, `FIELD_ID`, `effect_code_id`) VALUES
(1, 2, 0, 4, 'blink'),
(2, 2, 0, 1, 'shake'),
(3, 1, 0, 13, 'blink'),
(4, 2, 0, 4, '3'),
(5, 2, 0, 4, '3'),
(6, 2, 0, 4, '3'),
(7, 2, 0, 4, '3'),
(8, 2, 0, 4, '3'),
(9, 2, 0, 4, '3'),
(10, 2, 0, 4, '3'),
(11, 2, 0, 4, '3'),
(12, 2, 0, 4, '3'),
(13, 2, 0, 4, '3'),
(14, 2, 0, 4, '3'),
(15, 2, 0, 4, '3'),
(16, 2, 0, 4, '3'),
(17, 2, 0, 4, '3'),
(18, 2, 0, 4, '3'),
(19, 2, 0, 4, '3'),
(20, 2, 0, 4, '3'),
(21, 2, 0, 4, '3'),
(22, 2, 0, 4, '3'),
(23, 2, 0, 4, '3'),
(24, 2, 0, 4, '3'),
(25, 1, 0, 22, '1'),
(26, 3, 0, 12, '4'),
(27, 4, 0, 39, '2'),
(28, 4, 0, 39, '2'),
(29, 4, 0, 23, '2'),
(30, 4, 0, 23, '2'),
(31, 6, 0, 9, '1'),
(32, 6, 0, 9, '1'),
(33, 6, 0, 9, '1'),
(34, 6, 0, 9, '1'),
(35, 1, 0, 25, '1'),
(36, 1, 0, 25, '1'),
(37, 1, 0, 25, '1'),
(38, 1, 0, 25, '1'),
(39, 1, 0, 25, '1'),
(40, 1, 0, 25, '1'),
(41, 1, 0, 25, '1'),
(42, 1, 0, 25, '1'),
(43, 1, 0, 25, '1'),
(44, 1, 0, 25, '3'),
(45, 3, 0, 11, '3'),
(46, 3, 0, 11, '3'),
(47, 3, 0, 11, '3'),
(48, 3, 0, 11, '3'),
(49, 3, 0, 11, '3'),
(50, 3, 0, 11, '3'),
(51, 3, 0, 10, '2'),
(52, 1, 0, 19, '3'),
(53, 3, 0, 9, '3'),
(54, 2, 0, 4, '3'),
(55, 1, 0, 22, '4'),
(56, 4, 0, 33, '3'),
(57, 4, 0, 33, '3'),
(58, 4, 0, 33, '3'),
(59, 4, 0, 33, '3'),
(60, 4, 0, 33, '3'),
(61, 4, 0, 33, '3'),
(62, 4, 0, 39, '3'),
(63, 4, 0, 39, '3'),
(64, 4, 0, 39, '3'),
(65, 4, 0, 39, '3'),
(66, 4, 0, 39, '3'),
(67, 2, 0, 2, '3'),
(68, 2, 0, 2, '3'),
(69, 2, 0, 2, '3'),
(70, 2, 0, 2, '3'),
(71, 6, 0, 31, '1'),
(72, 6, 0, 31, '1'),
(73, 6, 0, 31, '1'),
(74, 6, 0, 31, '1'),
(75, 6, 0, 31, '1'),
(76, 6, 0, 31, '1'),
(77, 6, 0, 31, '1'),
(78, 1, 0, 16, '1'),
(79, 1, 0, 18, '3'),
(80, 1, 0, 16, '3'),
(83, 2, 0, 4, '4'),
(84, 2, 0, 4, '4'),
(86, 1, 0, 18, '1'),
(87, 2, 0, 2, '3'),
(89, 2, 0, 3, '3'),
(90, 2, 0, 3, '3'),
(92, 4, 0, 33, '3'),
(93, 4, 0, 33, '3'),
(95, 1, 0, 18, '3'),
(96, 4, 0, 33, '3'),
(97, 2, 0, 3, '3'),
(98, 2, 0, 3, '3'),
(99, 1, 0, 15, '3'),
(100, 1, 0, 15, '3'),
(101, 1, 0, 15, '3'),
(102, 2, 0, 17, '1'),
(103, 1, 0, 17, '1'),
(104, 1, 0, 17, '1'),
(105, 3, 0, 8, '1'),
(106, 3, 0, 8, '1'),
(107, 2, 0, 1, '4'),
(108, 1, 0, 14, '4'),
(109, 1, 0, 20, '4'),
(110, 1, 0, 20, '4'),
(111, 2, 0, 2, '1'),
(112, 2, 0, 2, '1'),
(113, 3, 0, 12, '1'),
(114, 3, 0, 12, '1'),
(115, 3, 0, 12, '1'),
(116, 1, 0, 14, '3'),
(117, 1, 0, 14, '3'),
(118, 3, 0, 8, '3'),
(119, 1, 0, 18, '3'),
(120, 1, 0, 18, '3'),
(121, 3, 0, 9, '3'),
(122, 3, 0, 9, '3'),
(123, 6, 0, 31, '3'),
(124, 3, 0, 8, '3'),
(125, 3, 0, 8, '3'),
(126, 3, 0, 8, '3'),
(127, 3, 0, 8, '3'),
(128, 2, 0, 2, '3'),
(129, 1, 0, 14, '3'),
(130, 1, 0, 14, '3'),
(131, 4, 0, 28, '3'),
(132, 4, 0, 39, '1'),
(133, 4, 0, 39, '1'),
(134, 4, 0, 39, '1'),
(135, 1, 0, 22, '4'),
(136, 1, 0, 15, '3'),
(137, 1, 0, 15, '3'),
(138, 2, 0, 4, '1'),
(139, 2, 0, 1, '1'),
(140, 2, 0, 1, '1'),
(141, 2, 0, 1, '1'),
(142, 2, 0, 1, '1'),
(143, 2, 0, 1, '1'),
(144, 2, 0, 1, '1'),
(145, 2, 0, 1, '1'),
(146, 2, 0, 1, '1'),
(147, 2, 0, 1, '1'),
(148, 2, 0, 1, '1'),
(149, 2, 0, 1, '1'),
(150, 2, 0, 1, '1'),
(151, 2, 0, 1, '1'),
(152, 1, 0, 22, '1'),
(153, 3, 0, 9, '3'),
(154, 2, 0, 4, '3'),
(155, 2, 0, 4, '1'),
(156, 2, 0, 4, '1'),
(157, 1, 0, 21, '1'),
(158, 2, 0, 4, '3'),
(159, 4, 0, 39, '1'),
(160, 3, 0, 12, '4'),
(161, 3, 0, 12, '4'),
(162, 3, 0, 12, '4'),
(163, 3, 0, 12, '4'),
(164, 3, 0, 12, '4'),
(165, 3, 0, 12, '4'),
(166, 3, 0, 12, '4'),
(167, 3, 0, 9, '4'),
(168, 2, 0, 4, '1'),
(169, 2, 0, 4, '1'),
(170, 3, 0, 9, '3'),
(171, 1, 0, 18, '4'),
(172, 1, 0, 18, '4'),
(173, 1, 0, 18, '4'),
(174, 1, 0, 18, '4'),
(175, 1, 0, 18, '4'),
(176, 1, 0, 18, '4'),
(177, 1, 0, 18, '4'),
(178, 1, 0, 18, '4'),
(179, 1, 0, 18, '4'),
(180, 1, 0, 18, '4'),
(181, 1, 0, 18, '4'),
(182, 1, 0, 18, '4'),
(183, 1, 0, 18, '4'),
(184, 1, 0, 18, '4'),
(185, 1, 0, 18, '4'),
(186, 1, 0, 18, '4'),
(187, 1, 0, 18, '4'),
(188, 1, 0, 18, '4'),
(189, 1, 0, 18, '4'),
(190, 1, 0, 18, '4'),
(191, 1, 0, 18, '4'),
(192, 1, 0, 18, '4'),
(193, 1, 0, 18, '4'),
(194, 1, 0, 18, '4'),
(195, 1, 0, 18, '4'),
(196, 1, 0, 18, '4'),
(197, 1, 0, 18, '4'),
(198, 1, 0, 18, '4'),
(199, 1, 0, 18, '4'),
(200, 1, 0, 18, '4'),
(201, 1, 0, 18, '4'),
(202, 1, 0, 18, '4'),
(203, 1, 0, 17, '4'),
(204, 1, 0, 18, '4'),
(205, 1, 0, 18, '4'),
(206, 3, 0, 12, '3'),
(207, 6, 0, 6, '1'),
(208, 6, 0, 6, '1'),
(209, 6, 0, 6, '1'),
(210, 2, 0, 3, '1'),
(211, 6, 1, 6, '1'),
(212, 6, 1, 6, '1'),
(213, 4, 1, 25, '1'),
(214, 4, 1, 25, '1'),
(215, 4, 1, 25, '1'),
(216, 4, 1, 40, '1'),
(217, 4, 1, 40, '1'),
(218, 4, 1, 24, '1'),
(219, 4, 1, 24, '1'),
(220, 4, 1, 24, '1'),
(221, 4, 1, 39, '1'),
(222, 4, 1, 24, '1'),
(223, 4, 1, 36, '1'),
(224, 4, 1, 24, '1'),
(225, 4, 1, 37, '1'),
(226, 4, 1, 37, '1'),
(227, 4, 1, 38, '1'),
(228, 4, 1, 38, '1'),
(229, 4, 1, 26, '1'),
(230, 4, 1, 38, '1'),
(231, 4, 1, 38, '1'),
(232, 4, 1, 23, '1'),
(233, 4, 1, 23, '1'),
(234, 4, 1, 28, '1'),
(235, 4, 1, 28, '1'),
(236, 3, 1, 8, '1'),
(237, 3, 1, 8, '1'),
(238, 2, 2, 2, '1'),
(239, 2, 2, 2, '1'),
(240, 2, 2, 3, '1'),
(241, 2, 2, 3, '1'),
(242, 1, 2, 22, '1'),
(243, 3, 1, 12, '2'),
(244, 3, 2, 9, '1'),
(245, 3, 2, 9, '1'),
(246, 3, 2, 8, '1'),
(247, 3, 2, 8, '1'),
(248, 1, 2, 18, '1'),
(249, 1, 2, 18, '1'),
(250, 1, 2, 17, '1'),
(251, 1, 2, 17, '1'),
(252, 1, 2, 17, '1'),
(253, 1, 2, 17, '1'),
(254, 1, 2, 17, '1'),
(255, 1, 1, 22, '1'),
(256, 2, 1, 2, '3'),
(257, 1, 2, 14, '3'),
(258, 2, 2, 3, '3'),
(259, 2, 1, 4, '4'),
(260, 3, 2, 8, '1'),
(261, 2, 1, 4, '4'),
(262, 2, 1, 4, '4'),
(263, 2, 1, 4, '4'),
(264, 2, 1, 4, '4'),
(265, 2, 1, 4, '1'),
(266, 2, 2, 3, '2'),
(267, 2, 1, 4, '4'),
(268, 3, 1, 9, '1'),
(269, 2, 1, 4, '4'),
(270, 3, 1, 12, '4'),
(271, 1, 1, 22, '4'),
(272, 1, 1, 22, '4'),
(273, 1, 1, 22, '4'),
(274, 1, 1, 22, '4'),
(275, 1, 1, 22, '4'),
(276, 1, 1, 22, '4'),
(277, 1, 1, 22, '4'),
(278, 1, 1, 22, '1'),
(279, 2, 1, 4, '3'),
(280, 6, 1, 6, '3'),
(281, 4, 1, 39, '1'),
(282, 4, 1, 39, '3'),
(283, 6, 1, 6, '1'),
(284, 6, 1, 6, '1'),
(285, 3, 1, 6, '4'),
(286, 6, 1, 6, '1'),
(287, 6, 1, 12, '1'),
(288, 6, 1, 6, '1'),
(289, 3, 1, 12, '4'),
(290, 6, 1, 6, '1'),
(291, 2, 1, 4, '1'),
(292, 1, 1, 22, '2'),
(293, 2, 1, 4, '1'),
(294, 2, 1, 4, '1'),
(295, 3, 1, 12, '1'),
(296, 6, 1, 6, '4'),
(297, 1, 1, 22, '2'),
(298, 1, 1, 14, '2'),
(299, 3, 1, 9, '4'),
(300, 3, 1, 9, '4'),
(301, 3, 1, 11, '4'),
(302, 3, 1, 9, '4'),
(303, 2, 2, 1, '2'),
(304, 3, 1, 12, '3'),
(305, 4, 1, 36, '3'),
(306, 1, 1, 22, '25'),
(307, 1, 1, 21, '25'),
(308, 9, 1, 41, '28'),
(309, 2, 1, 4, '28'),
(310, 3, 1, 9, '30'),
(311, 1, 1, 18, '31'),
(312, 1, 1, 22, '31'),
(313, 4, 1, 25, '32'),
(314, 9, 1, 41, '33'),
(315, 1, 1, 14, '4'),
(316, 9, 1, 41, '82'),
(317, 3, 3, 9, '82'),
(318, 1, 3, 18, '82'),
(319, 2, 3, 2, '82'),
(320, 2, 3, 2, '2'),
(321, 2, 1, 3, '1'),
(322, 2, 1, 4, '83'),
(323, 2, 1, 4, '1'),
(324, 1, 1, 14, '82'),
(325, 1, 12, 14, '82'),
(326, 6, 1, 6, '84'),
(327, 6, 1, 6, '84'),
(328, 6, 1, 6, '86'),
(329, 2, 5, 4, '87'),
(330, 2, 5, 4, '88'),
(331, 2, 5, 4, '89'),
(332, 1, 5, 22, '89'),
(333, 1, 5, 22, '89'),
(334, 3, 5, 12, '89'),
(335, 1, 5, 22, '89'),
(336, 1, 5, 14, '90'),
(337, 4, 1, 39, '1'),
(338, 4, 1, 39, '1'),
(339, 6, 1, 6, '91'),
(340, 3, 1, 9, '1'),
(341, 4, 20, 42, '92'),
(342, 4, 20, 42, '93'),
(343, 4, 20, 42, '94'),
(344, 4, 20, 42, '95'),
(345, 4, 20, 42, '96'),
(353, 2, 20, 42, '96'),
(354, 2, 1, 42, '96'),
(355, 2, 1, 42, '95'),
(356, 2, 1, 25, '95'),
(357, 6, 2, 5, '4'),
(358, 6, 20, 42, '96'),
(359, 6, 2, 31, '96'),
(360, 6, 2, 31, '2'),
(375, 2, 20, 42, '96'),
(376, 8, 20, 42, '96'),
(377, 2, 20, 42, '96'),
(378, 2, 1, 4, '3'),
(379, 2, 1, 4, '3'),
(380, 2, 1, 4, '3'),
(381, 2, 1, 4, '3'),
(382, 2, 1, 4, '3'),
(385, 1, 20, 42, '95'),
(386, 1, 20, 42, '95'),
(387, 4, 20, 42, '95'),
(389, 3, 20, 42, '96'),
(390, 1, 20, 42, '96'),
(391, 4, 4, 42, '96'),
(392, 4, 4, 42, '96'),
(393, 4, 5, 42, '96'),
(394, 4, 4, 42, '96'),
(395, 1, 4, 42, '96'),
(396, 1, 4, 42, '96'),
(397, 1, 4, 42, '96'),
(398, 1, 6, 42, '96'),
(399, 1, 6, 42, '96'),
(400, 4, 2, 42, '96'),
(401, 4, 2, 42, '96'),
(402, 4, 2, 42, '96'),
(403, 4, 15, 42, '96'),
(404, 4, 2, 42, '96'),
(405, 1, 2, 42, '96'),
(406, 1, 2, 42, '96'),
(417, 2, 4, 4, '3'),
(420, 1, 20, 42, '96'),
(421, 1, 20, 42, '96'),
(422, 1, 20, 42, '96'),
(423, 1, 20, 42, '96'),
(424, 4, 20, 42, '96'),
(432, 2, 1, 4, '3'),
(433, 12, 0, 42, '102'),
(434, 14, 0, 42, '101'),
(435, 11, 0, 0, '100'),
(436, 17, 0, 0, '106');

-- --------------------------------------------------------

--
-- Table structure for table `effect_trigger`
--

CREATE TABLE `effect_trigger` (
  `id` int(11) NOT NULL,
  `effect_trigger` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `effect_trigger`
--

INSERT INTO `effect_trigger` (`id`, `effect_trigger`) VALUES
(1, 'hover'),
(2, 'click'),
(3, 'load'),
(4, 'focus'),
(5, 'mouseover'),
(6, 'mouseout'),
(7, 'mouseenter'),
(8, 'mouseleave'),
(9, 'blur'),
(10, 'change'),
(11, 'submit'),
(12, 'load'),
(13, 'unload'),
(14, 'resize'),
(15, 'scroll'),
(16, 'keydown'),
(17, 'keyup'),
(18, 'keypress'),
(19, 'dblclick'),
(20, 'DOMContentLoaded');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `element_name` varchar(255) NOT NULL,
  `element` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `element_name`, `element`) VALUES
(0, '', ''),
(47, 'Heading 1 ', 'h1'),
(48, 'Heading 2 ', 'h2'),
(49, 'Heading 3', 'h3'),
(50, 'Body', 'body'),
(51, 'Paragraph', 'p'),
(52, 'Span', 'span'),
(53, 'Table Header Tag', 'th'),
(54, 'Table Row Tag', 'tr'),
(55, 'Even Table Row', 'tr:nth-child(even)'),
(56, 'Odd Table Row', 'tr:nth-child(odd)'),
(57, 'Hovered Table Row', 'tr:hover'),
(58, 'Table Footer', 'tfoot'),
(59, 'Table Body', 'tbody'),
(60, 'Grid Container ', '.report-container'),
(61, 'Report Table  ', '.report-table '),
(62, 'Grid Template Column', 'grid-template-columns'),
(63, 'Grid Gap', 'grid-gap'),
(64, 'Grid ', 'grid'),
(71, 'Select', 'select'),
(72, 'Radio Input', 'input[type=\"radio\"]'),
(73, 'Checkbox Input', 'input[type=\"checkbox\"]'),
(74, 'File Input', 'input[type=\"file\"]'),
(75, 'Hidden Input', 'input[type=\"hidden\"]'),
(76, 'Submit Input', 'input[type=\"submit\"]'),
(77, 'Button', 'button'),
(78, 'Label', 'label'),
(79, 'Captcha Input', 'input[type=\"captcha\"]'),
(80, 'Checkbox in List', 'ul li input[type=\"checkbox\"]'),
(81, 'Radio in List', 'ul li input[type=\"radio\"]'),
(82, 'Auto Complete Input', 'input[type=\"auto_complete\"]'),
(83, 'Date Input', 'input[type=\"date\"]'),
(84, 'Time Input', 'input[type=\"time\"]'),
(85, 'File Input', 'input[type=\"file\"]'),
(86, 'Textarea', 'textarea'),
(87, 'Multiple Select', 'select[multiple=\"multiple\"]'),
(88, 'Color Input', 'input[type=\"color\"]'),
(89, 'Number Input', 'input[type=\"number\"]'),
(90, 'Email Input', 'input[type=\"email\"]'),
(91, 'URL Input', 'input[type=\"url\"]'),
(92, 'Telephone Input', 'input[type=\"tel\"]'),
(93, 'Range Input', 'input[type=\"range\"]'),
(94, 'Search Input', 'input[type=\"search\"]'),
(95, 'Month Input', 'input[type=\"month\"]'),
(96, 'Week Input', 'input[type=\"week\"]'),
(97, 'Datetime Input', 'input[type=\"datetime\"]'),
(98, 'Datetime-local Input', 'input[type=\"datetime-local\"]'),
(99, 'Form Div', 'div.form'),
(100, 'Form Div Inner', 'div.form'),
(101, 'Form Div Text Input', 'div.form input[type=\"text\"]'),
(102, 'Form Div Password Input', 'div.form input[type=\"password\"]'),
(103, 'Form Div Email Input', 'div.form input[type=\"email\"]'),
(104, 'Form Div Number Input', 'div.form input[type=\"number\"]'),
(105, 'Form Div Color Input', 'div.form input[type=\"color\"]'),
(106, 'Form Div Textarea', 'div.form textarea'),
(107, 'Form Div Label', 'div.form label'),
(108, 'Form Div Select', 'div.form select'),
(109, 'Form Div Submit Input', 'div.form input[type=\"submit\"]'),
(110, 'Form Div Checkbox Input', 'div.form input[type=\"checkbox\"]'),
(111, 'Form Div Radio Input', 'div.form input[type=\"radio\"]'),
(112, 'Table Header ', 'thead'),
(113, 'Table class', '.table'),
(114, 'Table tag', 'table'),
(115, 'Report H2', '.report-container h2'),
(116, 'Table Data Cell', 'td'),
(117, 'Show Entry', '.dataTables_length'),
(118, 'Report Search', '.dataTables_filter'),
(119, 'Report Entry Number', '.dataTables_info'),
(120, 'Report Pagination', '#DataTables_Table_0_paginate');

-- --------------------------------------------------------

--
-- Table structure for table `element_css_properties`
--

CREATE TABLE `element_css_properties` (
  `id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `theme_columns` varchar(500) DEFAULT NULL,
  `css_properties_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `element_css_properties`
--

INSERT INTO `element_css_properties` (`id`, `element_id`, `theme_columns`, `css_properties_id`) VALUES
(1, 2, 'width', 13),
(2, 2, 'padding', 6),
(3, 2, 'border', 4),
(4, 2, 'border_radius', 7),
(5, 2, 'box_sizing', 22),
(6, 2, 'font_size', 18),
(8, 2, 'background_color', 1),
(9, 2, 'color', 19),
(27, 2, 'margin', 5),
(28, 2, 'font_family', 18),
(29, 2, 'display', 8),
(30, 2, 'font_style', 23),
(31, 2, 'border_color', 16),
(32, 2, 'text_align', 12),
(33, 2, 'clear', 24),
(34, 2, 'position', 11),
(36, 2, 'height', 21),
(37, 2, 'text_wrap', 12),
(38, 2, 'box_shadow', 25),
(39, 2, 'opacity', 27),
(40, 2, 'transition_property', 28),
(41, 2, 'transition_duration', 29),
(42, 2, 'transition_timing_function', 30),
(43, 2, 'resize', 31),
(44, 2, 'background', NULL),
(45, 11, 'outline_style', 21),
(46, 2, 'border_style', NULL),
(47, 2, 'border_width', NULL),
(48, 8, 'text_shadow', NULL),
(49, 7, 'background_image', NULL),
(50, 2, 'outline_width', NULL),
(51, 2, 'outline_color', NULL),
(52, 2, 'background_repeat', NULL),
(53, 2, 'background_position', NULL),
(54, 2, 'text_decoration', NULL),
(55, 2, 'border_width', NULL),
(56, 2, 'border_radius', NULL),
(57, 2, 'border_color', NULL),
(58, 2, 'border_style', NULL),
(59, 2, 'background_repeat', NULL),
(60, 2, 'background_position', NULL),
(61, 2, 'box_shadow', NULL),
(62, 2, 'link_color', NULL),
(63, 2, 'text_shadow', NULL),
(64, 2, 'background_position', NULL),
(65, 2, 'background_repeat', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(255) NOT NULL,
  `faculty_code` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `theme_column_id` int(11) DEFAULT NULL,
  `column_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`, `faculty_code`, `department_id`, `course_id`, `email`, `phone`, `address`, `theme_id`, `theme_column_id`, `column_name`) VALUES
(45, 'Anita Gupta', '9868', 7, 13, 'gauvi099881@gmail.com', '09011689196', 'High Court Aurangabad', NULL, NULL, NULL),
(48, 'Sakshi Joshi', '444', 5, 7, 'sakshi@gmail.com', '91111111111', 'High Court Aurangabad', NULL, NULL, NULL),
(53, 'Vedant Nagpure', '34873', 7, 14, 'gauravidamahe0001@outlook.com', '9011689196', 'Satara Parisar', NULL, NULL, NULL),
(54, 'Test Case', '9879', 7, 13, 'gauravidamahe0001@outlook.com', '+919011689196', 'Satara Parisar', NULL, NULL, NULL),
(58, 'Test Case 02', '98799', 7, 14, 'gauravidamahe0001@outlook.com', '9011689196', 'Satara Parisar', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_column_theme_mapping`
--

CREATE TABLE `faculty_column_theme_mapping` (
  `id` int(11) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `theme_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_column_theme_mapping`
--

INSERT INTO `faculty_column_theme_mapping` (`id`, `column_name`, `theme_ID`) VALUES
(1, 'course_id', 4),
(2, 'department_id', 3),
(3, 'email', 86),
(4, 'faculty_code', 6),
(5, 'faculty_name', 8),
(6, 'phone', 5),
(7, 'email', 86),
(8, 'faculty_name', 86);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_course_type`
--

CREATE TABLE `faculty_course_type` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `course_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty_course_type`
--

INSERT INTO `faculty_course_type` (`id`, `faculty_id`, `course_type_id`) VALUES
(13, 45, 6),
(14, 45, 7),
(15, 45, 5),
(22, 54, 6),
(23, 54, 7),
(24, 54, 5),
(26, 58, 6),
(27, 58, 7),
(32, 53, 6),
(33, 53, 5),
(35, 48, 9),
(36, 48, 7),
(37, 48, 5);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_theme_mapping`
--

CREATE TABLE `faculty_theme_mapping` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `theme_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_theme_mapping`
--

INSERT INTO `faculty_theme_mapping` (`id`, `faculty_id`, `theme_ID`) VALUES
(3, 7, 86),
(4, 43, 87);

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `FORM_ID` int(11) NOT NULL,
  `FORM_NAME` varchar(128) DEFAULT NULL,
  `BEGIN_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `END_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TYPE_ID` int(10) DEFAULT NULL,
  `CREATED_BY` varchar(255) DEFAULT NULL,
  `LAST_MODIFIED_BY` varchar(255) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_MODIFIED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orgId` int(11) NOT NULL,
  `proj_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `fm` int(11) NOT NULL,
  `form_type` int(11) NOT NULL,
  `edit_list_filter` varchar(1000) NOT NULL,
  `filter_match_column` varchar(500) NOT NULL,
  `self_mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_element`
--

CREATE TABLE `form_element` (
  `id` int(11) NOT NULL,
  `element_name` varchar(255) NOT NULL,
  `element_type` varchar(255) NOT NULL,
  `input_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_element`
--

INSERT INTO `form_element` (`id`, `element_name`, `element_type`, `input_type`) VALUES
(1, 'Text Field', 'text-field', 'text'),
(2, 'Text Area', 'textarea', 'textarea'),
(3, 'Password Field', 'password-field', 'password'),
(4, 'Drop-down List', 'drop_down_list', 'select'),
(5, 'Radio Button', 'radio_button', 'radio'),
(6, 'Checkboxes', 'checkboxes', 'checkbox'),
(7, 'File Field', 'file_field', 'file'),
(8, 'Hidden Field', 'hidden_field', 'hidden'),
(9, 'Submit Button', 'submit_button', 'submit'),
(10, 'Button', 'button', 'button'),
(11, 'Label', 'label', ''),
(12, 'Captcha', 'captcha', ''),
(13, 'Checkboxes List', 'checkboxes_list', 'checkbox_list'),
(14, 'Radio Button List', 'radio_button_list', 'radio_list'),
(15, 'Auto-Complete Field', 'auto_complete_field', 'text'),
(16, 'Date Picker', 'date_picker', 'text'),
(17, 'Time Picker', 'time_picker', 'text'),
(18, 'File Upload', 'file_upload', 'file'),
(19, 'Rich Text Editor', 'rich_text_editor', 'textarea'),
(20, 'Multiple Select', 'multiple_select', 'select_multiple'),
(21, 'Color Picker', 'color_picker', 'text'),
(22, 'Number Field', 'number_field', 'number'),
(23, 'Email Field', 'email_field', 'email'),
(24, 'URL Field', 'url_field', 'url'),
(25, 'Telephone Field', 'telephone_field', 'tel'),
(26, 'Date Field', 'date_field', 'date'),
(27, 'Time Field', 'time_field', 'time'),
(28, 'Range Field', 'range_field', 'range'),
(29, 'Search Field', 'search_field', 'search'),
(30, 'Month Field', 'month_field', 'month'),
(31, 'Week Field', 'week_field', 'week'),
(32, 'DateTime Field', 'datetime_field', 'datetime'),
(33, 'DateTime-local Field', 'datetime_local_field', 'datetime-local'),
(34, 'Select Field', 'select', 'select'),
(35, 'Input', 'input', 'input\r\n'),
(36, 'Select ', 'select ', 'dropbox text value '),
(37, 'div.from', 'From', ''),
(38, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'Form Input', 'input '),
(39, 'div.form label', 'Form Label', 'Lable'),
(40, 'div.form select\r\n', 'Form select\r\n', 'Select /DropBox '),
(41, 'div.form input[type=\"submit\"]	', 'Form Button', 'submit'),
(42, 'div.form input[type=\"checkbox\"]', 'Form CheckBox ', 'checkbox'),
(43, 'div.form input[type=\"radio\"]', 'Form Radio button', 'radio button');

-- --------------------------------------------------------

--
-- Table structure for table `form_element_css_properties`
--

CREATE TABLE `form_element_css_properties` (
  `id` int(11) NOT NULL,
  `element_id` int(11) DEFAULT NULL,
  `form_element` varchar(255) NOT NULL,
  `css_property` varchar(255) NOT NULL,
  `css_properties_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_element_css_properties`
--

INSERT INTO `form_element_css_properties` (`id`, `element_id`, `form_element`, `css_property`, `css_properties_id`) VALUES
(0, NULL, '', '', NULL),
(1, 35, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'width', 13),
(2, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'padding', 6),
(3, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'border', 4),
(4, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'border-radius', NULL),
(5, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'box-sizing', NULL),
(6, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'font-size', NULL),
(7, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'background-color', NULL),
(8, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'color', NULL),
(9, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'margin', NULL),
(10, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'font-weight', NULL),
(11, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'display', NULL),
(12, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'font-style', NULL),
(13, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'border-color', NULL),
(14, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'text-align', NULL),
(15, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'clear', NULL),
(16, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'position', NULL),
(17, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'height', NULL),
(18, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'text-decoration', NULL),
(19, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'box-shadow', NULL),
(20, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'opacity', NULL),
(21, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'transition-property', NULL),
(22, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'transition-duration', NULL),
(23, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'transition-timing-function', NULL),
(24, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'resize', NULL),
(25, 35, 'div.form input[type=\"text\"], div.form input[type=\"password\"], div.form input[type=\"email\"], div.form input[type=\"number\"], div.form input[type=\"color\"], div.form textarea', 'background', NULL),
(26, 11, 'div.form label', 'width', NULL),
(27, 11, 'div.form label', 'padding', NULL),
(28, 11, 'div.form label', 'border', NULL),
(29, 11, 'div.form label', 'border-radius', NULL),
(30, 11, 'div.form label', 'box-sizing', NULL),
(31, 11, 'div.form label', 'font-size', NULL),
(32, 11, 'div.form label', 'background', NULL),
(33, 11, 'div.form label', 'color', NULL),
(34, 11, 'div.form label', 'margin', NULL),
(35, 11, 'div.form label', 'font-weight', NULL),
(36, 11, 'div.form label', 'display', NULL),
(37, 11, 'div.form label', 'font-style', NULL),
(38, 11, 'div.form label', 'border-color', NULL),
(39, 11, 'div.form label', 'text-align', NULL),
(40, 11, 'div.form label', 'clear', NULL),
(41, 11, 'div.form label', 'position', NULL),
(42, 11, 'div.form label', 'height', NULL),
(43, 11, 'div.form label', 'text-decoration', NULL),
(44, 11, 'div.form label', 'box-shadow', NULL),
(45, 11, 'div.form label', 'opacity', NULL),
(46, 11, 'div.form label', 'transition-property', NULL),
(47, 11, 'div.form label', 'transition-duration', NULL),
(48, 11, 'div.form label', 'transition-timing-function', NULL),
(49, 11, 'div.form label', 'resize', NULL),
(50, 11, 'div.form label', 'background', NULL),
(51, 36, 'div.form select', 'width', NULL),
(52, 36, 'div.form select', 'padding', NULL),
(53, 36, 'div.form select', 'border', NULL),
(54, 36, 'div.form select', 'border-radius', NULL),
(55, 36, 'div.form select', 'box-sizing', NULL),
(56, 36, 'div.form select', 'font-size', NULL),
(57, 36, 'div.form select', 'background-color', NULL),
(58, 36, 'div.form select', 'color', NULL),
(59, 36, 'div.form select', 'margin', NULL),
(60, 36, 'div.form select', 'font-weight', NULL),
(61, 36, 'div.form select', 'display', NULL),
(62, 36, 'div.form select', 'font-style', NULL),
(63, 36, 'div.form select', 'border-color', NULL),
(64, 36, 'div.form select', 'text-align', NULL),
(65, 36, 'div.form select', 'clear', NULL),
(66, 36, 'div.form select', 'position', NULL),
(67, 36, 'div.form select', 'height', NULL),
(68, 36, 'div.form select', 'text-decoration', NULL),
(69, 36, 'div.form select', 'box-shadow', NULL),
(70, 36, 'div.form select', 'opacity', NULL),
(71, 36, 'div.form select', 'transition-property', NULL),
(72, 36, 'div.form select', 'transition-duration', NULL),
(73, 36, 'div.form select', 'transition-timing-function', NULL),
(74, 36, 'div.form select', 'resize', NULL),
(75, 36, 'div.form select', 'background', NULL),
(76, 10, 'div.form input[type=\"submit\"]', 'width', NULL),
(77, 10, 'div.form input[type=\"submit\"]', 'padding', NULL),
(78, 10, 'div.form input[type=\"submit\"]', 'border', NULL),
(79, 10, 'div.form input[type=\"submit\"]', 'border-radius', NULL),
(80, 10, 'div.form input[type=\"submit\"]', 'box-sizing', NULL),
(81, 10, 'div.form input[type=\"submit\"]', 'font-size', NULL),
(82, 10, 'div.form input[type=\"submit\"]', 'background-color', NULL),
(83, 10, 'div.form input[type=\"submit\"]', 'color', NULL),
(84, 10, 'div.form input[type=\"submit\"]', 'margin', NULL),
(85, 10, 'div.form input[type=\"submit\"]', 'font-weight', NULL),
(86, 10, 'div.form input[type=\"submit\"]', 'display', NULL),
(87, 10, 'div.form input[type=\"submit\"]', 'font-style', NULL),
(88, 10, 'div.form input[type=\"submit\"]', 'border-color', NULL),
(89, 10, 'div.form input[type=\"submit\"]', 'text-align', NULL),
(90, 10, 'div.form input[type=\"submit\"]', 'clear', NULL),
(91, 10, 'div.form input[type=\"submit\"]', 'position', NULL),
(92, 10, 'div.form input[type=\"submit\"]', 'height', NULL),
(93, 10, 'div.form input[type=\"submit\"]', 'text-decoration', NULL),
(94, 10, 'div.form input[type=\"submit\"]', 'box-shadow', NULL),
(95, 10, 'div.form input[type=\"submit\"]', 'opacity', NULL),
(96, 10, 'div.form input[type=\"submit\"]', 'transition-property', NULL),
(97, 10, 'div.form input[type=\"submit\"]', 'transition-duration', NULL),
(98, 10, 'div.form input[type=\"submit\"]', 'transition-timing-function', NULL),
(99, 10, 'div.form input[type=\"submit\"]', 'resize', NULL),
(100, 10, 'div.form input[type=\"submit\"]', 'background', NULL),
(102, 37, 'div.form', 'width', NULL),
(103, 37, 'div.form', 'padding', NULL),
(104, 37, 'div.form', 'border', NULL),
(105, 37, 'div.form', 'border-radius', NULL),
(106, 37, 'div.form', 'box-sizing', NULL),
(107, 37, 'div.form', 'font-size', NULL),
(108, 37, 'div.form', 'background-color', NULL),
(109, 37, 'div.form', 'color', NULL),
(110, 37, 'div.form', 'margin', NULL),
(111, 37, 'div.form', 'font-weight', NULL),
(112, 37, 'div.form', 'display', NULL),
(113, 37, 'div.form', 'font-style', NULL),
(114, 37, 'div.form', 'border-color', NULL),
(115, 37, 'div.form', 'text-align', NULL),
(116, 37, 'div.form', 'clear', NULL),
(117, 37, 'div.form', 'position', NULL),
(118, 37, 'div.form', 'height', NULL),
(119, 37, 'div.form', 'text-decoration', NULL),
(120, 37, 'div.form', 'box-shadow', NULL),
(121, 37, 'div.form', 'opacity', NULL),
(122, 37, 'div.form', 'transition-property', NULL),
(123, 37, 'div.form', 'transition-duration', NULL),
(124, 37, 'div.form', 'transition-timing-function', NULL),
(125, 37, 'div.form', 'resize', NULL),
(126, 37, 'div.form', 'background', NULL),
(127, 6, 'div.form input[type=\"checkbox\"]', 'width', NULL),
(128, 6, 'div.form input[type=\"checkbox\"]', 'height', NULL),
(129, 6, 'div.form input[type=\"checkbox\"]', 'border', NULL),
(130, 6, 'div.form input[type=\"checkbox\"]', 'border-radius', NULL),
(131, 6, 'div.form input[type=\"checkbox\"]', 'background-color', NULL),
(132, 6, 'div.form input[type=\"checkbox\"]', 'color', NULL),
(133, 6, 'div.form input[type=\"checkbox\"]', 'padding', NULL),
(134, 6, 'div.form input[type=\"checkbox\"]', 'margin', NULL),
(135, 6, 'div.form input[type=\"checkbox\"]', 'display', NULL),
(136, 6, 'div.form input[type=\"checkbox\"]', 'position', NULL),
(137, 6, 'div.form input[type=\"checkbox\"]', 'text-align', NULL),
(138, 6, 'div.form input[type=\"checkbox\"]', 'color', NULL),
(139, 6, 'div.form input[type=\"checkbox\"]', 'clear', NULL),
(140, 6, 'div.form input[type=\"checkbox\"]', 'outline', NULL),
(141, 6, 'div.form input[type=\"checkbox\"]', 'font-size', NULL),
(142, 5, 'div.form input[type=\"radio\"]', 'width', NULL),
(143, 5, 'div.form input[type=\"radio\"]', 'height', NULL),
(144, 5, 'div.form input[type=\"radio\"]', 'border', NULL),
(145, 5, 'div.form input[type=\"radio\"]', 'border-radius', NULL),
(146, 5, 'div.form input[type=\"radio\"]', 'background-color', NULL),
(147, 5, 'div.form input[type=\"radio\"]', 'color', NULL),
(148, 5, 'div.form input[type=\"radio\"]', 'padding', NULL),
(149, 5, 'div.form input[type=\"radio\"]', 'margin', NULL),
(150, 5, 'div.form input[type=\"radio\"]', 'display', NULL),
(151, 5, 'div.form input[type=\"radio\"]', 'position', NULL),
(152, 5, 'div.form input[type=\"radio\"]', 'text-align', NULL),
(153, 5, 'div.form input[type=\"radio\"]', 'vertical-align', NULL),
(154, 5, 'div.form input[type=\"radio\"]', 'cursor', NULL),
(155, 5, 'div.form input[type=\"radio\"]', 'outline', NULL),
(156, 5, 'div.form input[type=\"radio\"]', 'opacity', NULL),
(157, 5, 'div.form input[type=\"radio\"]', 'border-color', 16),
(158, 5, 'div.form input[type=\"radio\"]', 'font-size', 2),
(159, 5, 'div.form input[type=\"radio\"]', 'font-weight', 18),
(160, 5, 'div.form input[type=\"radio\"]', 'font-style', 23);

-- --------------------------------------------------------

--
-- Table structure for table `form_element_css_properties_theme_mapping`
--

CREATE TABLE `form_element_css_properties_theme_mapping` (
  `id` int(11) NOT NULL,
  `theme_ID` int(11) NOT NULL,
  `form_element_css_properties_id` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_element_css_properties_theme_mapping`
--

INSERT INTO `form_element_css_properties_theme_mapping` (`id`, `theme_ID`, `form_element_css_properties_id`, `value`) VALUES
(2991, 158, 111, NULL),
(2992, 158, 112, NULL),
(2993, 158, 113, NULL),
(2994, 158, 114, NULL),
(2995, 158, 115, NULL),
(2996, 158, 116, NULL),
(2997, 158, 117, NULL),
(2998, 158, 118, NULL),
(2999, 158, 119, NULL),
(3000, 158, 120, NULL),
(3001, 158, 121, NULL),
(3002, 158, 122, NULL),
(3003, 158, 123, NULL),
(3004, 158, 124, NULL),
(3005, 158, 125, NULL),
(3006, 158, 126, NULL),
(3007, 158, 127, NULL),
(3008, 158, 128, NULL),
(3009, 158, 129, NULL),
(3010, 158, 130, NULL),
(3011, 158, 131, NULL),
(3012, 158, 132, NULL),
(3013, 158, 133, NULL),
(3014, 158, 134, NULL),
(3015, 158, 135, NULL),
(3016, 158, 136, NULL),
(3017, 158, 137, NULL),
(3018, 158, 138, NULL),
(3019, 158, 139, NULL),
(3020, 158, 140, NULL),
(3021, 158, 141, NULL),
(3022, 158, 142, NULL),
(3023, 158, 143, NULL),
(3024, 158, 144, NULL),
(3025, 158, 145, NULL),
(3026, 158, 146, NULL),
(3027, 158, 147, NULL),
(3028, 158, 148, NULL),
(3029, 158, 149, NULL),
(3030, 158, 150, NULL),
(3031, 158, 151, NULL),
(3032, 158, 152, NULL),
(3033, 158, 153, NULL),
(3034, 158, 154, NULL),
(3035, 158, 155, NULL),
(3036, 158, 156, NULL),
(3037, 158, 157, NULL),
(3038, 158, 158, NULL),
(3039, 158, 159, NULL),
(3040, 158, 160, NULL),
(3041, 159, 0, NULL),
(3042, 159, 1, '300px'),
(3043, 159, 2, NULL),
(3044, 159, 3, NULL),
(3045, 159, 4, NULL),
(3046, 159, 5, NULL),
(3047, 159, 6, NULL),
(3048, 159, 7, '#298c22'),
(3049, 159, 8, '#000000'),
(3050, 159, 9, NULL),
(3051, 159, 10, 'normal'),
(3052, 159, 11, 'block'),
(3053, 159, 12, 'normal'),
(3054, 159, 13, '#000000'),
(3055, 159, 14, 'left'),
(3056, 159, 15, 'none'),
(3057, 159, 16, 'static'),
(3058, 159, 17, NULL),
(3059, 159, 18, 'none'),
(3060, 159, 19, NULL),
(3061, 159, 20, NULL),
(3062, 159, 21, NULL),
(3063, 159, 22, NULL),
(3064, 159, 23, 'linear'),
(3065, 159, 24, 'none'),
(3066, 159, 25, NULL),
(3067, 159, 26, NULL),
(3068, 159, 27, NULL),
(3069, 159, 28, NULL),
(3070, 159, 29, NULL),
(3071, 159, 30, ' ?>'),
(3072, 159, 31, NULL),
(3073, 159, 32, '#000000'),
(3074, 159, 33, '#34a841'),
(3075, 159, 34, NULL),
(3076, 159, 35, 'normal'),
(3077, 159, 36, 'block'),
(3078, 159, 37, 'normal'),
(3079, 159, 38, '#000000'),
(3080, 159, 39, 'left'),
(3081, 159, 40, 'none'),
(3082, 159, 41, 'static'),
(3083, 159, 42, NULL),
(3084, 159, 43, 'none'),
(3085, 159, 44, NULL),
(3086, 159, 45, NULL),
(3087, 159, 46, NULL),
(3088, 159, 47, NULL),
(3089, 159, 48, 'linear'),
(3090, 159, 49, 'none'),
(3091, 159, 50, NULL),
(3092, 159, 51, NULL),
(3093, 159, 52, NULL),
(3094, 159, 53, NULL),
(3095, 159, 54, NULL),
(3096, 159, 55, NULL),
(3097, 159, 56, NULL),
(3098, 159, 57, NULL),
(3099, 159, 58, NULL),
(3100, 159, 59, NULL),
(3101, 159, 60, NULL),
(3102, 159, 61, NULL),
(3103, 159, 62, NULL),
(3104, 159, 63, NULL),
(3105, 159, 64, NULL),
(3106, 159, 65, NULL),
(3107, 159, 66, NULL),
(3108, 159, 67, NULL),
(3109, 159, 68, NULL),
(3110, 159, 69, NULL),
(3111, 159, 70, NULL),
(3112, 159, 71, NULL),
(3113, 159, 72, NULL),
(3114, 159, 73, NULL),
(3115, 159, 74, NULL),
(3116, 159, 75, NULL),
(3117, 159, 76, NULL),
(3118, 159, 77, NULL),
(3119, 159, 78, NULL),
(3120, 159, 79, NULL),
(3121, 159, 80, NULL),
(3122, 159, 81, NULL),
(3123, 159, 82, NULL),
(3124, 159, 83, NULL),
(3125, 159, 84, NULL),
(3126, 159, 85, NULL),
(3127, 159, 86, NULL),
(3128, 159, 87, NULL),
(3129, 159, 88, NULL),
(3130, 159, 89, NULL),
(3131, 159, 90, NULL),
(3132, 159, 91, NULL),
(3133, 159, 92, NULL),
(3134, 159, 93, NULL),
(3135, 159, 94, NULL),
(3136, 159, 95, NULL),
(3137, 159, 96, NULL),
(3138, 159, 97, NULL),
(3139, 159, 98, NULL),
(3140, 159, 99, NULL),
(3141, 159, 100, NULL),
(3142, 159, 102, NULL),
(3143, 159, 103, NULL),
(3144, 159, 104, NULL),
(3145, 159, 105, NULL),
(3146, 159, 106, NULL),
(3147, 159, 107, NULL),
(3148, 159, 108, '#db2929'),
(3149, 159, 109, '#000000'),
(3150, 159, 110, NULL),
(3151, 159, 111, 'normal'),
(3152, 159, 112, 'block'),
(3153, 159, 113, 'normal'),
(3154, 159, 114, '#000000'),
(3155, 159, 115, 'left'),
(3156, 159, 116, 'none'),
(3157, 159, 117, 'static'),
(3158, 159, 118, NULL),
(3159, 159, 119, 'none'),
(3160, 159, 120, NULL),
(3161, 159, 121, NULL),
(3162, 159, 122, NULL),
(3163, 159, 123, NULL),
(3164, 159, 124, 'linear'),
(3165, 159, 125, 'none'),
(3166, 159, 126, NULL),
(3167, 159, 127, NULL),
(3168, 159, 128, NULL),
(3169, 159, 129, NULL),
(3170, 159, 130, NULL),
(3171, 159, 131, NULL),
(3172, 159, 132, NULL),
(3173, 159, 133, NULL),
(3174, 159, 134, NULL),
(3175, 159, 135, NULL),
(3176, 159, 136, NULL),
(3177, 159, 137, NULL),
(3178, 159, 138, NULL),
(3179, 159, 139, NULL),
(3180, 159, 140, NULL),
(3181, 159, 141, NULL),
(3182, 159, 142, NULL),
(3183, 159, 143, NULL),
(3184, 159, 144, NULL),
(3185, 159, 145, NULL),
(3186, 159, 146, NULL),
(3187, 159, 147, NULL),
(3188, 159, 148, NULL),
(3189, 159, 149, NULL),
(3190, 159, 150, NULL),
(3191, 159, 151, NULL),
(3192, 159, 152, NULL),
(3193, 159, 153, NULL),
(3194, 159, 154, NULL),
(3195, 159, 155, NULL),
(3196, 159, 156, NULL),
(3197, 159, 157, NULL),
(3198, 159, 158, NULL),
(3199, 159, 159, NULL),
(3200, 159, 160, NULL),
(3201, 180, 0, NULL),
(3202, 180, 1, NULL),
(3203, 180, 2, NULL),
(3204, 180, 3, NULL),
(3205, 180, 4, NULL),
(3206, 180, 5, NULL),
(3207, 180, 6, NULL),
(3208, 180, 7, NULL),
(3209, 180, 8, NULL),
(3210, 180, 9, NULL),
(3211, 180, 10, NULL),
(3212, 180, 11, NULL),
(3213, 180, 12, NULL),
(3214, 180, 13, NULL),
(3215, 180, 14, NULL),
(3216, 180, 15, NULL),
(3217, 180, 16, NULL),
(3218, 180, 17, NULL),
(3219, 180, 18, NULL),
(3220, 180, 19, NULL),
(3221, 180, 20, NULL),
(3222, 180, 21, NULL),
(3223, 180, 22, NULL),
(3224, 180, 23, NULL),
(3225, 180, 24, NULL),
(3226, 180, 25, NULL),
(3227, 180, 26, NULL),
(3228, 180, 27, NULL),
(3229, 180, 28, NULL),
(3230, 180, 29, NULL),
(3231, 180, 30, NULL),
(3232, 180, 31, NULL),
(3233, 180, 32, NULL),
(3234, 180, 33, NULL),
(3235, 180, 34, NULL),
(3236, 180, 35, NULL),
(3237, 180, 36, NULL),
(3238, 180, 37, NULL),
(3239, 180, 38, NULL),
(3240, 180, 39, NULL),
(3241, 180, 40, NULL),
(3242, 180, 41, NULL),
(3243, 180, 42, NULL),
(3244, 180, 43, NULL),
(3245, 180, 44, NULL),
(3246, 180, 45, NULL),
(3247, 180, 46, NULL),
(3248, 180, 47, NULL),
(3249, 180, 48, NULL),
(3250, 180, 49, NULL),
(3251, 180, 50, NULL),
(3252, 180, 51, NULL),
(3253, 180, 52, NULL),
(3254, 180, 53, NULL),
(3255, 180, 54, NULL),
(3256, 180, 55, NULL),
(3257, 180, 56, NULL),
(3258, 180, 57, NULL),
(3259, 180, 58, NULL),
(3260, 180, 59, NULL),
(3261, 180, 60, NULL),
(3262, 180, 61, NULL),
(3263, 180, 62, NULL),
(3264, 180, 63, NULL),
(3265, 180, 64, NULL),
(3266, 180, 65, NULL),
(3267, 180, 66, NULL),
(3268, 180, 67, NULL),
(3269, 180, 68, NULL),
(3270, 180, 69, NULL),
(3271, 180, 70, NULL),
(3272, 180, 71, NULL),
(3273, 180, 72, NULL),
(3274, 180, 73, NULL),
(3275, 180, 74, NULL),
(3276, 180, 75, NULL),
(3277, 180, 76, NULL),
(3278, 180, 77, NULL),
(3279, 180, 78, NULL),
(3280, 180, 79, NULL),
(3281, 180, 80, NULL),
(3282, 180, 81, NULL),
(3283, 180, 82, NULL),
(3284, 180, 83, NULL),
(3285, 180, 84, NULL),
(3286, 180, 85, NULL),
(3287, 180, 86, NULL),
(3288, 180, 87, NULL),
(3289, 180, 88, NULL),
(3290, 180, 89, NULL),
(3291, 180, 90, NULL),
(3292, 180, 91, NULL),
(3293, 180, 92, NULL),
(3294, 180, 93, NULL),
(3295, 180, 94, NULL),
(3296, 180, 95, NULL),
(3297, 180, 96, NULL),
(3298, 180, 97, NULL),
(3299, 180, 98, NULL),
(3300, 180, 99, NULL),
(3301, 180, 100, NULL),
(3302, 180, 102, NULL),
(3303, 180, 103, NULL),
(3304, 180, 104, NULL),
(3305, 180, 105, NULL),
(3306, 180, 106, NULL),
(3307, 180, 107, NULL),
(3308, 180, 108, NULL),
(3309, 180, 109, NULL),
(3310, 180, 110, NULL),
(3311, 180, 111, NULL),
(3312, 180, 112, NULL),
(3313, 180, 113, NULL),
(3314, 180, 114, NULL),
(3315, 180, 115, NULL),
(3316, 180, 116, NULL),
(3317, 180, 117, NULL),
(3318, 180, 118, NULL),
(3319, 180, 119, NULL),
(3320, 180, 120, NULL),
(3321, 180, 121, NULL),
(3322, 180, 122, NULL),
(3323, 180, 123, NULL),
(3324, 180, 124, NULL),
(3325, 180, 125, NULL),
(3326, 180, 126, NULL),
(3327, 180, 127, NULL),
(3328, 180, 128, NULL),
(3329, 180, 129, NULL),
(3330, 180, 130, NULL),
(3331, 180, 131, NULL),
(3332, 180, 132, NULL),
(3333, 180, 133, NULL),
(3334, 180, 134, NULL),
(3335, 180, 135, NULL),
(3336, 180, 136, NULL),
(3337, 180, 137, NULL),
(3338, 180, 138, NULL),
(3339, 180, 139, NULL),
(3340, 180, 140, NULL),
(3341, 180, 141, NULL),
(3342, 180, 142, NULL),
(3343, 180, 143, NULL),
(3344, 180, 144, NULL),
(3345, 180, 145, NULL),
(3346, 180, 146, NULL),
(3347, 180, 147, NULL),
(3348, 180, 148, NULL),
(3349, 180, 149, NULL),
(3350, 180, 150, NULL),
(3351, 180, 151, NULL),
(3352, 180, 152, NULL),
(3353, 180, 153, NULL),
(3354, 180, 154, NULL),
(3355, 180, 155, NULL),
(3356, 180, 156, NULL),
(3357, 180, 157, NULL),
(3358, 180, 158, NULL),
(3359, 180, 159, NULL),
(3360, 180, 160, NULL),
(3361, 293, 0, NULL),
(3362, 293, 1, NULL),
(3363, 293, 2, NULL),
(3364, 293, 3, NULL),
(3365, 293, 4, NULL),
(3366, 293, 5, NULL),
(3367, 293, 6, NULL),
(3368, 293, 7, NULL),
(3369, 293, 8, NULL),
(3370, 293, 9, NULL),
(3371, 293, 10, NULL),
(3372, 293, 11, NULL),
(3373, 293, 12, NULL),
(3374, 293, 13, NULL),
(3375, 293, 14, NULL),
(3376, 293, 15, NULL),
(3377, 293, 16, NULL),
(3378, 293, 17, NULL),
(3379, 293, 18, NULL),
(3380, 293, 19, NULL),
(3381, 293, 20, NULL),
(3382, 293, 21, NULL),
(3383, 293, 22, NULL),
(3384, 293, 23, NULL),
(3385, 293, 24, NULL),
(3386, 293, 25, NULL),
(3387, 293, 26, NULL),
(3388, 293, 27, NULL),
(3389, 293, 28, NULL),
(3390, 293, 29, NULL),
(3391, 293, 30, NULL),
(3392, 293, 31, NULL),
(3393, 293, 32, NULL),
(3394, 293, 33, NULL),
(3395, 293, 34, NULL),
(3396, 293, 35, NULL),
(3397, 293, 36, NULL),
(3398, 293, 37, NULL),
(3399, 293, 38, NULL),
(3400, 293, 39, NULL),
(3401, 293, 40, NULL),
(3402, 293, 41, NULL),
(3403, 293, 42, NULL),
(3404, 293, 43, NULL),
(3405, 293, 44, NULL),
(3406, 293, 45, NULL),
(3407, 293, 46, NULL),
(3408, 293, 47, NULL),
(3409, 293, 48, NULL),
(3410, 293, 49, NULL),
(3411, 293, 50, NULL),
(3412, 293, 51, NULL),
(3413, 293, 52, NULL),
(3414, 293, 53, NULL),
(3415, 293, 54, NULL),
(3416, 293, 55, NULL),
(3417, 293, 56, NULL),
(3418, 293, 57, NULL),
(3419, 293, 58, NULL),
(3420, 293, 59, NULL),
(3421, 293, 60, NULL),
(3422, 293, 61, NULL),
(3423, 293, 62, NULL),
(3424, 293, 63, NULL),
(3425, 293, 64, NULL),
(3426, 293, 65, NULL),
(3427, 293, 66, NULL),
(3428, 293, 67, NULL),
(3429, 293, 68, NULL),
(3430, 293, 69, NULL),
(3431, 293, 70, NULL),
(3432, 293, 71, NULL),
(3433, 293, 72, NULL),
(3434, 293, 73, NULL),
(3435, 293, 74, NULL),
(3436, 293, 75, NULL),
(3437, 293, 76, NULL),
(3438, 293, 77, NULL),
(3439, 293, 78, NULL),
(3440, 293, 79, NULL),
(3441, 293, 80, NULL),
(3442, 293, 81, NULL),
(3443, 293, 82, NULL),
(3444, 293, 83, NULL),
(3445, 293, 84, NULL),
(3446, 293, 85, NULL),
(3447, 293, 86, NULL),
(3448, 293, 87, NULL),
(3449, 293, 88, NULL),
(3450, 293, 89, NULL),
(3451, 293, 90, NULL),
(3452, 293, 91, NULL),
(3453, 293, 92, NULL),
(3454, 293, 93, NULL),
(3455, 293, 94, NULL),
(3456, 293, 95, NULL),
(3457, 293, 96, NULL),
(3458, 293, 97, NULL),
(3459, 293, 98, NULL),
(3460, 293, 99, NULL),
(3461, 293, 100, NULL),
(3462, 293, 102, NULL),
(3463, 293, 103, NULL),
(3464, 293, 104, NULL),
(3465, 293, 105, NULL),
(3466, 293, 106, NULL),
(3467, 293, 107, NULL),
(3468, 293, 108, NULL),
(3469, 293, 109, NULL),
(3470, 293, 110, NULL),
(3471, 293, 111, NULL),
(3472, 293, 112, NULL),
(3473, 293, 113, NULL),
(3474, 293, 114, NULL),
(3475, 293, 115, NULL),
(3476, 293, 116, NULL),
(3477, 293, 117, NULL),
(3478, 293, 118, NULL),
(3479, 293, 119, NULL),
(3480, 293, 120, NULL),
(3481, 293, 121, NULL),
(3482, 293, 122, NULL),
(3483, 293, 123, NULL),
(3484, 293, 124, NULL),
(3485, 293, 125, NULL),
(3486, 293, 126, NULL),
(3487, 293, 127, NULL),
(3488, 293, 128, NULL),
(3489, 293, 129, NULL),
(3490, 293, 130, NULL),
(3491, 293, 131, NULL),
(3492, 293, 132, NULL),
(3493, 293, 133, NULL),
(3494, 293, 134, NULL),
(3495, 293, 135, NULL),
(3496, 293, 136, NULL),
(3497, 293, 137, NULL),
(3498, 293, 138, NULL),
(3499, 293, 139, NULL),
(3500, 293, 140, NULL),
(3501, 293, 141, NULL),
(3502, 293, 142, NULL),
(3503, 293, 143, NULL),
(3504, 293, 144, NULL),
(3505, 293, 145, NULL),
(3506, 293, 146, NULL),
(3507, 293, 147, NULL),
(3508, 293, 148, NULL),
(3509, 293, 149, NULL),
(3510, 293, 150, NULL),
(3511, 293, 151, NULL),
(3512, 293, 152, NULL),
(3513, 293, 153, NULL),
(3514, 293, 154, NULL),
(3515, 293, 155, NULL),
(3516, 293, 156, NULL),
(3517, 293, 157, NULL),
(3518, 293, 158, NULL),
(3519, 293, 159, NULL),
(3520, 293, 160, NULL),
(4161, 297, 0, NULL),
(4162, 297, 1, NULL),
(4163, 297, 2, NULL),
(4164, 297, 3, NULL),
(4165, 297, 4, NULL),
(4166, 297, 5, NULL),
(4167, 297, 6, NULL),
(4168, 297, 7, NULL),
(4169, 297, 8, NULL),
(4170, 297, 9, NULL),
(4171, 297, 10, NULL),
(4172, 297, 11, NULL),
(4173, 297, 12, NULL),
(4174, 297, 13, NULL),
(4175, 297, 14, NULL),
(4176, 297, 15, NULL),
(4177, 297, 16, NULL),
(4178, 297, 17, NULL),
(4179, 297, 18, NULL),
(4180, 297, 19, NULL),
(4181, 297, 20, NULL),
(4182, 297, 21, NULL),
(4183, 297, 22, NULL),
(4184, 297, 23, NULL),
(4185, 297, 24, NULL),
(4186, 297, 25, NULL),
(4187, 297, 26, NULL),
(4188, 297, 27, NULL),
(4189, 297, 28, NULL),
(4190, 297, 29, NULL),
(4191, 297, 30, NULL),
(4192, 297, 31, NULL),
(4193, 297, 32, NULL),
(4194, 297, 33, NULL),
(4195, 297, 34, NULL),
(4196, 297, 35, NULL),
(4197, 297, 36, NULL),
(4198, 297, 37, NULL),
(4199, 297, 38, NULL),
(4200, 297, 39, NULL),
(4201, 297, 40, NULL),
(4202, 297, 41, NULL),
(4203, 297, 42, NULL),
(4204, 297, 43, NULL),
(4205, 297, 44, NULL),
(4206, 297, 45, NULL),
(4207, 297, 46, NULL),
(4208, 297, 47, NULL),
(4209, 297, 48, NULL),
(4210, 297, 49, NULL),
(4211, 297, 50, NULL),
(4212, 297, 51, NULL),
(4213, 297, 52, NULL),
(4214, 297, 53, NULL),
(4215, 297, 54, NULL),
(4216, 297, 55, NULL),
(4217, 297, 56, NULL),
(4218, 297, 57, NULL),
(4219, 297, 58, NULL),
(4220, 297, 59, NULL),
(4221, 297, 60, NULL),
(4222, 297, 61, NULL),
(4223, 297, 62, NULL),
(4224, 297, 63, NULL),
(4225, 297, 64, NULL),
(4226, 297, 65, NULL),
(4227, 297, 66, NULL),
(4228, 297, 67, NULL),
(4229, 297, 68, NULL),
(4230, 297, 69, NULL),
(4231, 297, 70, NULL),
(4232, 297, 71, NULL),
(4233, 297, 72, NULL),
(4234, 297, 73, NULL),
(4235, 297, 74, NULL),
(4236, 297, 75, NULL),
(4237, 297, 76, NULL),
(4238, 297, 77, NULL),
(4239, 297, 78, NULL),
(4240, 297, 79, NULL),
(4241, 297, 80, NULL),
(4242, 297, 81, NULL),
(4243, 297, 82, NULL),
(4244, 297, 83, NULL),
(4245, 297, 84, NULL),
(4246, 297, 85, NULL),
(4247, 297, 86, NULL),
(4248, 297, 87, NULL),
(4249, 297, 88, NULL),
(4250, 297, 89, NULL),
(4251, 297, 90, NULL),
(4252, 297, 91, NULL),
(4253, 297, 92, NULL),
(4254, 297, 93, NULL),
(4255, 297, 94, NULL),
(4256, 297, 95, NULL),
(4257, 297, 96, NULL),
(4258, 297, 97, NULL),
(4259, 297, 98, NULL),
(4260, 297, 99, NULL),
(4261, 297, 100, NULL),
(4262, 297, 102, NULL),
(4263, 297, 103, NULL),
(4264, 297, 104, NULL),
(4265, 297, 105, NULL),
(4266, 297, 106, NULL),
(4267, 297, 107, NULL),
(4268, 297, 108, NULL),
(4269, 297, 109, NULL),
(4270, 297, 110, NULL),
(4271, 297, 111, NULL),
(4272, 297, 112, NULL),
(4273, 297, 113, NULL),
(4274, 297, 114, NULL),
(4275, 297, 115, NULL),
(4276, 297, 116, NULL),
(4277, 297, 117, NULL),
(4278, 297, 118, NULL),
(4279, 297, 119, NULL),
(4280, 297, 120, NULL),
(4281, 297, 121, NULL),
(4282, 297, 122, NULL),
(4283, 297, 123, NULL),
(4284, 297, 124, NULL),
(4285, 297, 125, NULL),
(4286, 297, 126, NULL),
(4287, 297, 127, NULL),
(4288, 297, 128, NULL),
(4289, 297, 129, NULL),
(4290, 297, 130, NULL),
(4291, 297, 131, NULL),
(4292, 297, 132, NULL),
(4293, 297, 133, NULL),
(4294, 297, 134, NULL),
(4295, 297, 135, NULL),
(4296, 297, 136, NULL),
(4297, 297, 137, NULL),
(4298, 297, 138, NULL),
(4299, 297, 139, NULL),
(4300, 297, 140, NULL),
(4301, 297, 141, NULL),
(4302, 297, 142, NULL),
(4303, 297, 143, NULL),
(4304, 297, 144, NULL),
(4305, 297, 145, NULL),
(4306, 297, 146, NULL),
(4307, 297, 147, NULL),
(4308, 297, 148, NULL),
(4309, 297, 149, NULL),
(4310, 297, 150, NULL),
(4311, 297, 151, NULL),
(4312, 297, 152, NULL),
(4313, 297, 153, NULL),
(4314, 297, 154, NULL),
(4315, 297, 155, NULL),
(4316, 297, 156, NULL),
(4317, 297, 157, NULL),
(4318, 297, 158, NULL),
(4319, 297, 159, NULL),
(4320, 297, 160, NULL),
(4801, 301, 0, NULL),
(4802, 301, 1, NULL),
(4803, 301, 2, NULL),
(4804, 301, 3, NULL),
(4805, 301, 4, NULL),
(4806, 301, 5, NULL),
(4807, 301, 6, NULL),
(4808, 301, 7, NULL),
(4809, 301, 8, NULL),
(4810, 301, 9, NULL),
(4811, 301, 10, NULL),
(4812, 301, 11, NULL),
(4813, 301, 12, NULL),
(4814, 301, 13, NULL),
(4815, 301, 14, NULL),
(4816, 301, 15, NULL),
(4817, 301, 16, NULL),
(4818, 301, 17, NULL),
(4819, 301, 18, NULL),
(4820, 301, 19, NULL),
(4821, 301, 20, NULL),
(4822, 301, 21, NULL),
(4823, 301, 22, NULL),
(4824, 301, 23, NULL),
(4825, 301, 24, NULL),
(4826, 301, 25, NULL),
(4827, 301, 26, NULL),
(4828, 301, 27, NULL),
(4829, 301, 28, NULL),
(4830, 301, 29, NULL),
(4831, 301, 30, NULL),
(4832, 301, 31, NULL),
(4833, 301, 32, NULL),
(4834, 301, 33, NULL),
(4835, 301, 34, NULL),
(4836, 301, 35, NULL),
(4837, 301, 36, NULL),
(4838, 301, 37, NULL),
(4839, 301, 38, NULL),
(4840, 301, 39, NULL),
(4841, 301, 40, NULL),
(4842, 301, 41, NULL),
(4843, 301, 42, NULL),
(4844, 301, 43, NULL),
(4845, 301, 44, NULL),
(4846, 301, 45, NULL),
(4847, 301, 46, NULL),
(4848, 301, 47, NULL),
(4849, 301, 48, NULL),
(4850, 301, 49, NULL),
(4851, 301, 50, NULL),
(4852, 301, 51, NULL),
(4853, 301, 52, NULL),
(4854, 301, 53, NULL),
(4855, 301, 54, NULL),
(4856, 301, 55, NULL),
(4857, 301, 56, NULL),
(4858, 301, 57, NULL),
(4859, 301, 58, NULL),
(4860, 301, 59, NULL),
(4861, 301, 60, NULL),
(4862, 301, 61, NULL),
(4863, 301, 62, NULL),
(4864, 301, 63, NULL),
(4865, 301, 64, NULL),
(4866, 301, 65, NULL),
(4867, 301, 66, NULL),
(4868, 301, 67, NULL),
(4869, 301, 68, NULL),
(4870, 301, 69, NULL),
(4871, 301, 70, NULL),
(4872, 301, 71, NULL),
(4873, 301, 72, NULL),
(4874, 301, 73, NULL),
(4875, 301, 74, NULL),
(4876, 301, 75, NULL),
(4877, 301, 76, NULL),
(4878, 301, 77, NULL),
(4879, 301, 78, NULL),
(4880, 301, 79, NULL),
(4881, 301, 80, NULL),
(4882, 301, 81, NULL),
(4883, 301, 82, NULL),
(4884, 301, 83, NULL),
(4885, 301, 84, NULL),
(4886, 301, 85, NULL),
(4887, 301, 86, NULL),
(4888, 301, 87, NULL),
(4889, 301, 88, NULL),
(4890, 301, 89, NULL),
(4891, 301, 90, NULL),
(4892, 301, 91, NULL),
(4893, 301, 92, NULL),
(4894, 301, 93, NULL),
(4895, 301, 94, NULL),
(4896, 301, 95, NULL),
(4897, 301, 96, NULL),
(4898, 301, 97, NULL),
(4899, 301, 98, NULL),
(4900, 301, 99, NULL),
(4901, 301, 100, NULL),
(4902, 301, 102, NULL),
(4903, 301, 103, NULL),
(4904, 301, 104, NULL),
(4905, 301, 105, NULL),
(4906, 301, 106, NULL),
(4907, 301, 107, NULL),
(4908, 301, 108, NULL),
(4909, 301, 109, NULL),
(4910, 301, 110, NULL),
(4911, 301, 111, NULL),
(4912, 301, 112, NULL),
(4913, 301, 113, NULL),
(4914, 301, 114, NULL),
(4915, 301, 115, NULL),
(4916, 301, 116, NULL),
(4917, 301, 117, NULL),
(4918, 301, 118, NULL),
(4919, 301, 119, NULL),
(4920, 301, 120, NULL),
(4921, 301, 121, NULL),
(4922, 301, 122, NULL),
(4923, 301, 123, NULL),
(4924, 301, 124, NULL),
(4925, 301, 125, NULL),
(4926, 301, 126, NULL),
(4927, 301, 127, NULL),
(4928, 301, 128, NULL),
(4929, 301, 129, NULL),
(4930, 301, 130, NULL),
(4931, 301, 131, NULL),
(4932, 301, 132, NULL),
(4933, 301, 133, NULL),
(4934, 301, 134, NULL),
(4935, 301, 135, NULL),
(4936, 301, 136, NULL),
(4937, 301, 137, NULL),
(4938, 301, 138, NULL),
(4939, 301, 139, NULL),
(4940, 301, 140, NULL),
(4941, 301, 141, NULL),
(4942, 301, 142, NULL),
(4943, 301, 143, NULL),
(4944, 301, 144, NULL),
(4945, 301, 145, NULL),
(4946, 301, 146, NULL),
(4947, 301, 147, NULL),
(4948, 301, 148, NULL),
(4949, 301, 149, NULL),
(4950, 301, 150, NULL),
(4951, 301, 151, NULL),
(4952, 301, 152, NULL),
(4953, 301, 153, NULL),
(4954, 301, 154, NULL),
(4955, 301, 155, NULL),
(4956, 301, 156, NULL),
(4957, 301, 157, NULL),
(4958, 301, 158, NULL),
(4959, 301, 159, NULL),
(4960, 301, 160, NULL),
(4961, 299, 0, NULL),
(4962, 299, 1, NULL),
(4963, 299, 2, NULL),
(4964, 299, 3, NULL),
(4965, 299, 4, NULL),
(4966, 299, 5, NULL),
(4967, 299, 6, NULL),
(4968, 299, 7, NULL),
(4969, 299, 8, NULL),
(4970, 299, 9, NULL),
(4971, 299, 10, NULL),
(4972, 299, 11, NULL),
(4973, 299, 12, NULL),
(4974, 299, 13, NULL),
(4975, 299, 14, NULL),
(4976, 299, 15, NULL),
(4977, 299, 16, NULL),
(4978, 299, 17, NULL),
(4979, 299, 18, NULL),
(4980, 299, 19, NULL),
(4981, 299, 20, NULL),
(4982, 299, 21, NULL),
(4983, 299, 22, NULL),
(4984, 299, 23, NULL),
(4985, 299, 24, NULL),
(4986, 299, 25, NULL),
(4987, 299, 26, NULL),
(4988, 299, 27, NULL),
(4989, 299, 28, NULL),
(4990, 299, 29, NULL),
(4991, 299, 30, NULL),
(4992, 299, 31, NULL),
(4993, 299, 32, NULL),
(4994, 299, 33, NULL),
(4995, 299, 34, NULL),
(4996, 299, 35, NULL),
(4997, 299, 36, NULL),
(4998, 299, 37, NULL),
(4999, 299, 38, NULL),
(5000, 299, 39, NULL),
(5001, 299, 40, NULL),
(5002, 299, 41, NULL),
(5003, 299, 42, NULL),
(5004, 299, 43, NULL),
(5005, 299, 44, NULL),
(5006, 299, 45, NULL),
(5007, 299, 46, NULL),
(5008, 299, 47, NULL),
(5009, 299, 48, NULL),
(5010, 299, 49, NULL),
(5011, 299, 50, NULL),
(5012, 299, 51, NULL),
(5013, 299, 52, NULL),
(5014, 299, 53, NULL),
(5015, 299, 54, NULL),
(5016, 299, 55, NULL),
(5017, 299, 56, NULL),
(5018, 299, 57, NULL),
(5019, 299, 58, NULL),
(5020, 299, 59, NULL),
(5021, 299, 60, NULL),
(5022, 299, 61, NULL),
(5023, 299, 62, NULL),
(5024, 299, 63, NULL),
(5025, 299, 64, NULL),
(5026, 299, 65, NULL),
(5027, 299, 66, NULL),
(5028, 299, 67, NULL),
(5029, 299, 68, NULL),
(5030, 299, 69, NULL),
(5031, 299, 70, NULL),
(5032, 299, 71, NULL),
(5033, 299, 72, NULL),
(5034, 299, 73, NULL),
(5035, 299, 74, NULL),
(5036, 299, 75, NULL),
(5037, 299, 76, NULL),
(5038, 299, 77, NULL),
(5039, 299, 78, NULL),
(5040, 299, 79, NULL),
(5041, 299, 80, NULL),
(5042, 299, 81, NULL),
(5043, 299, 82, NULL),
(5044, 299, 83, NULL),
(5045, 299, 84, NULL),
(5046, 299, 85, NULL),
(5047, 299, 86, NULL),
(5048, 299, 87, NULL),
(5049, 299, 88, NULL),
(5050, 299, 89, NULL),
(5051, 299, 90, NULL),
(5052, 299, 91, NULL),
(5053, 299, 92, NULL),
(5054, 299, 93, NULL),
(5055, 299, 94, NULL),
(5056, 299, 95, NULL),
(5057, 299, 96, NULL),
(5058, 299, 97, NULL),
(5059, 299, 98, NULL),
(5060, 299, 99, NULL),
(5061, 299, 100, NULL),
(5062, 299, 102, NULL),
(5063, 299, 103, NULL),
(5064, 299, 104, NULL),
(5065, 299, 105, NULL),
(5066, 299, 106, NULL),
(5067, 299, 107, NULL),
(5068, 299, 108, NULL),
(5069, 299, 109, NULL),
(5070, 299, 110, NULL),
(5071, 299, 111, NULL),
(5072, 299, 112, NULL),
(5073, 299, 113, NULL),
(5074, 299, 114, NULL),
(5075, 299, 115, NULL),
(5076, 299, 116, NULL),
(5077, 299, 117, NULL),
(5078, 299, 118, NULL),
(5079, 299, 119, NULL),
(5080, 299, 120, NULL),
(5081, 299, 121, NULL),
(5082, 299, 122, NULL),
(5083, 299, 123, NULL),
(5084, 299, 124, NULL),
(5085, 299, 125, NULL),
(5086, 299, 126, NULL),
(5087, 299, 127, NULL),
(5088, 299, 128, NULL),
(5089, 299, 129, NULL),
(5090, 299, 130, NULL),
(5091, 299, 131, NULL),
(5092, 299, 132, NULL),
(5093, 299, 133, NULL),
(5094, 299, 134, NULL),
(5095, 299, 135, NULL),
(5096, 299, 136, NULL),
(5097, 299, 137, NULL),
(5098, 299, 138, NULL),
(5099, 299, 139, NULL),
(5100, 299, 140, NULL),
(5101, 299, 141, NULL),
(5102, 299, 142, NULL),
(5103, 299, 143, NULL),
(5104, 299, 144, NULL),
(5105, 299, 145, NULL),
(5106, 299, 146, NULL),
(5107, 299, 147, NULL),
(5108, 299, 148, NULL),
(5109, 299, 149, NULL),
(5110, 299, 150, NULL),
(5111, 299, 151, NULL),
(5112, 299, 152, NULL),
(5113, 299, 153, NULL),
(5114, 299, 154, NULL),
(5115, 299, 155, NULL),
(5116, 299, 156, NULL),
(5117, 299, 157, NULL),
(5118, 299, 158, NULL),
(5119, 299, 159, NULL),
(5120, 299, 160, NULL),
(5121, 304, 0, NULL),
(5122, 304, 1, NULL),
(5123, 304, 2, NULL),
(5124, 304, 3, NULL),
(5125, 304, 4, NULL),
(5126, 304, 5, NULL),
(5127, 304, 6, NULL),
(5128, 304, 7, NULL),
(5129, 304, 8, NULL),
(5130, 304, 9, NULL),
(5131, 304, 10, NULL),
(5132, 304, 11, NULL),
(5133, 304, 12, NULL),
(5134, 304, 13, NULL),
(5135, 304, 14, NULL),
(5136, 304, 15, NULL),
(5137, 304, 16, NULL),
(5138, 304, 17, NULL),
(5139, 304, 18, NULL),
(5140, 304, 19, NULL),
(5141, 304, 20, NULL),
(5142, 304, 21, NULL),
(5143, 304, 22, NULL),
(5144, 304, 23, NULL),
(5145, 304, 24, NULL),
(5146, 304, 25, NULL),
(5147, 304, 26, NULL),
(5148, 304, 27, NULL),
(5149, 304, 28, NULL),
(5150, 304, 29, NULL),
(5151, 304, 30, NULL),
(5152, 304, 31, NULL),
(5153, 304, 32, NULL),
(5154, 304, 33, NULL),
(5155, 304, 34, NULL),
(5156, 304, 35, NULL),
(5157, 304, 36, NULL),
(5158, 304, 37, NULL),
(5159, 304, 38, NULL),
(5160, 304, 39, NULL),
(5161, 304, 40, NULL),
(5162, 304, 41, NULL),
(5163, 304, 42, NULL),
(5164, 304, 43, NULL),
(5165, 304, 44, NULL),
(5166, 304, 45, NULL),
(5167, 304, 46, NULL),
(5168, 304, 47, NULL),
(5169, 304, 48, NULL),
(5170, 304, 49, NULL),
(5171, 304, 50, NULL),
(5172, 304, 51, NULL),
(5173, 304, 52, NULL),
(5174, 304, 53, NULL),
(5175, 304, 54, NULL),
(5176, 304, 55, NULL),
(5177, 304, 56, NULL),
(5178, 304, 57, NULL),
(5179, 304, 58, NULL),
(5180, 304, 59, NULL),
(5181, 304, 60, NULL),
(5182, 304, 61, NULL),
(5183, 304, 62, NULL),
(5184, 304, 63, NULL),
(5185, 304, 64, NULL),
(5186, 304, 65, NULL),
(5187, 304, 66, NULL),
(5188, 304, 67, NULL),
(5189, 304, 68, NULL),
(5190, 304, 69, NULL),
(5191, 304, 70, NULL),
(5192, 304, 71, NULL),
(5193, 304, 72, NULL),
(5194, 304, 73, NULL),
(5195, 304, 74, NULL),
(5196, 304, 75, NULL),
(5197, 304, 76, NULL),
(5198, 304, 77, NULL),
(5199, 304, 78, NULL),
(5200, 304, 79, NULL),
(5201, 304, 80, NULL),
(5202, 304, 81, NULL),
(5203, 304, 82, NULL),
(5204, 304, 83, NULL),
(5205, 304, 84, NULL),
(5206, 304, 85, NULL),
(5207, 304, 86, NULL),
(5208, 304, 87, NULL),
(5209, 304, 88, NULL),
(5210, 304, 89, NULL),
(5211, 304, 90, NULL),
(5212, 304, 91, NULL),
(5213, 304, 92, NULL),
(5214, 304, 93, NULL),
(5215, 304, 94, NULL),
(5216, 304, 95, NULL),
(5217, 304, 96, NULL),
(5218, 304, 97, NULL),
(5219, 304, 98, NULL),
(5220, 304, 99, NULL),
(5221, 304, 100, NULL),
(5222, 304, 102, NULL),
(5223, 304, 103, NULL),
(5224, 304, 104, NULL),
(5225, 304, 105, NULL),
(5226, 304, 106, NULL),
(5227, 304, 107, NULL),
(5228, 304, 108, NULL),
(5229, 304, 109, NULL),
(5230, 304, 110, NULL),
(5231, 304, 111, NULL),
(5232, 304, 112, NULL),
(5233, 304, 113, NULL),
(5234, 304, 114, NULL),
(5235, 304, 115, NULL),
(5236, 304, 116, NULL),
(5237, 304, 117, NULL),
(5238, 304, 118, NULL),
(5239, 304, 119, NULL),
(5240, 304, 120, NULL),
(5241, 304, 121, NULL),
(5242, 304, 122, NULL),
(5243, 304, 123, NULL),
(5244, 304, 124, NULL),
(5245, 304, 125, NULL),
(5246, 304, 126, NULL),
(5247, 304, 127, NULL),
(5248, 304, 128, NULL),
(5249, 304, 129, NULL),
(5250, 304, 130, NULL),
(5251, 304, 131, NULL),
(5252, 304, 132, NULL),
(5253, 304, 133, NULL),
(5254, 304, 134, NULL),
(5255, 304, 135, NULL),
(5256, 304, 136, NULL),
(5257, 304, 137, NULL),
(5258, 304, 138, NULL),
(5259, 304, 139, NULL),
(5260, 304, 140, NULL),
(5261, 304, 141, NULL),
(5262, 304, 142, NULL),
(5263, 304, 143, NULL),
(5264, 304, 144, NULL),
(5265, 304, 145, NULL),
(5266, 304, 146, NULL),
(5267, 304, 147, NULL),
(5268, 304, 148, NULL),
(5269, 304, 149, NULL),
(5270, 304, 150, NULL),
(5271, 304, 151, NULL),
(5272, 304, 152, NULL),
(5273, 304, 153, NULL),
(5274, 304, 154, NULL),
(5275, 304, 155, NULL),
(5276, 304, 156, NULL),
(5277, 304, 157, NULL),
(5278, 304, 158, NULL),
(5279, 304, 159, NULL),
(5280, 304, 160, NULL),
(5441, 120, 0, NULL),
(5442, 120, 1, NULL),
(5443, 120, 2, NULL),
(5444, 120, 3, NULL),
(5445, 120, 4, NULL),
(5446, 120, 5, NULL),
(5447, 120, 6, NULL),
(5448, 120, 7, NULL),
(5449, 120, 8, NULL),
(5450, 120, 9, NULL),
(5451, 120, 10, NULL),
(5452, 120, 11, NULL),
(5453, 120, 12, NULL),
(5454, 120, 13, NULL),
(5455, 120, 14, NULL),
(5456, 120, 15, NULL),
(5457, 120, 16, NULL),
(5458, 120, 17, NULL),
(5459, 120, 18, NULL),
(5460, 120, 19, NULL),
(5461, 120, 20, NULL),
(5462, 120, 21, NULL),
(5463, 120, 22, NULL),
(5464, 120, 23, NULL),
(5465, 120, 24, NULL),
(5466, 120, 25, NULL),
(5467, 120, 26, NULL),
(5468, 120, 27, NULL),
(5469, 120, 28, NULL),
(5470, 120, 29, NULL),
(5471, 120, 30, NULL),
(5472, 120, 31, NULL),
(5473, 120, 32, NULL),
(5474, 120, 33, NULL),
(5475, 120, 34, NULL),
(5476, 120, 35, NULL),
(5477, 120, 36, NULL),
(5478, 120, 37, NULL),
(5479, 120, 38, NULL),
(5480, 120, 39, NULL),
(5481, 120, 40, NULL),
(5482, 120, 41, NULL),
(5483, 120, 42, NULL),
(5484, 120, 43, NULL),
(5485, 120, 44, NULL),
(5486, 120, 45, NULL),
(5487, 120, 46, NULL),
(5488, 120, 47, NULL),
(5489, 120, 48, NULL),
(5490, 120, 49, NULL),
(5491, 120, 50, NULL),
(5492, 120, 51, NULL),
(5493, 120, 52, NULL),
(5494, 120, 53, NULL),
(5495, 120, 54, NULL),
(5496, 120, 55, NULL),
(5497, 120, 56, NULL),
(5498, 120, 57, NULL),
(5499, 120, 58, NULL),
(5500, 120, 59, NULL),
(5501, 120, 60, NULL),
(5502, 120, 61, NULL),
(5503, 120, 62, NULL),
(5504, 120, 63, NULL),
(5505, 120, 64, NULL),
(5506, 120, 65, NULL),
(5507, 120, 66, NULL),
(5508, 120, 67, NULL),
(5509, 120, 68, NULL),
(5510, 120, 69, NULL),
(5511, 120, 70, NULL),
(5512, 120, 71, NULL),
(5513, 120, 72, NULL),
(5514, 120, 73, NULL),
(5515, 120, 74, NULL),
(5516, 120, 75, NULL),
(5517, 120, 76, NULL),
(5518, 120, 77, NULL),
(5519, 120, 78, NULL),
(5520, 120, 79, NULL),
(5521, 120, 80, NULL),
(5522, 120, 81, NULL),
(5523, 120, 82, NULL),
(5524, 120, 83, NULL),
(5525, 120, 84, NULL),
(5526, 120, 85, NULL),
(5527, 120, 86, NULL),
(5528, 120, 87, NULL),
(5529, 120, 88, NULL),
(5530, 120, 89, NULL),
(5531, 120, 90, NULL),
(5532, 120, 91, NULL),
(5533, 120, 92, NULL),
(5534, 120, 93, NULL),
(5535, 120, 94, NULL),
(5536, 120, 95, NULL),
(5537, 120, 96, NULL),
(5538, 120, 97, NULL),
(5539, 120, 98, NULL),
(5540, 120, 99, NULL),
(5541, 120, 100, NULL),
(5542, 120, 102, NULL),
(5543, 120, 103, NULL),
(5544, 120, 104, NULL),
(5545, 120, 105, NULL),
(5546, 120, 106, NULL),
(5547, 120, 107, NULL),
(5548, 120, 108, NULL),
(5549, 120, 109, NULL),
(5550, 120, 110, NULL),
(5551, 120, 111, NULL),
(5552, 120, 112, NULL),
(5553, 120, 113, NULL),
(5554, 120, 114, NULL),
(5555, 120, 115, NULL),
(5556, 120, 116, NULL),
(5557, 120, 117, NULL),
(5558, 120, 118, NULL),
(5559, 120, 119, NULL),
(5560, 120, 120, NULL),
(5561, 120, 121, NULL),
(5562, 120, 122, NULL),
(5563, 120, 123, NULL),
(5564, 120, 124, NULL),
(5565, 120, 125, NULL),
(5566, 120, 126, NULL),
(5567, 120, 127, NULL),
(5568, 120, 128, NULL),
(5569, 120, 129, NULL),
(5570, 120, 130, NULL),
(5571, 120, 131, NULL),
(5572, 120, 132, NULL),
(5573, 120, 133, NULL),
(5574, 120, 134, NULL),
(5575, 120, 135, NULL),
(5576, 120, 136, NULL),
(5577, 120, 137, NULL),
(5578, 120, 138, NULL),
(5579, 120, 139, NULL),
(5580, 120, 140, NULL),
(5581, 120, 141, NULL),
(5582, 120, 142, NULL),
(5583, 120, 143, NULL),
(5584, 120, 144, NULL),
(5585, 120, 145, NULL),
(5586, 120, 146, NULL),
(5587, 120, 147, NULL),
(5588, 120, 148, NULL),
(5589, 120, 149, NULL),
(5590, 120, 150, NULL),
(5591, 120, 151, NULL),
(5592, 120, 152, NULL),
(5593, 120, 153, NULL),
(5594, 120, 154, NULL),
(5595, 120, 155, NULL),
(5596, 120, 156, NULL),
(5597, 120, 157, NULL),
(5598, 120, 158, NULL),
(5599, 120, 159, NULL),
(5600, 120, 160, NULL),
(5601, 302, 0, NULL),
(5602, 302, 1, NULL),
(5603, 302, 2, NULL),
(5604, 302, 3, NULL),
(5605, 302, 4, NULL),
(5606, 302, 5, NULL),
(5607, 302, 6, NULL),
(5608, 302, 7, NULL),
(5609, 302, 8, NULL),
(5610, 302, 9, NULL),
(5611, 302, 10, NULL),
(5612, 302, 11, NULL),
(5613, 302, 12, NULL),
(5614, 302, 13, NULL),
(5615, 302, 14, NULL),
(5616, 302, 15, NULL),
(5617, 302, 16, NULL),
(5618, 302, 17, NULL),
(5619, 302, 18, NULL),
(5620, 302, 19, NULL),
(5621, 302, 20, NULL),
(5622, 302, 21, NULL),
(5623, 302, 22, NULL),
(5624, 302, 23, NULL),
(5625, 302, 24, NULL),
(5626, 302, 25, NULL),
(5627, 302, 26, NULL),
(5628, 302, 27, NULL),
(5629, 302, 28, NULL),
(5630, 302, 29, NULL),
(5631, 302, 30, NULL),
(5632, 302, 31, NULL),
(5633, 302, 32, NULL),
(5634, 302, 33, NULL),
(5635, 302, 34, NULL),
(5636, 302, 35, NULL),
(5637, 302, 36, NULL),
(5638, 302, 37, NULL),
(5639, 302, 38, NULL),
(5640, 302, 39, NULL),
(5641, 302, 40, NULL),
(5642, 302, 41, NULL),
(5643, 302, 42, NULL),
(5644, 302, 43, NULL),
(5645, 302, 44, NULL),
(5646, 302, 45, NULL),
(5647, 302, 46, NULL),
(5648, 302, 47, NULL),
(5649, 302, 48, NULL),
(5650, 302, 49, NULL),
(5651, 302, 50, NULL),
(5652, 302, 51, NULL),
(5653, 302, 52, NULL),
(5654, 302, 53, NULL),
(5655, 302, 54, NULL),
(5656, 302, 55, NULL),
(5657, 302, 56, NULL),
(5658, 302, 57, NULL),
(5659, 302, 58, NULL),
(5660, 302, 59, NULL),
(5661, 302, 60, NULL),
(5662, 302, 61, NULL),
(5663, 302, 62, NULL),
(5664, 302, 63, NULL),
(5665, 302, 64, NULL),
(5666, 302, 65, NULL),
(5667, 302, 66, NULL),
(5668, 302, 67, NULL),
(5669, 302, 68, NULL),
(5670, 302, 69, NULL),
(5671, 302, 70, NULL),
(5672, 302, 71, NULL),
(5673, 302, 72, NULL),
(5674, 302, 73, NULL),
(5675, 302, 74, NULL),
(5676, 302, 75, NULL),
(5677, 302, 76, NULL),
(5678, 302, 77, NULL),
(5679, 302, 78, NULL),
(5680, 302, 79, NULL),
(5681, 302, 80, NULL),
(5682, 302, 81, NULL),
(5683, 302, 82, NULL),
(5684, 302, 83, NULL),
(5685, 302, 84, NULL),
(5686, 302, 85, NULL),
(5687, 302, 86, NULL),
(5688, 302, 87, NULL),
(5689, 302, 88, NULL),
(5690, 302, 89, NULL),
(5691, 302, 90, NULL),
(5692, 302, 91, NULL),
(5693, 302, 92, NULL),
(5694, 302, 93, NULL),
(5695, 302, 94, NULL),
(5696, 302, 95, NULL),
(5697, 302, 96, NULL),
(5698, 302, 97, NULL),
(5699, 302, 98, NULL),
(5700, 302, 99, NULL),
(5701, 302, 100, NULL),
(5702, 302, 102, NULL),
(5703, 302, 103, NULL),
(5704, 302, 104, NULL),
(5705, 302, 105, NULL),
(5706, 302, 106, NULL),
(5707, 302, 107, NULL),
(5708, 302, 108, NULL),
(5709, 302, 109, NULL),
(5710, 302, 110, NULL),
(5711, 302, 111, NULL),
(5712, 302, 112, NULL),
(5713, 302, 113, NULL),
(5714, 302, 114, NULL),
(5715, 302, 115, NULL),
(5716, 302, 116, NULL),
(5717, 302, 117, NULL),
(5718, 302, 118, NULL),
(5719, 302, 119, NULL),
(5720, 302, 120, NULL),
(5721, 302, 121, NULL),
(5722, 302, 122, NULL),
(5723, 302, 123, NULL),
(5724, 302, 124, NULL),
(5725, 302, 125, NULL),
(5726, 302, 126, NULL),
(5727, 302, 127, NULL),
(5728, 302, 128, NULL),
(5729, 302, 129, NULL),
(5730, 302, 130, NULL),
(5731, 302, 131, NULL),
(5732, 302, 132, NULL),
(5733, 302, 133, NULL),
(5734, 302, 134, NULL),
(5735, 302, 135, NULL),
(5736, 302, 136, NULL),
(5737, 302, 137, NULL),
(5738, 302, 138, NULL),
(5739, 302, 139, NULL),
(5740, 302, 140, NULL),
(5741, 302, 141, NULL),
(5742, 302, 142, NULL),
(5743, 302, 143, NULL),
(5744, 302, 144, NULL),
(5745, 302, 145, NULL),
(5746, 302, 146, NULL),
(5747, 302, 147, NULL),
(5748, 302, 148, NULL),
(5749, 302, 149, NULL),
(5750, 302, 150, NULL),
(5751, 302, 151, NULL),
(5752, 302, 152, NULL),
(5753, 302, 153, NULL),
(5754, 302, 154, NULL),
(5755, 302, 155, NULL),
(5756, 302, 156, NULL),
(5757, 302, 157, NULL),
(5758, 302, 158, NULL),
(5759, 302, 159, NULL),
(5760, 302, 160, NULL),
(5761, 306, 0, NULL),
(5762, 306, 1, NULL),
(5763, 306, 2, NULL),
(5764, 306, 3, NULL),
(5765, 306, 4, NULL),
(5766, 306, 5, NULL),
(5767, 306, 6, NULL),
(5768, 306, 7, NULL),
(5769, 306, 8, NULL),
(5770, 306, 9, NULL),
(5771, 306, 10, NULL),
(5772, 306, 11, NULL),
(5773, 306, 12, NULL),
(5774, 306, 13, NULL),
(5775, 306, 14, NULL),
(5776, 306, 15, NULL),
(5777, 306, 16, NULL),
(5778, 306, 17, NULL),
(5779, 306, 18, NULL),
(5780, 306, 19, NULL),
(5781, 306, 20, NULL),
(5782, 306, 21, NULL),
(5783, 306, 22, NULL),
(5784, 306, 23, NULL),
(5785, 306, 24, NULL),
(5786, 306, 25, NULL),
(5787, 306, 26, NULL),
(5788, 306, 27, NULL),
(5789, 306, 28, NULL),
(5790, 306, 29, NULL),
(5791, 306, 30, NULL),
(5792, 306, 31, NULL),
(5793, 306, 32, NULL),
(5794, 306, 33, NULL),
(5795, 306, 34, NULL),
(5796, 306, 35, NULL),
(5797, 306, 36, NULL),
(5798, 306, 37, NULL),
(5799, 306, 38, NULL),
(5800, 306, 39, NULL),
(5801, 306, 40, NULL),
(5802, 306, 41, NULL),
(5803, 306, 42, NULL),
(5804, 306, 43, NULL),
(5805, 306, 44, NULL),
(5806, 306, 45, NULL),
(5807, 306, 46, NULL),
(5808, 306, 47, NULL),
(5809, 306, 48, NULL),
(5810, 306, 49, NULL),
(5811, 306, 50, NULL),
(5812, 306, 51, NULL),
(5813, 306, 52, NULL),
(5814, 306, 53, NULL),
(5815, 306, 54, NULL),
(5816, 306, 55, NULL),
(5817, 306, 56, NULL),
(5818, 306, 57, NULL),
(5819, 306, 58, NULL),
(5820, 306, 59, NULL),
(5821, 306, 60, NULL),
(5822, 306, 61, NULL),
(5823, 306, 62, NULL),
(5824, 306, 63, NULL),
(5825, 306, 64, NULL),
(5826, 306, 65, NULL),
(5827, 306, 66, NULL),
(5828, 306, 67, NULL),
(5829, 306, 68, NULL),
(5830, 306, 69, NULL),
(5831, 306, 70, NULL),
(5832, 306, 71, NULL),
(5833, 306, 72, NULL),
(5834, 306, 73, NULL),
(5835, 306, 74, NULL),
(5836, 306, 75, NULL),
(5837, 306, 76, NULL),
(5838, 306, 77, NULL),
(5839, 306, 78, NULL),
(5840, 306, 79, NULL),
(5841, 306, 80, NULL),
(5842, 306, 81, NULL),
(5843, 306, 82, NULL),
(5844, 306, 83, NULL),
(5845, 306, 84, NULL),
(5846, 306, 85, NULL),
(5847, 306, 86, NULL),
(5848, 306, 87, NULL),
(5849, 306, 88, NULL),
(5850, 306, 89, NULL),
(5851, 306, 90, NULL),
(5852, 306, 91, NULL),
(5853, 306, 92, NULL),
(5854, 306, 93, NULL),
(5855, 306, 94, NULL),
(5856, 306, 95, NULL),
(5857, 306, 96, NULL),
(5858, 306, 97, NULL),
(5859, 306, 98, NULL),
(5860, 306, 99, NULL),
(5861, 306, 100, NULL),
(5862, 306, 102, NULL),
(5863, 306, 103, NULL),
(5864, 306, 104, NULL),
(5865, 306, 105, NULL),
(5866, 306, 106, NULL),
(5867, 306, 107, NULL),
(5868, 306, 108, NULL),
(5869, 306, 109, NULL),
(5870, 306, 110, NULL),
(5871, 306, 111, NULL),
(5872, 306, 112, NULL),
(5873, 306, 113, NULL),
(5874, 306, 114, NULL),
(5875, 306, 115, NULL),
(5876, 306, 116, NULL),
(5877, 306, 117, NULL),
(5878, 306, 118, NULL),
(5879, 306, 119, NULL),
(5880, 306, 120, NULL),
(5881, 306, 121, NULL),
(5882, 306, 122, NULL),
(5883, 306, 123, NULL),
(5884, 306, 124, NULL),
(5885, 306, 125, NULL),
(5886, 306, 126, NULL),
(5887, 306, 127, NULL),
(5888, 306, 128, NULL),
(5889, 306, 129, NULL),
(5890, 306, 130, NULL),
(5891, 306, 131, NULL),
(5892, 306, 132, NULL),
(5893, 306, 133, NULL),
(5894, 306, 134, NULL),
(5895, 306, 135, NULL),
(5896, 306, 136, NULL),
(5897, 306, 137, NULL),
(5898, 306, 138, NULL),
(5899, 306, 139, NULL),
(5900, 306, 140, NULL),
(5901, 306, 141, NULL),
(5902, 306, 142, NULL),
(5903, 306, 143, NULL),
(5904, 306, 144, NULL),
(5905, 306, 145, NULL),
(5906, 306, 146, NULL),
(5907, 306, 147, NULL),
(5908, 306, 148, NULL),
(5909, 306, 149, NULL),
(5910, 306, 150, NULL),
(5911, 306, 151, NULL),
(5912, 306, 152, NULL),
(5913, 306, 153, NULL),
(5914, 306, 154, NULL),
(5915, 306, 155, NULL),
(5916, 306, 156, NULL),
(5917, 306, 157, NULL),
(5918, 306, 158, NULL),
(5919, 306, 159, NULL),
(5920, 306, 160, NULL),
(5921, 307, 0, NULL),
(5922, 307, 1, NULL),
(5923, 307, 2, NULL),
(5924, 307, 3, NULL),
(5925, 307, 4, NULL),
(5926, 307, 5, NULL),
(5927, 307, 6, NULL),
(5928, 307, 7, '#f0df70'),
(5929, 307, 8, '#000000'),
(5930, 307, 9, NULL),
(5931, 307, 10, 'normal'),
(5932, 307, 11, 'block'),
(5933, 307, 12, 'normal'),
(5934, 307, 13, '#e9c235'),
(5935, 307, 14, 'left'),
(5936, 307, 15, 'none'),
(5937, 307, 16, 'static'),
(5938, 307, 17, NULL),
(5939, 307, 18, 'none'),
(5940, 307, 19, NULL),
(5941, 307, 20, NULL),
(5942, 307, 21, NULL),
(5943, 307, 22, NULL),
(5944, 307, 23, 'linear'),
(5945, 307, 24, 'none'),
(5946, 307, 25, NULL),
(5947, 307, 26, NULL),
(5948, 307, 27, NULL),
(5949, 307, 28, NULL),
(5950, 307, 29, NULL),
(5951, 307, 30, NULL),
(5952, 307, 31, NULL),
(5953, 307, 32, NULL),
(5954, 307, 33, NULL),
(5955, 307, 34, NULL),
(5956, 307, 35, NULL),
(5957, 307, 36, NULL),
(5958, 307, 37, NULL),
(5959, 307, 38, NULL),
(5960, 307, 39, NULL),
(5961, 307, 40, NULL),
(5962, 307, 41, NULL),
(5963, 307, 42, NULL),
(5964, 307, 43, NULL),
(5965, 307, 44, NULL),
(5966, 307, 45, NULL),
(5967, 307, 46, NULL),
(5968, 307, 47, NULL),
(5969, 307, 48, NULL),
(5970, 307, 49, NULL),
(5971, 307, 50, NULL),
(5972, 307, 51, NULL),
(5973, 307, 52, NULL),
(5974, 307, 53, NULL),
(5975, 307, 54, NULL),
(5976, 307, 55, NULL),
(5977, 307, 56, NULL),
(5978, 307, 57, NULL),
(5979, 307, 58, NULL),
(5980, 307, 59, NULL),
(5981, 307, 60, NULL),
(5982, 307, 61, NULL),
(5983, 307, 62, NULL),
(5984, 307, 63, NULL),
(5985, 307, 64, NULL),
(5986, 307, 65, NULL),
(5987, 307, 66, NULL),
(5988, 307, 67, NULL),
(5989, 307, 68, NULL),
(5990, 307, 69, NULL),
(5991, 307, 70, NULL),
(5992, 307, 71, NULL),
(5993, 307, 72, NULL),
(5994, 307, 73, NULL),
(5995, 307, 74, NULL),
(5996, 307, 75, NULL),
(5997, 307, 76, NULL),
(5998, 307, 77, NULL),
(5999, 307, 78, NULL),
(6000, 307, 79, NULL),
(6001, 307, 80, NULL),
(6002, 307, 81, NULL),
(6003, 307, 82, NULL),
(6004, 307, 83, NULL),
(6005, 307, 84, NULL),
(6006, 307, 85, NULL),
(6007, 307, 86, NULL),
(6008, 307, 87, NULL),
(6009, 307, 88, NULL),
(6010, 307, 89, NULL),
(6011, 307, 90, NULL),
(6012, 307, 91, NULL),
(6013, 307, 92, NULL),
(6014, 307, 93, NULL),
(6015, 307, 94, NULL),
(6016, 307, 95, NULL),
(6017, 307, 96, NULL),
(6018, 307, 97, NULL),
(6019, 307, 98, NULL),
(6020, 307, 99, NULL),
(6021, 307, 100, NULL),
(6022, 307, 102, NULL),
(6023, 307, 103, NULL),
(6024, 307, 104, NULL),
(6025, 307, 105, NULL),
(6026, 307, 106, NULL),
(6027, 307, 107, NULL),
(6028, 307, 108, NULL),
(6029, 307, 109, NULL),
(6030, 307, 110, NULL),
(6031, 307, 111, NULL),
(6032, 307, 112, NULL),
(6033, 307, 113, NULL),
(6034, 307, 114, NULL),
(6035, 307, 115, NULL),
(6036, 307, 116, NULL),
(6037, 307, 117, NULL),
(6038, 307, 118, NULL),
(6039, 307, 119, NULL),
(6040, 307, 120, NULL),
(6041, 307, 121, NULL),
(6042, 307, 122, NULL),
(6043, 307, 123, NULL),
(6044, 307, 124, NULL),
(6045, 307, 125, NULL),
(6046, 307, 126, NULL),
(6047, 307, 127, NULL),
(6048, 307, 128, NULL),
(6049, 307, 129, NULL),
(6050, 307, 130, NULL),
(6051, 307, 131, NULL),
(6052, 307, 132, NULL),
(6053, 307, 133, NULL),
(6054, 307, 134, NULL),
(6055, 307, 135, NULL),
(6056, 307, 136, NULL),
(6057, 307, 137, NULL),
(6058, 307, 138, NULL),
(6059, 307, 139, NULL),
(6060, 307, 140, NULL),
(6061, 307, 141, NULL),
(6062, 307, 142, NULL),
(6063, 307, 143, NULL),
(6064, 307, 144, NULL),
(6065, 307, 145, NULL),
(6066, 307, 146, NULL),
(6067, 307, 147, NULL),
(6068, 307, 148, NULL),
(6069, 307, 149, NULL),
(6070, 307, 150, NULL),
(6071, 307, 151, NULL),
(6072, 307, 152, NULL),
(6073, 307, 153, NULL),
(6074, 307, 154, NULL),
(6075, 307, 155, NULL),
(6076, 307, 156, NULL),
(6077, 307, 157, NULL),
(6078, 307, 158, NULL),
(6079, 307, 159, NULL),
(6080, 307, 160, NULL),
(6241, 308, 0, NULL),
(6242, 308, 1, NULL),
(6243, 308, 2, NULL),
(6244, 308, 3, NULL),
(6245, 308, 4, NULL),
(6246, 308, 5, NULL),
(6247, 308, 6, NULL),
(6248, 308, 7, NULL),
(6249, 308, 8, NULL),
(6250, 308, 9, NULL),
(6251, 308, 10, NULL),
(6252, 308, 11, NULL),
(6253, 308, 12, NULL),
(6254, 308, 13, NULL),
(6255, 308, 14, NULL),
(6256, 308, 15, NULL),
(6257, 308, 16, NULL),
(6258, 308, 17, NULL),
(6259, 308, 18, NULL),
(6260, 308, 19, NULL),
(6261, 308, 20, NULL),
(6262, 308, 21, NULL),
(6263, 308, 22, NULL),
(6264, 308, 23, NULL),
(6265, 308, 24, NULL),
(6266, 308, 25, NULL),
(6267, 308, 26, NULL),
(6268, 308, 27, NULL),
(6269, 308, 28, NULL),
(6270, 308, 29, NULL),
(6271, 308, 30, NULL),
(6272, 308, 31, NULL),
(6273, 308, 32, NULL),
(6274, 308, 33, NULL),
(6275, 308, 34, NULL),
(6276, 308, 35, NULL),
(6277, 308, 36, NULL),
(6278, 308, 37, NULL),
(6279, 308, 38, NULL),
(6280, 308, 39, NULL),
(6281, 308, 40, NULL),
(6282, 308, 41, NULL),
(6283, 308, 42, NULL),
(6284, 308, 43, NULL),
(6285, 308, 44, NULL),
(6286, 308, 45, NULL),
(6287, 308, 46, NULL),
(6288, 308, 47, NULL),
(6289, 308, 48, NULL),
(6290, 308, 49, NULL),
(6291, 308, 50, NULL),
(6292, 308, 51, NULL),
(6293, 308, 52, NULL),
(6294, 308, 53, NULL),
(6295, 308, 54, NULL),
(6296, 308, 55, NULL),
(6297, 308, 56, NULL),
(6298, 308, 57, NULL),
(6299, 308, 58, NULL),
(6300, 308, 59, NULL),
(6301, 308, 60, NULL),
(6302, 308, 61, NULL),
(6303, 308, 62, NULL),
(6304, 308, 63, NULL),
(6305, 308, 64, NULL),
(6306, 308, 65, NULL),
(6307, 308, 66, NULL),
(6308, 308, 67, NULL),
(6309, 308, 68, NULL),
(6310, 308, 69, NULL),
(6311, 308, 70, NULL),
(6312, 308, 71, NULL),
(6313, 308, 72, NULL),
(6314, 308, 73, NULL),
(6315, 308, 74, NULL),
(6316, 308, 75, NULL),
(6317, 308, 76, NULL),
(6318, 308, 77, NULL),
(6319, 308, 78, NULL),
(6320, 308, 79, NULL),
(6321, 308, 80, NULL),
(6322, 308, 81, NULL),
(6323, 308, 82, NULL),
(6324, 308, 83, NULL),
(6325, 308, 84, NULL),
(6326, 308, 85, NULL),
(6327, 308, 86, NULL),
(6328, 308, 87, NULL),
(6329, 308, 88, NULL),
(6330, 308, 89, NULL),
(6331, 308, 90, NULL),
(6332, 308, 91, NULL),
(6333, 308, 92, NULL),
(6334, 308, 93, NULL),
(6335, 308, 94, NULL),
(6336, 308, 95, NULL),
(6337, 308, 96, NULL),
(6338, 308, 97, NULL),
(6339, 308, 98, NULL),
(6340, 308, 99, NULL),
(6341, 308, 100, NULL),
(6342, 308, 102, NULL),
(6343, 308, 103, NULL),
(6344, 308, 104, NULL),
(6345, 308, 105, NULL),
(6346, 308, 106, NULL),
(6347, 308, 107, '20'),
(6348, 308, 108, '#ffffff'),
(6349, 308, 109, '#878787'),
(6350, 308, 110, NULL),
(6351, 308, 111, 'normal'),
(6352, 308, 112, 'block'),
(6353, 308, 113, 'normal'),
(6354, 308, 114, '#808080'),
(6355, 308, 115, 'left'),
(6356, 308, 116, 'none'),
(6357, 308, 117, 'static'),
(6358, 308, 118, NULL),
(6359, 308, 119, 'none'),
(6360, 308, 120, NULL),
(6361, 308, 121, NULL),
(6362, 308, 122, NULL),
(6363, 308, 123, NULL),
(6364, 308, 124, 'linear'),
(6365, 308, 125, 'none'),
(6366, 308, 126, NULL),
(6367, 308, 127, NULL),
(6368, 308, 128, NULL),
(6369, 308, 129, NULL),
(6370, 308, 130, NULL),
(6371, 308, 131, NULL),
(6372, 308, 132, NULL),
(6373, 308, 133, NULL),
(6374, 308, 134, NULL),
(6375, 308, 135, NULL),
(6376, 308, 136, NULL),
(6377, 308, 137, NULL),
(6378, 308, 138, NULL),
(6379, 308, 139, NULL),
(6380, 308, 140, NULL),
(6381, 308, 141, NULL),
(6382, 308, 142, NULL),
(6383, 308, 143, NULL),
(6384, 308, 144, NULL),
(6385, 308, 145, NULL),
(6386, 308, 146, NULL),
(6387, 308, 147, NULL),
(6388, 308, 148, NULL),
(6389, 308, 149, NULL),
(6390, 308, 150, NULL),
(6391, 308, 151, NULL),
(6392, 308, 152, NULL),
(6393, 308, 153, NULL),
(6394, 308, 154, NULL),
(6395, 308, 155, NULL),
(6396, 308, 156, NULL),
(6397, 308, 157, NULL),
(6398, 308, 158, NULL),
(6399, 308, 159, NULL),
(6400, 308, 160, NULL),
(7041, 309, 0, NULL),
(7042, 309, 1, '450px'),
(7043, 309, 2, NULL),
(7044, 309, 3, NULL),
(7045, 309, 4, '4px'),
(7046, 309, 5, NULL),
(7047, 309, 6, NULL),
(7048, 309, 7, '#ffea80'),
(7049, 309, 8, '#a1a1a1'),
(7050, 309, 9, NULL),
(7051, 309, 10, 'normal'),
(7052, 309, 11, 'block'),
(7053, 309, 12, 'normal'),
(7054, 309, 13, '#cfcece'),
(7055, 309, 14, 'left'),
(7056, 309, 15, 'none'),
(7057, 309, 16, 'static'),
(7058, 309, 17, NULL),
(7059, 309, 18, 'none'),
(7060, 309, 19, NULL),
(7061, 309, 20, NULL),
(7062, 309, 21, NULL),
(7063, 309, 22, NULL),
(7064, 309, 23, 'linear'),
(7065, 309, 24, 'none'),
(7066, 309, 25, NULL),
(7067, 309, 26, NULL),
(7068, 309, 27, NULL),
(7069, 309, 28, NULL),
(7070, 309, 29, NULL),
(7071, 309, 30, NULL),
(7072, 309, 31, NULL),
(7073, 309, 32, NULL),
(7074, 309, 33, NULL),
(7075, 309, 34, NULL),
(7076, 309, 35, NULL),
(7077, 309, 36, NULL),
(7078, 309, 37, NULL),
(7079, 309, 38, NULL),
(7080, 309, 39, NULL),
(7081, 309, 40, NULL),
(7082, 309, 41, NULL),
(7083, 309, 42, NULL),
(7084, 309, 43, NULL),
(7085, 309, 44, NULL),
(7086, 309, 45, NULL),
(7087, 309, 46, NULL),
(7088, 309, 47, NULL),
(7089, 309, 48, NULL),
(7090, 309, 49, NULL),
(7091, 309, 50, NULL),
(7092, 309, 51, NULL),
(7093, 309, 52, NULL),
(7094, 309, 53, NULL),
(7095, 309, 54, NULL),
(7096, 309, 55, NULL),
(7097, 309, 56, NULL),
(7098, 309, 57, NULL),
(7099, 309, 58, '#000000'),
(7100, 309, 59, NULL),
(7101, 309, 60, 'normal'),
(7102, 309, 61, 'block'),
(7103, 309, 62, 'normal'),
(7104, 309, 63, '#000000'),
(7105, 309, 64, 'left'),
(7106, 309, 65, 'none'),
(7107, 309, 66, 'static'),
(7108, 309, 67, NULL),
(7109, 309, 68, 'none'),
(7110, 309, 69, NULL),
(7111, 309, 70, NULL),
(7112, 309, 71, NULL),
(7113, 309, 72, NULL),
(7114, 309, 73, 'linear'),
(7115, 309, 74, 'none'),
(7116, 309, 75, '#000000'),
(7117, 309, 76, NULL),
(7118, 309, 77, NULL),
(7119, 309, 78, NULL),
(7120, 309, 79, NULL),
(7121, 309, 80, NULL),
(7122, 309, 81, NULL),
(7123, 309, 82, NULL),
(7124, 309, 83, NULL),
(7125, 309, 84, NULL),
(7126, 309, 85, NULL),
(7127, 309, 86, NULL),
(7128, 309, 87, NULL),
(7129, 309, 88, NULL),
(7130, 309, 89, NULL),
(7131, 309, 90, NULL),
(7132, 309, 91, NULL),
(7133, 309, 92, NULL),
(7134, 309, 93, NULL),
(7135, 309, 94, NULL),
(7136, 309, 95, NULL),
(7137, 309, 96, NULL),
(7138, 309, 97, NULL),
(7139, 309, 98, NULL),
(7140, 309, 99, NULL),
(7141, 309, 100, NULL),
(7142, 309, 102, NULL),
(7143, 309, 103, NULL),
(7144, 309, 104, NULL),
(7145, 309, 105, NULL),
(7146, 309, 106, NULL),
(7147, 309, 107, NULL),
(7148, 309, 108, NULL),
(7149, 309, 109, NULL),
(7150, 309, 110, NULL),
(7151, 309, 111, NULL),
(7152, 309, 112, NULL),
(7153, 309, 113, NULL),
(7154, 309, 114, NULL),
(7155, 309, 115, NULL),
(7156, 309, 116, NULL),
(7157, 309, 117, NULL),
(7158, 309, 118, NULL),
(7159, 309, 119, NULL),
(7160, 309, 120, NULL),
(7161, 309, 121, NULL),
(7162, 309, 122, NULL),
(7163, 309, 123, NULL),
(7164, 309, 124, NULL),
(7165, 309, 125, NULL),
(7166, 309, 126, NULL),
(7167, 309, 127, NULL),
(7168, 309, 128, NULL),
(7169, 309, 129, NULL),
(7170, 309, 130, '4px'),
(7171, 309, 131, NULL),
(7172, 309, 132, NULL),
(7173, 309, 133, NULL),
(7174, 309, 134, NULL),
(7175, 309, 135, 'block'),
(7176, 309, 136, 'static'),
(7177, 309, 137, 'left'),
(7178, 309, 138, '#8f8f8f'),
(7179, 309, 139, 'none'),
(7180, 309, 140, NULL),
(7181, 309, 141, NULL),
(7182, 309, 142, NULL),
(7183, 309, 143, NULL),
(7184, 309, 144, NULL),
(7185, 309, 145, '4px'),
(7186, 309, 146, NULL),
(7187, 309, 147, '#767474'),
(7188, 309, 148, NULL),
(7189, 309, 149, NULL),
(7190, 309, 150, 'block'),
(7191, 309, 151, 'static'),
(7192, 309, 152, 'left'),
(7193, 309, 153, NULL),
(7194, 309, 154, NULL),
(7195, 309, 155, NULL),
(7196, 309, 156, NULL),
(7197, 309, 157, '#919191'),
(7198, 309, 158, NULL),
(7199, 309, 159, 'normal'),
(7200, 309, 160, 'normal'),
(7201, 86, 0, NULL),
(7202, 86, 1, NULL),
(7203, 86, 2, NULL),
(7204, 86, 3, NULL),
(7205, 86, 4, NULL),
(7206, 86, 5, NULL),
(7207, 86, 6, NULL),
(7208, 86, 7, NULL),
(7209, 86, 8, NULL),
(7210, 86, 9, NULL),
(7211, 86, 10, NULL),
(7212, 86, 11, NULL),
(7213, 86, 12, NULL),
(7214, 86, 13, NULL),
(7215, 86, 14, NULL),
(7216, 86, 15, NULL),
(7217, 86, 16, NULL),
(7218, 86, 17, NULL),
(7219, 86, 18, NULL),
(7220, 86, 19, NULL),
(7221, 86, 20, NULL),
(7222, 86, 21, NULL),
(7223, 86, 22, NULL),
(7224, 86, 23, NULL),
(7225, 86, 24, NULL),
(7226, 86, 25, NULL),
(7227, 86, 26, NULL),
(7228, 86, 27, NULL),
(7229, 86, 28, NULL),
(7230, 86, 29, NULL),
(7231, 86, 30, NULL),
(7232, 86, 31, NULL),
(7233, 86, 32, NULL),
(7234, 86, 33, NULL),
(7235, 86, 34, NULL),
(7236, 86, 35, NULL),
(7237, 86, 36, NULL),
(7238, 86, 37, NULL),
(7239, 86, 38, NULL),
(7240, 86, 39, NULL),
(7241, 86, 40, NULL),
(7242, 86, 41, NULL),
(7243, 86, 42, NULL),
(7244, 86, 43, NULL),
(7245, 86, 44, NULL),
(7246, 86, 45, NULL),
(7247, 86, 46, NULL),
(7248, 86, 47, NULL),
(7249, 86, 48, NULL),
(7250, 86, 49, NULL),
(7251, 86, 50, NULL),
(7252, 86, 51, NULL),
(7253, 86, 52, NULL),
(7254, 86, 53, NULL),
(7255, 86, 54, NULL),
(7256, 86, 55, NULL),
(7257, 86, 56, NULL),
(7258, 86, 57, NULL),
(7259, 86, 58, NULL),
(7260, 86, 59, NULL),
(7261, 86, 60, NULL),
(7262, 86, 61, NULL),
(7263, 86, 62, NULL),
(7264, 86, 63, NULL),
(7265, 86, 64, NULL),
(7266, 86, 65, NULL),
(7267, 86, 66, NULL),
(7268, 86, 67, NULL),
(7269, 86, 68, NULL),
(7270, 86, 69, NULL),
(7271, 86, 70, NULL),
(7272, 86, 71, NULL),
(7273, 86, 72, NULL),
(7274, 86, 73, NULL),
(7275, 86, 74, NULL),
(7276, 86, 75, NULL),
(7277, 86, 76, NULL),
(7278, 86, 77, NULL),
(7279, 86, 78, NULL),
(7280, 86, 79, NULL),
(7281, 86, 80, NULL),
(7282, 86, 81, NULL),
(7283, 86, 82, NULL),
(7284, 86, 83, NULL),
(7285, 86, 84, NULL),
(7286, 86, 85, NULL),
(7287, 86, 86, NULL),
(7288, 86, 87, NULL),
(7289, 86, 88, NULL),
(7290, 86, 89, NULL),
(7291, 86, 90, NULL),
(7292, 86, 91, NULL),
(7293, 86, 92, NULL),
(7294, 86, 93, NULL),
(7295, 86, 94, NULL),
(7296, 86, 95, NULL),
(7297, 86, 96, NULL),
(7298, 86, 97, NULL),
(7299, 86, 98, NULL),
(7300, 86, 99, NULL),
(7301, 86, 100, NULL),
(7302, 86, 102, NULL),
(7303, 86, 103, NULL),
(7304, 86, 104, NULL),
(7305, 86, 105, NULL),
(7306, 86, 106, NULL),
(7307, 86, 107, NULL),
(7308, 86, 108, NULL),
(7309, 86, 109, NULL),
(7310, 86, 110, NULL),
(7311, 86, 111, NULL),
(7312, 86, 112, NULL),
(7313, 86, 113, NULL),
(7314, 86, 114, NULL),
(7315, 86, 115, NULL),
(7316, 86, 116, NULL),
(7317, 86, 117, NULL),
(7318, 86, 118, NULL),
(7319, 86, 119, NULL),
(7320, 86, 120, NULL),
(7321, 86, 121, NULL),
(7322, 86, 122, NULL),
(7323, 86, 123, NULL),
(7324, 86, 124, NULL),
(7325, 86, 125, NULL),
(7326, 86, 126, NULL),
(7327, 86, 127, NULL),
(7328, 86, 128, NULL),
(7329, 86, 129, NULL),
(7330, 86, 130, NULL),
(7331, 86, 131, NULL),
(7332, 86, 132, NULL),
(7333, 86, 133, NULL),
(7334, 86, 134, NULL),
(7335, 86, 135, NULL),
(7336, 86, 136, NULL),
(7337, 86, 137, NULL),
(7338, 86, 138, NULL),
(7339, 86, 139, NULL),
(7340, 86, 140, NULL),
(7341, 86, 141, NULL),
(7342, 86, 142, NULL),
(7343, 86, 143, NULL),
(7344, 86, 144, NULL),
(7345, 86, 145, NULL),
(7346, 86, 146, NULL),
(7347, 86, 147, NULL),
(7348, 86, 148, NULL),
(7349, 86, 149, NULL),
(7350, 86, 150, NULL),
(7351, 86, 151, NULL),
(7352, 86, 152, NULL),
(7353, 86, 153, NULL),
(7354, 86, 154, NULL),
(7355, 86, 155, NULL),
(7356, 86, 156, NULL),
(7357, 86, 157, NULL),
(7358, 86, 158, NULL),
(7359, 86, 159, NULL),
(7360, 86, 160, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_element_theme_mapping`
--

CREATE TABLE `form_element_theme_mapping` (
  `id` int(11) NOT NULL,
  `application_forms_id` int(11) NOT NULL,
  `form_element_id` int(11) NOT NULL,
  `theme_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_element_theme_mapping`
--

INSERT INTO `form_element_theme_mapping` (`id`, `application_forms_id`, `form_element_id`, `theme_ID`) VALUES
(1, 1, 11, 1),
(2, 1, 1, 2),
(3, 6, 6, 4),
(4, 1, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `FIELD_ID` int(11) NOT NULL,
  `FORM_ID` int(10) DEFAULT NULL,
  `TITLE` varchar(255) NOT NULL DEFAULT '',
  `REQUIRED` int(1) NOT NULL DEFAULT '0',
  `f_MATCH` varchar(255) NOT NULL DEFAULT '',
  `f_RANGE` varchar(255) NOT NULL DEFAULT '',
  `ERROR_MESSAGE` varchar(255) NOT NULL DEFAULT '',
  `OTHER_VALIDATOR` text,
  `WIDGET` varchar(255) NOT NULL DEFAULT '',
  `WIDGETPARAMS` text,
  `POSITION` int(3) NOT NULL DEFAULT '0',
  `VISIBLE` int(1) NOT NULL DEFAULT '0',
  `FORMULA_ID` varchar(50) NOT NULL,
  `INPUT_TYPE` varchar(100) NOT NULL,
  `field_condition_flag` int(11) NOT NULL,
  `filter_query` text NOT NULL,
  `CRUD_VIEW` int(11) NOT NULL,
  `dependent_on` int(11) NOT NULL,
  `dependent_ParentCol` varchar(200) NOT NULL,
  `onchange` int(11) NOT NULL,
  `parent_ConnectedCol` varchar(200) NOT NULL,
  `add_more` int(11) NOT NULL,
  `addMore_inRowOf` int(11) NOT NULL,
  `upload_folder` varchar(200) NOT NULL,
  `language_id` int(11) NOT NULL,
  `unique_flag` int(11) NOT NULL,
  `parent_unique_column` varchar(100) NOT NULL,
  `unique_combination` varchar(500) NOT NULL,
  `active_language_event_table` varchar(200) NOT NULL,
  `active_language_event_column` varchar(200) NOT NULL,
  `readonly` int(11) NOT NULL,
  `form_multivalue_mapping_tableName` varchar(100) NOT NULL,
  `multivalue_mapping_form_value` varchar(200) NOT NULL,
  `multivalue_mapping_data_value` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `external_field` int(11) NOT NULL,
  `table_column_id` int(11) NOT NULL,
  `label_note` varchar(100) NOT NULL,
  `parent_data_entry` int(11) NOT NULL,
  `order_by` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`FIELD_ID`, `FORM_ID`, `TITLE`, `REQUIRED`, `f_MATCH`, `f_RANGE`, `ERROR_MESSAGE`, `OTHER_VALIDATOR`, `WIDGET`, `WIDGETPARAMS`, `POSITION`, `VISIBLE`, `FORMULA_ID`, `INPUT_TYPE`, `field_condition_flag`, `filter_query`, `CRUD_VIEW`, `dependent_on`, `dependent_ParentCol`, `onchange`, `parent_ConnectedCol`, `add_more`, `addMore_inRowOf`, `upload_folder`, `language_id`, `unique_flag`, `parent_unique_column`, `unique_combination`, `active_language_event_table`, `active_language_event_column`, `readonly`, `form_multivalue_mapping_tableName`, `multivalue_mapping_form_value`, `multivalue_mapping_data_value`, `comment`, `external_field`, `table_column_id`, `label_note`, `parent_data_entry`, `order_by`) VALUES
(1, 2, 'department_code', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(2, 2, 'department_name', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(3, 2, 'department_desc', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(4, 2, 'department_btn', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(5, 6, 'course_type', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(6, 6, 'course_type_btn', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(7, 3, 'header', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(8, 3, 'course_link', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(9, 3, 'course_name', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(10, 3, 'course_page_department_id', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(11, 3, 'course_page_course_type', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(12, 3, 'course_btn', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(13, 1, 'header', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(14, 1, 'faculty_name', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(15, 1, 'faculty_code', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(16, 1, 'faculty_department_id', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(17, 1, 'faculty_course_type', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(18, 1, 'faculty_course', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(19, 1, 'faculty_email', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(20, 1, 'faculty_phone', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(21, 1, 'faculty_address', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(22, 1, 'faculty_btn', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(23, 4, 'student-id', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(24, 4, 'first-name', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(25, 4, 'last-name', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(26, 4, 'date-of-birth', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(27, 4, 'address', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(28, 4, 'phone-number', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(29, 4, 'email-address', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(30, 4, 'department-id', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(31, 4, 'course-type-id', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(32, 4, 'course-id', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(33, 4, 'major', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(34, 4, 'academic-status', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(35, 4, 'theme-ID', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(36, 4, 'emergency-contact-name', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(37, 4, 'emergency-contact-phone', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(38, 4, 'emergency-contact-relationship', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(39, 4, 'student_btn', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(40, 6, 'header', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(41, 9, 'effect_btn', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(42, 4, 'table td:nth-child(8)', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, ''),
(43, 10, 'student-report', 0, '', '', '', NULL, '', NULL, 0, 0, '', '', 0, '', 0, 0, '', 0, '', 0, 0, '', 0, 0, '', '', '', '', 0, '', '', '', '', 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `form_theme`
--

CREATE TABLE `form_theme` (
  `id` int(11) NOT NULL,
  `form_element` varchar(255) DEFAULT NULL,
  `element` varchar(255) NOT NULL,
  `element_id` int(11) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `theme_ID` int(11) NOT NULL,
  `form_theme_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_theme`
--

INSERT INTO `form_theme` (`id`, `form_element`, `element`, `element_id`, `property`, `value`, `theme_ID`, `form_theme_name`) VALUES
(0, 'div.form label', 'Label', 11, 'color', 'pink', 86, 'Spring Theme'),
(1, 'div.form', 'Form', NULL, 'background-color', NULL, 86, 'Spring Theme'),
(2, 'div.form', 'Form', NULL, 'padding', NULL, 86, 'Spring Theme'),
(3, 'div.form', 'Form', NULL, 'border', NULL, 86, 'Spring Theme'),
(4, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'width', '450px', 86, 'Spring Theme'),
(5, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'padding', NULL, 86, 'Spring Theme'),
(6, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'border', NULL, 86, 'Spring Theme'),
(7, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'border-radius', NULL, 86, 'Spring Theme'),
(8, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'box-sizing', NULL, 86, 'Spring Theme'),
(9, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'height', '55px', 86, 'Spring Theme'),
(10, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'margin-bottom', NULL, 86, 'Spring Theme'),
(11, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'background-color', NULL, 86, 'Spring Theme'),
(12, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input', 35, 'color', NULL, 86, 'Spring Theme'),
(13, 'div.form select \r\n\r\n', 'Input Select', 36, 'diplay', NULL, 86, 'Spring Theme'),
(14, 'div.form select\r\n', 'Input Select', 36, 'font-weight', NULL, 86, 'Spring Theme'),
(15, 'div.form select\r\n', 'Input Select', 34, 'margin-bottom', NULL, 86, 'Spring Theme'),
(16, 'div.form select\r\n', 'Input Select', 36, 'color', NULL, 86, 'Spring Theme'),
(17, 'div.form label', 'Label', 11, 'display', NULL, 86, 'Spring Theme'),
(18, 'div.form label', 'Label', 11, 'font-weight', NULL, 86, 'Spring Theme'),
(19, 'div.form label', 'Lable', 11, 'margin-bottom', NULL, 86, 'Spring Theme'),
(21, 'div.form input[type=\"submit\"]', 'Button', 10, 'border-radius', NULL, 86, 'Spring Theme'),
(77, 'div.form input[type=\"submit\"]	', 'Button', 10, 'background-color', NULL, 86, 'Spring Theme'),
(78, 'div.form input[type=\"submit\"]{', 'Button', 10, 'border', NULL, 86, 'Spring Theme'),
(79, 'div.form input[type=\"submit\"]', 'Button', 10, 'color', NULL, 86, 'Spring THeme'),
(80, 'div.form input[type=\"submit\"]', 'Button', 10, 'padding ', NULL, 86, 'Spring Theme'),
(81, 'div.form input[type=\"submit\"]', 'Button', 10, 'text-align', NULL, 86, NULL),
(82, 'div.form input[type=\"submit\"]', 'Button', 10, 'text-decoration', NULL, 86, 'Spring Theme'),
(83, 'div.form input[type=\"submit\"]', 'Button', 10, 'display', NULL, 86, 'Spring Theme'),
(84, 'div.form input[type=\"submit\"]', 'Button', 10, 'font-size', NULL, 86, 'Spring Theme'),
(85, 'div.form input[type=\"submit\"]', 'Button', 10, 'margin', NULL, 86, 'Spring Theme'),
(86, 'div.form input[type=\"submit\"]', 'Button', 10, 'transition-duration', NULL, 86, 'Spring Theme'),
(87, 'div.form input[type=\"submit\"]', 'Button', 10, 'cursor', NULL, 86, 'Spring'),
(88, 'div.form input[type=\"submit\"]:hover', 'Button', 10, 'background-color', 'black', 86, 'Spring Theme'),
(89, 'div.form input[type=\"submit\"]:hover', 'Button', 10, 'color', 'yellow', 86, 'Spring THeme'),
(90, 'div.form input[type=\"text\"],\r\ndiv.form input[type=\"password\"],\r\ndiv.form input[type=\"email\"],\r\ndiv.form input[type=\"number\"],\r\ndiv.form input[type=\"color\"],\r\ndiv.form textarea', 'Input ', 35, 'height', '50px', 86, 'Spring Theme');

-- --------------------------------------------------------

--
-- Table structure for table `form_theme_mapping`
--

CREATE TABLE `form_theme_mapping` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `theme_ID` int(11) NOT NULL,
  `theme_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_theme_mapping`
--

INSERT INTO `form_theme_mapping` (`id`, `form_id`, `theme_ID`, `theme_name`, `controller`, `action`) VALUES
(107, 4, 86, NULL, 'studentInformation', 'create'),
(108, 3, 309, NULL, 'courses', 'create'),
(109, 2, 309, NULL, 'departments', 'create'),
(111, 1, 309, NULL, 'faculty', 'create'),
(112, 6, 309, NULL, 'courseType', 'create');

-- --------------------------------------------------------

--
-- Table structure for table `night_time_settings`
--

CREATE TABLE `night_time_settings` (
  `id` int(11) NOT NULL,
  `nightStart` time DEFAULT NULL,
  `nightEnd` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `night_time_settings`
--

INSERT INTO `night_time_settings` (`id`, `nightStart`, `nightEnd`) VALUES
(1, '23:00:00', '06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `query` varchar(255) NOT NULL,
  `reportColumn` varchar(255) NOT NULL,
  `reportRow` varchar(255) NOT NULL,
  `report_table_id` varchar(255) NOT NULL,
  `report_grid_container_id` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `report_name`, `query`, `reportColumn`, `reportRow`, `report_table_id`, `report_grid_container_id`, `details`) VALUES
(2, 'Report', '', '0', '0', '', '', 'test '),
(3, 'Demo', '', '0', '0', '', '', 'Demo'),
(4, 'Theme of Report Dynamic table ', 'ThemeForReport', '0', '0', 'report-table', 'report-container', 'Complete Dynamic Table '),
(5, 'Manage', 'TableTheme', '.', '.', 'report-table', 'report-container', 'Table Theme Report'),
(6, 'Student Report ', 'SELECT first_name,last_name,percentage,course_id,academic_status FROM student_information', 'first_name,last_name,percentage,course_id,academic_status', '', '', '', 'Student Information Report with Name , course ,major,academic_status'),
(7, 'Course Dynamic Report', 'SELECT id,course_name,course_link FROM courses', 'id,course_name,course_link', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `report_element_css_set`
--

CREATE TABLE `report_element_css_set` (
  `id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `css_property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_element_css_set`
--

INSERT INTO `report_element_css_set` (`id`, `element_id`, `css_property_id`) VALUES
(1, 60, 32),
(2, 60, 33),
(3, 60, 34),
(4, 60, 35),
(5, 60, 36),
(6, 60, 1),
(7, 60, 7),
(8, 60, 6),
(9, 60, 37),
(10, 60, 13),
(11, 60, 5),
(12, 115, 12),
(13, 115, 38),
(14, 115, 3),
(15, 115, 2),
(16, 61, 13),
(17, 61, 39),
(18, 61, 40),
(19, 61, 41),
(20, 61, 1),
(21, 53, 6),
(22, 53, 4),
(23, 53, 1),
(24, 53, 3),
(25, 53, 18),
(26, 55, 1),
(27, 56, 1),
(28, 57, 1),
(29, 116, 6),
(30, 116, 4),
(31, 116, 3),
(32, 58, 1),
(33, 58, 3),
(34, 58, 18),
(35, 53, 2),
(36, 116, 37),
(37, 116, 2),
(38, 116, 23),
(39, 117, 3),
(40, 117, 18),
(41, 117, 2),
(42, 118, 3),
(43, 118, 18),
(44, 118, 2),
(45, 119, 2),
(46, 119, 3),
(47, 119, 18),
(48, 120, 2),
(49, 120, 18);

-- --------------------------------------------------------

--
-- Table structure for table `report_theme`
--

CREATE TABLE `report_theme` (
  `id` int(11) NOT NULL,
  `application_forms_id` int(11) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `report_column` varchar(255) NOT NULL,
  `theme_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_theme`
--

INSERT INTO `report_theme` (`id`, `application_forms_id`, `report_name`, `report_column`, `theme_ID`) VALUES
(1, 2, 'staff-container', '6', 335),
(2, 3, 'student-container', '8', 335),
(3, 6, '', '8', 335),
(4, 5, 'student-container', '8', 335),
(5, 5, 'student-container', '8', 335),
(6, 5, 'student-container', '8', 335),
(7, 5, 'student-container', '8', 335),
(8, 6, 'student-container', '8', 335),
(9, 2, 'student-container', '8', 335),
(10, 2, 'student-container', '7', 335),
(11, 2, 'student-container', '8', 335),
(12, 2, '1', '0', 0),
(13, 2, '2', '0', 0),
(14, 1, '1', '', 0),
(15, 4, '1', '', 0),
(16, 10, '1', '', 0),
(17, 11, '1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_theme_mapping`
--

CREATE TABLE `report_theme_mapping` (
  `id` int(11) NOT NULL,
  `application_forms_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `theme_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_theme_mapping`
--

INSERT INTO `report_theme_mapping` (`id`, `application_forms_id`, `report_id`, `theme_ID`) VALUES
(1, 11, 2, 42),
(2, 12, 2, 7),
(3, 13, 2, 42),
(4, 14, 3, 111),
(6, 16, 4, 42),
(7, 17, 6, 42),
(8, 18, 7, 111);

-- --------------------------------------------------------

--
-- Table structure for table `report_trigger_mapping`
--

CREATE TABLE `report_trigger_mapping` (
  `id` int(11) NOT NULL,
  `application_forms_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `scipt_id` int(11) NOT NULL,
  `report_columns` varchar(255) NOT NULL,
  `report_row` varchar(255) NOT NULL,
  `applied_script` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_trigger_mapping`
--

INSERT INTO `report_trigger_mapping` (`id`, `application_forms_id`, `report_id`, `scipt_id`, `report_columns`, `report_row`, `applied_script`) VALUES
(55, 17, 6, 106, 'first_name', 'Gauravi,David', 'var targetColumnNames = [\'first_name\'];\r\nvar targetWords = [\'Gauravi\',\'David\'];\r\n\r\nvar columnIndex = Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === targetColumnNames[0]);\r\n\r\nif (columnIndex !== -1) {\r\n    var rows = document.querySelectorAll(\'table tbody tr\');\r\n\r\n    rows.forEach(function (row) {\r\n        var cell = row.querySelector(\'td:nth-child(\' + (columnIndex + 1) + \')\');\r\n        var value = cell ? cell.textContent.trim() : \'\';\r\n\r\n        if (targetWords.includes(value)) {\r\n            cell.style.setProperty(\'background-color\', \'#6495ED\', \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        }\r\n    });\r\n} else {\r\n    console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n}'),
(56, 17, 6, 103, 'last_name', 'Gauravi,Nikhil', 'var targetColumnNames = [\'last_name\'];\r\nvar highlightColor = \'#FFC000\';\r\n\r\nvar columnIndices = targetColumnNames.map(function (columnName) {\r\n    return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n});\r\n\r\nif (columnIndices.every(index => index !== -1)) {\r\n    columnIndices.forEach(function (columnIndex) {\r\n        var cellsInColumn = document.querySelectorAll(\'table tbody td:nth-child(\' + (columnIndex + 1) + \')\');\r\n\r\n        cellsInColumn.forEach(function (cell) {\r\n            cell.style.setProperty(\'background-color\', highlightColor, \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        });\r\n    });\r\n} else {\r\n    console.error(\'One or more columns not found: \' + targetColumnNames.join(\', \'));\r\n}\r\n'),
(57, 17, 6, 105, 'percentage', 'Gauravi,Nikhil', 'var targetColumnNames = [\'percentage\'];\r\n\r\n    var columnIndices = targetColumnNames.map(function (columnName) {\r\n        return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n    });\r\n\r\n    columnIndices.forEach(function (columnIndex) {\r\n        if (columnIndex !== -1) {\r\n            var targetElements = document.querySelectorAll(\'table td:nth-child(\' + (columnIndex + 1) + \')\');\r\n            \r\n            targetElements.forEach(function (element) {\r\n                var value = parseInt(element.textContent);\r\n                if (!isNaN(value)) {\r\n                    if (value >= 30) {\r\n                        element.style.setProperty(\'color\', \'green\', \'important\');\r\n                    } else {\r\n                        element.style.setProperty(\'color\', \'red\', \'important\');\r\n                    }\r\n                }\r\n            });\r\n        } else {\r\n            console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n        }\r\n    });'),
(58, 17, 6, 106, 'first_name', 'Gauravi,Enrolled', 'var targetColumnNames = [\'first_name\'];\r\nvar targetWords = [\'Gauravi\',\'Enrolled\'];\r\n\r\nvar columnIndex = Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === targetColumnNames[0]);\r\n\r\nif (columnIndex !== -1) {\r\n    var rows = document.querySelectorAll(\'table tbody tr\');\r\n\r\n    rows.forEach(function (row) {\r\n        var cell = row.querySelector(\'td:nth-child(\' + (columnIndex + 1) + \')\');\r\n        var value = cell ? cell.textContent.trim() : \'\';\r\n\r\n        if (targetWords.includes(value)) {\r\n            cell.style.setProperty(\'background-color\', \'#6495ED\', \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        }\r\n    });\r\n} else {\r\n    console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n}'),
(59, 17, 6, 103, 'last_name', 'Gauravi,Enrolled', 'var targetColumnNames = [\'last_name\'];\r\nvar highlightColor = \'#FFC000\';\r\n\r\nvar columnIndices = targetColumnNames.map(function (columnName) {\r\n    return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n});\r\n\r\nif (columnIndices.every(index => index !== -1)) {\r\n    columnIndices.forEach(function (columnIndex) {\r\n        var cellsInColumn = document.querySelectorAll(\'table tbody td:nth-child(\' + (columnIndex + 1) + \')\');\r\n\r\n        cellsInColumn.forEach(function (cell) {\r\n            cell.style.setProperty(\'background-color\', highlightColor, \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        });\r\n    });\r\n} else {\r\n    console.error(\'One or more columns not found: \' + targetColumnNames.join(\', \'));\r\n}\r\n'),
(60, 17, 6, 105, 'percentage', 'Gauravi,Enrolled', 'var targetColumnNames = [\'percentage\'];\r\n\r\n    var columnIndices = targetColumnNames.map(function (columnName) {\r\n        return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n    });\r\n\r\n    columnIndices.forEach(function (columnIndex) {\r\n        if (columnIndex !== -1) {\r\n            var targetElements = document.querySelectorAll(\'table td:nth-child(\' + (columnIndex + 1) + \')\');\r\n            \r\n            targetElements.forEach(function (element) {\r\n                var value = parseInt(element.textContent);\r\n                if (!isNaN(value)) {\r\n                    if (value >= 30) {\r\n                        element.style.setProperty(\'color\', \'green\', \'important\');\r\n                    } else {\r\n                        element.style.setProperty(\'color\', \'red\', \'important\');\r\n                    }\r\n                }\r\n            });\r\n        } else {\r\n            console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n        }\r\n    });'),
(61, 17, 6, 103, 'course_id', 'Gauravi,Enrolled', 'var targetColumnNames = [\'course_id\'];\r\nvar highlightColor = \'#FFC000\';\r\n\r\nvar columnIndices = targetColumnNames.map(function (columnName) {\r\n    return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n});\r\n\r\nif (columnIndices.every(index => index !== -1)) {\r\n    columnIndices.forEach(function (columnIndex) {\r\n        var cellsInColumn = document.querySelectorAll(\'table tbody td:nth-child(\' + (columnIndex + 1) + \')\');\r\n\r\n        cellsInColumn.forEach(function (cell) {\r\n            cell.style.setProperty(\'background-color\', highlightColor, \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        });\r\n    });\r\n} else {\r\n    console.error(\'One or more columns not found: \' + targetColumnNames.join(\', \'));\r\n}\r\n'),
(62, 17, 6, 106, 'academic_status', 'Gauravi,Enrolled', 'var targetColumnNames = [\'academic_status\'];\r\nvar targetWords = [\'Gauravi\',\'Enrolled\'];\r\n\r\nvar columnIndex = Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === targetColumnNames[0]);\r\n\r\nif (columnIndex !== -1) {\r\n    var rows = document.querySelectorAll(\'table tbody tr\');\r\n\r\n    rows.forEach(function (row) {\r\n        var cell = row.querySelector(\'td:nth-child(\' + (columnIndex + 1) + \')\');\r\n        var value = cell ? cell.textContent.trim() : \'\';\r\n\r\n        if (targetWords.includes(value)) {\r\n            cell.style.setProperty(\'background-color\', \'#6495ED\', \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        }\r\n    });\r\n} else {\r\n    console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n}'),
(64, 18, 7, 105, 'id', 'NA', 'var targetColumnNames = [\'id\'];\r\n\r\n    var columnIndices = targetColumnNames.map(function (columnName) {\r\n        return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n    });\r\n\r\n    columnIndices.forEach(function (columnIndex) {\r\n        if (columnIndex !== -1) {\r\n            var targetElements = document.querySelectorAll(\'table td:nth-child(\' + (columnIndex + 1) + \')\');\r\n            \r\n            targetElements.forEach(function (element) {\r\n                var value = parseInt(element.textContent);\r\n                if (!isNaN(value)) {\r\n                    if (value >= 30) {\r\n                        element.style.setProperty(\'color\', \'green\', \'important\');\r\n                    } else {\r\n                        element.style.setProperty(\'color\', \'red\', \'important\');\r\n                    }\r\n                }\r\n            });\r\n        } else {\r\n            console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n        }\r\n    });'),
(65, 18, 7, 103, 'course_name', 'NA', 'var targetColumnNames = [\'course_name\'];\r\nvar highlightColor = \'#FFC000\';\r\n\r\nvar columnIndices = targetColumnNames.map(function (columnName) {\r\n    return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n});\r\n\r\nif (columnIndices.every(index => index !== -1)) {\r\n    columnIndices.forEach(function (columnIndex) {\r\n        var cellsInColumn = document.querySelectorAll(\'table tbody td:nth-child(\' + (columnIndex + 1) + \')\');\r\n\r\n        cellsInColumn.forEach(function (cell) {\r\n            cell.style.setProperty(\'background-color\', highlightColor, \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        });\r\n    });\r\n} else {\r\n    console.error(\'One or more columns not found: \' + targetColumnNames.join(\', \'));\r\n}\r\n'),
(66, 18, 7, 103, 'course_link', 'NA', 'var targetColumnNames = [\'course_link\'];\r\nvar highlightColor = \'#FFC000\';\r\n\r\nvar columnIndices = targetColumnNames.map(function (columnName) {\r\n    return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n});\r\n\r\nif (columnIndices.every(index => index !== -1)) {\r\n    columnIndices.forEach(function (columnIndex) {\r\n        var cellsInColumn = document.querySelectorAll(\'table tbody td:nth-child(\' + (columnIndex + 1) + \')\');\r\n\r\n        cellsInColumn.forEach(function (cell) {\r\n            cell.style.setProperty(\'background-color\', highlightColor, \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        });\r\n    });\r\n} else {\r\n    console.error(\'One or more columns not found: \' + targetColumnNames.join(\', \'));\r\n}\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `script_code`
--

CREATE TABLE `script_code` (
  `id` int(11) NOT NULL,
  `effects` varchar(255) NOT NULL,
  `css` text NOT NULL,
  `code` text NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `script_code`
--

INSERT INTO `script_code` (`id`, `effects`, `css`, `code`, `Description`) VALUES
(1, 'blink', '', '{\r\n  \"css\": \".blink { border: 3px solid #FBB72D; font-weight: bold; border-radius: 5px; }\",\r\n  \"js\": \"$(document).ready(function() { $(\'#elementId\').triggerValue(function() { var element = $(this); element.addClass(\'blink\'); setTimeout(function() { element.removeClass(\'blink\'); }, 1000); }); });\"\r\n}\r\n', 'Blink Button Effect with Yellow color'),
(2, 'toggle', '', '{\r\n      \"css\": \".toggle-button { background-color: #3498db; color: white; padding: 10px 20px; cursor: pointer; } .toggle-button.active { background-color: #e74c3c; }\",\r\n      \"js\": \"$(document).ready(function() { $(\'#elementId\').triggerValue(function() { var element = $(this); element.addClass(\'toggle-button\'); let isToggled = false; element.on(\'click\', function() { isToggled = !isToggled; if (isToggled) { element.addClass(\'active\'); } else { element.removeClass(\'active\'); } }); }); });\"\r\n   }', 'Resize on hover '),
(3, 'shake', '', '{\r\n                \"css\": \".shake { animation: shake 0.5s; } @keyframes shake { 0% { transform: translateX(0); } 20% { transform: translateX(-10px); } 40% { transform: translateX(10px); } 60% { transform: translateX(-10px); } 80% { transform: translateX(10px); } 100% { transform: translateX(0); } }\",\r\n                \"js\": \"$(\'#elementId\').triggerValue(function() { var element = $(this); element.addClass(\'shake\'); setTimeout(function() { element.removeClass(\'shake\'); }, 1000); });\"\r\n             }', 'Shake the element on page load '),
(4, 'slide-in', '', '{\r\n  \"css\": \".slide-in { animation: slide-in 0.5s; } @keyframes slide-in { from { transform: translateX(-10%); } to { transform: translateX(0); } }\",\r\n  \"js\": \"$(document).ready(function() { $(\'#elementId\').triggerValue(function() { var element = $(this); element.addClass(\'slide-in\'); }); });\"\r\n}\r\n', 'It causes an element to smoothly transition onto the screen by sliding in from a hidden or off-screen position'),
(82, 'hide 10', '', '{\n    \"css\": \"\",\n    \"js\": \"  var opacity=0; \\n    var intervalID=0; \\n    window.onload=fadeout; \\n        function fadeout(){ \\n            setInterval(hide, 200); \\n        } \\n    function hide(){ \\n        var body=document.getElementById(\\\"elementId\\\"); \\n        opacity = \\n    Number(window.getComputedStyle(body).getPropertyValue(\\\"opacity\\\")) \\n      \\n            if(opacity>0){ \\n                opacity=opacity-0.1; \\n                        body.style.opacity=opacity \\n            } \\n            else{ \\n                clearInterval(intervalID); \\n            } \\n        } \"\n}', 'Hide the Element in 1 sec'),
(83, 'Move Animation ', '', '{\n    \"css\": \"\",\n    \"js\": \"function myMove() {\\n  let id = null;\\n  const elem = document.getElementById(\\\"elementId\\\");   \\n  let pos = 0;\\n  clearInterval(id);\\n  id = setInterval(frame, 5);\\n  function frame() {\\n    if (pos == 350) {\\n      clearInterval(id);\\n    } else {\\n      pos++; \\n      elem.style.top = pos + \\\"px\\\"; \\n      elem.style.left = pos + \\\"px\\\"; \\n    }\\n  }\\n}\\nmyMove()\"\n}', 'Move the element '),
(84, 'Plain javascript Bubble effect ', '', '{\n    \"css\": \"\",\n    \"js\": \"var animateButton = function(e) {\\n\\n  e.preventDefault;\\n  \\/\\/reset animation\\n  e.target.classList.remove(\'animate\');\\n  \\n  e.target.classList.add(\'animate\');\\n  setTimeout(function(){\\n    e.target.classList.remove(\'animate\');\\n  },700);\\n};\\n\\nvar bubblyButtons = document.getElementsByClassName(\\\"elementId\\\");\\n\\nfor (var i = 0; i < bubblyButtons.length; i++) {\\n  bubblyButtons[i].addEventListener(\'triggerValue\', animateButton, false);\\n}\"\n}', 'color effect'),
(85, '2 Plain javascript Bubble effect ', '$fuschia: #ff0081;\r\n$button-bg: $fuschia;\r\n$button-text-color: #fff;\r\n$baby-blue: #f8faff;\r\n\r\n.department_btn{\r\n  font-family: \'Helvetica\', \'Arial\', sans-serif;\r\n  display: inline-block;\r\n  font-size: 1em;\r\n  padding: 1em 2em;\r\n  margin-top: 100px;\r\n  margin-bottom: 60px;\r\n  -webkit-appearance: none;\r\n  appearance: none;\r\n  background-color: $button-bg;\r\n  color: $button-text-color;\r\n  border-radius: 4px;\r\n  border: none;\r\n  cursor: pointer;\r\n  position: relative;\r\n  transition: transform ease-in 0.1s, box-shadow ease-in 0.25s;\r\n  box-shadow: 0 2px 25px rgba(255, 0, 130, 0.5);\r\n  \r\n  &:focus {\r\n    outline: 0;\r\n  }\r\n  \r\n  &:before, &:after{\r\n    position: absolute;\r\n    content: \'\';\r\n    display: block;\r\n    width: 140%;\r\n    height: 100%;\r\n    left: -20%;\r\n    z-index: -1000;\r\n    transition: all ease-in-out 0.5s;\r\n    background-repeat: no-repeat;\r\n  }\r\n  \r\n  &:before{\r\n    display: none;\r\n    top: -75%;\r\n    background-image:  \r\n      radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle,  transparent 20%, $button-bg 20%, transparent 30%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%), \r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle,  transparent 10%, $button-bg 15%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%);\r\n  background-size: 10% 10%, 20% 20%, 15% 15%, 20% 20%, 18% 18%, 10% 10%, 15% 15%, 10% 10%, 18% 18%;\r\n  //background-position: 0% 80%, -5% 20%, 10% 40%, 20% 0%, 30% 30%, 22% 50%, 50% 50%, 65% 20%, 85% 30%;\r\n  }\r\n  \r\n  &:after{\r\n    display: none;\r\n    bottom: -75%;\r\n    background-image:  \r\n    radial-gradient(circle, $button-bg 20%, transparent 20%), \r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle,  transparent 10%, $button-bg 15%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%);\r\n  background-size: 15% 15%, 20% 20%, 18% 18%, 20% 20%, 15% 15%, 10% 10%, 20% 20%;\r\n  //background-position: 5% 90%, 10% 90%, 10% 90%, 15% 90%, 25% 90%, 25% 90%, 40% 90%, 55% 90%, 70% 90%;\r\n  }\r\n \r\n  &:active{\r\n    transform: scale(0.9);\r\n    background-color: darken($button-bg, 5%);\r\n    box-shadow: 0 2px 25px rgba(255, 0, 130, 0.2);\r\n  }\r\n  \r\n  &.animate{\r\n    &:before{\r\n      display: block;\r\n      animation: topBubbles ease-in-out 0.75s forwards;\r\n    }\r\n    &:after{\r\n      display: block;\r\n      animation: bottomBubbles ease-in-out 0.75s forwards;\r\n    }\r\n  }\r\n}\r\n\r\n\r\n@keyframes topBubbles {\r\n  0%{\r\n    background-position: 5% 90%, 10% 90%, 10% 90%, 15% 90%, 25% 90%, 25% 90%, 40% 90%, 55% 90%, 70% 90%;\r\n  }\r\n    50% {\r\n      background-position: 0% 80%, 0% 20%, 10% 40%, 20% 0%, 30% 30%, 22% 50%, 50% 50%, 65% 20%, 90% 30%;}\r\n 100% {\r\n    background-position: 0% 70%, 0% 10%, 10% 30%, 20% -10%, 30% 20%, 22% 40%, 50% 40%, 65% 10%, 90% 20%;\r\n  background-size: 0% 0%, 0% 0%,  0% 0%,  0% 0%,  0% 0%,  0% 0%;\r\n  }\r\n}\r\n\r\n@keyframes bottomBubbles {\r\n  0%{\r\n    background-position: 10% -10%, 30% 10%, 55% -10%, 70% -10%, 85% -10%, 70% -10%, 70% 0%;\r\n  }\r\n  50% {\r\n    background-position: 0% 80%, 20% 80%, 45% 60%, 60% 100%, 75% 70%, 95% 60%, 105% 0%;}\r\n 100% {\r\n    background-position: 0% 90%, 20% 90%, 45% 70%, 60% 110%, 75% 80%, 95% 70%, 110% 10%;\r\n  background-size: 0% 0%, 0% 0%,  0% 0%,  0% 0%,  0% 0%,  0% 0%;\r\n  }\r\n}', '{\n    \"css\": \"$fuschia:#ff0081;$button-bg:$fuschia;$button-text-color:#fff;$baby-blue:#f8faff;.department_btn{font-family:\'Helvetica\',\'Arial\',sans-serif;display:inline-block;font-size:1em;padding:1em2em;margin-top:100px;margin-bottom:60px;-webkit-appearance:none;appearance:none;background-color:$button-bg;color:$button-text-color;border-radius:4px;border:none;cursor:pointer;position:relative;transition:transformease-in0.1s,box-shadowease-in0.25s;box-shadow:02px25pxrgba(255,0,130,0.5);&:focus{outline:0;}&:before,&:after{position:absolute;content:\'\';display:block;width:140%;height:100%;left:-20%;z-index:-1000;transition:allease-in-out0.5s;background-repeat:no-repeat;}&:before{display:none;top:-75%;background-image:radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,transparent20%,$button-bg20%,transparent30%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,transparent10%,$button-bg15%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%);background-size:10%10%,20%20%,15%15%,20%20%,18%18%,10%10%,15%15%,10%10%,18%18%;\\/\\/background-position:0%80%,-5%20%,10%40%,20%0%,30%30%,22%50%,50%50%,65%20%,85%30%;}&:after{display:none;bottom:-75%;background-image:radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,transparent10%,$button-bg15%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%);background-size:15%15%,20%20%,18%18%,20%20%,15%15%,10%10%,20%20%;\\/\\/background-position:5%90%,10%90%,10%90%,15%90%,25%90%,25%90%,40%90%,55%90%,70%90%;}&:active{transform:scale(0.9);background-color:darken($button-bg,5%);box-shadow:02px25pxrgba(255,0,130,0.2);}&.animate{&:before{display:block;animation:topBubblesease-in-out0.75sforwards;}&:after{display:block;animation:bottomBubblesease-in-out0.75sforwards;}}}@keyframestopBubbles{0%{background-position:5%90%,10%90%,10%90%,15%90%,25%90%,25%90%,40%90%,55%90%,70%90%;}50%{background-position:0%80%,0%20%,10%40%,20%0%,30%30%,22%50%,50%50%,65%20%,90%30%;}100%{background-position:0%70%,0%10%,10%30%,20%-10%,30%20%,22%40%,50%40%,65%10%,90%20%;background-size:0%0%,0%0%,0%0%,0%0%,0%0%,0%0%;}}@keyframesbottomBubbles{0%{background-position:10%-10%,30%10%,55%-10%,70%-10%,85%-10%,70%-10%,70%0%;}50%{background-position:0%80%,20%80%,45%60%,60%100%,75%70%,95%60%,105%0%;}100%{background-position:0%90%,20%90%,45%70%,60%110%,75%80%,95%70%,110%10%;background-size:0%0%,0%0%,0%0%,0%0%,0%0%,0%0%;}}\",\n    \"js\": \"var animateButton = function(e) {\\n\\n  e.preventDefault;\\n  \\/\\/reset animation\\n  e.target.classList.remove(\'animate\');\\n  \\n  e.target.classList.add(\'animate\');\\n  setTimeout(function(){\\n    e.target.classList.remove(\'animate\');\\n  },700);\\n};\\n\\nvar bubblyButtons = document.getElementsByClassName(\\\"elementId\\\");\\n\\nfor (var i = 0; i < bubblyButtons.length; i++) {\\n  bubblyButtons[i].addEventListener(\'triggerValue\', animateButton, false);\\n}\"\n}', 'color effect'),
(86, '2 Plain javascript Bubble effect ', '$fuschia: #ff0081;\r\n$button-bg: $fuschia;\r\n$button-text-color: #fff;\r\n$baby-blue: #f8faff;\r\n\r\n.department_btn{\r\n  font-family: \'Helvetica\', \'Arial\', sans-serif;\r\n  display: inline-block;\r\n  font-size: 1em;\r\n  padding: 1em 2em;\r\n  margin-top: 100px;\r\n  margin-bottom: 60px;\r\n  -webkit-appearance: none;\r\n  appearance: none;\r\n  background-color: $button-bg;\r\n  color: $button-text-color;\r\n  border-radius: 4px;\r\n  border: none;\r\n  cursor: pointer;\r\n  position: relative;\r\n  transition: transform ease-in 0.1s, box-shadow ease-in 0.25s;\r\n  box-shadow: 0 2px 25px rgba(255, 0, 130, 0.5);\r\n  \r\n  &:focus {\r\n    outline: 0;\r\n  }\r\n  \r\n  &:before, &:after{\r\n    position: absolute;\r\n    content: \'\';\r\n    display: block;\r\n    width: 140%;\r\n    height: 100%;\r\n    left: -20%;\r\n    z-index: -1000;\r\n    transition: all ease-in-out 0.5s;\r\n    background-repeat: no-repeat;\r\n  }\r\n  \r\n  &:before{\r\n    display: none;\r\n    top: -75%;\r\n    background-image:  \r\n      radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle,  transparent 20%, $button-bg 20%, transparent 30%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%), \r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle,  transparent 10%, $button-bg 15%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%);\r\n  background-size: 10% 10%, 20% 20%, 15% 15%, 20% 20%, 18% 18%, 10% 10%, 15% 15%, 10% 10%, 18% 18%;\r\n  //background-position: 0% 80%, -5% 20%, 10% 40%, 20% 0%, 30% 30%, 22% 50%, 50% 50%, 65% 20%, 85% 30%;\r\n  }\r\n  \r\n  &:after{\r\n    display: none;\r\n    bottom: -75%;\r\n    background-image:  \r\n    radial-gradient(circle, $button-bg 20%, transparent 20%), \r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle,  transparent 10%, $button-bg 15%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%),\r\n    radial-gradient(circle, $button-bg 20%, transparent 20%);\r\n  background-size: 15% 15%, 20% 20%, 18% 18%, 20% 20%, 15% 15%, 10% 10%, 20% 20%;\r\n  //background-position: 5% 90%, 10% 90%, 10% 90%, 15% 90%, 25% 90%, 25% 90%, 40% 90%, 55% 90%, 70% 90%;\r\n  }\r\n \r\n  &:active{\r\n    transform: scale(0.9);\r\n    background-color: darken($button-bg, 5%);\r\n    box-shadow: 0 2px 25px rgba(255, 0, 130, 0.2);\r\n  }\r\n  \r\n  &.animate{\r\n    &:before{\r\n      display: block;\r\n      animation: topBubbles ease-in-out 0.75s forwards;\r\n    }\r\n    &:after{\r\n      display: block;\r\n      animation: bottomBubbles ease-in-out 0.75s forwards;\r\n    }\r\n  }\r\n}\r\n\r\n\r\n@keyframes topBubbles {\r\n  0%{\r\n    background-position: 5% 90%, 10% 90%, 10% 90%, 15% 90%, 25% 90%, 25% 90%, 40% 90%, 55% 90%, 70% 90%;\r\n  }\r\n    50% {\r\n      background-position: 0% 80%, 0% 20%, 10% 40%, 20% 0%, 30% 30%, 22% 50%, 50% 50%, 65% 20%, 90% 30%;}\r\n 100% {\r\n    background-position: 0% 70%, 0% 10%, 10% 30%, 20% -10%, 30% 20%, 22% 40%, 50% 40%, 65% 10%, 90% 20%;\r\n  background-size: 0% 0%, 0% 0%,  0% 0%,  0% 0%,  0% 0%,  0% 0%;\r\n  }\r\n}\r\n\r\n@keyframes bottomBubbles {\r\n  0%{\r\n    background-position: 10% -10%, 30% 10%, 55% -10%, 70% -10%, 85% -10%, 70% -10%, 70% 0%;\r\n  }\r\n  50% {\r\n    background-position: 0% 80%, 20% 80%, 45% 60%, 60% 100%, 75% 70%, 95% 60%, 105% 0%;}\r\n 100% {\r\n    background-position: 0% 90%, 20% 90%, 45% 70%, 60% 110%, 75% 80%, 95% 70%, 110% 10%;\r\n  background-size: 0% 0%, 0% 0%,  0% 0%,  0% 0%,  0% 0%,  0% 0%;\r\n  }\r\n}', '{\n    \"css\": \"$fuschia:#ff0081;$button-bg:$fuschia;$button-text-color:#fff;$baby-blue:#f8faff;.department_btn{font-family:\'Helvetica\',\'Arial\',sans-serif;display:inline-block;font-size:1em;padding:1em2em;margin-top:100px;margin-bottom:60px;-webkit-appearance:none;appearance:none;background-color:$button-bg;color:$button-text-color;border-radius:4px;border:none;cursor:pointer;position:relative;transition:transformease-in0.1s,box-shadowease-in0.25s;box-shadow:02px25pxrgba(255,0,130,0.5);&:focus{outline:0;}&:before,&:after{position:absolute;content:\'\';display:block;width:140%;height:100%;left:-20%;z-index:-1000;transition:allease-in-out0.5s;background-repeat:no-repeat;}&:before{display:none;top:-75%;background-image:radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,transparent20%,$button-bg20%,transparent30%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,transparent10%,$button-bg15%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%);background-size:10%10%,20%20%,15%15%,20%20%,18%18%,10%10%,15%15%,10%10%,18%18%;\\/\\/background-position:0%80%,-5%20%,10%40%,20%0%,30%30%,22%50%,50%50%,65%20%,85%30%;}&:after{display:none;bottom:-75%;background-image:radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,transparent10%,$button-bg15%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%),radial-gradient(circle,$button-bg20%,transparent20%);background-size:15%15%,20%20%,18%18%,20%20%,15%15%,10%10%,20%20%;\\/\\/background-position:5%90%,10%90%,10%90%,15%90%,25%90%,25%90%,40%90%,55%90%,70%90%;}&:active{transform:scale(0.9);background-color:darken($button-bg,5%);box-shadow:02px25pxrgba(255,0,130,0.2);}&.animate{&:before{display:block;animation:topBubblesease-in-out0.75sforwards;}&:after{display:block;animation:bottomBubblesease-in-out0.75sforwards;}}}@keyframestopBubbles{0%{background-position:5%90%,10%90%,10%90%,15%90%,25%90%,25%90%,40%90%,55%90%,70%90%;}50%{background-position:0%80%,0%20%,10%40%,20%0%,30%30%,22%50%,50%50%,65%20%,90%30%;}100%{background-position:0%70%,0%10%,10%30%,20%-10%,30%20%,22%40%,50%40%,65%10%,90%20%;background-size:0%0%,0%0%,0%0%,0%0%,0%0%,0%0%;}}@keyframesbottomBubbles{0%{background-position:10%-10%,30%10%,55%-10%,70%-10%,85%-10%,70%-10%,70%0%;}50%{background-position:0%80%,20%80%,45%60%,60%100%,75%70%,95%60%,105%0%;}100%{background-position:0%90%,20%90%,45%70%,60%110%,75%80%,95%70%,110%10%;background-size:0%0%,0%0%,0%0%,0%0%,0%0%,0%0%;}}\",\n    \"js\": \"var animateButton = function(e) {\\n\\n  e.preventDefault;\\n  \\/\\/reset animation\\n  e.target.classList.remove(\'animate\');\\n  \\n  e.target.classList.add(\'animate\');\\n  setTimeout(function(){\\n    e.target.classList.remove(\'animate\');\\n  },700);\\n};\\n\\nvar bubblyButtons = document.getElementsByClassName(\\\"elementId\\\");\\n\\nfor (var i = 0; i < bubblyButtons.length; i++) {\\n  bubblyButtons[i].addEventListener(\'triggerValue\', animateButton, false);\\n}\"\n}', 'color effect'),
(87, 'Trasparent effect using toggle ', ',', '{\n    \"css\": \",\",\n    \"js\": \"const fadeButton = document.querySelector(\\\"elementId\\\");\\n\\n\\/\\/ Function to toggle the fading effect\\nfunction toggleFading() {\\n    if (isFaded) {\\n        fadeButton.style.opacity = \'1\';\\n    } else {\\n        fadeButton.style.opacity = \'0.2\';\\n    }\\n    isFaded = !isFaded;\\n}\\n\\n\\/\\/ Flag to track the fading state\\nlet isFaded = false;\\n\\n\\/\\/ Add a mouseover event listener to the button\\nfadeButton.addEventListener(\'triggerValue\', toggleFading);\\n\\n        \"\n}', 'Make Element trasnparent '),
(88, 'Trasparent effect', '//', '{\n    \"css\": \"\\/\\/\",\n    \"js\": \"const fadeButton = document.querySelector(\\\"#elementId\\\");\\n\\n\\/\\/ Function to toggle the fading effect\\nfunction toggleFading() {\\n    if (isFaded) {\\n        fadeButton.style.opacity = \'1\';\\n    } else {\\n        fadeButton.style.opacity = \'0.2\';\\n    }\\n    isFaded = !isFaded;\\n}\\n\\n\\/\\/ Flag to track the fading state\\nlet isFaded = false;\\n\\n\\/\\/ Add a mouseover event listener to the button\\nfadeButton.addEventListener(\'triggerValue\', toggleFading);\\n\\n        \"\n}', 'Transparent'),
(89, 'Final Trasparent effect', '//', '{\n    \"css\": \"\\/\\/\",\n    \"js\": \"\\/ Get the button by its ID using querySelector\\nconst fadeButton = document.querySelector(\'#elementId\');\\n\\n\\/\\/ Function to toggle the fading effect\\nfunction toggleFading() {\\n    if (isFaded) {\\n        fadeButton.style.opacity = \'1\';\\n    } else {\\n        fadeButton.style.opacity = \'0.2\';\\n    }\\n    isFaded = !isFaded;\\n}\\n\\n\\/\\/ Flag to track the fading state\\nlet isFaded = false;\\n\\n\\/\\/ Add a mouseover event listener to the button\\nfadeButton.addEventListener(\'triggerValue\', toggleFading);\\n\"\n}', 'Transparent'),
(90, 'Final HIDE ', ',', '{\n    \"css\": \",\",\n    \"js\": \"  var opacity=0; \\n    var intervalID=0; \\n    window.onload=fadeout; \\n        function fadeout(){ \\n            setInterval(hide, 200); \\n        } \\n    function hide(){ \\n        var body=document.getElementById(\'#elementId\'); \\n        opacity = \\n    Number(window.getComputedStyle(body).getPropertyValue(\\\"opacity\\\")) \\n      \\n            if(opacity>0){ \\n                opacity=opacity-0.1; \\n                        body.style.opacity=opacity \\n            } \\n            else{ \\n                clearInterval(intervalID); \\n            } \\n        } \"\n}', 'HIDE '),
(91, 'Blink', 'color : black; ', '{\n    \"css\": \"color:black;\",\n    \"js\": \"<script>\\nalert (\\\"Hello);\\n\\n<\\/script>\"\n}', 'Alert'),
(94, 'Pass Fail Color Effect 2', '.', '{\n    \"css\": \".\",\n    \"js\": \"document.addEventListener(\'triggerValue\', function () {\\n    var percentageElements = document.querySelector(\'#elementId\');\\n    percentageElements.forEach(function (element) {\\n      var percentage = parseInt(element.textContent);\\n      if (percentage >= 45) {\\n        element.style.setProperty(\'color\', \'green\', \'important\');\\n      } else {\\n        element.style.setProperty(\'color\', \'red\', \'important\');\\n      }\\n    });\\n  });\"\n}', 'y'),
(95, 'P and F', '.', '{\n    \"css\": \".\",\n    \"js\": \"document.addEventListener(\'triggerValue\', function () {\\n  var percentageElements = document.querySelector(\'#elementId\');\\n  percentageElements.forEach(function (element) {\\n    var percentage = parseInt(element.textContent);\\n    if (percentage >= 45) {\\n      element.style.setProperty(\'color\', \'green\', \'important\');\\n    } else {\\n      element.style.setProperty(\'color\', \'red\', \'important\');\\n    }\\n  });\\n});\\n\"\n}', ','),
(96, 'p&f', '.', '{\r\n    \"css\": \".\",\r\n    \"js\": \"document.addEventListener(\'triggerValue\', function () {\\n    var percentageElements = document.querySelectorAll(\'elementId\');\\n    percentageElements.forEach(function (element) {\\n      var percentage = parseInt(element.textContent);\\n      if (percentage >= 45) {\\n        element.style.setProperty(\'color\', \'green\', \'important\');\\n      } else {\\n        element.style.setProperty(\'color\', \'red\', \'important\');\\n      }\\n    });\\n  });\"\r\n}', 'Green Color if content of table column is above 45 or else red '),
(97, 'Updated Report Script ', '.', '{\n    \"css\": \".\",\n    \"js\": \"document.addEventListener(\'triggerValue\', function () {\\n    \\/\\/ Adding a style rule dynamically\\n    var style = document.createElement(\'style\');\\n    style.textContent = \'table td:nth-child(8).red { color: red !important; } table td:nth-child(8).green { color: green !important; }\';\\n    document.head.appendChild(style);\\n\\n    \\/\\/ Now you can use your existing jQuery code\\n    $(document).ready(function () {\\n        $(\'table td:nth-child(8)\').each(function() {\\n            var percentage = parseInt($(this).text());\\n            $(this).removeClass(\'red green\');\\n\\n            if (percentage < 45) {\\n                $(this).addClass(\'red\');\\n            } else {\\n                $(this).addClass(\'green\');\\n            }\\n        });\\n    });\\n});\"\n}', 'Updated Report Script with ready load '),
(98, 'Green and Red ', '', '   document.addEventListener(\'DOMContentLoaded\', function () {\r\n                    var style = document.createElement(\'style\');\r\n                    style.textContent = \'table td:nth-child(8).red { color: red !important; } \' +\r\n                                        \' table td:nth-child(8).green { color: green !important; }\';\r\n\r\n                    document.head.appendChild(style);\r\n\r\n                    $(\'table td:nth-child(8)\').each(function() {\r\n                        var percentage = parseInt($(this).text());\r\n                        $(this).removeClass(\'red green\');\r\n\r\n                        if (percentage < 45) {\r\n                            $(this).addClass(\'red\');\r\n                        } else {\r\n                            $(this).addClass(\'green\');\r\n                        }\r\n                    });\r\n                });', 'Custom Pass and Fail '),
(99, 'Report Toolkit ', '', '`\r\n    document.addEventListener(\'DOMContentLoaded\', function () {\r\n    // Add tooltips to cells with additional information\r\n    var style = document.createElement(\'style\');\r\n    style.textContent = \'table td.tooltip { cursor: pointer; border-bottom: 1px dotted #000; }\';\r\n\r\n    document.head.appendChild(style);\r\n\r\n    // Add \'tooltip\' class to each cell for tooltips\r\n    $(\'table td\').addClass(\'tooltip\').each(function () {\r\n        var cellContent = $(this).text().trim();\r\n        $(this).attr(\'title\', \'Additional Info: \' + cellContent);\r\n    });\r\n});\r\n\r\n`', 'Add a description Box to All cell of report'),
(100, 'Highlight Min and Max ', '.', 'var percentageElements = document.querySelectorAll(\'table td:nth-child(7)\');\r\nvar values = [];\r\n\r\npercentageElements.forEach(function (element) {\r\n  var percentage = parseInt(element.textContent);\r\n  values.push(percentage);\r\n});\r\n\r\nvar minValue = Math.min(...values);\r\nvar maxValue = Math.max(...values);\r\n\r\npercentageElements.forEach(function (element) {\r\n  var percentage = parseInt(element.textContent);\r\n  if (percentage === minValue) {\r\n    element.style.setProperty(\'background-color\', \'red\');\r\n  } else if (percentage === maxValue) {\r\n    element.style.setProperty(\'background-color\', \'green\');\r\n  }\r\n});\r\n', 'Highlight min in red and max in green'),
(101, 'Even and Odd Row Color ', '.', 'var percentageElements = document.querySelectorAll(\'table td:nth-child(8)\');\r\n    percentageElements.forEach(function (element) {\r\n      var percentage = parseInt(element.textContent);\r\n      if (percentage >= 30) {\r\n        element.style.setProperty(\'color\', \'green\', \'important\');\r\n      } else {\r\n        element.style.setProperty(\'color\', \'red\', \'important\');\r\n      }\r\n    });', 'Color even and odd cell in grey and white color '),
(102, 'CELL HighLight', '.', '// Select all cells in the third column of any table\r\nvar thirdColumnCells = document.querySelectorAll(\'table td:nth-child(3)\');\r\nvar keyword = \'Grid Container\';\r\n\r\nthirdColumnCells.forEach(function (element) {\r\n    if (element.textContent.trim() === keyword) {\r\n        // Apply styles to highlight the cell\r\n        element.style.setProperty(\'background-color\', \'yellow\', \'important\');\r\n        element.style.setProperty(\'color\', \'black\', \'important\'); // Example additional CSS\r\n        // Add any other CSS styles as needed\r\n    }\r\n});\r\n', 'Green Color if content of table column is above 45 or else red '),
(103, 'Dynamic Report Column HighLight ', '', 'var targetColumnNames = [\'column_Name\'];\r\nvar highlightColor = \'#FFC000\';\r\n\r\nvar columnIndices = targetColumnNames.map(function (columnName) {\r\n    return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n});\r\n\r\nif (columnIndices.every(index => index !== -1)) {\r\n    columnIndices.forEach(function (columnIndex) {\r\n        var cellsInColumn = document.querySelectorAll(\'table tbody td:nth-child(\' + (columnIndex + 1) + \')\');\r\n\r\n        cellsInColumn.forEach(function (cell) {\r\n            cell.style.setProperty(\'background-color\', highlightColor, \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        });\r\n    });\r\n} else {\r\n    console.error(\'One or more columns not found: \' + targetColumnNames.join(\', \'));\r\n}\r\n', 'HighLight Column Based on Column name '),
(104, 'Row/Record High Light', '', 'var targetWords = [\'word\'];\r\nvar rows = document.querySelectorAll(\'table tbody tr\');\r\n\r\nrows.forEach(function (row) {\r\n    var cells = row.querySelectorAll(\'td\');\r\n\r\n    var shouldHighlight = Array.from(cells).some(function (cell) {\r\n        var value = cell.textContent.trim();\r\n        return targetWords.some(function (word) {\r\n            return value.includes(word);\r\n        });\r\n    });\r\n\r\n    if (shouldHighlight) {\r\n        row.style.setProperty(\'background-color\', \'#6495ED\', \'important\');\r\n        row.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n    }\r\n});\r\n', 'Higlight Rows or record with give word'),
(105, 'Marks Pass', '', 'var targetColumnNames = [\'column_Name\'];\r\n\r\n    var columnIndices = targetColumnNames.map(function (columnName) {\r\n        return Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === columnName);\r\n    });\r\n\r\n    columnIndices.forEach(function (columnIndex) {\r\n        if (columnIndex !== -1) {\r\n            var targetElements = document.querySelectorAll(\'table td:nth-child(\' + (columnIndex + 1) + \')\');\r\n            \r\n            targetElements.forEach(function (element) {\r\n                var value = parseInt(element.textContent);\r\n                if (!isNaN(value)) {\r\n                    if (value >= 30) {\r\n                        element.style.setProperty(\'color\', \'green\', \'important\');\r\n                    } else {\r\n                        element.style.setProperty(\'color\', \'red\', \'important\');\r\n                    }\r\n                }\r\n            });\r\n        } else {\r\n            console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n        }\r\n    });', 'For Numberical Columns only , Show marks less than 30 in red and above 30 in green'),
(106, 'Dynamic Cell Hight Light ', '', 'var targetColumnNames = [\'column_Name\'];\r\nvar targetWords = [\'word\'];\r\n\r\nvar columnIndex = Array.from(document.querySelectorAll(\'table th\')).findIndex(th => th.textContent.trim() === targetColumnNames[0]);\r\n\r\nif (columnIndex !== -1) {\r\n    var rows = document.querySelectorAll(\'table tbody tr\');\r\n\r\n    rows.forEach(function (row) {\r\n        var cell = row.querySelector(\'td:nth-child(\' + (columnIndex + 1) + \')\');\r\n        var value = cell ? cell.textContent.trim() : \'\';\r\n\r\n        if (targetWords.includes(value)) {\r\n            cell.style.setProperty(\'background-color\', \'#6495ED\', \'important\');\r\n            cell.style.setProperty(\'font-weight\', \'bold\', \'important\');\r\n        }\r\n    });\r\n} else {\r\n    console.error(\'Column not found: \' + targetColumnNames.join(\', \'));\r\n}', 'HightLight Cell using column and word.There should be only one column, and words can be multiplely related to that field.');

-- --------------------------------------------------------

--
-- Table structure for table `selected_theme`
--

CREATE TABLE `selected_theme` (
  `id` int(11) NOT NULL,
  `theme_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selected_theme`
--

INSERT INTO `selected_theme` (`id`, `theme_ID`) VALUES
(1, 86);

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `percentage` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `course_type_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `academic_status` varchar(50) DEFAULT NULL,
  `theme_ID` int(11) DEFAULT NULL,
  `emergency_contact_name` varchar(100) DEFAULT NULL,
  `emergency_contact_phone` varchar(20) DEFAULT NULL,
  `emergency_contact_relationship` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`student_id`, `first_name`, `last_name`, `percentage`, `date_of_birth`, `address`, `phone_number`, `email_address`, `department_id`, `course_type_id`, `course_id`, `major`, `academic_status`, `theme_ID`, `emergency_contact_name`, `emergency_contact_phone`, `emergency_contact_relationship`) VALUES
(1, 'Gauravi', 'Damahe', '57', '2001-01-26', 'High Court Aurangabad', '09011689196', 'gauvi0981@gmail.com', 3, 5, 7, 'Science ', 'Regural ', 87, 'Anita Damahe ', '09011689196', 'Mother '),
(2, 'Priya', 'Sharma', '64', NULL, 'Mumbai', '901179196', 'abc', 3, 6, 14, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Prasad ', 'Kumar', '32', '0000-00-00', 'High Court Aurangabad', '09011689190', 'gauravidamahe01@outlook.com', 7, 5, 7, 'Commerce', 'Regural ', 121, 'Gauravi', '9158883235', 'Brother'),
(4, 'John', 'Doe', '23', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Computer Science', 'Enrolled', NULL, NULL, NULL, NULL),
(5, 'Alice', 'Smith', '25', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Electrical Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(6, 'Eve', 'Johnson', '12', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Mechanical Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(7, 'David', 'Brown', '10', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Civil Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(8, 'Grace', 'Miller', '45', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Chemical Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(9, 'Michael', 'Wilson', '78', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Aerospace Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(10, 'Sophia', 'Anderson', '76', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Biomedical Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(11, 'Oliver', 'Thomas', '90', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Environmental Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(12, 'Emma', 'Harris', '32', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Industrial Engineering', 'Enrolled', NULL, NULL, NULL, NULL),
(13, 'Liam', 'Taylor', '56', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'Materials Science', 'Enrolled', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_theme`
--

CREATE TABLE `table_theme` (
  `id` int(11) NOT NULL,
  `report_id` varchar(255) NOT NULL,
  `report_element_name` varchar(255) NOT NULL,
  `report_element` varchar(255) NOT NULL,
  `theme_name` varchar(255) NOT NULL,
  `css_property` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_theme`
--

INSERT INTO `table_theme` (`id`, `report_id`, `report_element_name`, `report_element`, `theme_name`, `css_property`, `value`) VALUES
(1, '1', 'Grid Container ', '.student-container', 'Orange Bright Theme ', 'grid', 'display'),
(2, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'grid-template-columns', 'repeat(3, 1fr)'),
(3, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'grid-gap', '10px'),
(4, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'justify-content', 'center'),
(5, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'align-items', 'center'),
(6, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'background-color', '#E6E6FA'),
(7, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'border-radius', '8px'),
(8, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'padding', '16px'),
(9, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'font-family', '\'Roboto\', sans-serif'),
(10, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'max-width', '800px'),
(11, '1', 'Grid Container', '.student-container', 'Orange Bright Theme', 'margin', '0 auto'),
(12, '1', 'Heading', '.student-container h2', 'Orange Bright Theme', 'text-align', 'center'),
(13, '1', 'Heading', '.student-container h2', 'Orange Bright Theme', 'grid-column', 'span 3'),
(14, '1', 'Heading', '.student-container h2', 'Orange Bright Theme', 'color', '#4CAF50'),
(15, '1', 'Heading', '.student-container h2', 'Orange Bright Theme', 'font-size', '24px'),
(16, '1', 'Table', '.student-report', 'Orange Bright Theme', 'width', '600px'),
(17, '1', 'Table', '.student-report', 'Orange Bright Theme', 'border-collapse', 'separate'),
(18, '1', 'Table', '.student-report', 'Orange Bright Theme', 'border-spacing', '0 8px'),
(19, '1', 'Table', '.student-report', 'Orange Bright Theme', 'margin-top', '16px'),
(20, '1', 'Table', '.student-report', 'Orange Bright Theme', 'background-color', '#FFF8DC'),
(21, '1', 'Table Header', 'th', 'Orange Bright Theme', 'padding', '14px'),
(22, '1', 'Table Header', 'th', 'Orange Bright Theme', 'border', '2px solid #FFD700'),
(23, '1', 'Table Header', 'th', 'Orange Bright Theme', 'background-color', '#FFA500'),
(24, '1', 'Table Header', 'th', 'Orange Bright Theme', 'color', '#fff'),
(25, '1', 'Table Header', 'th', 'Orange Bright Theme', 'font-weight', 'bold'),
(35, '1', 'Table Rows even', 'tr:nth-child(even)', 'Orange Bright Theme', 'background-color', '#FFE4B5'),
(36, '1', 'Table Rows odd', 'tr:nth-child(odd)', 'Orange Bright Theme', 'background-color', '#FFE4B5'),
(37, '1', 'Hover Effect', 'tr:hover', 'Orange Bright Theme', 'background-color', '#ADD8E6'),
(38, '1', 'Table Cells', 'td', 'Orange Bright Theme', 'padding', '12px'),
(39, '1', 'Table Cells', 'td', 'Orange Bright Theme', 'border', '2px solid #87CEEB'),
(40, '1', 'Table Cells', 'td', 'Orange Bright Theme', 'color', '#333'),
(41, '1', 'Footer', 'tfoot', 'Orange Bright Theme', 'background-color', '#FFD700'),
(42, '1', 'Footer', 'tfoot', 'Orange Bright Theme', 'color', '#fff'),
(43, '1', 'Footer', 'tfoot', 'Orange Bright Theme', 'font-weight', 'bold'),
(119, '2', 'Grid Container', '.student-container', 'Blue', 'display', 'grid'),
(120, '2', 'Grid Container', '.student-container', 'Blue', 'grid-template-columns', 'repeat(4, 1fr)'),
(121, '2', 'Grid Container', '.student-container', 'Blue', 'grid-gap', '16px'),
(122, '2', 'Grid Container', '.student-container', 'Blue', 'justify-content', 'center'),
(123, '2', 'Grid Container', '.student-container', 'Blue', 'align-items', 'center'),
(124, '2', 'Grid Container', '.student-container', 'Blue', 'background-color', '#F0FCFF'),
(125, '2', 'Grid Container', '.student-container', 'Blue', 'border-radius', '12px'),
(126, '2', 'Grid Container', '.student-container', 'Blue', 'padding', '12px'),
(127, '2', 'Grid Container', '.student-container', 'Blue', 'font-family', 'Lato'),
(128, '2', 'Grid Container', '.student-container', 'Blue', 'max-width', '750px'),
(129, '2', 'Grid Container', '.student-container', 'Blue', 'margin', '0 auto'),
(130, '2', 'Heading', '.student-container h2', 'Blue', 'text-align', 'center'),
(131, '2', 'Heading', '.student-container h2', 'Blue', 'grid-column', 'span 4'),
(132, '2', 'Table', '.student-report', 'Blue', 'width', '100%'),
(133, '2', 'Table', '.student-report', 'Blue', 'border-collapse', 'collapse'),
(134, '2', 'Table', '.student-report', 'Blue', 'margin-top', '16px'),
(135, '2', 'Table Header', 'th', 'Blue', 'padding', '12px'),
(136, '2', 'Table Header', 'th', 'Blue', 'border', '2px dotted'),
(137, '2', 'Table Header', 'th', 'Blue', 'background-color', '#87CEEB'),
(138, '2', 'Table Rows', 'tr:nth-child(even)', 'Blue', 'background-color', '#F0F8FF'),
(139, '2', 'Hover Effect', 'tr:hover', 'Blue', 'background-color', '#B0E0E6'),
(140, '2', 'Table Cells', 'td', 'Blue', 'padding', '12px'),
(141, '2', 'Table Cells', 'td', 'Blue', 'border', '2px dotted');

-- --------------------------------------------------------

--
-- Table structure for table `text_css_properties`
--

CREATE TABLE `text_css_properties` (
  `id` int(11) NOT NULL,
  `CSS Property` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `text_css_properties`
--

INSERT INTO `text_css_properties` (`id`, `CSS Property`) VALUES
(1, 'text-color'),
(2, 'font-size'),
(3, 'text-align'),
(4, 'font-family'),
(5, 'text-shadow '),
(6, 'text-decoration');

-- --------------------------------------------------------

--
-- Table structure for table `text_type`
--

CREATE TABLE `text_type` (
  `id` int(11) NOT NULL,
  `text_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `text_type`
--

INSERT INTO `text_type` (`id`, `text_type`) VALUES
(1, 'h1'),
(2, 'h2'),
(3, 'h3'),
(4, 'body'),
(5, 'p'),
(6, 'span');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `ID` int(11) NOT NULL,
  `theme_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `color` varchar(50) DEFAULT NULL,
  `font_size` varchar(50) DEFAULT NULL,
  `background_color` varchar(50) DEFAULT NULL,
  `background` varchar(255) NOT NULL,
  `padding` varchar(50) DEFAULT NULL,
  `margin` varchar(50) DEFAULT NULL,
  `border` varchar(50) DEFAULT NULL,
  `text_align` varchar(50) DEFAULT NULL,
  `display` varchar(255) NOT NULL,
  `clear` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `text_shadow` varchar(50) DEFAULT NULL,
  `text_indent` varchar(50) DEFAULT NULL,
  `letter_spacing` varchar(50) DEFAULT NULL,
  `word_spacing` varchar(50) DEFAULT NULL,
  `line_height` varchar(50) DEFAULT NULL,
  `text_transform` varchar(50) DEFAULT NULL,
  `text_decoration` varchar(50) DEFAULT NULL,
  `font_family` varchar(50) DEFAULT NULL,
  `font_weight` varchar(50) DEFAULT NULL,
  `text_overflow` varchar(50) DEFAULT NULL,
  `white_space` varchar(50) DEFAULT NULL,
  `text_orientation` varchar(50) DEFAULT NULL,
  `text_wrap` varchar(50) DEFAULT NULL,
  `text_justify` varchar(50) DEFAULT NULL,
  `text_emphasis` varchar(50) DEFAULT NULL,
  `text_spacing` varchar(50) DEFAULT NULL,
  `text_shadow_color` varchar(50) DEFAULT NULL,
  `text_shadow_x` varchar(50) DEFAULT NULL,
  `text_shadow_y` varchar(50) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `background_repeat` varchar(255) DEFAULT NULL,
  `background_attachment` varchar(255) DEFAULT NULL,
  `background_position` varchar(255) DEFAULT NULL,
  `border_width` varchar(255) DEFAULT NULL,
  `border_style` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `margin_top` varchar(255) DEFAULT NULL,
  `margin_right` varchar(255) DEFAULT NULL,
  `margin_bottom` varchar(255) DEFAULT NULL,
  `margin_left` varchar(255) DEFAULT NULL,
  `padding_top` varchar(255) DEFAULT NULL,
  `padding_right` varchar(255) DEFAULT NULL,
  `padding_bottom` varchar(255) DEFAULT NULL,
  `padding_left` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `max_height` varchar(255) DEFAULT NULL,
  `max_width` varchar(255) DEFAULT NULL,
  `min_height` varchar(255) DEFAULT NULL,
  `min_width` varchar(255) DEFAULT NULL,
  `box_sizing` varchar(255) DEFAULT NULL,
  `outline` varchar(255) DEFAULT NULL,
  `outline_color` varchar(255) DEFAULT NULL,
  `outline_style` varchar(255) DEFAULT NULL,
  `outline_width` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `text_opacity` varchar(255) DEFAULT NULL,
  `text_shadow_blur` varchar(255) DEFAULT NULL,
  `text_shadow_spread` varchar(255) DEFAULT NULL,
  `font_style` varchar(255) DEFAULT NULL,
  `font_variant` varchar(255) DEFAULT NULL,
  `font_stretch` varchar(255) DEFAULT NULL,
  `font_size_adjust` varchar(255) DEFAULT NULL,
  `font_variant_caps` varchar(255) DEFAULT NULL,
  `font_variant_numeric` varchar(255) DEFAULT NULL,
  `font_variant_alternates` varchar(255) DEFAULT NULL,
  `font_variant_ligatures` varchar(255) DEFAULT NULL,
  `font_variant_position` varchar(255) DEFAULT NULL,
  `font_kerning` varchar(255) DEFAULT NULL,
  `font_language_override` varchar(255) DEFAULT NULL,
  `font_feature_settings` varchar(255) DEFAULT NULL,
  `icon_size` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link_color` varchar(255) DEFAULT NULL,
  `hover` varchar(255) DEFAULT NULL,
  `visited` varchar(255) DEFAULT NULL,
  `list_style` varchar(255) DEFAULT NULL,
  `list_style_type` varchar(255) DEFAULT NULL,
  `list_style_position` varchar(255) DEFAULT NULL,
  `grid_template_rows` varchar(255) DEFAULT NULL,
  `grid_template_columns` varchar(255) DEFAULT NULL,
  `grid_template_areas` varchar(255) DEFAULT NULL,
  `grid_template` varchar(255) DEFAULT NULL,
  `grid_row_gap` varchar(255) DEFAULT NULL,
  `grid_column_gap` varchar(255) DEFAULT NULL,
  `grid_gap` varchar(255) DEFAULT NULL,
  `grid_auto_rows` varchar(255) DEFAULT NULL,
  `grid_auto_columns` varchar(255) DEFAULT NULL,
  `grid_auto_flow` varchar(255) DEFAULT NULL,
  `grid` varchar(255) DEFAULT NULL,
  `grid_row_start` varchar(255) DEFAULT NULL,
  `grid_column_start` varchar(255) DEFAULT NULL,
  `grid_row_end` varchar(255) DEFAULT NULL,
  `grid_column_end` varchar(255) DEFAULT NULL,
  `grid_area` varchar(255) DEFAULT NULL,
  `justify_items` varchar(255) DEFAULT NULL,
  `align_items` varchar(255) DEFAULT NULL,
  `justify_content` varchar(255) DEFAULT NULL,
  `align_content` varchar(255) DEFAULT NULL,
  `place_items` varchar(255) DEFAULT NULL,
  `place_content` varchar(255) DEFAULT NULL,
  `grid_template_rows_mobile` varchar(255) DEFAULT NULL,
  `grid_template_columns_mobile` varchar(255) DEFAULT NULL,
  `grid_template_areas_mobile` varchar(255) DEFAULT NULL,
  `grid_template_mobile` varchar(255) DEFAULT NULL,
  `grid_row_gap_mobile` varchar(255) DEFAULT NULL,
  `grid_column_gap_mobile` varchar(255) DEFAULT NULL,
  `grid_gap_mobile` varchar(255) DEFAULT NULL,
  `grid_auto_rows_mobile` varchar(255) DEFAULT NULL,
  `grid_auto_columns_mobile` varchar(255) DEFAULT NULL,
  `grid_auto_flow_mobile` varchar(255) DEFAULT NULL,
  `grid_mobile` varchar(255) DEFAULT NULL,
  `grid_row_start_mobile` varchar(255) DEFAULT NULL,
  `grid_column_start_mobile` varchar(255) DEFAULT NULL,
  `grid_row_end_mobile` varchar(255) DEFAULT NULL,
  `grid_column_end_mobile` varchar(255) DEFAULT NULL,
  `grid_area_mobile` varchar(255) DEFAULT NULL,
  `justify_items_mobile` varchar(255) DEFAULT NULL,
  `align_items_mobile` varchar(255) DEFAULT NULL,
  `justify_content_mobile` varchar(255) DEFAULT NULL,
  `align_content_mobile` varchar(255) DEFAULT NULL,
  `place_items_mobile` varchar(255) DEFAULT NULL,
  `place_content_mobile` varchar(255) DEFAULT NULL,
  `float_property` float DEFAULT NULL,
  `tab_background_color` varchar(50) DEFAULT NULL,
  `tab_border_color` varchar(50) DEFAULT NULL,
  `tab_border_width` varchar(50) DEFAULT NULL,
  `tab_padding` varchar(50) DEFAULT NULL,
  `tab_margin` varchar(50) DEFAULT NULL,
  `tab_font_color` varchar(50) DEFAULT NULL,
  `tab_font_size` varchar(50) DEFAULT NULL,
  `tab_font_weight` varchar(50) DEFAULT NULL,
  `tab_text_transform` varchar(50) DEFAULT NULL,
  `tab_text_decoration` varchar(50) DEFAULT NULL,
  `box_shadow` varchar(255) DEFAULT NULL,
  `opacity` decimal(4,2) DEFAULT NULL,
  `transition_property` varchar(255) DEFAULT NULL,
  `transition_duration` varchar(50) DEFAULT NULL,
  `transition_timing_function` varchar(50) DEFAULT NULL,
  `resize` varchar(255) NOT NULL,
  `transform` varchar(255) DEFAULT NULL,
  `transform_origin` varchar(50) DEFAULT NULL,
  `animation_name` varchar(255) DEFAULT NULL,
  `animation_duration` varchar(50) DEFAULT NULL,
  `animation_timing_function` varchar(50) DEFAULT NULL,
  `animation_delay` varchar(50) DEFAULT NULL,
  `animation_iteration_count` varchar(50) DEFAULT NULL,
  `animation_direction` varchar(50) DEFAULT NULL,
  `border_radius` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`ID`, `theme_name`, `created_at`, `color`, `font_size`, `background_color`, `background`, `padding`, `margin`, `border`, `text_align`, `display`, `clear`, `position`, `text_shadow`, `text_indent`, `letter_spacing`, `word_spacing`, `line_height`, `text_transform`, `text_decoration`, `font_family`, `font_weight`, `text_overflow`, `white_space`, `text_orientation`, `text_wrap`, `text_justify`, `text_emphasis`, `text_spacing`, `text_shadow_color`, `text_shadow_x`, `text_shadow_y`, `background_image`, `background_repeat`, `background_attachment`, `background_position`, `border_width`, `border_style`, `border_color`, `margin_top`, `margin_right`, `margin_bottom`, `margin_left`, `padding_top`, `padding_right`, `padding_bottom`, `padding_left`, `height`, `width`, `max_height`, `max_width`, `min_height`, `min_width`, `box_sizing`, `outline`, `outline_color`, `outline_style`, `outline_width`, `text_color`, `text_opacity`, `text_shadow_blur`, `text_shadow_spread`, `font_style`, `font_variant`, `font_stretch`, `font_size_adjust`, `font_variant_caps`, `font_variant_numeric`, `font_variant_alternates`, `font_variant_ligatures`, `font_variant_position`, `font_kerning`, `font_language_override`, `font_feature_settings`, `icon_size`, `icon`, `link_color`, `hover`, `visited`, `list_style`, `list_style_type`, `list_style_position`, `grid_template_rows`, `grid_template_columns`, `grid_template_areas`, `grid_template`, `grid_row_gap`, `grid_column_gap`, `grid_gap`, `grid_auto_rows`, `grid_auto_columns`, `grid_auto_flow`, `grid`, `grid_row_start`, `grid_column_start`, `grid_row_end`, `grid_column_end`, `grid_area`, `justify_items`, `align_items`, `justify_content`, `align_content`, `place_items`, `place_content`, `grid_template_rows_mobile`, `grid_template_columns_mobile`, `grid_template_areas_mobile`, `grid_template_mobile`, `grid_row_gap_mobile`, `grid_column_gap_mobile`, `grid_gap_mobile`, `grid_auto_rows_mobile`, `grid_auto_columns_mobile`, `grid_auto_flow_mobile`, `grid_mobile`, `grid_row_start_mobile`, `grid_column_start_mobile`, `grid_row_end_mobile`, `grid_column_end_mobile`, `grid_area_mobile`, `justify_items_mobile`, `align_items_mobile`, `justify_content_mobile`, `align_content_mobile`, `place_items_mobile`, `place_content_mobile`, `float_property`, `tab_background_color`, `tab_border_color`, `tab_border_width`, `tab_padding`, `tab_margin`, `tab_font_color`, `tab_font_size`, `tab_font_weight`, `tab_text_transform`, `tab_text_decoration`, `box_shadow`, `opacity`, `transition_property`, `transition_duration`, `transition_timing_function`, `resize`, `transform`, `transform_origin`, `animation_name`, `animation_duration`, `animation_timing_function`, `animation_delay`, `animation_iteration_count`, `animation_direction`, `border_radius`, `textarea`) VALUES
(1, 'FirstTheme', '2023-10-02 02:51:03.969224', '#fff', '16px', '#dfd8d8', '', '10px', '5px', '1px solid #ccc', 'left', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '20px', '2px', '2px', '1.2', 'uppercase', 'none', 'Arial', 'bold', 'ellipsis', 'normal', 'horizontal', 'nowrap', 'inter-word', 'none', '2px', '#fff', '2px', '2px', '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(2, 'theme2', '2023-10-02 02:51:03.969224', '#fff', '14px', '#d0c3c3', '', '100px', '3px', '1px solid #999', 'center', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '15px', '1px', '1px', '1.1', 'none', 'underline', 'Verdana', 'normal', 'clip', 'pre-wrap', 'vertical', 'normal', 'distribute', 'dotted', 'none', '#fff', '1px', '1px', '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', '', '', '', '', '', '100px ', '', '', '', '', NULL, NULL, NULL, NULL, 'border-box', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0.00', '', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(3, 'theme3', '2023-10-02 02:51:03.969224', '#fff', '18px', '#000', '', '5px', '5px', '2px dashed #fff', 'right', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '25px', '3px', '3px', '1.4', 'capitalize', 'overline', 'Times New Roman', 'bold', 'inherit', 'pre', 'sideways-right', 'break-spaces', 'inter-cluster', 'wavy', '1px', '#fff', '2px', '2px', '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(4, 'theme6', '2023-10-02 02:51:03.969224', '#fff', '30px', '#000', '', '15px', '10px', '1px solid #dee2e6', 'left', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '30px', '1px', '20px', '1.5', 'none', 'underline', 'Helvetica', 'normal', 'clip', 'pre-wrap', 'sideways', 'normal', 'auto', 'none', '1px', '#fff', '0', '0', '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(5, 'theme7', '2023-10-02 02:51:03.969224', '#fff', '20px', '#000', '', '20px', '10px', '2px dashed #4caf50', 'right', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '40px', '2px', '2px', '1.6', 'uppercase', 'overline', 'Georgia', 'bold', 'ellipsis', 'normal', 'vertical-rl', 'break-spaces', 'distribute', 'circle', '2px', '#fff', '2px', '2px', '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(6, 'theme88', '2023-10-02 02:51:03.969224', '#fff', '22px', '#000', '', '25px', '15px', '2px dashed #4caf50', 'left', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '50px', '3px', '3px', '1.8', 'none', 'underline', 'Verdana', 'normal', 'clip', 'nowrap', 'mixed', 'break-spaces', 'distribute-all-lines', 'triangle', '3px', '#fff', '3px', '3px', '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(8, 'theme8', '2023-10-02 02:51:03.969224', '#fff', '22px', '#000', '', '25px', '15px', '3px double #d32f2f', 'center', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '50px', '3px', '3px', '1.8', 'none', 'line-through', 'Verdana', 'normal', 'clip', 'nowrap', 'mixed', 'break-spaces', 'distribute-all-lines', 'triangle', '3px', '#fff', '3px', '3px', '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(77, 'Test Custom Theme', '2023-10-02 02:51:03.969224', '#000000', NULL, '#9abcf4', '', NULL, NULL, '1px solid #4CAF50', 'left', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '1px', '1px', '1px', '2px', 'uppercase', 'none', '', NULL, 'visible', 'normal', 'horizontal', 'normal', NULL, NULL, NULL, '#fff', NULL, NULL, '', 'no-repeat', 'scroll', '0 0', '2px', 'dotted', '#09135d', '15px', '', '15px', '20px', '10px', '15px', '10px', '15px', 'auto', '500px', 'px', 'px', 'px', 'px', 'border-box', NULL, '#b94b4b', 'solid', '2px', '#fff', NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#2cb0ba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(86, 'Spring Theme', '2023-10-18 05:16:04.656108', '#519051', '18px', '#e8f5e9', '#e8f5e9', '10px', '10px', '1px solid #4CAF50', 'left', 'inline-block', 'both', '', '0 1px 1px rgba(255, 255, 255, 0.2)', 'px', 'px', 'px', 'px', 'none', 'none', '', 'bold', 'visible', 'normal', 'horizontal', '', '', '', '', '#fff', '', '', '', 'no-repeat', 'scroll', '0 0', '', 'dashed', '#000', '', '', '', '', '', '', '', '', 'auto', '80%', 'px', 'px', 'px', 'px', 'border-box', '', '', '', '', '#fff', '', '', '', 'normal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '#000000', '#000000', 'px', 'px', 'px', '#000000', 'px', 'px', 'none', 'none', '0 0 5px #4CAF50', '0.80', 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(87, 'Summer', '2023-10-02 02:51:03.969224', '#ffb266', '16px', '#ffffe0', '', '20px', '', '2px solid #FFB266', 'left', '', '', '', '1px 1px 1px rgba(255, 165, 0, 0.5)', '', '', '', '', 'none', 'none', 'Roboto, sans-serif', '', 'visible', 'normal', 'horizontal', '', '', '', '', '#fff', '', '', 'url(', 'no-repeat', 'fixed', 'center top', '', '', '#FFB266', '', '', '10px', '', '', '', '', '', '', '100%', '', '', '', '', 'border-box', '', '', '', '', '#fff', '', '', '', 'capitalize', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '#FFA500', '#FFA500', '2px', '12px 24px', '8px', '#FFF', '18px', 'bold', 'uppercase', '', '0 2px 6px rgba(0, 0, 0, 0.2)', '1.00', 'color, background-color, border-color', '0.4s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(94, 'Dark Theme', '2023-10-02 02:51:03.969224', '#78909c', '16px', '#1A2930', '', '20px', NULL, '2px solid #78909C', 'left', '', '', '', '1px 1px 1px rgba(255, 165, 0, 0.5)', '', '', '', '', 'none', 'none', 'Roboto, sans-serif', NULL, 'visible', 'normal', 'horizontal', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, 'url(\"night-sky-background.jpg\")', 'no-repeat', 'fixed', 'center top', NULL, NULL, '#78909C', '', '', '10px', '', '', '', '', '', '', '', '', '', '', '', 'border-box', NULL, '#000000', 'none', 'px', '#fff', NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0px', '#000000', '#000000', NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FFA500', '#FFA500', '2px', '12px 24px', '8px', '#FFF', '18px', 'bold', 'uppercase', 'none', '0 2px 6px rgba(0, 0, 0, 0.2)', '1.00', 'color, background-color, border-color', '0.4s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '10px', ''),
(102, 'Sunday theme ', '2023-10-02 02:51:03.969224', '#fff', NULL, '#000', '', NULL, NULL, '1px solid #DDDDDD', NULL, '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', NULL, NULL, NULL, NULL, NULL, NULL, 'Verdana', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#fff', NULL, NULL, '', 'no-repeat', 'scroll', '0 0', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, '0px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', NULL, '#000000', 'none', NULL, '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0px', '#000000', '#000000', NULL, NULL, '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#c25151', '#9d3939', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'color, background-color, text-shadow, border-color, background-image', '0.3s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(103, 'Elegant', '2023-10-02 02:51:03.969224', '#F3E0E8', '18px', '#3C1642', 'none', '12px', '0', '2px solid #F3E0E8', 'left', '', '', '', '1px 1px 1px rgba(255, 165, 0, 0.5)', NULL, NULL, NULL, NULL, NULL, NULL, 'Georgia, serif', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#fff', NULL, NULL, 'url(\"elegant-background.jpg\")', 'no-repeat', 'fixed', 'center top', NULL, NULL, '#000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', 'none', '#000000', 'none', '0', '#fff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FFA500', '#FFA500', '2px', '12px 24px', '8px', '#FFF', '18px', 'bold', 'uppercase', NULL, '0 2px 6px rgba(0, 0, 0, 0.2)', '1.00', 'color, background-color, border-color', '0.4s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '10px', ''),
(104, 'Standard', '2023-10-02 02:51:03.969224', '#000000', '14px', '#000', 'none', '10px', '0', '1px solid #CCCCCC', 'left', '', '', '', '0 1px 1px rgba(255, 255, 255, 0.2)', '', '', '', 'normal', 'none', 'none', 'Arial, sans-serif', 'normal', 'visible', 'normal', 'horizontal', NULL, NULL, NULL, NULL, '#fff', NULL, NULL, '', 'no-repeat', 'scroll', '0 0', '', NULL, '#000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'border-box', 'none', '#000000', 'none', '0', '#f0f0f0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0.00', 'color, background-color, text-shadow, border-color, background-image', '1s', 'ease-in-out', 'none', 'none', 'center', '', '', '', '', '', '', '4px', ''),
(120, 'Custom', '2023-10-18 05:53:44.224437', '#ff9d8f', '16px', '#E6F0FF', '', NULL, NULL, '2px solid #FF5733', 'left', '', '', 'relative', '', NULL, NULL, NULL, NULL, NULL, NULL, 'Chivo, sans-serif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url(\"beach-summer-background.jpg\")', NULL, NULL, NULL, NULL, NULL, '#FFCFCF', '', '', '', '', '10px', '10px', '10px', '10px', '', '80%', NULL, NULL, NULL, NULL, 'content-box', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#1550B2', '#FFCFCF', '2px', '12px 24px', '8px', '#FF9D8F', '18px', 'bold', 'uppercase', NULL, NULL, NULL, 'color, background-color, border-color', '0.4s', 'ease-in-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10px', ''),
(121, 'Education Theme', '2023-10-02 02:51:03.969224', '#336699', '16px', '#F2F2F2', '', NULL, NULL, '1px solid #336699', NULL, '', '', '', '1px 1px 1px rgba(0, 0, 0, 0.2)', NULL, NULL, NULL, NULL, NULL, NULL, 'Roboto, sans-serif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url(\"education-background.jpg\")', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#007BFF', '#007BFF', '2px', '12px 24px', '8px', '#FFF', '14px', 'bold', 'uppercase', NULL, NULL, NULL, 'color, background-color, border-color', '0.4s', 'ease-in-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5px', ''),
(122, 'Red Portal Theme', '2023-10-02 02:51:03.969224', '#CC0000', '16px', '#F8F8F8', '', NULL, NULL, '1px solid #CC0000', NULL, '', '', '', '1px 1px 1px rgba(0, 0, 0, 0.2)', NULL, NULL, NULL, NULL, NULL, NULL, 'Open Sans, sans-serif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url(\"red-background.jpg\")', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#FF5733', '#FF5733', '2px', '12px 24px', '8px', '#FFF', '14px', 'bold', 'uppercase', NULL, NULL, NULL, 'color, background-color, border-color', '0.4s', 'ease-in-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5px', ''),
(123, 'Test Case Theme ', '2023-10-02 02:51:03.969224', '#0c4b47', NULL, '#f2f2f2', '', NULL, NULL, '1px solid #4CAF50', 'left', '', '', '', '', 'px', 'px', 'px', 'px', NULL, 'none', '', NULL, 'visible', 'normal', 'horizontal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10px', 'dotted', '#b1f6fb', '10px', '', 'px', 'px', '10px', 'px', 'px', 'px', 'auto', '', 'px', 'px', 'px', 'px', 'content-box', NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4px', ''),
(124, 'Test theme 10', '2023-10-02 02:51:03.969224', '#999494', NULL, '#a6edd5', '', NULL, NULL, NULL, 'left', '', '', 'static', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10px', 'double', NULL, '10px', '', 'px', 'px', '10px', 'px', 'px', 'px', '100px', '100px', 'px', 'px', 'px', 'px', 'content-box', NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', ''),
(133, NULL, '2023-10-02 02:51:03.969224', '#ce5a5a', NULL, '#d52a2a', '', NULL, NULL, NULL, 'center', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'overline', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35px', 'dotted', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'dashed', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, '#fdf2f2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'color', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '29', ''),
(134, NULL, '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(136, 'Test Update ', '2023-11-20 12:31:36.029126', '#1d3cd7', NULL, '#d5f971', '', NULL, NULL, NULL, 'center', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'underline', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images (4).jpeg', NULL, NULL, NULL, '11px', 'groove', NULL, '8px', '16px', '16px', '10px', '1px', 'px', 'px', '32px', '400px', '300px', 'px', 'px', 'px', 'px', 'border-box', NULL, '#962222', 'solid', '12px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3s', 'ease-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13', ''),
(137, 'test 08', '2023-10-02 02:51:03.969224', '#1d3cd7', NULL, '#d5f971', '', NULL, NULL, NULL, 'center', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'underline', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images (4).jpeg', NULL, NULL, NULL, '11px', 'groove', NULL, '8px', '16px', '16px', '10px', '1px', 'px', 'px', '32px', '400px', '300px', 'px', 'px', 'px', 'px', 'border-box', NULL, '#962222', 'solid', '12px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3s', 'ease-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13', ''),
(138, NULL, '2023-10-02 02:51:03.969224', '#fbf9f9', NULL, '#9e4242', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(139, 'test theme 11', '2023-10-02 02:51:03.969224', '#fcf8f8', NULL, '#948f8f', '', NULL, NULL, NULL, 'justify', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'none', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images (4).jpeg', NULL, NULL, NULL, '5px', 'dotted', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, '#bbb4b4', 'groove', '7px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', ''),
(140, 'image test ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(142, 'test 3', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(143, 'test student image 2 ', '2023-10-02 02:51:03.969224', NULL, NULL, '#b0eef2', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(144, 'Student Image ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(145, 'monday', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(146, 'friday', '2023-10-02 02:51:03.969224', NULL, NULL, '#e6a8a8', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/collge.jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(147, 'thrusday', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/testproject/images/testing.jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(148, 'wednesday', '2023-10-02 02:51:03.969224', NULL, NULL, '#e1dfdf', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/student.jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(149, 'October ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/testing.jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(150, 'Study ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testprojecthttp://localhost/images/test image 2.jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(151, 'college', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/WhatsApp Image 2023-09-11 at 6.37.34 AM (1).jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(152, 'festival themes', '2023-10-02 02:51:03.969224', NULL, NULL, '#2ab741', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/student.jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(153, '2001', '2023-10-02 02:51:03.969224', '#ffffff', NULL, '#a83838', '', NULL, NULL, NULL, 'justify', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'line-through', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/WhatsApp Image 2023-03-01 at 10.05.50 AM.jpeg', NULL, NULL, NULL, '6px', 'dotted', NULL, '11px', '15px', '20px', '23px', '20px', '14px', '27px', '30px', '750px', '250px', 'px', 'px', 'px', 'px', 'content-box', NULL, '#92aa3c', 'groove', '10px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, '#2be37b', NULL, '#22ec30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#fdff8a', '#284ee6', '25px', '8px', '4px', NULL, '12px', 'px', 'uppercase', 'underline', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'background-color', '3s', 'ease-in', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', ''),
(154, 'Flower', '2023-10-02 02:51:03.969224', NULL, NULL, '#b35656', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/test image.jpeg', NULL, NULL, NULL, 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(155, 'Morning theme', '2023-10-02 02:51:03.969224', '#732121', NULL, '#bcdff5', '', NULL, NULL, NULL, 'left', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'overline', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/test image 2.jpeg', NULL, NULL, NULL, '5px', 'solid', NULL, 'px', 'px', '7px', 'px', 'px', 'px', 'px', 'px', '750px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'groove', '7px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, '#27be40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#ae1ac1', '#af2828', '6px', '6px', '4px', NULL, '8px', 'px', 'uppercase', 'underline', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3s', 'ease-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', ''),
(156, 'One More ', '2023-10-02 02:51:03.969224', NULL, NULL, '#e3c863', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/testing.jpeg', 'no-repeat', NULL, NULL, '4px', 'dotted', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, '#df2a2a', 'double', '8px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, '#2724d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#bd4242', '#ec4141', '6px', '8px', '4px', NULL, '10px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3s', 'ease-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7px', ''),
(157, NULL, '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/testproject/images/collge.jpeg', NULL, NULL, NULL, 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(158, 'Test Again ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/displayImage.jpeg', NULL, NULL, NULL, 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(159, 'Christmas theme', '2023-10-02 02:51:03.969224', '#d7da44', NULL, '#ffffff', '', NULL, NULL, NULL, 'left', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'overline', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/tree.jpeg', 'no-repeat', NULL, 'right top', '7px', 'dotted', NULL, '3px', '5px', '5px', '10px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', 'content-box', NULL, '#58a0e4', 'groove', '9px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, '#2f9844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#d06c6c', '#7c1313', '12px', '8px', '19px', NULL, '9px', '9px', 'lowercase', 'line-through', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3s', 'ease-in', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8px', '');
INSERT INTO `themes` (`ID`, `theme_name`, `created_at`, `color`, `font_size`, `background_color`, `background`, `padding`, `margin`, `border`, `text_align`, `display`, `clear`, `position`, `text_shadow`, `text_indent`, `letter_spacing`, `word_spacing`, `line_height`, `text_transform`, `text_decoration`, `font_family`, `font_weight`, `text_overflow`, `white_space`, `text_orientation`, `text_wrap`, `text_justify`, `text_emphasis`, `text_spacing`, `text_shadow_color`, `text_shadow_x`, `text_shadow_y`, `background_image`, `background_repeat`, `background_attachment`, `background_position`, `border_width`, `border_style`, `border_color`, `margin_top`, `margin_right`, `margin_bottom`, `margin_left`, `padding_top`, `padding_right`, `padding_bottom`, `padding_left`, `height`, `width`, `max_height`, `max_width`, `min_height`, `min_width`, `box_sizing`, `outline`, `outline_color`, `outline_style`, `outline_width`, `text_color`, `text_opacity`, `text_shadow_blur`, `text_shadow_spread`, `font_style`, `font_variant`, `font_stretch`, `font_size_adjust`, `font_variant_caps`, `font_variant_numeric`, `font_variant_alternates`, `font_variant_ligatures`, `font_variant_position`, `font_kerning`, `font_language_override`, `font_feature_settings`, `icon_size`, `icon`, `link_color`, `hover`, `visited`, `list_style`, `list_style_type`, `list_style_position`, `grid_template_rows`, `grid_template_columns`, `grid_template_areas`, `grid_template`, `grid_row_gap`, `grid_column_gap`, `grid_gap`, `grid_auto_rows`, `grid_auto_columns`, `grid_auto_flow`, `grid`, `grid_row_start`, `grid_column_start`, `grid_row_end`, `grid_column_end`, `grid_area`, `justify_items`, `align_items`, `justify_content`, `align_content`, `place_items`, `place_content`, `grid_template_rows_mobile`, `grid_template_columns_mobile`, `grid_template_areas_mobile`, `grid_template_mobile`, `grid_row_gap_mobile`, `grid_column_gap_mobile`, `grid_gap_mobile`, `grid_auto_rows_mobile`, `grid_auto_columns_mobile`, `grid_auto_flow_mobile`, `grid_mobile`, `grid_row_start_mobile`, `grid_column_start_mobile`, `grid_row_end_mobile`, `grid_column_end_mobile`, `grid_area_mobile`, `justify_items_mobile`, `align_items_mobile`, `justify_content_mobile`, `align_content_mobile`, `place_items_mobile`, `place_content_mobile`, `float_property`, `tab_background_color`, `tab_border_color`, `tab_border_width`, `tab_padding`, `tab_margin`, `tab_font_color`, `tab_font_size`, `tab_font_weight`, `tab_text_transform`, `tab_text_decoration`, `box_shadow`, `opacity`, `transition_property`, `transition_duration`, `transition_timing_function`, `resize`, `transform`, `transform_origin`, `animation_name`, `animation_duration`, `animation_timing_function`, `animation_delay`, `animation_iteration_count`, `animation_direction`, `border_radius`, `textarea`) VALUES
(161, 'cost', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/picture .jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(162, 'Again Save 2.0', '2023-10-02 02:51:03.969224', '#c74343', NULL, '#fdff8a', '', NULL, NULL, NULL, 'left', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'none', NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'right top', '7px', 'solid', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'ridge', '9px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#c78e8e', '#412a2a', '5px', '6px', '2px', NULL, '10px', '10px', 'uppercase', 'line-through', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '2s', 'ease-in', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5px', ''),
(163, NULL, '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(164, 'Font Size', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/Font.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(165, 'Checking font saving ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/new.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(166, 'heloo ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/again.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(167, 'Testing 21', '2023-10-02 02:51:03.969224', NULL, '15px', '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/newone.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(168, 'testing 22', '2023-10-02 02:51:03.969224', NULL, '15px', '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/acha.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(169, '15 size font testing ', '2023-10-02 02:51:03.969224', NULL, '20px', '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(170, '28 font size', '2023-10-02 02:51:03.969224', NULL, '28px', '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(175, 'Testing font ', '2023-10-02 02:51:03.969224', NULL, 'px', '#fe6262', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, 'Arial, Helvetica, sans-serif', NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(177, 'Font text testing ', '2023-10-02 02:51:03.969224', NULL, 'px', '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, 'Arial, Helvetica, sans-serif', NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/test.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(178, 'Font Script Again ', '2023-10-02 02:51:03.969224', NULL, 'px', '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, 'Arial, Helvetica, sans-serif', NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/theimage .jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(180, 'Rewind ', '2023-10-02 02:51:03.969224', NULL, '37px', '#b73838', '', NULL, NULL, NULL, 'left', '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, 'overline', 'Times New Roman, Times, serif', NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'right top', '6px', 'dotted', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'dashed', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, '#e5e811', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#2b6ef3', '#895858', '4px', '6px', '5px', '#ecdada', 'px', 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3s', 'ease-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(201, 'Text Type testing ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/1234.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(203, 'Text CSS ', '2023-10-02 02:51:03.969224', NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(249, '11pm', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(250, '12pm', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(291, 'Final Testing Text Type', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/12.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(292, 'UPDATE', '2023-11-21 05:57:39.760951', NULL, NULL, '#c44f4f', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/12.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(293, 'Sunday Testing Type ', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(294, 'Testing Text Type saving', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(297, 'Extented Theme', NULL, NULL, NULL, '#cdcbcb', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'right top', '4px', 'dashed', NULL, '10px', '6px', '11px', 'px', '12px', '13px', '19px', '4px', '700px', '400px', 'px', 'px', 'px', 'px', 'border-box', NULL, '#aa7d7d', 'groove', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, NULL, 'px', 'none', 'none', '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3', 'linear', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5px', ''),
(298, 'Not test 2.0', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(299, 'Not test 2.0', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'Select', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(300, '800 Theme ', NULL, NULL, NULL, '#832020', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(301, '801 Theme ', NULL, NULL, NULL, '#832020', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'center center', 'px', 'Select', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(302, '802 Theme ', NULL, NULL, NULL, '#fbdada', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'right top', '3px', 'dotted', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '400px', '300px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, '0px 0px 10px rgba(0, 0, 0, 0.3), 0px 0px 30px rgba(0, 0, 0, 0.2)', NULL, 'all', '3', 'ease-in', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5px', ''),
(304, 'Current ThemeTo be', '2023-10-18 08:38:19.013160', NULL, NULL, 'fbdada', '', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(305, 'Assignment', NULL, NULL, NULL, '#e9e8e8', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/Tree1.jpeg', 'no-repeat', NULL, 'right top', '3px', 'dotted', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'groove', '3px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#dca8a8', NULL, '7px', '4px', '4px', '#8c842c', '16px', 'px', 'uppercase', NULL, '0px 4px 6px rgba(0, 0, 0, 0.1), 0px 2px 4px rgba(0, 0, 0, 0.1)', NULL, 'all', '3', 'linear', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8px', ''),
(306, 'Grey Theme', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/picture .jpeg', 'no-repeat', NULL, 'right top', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'content-box', NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', '4px', '4px', '#3e3d3d', '16px', 'px', 'uppercase', NULL, 'none', NULL, 'all', '3', 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(307, 'Grey Theme 2', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'right top', 'pxpx', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'pxpx', 'pxpx', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', '#0d0d0d', '16px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pxpx', ''),
(308, 'grey theme 5', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpeg', 'no-repeat', NULL, 'right top', '2px', 'groove', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#31a8f2', NULL, '7px', '2px', '2px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5px', ''),
(309, 'grey theme 6', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.avif', 'Select', NULL, 'center center', '3px', 'groove', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, '#77c3e4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5px', ''),
(310, 'Themes if else', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(311, 'Republic day', NULL, NULL, NULL, '#fdf7f7', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/Flag.jpeg', 'no-repeat', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(312, 'Independance day ', NULL, NULL, NULL, '#ede8e8', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/Flag.jpeg', 'no-repeat', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(313, 'Independance 2 day ', NULL, NULL, NULL, '#ede8e8', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/Flag.jpeg', 'no-repeat', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(314, 'grey theme 8', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(315, 'qwet', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(316, 'code 1', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/filler.png', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(317, 'code 2', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(318, NULL, NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/Flag.png', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(319, 'code 4', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(320, 'code 4', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(321, 'code 5', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(322, 'code 6', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', '');
INSERT INTO `themes` (`ID`, `theme_name`, `created_at`, `color`, `font_size`, `background_color`, `background`, `padding`, `margin`, `border`, `text_align`, `display`, `clear`, `position`, `text_shadow`, `text_indent`, `letter_spacing`, `word_spacing`, `line_height`, `text_transform`, `text_decoration`, `font_family`, `font_weight`, `text_overflow`, `white_space`, `text_orientation`, `text_wrap`, `text_justify`, `text_emphasis`, `text_spacing`, `text_shadow_color`, `text_shadow_x`, `text_shadow_y`, `background_image`, `background_repeat`, `background_attachment`, `background_position`, `border_width`, `border_style`, `border_color`, `margin_top`, `margin_right`, `margin_bottom`, `margin_left`, `padding_top`, `padding_right`, `padding_bottom`, `padding_left`, `height`, `width`, `max_height`, `max_width`, `min_height`, `min_width`, `box_sizing`, `outline`, `outline_color`, `outline_style`, `outline_width`, `text_color`, `text_opacity`, `text_shadow_blur`, `text_shadow_spread`, `font_style`, `font_variant`, `font_stretch`, `font_size_adjust`, `font_variant_caps`, `font_variant_numeric`, `font_variant_alternates`, `font_variant_ligatures`, `font_variant_position`, `font_kerning`, `font_language_override`, `font_feature_settings`, `icon_size`, `icon`, `link_color`, `hover`, `visited`, `list_style`, `list_style_type`, `list_style_position`, `grid_template_rows`, `grid_template_columns`, `grid_template_areas`, `grid_template`, `grid_row_gap`, `grid_column_gap`, `grid_gap`, `grid_auto_rows`, `grid_auto_columns`, `grid_auto_flow`, `grid`, `grid_row_start`, `grid_column_start`, `grid_row_end`, `grid_column_end`, `grid_area`, `justify_items`, `align_items`, `justify_content`, `align_content`, `place_items`, `place_content`, `grid_template_rows_mobile`, `grid_template_columns_mobile`, `grid_template_areas_mobile`, `grid_template_mobile`, `grid_row_gap_mobile`, `grid_column_gap_mobile`, `grid_gap_mobile`, `grid_auto_rows_mobile`, `grid_auto_columns_mobile`, `grid_auto_flow_mobile`, `grid_mobile`, `grid_row_start_mobile`, `grid_column_start_mobile`, `grid_row_end_mobile`, `grid_column_end_mobile`, `grid_area_mobile`, `justify_items_mobile`, `align_items_mobile`, `justify_content_mobile`, `align_content_mobile`, `place_items_mobile`, `place_content_mobile`, `float_property`, `tab_background_color`, `tab_border_color`, `tab_border_width`, `tab_padding`, `tab_margin`, `tab_font_color`, `tab_font_size`, `tab_font_weight`, `tab_text_transform`, `tab_text_decoration`, `box_shadow`, `opacity`, `transition_property`, `transition_duration`, `transition_timing_function`, `resize`, `transform`, `transform_origin`, `animation_name`, `animation_duration`, `animation_timing_function`, `animation_delay`, `animation_iteration_count`, `animation_direction`, `border_radius`, `textarea`) VALUES
(323, 'code 7', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(324, 'code 7', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(325, 'code 8', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(326, 'code 8', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.webp', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(327, 'filler', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/collge.jpeg', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(328, 'code 9', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/Flag.jpeg', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(329, 'code 9', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/theimage .jpeg', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(330, 'Model Testing', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.avif', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(331, 'Icon Test 4', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.avif', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(332, 'Icon Test 5', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.avif', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'icon/table.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(333, 'Icon Test 6', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.avif', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(334, 'Icon Test 6', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.avif', 'Select', NULL, 'center center', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', NULL, 'ease', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', ''),
(335, 'Report Theme1 ', NULL, NULL, NULL, '#ecf0f1', '', '8px', '4px', NULL, 'center', 'inline-block', '', 'relative', '1px 1px 2px rgba(0, 0, 0, 0.3)', '5px', '1px', '2px', '1.5', 'uppercase', NULL, NULL, 'bold', NULL, 'nowrap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.avif', 'Select', NULL, 'center center', '1px', 'solid', NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', '', '90px', 'px', 'px', 'px', 'px', 'border-box', NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, 'background-color: #3498db;\r\n  color: #ffffff;\r\n  transform: scale(1.05);', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, '0px 10px 20px rgba(0, 0, 0, 0.2)', NULL, 'all', '3', 'ease-in-out', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4px', ''),
(336, 'Exercise Theme', NULL, NULL, NULL, '#ffffff', '', NULL, NULL, NULL, NULL, '', '', '', NULL, 'px', 'px', 'px', 'px', NULL, NULL, NULL, NULL, NULL, 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/.jpg', 'no-repeat', NULL, 'left top', 'px', NULL, NULL, 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', 'px', NULL, NULL, NULL, 'none', 'px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'icon/.jpg', '#fbab45', NULL, '#fbab45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'row', NULL, NULL, NULL, NULL, NULL, NULL, 'start', 'start', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', 'px', 'px', NULL, 'px', 'px', 'none', NULL, 'none', NULL, 'all', '.3', 'ease-in', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'px', '');

-- --------------------------------------------------------

--
-- Table structure for table `theme_for_report`
--

CREATE TABLE `theme_for_report` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `theme_name` varchar(255) NOT NULL,
  `element_id` int(11) NOT NULL,
  `css_property_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme_for_report`
--

INSERT INTO `theme_for_report` (`id`, `reference_id`, `theme_name`, `element_id`, `css_property_id`, `value`) VALUES
(7, 7, 'Orange Theme', 60, 32, 'display'),
(8, 7, 'Orange Theme', 60, 33, 'repeat(3, 1fr)'),
(9, 7, 'Orange Theme', 60, 34, '11px'),
(10, 7, 'Orange Theme', 60, 35, 'center'),
(11, 7, 'Orange Theme', 60, 36, 'center'),
(12, 7, 'Orange Theme', 60, 1, '#E6E6FA'),
(13, 7, 'Orange Theme', 60, 7, '8px'),
(14, 7, 'Orange Theme', 60, 6, '16px'),
(15, 7, 'Orange Theme', 60, 37, '\'Roboto\', sans-serif'),
(16, 7, 'Orange Theme', 60, 13, '880px'),
(17, 7, 'Orange Theme', 60, 5, '0 auto'),
(18, 7, 'Orange Theme', 115, 12, 'center'),
(19, 7, 'Orange Theme', 115, 38, 'span 3'),
(20, 7, 'Orange Theme', 115, 3, '#4CAF50'),
(21, 7, 'Orange Theme', 115, 2, '24px'),
(22, 7, 'Orange Theme', 61, 13, '850px'),
(23, 7, 'Orange Theme', 61, 39, 'separate'),
(24, 7, 'Orange Theme', 61, 40, '0 8px'),
(25, 7, 'Orange Theme', 61, 41, '16px'),
(26, 7, 'Orange Theme', 61, 1, '#FFF8DC'),
(27, 7, 'Orange Theme', 53, 6, '14px'),
(28, 7, 'Orange Theme', 53, 4, '2px solid #FFD700'),
(29, 7, 'Orange Theme', 53, 1, '#FFA500'),
(30, 7, 'Orange Theme', 53, 3, '#fff'),
(31, 7, 'Orange Theme', 53, 18, 'bold'),
(32, 7, 'Orange Theme', 55, 1, '#FFE4B5'),
(33, 7, 'Orange Theme', 56, 1, '#FFE4B5'),
(34, 7, 'Orange Theme', 57, 1, '#ADD8E6'),
(35, 7, 'Orange Theme', 116, 6, '12px'),
(36, 7, 'Orange Theme', 116, 4, '2px solid #87CEEB'),
(37, 7, 'Orange Theme', 116, 3, '#333'),
(38, 7, 'Orange Theme', 58, 1, '#FFD700'),
(39, 7, 'Orange Theme', 58, 3, '#fff'),
(40, 7, 'Orange Theme', 58, 18, 'bold'),
(42, 42, 'Blue theme', 60, 32, 'display'),
(43, 42, 'Blue theme', 60, 33, 'repeat(3, 1fr)'),
(44, 42, 'Blue theme', 60, 34, '10px'),
(45, 42, 'Blue theme', 60, 35, 'center'),
(46, 42, 'Blue theme', 60, 36, 'center'),
(47, 42, 'Blue theme', 60, 1, '#f5f8fa'),
(48, 42, 'Blue theme', 60, 7, '7px'),
(49, 42, 'Blue theme', 60, 6, '25px'),
(50, 42, 'Blue theme', 60, 37, '\'Helvetica\', sans-serif'),
(51, 42, 'Blue theme', 60, 13, '880px'),
(52, 42, 'Blue theme', 60, 5, '0 auto'),
(53, 42, 'Blue theme', 115, 12, 'center '),
(54, 42, 'Blue theme', 115, 38, 'span 3'),
(55, 42, 'Blue theme', 115, 3, '#4d5253'),
(56, 42, 'Blue theme', 115, 2, '30px'),
(57, 42, 'Blue theme', 61, 13, '100%'),
(58, 42, 'Blue theme', 61, 39, 'collapse'),
(59, 42, 'Blue theme', 61, 40, '0 10px'),
(60, 42, 'Blue theme', 61, 41, '18px'),
(61, 42, 'Blue theme', 61, 1, '#87CEEB'),
(62, 42, 'Blue theme', 53, 6, '20px'),
(63, 42, 'Blue theme', 53, 4, '3px groove #ddd'),
(64, 42, 'Blue theme', 53, 1, '#102b47'),
(65, 42, 'Blue theme', 53, 3, '#fff'),
(66, 42, 'Blue theme', 53, 18, 'bold'),
(67, 42, 'Blue theme', 55, 1, '#edfcff'),
(68, 42, 'Blue theme', 56, 1, '#FFF'),
(69, 42, 'Blue theme', 57, 1, '#ADD8E6'),
(70, 42, 'Blue theme', 116, 6, '20px'),
(71, 42, 'Blue theme', 116, 4, '2px dashed #8cc1ed'),
(72, 42, 'Blue theme', 116, 3, '#4d5253'),
(73, 42, 'Blue theme', 58, 1, '#FFD700'),
(74, 42, 'Blue theme', 58, 3, '#fff'),
(75, 42, 'Blue theme', 58, 18, 'bold'),
(111, 111, 'Black Theme', 60, 32, 'display'),
(112, 111, 'Black Theme', 60, 33, 'repeat(4, 1fr)'),
(113, 111, 'Black Theme', 60, 34, '15px'),
(114, 111, 'Black Theme', 60, 35, 'center'),
(115, 111, 'Black Theme', 60, 36, 'center'),
(116, 111, 'Black Theme', 60, 1, '#828582'),
(117, 111, 'Black Theme', 60, 7, '12px'),
(118, 111, 'Black Theme', 60, 6, '20px'),
(119, 111, 'Black Theme', 60, 37, '\'Roboto\''),
(120, 111, 'Black Theme', 60, 13, '900px'),
(121, 111, 'Black Theme', 60, 5, '20px auto'),
(122, 111, 'Black Theme', 115, 12, 'center'),
(123, 111, 'Black Theme', 115, 38, 'span 4'),
(124, 111, 'Black Theme', 115, 3, '#000000'),
(125, 111, 'Black Theme', 115, 2, '28px'),
(126, 111, 'Black Theme', 61, 13, '850px'),
(127, 111, 'Black Theme', 61, 39, 'separate'),
(128, 111, 'Black Theme', 61, 40, '0 12px'),
(129, 111, 'Black Theme', 61, 41, '20px'),
(130, 111, 'Black Theme', 61, 1, '#fff'),
(131, 111, 'Black Theme', 53, 6, '12px'),
(132, 111, 'Black Theme', 53, 4, '2px dotted white'),
(133, 111, 'Black Theme', 53, 1, '#4c4f4c'),
(137, 111, 'Black Theme', 53, 3, '#fff'),
(138, 111, 'Black Theme', 53, 18, 'bold'),
(139, 111, 'Black Theme', 55, 1, '#f8f8f8'),
(140, 111, 'Black Theme', 56, 1, '#fff'),
(141, 111, 'Black Theme', 57, 1, '#e0e0e0'),
(142, 111, 'Black Theme', 116, 6, '14px'),
(143, 111, 'Black Theme', 116, 4, '2px solid '),
(144, 111, 'Black Theme', 116, 3, '#333'),
(145, 111, 'Black Theme', 58, 1, '#008000'),
(146, 111, 'Black Theme', 58, 3, '#fff'),
(147, 111, 'Black Theme', 58, 18, 'bold'),
(224, 42, 'Blue Theme', 53, 2, '18px'),
(225, 111, 'Black Theme', 53, 2, '25px'),
(782, 0, 'New Theme', 0, 0, ''),
(783, 783, 'New Theme', 60, 32, 'centered'),
(784, 783, 'New Theme', 60, 33, 'repeat(3, 1fr)'),
(785, 783, 'New Theme', 60, 34, '10px'),
(786, 783, 'New Theme', 60, 35, 'center'),
(787, 783, 'New Theme', 60, 36, 'center'),
(788, 783, 'New Theme', 60, 1, '#E6E6FA'),
(789, 783, 'New Theme', 60, 7, '8px'),
(790, 783, 'New Theme', 60, 6, '16px'),
(791, 783, 'New Theme', 60, 37, '\'Roboto\', sans-serif'),
(792, 783, 'New Theme', 60, 13, '880px'),
(793, 783, 'New Theme', 60, 5, '0 auto'),
(794, 783, 'New Theme', 115, 12, 'center'),
(795, 783, 'New Theme', 115, 38, 'span 3'),
(796, 783, 'New Theme', 115, 3, '#4CAF50'),
(797, 783, 'New Theme', 115, 2, '24px'),
(798, 783, 'New Theme', 61, 13, '850px'),
(799, 783, 'New Theme', 61, 39, 'separate'),
(800, 783, 'New Theme', 61, 40, '0 8px'),
(801, 783, 'New Theme', 61, 41, '16px'),
(802, 783, 'New Theme', 61, 1, '#FFF8DC'),
(803, 783, 'New Theme', 53, 6, '14px'),
(804, 783, 'New Theme', 53, 4, '2px solid #FFD700'),
(805, 783, 'New Theme', 53, 1, '#FFA500'),
(806, 783, 'New Theme', 53, 3, '#fff'),
(807, 783, 'New Theme', 53, 18, 'bold'),
(808, 783, 'New Theme', 55, 1, '#FFE4B5'),
(809, 783, 'New Theme', 56, 1, '#FFC0CB'),
(810, 783, 'New Theme', 57, 1, '#ADD8E6'),
(811, 783, 'New Theme', 116, 6, '12px'),
(812, 783, 'New Theme', 116, 4, '2px solid #87CEEB'),
(813, 783, 'New Theme', 116, 3, '#333'),
(814, 783, 'New Theme', 58, 1, '#FFD700'),
(815, 783, 'New Theme', 58, 3, '#fff'),
(816, 783, 'New Theme', 58, 18, ''),
(817, 783, 'New Theme', 53, 2, '12px'),
(818, 783, 'New Theme', 116, 37, '\'Roboto\', sans-serif'),
(819, 783, 'New Theme', 116, 2, '20px'),
(820, 783, 'New Theme', 116, 23, 'italic'),
(821, 783, 'New Theme', 117, 3, '#FF0000'),
(822, 783, 'New Theme', 117, 18, 'bold'),
(823, 783, 'New Theme', 117, 2, '22px'),
(824, 783, 'New Theme', 118, 3, 'red'),
(825, 783, 'New Theme', 118, 18, 'bold'),
(826, 783, 'New Theme', 118, 2, '22px'),
(827, 783, 'New Theme', 119, 2, '22px'),
(828, 783, 'New Theme', 119, 3, 'red'),
(829, 783, 'New Theme', 119, 18, 'bold'),
(830, 783, 'New Theme', 120, 2, '22px'),
(831, 783, 'New Theme', 120, 18, 'bold'),
(832, 0, 'Test 809', 0, 0, ''),
(833, 833, 'Test 809', 60, 32, ''),
(834, 833, 'Test 809', 60, 33, ''),
(835, 833, 'Test 809', 60, 34, ''),
(836, 833, 'Test 809', 60, 35, ''),
(837, 833, 'Test 809', 60, 36, ''),
(838, 833, 'Test 809', 60, 1, '#ffffff'),
(839, 833, 'Test 809', 60, 7, ''),
(840, 833, 'Test 809', 60, 6, ''),
(841, 833, 'Test 809', 60, 37, ''),
(842, 833, 'Test 809', 60, 13, ''),
(843, 833, 'Test 809', 60, 5, ''),
(844, 833, 'Test 809', 115, 12, 'center'),
(845, 833, 'Test 809', 115, 38, ''),
(846, 833, 'Test 809', 115, 3, '#ffffff'),
(847, 833, 'Test 809', 115, 2, '22px'),
(848, 833, 'Test 809', 61, 13, ''),
(849, 833, 'Test 809', 61, 39, 'separate'),
(850, 833, 'Test 809', 61, 40, ''),
(851, 833, 'Test 809', 61, 41, '2px'),
(852, 833, 'Test 809', 61, 1, '#ffffff'),
(853, 833, 'Test 809', 53, 6, ''),
(854, 833, 'Test 809', 53, 4, ''),
(855, 833, 'Test 809', 53, 1, '#f8f1f1'),
(856, 833, 'Test 809', 53, 3, '#000000'),
(857, 833, 'Test 809', 53, 18, 'bold'),
(858, 833, 'Test 809', 55, 1, '#ffffff'),
(859, 833, 'Test 809', 56, 1, '#ffffff'),
(860, 833, 'Test 809', 57, 1, '#f2f2f2'),
(861, 833, 'Test 809', 116, 6, ''),
(862, 833, 'Test 809', 116, 4, ''),
(863, 833, 'Test 809', 116, 3, '#121212'),
(864, 833, 'Test 809', 58, 1, '#000000'),
(865, 833, 'Test 809', 58, 3, '#000000'),
(866, 833, 'Test 809', 58, 18, ''),
(867, 833, 'Test 809', 53, 2, ''),
(868, 833, 'Test 809', 116, 37, ''),
(869, 833, 'Test 809', 116, 2, ''),
(870, 833, 'Test 809', 116, 23, ''),
(871, 833, 'Test 809', 117, 3, '#000000'),
(872, 833, 'Test 809', 117, 18, ''),
(873, 833, 'Test 809', 117, 2, ''),
(874, 833, 'Test 809', 118, 3, '#000000'),
(875, 833, 'Test 809', 118, 18, ''),
(876, 833, 'Test 809', 118, 2, ''),
(877, 833, 'Test 809', 119, 2, ''),
(878, 833, 'Test 809', 119, 3, '#000000'),
(879, 833, 'Test 809', 119, 18, ''),
(880, 833, 'Test 809', 120, 2, ''),
(881, 833, 'Test 809', 120, 18, '');

-- --------------------------------------------------------

--
-- Table structure for table `theme_text_css_properties_value`
--

CREATE TABLE `theme_text_css_properties_value` (
  `id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL,
  `text_type_id` int(11) NOT NULL,
  `text_CSS_Property` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme_text_css_properties_value`
--

INSERT INTO `theme_text_css_properties_value` (`id`, `theme_id`, `text_type_id`, `text_CSS_Property`, `value`, `created_at`, `updated_at`) VALUES
(1, 267, 1, '{\"font_size\":\"20px\",\"color\":\"#fd5858\"}', '{\"font_size\":\"20px\",\"font_color\":\"#fd5858\"}', '2023-10-04 02:32:10', '2023-10-04 02:32:10'),
(2, 268, 1, '{\"font_size\":\"20px\",\"color\":\"#fd5858\"}', '{\"font_size\":\"20px\",\"color\":\"#fd5858\"}', '2023-10-04 03:05:22', '2023-10-04 03:05:22'),
(3, 270, 1, '{\"font_size\":\"20px\",\"color\":\"#fd5858\"}', '{\"font_size\":\"20px\",\"color\":\"#fd5858\"}', '2023-10-04 03:15:25', '2023-10-04 03:15:25'),
(4, 271, 1, '{\"font_size\":\"20px\",\"color\":\"#fd5858\"}', '20px', '2023-10-04 03:32:36', '2023-10-04 03:32:36'),
(5, 272, 1, '{\"font_size\":\"20px\"}', '20px', '2023-10-04 03:44:36', '2023-10-04 03:44:36'),
(6, 272, 1, '{\"color\":\"#fd5858\"}', '#fd5858', '2023-10-04 03:44:36', '2023-10-04 03:44:36'),
(7, 273, 1, '{\"font_size\":\"20px\"}', '20px', '2023-10-04 03:45:50', '2023-10-04 03:45:50'),
(8, 273, 1, '{\"color\":\"#fd5858\"}', '#fd5858', '2023-10-04 03:45:50', '2023-10-04 03:45:50'),
(9, 274, 1, '{\"font_size\":\"20px\"}', '20px', '2023-10-04 03:48:41', '2023-10-04 03:48:41'),
(10, 274, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 03:48:41', '2023-10-04 03:48:41'),
(11, 275, 1, '{\"font_size\":\"20px\"}', '20px', '2023-10-04 04:05:31', '2023-10-04 04:05:31'),
(12, 275, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 04:05:31', '2023-10-04 04:05:31'),
(13, 276, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 04:07:28', '2023-10-04 04:07:28'),
(14, 276, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 04:07:28', '2023-10-04 04:07:28'),
(15, 277, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 04:14:07', '2023-10-04 04:14:07'),
(16, 277, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 04:14:07', '2023-10-04 04:14:07'),
(17, 278, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 04:15:54', '2023-10-04 04:15:54'),
(18, 278, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 04:15:54', '2023-10-04 04:15:54'),
(19, 280, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 04:20:53', '2023-10-04 04:20:53'),
(20, 280, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 04:20:53', '2023-10-04 04:20:53'),
(21, 281, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 04:21:28', '2023-10-04 04:21:28'),
(22, 281, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 04:21:28', '2023-10-04 04:21:28'),
(23, 286, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 08:55:54', '2023-10-04 08:55:54'),
(24, 286, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 08:55:54', '2023-10-04 08:55:54'),
(25, 287, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 09:24:55', '2023-10-04 09:24:55'),
(26, 287, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 09:24:55', '2023-10-04 09:24:55'),
(27, 288, 1, '{\"font_size\":\"22px\"}', '22px', '2023-10-04 09:34:47', '2023-10-04 09:34:47'),
(28, 288, 1, '{\"color\":\"#ea6666\"}', '#ea6666', '2023-10-04 09:34:47', '2023-10-04 09:34:47'),
(29, 289, 1, 'font_size', '22px', '2023-10-04 09:46:21', '2023-10-04 09:46:21'),
(30, 289, 1, 'color', '#ea6666', '2023-10-04 09:46:21', '2023-10-04 09:46:21'),
(31, 290, 1, 'font_size', '22px', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(32, 290, 1, 'color', '#ea6666', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(33, 290, 2, 'color', '#000000', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(34, 290, 3, 'color', '#000000', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(35, 290, 4, 'font_size', '10px', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(36, 290, 4, 'color', '#7b6edd', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(37, 290, 5, 'color', '#000000', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(38, 290, 6, 'font_size', '20px', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(39, 290, 6, 'color', '#000000', '2023-10-04 09:55:13', '2023-10-04 09:55:13'),
(40, 291, 1, 'font_size', '20px', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(41, 291, 1, 'color', '#d73c3c', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(42, 291, 2, 'font_size', '18px', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(43, 291, 2, 'color', '#5d90c6', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(44, 291, 3, 'font_size', '16px', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(45, 291, 3, 'color', '#a455aa', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(46, 291, 4, 'font_size', '14px', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(47, 291, 4, 'color', '#dde665', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(48, 291, 5, 'font_size', '12px', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(49, 291, 5, 'color', '#7af092', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(50, 291, 6, 'font_size', '10px', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(51, 291, 6, 'color', '#64beaf', '2023-10-04 10:08:06', '2023-10-04 10:08:06'),
(52, 292, 1, 'font_size', '20px', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(53, 292, 1, 'color', '#d73c3c', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(54, 292, 2, 'font_size', '18px', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(55, 292, 2, 'color', '#5d90c6', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(56, 292, 3, 'font_size', '16px', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(57, 292, 3, 'color', '#a455aa', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(58, 292, 4, 'font_size', '14px', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(59, 292, 4, 'color', '#dde665', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(60, 292, 5, 'font_size', '12px', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(61, 292, 5, 'color', '#7af092', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(62, 292, 6, 'font_size', '10px', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(63, 292, 6, 'color', '#64beaf', '2023-10-04 10:13:46', '2023-10-04 10:13:46'),
(64, 293, 1, 'font_size', '25', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(65, 293, 1, 'color', '#6d1c1c', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(66, 293, 2, 'font_size', '18', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(67, 293, 2, 'color', '#247a3a', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(68, 293, 3, 'color', '#000000', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(69, 293, 4, 'color', '#000000', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(70, 293, 5, 'color', '#000000', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(71, 293, 6, 'color', '#000000', '2023-10-08 09:34:25', '2023-10-08 09:34:25'),
(72, 294, 1, 'font_size', '25', '2023-10-09 05:45:59', '2023-10-09 05:45:59'),
(73, 294, 1, 'color', '#984343', '2023-10-09 05:45:59', '2023-10-09 05:45:59'),
(74, 296, 1, 'font_size', '25', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(75, 296, 1, 'color', '#984343', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(76, 296, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(77, 296, 1, 'text_align', 'center', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(78, 296, 1, 'text_decoration', 'overline', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(79, 296, 2, 'font_size', '18', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(80, 296, 2, 'color', '#35879c', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(81, 296, 2, 'font_family', 'Courier New, Courier, monospace', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(82, 296, 2, 'text_align', 'left', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(83, 296, 2, 'text_decoration', 'underline', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(84, 296, 3, 'font_size', '16', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(85, 296, 3, 'color', '#8a4ec6', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(86, 296, 3, 'font_family', 'Georgia, serif', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(87, 296, 3, 'text_align', 'justify', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(88, 296, 3, 'text_decoration', 'none', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(89, 296, 4, 'font_size', '12', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(90, 296, 4, 'color', '#5e4040', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(91, 296, 4, 'font_family', 'Georgia, serif', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(92, 296, 4, 'text_align', 'left', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(93, 296, 4, 'text_decoration', 'line-through', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(94, 296, 5, 'color', '#3bce54', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(95, 296, 5, 'font_family', 'Verdana, Geneva, sans-serif', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(96, 296, 5, 'text_align', 'right', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(97, 296, 5, 'text_decoration', 'underline', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(98, 296, 6, 'color', '#000000', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(99, 296, 6, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-09 06:02:38', '2023-10-09 06:02:38'),
(100, 297, 1, 'font_size', '25', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(101, 297, 1, 'color', '#ca6868', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(102, 297, 1, 'font_family', 'Courier New, Courier, monospace', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(103, 297, 1, 'text_align', 'center', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(104, 297, 1, 'text_decoration', 'overline', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(105, 297, 2, 'font_size', '18', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(106, 297, 2, 'color', '#9b7878', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(107, 297, 2, 'font_family', 'Georgia, serif', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(108, 297, 2, 'text_align', 'left', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(109, 297, 2, 'text_decoration', 'underline', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(110, 297, 3, 'font_size', '16', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(111, 297, 3, 'color', '#000000', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(112, 297, 3, 'font_family', 'Verdana, Geneva, sans-serif', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(113, 297, 3, 'text_align', 'center', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(114, 297, 3, 'text_decoration', 'overline', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(115, 297, 4, 'font_size', '20', '2023-10-17 09:58:25', '2023-10-10 00:29:27'),
(116, 297, 4, 'color', '#913030', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(117, 297, 4, 'font_family', 'Verdana, Geneva, sans-serif', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(118, 297, 4, 'text_align', 'center', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(119, 297, 4, 'text_decoration', 'underline', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(120, 297, 5, 'font_size', '12', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(121, 297, 5, 'color', '#fe5d5d', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(122, 297, 5, 'font_family', 'Courier New, Courier, monospace', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(123, 297, 5, 'text_align', 'right', '2023-10-10 00:29:27', '2023-10-10 00:29:27'),
(124, 299, 1, 'font_size', '20', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(125, 299, 1, 'color', '#664242', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(126, 299, 1, 'font_family', 'Verdana, Geneva, sans-serif', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(127, 299, 1, 'text_align', 'center', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(128, 299, 1, 'text_decoration', 'underline', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(129, 299, 2, 'font_size', '18', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(130, 299, 2, 'color', '#000000', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(131, 299, 2, 'font_family', 'Courier New, Courier, monospace', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(132, 299, 2, 'text_align', 'center', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(133, 299, 2, 'text_decoration', 'underline', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(134, 299, 3, 'font_size', '16', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(135, 299, 3, 'color', '#d54848', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(136, 299, 3, 'font_family', 'Courier New, Courier, monospace', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(137, 299, 3, 'text_align', 'center', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(138, 299, 3, 'text_decoration', 'underline', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(139, 299, 4, 'font_size', '20', '2023-10-17 09:58:16', '2023-10-10 02:07:39'),
(140, 299, 4, 'color', '#5a7ac4', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(141, 299, 4, 'font_family', 'Courier New, Courier, monospace', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(142, 299, 4, 'text_align', 'right', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(143, 299, 4, 'text_decoration', 'overline', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(144, 299, 5, 'font_size', '12', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(145, 299, 5, 'color', '#61ca44', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(146, 299, 5, 'font_family', 'Courier New, Courier, monospace', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(147, 299, 5, 'text_align', 'right', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(148, 299, 5, 'text_decoration', 'underline', '2023-10-10 02:07:39', '2023-10-10 02:07:39'),
(149, 300, 1, 'font_size', '20', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(150, 300, 1, 'color', '#ebe5e5', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(151, 300, 1, 'font_family', 'Courier New, Courier, monospace', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(152, 300, 1, 'text_align', 'center', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(153, 300, 1, 'text_decoration', 'underline', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(154, 300, 2, 'font_size', '18', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(155, 300, 2, 'color', '#e1f547', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(156, 300, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(157, 300, 2, 'text_align', 'center', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(158, 300, 3, 'color', '#000000', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(159, 300, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(160, 300, 4, 'font_size', '15', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(161, 300, 4, 'color', '#b0a6a6', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(162, 300, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(163, 300, 5, 'color', '#000000', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(164, 300, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:19:02', '2023-10-17 03:19:02'),
(165, 301, 1, 'font_size', '12', '2023-10-17 12:07:29', '2023-10-17 03:24:28'),
(166, 301, 1, 'color', '#ebe5e5', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(167, 301, 1, 'font_family', 'Courier New, Courier, monospace', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(168, 301, 1, 'text_align', 'center', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(169, 301, 1, 'text_decoration', 'underline', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(170, 301, 2, 'font_size', '18', '2023-10-17 12:07:40', '2023-10-17 03:24:28'),
(171, 301, 2, 'color', '#e1f547', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(172, 301, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(173, 301, 2, 'text_align', 'center', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(174, 301, 3, 'color', '#000000', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(175, 301, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(176, 301, 4, 'font_size', '15', '2023-10-17 12:07:46', '2023-10-17 03:24:28'),
(177, 301, 4, 'color', 'white', '2023-10-17 11:34:19', '2023-10-17 03:24:28'),
(178, 301, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(179, 301, 5, 'color', '#000000', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(180, 301, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 03:24:28', '2023-10-17 03:24:28'),
(181, 302, 1, 'font_size', '30', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(182, 302, 1, 'color', '#ce5555', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(183, 302, 1, 'font_family', 'Alumni Sans', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(184, 302, 1, 'text_align', 'center', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(185, 302, 1, 'text_decoration', 'overline', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(186, 303, 1, 'font_size', '30', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(187, 303, 1, 'color', '#ce5555', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(188, 303, 1, 'font_family', 'Alumni Sans', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(189, 303, 1, 'text_align', 'center', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(190, 303, 1, 'text_decoration', 'overline', '2023-10-17 08:47:35', '2023-10-17 08:47:35'),
(191, 304, 1, 'font_size', '30', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(192, 304, 1, 'color', '#ce5555', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(193, 304, 1, 'font_family', 'Alumni Sans', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(194, 304, 1, 'text_align', 'center', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(195, 304, 1, 'text_decoration', 'overline', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(196, 304, 2, 'color', '#a65454', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(197, 304, 2, 'font_family', 'Annie Use Your Telescope', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(198, 304, 2, 'text_align', 'center', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(199, 304, 2, 'text_decoration', 'underline', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(200, 304, 3, 'color', '#000000', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(201, 304, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(202, 304, 4, 'font_size', '12', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(203, 304, 4, 'color', '#000000', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(204, 304, 4, 'font_family', 'Courier New, Courier, monospace', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(205, 304, 4, 'text_align', 'left', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(206, 304, 4, 'text_decoration', 'none', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(207, 304, 5, 'font_size', '14', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(208, 304, 5, 'color', '#000000', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(209, 304, 5, 'font_family', 'Times New Roman, Times, serif', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(210, 304, 5, 'text_decoration', 'line-through', '2023-10-17 08:48:28', '2023-10-17 08:48:28'),
(211, 305, 1, 'font_size', '30', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(212, 305, 1, 'color', '#5b9c40', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(213, 305, 1, 'font_family', 'Allerta', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(214, 305, 1, 'text_align', 'center', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(215, 305, 1, 'text_decoration', 'overline', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(216, 305, 2, 'font_size', '18', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(217, 305, 2, 'color', '#64df62', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(218, 305, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(219, 305, 2, 'text_align', 'center', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(220, 305, 2, 'text_decoration', 'overline', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(221, 305, 3, 'color', '#000000', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(222, 305, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(223, 305, 4, 'font_size', '12', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(224, 305, 4, 'color', '#3940a2', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(225, 305, 4, 'font_family', 'Georgia, serif', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(226, 305, 5, 'color', '#000000', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(227, 305, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 00:18:11', '2023-12-10 00:18:11'),
(228, 306, 1, 'font_size', '30', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(229, 306, 1, 'color', '#949494', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(230, 306, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(231, 306, 2, 'font_size', '25', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(232, 306, 2, 'color', '#ec4b4b', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(233, 306, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(234, 306, 3, 'color', '#000000', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(235, 306, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(236, 306, 4, 'font_size', '15', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(237, 306, 4, 'color', '#cfcfcf', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(238, 306, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(239, 306, 5, 'color', '#000000', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(240, 306, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 02:49:30', '2023-12-10 02:49:30'),
(241, 307, 1, 'color', '#858585', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(242, 307, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(243, 307, 2, 'color', '#e41111', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(244, 307, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(245, 307, 3, 'color', '#000000', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(246, 307, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(247, 307, 4, 'font_size', '15', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(248, 307, 4, 'color', '#c9c9c9', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(249, 307, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(250, 307, 5, 'font_size', '14', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(251, 307, 5, 'color', '#f52424', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(252, 307, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(253, 307, 5, 'text_decoration', 'overline', '2023-12-10 05:51:20', '2023-12-10 05:51:20'),
(254, 308, 1, 'font_size', '30', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(255, 308, 1, 'color', '#707070', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(256, 308, 1, 'font_family', 'Roboto', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(257, 308, 2, 'font_size', '28', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(258, 308, 2, 'color', '#616161', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(259, 308, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(260, 308, 2, 'text_align', 'center', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(261, 308, 3, 'font_size', '20', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(262, 308, 3, 'color', '#636363', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(263, 308, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 06:16:33', '2023-12-10 06:16:33'),
(264, 308, 3, 'text_align', 'center', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(265, 308, 4, 'font_size', '14', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(266, 308, 4, 'color', '#b5b5b5', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(267, 308, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(268, 308, 5, 'font_size', '12', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(269, 308, 5, 'color', '#f91010', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(270, 308, 5, 'font_family', 'Verdana, Geneva, sans-serif', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(271, 308, 5, 'text_decoration', 'overline', '2023-12-10 06:16:34', '2023-12-10 06:16:34'),
(272, 309, 1, 'font_size', '32', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(273, 309, 1, 'color', '#767474', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(274, 309, 1, 'font_family', 'Roboto', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(275, 309, 2, 'font_size', '29', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(276, 309, 2, 'color', '#767474', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(277, 309, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(278, 309, 2, 'text_align', 'center', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(279, 309, 3, 'font_size', '25', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(280, 309, 3, 'color', '#767474', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(281, 309, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(282, 309, 3, 'text_align', 'center', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(283, 309, 4, 'font_size', '18', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(284, 309, 4, 'color', '#767474', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(285, 309, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(286, 309, 5, 'font_size', '12', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(287, 309, 5, 'color', '#fd2121', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(288, 309, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(289, 309, 5, 'text_decoration', 'overline', '2023-12-11 05:06:41', '2023-12-11 05:06:41'),
(290, 310, 1, 'color', '#000000', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(291, 310, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(292, 310, 2, 'color', '#000000', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(293, 310, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(294, 310, 3, 'color', '#000000', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(295, 310, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(296, 310, 4, 'color', '#000000', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(297, 310, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(298, 310, 5, 'color', '#000000', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(299, 310, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:02:58', '2023-12-12 00:02:58'),
(300, 311, 1, 'color', '#000000', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(301, 311, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(302, 311, 2, 'color', '#000000', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(303, 311, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(304, 311, 3, 'color', '#000000', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(305, 311, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(306, 311, 4, 'color', '#000000', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(307, 311, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(308, 311, 5, 'color', '#000000', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(309, 311, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:06:05', '2023-12-12 00:06:05'),
(310, 312, 1, 'color', '#000000', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(311, 312, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(312, 312, 2, 'color', '#000000', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(313, 312, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(314, 312, 3, 'color', '#000000', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(315, 312, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(316, 312, 4, 'color', '#000000', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(317, 312, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(318, 312, 5, 'color', '#000000', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(319, 312, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:09', '2023-12-12 00:07:09'),
(320, 313, 1, 'color', '#000000', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(321, 313, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(322, 313, 2, 'color', '#000000', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(323, 313, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(324, 313, 3, 'color', '#000000', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(325, 313, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(326, 313, 4, 'color', '#000000', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(327, 313, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(328, 313, 5, 'color', '#000000', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(329, 313, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:07:52', '2023-12-12 00:07:52'),
(330, 314, 1, 'color', '#000000', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(331, 314, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(332, 314, 2, 'color', '#000000', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(333, 314, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(334, 314, 3, 'color', '#000000', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(335, 314, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(336, 314, 4, 'color', '#000000', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(337, 314, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(338, 314, 5, 'color', '#000000', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(339, 314, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 00:34:33', '2023-12-12 00:34:33'),
(340, 315, 1, 'color', '#000000', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(341, 315, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(342, 315, 2, 'color', '#000000', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(343, 315, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(344, 315, 3, 'color', '#000000', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(345, 315, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(346, 315, 4, 'color', '#000000', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(347, 315, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(348, 315, 5, 'color', '#000000', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(349, 315, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:37:21', '2023-12-12 05:37:21'),
(350, 316, 1, 'color', '#000000', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(351, 316, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(352, 316, 2, 'color', '#000000', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(353, 316, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(354, 316, 3, 'color', '#000000', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(355, 316, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(356, 316, 4, 'color', '#000000', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(357, 316, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(358, 316, 5, 'color', '#000000', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(359, 316, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:02', '2023-12-12 05:51:02'),
(360, 317, 1, 'color', '#000000', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(361, 317, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(362, 317, 2, 'color', '#000000', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(363, 317, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(364, 317, 3, 'color', '#000000', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(365, 317, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(366, 317, 4, 'color', '#000000', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(367, 317, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(368, 317, 5, 'color', '#000000', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(369, 317, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:51:47', '2023-12-12 05:51:47'),
(370, 318, 1, 'color', '#000000', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(371, 318, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(372, 318, 2, 'color', '#000000', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(373, 318, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(374, 318, 3, 'color', '#000000', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(375, 318, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(376, 318, 4, 'color', '#000000', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(377, 318, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(378, 318, 5, 'color', '#000000', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(379, 318, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 05:52:42', '2023-12-12 05:52:42'),
(380, 319, 1, 'color', '#000000', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(381, 319, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(382, 319, 2, 'color', '#000000', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(383, 319, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(384, 319, 3, 'color', '#000000', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(385, 319, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(386, 319, 4, 'color', '#000000', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(387, 319, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(388, 319, 5, 'color', '#000000', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(389, 319, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:14:38', '2023-12-12 06:14:38'),
(390, 320, 1, 'color', '#000000', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(391, 320, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(392, 320, 2, 'color', '#000000', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(393, 320, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(394, 320, 3, 'color', '#000000', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(395, 320, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(396, 320, 4, 'color', '#000000', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(397, 320, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(398, 320, 5, 'color', '#000000', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(399, 320, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:15:21', '2023-12-12 06:15:21'),
(400, 321, 1, 'color', '#000000', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(401, 321, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(402, 321, 2, 'color', '#000000', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(403, 321, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(404, 321, 3, 'color', '#000000', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(405, 321, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(406, 321, 4, 'color', '#000000', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(407, 321, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(408, 321, 5, 'color', '#000000', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(409, 321, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:52:21', '2023-12-12 06:52:21'),
(410, 322, 1, 'color', '#000000', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(411, 322, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(412, 322, 2, 'color', '#000000', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(413, 322, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(414, 322, 3, 'color', '#000000', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(415, 322, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(416, 322, 4, 'color', '#000000', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(417, 322, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(418, 322, 5, 'color', '#000000', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(419, 322, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:54:53', '2023-12-12 06:54:53'),
(420, 323, 1, 'color', '#000000', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(421, 323, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(422, 323, 2, 'color', '#000000', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(423, 323, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(424, 323, 3, 'color', '#000000', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(425, 323, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(426, 323, 4, 'color', '#000000', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(427, 323, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(428, 323, 5, 'color', '#000000', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(429, 323, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:55:37', '2023-12-12 06:55:37'),
(430, 324, 1, 'color', '#000000', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(431, 324, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(432, 324, 2, 'color', '#000000', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(433, 324, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(434, 324, 3, 'color', '#000000', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(435, 324, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(436, 324, 4, 'color', '#000000', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(437, 324, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(438, 324, 5, 'color', '#000000', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(439, 324, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 06:59:52', '2023-12-12 06:59:52'),
(440, 325, 1, 'color', '#000000', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(441, 325, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(442, 325, 2, 'color', '#000000', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(443, 325, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(444, 325, 3, 'color', '#000000', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(445, 325, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(446, 325, 4, 'color', '#000000', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(447, 325, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(448, 325, 5, 'color', '#000000', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(449, 325, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:00:23', '2023-12-12 07:00:23'),
(450, 326, 1, 'color', '#000000', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(451, 326, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(452, 326, 2, 'color', '#000000', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(453, 326, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(454, 326, 3, 'color', '#000000', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(455, 326, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(456, 326, 4, 'color', '#000000', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(457, 326, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(458, 326, 5, 'color', '#000000', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(459, 326, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:01:32', '2023-12-12 07:01:32'),
(460, 327, 1, 'color', '#000000', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(461, 327, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(462, 327, 2, 'color', '#000000', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(463, 327, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(464, 327, 3, 'color', '#000000', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(465, 327, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(466, 327, 4, 'color', '#000000', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(467, 327, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(468, 327, 5, 'color', '#000000', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(469, 327, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-12 07:08:39', '2023-12-12 07:08:39'),
(470, 328, 1, 'color', '#000000', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(471, 328, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(472, 328, 2, 'color', '#000000', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(473, 328, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(474, 328, 3, 'color', '#000000', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(475, 328, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(476, 328, 4, 'color', '#000000', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(477, 328, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(478, 328, 5, 'color', '#000000', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(479, 328, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:14', '2023-12-13 00:22:14'),
(480, 329, 1, 'color', '#000000', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(481, 329, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(482, 329, 2, 'color', '#000000', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(483, 329, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(484, 329, 3, 'color', '#000000', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(485, 329, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(486, 329, 4, 'color', '#000000', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(487, 329, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(488, 329, 5, 'color', '#000000', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(489, 329, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 00:22:37', '2023-12-13 00:22:37'),
(490, 330, 1, 'color', 'red', '2024-01-15 05:15:37', '2023-12-13 03:26:08'),
(491, 330, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(492, 330, 2, 'color', '#000000', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(493, 330, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(494, 330, 3, 'color', '#000000', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(495, 330, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(496, 330, 4, 'color', '#000000', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(497, 330, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(498, 330, 5, 'color', '#000000', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(499, 330, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:26:08', '2023-12-13 03:26:08'),
(500, 331, 1, 'color', '#000000', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(501, 331, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(502, 331, 2, 'color', '#000000', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(503, 331, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(504, 331, 3, 'color', '#000000', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(505, 331, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(506, 331, 4, 'color', '#000000', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(507, 331, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(508, 331, 5, 'color', '#000000', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(509, 331, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:53:32', '2023-12-13 03:53:32'),
(510, 332, 1, 'color', '#000000', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(511, 332, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(512, 332, 2, 'color', '#000000', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(513, 332, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(514, 332, 3, 'color', '#000000', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(515, 332, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(516, 332, 4, 'color', '#000000', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(517, 332, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(518, 332, 5, 'color', '#000000', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(519, 332, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:54:11', '2023-12-13 03:54:11'),
(520, 333, 1, 'color', '#000000', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(521, 333, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(522, 333, 2, 'color', '#000000', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(523, 333, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(524, 333, 3, 'color', '#000000', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(525, 333, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(526, 333, 4, 'color', '#000000', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(527, 333, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(528, 333, 5, 'color', '#000000', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(529, 333, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 03:58:39', '2023-12-13 03:58:39'),
(530, 334, 1, 'color', '#000000', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(531, 334, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(532, 334, 2, 'color', '#000000', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(533, 334, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(534, 334, 3, 'color', '#000000', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(535, 334, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(536, 334, 4, 'color', '#000000', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(537, 334, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(538, 334, 5, 'color', '#000000', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(539, 334, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-13 04:00:53', '2023-12-13 04:00:53'),
(540, 335, 1, 'color', '#000000', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(541, 335, 1, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(542, 335, 2, 'color', '#000000', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(543, 335, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(544, 335, 3, 'color', '#000000', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(545, 335, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(546, 335, 4, 'font_size', '14', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(547, 335, 4, 'color', '#2c3e50', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(548, 335, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(549, 335, 4, 'text_align', 'center', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(550, 335, 5, 'color', '#000000', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(551, 335, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-14 07:29:13', '2023-12-14 07:29:13'),
(552, 336, 1, 'color', '#0000ff', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(553, 336, 1, 'font_family', 'Georgia, serif', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(554, 336, 1, 'text_align', 'center', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(555, 336, 2, 'color', '#000000', '2023-12-30 03:47:48', '2023-12-30 03:47:48');
INSERT INTO `theme_text_css_properties_value` (`id`, `theme_id`, `text_type_id`, `text_CSS_Property`, `value`, `created_at`, `updated_at`) VALUES
(556, 336, 2, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(557, 336, 3, 'color', '#000000', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(558, 336, 3, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(559, 336, 4, 'color', '#000000', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(560, 336, 4, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(561, 336, 5, 'color', '#000000', '2023-12-30 03:47:48', '2023-12-30 03:47:48'),
(562, 336, 5, 'font_family', 'Arial, Helvetica, sans-serif', '2023-12-30 03:47:48', '2023-12-30 03:47:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_forms`
--
ALTER TABLE `application_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_name` (`course_name`) USING BTREE,
  ADD KEY `course_link` (`course_link`) USING BTREE,
  ADD KEY `course_type_id` (`course_type_id`) USING BTREE,
  ADD KEY `department_name` (`department_id`) USING BTREE;

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_type` (`course_type`);

--
-- Indexes for table `css_properties`
--
ALTER TABLE `css_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_name` (`property_name`),
  ADD KEY `property_value` (`property_value`);

--
-- Indexes for table `current_theme`
--
ALTER TABLE `current_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page_properties`
--
ALTER TABLE `custom_page_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_code` (`department_code`) USING BTREE,
  ADD KEY `department_name` (`department_name`) USING BTREE,
  ADD KEY `department_desc` (`department_desc`) USING BTREE;

--
-- Indexes for table `effects`
--
ALTER TABLE `effects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `effect_trigger`
--
ALTER TABLE `effect_trigger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `element_css_properties`
--
ALTER TABLE `element_css_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_element_ibfk_1` (`element_id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `css_properties_id` (`css_properties_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculty_name` (`faculty_name`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `course_id` (`course_id`) USING BTREE,
  ADD KEY `address` (`address`) USING BTREE,
  ADD KEY `email` (`email`) USING BTREE,
  ADD KEY `phone` (`phone`),
  ADD KEY `faculty_ibfk_4` (`theme_id`);

--
-- Indexes for table `faculty_column_theme_mapping`
--
ALTER TABLE `faculty_column_theme_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_column_theme_mapping_ibfk_1` (`theme_ID`);

--
-- Indexes for table `faculty_course_type`
--
ALTER TABLE `faculty_course_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `course_type_id` (`course_type_id`);

--
-- Indexes for table `faculty_theme_mapping`
--
ALTER TABLE `faculty_theme_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `theme_ID` (`theme_ID`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`FORM_ID`),
  ADD KEY `form_type` (`form_type`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `form_element`
--
ALTER TABLE `form_element`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `element_name` (`element_name`);

--
-- Indexes for table `form_element_css_properties`
--
ALTER TABLE `form_element_css_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `css_properties_id` (`css_properties_id`);

--
-- Indexes for table `form_element_css_properties_theme_mapping`
--
ALTER TABLE `form_element_css_properties_theme_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `value` (`value`),
  ADD KEY `theme_ID` (`theme_ID`),
  ADD KEY `form_element_css_properties_id` (`form_element_css_properties_id`);

--
-- Indexes for table `form_element_theme_mapping`
--
ALTER TABLE `form_element_theme_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`FIELD_ID`),
  ADD KEY `FORM_ID` (`FORM_ID`),
  ADD KEY `table_column_id` (`table_column_id`),
  ADD KEY `table_column_id_2` (`table_column_id`);

--
-- Indexes for table `form_theme`
--
ALTER TABLE `form_theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_ID_2` (`theme_ID`),
  ADD KEY `element` (`element`),
  ADD KEY `element_2` (`element`),
  ADD KEY `property` (`property`),
  ADD KEY `element_id` (`element_id`);

--
-- Indexes for table `form_theme_mapping`
--
ALTER TABLE `form_theme_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `theme_ID` (`theme_ID`),
  ADD KEY `theme_name` (`theme_name`);

--
-- Indexes for table `night_time_settings`
--
ALTER TABLE `night_time_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_element_css_set`
--
ALTER TABLE `report_element_css_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_theme`
--
ALTER TABLE `report_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_theme_mapping`
--
ALTER TABLE `report_theme_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_trigger_mapping`
--
ALTER TABLE `report_trigger_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `script_code`
--
ALTER TABLE `script_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_theme`
--
ALTER TABLE `selected_theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selected_theme_ID` (`theme_ID`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_information_ibfk_1` (`course_id`),
  ADD KEY `student_information_ibfk_2` (`course_type_id`),
  ADD KEY `student_information_ibfk_3` (`department_id`),
  ADD KEY `student_information_ibfk_4` (`theme_ID`);

--
-- Indexes for table `table_theme`
--
ALTER TABLE `table_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_css_properties`
--
ALTER TABLE `text_css_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_type`
--
ALTER TABLE `text_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `theme_name` (`theme_name`) USING BTREE;

--
-- Indexes for table `theme_for_report`
--
ALTER TABLE `theme_for_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `css_property_id` (`css_property_id`),
  ADD KEY `element_css_properties_ibfk_9` (`element_id`);

--
-- Indexes for table `theme_text_css_properties_value`
--
ALTER TABLE `theme_text_css_properties_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `text_type_id` (`text_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_forms`
--
ALTER TABLE `application_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `course_type`
--
ALTER TABLE `course_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `css_properties`
--
ALTER TABLE `css_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `current_theme`
--
ALTER TABLE `current_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_page_properties`
--
ALTER TABLE `custom_page_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `effects`
--
ALTER TABLE `effects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT for table `effect_trigger`
--
ALTER TABLE `effect_trigger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `element_css_properties`
--
ALTER TABLE `element_css_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `faculty_column_theme_mapping`
--
ALTER TABLE `faculty_column_theme_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty_course_type`
--
ALTER TABLE `faculty_course_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `faculty_theme_mapping`
--
ALTER TABLE `faculty_theme_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `FORM_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_element`
--
ALTER TABLE `form_element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `form_element_css_properties`
--
ALTER TABLE `form_element_css_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `form_element_css_properties_theme_mapping`
--
ALTER TABLE `form_element_css_properties_theme_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7361;

--
-- AUTO_INCREMENT for table `form_element_theme_mapping`
--
ALTER TABLE `form_element_theme_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `FIELD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `form_theme`
--
ALTER TABLE `form_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `form_theme_mapping`
--
ALTER TABLE `form_theme_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `night_time_settings`
--
ALTER TABLE `night_time_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `report_element_css_set`
--
ALTER TABLE `report_element_css_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `report_theme`
--
ALTER TABLE `report_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `report_theme_mapping`
--
ALTER TABLE `report_theme_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report_trigger_mapping`
--
ALTER TABLE `report_trigger_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `script_code`
--
ALTER TABLE `script_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `selected_theme`
--
ALTER TABLE `selected_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_theme`
--
ALTER TABLE `table_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `text_css_properties`
--
ALTER TABLE `text_css_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `text_type`
--
ALTER TABLE `text_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `theme_for_report`
--
ALTER TABLE `theme_for_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=882;

--
-- AUTO_INCREMENT for table `theme_text_css_properties_value`
--
ALTER TABLE `theme_text_css_properties_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`course_type_id`) REFERENCES `course_type` (`id`),
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `element_css_properties`
--
ALTER TABLE `element_css_properties`
  ADD CONSTRAINT `element_css_properties_ibfk_1` FOREIGN KEY (`css_properties_id`) REFERENCES `css_properties` (`id`),
  ADD CONSTRAINT `element_css_properties_ibfk_2` FOREIGN KEY (`element_id`) REFERENCES `form_element` (`id`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `faculty_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `faculty_ibfk_4` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`ID`);

--
-- Constraints for table `faculty_column_theme_mapping`
--
ALTER TABLE `faculty_column_theme_mapping`
  ADD CONSTRAINT `faculty_column_theme_mapping_ibfk_1` FOREIGN KEY (`theme_ID`) REFERENCES `themes` (`ID`);

--
-- Constraints for table `faculty_course_type`
--
ALTER TABLE `faculty_course_type`
  ADD CONSTRAINT `course_type_ibfk_1` FOREIGN KEY (`course_type_id`) REFERENCES `course_type` (`id`),
  ADD CONSTRAINT `courses_type_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `faculty_theme_mapping`
--
ALTER TABLE `faculty_theme_mapping`
  ADD CONSTRAINT `faculty_column_theme_mapping_ibfk_2` FOREIGN KEY (`theme_ID`) REFERENCES `themes` (`ID`);

--
-- Constraints for table `form_element_css_properties`
--
ALTER TABLE `form_element_css_properties`
  ADD CONSTRAINT `form_element_css_properties_ibfk_1` FOREIGN KEY (`css_properties_id`) REFERENCES `css_properties` (`id`),
  ADD CONSTRAINT `form_element_css_properties_ibfk_2` FOREIGN KEY (`element_id`) REFERENCES `form_element` (`id`);

--
-- Constraints for table `form_element_css_properties_theme_mapping`
--
ALTER TABLE `form_element_css_properties_theme_mapping`
  ADD CONSTRAINT `form_element_css_properties_theme_mapping_ibfk_1` FOREIGN KEY (`form_element_css_properties_id`) REFERENCES `form_element_css_properties` (`id`);

--
-- Constraints for table `form_theme`
--
ALTER TABLE `form_theme`
  ADD CONSTRAINT `form_theme_ibfk_1` FOREIGN KEY (`element_id`) REFERENCES `form_element` (`id`),
  ADD CONSTRAINT `theme_ID_ibfk_23` FOREIGN KEY (`theme_ID`) REFERENCES `themes` (`ID`);

--
-- Constraints for table `form_theme_mapping`
--
ALTER TABLE `form_theme_mapping`
  ADD CONSTRAINT `form_theme_mapping_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `application_forms` (`id`),
  ADD CONSTRAINT `form_theme_mapping_ibfk_2` FOREIGN KEY (`theme_ID`) REFERENCES `themes` (`ID`);

--
-- Constraints for table `selected_theme`
--
ALTER TABLE `selected_theme`
  ADD CONSTRAINT `selected_theme_ibfk_1` FOREIGN KEY (`theme_ID`) REFERENCES `themes` (`ID`);

--
-- Constraints for table `student_information`
--
ALTER TABLE `student_information`
  ADD CONSTRAINT `student_information_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `student_information_ibfk_2` FOREIGN KEY (`course_type_id`) REFERENCES `course_type` (`id`),
  ADD CONSTRAINT `student_information_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `student_information_ibfk_4` FOREIGN KEY (`theme_ID`) REFERENCES `themes` (`ID`);

--
-- Constraints for table `theme_for_report`
--
ALTER TABLE `theme_for_report`
  ADD CONSTRAINT `css_properties_ibfk_1` FOREIGN KEY (`css_property_id`) REFERENCES `css_properties` (`id`),
  ADD CONSTRAINT `element_css_properties_ibfk_9` FOREIGN KEY (`element_id`) REFERENCES `elements` (`id`);

--
-- Constraints for table `theme_text_css_properties_value`
--
ALTER TABLE `theme_text_css_properties_value`
  ADD CONSTRAINT `theme_text_css_properties_value_ibfk_1` FOREIGN KEY (`text_type_id`) REFERENCES `text_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
