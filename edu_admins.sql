-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2023 at 07:31 PM
-- Server version: 8.0.35-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edu_admins`
--

-- --------------------------------------------------------

--
-- Table structure for table `educationa_admins`
--

CREATE TABLE `educationa_admins` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL,
  `last_access` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `educationa_admins`
--

INSERT INTO `educationa_admins` (`id`, `name`, `email`, `password`, `created_on`, `last_access`) VALUES
(1, 'Tarachand Mahto', 'devax34073@akoption.com', 'Q6CDyyCRMcn.NAx', '2023-10-30 14:18:50', '2023-10-30 14:18:50'),
(6, 'www.', 'mahtotarachand2001@gmail.com', 'Q6CDyyCRMcn.NAx', '2023-10-30 14:22:06', '2023-10-30 14:22:06'),
(8, 'woor', 'devaxgtwsertge34073@akoption.com', 'Q6CDyyCRMcn.NAx', '2023-10-30 14:33:34', '2023-10-30 14:33:34'),
(9, 'Tarachand Mahto', 'devaxtwertyeryterty34073@akoption.com', 'Q6CDyyCRMcn.NAx', '2023-10-30 14:49:15', '2023-10-30 14:49:15'),
(10, 'gfdsg', 'sdfgsg@gmail.com', 'urtyuu', '2023-10-30 15:19:41', '2023-10-30 15:19:41'),
(12, 'gfdsg', 'sdfgdfghhtysg@gmail.com', 'urtyuu', '2023-10-30 15:19:41', '2023-10-30 15:19:41'),
(13, 'gfdsg', 'sdhytrdfgsg@gmail.com', 'hytfruhyr', '2023-10-30 15:21:23', '2023-10-30 15:21:23'),
(15, 'Tarachand Mahto', 'devax3yytrdeyetrdy67764073@akoption.com', 'Q6CDyyCRMcn.NAx', '2023-11-01 14:12:19', '2023-11-01 14:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `edu_certificates`
--

CREATE TABLE `edu_certificates` (
  `id` int NOT NULL,
  `certificate_id` int NOT NULL,
  `internship_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` int NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edu_interships`
--

CREATE TABLE `edu_interships` (
  `id` int NOT NULL,
  `internship_name` varchar(255) NOT NULL,
  `internship_id` int NOT NULL,
  `internship_start` date NOT NULL,
  `internship_end` date NOT NULL,
  `internship_cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educationa_admins`
--
ALTER TABLE `educationa_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `edu_certificates`
--
ALTER TABLE `edu_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu_interships`
--
ALTER TABLE `edu_interships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internship_id` (`internship_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educationa_admins`
--
ALTER TABLE `educationa_admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `edu_certificates`
--
ALTER TABLE `edu_certificates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `edu_interships`
--
ALTER TABLE `edu_interships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
