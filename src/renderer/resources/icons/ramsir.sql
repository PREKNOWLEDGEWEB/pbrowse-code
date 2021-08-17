-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2021 at 07:51 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramsir`
--

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `inst_id` int(10) NOT NULL,
  `inst_name` varchar(200) NOT NULL,
  `inst_code` varchar(100) NOT NULL,
  `inst_email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`inst_id`, `inst_name`, `inst_code`, `inst_email`) VALUES
(21, 'Inos', '99IP990', 'inst@gmail.com'),
(22, 'THe iNstitute', '78PO', 'p@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `std_id` int(10) NOT NULL,
  `std_name` varchar(200) NOT NULL,
  `std_father_name` varchar(200) NOT NULL,
  `std_course` varchar(200) NOT NULL,
  `std_enroll_no` varchar(200) NOT NULL,
  `std_mark_dos` varchar(200) NOT NULL,
  `std_mark_win` varchar(200) NOT NULL,
  `std_mark_office` varchar(200) NOT NULL,
  `std_mark_dtp` varchar(200) NOT NULL,
  `std_mark_int` varchar(200) NOT NULL,
  `std_mark_tally` varchar(200) NOT NULL,
  `std_mark_pratical` varchar(200) NOT NULL,
  `std_total_mark` varchar(200) NOT NULL,
  `std_scored_marks` varchar(200) NOT NULL,
  `std_barcode` varchar(200) NOT NULL,
  `std_image` varchar(100) NOT NULL,
  `std_inst_id` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`std_id`, `std_name`, `std_father_name`, `std_course`, `std_enroll_no`, `std_mark_dos`, `std_mark_win`, `std_mark_office`, `std_mark_dtp`, `std_mark_int`, `std_mark_tally`, `std_mark_pratical`, `std_total_mark`, `std_scored_marks`, `std_barcode`, `std_image`, `std_inst_id`) VALUES
(4, 'Dr.dr union', 'Dr.drr', 'DOCTOR', '32435', '10', '90', '50', '30', '20', '50', '88', '700', '400', '5511', 'doct.jpg', '2'),
(6, 'Student', 'Fateher', 'Course', 'Enroll', '102', '32', '152', '162', '132', '192', '122', '42', '122', '213042', 'doct.jpg', '3'),
(7, 'The Institute Student', 'Father of student', 'Course', 'EN8890', '', '', '', '', '', '', '', '', '', '85616', 'Penguins.jpg', '3'),
(8, 'pritam ku. samal', 'psamal', 'couse', '547865', '', '', '', '', '', '', '', '', '', '923711', '2021.jpg', '3'),
(9, 'td', 'fath', 'courses', '55567', '', '', '', '', '', '', '', '', '', '15300', 'barsha.jpeg', '3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(500) NOT NULL,
  `admin_role` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_role`) VALUES
(1, 'Pritam', 'pritamkumarsamal@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'admin'),
(4, 'THe iNstitute', 'p@gmail.com', '51a4a78faff5675601d026e140dbb694e342515a', 'institute'),
(3, 'Inos', 'inst@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'institute');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `inst_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `std_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
