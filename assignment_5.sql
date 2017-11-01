-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2017 at 03:18 PM
-- Server version: 10.1.25-MariaDB
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
-- Database: `assignment_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `id` varchar(25) COLLATE utf8_danish_ci NOT NULL,
  `clubName` varchar(75) COLLATE utf8_danish_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_danish_ci NOT NULL,
  `county` varchar(50) COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `fallYear` int(4) NOT NULL,
  `clubID` varchar(25) COLLATE utf8_danish_ci NOT NULL,
  `skierUserName` varchar(8) COLLATE utf8_danish_ci NOT NULL,
  `totalDistance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skier`
--

CREATE TABLE `skier` (
  `userName` varchar(8) COLLATE utf8_danish_ci NOT NULL,
  `firstName` varchar(60) COLLATE utf8_danish_ci NOT NULL,
  `lastName` varchar(60) COLLATE utf8_danish_ci NOT NULL,
  `dateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`fallYear`,`clubID`,`skierUserName`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `skierUserName` (`skierUserName`);

--
-- Indexes for table `skier`
--
ALTER TABLE `skier`
  ADD PRIMARY KEY (`userName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`clubID`) REFERENCES `club` (`id`),
  ADD CONSTRAINT `journal_ibfk_3` FOREIGN KEY (`skierUserName`) REFERENCES `skier` (`userName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
