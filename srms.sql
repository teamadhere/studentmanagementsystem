-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 08:47 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(9, 'First Year Group A', 1, 'A', '2019-10-01 09:03:43', NULL),
(10, 'Second Year CSE', 2, 'A', '2019-10-01 09:04:30', NULL),
(11, 'First Year Group B', 1, 'B', '2019-10-01 09:05:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(6, 'UZAIF SHAIKH', '48', 'test@email.com', 'Male', '2000-10-10', 9, '2019-10-01 09:10:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(4, 1, 2, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(5, 1, 4, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(6, 1, 5, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(8, 4, 4, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(10, 4, 1, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(12, 4, 2, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(13, 4, 5, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(14, 6, 1, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(15, 6, 2, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(16, 6, 4, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(17, 6, 6, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(18, 7, 1, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(19, 7, 7, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(20, 7, 2, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),
(21, 7, 6, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(22, 7, 5, 0, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(23, 8, 1, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(24, 8, 2, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(25, 8, 4, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),
(26, 8, 6, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(27, 8, 5, 0, '2017-08-28 19:22:47', '2017-08-28 19:22:47'),
(28, 9, 11, 1, '2019-10-01 09:08:46', NULL),
(29, 9, 12, 1, '2019-10-01 09:08:50', NULL),
(30, 9, 13, 1, '2019-10-01 09:08:56', NULL),
(31, 9, 14, 0, '2019-10-01 09:09:01', '2019-10-01 09:11:56'),
(32, 9, 14, 1, '2019-10-01 09:09:07', NULL),
(33, 11, 15, 1, '2019-10-01 09:09:13', NULL),
(34, 11, 16, 1, '2019-10-01 09:09:18', NULL),
(35, 11, 17, 1, '2019-10-01 09:09:22', NULL),
(36, 11, 18, 1, '2019-10-01 09:09:26', NULL),
(37, 10, 19, 1, '2019-10-01 09:14:36', NULL),
(38, 10, 23, 1, '2019-10-01 09:14:42', NULL),
(39, 10, 22, 1, '2019-10-01 09:14:47', NULL),
(40, 10, 21, 1, '2019-10-01 09:14:52', NULL),
(41, 10, 20, 1, '2019-10-01 09:14:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(11, 'ENGINEERING MATHEMATICS 1', 'M1', '2019-10-01 09:06:45', NULL),
(12, 'ENGINEERING PHYSICS ', 'EPHY', '2019-10-01 09:07:03', NULL),
(13, 'ENGINEERING MECHANICS', 'EM', '2019-10-01 09:07:14', NULL),
(14, 'ENGINEERING DRAWING', 'ED', '2019-10-01 09:07:29', NULL),
(15, 'ENGINEERING CHEMISTRY', 'ECHEM', '2019-10-01 09:07:51', NULL),
(16, 'COMPUTER PROGRAMMING', 'CP', '2019-10-01 09:07:59', NULL),
(17, 'ELECTRICAL ENGINEERING', 'EE', '2019-10-01 09:08:12', NULL),
(18, 'ENGINEERING MATHEMATICS 2', 'M2', '2019-10-01 09:08:26', NULL),
(19, 'ENGINEERING MATHEMATIC 3', 'M3', '2019-10-01 09:12:53', NULL),
(20, 'DISCREAT STRUCTURE', 'DIS', '2019-10-01 09:13:23', NULL),
(21, 'COMPUTER ORGANATION', 'CO', '2019-10-01 09:13:35', NULL),
(22, 'ELECTRONIC DEVICE & COMPONENT', 'EDC', '2019-10-01 09:13:48', NULL),
(23, 'PROGRAMMING METHODOLOGY', 'PM', '2019-10-01 09:14:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
