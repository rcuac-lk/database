CREATE DATABASE hacktwru_rcuac;
USE hacktwru_rcuac;

 CREATE USER 'hacktwru_rcuac'@'localhost' IDENTIFIED BY 'hacktwru_rcuac';

-- Step 2: Grant read/write privileges on the target database
 GRANT SELECT, INSERT, UPDATE, DELETE ON hacktwru_rcuac.* TO 'hacktwru_rcuac'@'localhost';

-- Step 3: Apply changes
 FLUSH PRIVILEGES;

-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2025 at 11:30 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hacktwru_rcuac`
--

-- --------------------------------------------------------

--
-- Table structure for table `agecategory`
--

CREATE TABLE `agecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `MinAge` int(11) NOT NULL DEFAULT '0',
  `MaxAge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agecategory`
--

INSERT INTO `agecategory` (`id`, `category`, `Description`, `MinAge`, `MaxAge`) VALUES
(1, 'Under 11', 'Age from 5 - 10', 5, 10),
(2, 'Under 13', 'Age from 11 - 12', 11, 12),
(3, 'Under 15', 'Age from 13 - 14', 13, 14),
(4, 'Under 17', 'Age from 15 - 16', 15, 16),
(5, 'Under 19', 'Age from 17 - 18', 17, 18);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `AttendanceID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `AttendanceDate` date DEFAULT NULL,
  `SessionID` int(11) NOT NULL,
  `Present` tinyint(1) DEFAULT NULL,
  `MarkedBy` int(11) DEFAULT NULL,
  `MarkedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`AttendanceID`, `StudentID`, `AttendanceDate`, `SessionID`, `Present`, `MarkedBy`, `MarkedAt`) VALUES
(20, 10001, '2025-05-08', 2, 1, 2, '2025-05-07 18:42:43'),
(21, 10002, '2025-05-08', 2, 1, 1, '2025-05-07 18:42:56'),
(22, 10002, '2025-05-08', 2, 1, 1, '2025-05-07 18:43:13'),
(23, 10003, '2025-05-08', 2, 1, 1, '2025-05-07 18:43:18'),
(24, 10001, '2025-05-07', 2, 1, 1, '2025-05-07 18:43:23'),
(25, 10001, '2025-05-07', 2, 1, 1, '2025-05-07 18:43:27'),
(26, 10002, '2025-05-07', 2, 0, 1, '2025-05-07 18:43:30'),
(27, 10003, '2025-05-07', 2, 0, 1, '2025-05-07 18:43:36'),
(28, 10001, '2025-05-06', 2, 0, 1, '2025-05-08 18:45:27'),
(29, 10002, '2025-05-06', 2, 0, 1, '2025-05-08 18:45:28'),
(30, 10003, '2025-05-06', 2, 1, 1, '2025-05-08 18:45:30'),
(31, 10004, '2025-05-06', 1, 1, 1, '2025-05-08 20:15:17'),
(32, 10005, '2025-05-06', 1, 1, 1, '2025-05-08 20:15:18'),
(33, 10006, '2025-05-06', 1, 1, 1, '2025-05-08 20:15:20'),
(34, 10007, '2025-05-06', 1, 1, 1, '2025-05-08 20:15:21'),
(35, 10004, '2025-05-08', 1, 1, 1, '2025-05-14 12:29:13'),
(36, 10004, '2025-05-08', 1, 1, 1, '2025-05-14 12:29:18'),
(37, 10005, '2025-05-08', 1, 1, 1, '2025-05-14 12:29:20'),
(38, 10005, '2025-05-08', 1, 1, 1, '2025-05-14 12:29:21'),
(39, 10006, '2025-05-08', 1, 1, 1, '2025-05-14 13:29:53'),
(40, 10007, '2025-05-08', 1, 1, 1, '2025-05-14 13:29:55'),
(41, 10008, '2025-05-08', 1, 1, 1, '2025-05-14 13:31:22'),
(42, 10009, '2025-05-08', 1, 1, 1, '2025-05-14 13:31:23'),
(43, 10001, '2025-05-14', 1, 1, 1, '2025-05-14 14:12:38'),
(44, 10002, '2025-05-14', 1, 0, 1, '2025-05-14 14:12:40'),
(45, 10002, '2025-05-14', 1, 1, 1, '2025-05-14 14:12:49'),
(46, 10003, '2025-05-14', 1, 1, 1, '2025-05-14 14:13:06'),
(47, 10003, '2025-05-14', 1, 0, 1, '2025-05-14 14:14:04'),
(48, 10001, '2025-05-14', 2, 0, 1, '2025-05-14 14:21:58'),
(49, 10002, '2025-05-14', 2, 0, 1, '2025-05-14 14:21:58'),
(50, 10003, '2025-05-14', 2, 0, 1, '2025-05-14 14:21:59'),
(51, 10004, '2025-05-14', 2, 0, 1, '2025-05-14 14:21:59'),
(52, 10005, '2025-05-14', 2, 1, 1, '2025-05-14 14:22:01'),
(53, 10006, '2025-05-14', 2, 0, 1, '2025-05-14 14:22:08'),
(54, 10001, '2025-05-07', 4, 1, 1, '2025-05-14 14:23:11'),
(55, 10002, '2025-05-07', 4, 0, 1, '2025-05-14 14:23:12'),
(56, 10003, '2025-05-07', 4, 0, 1, '2025-05-14 14:23:13'),
(57, 10005, '2025-05-14', 1, 1, 1, '2025-05-14 18:44:44'),
(58, 10009, '2025-05-14', 1, 1, 1, '2025-05-14 18:45:05'),
(59, 10005, '2025-05-07', 1, 1, 1, '2025-05-14 19:02:32'),
(60, 10020, '2025-05-14', 1, 1, 1, '2025-05-14 19:10:45'),
(61, 10004, '2025-05-14', 1, 1, 1, '2025-05-14 19:10:55'),
(62, 10008, '2025-05-14', 1, 0, 1, '2025-05-14 19:10:55'),
(63, 10018, '2025-05-14', 1, 0, 1, '2025-05-14 19:10:57'),
(64, 10019, '2025-05-14', 1, 1, 1, '2025-05-14 19:10:58'),
(65, 10004, '2025-05-14', 1, 0, 1, '2025-05-14 19:12:45'),
(66, 10001, '2025-05-08', 1, 0, 1, '2025-05-14 19:13:38'),
(67, 10002, '2025-05-08', 1, 0, 1, '2025-05-14 19:13:39'),
(68, 10003, '2025-05-08', 1, 0, 1, '2025-05-14 19:13:40'),
(69, 10008, '2025-05-14', 2, 0, 1, '2025-05-14 19:36:07'),
(70, 10018, '2025-05-14', 2, 0, 1, '2025-05-14 19:36:08'),
(71, 10017, '2025-05-18', 1, 1, 1, '2025-05-18 18:44:53'),
(72, 10018, '2025-05-18', 1, 0, 1, '2025-05-18 18:44:54'),
(73, 10019, '2025-05-18', 1, 1, 1, '2025-05-18 18:44:55'),
(74, 10020, '2025-05-18', 1, 1, 1, '2025-05-18 18:44:57'),
(75, 10019, '2025-05-18', 1, 0, 1, '2025-05-18 18:45:06'),
(76, 10001, '2025-05-22', 1, 1, 1, '2025-05-22 12:41:56'),
(77, 10002, '2025-05-22', 1, 0, 1, '2025-05-22 12:41:57'),
(78, 10004, '2025-05-22', 1, 1, 1, '2025-05-22 12:41:59'),
(79, 10003, '2025-05-22', 1, 0, 13, '2025-05-22 17:44:19'),
(80, 10005, '2025-05-22', 1, 1, 13, '2025-05-22 17:44:20'),
(81, 10001, '2025-05-22', 2, 1, 13, '2025-05-22 17:44:25'),
(82, 10002, '2025-05-22', 2, 1, 13, '2025-05-22 17:44:26'),
(83, 10003, '2025-05-22', 2, 1, 13, '2025-05-22 17:44:26'),
(84, 10004, '2025-05-22', 2, 1, 13, '2025-05-22 17:44:27'),
(85, 10005, '2025-05-22', 2, 1, 13, '2025-05-22 17:44:27'),
(86, 10006, '2025-05-22', 2, 0, 13, '2025-05-22 17:44:28'),
(87, 10001, '2025-05-27', 1, 1, 1, '2025-05-27 11:23:32'),
(88, 10002, '2025-05-27', 1, 0, 1, '2025-05-27 11:23:33'),
(89, 10003, '2025-05-27', 1, 1, 1, '2025-05-27 11:23:34'),
(90, 10004, '2025-05-27', 1, 1, 1, '2025-05-27 11:23:36'),
(91, 10001, '2025-05-29', 1, 1, 13, '2025-05-29 13:42:41'),
(92, 10002, '2025-05-29', 1, 0, 13, '2025-05-29 13:42:42'),
(93, 10003, '2025-05-29', 1, 0, 13, '2025-05-29 13:42:43'),
(94, 10004, '2025-05-29', 1, 0, 13, '2025-05-29 13:42:44'),
(95, 10004, '2025-05-29', 1, 1, 13, '2025-05-29 13:42:46'),
(96, 10002, '2025-05-29', 1, 1, 13, '2025-05-29 13:42:52'),
(97, 10002, '2025-05-29', 1, 0, 13, '2025-05-29 13:43:08'),
(98, 10005, '2025-05-29', 1, 1, 13, '2025-05-29 13:43:35'),
(99, 10006, '2025-05-29', 1, 0, 13, '2025-05-29 13:43:36'),
(100, 10007, '2025-05-29', 1, 1, 13, '2025-05-29 13:43:37'),
(101, 10008, '2025-05-29', 1, 1, 13, '2025-05-29 13:43:41'),
(102, 10009, '2025-05-29', 1, 1, 13, '2025-05-29 13:43:41'),
(103, 10010, '2025-05-29', 1, 1, 13, '2025-05-29 13:43:42'),
(104, 10010, '2025-05-29', 1, 0, 13, '2025-05-29 13:43:47'),
(105, 10009, '2025-05-29', 1, 0, 13, '2025-05-29 13:43:56'),
(106, 10001, '2025-05-29', 2, 1, 12, '2025-05-29 14:28:30'),
(107, 10002, '2025-05-29', 2, 0, 12, '2025-05-29 14:28:31'),
(108, 10003, '2025-05-29', 2, 1, 12, '2025-05-29 14:28:32'),
(109, 10001, '2025-06-01', 1, 1, 1, '2025-06-01 08:23:30'),
(110, 10002, '2025-06-01', 1, 0, 1, '2025-06-01 08:23:34'),
(111, 10003, '2025-06-01', 1, 1, 1, '2025-06-01 08:23:36'),
(112, 10001, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:09'),
(113, 10002, '2025-06-04', 1, 0, 1, '2025-06-04 11:28:09'),
(114, 10003, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:10'),
(115, 10004, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:11'),
(116, 10005, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:12'),
(117, 10006, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:12'),
(118, 10007, '2025-06-04', 1, 0, 1, '2025-06-04 11:28:13'),
(119, 10008, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:15'),
(120, 10009, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:15'),
(121, 10010, '2025-06-04', 1, 0, 1, '2025-06-04 11:28:16'),
(122, 10011, '2025-06-04', 1, 0, 1, '2025-06-04 11:28:17'),
(123, 10010, '2025-06-04', 1, 1, 1, '2025-06-04 11:28:19'),
(124, 10003, '2025-06-05', 1, 0, 1, '2025-06-05 13:58:54'),
(125, 10001, '2025-06-05', 1, 1, 1, '2025-06-05 13:58:54'),
(126, 10004, '2025-06-05', 1, 0, 1, '2025-06-05 13:58:55'),
(127, 10025, '2025-06-05', 1, 1, 1, '2025-06-05 13:58:55'),
(128, 10013, '2025-06-05', 1, 1, 1, '2025-06-05 13:59:00'),
(129, 10024, '2025-06-05', 1, 0, 1, '2025-06-05 13:59:02'),
(130, 10001, '2025-06-06', 1, 1, 1, '2025-06-06 23:12:08'),
(131, 10002, '2025-06-06', 1, 0, 1, '2025-06-06 23:12:08'),
(132, 10003, '2025-06-06', 1, 0, 1, '2025-06-06 23:12:09'),
(133, 10004, '2025-06-06', 1, 1, 1, '2025-06-06 23:12:10'),
(134, 10005, '2025-06-06', 1, 1, 1, '2025-06-06 23:12:11'),
(135, 10006, '2025-06-06', 1, 1, 1, '2025-06-06 23:12:11'),
(136, 10007, '2025-06-06', 1, 1, 1, '2025-06-06 23:12:12'),
(137, 10008, '2025-06-06', 1, 0, 1, '2025-06-06 23:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `distance`
--

CREATE TABLE `distance` (
  `id` int(11) NOT NULL,
  `length` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distance`
--

INSERT INTO `distance` (`id`, `length`) VALUES
(1, 50),
(2, 100),
(3, 200),
(4, 400);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EventID` int(11) NOT NULL,
  `EventName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EventID`, `EventName`) VALUES
(1, 'Free Style'),
(2, 'Back Stroke'),
(3, 'Breast Stroke'),
(4, 'Butterfly');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `LogID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Action` text,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `monthlyattendancearchive`
--

CREATE TABLE `monthlyattendancearchive` (
  `ArchiveID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `MonthYear` varchar(7) DEFAULT NULL,
  `PDFData` longblob,
  `ArchivedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ArchivedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `PerformanceID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `EventID` int(11) DEFAULT NULL,
  `PerformanceDate` date DEFAULT NULL,
  `DistanceID` int(11) NOT NULL,
  `SessionID` int(11) NOT NULL,
  `Time` time(3) DEFAULT NULL,
  `RecordedBy` int(11) DEFAULT NULL,
  `MarkedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`PerformanceID`, `StudentID`, `EventID`, `PerformanceDate`, `DistanceID`, `SessionID`, `Time`, `RecordedBy`, `MarkedAt`) VALUES
(1, 10001, 2, '2024-11-13', 1, 2, '00:09:12.413', 13, '2025-05-18 09:56:04'),
(2, 10001, 2, '2025-05-18', 1, 2, '00:01:20.450', 2, '2025-05-18 09:57:27'),
(3, 10001, 1, '2025-05-18', 1, 2, '00:01:23.450', 2, '2025-05-18 09:58:49'),
(4, 10001, 1, '2025-05-18', 1, 2, '00:00:02.230', 1, '2025-05-18 09:59:00'),
(5, 10001, 1, '2025-05-18', 1, 1, '00:01:23.120', 2, '2025-05-18 10:00:15'),
(6, 10001, 1, '2025-05-18', 1, 1, '00:00:02.400', 1, '2025-05-18 10:01:27'),
(7, 10003, 1, '2025-05-18', 1, 1, '00:00:02.150', 1, '2025-05-18 10:02:40'),
(8, 10003, 1, '2025-05-18', 4, 2, '00:00:02.150', 1, '2025-05-18 10:03:52'),
(9, 10001, 1, '2025-05-18', 4, 2, '00:00:02.400', 1, '2025-05-18 10:04:06'),
(10, 10001, 1, '2025-05-18', 1, 1, '00:00:03.120', 1, '2025-05-18 10:05:16'),
(11, 10001, 1, '2025-05-18', 2, 1, '00:00:03.120', 1, '2025-05-18 10:06:26'),
(12, 10001, 1, '2025-05-18', 1, 1, '00:00:01.230', 1, '2025-05-18 10:07:38'),
(13, 10001, 1, '2025-05-18', 1, 1, '00:00:01.230', 1, '2025-05-18 10:08:49'),
(14, 10001, 1, '2025-05-18', 1, 1, '00:00:01.230', 1, '2025-05-18 10:09:07'),
(15, 10001, 1, '2025-05-18', 1, 1, '00:00:02.350', 1, '2025-05-18 10:10:18'),
(16, 10001, 1, '2025-05-18', 1, 1, '00:00:02.350', 1, '2025-05-18 10:31:49'),
(17, 10001, 1, '2025-05-18', 1, 1, '00:00:02.540', 1, '2025-05-18 11:00:02'),
(18, 10001, 1, '2025-05-18', 1, 1, '00:00:02.540', 1, '2025-05-18 11:01:14'),
(19, 10001, 1, '2025-05-18', 1, 1, '00:00:02.540', 1, '2025-05-18 13:00:29'),
(20, 10001, 2, '2025-05-13', 3, 3, '00:00:04.500', 1, '2025-05-18 18:36:21'),
(21, 10002, 2, '2025-05-13', 3, 3, '00:00:04.564', 1, '2025-05-18 18:36:36'),
(22, 10002, 2, '2025-05-13', 2, 3, '00:00:25.543', 1, '2025-05-18 18:44:26'),
(23, 10006, 2, '2025-05-13', 2, 3, '00:00:35.543', 1, '2025-05-18 18:44:38'),
(24, 10001, 1, '2025-05-18', 1, 1, '00:03:03.400', 1, '2025-05-18 18:45:46'),
(25, 10003, 1, '2025-05-19', 1, 1, '00:00:03.600', 1, '2025-05-19 02:07:37'),
(26, 10004, 1, '2025-05-19', 1, 1, '00:04:00.800', 1, '2025-05-19 02:07:43'),
(27, 10001, 1, '2025-05-22', 1, 1, '00:00:05.800', 13, '2025-05-22 15:53:11'),
(28, 10001, 1, '2025-05-22', 1, 1, '00:00:03.400', 13, '2025-05-22 17:44:36'),
(29, 10002, 1, '2025-05-22', 3, 1, '00:00:03.400', 13, '2025-05-22 17:44:43'),
(30, 10001, 1, '2025-05-22', 1, 1, '00:00:05.600', 13, '2025-05-22 17:48:06'),
(31, 10002, 1, '2025-05-22', 2, 1, '00:00:08.900', 13, '2025-05-22 17:48:19'),
(32, 10001, 3, '2025-05-21', 4, 3, '00:00:12.980', 13, '2025-05-22 17:49:16'),
(33, 10002, 3, '2025-05-21', 4, 3, '00:00:12.430', 13, '2025-05-22 17:49:26'),
(34, 10001, 1, '2025-06-01', 1, 1, '00:00:02.800', 1, '2025-06-01 09:19:38'),
(35, 10002, 1, '2025-06-01', 1, 1, '00:00:09.990', 1, '2025-06-01 09:19:45'),
(36, 10001, 1, '2025-06-01', 1, 1, '00:00:03.340', 1, '2025-06-01 19:26:34'),
(37, 10002, 1, '2025-06-01', 1, 1, '00:00:03.540', 1, '2025-06-01 19:26:38'),
(38, 10003, 1, '2025-06-01', 1, 1, '00:00:02.543', 1, '2025-06-01 19:26:43'),
(39, 10004, 1, '2025-06-01', 2, 1, '00:01:02.500', 1, '2025-06-01 19:26:54'),
(40, 10005, 1, '2025-06-01', 2, 1, '00:01:02.540', 1, '2025-06-01 19:27:02'),
(41, 10001, 1, '2025-06-05', 1, 1, '00:00:02.300', 1, '2025-06-05 13:59:14'),
(42, 10002, 1, '2025-06-05', 1, 1, '00:00:03.400', 1, '2025-06-05 13:59:16'),
(43, 10002, 1, '2025-06-05', 1, 3, '00:00:34.000', 1, '2025-06-05 14:00:25'),
(44, 10002, 3, '2025-06-05', 1, 4, '00:00:35.000', 1, '2025-06-05 14:01:04'),
(45, 10003, 3, '2025-06-05', 1, 4, '00:00:34.000', 1, '2025-06-05 14:01:07'),
(46, 10001, 3, '2025-06-05', 1, 4, '00:02:03.200', 1, '2025-06-05 14:01:53'),
(47, 10001, 3, '2025-06-05', 4, 4, '00:03:49.400', 1, '2025-06-05 14:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `refreshTokens`
--

CREATE TABLE `refreshTokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refreshTokens`
--


--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Guest', '2024-08-06 18:43:10', '2024-08-06 18:43:10'),
(2, 'Admin', '2024-08-06 18:43:10', '2024-08-06 18:43:10'),
(3, 'Parent', '2024-08-06 18:43:10', '2024-08-06 18:43:10'),
(4, 'Coach', '2024-08-06 18:43:10', '2024-08-06 18:43:10'),
(5, 'Manager', '2024-08-06 18:43:10', '2024-08-06 18:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `sessionName` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdByUser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `sessionName`, `description`, `createdByUser`) VALUES
(1, 'Weekend Session', 'Only holidays', 1),
(2, 'Morning Practice Session', 'Regular', 1),
(3, 'Evening Practice Session', 'Regular', 1),
(4, 'Natianal Championship', 'Annual', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `AdmissionNumber` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `Approved` tinyint(1) NOT NULL,
  `DOB` date DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `AdmissionNumber`, `FirstName`, `LastName`, `Active`, `Approved`, `DOB`, `ParentID`, `createdAt`, `updatedAt`, `Comment`) VALUES
(10001, 'COM-0908', 'Samson', 'Smith Jr', 1, 1, '2018-12-31', 14, '2025-05-08 13:15:05', '2025-06-05 12:11:35', ''),
(10002, 'ART-2023', 'Nala', 'The Lion', 1, 1, '2017-06-15', 15, '2025-05-08 13:15:05', '2025-05-08 18:45:22', ''),
(10003, 'COM-3435', 'Diana', 'Mason', 1, 1, '2016-01-01', 14, '2025-05-08 13:15:05', '2025-05-29 15:07:31', ''),
(10004, 'COM-6448', 'Leo', 'James', 1, 1, '2015-12-31', 15, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10005, 'SCI-2623', 'Maya', 'Johnson', 1, 1, '2015-01-01', 14, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10006, 'ART-4192', 'Lucas', 'Martin', 1, 1, '2014-01-01', 15, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10007, 'COM-6429', 'Emma', 'Lee', 1, 1, '2013-12-31', 19, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10008, 'SCI-2230', 'Noah', 'Clark', 1, 1, '2013-01-01', 14, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10009, 'ART-8957', 'Olivia', 'Wright', 1, 1, '2012-01-01', 15, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10010, 'COM-1394', 'Liam', 'Baker', 1, 1, '2011-12-31', 19, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10011, 'SCI-9583', 'Sophia', 'Hall', 1, 1, '2011-01-01', 23, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10012, 'ART-5649', 'Aiden', 'Young', 1, 1, '2010-01-01', 24, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10013, 'COM-8766', 'Isabella', 'King', 1, 1, '2009-12-31', 25, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10014, 'SCI-6749', 'Ethan', 'Scott', 1, 1, '2009-01-01', 23, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10015, 'ART-1218', 'Ava', 'Green', 1, 1, '2008-01-01', 24, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10016, 'COM-1040', 'James', 'Adams', 1, 1, '2007-12-31', 25, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10017, 'SCI-1934', 'Charlotte', 'Nelson', 1, 1, '2007-01-01', 23, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10018, 'ART-9056', 'Benjamin', 'Hill', 1, 1, '2006-01-01', 25, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10019, 'COM-2225', 'Amelia', 'Carter', 1, 1, '2019-01-01', 19, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10020, 'SCI-8372', 'Henry', 'Mitchell', 1, 1, '2005-01-01', 25, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10021, 'ART-4221', 'Mia', 'Perez', 1, 1, '2014-11-20', 23, '2025-05-08 18:53:25', '2025-06-01 09:33:23', ''),
(10022, 'COM-8567', 'Alexander', 'Roberts', 1, 1, '2015-12-29', 19, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10023, 'SCI-5159', 'Ella', 'Turner', 1, 1, '2016-03-03', 24, '2025-05-08 18:53:25', '2025-05-09 00:23:25', ''),
(10024, 'COM/0652', 'Samson', 'Romanawski', 1, 1, '2013-06-14', 24, '2025-05-29 13:55:27', '2025-05-29 14:26:22', ''),
(10025, 'ART/0957', 'Samson Jr', 'Romana', 1, 1, '2008-02-29', 25, '2025-05-29 14:47:54', '2025-05-29 15:15:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Role` enum('Admin','Coach','Manager','Parent','Child') DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Approved` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Role`, `FirstName`, `LastName`, `Email`, `Approved`, `createdAt`, `updatedAt`, `Active`) VALUES
(1, 'vipulasrilanka@gmail.com', '$2a$08$YmZCY3IdCeYnknmnaTIEzOptvhEx1put/vrjkwZG2OMDzJOZ4OdPW', 'Admin', 'Vipula', 'Liyanaarachchi', 'vipulasrilanka@gmail.com', 1, '2024-11-01 06:15:31', '2025-02-21 11:09:08', 1),
(2, 'kavita.sen@bluestar.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Admin', 'Kavita', 'Sen', 'kavita.sen@bluestar.kom', 1, '2025-01-17 12:39:03', '2025-01-17 12:39:23', 1),
(3, 'naveen.sack@gmail.com', '$2a$08$ZnuwYaYJbg/APZcVSTDS8eOTlGVn2CF5ok4yqF/x4p6knsxIzsfeq', 'Admin', 'Naveen', 'Rajan', 'naveen.sack@gmail.com', 1, '2025-01-17 12:39:45', '2025-01-17 12:40:59', 1),
(12, 'samuel.bright@teamlink.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Manager', 'Samuel', 'Bright', 'samuel.bright@teamlink.kom', 1, '2025-02-03 15:22:25', '2025-05-24 19:17:26', 1),
(13, 'dylan.porto@coachhub.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Coach', 'Dylan', 'Porto', 'dylan.porto@coachhub.kom', 1, '2025-02-03 15:25:37', '2025-05-29 14:51:23', 1),
(14, 'anna.martinez@familyconnect.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Parent', 'Anna', 'Martinez', 'anna.martinez@familyconnect.kom', 1, '2025-02-03 15:31:05', '2025-05-29 13:13:23', 1),
(15, 'leo.king@wildpath.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Parent', 'Leo', 'King', 'leo.king@wildpath.kom', 1, '2025-02-05 13:05:35', '2025-05-24 19:17:39', 1),
(16, 'ravi.sharma@teamlink.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Manager', 'Ravi', 'Sharma', 'ravi.sharma@teamlink.kom', 1, '2025-02-07 11:38:04', '2025-02-07 11:38:44', 1),
(17, 'maya.lind@teamlink.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Manager', 'Maya', 'Lind', 'maya.lind@teamlink.kom', 1, '2025-02-09 19:22:59', '2025-02-09 19:23:12', 1),
(18, 'pasangimhanaofficial@gmail.com', '$2a$08$Zb2jBPi0NOGToX9S9Ux6/edT.gSUlJkXbPiG68DWz8K9rM1Z4VV8q', 'Admin', 'Pasan', 'Gimhana', 'pasangimhanaofficial@gmail.com', 1, '2025-02-21 11:41:10', '2025-02-21 11:42:26', 1),
(19, 'emily.brown@familyconnect.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Parent', 'Emily', 'Brown', 'emily.brown@familyconnect.kom', 1, '2025-02-27 12:20:48', '2025-05-24 19:17:48', 1),
(20, 'samantha@fox.usa', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Coach', 'Samantha', 'Fox', 'samantha@fox.usa', 1, '2025-06-01 06:13:37', '2025-06-01 06:14:24', 1),
(21, 'jason.lee@coachhub.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Coach', 'Jason', 'Lee', 'jason.lee@coachhub.kom', 1, '2025-06-01 12:00:00', '2025-06-01 12:00:00', 1),
(22, 'clara.harris@coachhub.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Coach', 'Clara', 'Harris', 'clara.harris@coachhub.kom', 1, '2025-06-01 12:01:00', '2025-06-01 12:01:00', 1),
(23, 'oliver.smith@familyconnect.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Parent', 'Oliver', 'Smith', 'oliver.smith@familyconnect.kom', 1, '2025-06-01 12:02:00', '2025-06-01 12:02:00', 1),
(24, 'sophia.wong@familyconnect.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Parent', 'Sophia', 'Wong', 'sophia.wong@familyconnect.kom', 1, '2025-06-01 12:03:39', '2025-06-01 12:03:39', 1),
(25, 'liam.jackson@familyconnect.kom', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Parent', 'Liam', 'Jackson', 'liam.jackson@familyconnect.kom', 1, '2025-06-01 12:04:50', '2025-06-01 12:04:50', 1),
(26, 'ptwaniga@gmail.com', '$2a$08$vgLfzwby7smpze8mkpree.jVUkwZYnM/kXagjXp177EnhapwlPlSC', 'Manager', 'Pasan', 'Wanigasekara', 'ptwaniga@gmail.com', 1, '2025-06-02 11:47:08', '2025-06-02 17:21:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `userId`, `roleId`) VALUES
('2024-11-01 06:15:31', '2024-11-01 06:15:31', 1, 1),
('2025-01-17 12:39:03', '2025-01-17 12:39:03', 2, 5),
('2025-01-17 12:39:45', '2025-01-17 12:39:45', 3, 6),
('2025-02-03 15:22:25', '2025-02-03 15:22:25', 12, 3),
('2025-02-03 15:25:37', '2025-02-03 15:25:37', 13, 6),
('2025-02-03 15:31:05', '2025-02-03 15:31:05', 14, 5),
('2025-02-05 13:05:35', '2025-02-05 13:05:35', 15, 3),
('2025-02-07 11:38:04', '2025-02-07 11:38:04', 16, 3),
('2025-02-09 19:22:59', '2025-02-09 19:22:59', 17, 6),
('2025-02-21 11:41:10', '2025-02-21 11:41:10', 18, 6),
('2025-02-27 12:20:48', '2025-02-27 12:20:48', 19, 3),
('2025-06-01 06:13:37', '2025-06-01 06:13:37', 20, 6),
('2025-06-02 11:47:08', '2025-06-02 11:47:08', 26, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agecategory`
--
ALTER TABLE `agecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`AttendanceID`),
  ADD KEY `MemberID` (`StudentID`),
  ADD KEY `MarkedBy` (`MarkedBy`),
  ADD KEY `attendance_ibfk_3` (`SessionID`);

--
-- Indexes for table `distance`
--
ALTER TABLE `distance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `distance` (`length`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`LogID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `monthlyattendancearchive`
--
ALTER TABLE `monthlyattendancearchive`
  ADD PRIMARY KEY (`ArchiveID`),
  ADD KEY `MemberID` (`StudentID`),
  ADD KEY `ArchivedBy` (`ArchivedBy`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`PerformanceID`),
  ADD KEY `MemberID` (`StudentID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `RecordedBy` (`RecordedBy`),
  ADD KEY `performance_ibfk_4` (`DistanceID`),
  ADD KEY `performance_ibfk_5` (`SessionID`);

--
-- Indexes for table `refreshTokens`
--
ALTER TABLE `refreshTokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`createdByUser`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `AttendanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `distance`
--
ALTER TABLE `distance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monthlyattendancearchive`
--
ALTER TABLE `monthlyattendancearchive`
  MODIFY `ArchiveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `PerformanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `refreshTokens`
--
ALTER TABLE `refreshTokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10026;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`MarkedBy`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `monthlyattendancearchive`
--
ALTER TABLE `monthlyattendancearchive`
  ADD CONSTRAINT `monthlyattendancearchive_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `monthlyattendancearchive_ibfk_2` FOREIGN KEY (`ArchivedBy`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`DistanceID`) REFERENCES `distance` (`id`),
  ADD CONSTRAINT `performance_ibfk_2` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  ADD CONSTRAINT `performance_ibfk_3` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `performance_ibfk_4` FOREIGN KEY (`RecordedBy`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `performance_ibfk_5` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `refreshTokens`
--
ALTER TABLE `refreshTokens`
  ADD CONSTRAINT `refreshTokens_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`UserID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`ParentID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
