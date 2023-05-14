-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 03:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urf_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `research`
--
-- Creation: May 12, 2022 at 01:29 PM
--

CREATE TABLE `research` (
  `Topic` text NOT NULL,
  `Publisher name` text NOT NULL,
  `Supervisor name` text NOT NULL,
  `Contributer` varchar(100) NOT NULL,
  `Papers published` varchar(500) NOT NULL,
  `Paper title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rs_info`
--
-- Creation: May 12, 2022 at 01:35 PM
--

CREATE TABLE `rs_info` (
  `ID` int(6) NOT NULL,
  `Name` text NOT NULL,
  `Contact` int(12) NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(8) NOT NULL,
  `Field of interest` varchar(200) NOT NULL,
  `Current Mentor` text DEFAULT NULL,
  `Achievement` varchar(500) NOT NULL,
  `Paper published` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--
-- Creation: May 12, 2022 at 12:49 PM
--

CREATE TABLE `supervisor` (
  `ID/Code` text NOT NULL,
  `Name` int(11) NOT NULL,
  `Contact` int(11) NOT NULL,
  `Email` int(11) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Field of interest` text NOT NULL,
  `On going work` text NOT NULL,
  `Achievement` text DEFAULT NULL,
  `RS accepted` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--
-- Creation: May 12, 2022 at 01:21 PM
--

CREATE TABLE `university` (
  `Institute ID` int(10) NOT NULL,
  `Institute name` text NOT NULL,
  `Research topics` text NOT NULL DEFAULT current_timestamp(),
  `Supervisor Count` int(11) NOT NULL DEFAULT current_timestamp(),
  `Supervisor name` text NOT NULL,
  `RS Count` int(11) NOT NULL DEFAULT current_timestamp(),
  `Achievement` varchar(500) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rs_info`
--
ALTER TABLE `rs_info`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD UNIQUE KEY `ID/Code` (`ID/Code`) USING HASH;

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD UNIQUE KEY `Institute ID` (`Institute ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rs_info`
--
ALTER TABLE `rs_info`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `Institute ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
