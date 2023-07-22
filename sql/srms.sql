-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 06:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-07-21 21:00:47');
(2, 'jay', 'ec75eb3618ba2cc0b109a72e67d0b6dc', '2023-07-21 21:00:47');

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
(1, 'First SEM', 1, 'A', '2023-07-21 21:00:47', '2023-07-21 21:00:47'),
(2, 'Second SEM', 2, 'B', '2023-07-21 21:00:47', '2023-07-21 21:00:47'),
(4, 'Third SEM', 3, 'B', '2023-07-21 21:00:47', '2023-07-21 21:00:47'),
(5, 'Fourth SEM', 4, 'C', '2023-07-21 21:00:47', '2023-07-21 21:00:47'),
(6, 'Fifth SEM', 5, 'C', '2023-07-21 21:00:47', '2023-07-21 21:00:47'),
(7, 'Sixth SEM', 6, 'A', '2023-07-21 21:00:47', '2023-07-21 21:00:47'),
(8, 'Seventh SEM', 7, 'A', '2023-07-21 21:00:47', '2023-07-21 21:00:47'),
(9, 'Eighth SEM', 8, 'B', '2023-07-21 21:00:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(2, 'Notice regarding result Delearation', 'Hereby, It is noticed that all ongoing semester results has been declared. All are advised to do check the result of corresponding classes.', '2023-07-21 21:00:47'),
(3, 'Test Notice', 'This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  ', '2023-07-21 21:00:47');

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

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 83, 101, 1010, 100, '2023-07-21 21:00:47', NULL),
(3, 83, 101, 1011, 80, '2023-07-21 21:00:47', NULL),
(4, 83, 101, 1012, 78, '2023-07-21 21:00:47', NULL),
(5, 83, 101, 1013, 60, '2023-07-21 21:00:47', NULL),
(6, 84, 102, 1010, 90, '2023-07-21 21:00:47', NULL),
(7, 84, 102, 1011, 75, '2023-07-21 21:00:47', NULL),
(8, 84, 102, 1012, 56, '2023-07-21 21:00:47', NULL),
(9, 84, 102, 1014, 80, '2023-07-21 21:00:47', NULL),
(10, 85, 103, 1010, 54, '2023-07-21 21:00:47', NULL),
(11, 85, 103, 1016, 85, '2023-07-21 21:00:47', NULL),
(12, 85, 103, 1012, 55, '2023-07-21 21:00:47', NULL),
(13, 85, 103, 1014, 65, '2023-07-21 21:00:47', NULL),
(14, 87, 104, 1010, 75, '2023-07-21 21:00:47', NULL),
(15, 87, 104, 1011, 56, '2023-07-21 21:00:47', NULL),
(16, 87, 104, 1015, 52, '2023-07-21 21:00:47', NULL),
(17, 87, 104, 1014, 80, '2023-07-21 21:00:47', NULL),
(18, 91, 105, 1010, 100, '2023-07-21 21:00:47', NULL),
(19, 91, 105, 1011, 92, '2023-07-21 21:00:47', NULL),
(20, 91, 105, 1012, 90, '2023-07-21 21:00:47', NULL),
(21, 91, 105, 1013, 85, '2023-07-21 21:00:47', NULL);

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
(83, 'Deepak Kumar', '20083', 'deepak0083@gmail.com', 'Male', '2003-03-03', 1, '2023-07-21 21:00:47', NULL, 1),
(84, 'Pawan Kumar Singh', '20084', 'pawan0084@gmail.co', 'Male', '2003-02-02', 4, '2023-07-21 21:00:47', NULL, 1),
(85, 'Shivam Kumar Singh', '20085', 'shivam0085@gmail.com', 'Male', '2003-08-06', 6, '2023-07-21 21:00:47', NULL, 1),
(87, 'Gaurav Kumar', '20087', 'gaurav0087@gmail.com', 'Male', '2001-02-03', 7, '2023-07-21 21:00:47', NULL, 1),
(91, 'Jay Narayan', '20091', 'sharma95084@gmail.com', 'Male', '2002-02-03', 8, '2023-07-21 21:00:47', NULL, 1),
(113, 'Anand Kumar', '20013', 'anand0113@gmail.com', 'Male', '2003-01-12', 9, '2023-07-21 21:00:47', NULL, 1);

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
(3, 101, 1010, 1, '2023-07-21 21:00:47', NULL),
(4, 102, 1012, 1, '2023-07-21 21:00:47', NULL),
(5, 103, 1014, 1, '2023-07-21 21:00:47', NULL),
(6, 101, 1011, 1, '2023-07-21 21:00:47', NULL),
(8, 104, 1012, 1, '2023-07-21 21:00:47', NULL),
(10, 103, 1010, 1, '2023-07-21 21:00:47', NULL),
(12, 105, 1013, 1, '2023-07-21 21:00:47', NULL),
(13, 105, 1016, '2023-07-21 21:00:47', NULL),
(14, 106, 1015, 1, '2023-07-21 21:00:47', NULL),
(15, 104, 1012, 1, '2023-07-21 21:00:47', NULL),
(16, 101, 1016, 1, '2023-07-21 21:00:47', NULL),
(17, 103, 1014, 1, '2023-07-21 21:00:47', NULL),
(18, 101, 1011, 1, '2023-07-21 21:00:47', NULL),
(19, 102, 1014, 1, '2023-07-21 21:00:47', NULL),
(20, 101, 1015, 1, '2023-07-21 21:00:47', NULL),
(21, 106, 1010, 1, '2023-07-21 21:00:47', NULL),
(22, 106, 1013, 1, '2023-07-21 21:00:47', NULL),
(23, 105, 1016, 1, '2023-07-21 21:00:47', NULL),
(24, 105, 1010, 1, '2023-07-21 21:00:47', NULL),
(25, 105, 1012, 1, '2023-07-21 21:00:47', NULL),
(26, 102, 1010, 1, '2023-07-21 21:00:47', NULL),

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
(1, 'Web Development', 'WD1010', '2023-07-21 21:00:47', NULL),
(2, 'Advanced Java Programming', 'AJP1011', '2023-07-21 21:00:47', NULL),
(4, 'Advanced Web Services', 'AWS1012', '2023-07-21 21:00:47', NULL),
(5, 'Web Services Using Java', 'WJP1013', '2023-07-21 21:00:47', NULL),
(6, 'Web Programming Using React ', 'WPR1014', '2023-07-21 21:00:47', NULL),
(7, 'Camera Operation', 'CO1015', '2023-07-21 21:00:47', NULL),
(8, 'Product Development', 'PD1016', '2023-07-21 21:00:47', NULL);

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
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
