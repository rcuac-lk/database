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
-- Generation Time: Jun 07, 2025 at 04:12 AM
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
(1,33),
(2, 50),
(3, 100),
(4, 200),
(5, 400);

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

-- --------------------------------------------------------

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
(1, 'Guest', '2025-06-07 11:14:31', '2025-06-07 11:14:31'),
(2, 'Admin', '2025-06-07 11:14:31', '2025-06-07 11:14:31'),
(3, 'Parent', '2025-06-07 11:14:31', '2025-06-07 11:14:31'),
(4, 'Coach', '2025-06-07 11:14:31', '2025-06-07 11:14:31'),
(5, 'Manager', '2025-06-07 11:14:31', '2025-06-07 11:14:31');

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
(1, 'Royal - Weekend', 'Only holidays', 1),
(2, 'Royal - Morning', 'Regular', 1),
(3, 'Royal - Evening', 'Regular', 1),
(4, 'Sugathadasa - 2024', 'Annual', 1);

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
(1, 'admin@rcuac.lk', '$2a$08$KWr42nwevK/TbghUdX0NiO/TYCnYF2Aq6ZgfKpuMg.3oGVwqSine2', 'Admin', 'Admin', 'User', 'vipulasrilanka@gmail.com', 1, '2025-06-07 11:14:31', '2025-06-07 11:14:31', 1);

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
('2025-06-07 11:14:31', '2025-06-07 11:14:31', 1, 1);

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
  MODIFY `AttendanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

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


