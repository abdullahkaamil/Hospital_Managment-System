-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--author : abdullah kaamil
-- Link :https://linkedin.com/in/abdullah-kaamil-4986a9ab/
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 10:23 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctorreport`
--

CREATE TABLE `doctorreport` (
  `id` int(11) NOT NULL,
  `doctor_username` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorreport`
--

INSERT INTO `doctorreport` (`id`, `doctor_username`, `patient_id`, `date`, `month`, `year`) VALUES
(1, 'faaiz', 1, 31, 1, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `symptoms` longtext NOT NULL,
  `tests` longtext NOT NULL,
  `test_results` longtext NOT NULL,
  `medical` longtext NOT NULL,
  `doctor_type` varchar(20) NOT NULL,
  `doctor_price` int(11) NOT NULL,
  `test_price` int(11) NOT NULL,
  `medical_price` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `patient_id`, `status`, `symptoms`, `tests`, `test_results`, `medical`, `doctor_type`, `doctor_price`, `test_price`, `medical_price`, `date`, `month`, `year`) VALUES
(1, 1, 'finish', 'low blood level', 'blood sugar', '321', 'b5', 'NormalDoctor', 20000, 1000, 1000, 31, 1, 2019),
(2, 2, 'recdoctor', '', '', '', '', 'NormalDoctor', 20000, 0, 0, 31, 1, 2019),
(3, 2, 'recdoctor', '', '', '', '', 'NormalDoctor', 20000, 0, 0, 31, 1, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_name`, `price`) VALUES
(1, 'Anti_Acid', 18),
(2, 'Vitamin B(Complex)', 13);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `birthyear` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `fname`, `sname`, `email`, `address`, `phone`, `sex`, `bloodgroup`, `birthyear`) VALUES
(1, 'hasan', 'genc', 'akaamil@outlook.com', 'asdf', '2554444', 'Male', 'B', 2004),
(2, 'kazim', 'khan', 'admin@site.com', 'istanbul', '123123123', 'Male', 'A', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_no` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `patientsinroom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `fname`, `sname`, `type`) VALUES
('adem', '97bbc79679fe1cfd9afb52fd6f01d033b479555d', 'adem', 'demir', 'Pharmacy'),
('akaamil', '05fe7461c607c33229772d402505601016a7d0ea', 'abdullah', 'kaamil', 'Admin'),
('faaiz', '97bbc79679fe1cfd9afb52fd6f01d033b479555d', 'faaiz', 'kaamil', 'NormalDoctor'),
('faisal', '97bbc79679fe1cfd9afb52fd6f01d033b479555d', 'faisal', 'kaamil', 'Reception'),
('kaamil', '97bbc79679fe1cfd9afb52fd6f01d033b479555d', 'abdullah', 'kaamil', 'Bursar'),
('kawsar', '97bbc79679fe1cfd9afb52fd6f01d033b479555d', 'kawsar', 'kaamil', 'Laboratory');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctorreport`
--
ALTER TABLE `doctorreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctorreport`
--
ALTER TABLE `doctorreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
