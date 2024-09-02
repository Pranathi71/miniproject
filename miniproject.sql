-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 09:56 AM
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
-- Database: `miniproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_logs`
--

CREATE TABLE `attendance_logs` (
  `id` int(11) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `timeInMorning` time DEFAULT NULL,
  `timeOutMorning` time DEFAULT NULL,
  `timeInAfternoon` time DEFAULT NULL,
  `timeOutAfternoon` time DEFAULT NULL,
  `totalHours` decimal(5,2) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `memberName` varchar(255) NOT NULL,
  `feed` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`memberName`, `feed`) VALUES
('venky', 'amazing'),
('BhanuSri', 'the trainers are very interactive..\r\nLost 5 kg in 2 months.'),
('devi', 'The environment is very friendly and worthy .\r\namazing experience.');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('admin@svecw.edu.in', 'Admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `email` varchar(255) NOT NULL,
  `memberName` varchar(255) NOT NULL,
  `contact` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `plan` enum('basic','premium','vip') DEFAULT NULL,
  `joiningDate` date DEFAULT NULL,
  `trainer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`email`, `memberName`, `contact`, `age`, `gender`, `plan`, `joiningDate`, `trainer`) VALUES
('bhanu@gmail.com', 'BhanuSri.R', 2147483647, 24, 'Female', 'basic', '2024-07-10', 'krishna.T'),
('bsri@gmail.com', 'Bhanusri', 2147483647, 28, 'Female', 'basic', '2024-07-14', 'tanuja'),
('devi@gmail.com', 'satya tatavarthi', 1237483647, 30, 'Female', 'premium', '2024-07-26', 'pranathi'),
('mallesh@gmail.com', 'mallesh.A', 2147483647, 24, 'Male', 'vip', '2024-06-30', 'Lakshman'),
('venky@gmail.com', 'venky', 2147483647, 20, 'Female', 'basic', '2024-07-22', 'tanuja');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `planName` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `planName`, `amount`, `duration`) VALUES
(6, 'Premium', 5000.00, 5),
(11, 'VIP', 10500.00, 12),
(13, 'basic', 3500.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `time_logs`
--

CREATE TABLE `time_logs` (
  `id` int(11) NOT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_logs`
--

INSERT INTO `time_logs` (`id`, `employee`, `date`, `time`, `type`) VALUES
(11, 'varsha', '2024-07-28', '06:07:00', 'Time In'),
(12, 'varsha', '2024-07-28', '11:15:00', 'Time In'),
(13, 'varsha', '2024-07-28', '20:15:00', 'Time Out'),
(14, 'venky', '2024-07-28', '09:15:00', 'Time In'),
(15, 'venky', '2024-07-28', '11:16:00', 'Time Out'),
(16, 'satya tatavarthi', '2024-07-29', '09:13:00', 'Time In'),
(17, 'satya tatavarthi', '2024-07-29', '11:13:00', 'Time Out'),
(18, 'satya tatavarthi', '2024-07-29', '12:13:00', 'Time In'),
(19, 'satya tatavarthi', '2024-07-29', '15:07:00', 'Time Out'),
(20, 'satya tatavarthi', '2024-07-28', '09:20:00', 'Time In'),
(21, 'satya tatavarthi', '2024-07-28', '12:21:00', 'Time Out');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `age` int(11) NOT NULL,
  `experience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `first_name`, `email`, `contact_no`, `address`, `age`, `experience`) VALUES
(2, 'tanuja', 'thanu1234@gmail.com', '1234587654', 'bvrm', 27, 5),
(3, 'krishna.T', 'krishna@gmail.com', '9898765654', 'Bhimavaram', 28, 3),
(4, 'Lakshman', 'luncky@gmail.com', '7993544223', 'Pennada', 34, 5),
(6, 'Varsha.Y', 'varsha@gmail.com', '9567834562', 'Vissakoderu', 30, 5),
(7, 'Varsha.T', 'varsha21@gmail.com', '6789543216', 'Bhimavaram', 31, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `memberName` (`memberName`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_logs`
--
ALTER TABLE `time_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `time_logs`
--
ALTER TABLE `time_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
