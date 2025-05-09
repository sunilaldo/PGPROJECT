-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 03:51 AM
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
-- Database: `rtbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 1234596321, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-05-21 18:30:00', 1),
(3, 'Anuj kumar', 'akr305', 1234567891, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-05-21 18:30:00', 0),
(7, 'Sunil Aldo S A', 'sunilaldo', 9791998276, 'aldossinbox@gmail.com', '0016eef2827ac2424d9e96fc40ffc5fb', '2025-05-01 07:12:26', 0),
(8, 'peter parker', 'peter', 9876545687, 'peterparker@gmail.com', '22a6065e9d5cf97004974ab03162e139', '2025-05-03 15:54:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `id` int(11) NOT NULL,
  `bookingNo` bigint(12) DEFAULT NULL,
  `fullName` varchar(200) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `phoneNumber` bigint(12) DEFAULT NULL,
  `bookingDate` date DEFAULT NULL,
  `bookingTime` varchar(100) DEFAULT NULL,
  `noAdults` bigint(20) DEFAULT NULL,
  `noChildrens` bigint(20) DEFAULT NULL,
  `tableId` int(11) DEFAULT NULL,
  `adminremark` varchar(255) DEFAULT NULL,
  `boookingStatus` varchar(15) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`id`, `bookingNo`, `fullName`, `emailId`, `phoneNumber`, `bookingDate`, `bookingTime`, `noAdults`, `noChildrens`, `tableId`, `adminremark`, `boookingStatus`, `postingDate`, `updationDate`) VALUES
(1, 7081250186, 'Anuj Kumar', 'ak@gmail.com', 1425362514, '2023-06-10', '14:00:00', 2, 1, 1, 'Booking accepted', 'Accepted', '2023-05-27 04:34:18', '2023-06-04 03:20:29'),
(2, 323168839, 'Shivani', 'shivani@gmail.com', 4563214520, '2023-06-10', '14:10:00', 4, 1, 3, 'Table booked.', 'Accepted', '2023-05-27 04:35:04', '2023-06-04 17:08:10'),
(3, 4813244763, 'John Doe', 'johndeo@test.com', 7896541230, '2023-06-15', '20:00:00', 3, 1, 0, 'Table not available ', 'Rejected', '2023-05-27 04:35:33', '2023-06-04 17:16:35'),
(4, 2163886205, 'Garima Singh', 'gariam@test.com', 45632145632, '2023-06-24', '15:00:00', 2, 1, 5, 'Table Reserved', 'Accepted', '2023-06-05 00:44:57', '2023-06-05 13:54:10'),
(5, 5275478865, 'nahul', 'nahul@gmail.com', 7894561598, '0000-00-00', '11 : 35 AM', 2, 2, 1, 'I will be reach your location at  10 O clock', 'Accepted', '2025-05-01 07:07:11', '2025-05-01 07:09:04'),
(6, 8931430963, 'Ricky', 'rickyvalen@gmail.com', 7895487456, '0000-00-00', '7 : 00 PM', 3, 2, 6, 'axsas', 'Accepted', '2025-05-01 10:11:22', '2025-05-01 10:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblchef`
--

CREATE TABLE `tblchef` (
  `ID` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `Password` varchar(120) NOT NULL,
  `ChefRegdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UserType` int(1) NOT NULL,
  `ChefUserName` varchar(255) DEFAULT NULL,
  `ChefName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblchef`
--

INSERT INTO `tblchef` (`ID`, `Name`, `Email`, `MobileNumber`, `Password`, `ChefRegdate`, `UserType`, `ChefUserName`, `ChefName`) VALUES
(1, '', 'kumarsingh@gmail.com', 7894856872, '07db0b0c5a4678e58b60348f35a26d8a', '2025-05-03 18:41:57', 0, 'kumar', 'kuamar singh'),
(2, '', 'kamal@gmail.com', 9889547889, 'ea813b56b4af9fd2cf019f958e036625', '2025-05-03 18:43:58', 0, 'kamal', 'kamal hasan');

-- --------------------------------------------------------

--
-- Table structure for table `tblrestables`
--

CREATE TABLE `tblrestables` (
  `id` int(11) NOT NULL,
  `tableNumber` varchar(100) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `AddedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrestables`
--

INSERT INTO `tblrestables` (`id`, `tableNumber`, `creationDate`, `AddedBy`) VALUES
(1, '1', '2023-05-27 03:50:35', 2),
(2, '2', '2023-05-27 03:50:55', 2),
(3, '1A', '2023-05-27 03:51:01', 2),
(4, '3', '2023-05-27 03:51:07', 2),
(5, '3A', '2023-05-27 03:51:11', 2),
(6, '3B', '2023-05-27 03:51:15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobileNumber` varchar(20) DEFAULT NULL,
  `userType` int(11) DEFAULT 1,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `fullName`, `email`, `mobileNumber`, `userType`, `regDate`, `Password`) VALUES
(2, 'gokul', 'gokulboss@gmail.com', '8754215482', 1, '2025-05-03 16:22:57', 'd9ed1aaa3e280607ba178d9b09d520c8'),
(3, 'indhresh', 'indhresh@gmail.com', '9632587412', 1, '2025-05-03 16:57:23', 'f474eac9d25587dc2407a03e4152d093'),
(4, 'indhresh', 'indhresh@gmail.com', '9632587412', 1, '2025-05-03 17:05:49', 'f474eac9d25587dc2407a03e4152d093'),
(5, 'indhresh', 'indhresh@gmail.com', '8754215482', 1, '2025-05-03 17:29:01', 'f474eac9d25587dc2407a03e4152d093');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblchef`
--
ALTER TABLE `tblchef`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `MobileNumber` (`MobileNumber`);

--
-- Indexes for table `tblrestables`
--
ALTER TABLE `tblrestables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblchef`
--
ALTER TABLE `tblchef`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrestables`
--
ALTER TABLE `tblrestables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
