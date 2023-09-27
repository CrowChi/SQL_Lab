-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2021 at 05:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computer`
--

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `model` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `speed` decimal(3,2) NOT NULL,
  `ram` int(10) NOT NULL,
  `hd` int(5) NOT NULL,
  `screen` decimal(3,1) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`model`, `speed`, `ram`, `hd`, `screen`, `price`) VALUES
('2001', '2.00', 2048, 240, '20.1', 367),
('2002', '1.73', 1024, 80, '17.0', 949),
('2003', '1.80', 512, 60, '15.4', 549),
('2004', '2.00', 512, 60, '13.3', 1150),
('2005', '2.16', 1024, 120, '17.0', 2500),
('2006', '2.00', 2048, 80, '15.4', 1700),
('2007', '1.83', 1024, 120, '13.3', 1429),
('2008', '1.60', 1024, 100, '15.4', 900),
('2009', '1.60', 512, 80, '14.1', 680),
('2010', '2.00', 2048, 160, '15.4', 2300);

-- --------------------------------------------------------

--
-- Table structure for table `pc`
--

CREATE TABLE `pc` (
  `model` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `speed` decimal(3,2) NOT NULL,
  `ram` int(10) NOT NULL,
  `hd` int(10) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pc`
--

INSERT INTO `pc` (`model`, `speed`, `ram`, `hd`, `price`) VALUES
('1001', '2.66', 1024, 250, 2114),
('1002', '2.10', 512, 250, 995),
('1003', '1.42', 512, 80, 478),
('1004', '2.80', 1024, 250, 649),
('1005', '3.20', 512, 250, 630),
('1006', '3.20', 1024, 320, 1049),
('1007', '2.20', 1024, 200, 510),
('1008', '2.20', 2048, 250, 770),
('1009', '2.00', 1024, 250, 650),
('1010', '2.80', 2048, 300, 770),
('1011', '1.86', 2048, 160, 959),
('1012', '2.80', 1024, 160, 649),
('1013', '3.06', 512, 80, 529);

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `model` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` tinyint(1) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`model`, `color`, `type`, `price`) VALUES
('3001', 1, 'ink-jet', 99),
('3002', 0, 'laser', 239),
('3003', 1, 'laser', 899),
('3004', 1, 'ink-jet', 120),
('3005', 0, 'laser', 120),
('3006', 1, 'ink-jet', 100),
('3007', 1, 'laser', 200);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `maker` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`maker`, `model`, `type`) VALUES
('A', '1001', 'pc'),
('A', '1002', 'pc'),
('A', '1003', 'pc'),
('A', '2004', 'laptop'),
('A', '2005', 'laptop'),
('A', '2006', 'laptop'),
('B', '1004', 'pc'),
('B', '1005', 'pc'),
('B', '1006', 'pc'),
('B', '2007', 'laptop'),
('C', '1007', 'pc'),
('D', '1008', 'pc'),
('D', '1009', 'pc'),
('D', '1010', 'pc'),
('D', '3004', 'printer'),
('D', '3005', 'printer'),
('E', '1011', 'pc'),
('E', '1012', 'pc'),
('E', '1013', 'pc'),
('E', '2001', 'laptop'),
('E', '2002', 'laptop'),
('E', '2003', 'laptop'),
('E', '3001', 'printer'),
('E', '3002', 'printer'),
('E', '3003', 'printer'),
('F', '2008', 'laptop'),
('F', '2009', 'laptop'),
('G', '2010', 'laptop'),
('H', '3006', 'printer'),
('H', '3007', 'printer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
