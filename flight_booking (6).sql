-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 01:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'sayan', '$2y$10$hbjfs5boDACCs5CyvV7wMegyBOfRw2X68KtJTPyO73a.XiyrSBL4C'),
(2, 'Sayan@2003', '$2y$10$p.PfyZbMIyKqMp92oA89meCgkbVvuMl/LJAxh4XrFrjAyzeZgqN4u');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `passenger_count` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `flight_id`, `name`, `dob`, `email`, `phone`, `booking_date`, `passenger_count`) VALUES
(1, 0, NULL, NULL, NULL, NULL, '2025-04-16 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int(11) NOT NULL,
  `flight_number` varchar(20) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 180
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flight_number`, `source`, `destination`, `date`, `time`, `total_seats`, `seats`) VALUES
(8, 'A18', 'kolkata', 'Bagdogra', '2025-04-24', '04:00:00', 150, 180),
(9, 'IG18', 'kolkata', 'Bagdogra', '2025-04-24', '09:30:00', 150, 180),
(10, 'A19', 'kolkata', 'Bagdogra', '2025-04-24', '14:25:00', 180, 180),
(11, 'SJ20', 'kolkata', 'Bagdogra', '2025-04-24', '20:30:00', 180, 180),
(14, 'A03', 'Kolkata', 'Chennai', '2025-04-24', '07:15:00', 180, 180),
(15, 'SJ16', 'kolkata', 'Chennai', '2025-04-24', '10:00:00', 180, 180),
(16, 'SJ78', 'kolkata', 'Chennai', '2025-04-24', '14:20:00', 180, 180),
(17, 'AK19', 'kolkata', 'Chennai', '2025-04-24', '22:00:00', 180, 180),
(20, 'AK20', 'kolkata', 'Chennai', '2025-04-24', '20:30:00', 180, 180),
(27, 'A66', 'Kolkata', 'Bangalore', '2025-04-24', '10:00:00', 180, 180),
(28, 'A28', 'Kolkata', 'Bangalore', '2025-04-24', '15:45:00', 180, 180),
(29, 'SJ33', 'Kolkata', 'Bangalore', '2025-04-24', '22:00:00', 180, 180),
(30, 'A07', 'kolkata', 'Delhi', '2025-04-24', '07:45:00', 180, 180),
(31, 'AK02', 'kolkata', 'Delhi', '2025-04-24', '15:00:00', 180, 180),
(32, 'IG20', 'kolkata', 'Delhi', '2025-04-24', '20:30:00', 180, 180),
(33, 'A68', 'Kolkata', 'Mumbai', '2025-04-24', '10:45:00', 180, 180),
(34, 'SJ32', 'Kolkata', 'Mumbai', '2025-04-24', '15:30:00', 180, 180),
(35, 'AK25', 'Kolkata', 'Mumbai', '2025-04-24', '20:45:00', 180, 180),
(36, 'SJ33', 'kolkata', 'Hyderabad', '2025-04-24', '09:40:00', 180, 180),
(37, 'SJ28', 'Kolkata', 'Hyderabad', '2025-04-24', '16:45:00', 180, 180),
(39, 'A18', 'kolkata', 'Bagdogra', '2025-04-25', '04:00:00', 150, 180),
(40, 'IG18', 'kolkata', 'Bagdogra', '2025-04-25', '09:30:00', 150, 180),
(41, 'A19', 'kolkata', 'Bagdogra', '2025-04-25', '14:25:00', 180, 180),
(42, 'SJ20', 'kolkata', 'Bagdogra', '2025-04-25', '20:30:00', 180, 180),
(43, 'A03', 'Kolkata', 'Chennai', '2025-04-25', '07:15:00', 180, 180),
(44, 'SJ16', 'kolkata', 'Chennai', '2025-04-25', '10:00:00', 180, 180),
(45, 'SJ78', 'kolkata', 'Chennai', '2025-04-25', '14:20:00', 180, 180),
(46, 'AK19', 'kolkata', 'Chennai', '2025-04-25', '22:00:00', 180, 180),
(47, 'AK20', 'kolkata', 'Chennai', '2025-04-25', '20:30:00', 180, 180),
(48, 'A66', 'Kolkata', 'Bangalore', '2025-04-25', '10:00:00', 180, 180),
(49, 'A28', 'Kolkata', 'Bangalore', '2025-04-25', '15:45:00', 180, 180),
(50, 'SJ33', 'Kolkata', 'Bangalore', '2025-04-25', '22:00:00', 180, 180),
(51, 'A07', 'kolkata', 'Delhi', '2025-04-25', '07:45:00', 180, 180),
(52, 'AK02', 'kolkata', 'Delhi', '2025-04-25', '15:00:00', 180, 180),
(53, 'IG20', 'kolkata', 'Delhi', '2025-04-25', '20:30:00', 180, 180),
(54, 'A68', 'Kolkata', 'Mumbai', '2025-04-25', '10:45:00', 180, 180),
(55, 'SJ32', 'Kolkata', 'Mumbai', '2025-04-25', '15:30:00', 180, 180),
(56, 'AK25', 'Kolkata', 'Mumbai', '2025-04-25', '20:45:00', 180, 180),
(57, 'SJ33', 'kolkata', 'Hyderabad', '2025-04-25', '09:40:00', 180, 180),
(58, 'SJ28', 'Kolkata', 'Hyderabad', '2025-04-25', '16:45:00', 180, 180),
(59, 'A18', 'kolkata', 'Bagdogra', '2025-04-26', '04:00:00', 150, 180),
(60, 'IG18', 'kolkata', 'Bagdogra', '2025-04-26', '09:30:00', 150, 180),
(61, 'A19', 'kolkata', 'Bagdogra', '2025-04-26', '14:25:00', 180, 180),
(62, 'SJ20', 'kolkata', 'Bagdogra', '2025-04-26', '20:30:00', 180, 180),
(63, 'A03', 'Kolkata', 'Chennai', '2025-04-26', '07:15:00', 180, 180),
(64, 'SJ16', 'kolkata', 'Chennai', '2025-04-26', '10:00:00', 180, 180),
(65, 'SJ78', 'kolkata', 'Chennai', '2025-04-26', '14:20:00', 180, 180),
(66, 'AK19', 'kolkata', 'Chennai', '2025-04-26', '22:00:00', 180, 180),
(67, 'AK20', 'kolkata', 'Chennai', '2025-04-26', '20:30:00', 180, 180),
(68, 'A66', 'Kolkata', 'Bangalore', '2025-04-26', '10:00:00', 180, 180),
(69, 'A28', 'Kolkata', 'Bangalore', '2025-04-26', '15:45:00', 180, 180),
(70, 'SJ33', 'Kolkata', 'Bangalore', '2025-04-26', '22:00:00', 180, 180),
(71, 'A07', 'kolkata', 'Delhi', '2025-04-26', '07:45:00', 180, 180),
(72, 'AK02', 'kolkata', 'Delhi', '2025-04-26', '15:00:00', 180, 180),
(73, 'IG20', 'kolkata', 'Delhi', '2025-04-26', '20:30:00', 180, 180),
(74, 'A68', 'Kolkata', 'Mumbai', '2025-04-26', '10:45:00', 180, 180),
(75, 'SJ32', 'Kolkata', 'Mumbai', '2025-04-26', '15:30:00', 180, 180),
(76, 'AK25', 'Kolkata', 'Mumbai', '2025-04-26', '20:45:00', 180, 180),
(77, 'SJ33', 'kolkata', 'Hyderabad', '2025-04-26', '09:40:00', 180, 180),
(78, 'SJ28', 'Kolkata', 'Hyderabad', '2025-04-26', '16:45:00', 180, 180),
(79, 'A18', 'kolkata', 'Bagdogra', '2025-04-27', '04:00:00', 150, 180),
(80, 'IG18', 'kolkata', 'Bagdogra', '2025-04-27', '09:30:00', 150, 180),
(81, 'A19', 'kolkata', 'Bagdogra', '2025-04-27', '14:25:00', 180, 180),
(82, 'SJ20', 'kolkata', 'Bagdogra', '2025-04-27', '20:30:00', 180, 180),
(83, 'A03', 'Kolkata', 'Chennai', '2025-04-27', '07:15:00', 180, 180),
(84, 'SJ16', 'kolkata', 'Chennai', '2025-04-27', '10:00:00', 180, 180),
(85, 'SJ78', 'kolkata', 'Chennai', '2025-04-27', '14:20:00', 180, 180),
(87, 'AK20', 'kolkata', 'Chennai', '2025-04-27', '20:30:00', 180, 180),
(88, 'A66', 'Kolkata', 'Bangalore', '2025-04-27', '10:00:00', 180, 180),
(89, 'A28', 'Kolkata', 'Bangalore', '2025-04-27', '15:45:00', 180, 180),
(90, 'SJ33', 'Kolkata', 'Bangalore', '2025-04-27', '22:00:00', 180, 180),
(91, 'A07', 'kolkata', 'Delhi', '2025-04-27', '07:45:00', 180, 180),
(92, 'AK02', 'kolkata', 'Delhi', '2025-04-27', '15:00:00', 180, 180),
(93, 'IG20', 'kolkata', 'Delhi', '2025-04-27', '20:30:00', 180, 180),
(94, 'A68', 'Kolkata', 'Mumbai', '2025-04-27', '10:45:00', 180, 180),
(95, 'SJ32', 'Kolkata', 'Mumbai', '2025-04-27', '15:30:00', 180, 180),
(96, 'AK25', 'Kolkata', 'Mumbai', '2025-04-27', '20:45:00', 180, 180),
(97, 'SJ33', 'kolkata', 'Hyderabad', '2025-04-27', '09:40:00', 180, 180),
(98, 'SJ28', 'Kolkata', 'Hyderabad', '2025-04-27', '16:45:00', 180, 180);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `seat` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `booking_id`, `name`, `dob`, `email`, `phone`, `gender`, `seat`) VALUES
(0, 0, 'Sayan Majumder', '2003-01-10', 'sayanmajumder908@gmail.com', '7478186839', 'Male', '26D'),
(0, 2, 'Sayan Majumder', '2003-01-10', 'sayanmajumder908@gmail.com', '07478186839', 'Male', '26D'),
(0, 2, 'Oishee Das', '2008-06-17', 'oisheedas@gmail.com', '7047298920', 'Female', '26D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
