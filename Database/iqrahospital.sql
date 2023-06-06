-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 08:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iqrahospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankaccount`
--

CREATE TABLE `bankaccount` (
  `AccountNumber` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `AccountTitle` varchar(255) NOT NULL,
  `cvv` int(255) NOT NULL,
  `exp` int(255) NOT NULL,
  `balance` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bankaccount`
--

INSERT INTO `bankaccount` (`AccountNumber`, `password`, `AccountTitle`, `cvv`, `exp`, `balance`) VALUES
(12345, '12345ab', 'Shadab Ahmed', 123, 12, 2500),
(54321, '54321ab', 'Sharjeel Ahmed', 321, 21, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `patientdata`
--

CREATE TABLE `patientdata` (
  `MrNumber` int(6) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(266) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `speciality` varchar(255) NOT NULL DEFAULT 'NA',
  `Doctor` varchar(255) NOT NULL DEFAULT 'NA',
  `timeSlot` varchar(255) NOT NULL DEFAULT 'NA',
  `paymentStatus` varchar(20) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientdata`
--

INSERT INTO `patientdata` (`MrNumber`, `FirstName`, `LastName`, `age`, `gender`, `speciality`, `Doctor`, `timeSlot`, `paymentStatus`) VALUES
(1084, 'Shadab', 'Ahmed', 20, 'Male', 'Neurologist', 'Dr. Asma Qaiser', 'Monday  3:00 - 4:00 PM ', 'Paid'),
(1085, 'Sharjeel', 'Ahmed', 22, 'Male', 'Cardiologist', 'Dr. Ahmed Khan', 'Tuesday  2:30 - 4:30 PM ', 'unpaid'),
(1086, 'Usman', 'Ali', 21, 'Male', 'Gynaecology', 'Dr. Sumaira', 'Saturday  10:30 - 2:30 PM ', 'Paid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankaccount`
--
ALTER TABLE `bankaccount`
  ADD PRIMARY KEY (`AccountNumber`);

--
-- Indexes for table `patientdata`
--
ALTER TABLE `patientdata`
  ADD PRIMARY KEY (`MrNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patientdata`
--
ALTER TABLE `patientdata`
  MODIFY `MrNumber` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1087;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
