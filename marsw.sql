-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 18, 2018 at 04:17 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marsw`
--

-- --------------------------------------------------------

--
-- Table structure for table `incentive`
--

CREATE TABLE `incentive` (
  `id` int(10) NOT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(40) NOT NULL,
  `points` int(4) NOT NULL,
  `instructor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incentive`
--

INSERT INTO `incentive` (`id`, `title`, `description`, `points`, `instructor`) VALUES
(2, '$request->getPa;', 'add', 234, 34),
(3, '$request->getPa;', 'add', 234, 34),
(4, '$request->getPa;', 'add', 234, 34),
(5, '$request->getPa;', 'add', 234, 34),
(6, '$request->getPa;', 'add', 234, 34),
(7, '$request->getPa;', 'add', 234, 34),
(8, '$request->getPa;', 'add', 234, 34),
(9, '$request->getPa;', 'add', 234, 34),
(10, '$request->getPa;', 'add', 234, 34),
(11, '$request->getPa;', 'add', 234, 34),
(12, '$request->getPa;', 'add', 234, 34),
(13, '$request->getPa;', 'add', 234, 34),
(14, '$request->getPa;', 'add', 234, 34),
(15, '$request->getPa;', 'add', 234, 34),
(16, '$request->getPa;', 'add', 234, 34),
(17, '$request->getPa;', 'add', 234, 34),
(18, '$request->getPa;', 'add', 234, 34),
(19, '$request->getPa;', 'add', 234, 34),
(20, '$request->getPa;', 'add', 234, 34),
(21, '$request->getPa;', 'add', 234, 34),
(22, '$request->getPa;', 'add', 234, 34),
(23, '$request->getPa;', 'add', 234, 34),
(24, '$request->getPa;', 'add', 234, 34),
(25, '$request->getPa;', 'add', 234, 34);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(12) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `email`, `f_name`, `l_name`, `password`, `score`, `count`) VALUES
(34324, 'zcxxc', 'fddsf', 'sdxczc', 'cxzc', 0, 0),
(435107528, 'ahmed@ksu.com', 'Ahmed', 'Ali', '123123', 0, 0),
(32123, 'assad@aloc', 'Ahmed', 'Ali', '132143', 0, 0),
(32123, 'assad@aloc', 'Ahmed', 'Ali', '132143', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incentive`
--
ALTER TABLE `incentive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incentive`
--
ALTER TABLE `incentive`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
