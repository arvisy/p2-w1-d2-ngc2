-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 04:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p2_ngc2`
--

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Universe` varchar(50) NOT NULL,
  `Skill` varchar(100) DEFAULT NULL,
  `ImageURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`ID`, `Name`, `Universe`, `Skill`, `ImageURL`) VALUES
(1, 'Superman', 'DC', 'Flight, Super Strength', 'superman.jpg'),
(2, 'Spiderman', 'Marvel', 'Wall-Crawling, Web-shooting', 'spiderman.jpg'),
(3, 'Wonder Woman', 'DC', 'Lasso of Truth, Superhuman Strength', 'wonderwoman.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `villain`
--

CREATE TABLE `villain` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Universe` varchar(50) NOT NULL,
  `ImageURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `villain`
--

INSERT INTO `villain` (`ID`, `Name`, `Universe`, `ImageURL`) VALUES
(1, 'Joker', 'DC', 'joker.jpg'),
(2, 'Thanos', 'Marvel', 'thanos.jpg'),
(3, 'Lex Luthor', 'DC', 'lexluthor.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `villain`
--
ALTER TABLE `villain`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
