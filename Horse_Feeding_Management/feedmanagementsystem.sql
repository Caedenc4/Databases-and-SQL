-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 09:06 PM
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
-- Database: `feedmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `feeding record`
--

CREATE TABLE `feeding record` (
  `RecordID` int(11) NOT NULL,
  `HorseID` int(11) NOT NULL,
  `BaleID` int(11) NOT NULL,
  `DateFed` date NOT NULL,
  `QuantityFed` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feeding record`
--

INSERT INTO `feeding record` (`RecordID`, `HorseID`, `BaleID`, `DateFed`, `QuantityFed`) VALUES
(1, 1, 1, '2023-01-08', 5),
(2, 2, 2, '2023-01-09', 3),
(3, 3, 3, '2023-01-10', 7),
(4, 4, 4, '2023-01-11', 2),
(5, 5, 5, '2023-01-12', 6),
(6, 6, 6, '2023-01-13', 8),
(7, 7, 7, '2023-01-14', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hay bale`
--

CREATE TABLE `hay bale` (
  `BaleID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `DateReceived` date NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `Quality` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hay bale`
--

INSERT INTO `hay bale` (`BaleID`, `Quantity`, `DateReceived`, `SupplierID`, `Quality`) VALUES
(1, 10, '2023-01-01', 1, 90),
(2, 8, '2023-01-02', 2, 85),
(3, 15, '2023-01-03', 3, 92),
(4, 5, '2023-01-04', 4, 88),
(5, 12, '2023-01-05', 5, 91),
(6, 20, '2023-01-06', 6, 89),
(7, 10, '2023-01-07', 7, 94);

-- --------------------------------------------------------

--
-- Table structure for table `horse`
--

CREATE TABLE `horse` (
  `HorseID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `Breed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `horse`
--

INSERT INTO `horse` (`HorseID`, `Name`, `Age`, `Breed`) VALUES
(1, 'Shadowfax', 8, 'Andalusian'),
(2, 'Bucephalus', 12, 'Thoroughbred'),
(3, 'Pegasus', 6, 'Arabian'),
(4, 'Silver', 10, 'Morgan'),
(5, 'Thunder', 5, 'Quarter Horse'),
(6, 'Midnight', 7, 'Friesian'),
(7, 'Chestnut', 9, 'Appaloosa');

-- --------------------------------------------------------

--
-- Table structure for table `supplier table`
--

CREATE TABLE `supplier table` (
  `SupplierID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ContactInfo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier table`
--

INSERT INTO `supplier table` (`SupplierID`, `Name`, `ContactInfo`) VALUES
(1, 'SupplierA', 123),
(2, 'SupplierB', 987),
(3, 'SupplierC', 555),
(4, 'SupplierD', 999),
(5, 'SupplierE', 444),
(6, 'SupplierF', 777),
(7, 'SupplierG', 111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feeding record`
--
ALTER TABLE `feeding record`
  ADD PRIMARY KEY (`RecordID`),
  ADD UNIQUE KEY `HorseID` (`HorseID`),
  ADD UNIQUE KEY `BaleID` (`BaleID`);

--
-- Indexes for table `hay bale`
--
ALTER TABLE `hay bale`
  ADD PRIMARY KEY (`BaleID`),
  ADD UNIQUE KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `horse`
--
ALTER TABLE `horse`
  ADD PRIMARY KEY (`HorseID`);

--
-- Indexes for table `supplier table`
--
ALTER TABLE `supplier table`
  ADD PRIMARY KEY (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
