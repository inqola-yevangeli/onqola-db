-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 06:17 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inqola`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresss`
--

CREATE TABLE `addresss` (
  `addressID` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `zipCode` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresss`
--

INSERT INTO `addresss` (`addressID`, `country`, `street`, `city`, `province`, `zipCode`) VALUES
(14, 'SA', 'ghghjgh', 'gygygy', 'KZN', 6565656),
(15, 'USA', 'hhjhj', 'ghghghg', 'New York', 67676767),
(16, 'Rusia', 'oioioioUUYUYUYtytyty', 'tytytty', 'RJ', 65656565),
(17, 'SA', 'Mangosuthu Highway 16563', 'Durban', 'KZN', 4001),
(18, 'Saudi Arabia', 'Mangosuthu Highway 16563', 'Durban', 'KZN', 4001),
(24, 'Saudi Arabia', 'Odade Road 16563', 'Ukraine', 'KZN', 4001),
(25, 'Saudi Arabia', 'Odade Road 16563', 'Ukraine', 'KZN', 4001),
(26, 'Saudi Arabia', 'Odade Road 16563', 'Ukraine', 'KZN', 4001),
(27, 'Saudi Arabia', 'Odade Road 16563', 'Ukraine', 'KZN', 4001),
(28, 'Saudi Arabia', 'Mangosuthu Highway 1656378', 'Durban', 'KZN', 4001),
(32, 'South Africa', 'MUT Highway 878', 'Durban', 'KZN', 4001),
(34, 'South Africa', 'MUT Highway 878', 'Durban', 'KZN', 4001),
(35, 'South Africa', 'MUT Highway 878', 'Durban', 'KZN', 4001),
(36, 'Saudi Arabia', 'Mangosuthu Highway 16563', 'Durban', 'KZN', 4001),
(37, 'Saudi Africa', 'Mangosuthu Highway 1656378', 'Durban', 'KZN', 4001);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcementID` int(11) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `branchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcementID`, `message`, `date`, `time`, `branchID`) VALUES
(1, 'Hello', '2022-06-25', '11:51:34', 1),
(2, 'Sure', '2022-06-25', '11:53:29', 3),
(3, 'Odade', '2022-06-25', '11:56:01', 4);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchID` int(11) NOT NULL,
  `branchName` varchar(100) NOT NULL,
  `addressID` varchar(1000) NOT NULL,
  `userID` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchID`, `branchName`, `addressID`, `userID`) VALUES
(14, 'Siyanda Syanda', '36', '2'),
(15, 'New Branch', '37', '3');

-- --------------------------------------------------------

--
-- Table structure for table `churchservice`
--

CREATE TABLE `churchservice` (
  `serviceID` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `link` varchar(5000) NOT NULL,
  `branchID` int(11) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `churchservice`
--

INSERT INTO `churchservice` (`serviceID`, `date`, `time`, `link`, `branchID`, `description`) VALUES
(1, '05/05/2022', '13:40', 'https:zoom-service010.com', 1, 'Service 1'),
(2, '06/05/2022', '13:40', 'https:zoom-service01067.com', 1, 'Service 2'),
(3, '08/05/2022', '13:40', 'https:zoom-service0101.com', 2, 'Service 3'),
(4, '15/05/2022', '13:40', 'https:zoom-service01098.com', 3, 'Service 4'),
(5, '10/05/2022', '13:40', 'https:zoom-service01.com', 1, 'Service 5'),
(6, '2022-06-25', '11:00', 'jjhj', 14, 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `facultyID` int(11) NOT NULL,
  `facultyName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `graduates`
--

CREATE TABLE `graduates` (
  `gradID` int(11) NOT NULL,
  `school` varchar(1000) NOT NULL,
  `year` int(11) NOT NULL,
  `qualificationID` int(11) NOT NULL,
  `facultyID` int(11) NOT NULL,
  `level` varchar(1000) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leaders`
--

CREATE TABLE `leaders` (
  `leaderID` int(11) NOT NULL,
  `userID` varchar(1000) NOT NULL,
  `branchID` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leadership`
--

CREATE TABLE `leadership` (
  `leaderID` int(11) NOT NULL,
  `roleName` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `membershiprank`
--

CREATE TABLE `membershiprank` (
  `rankID` int(11) NOT NULL,
  `rank` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membershiprank`
--

INSERT INTO `membershiprank` (`rankID`, `rank`) VALUES
(1, 'Brother or Sister'),
(2, 'Deacons or Mother Deacons'),
(3, 'Priest or Mother Priest'),
(4, 'Community Elder or Mother Community Elder'),
(5, 'District Elder or Mother District Elder'),
(6, 'Overseer or Mother overseer');

-- --------------------------------------------------------

--
-- Table structure for table `membershipstatus`
--

CREATE TABLE `membershipstatus` (
  `statusID` int(50) NOT NULL,
  `statuss` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membershipstatus`
--

INSERT INTO `membershipstatus` (`statusID`, `statuss`) VALUES
(1, 'Testifier'),
(2, 'Sealing Process'),
(3, 'Confirmation'),
(4, 'New Member'),
(5, 'Old Member');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `occupationID` int(11) NOT NULL,
  `occupationName` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`occupationID`, `occupationName`) VALUES
(1, 'Unemployed Members'),
(2, 'School Learners'),
(3, 'University Students'),
(4, 'College Students'),
(5, 'Unemployed Graduates'),
(6, 'Employed Graduates');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qID` int(11) NOT NULL,
  `qName` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `namee` varchar(1000) NOT NULL,
  `surname` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `addressID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `occupationID` int(11) NOT NULL,
  `statusID` int(50) NOT NULL,
  `userID` int(50) NOT NULL,
  `rankID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`namee`, `surname`, `email`, `phoneNo`, `addressID`, `branchID`, `occupationID`, `statusID`, `userID`, `rankID`) VALUES
('Siyanda', 'Ngwane', 'sya@gmail.com', '0987654321', 14, 2, 5, 2, 1, '1'),
('Ntakaso', 'Khubone', 'admin@gmail.com', '0987654321', 15, 4, 4, 2, 2, '3'),
('Siyanda', 'Shozi', 'syandangwane1998@gmail.com', '0987654321', 16, 1, 6, 4, 3, '2'),
('Siyanda', 'Mchunu', 'syandangwane1998@gmail.com', '0987654321', 17, 2, 3, 2, 4, '2'),
('Siyanda Syanda', 'Ngwane', 'syanda1@gmail.com', '0987654321', 18, 2, 2, 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `loginID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwords` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`loginID`, `userID`, `email`, `passwords`) VALUES
(1, 1, 'sya@gmail.com', '12345'),
(2, 2, 'admin@gmail.com', '12345'),
(3, 3, 'syandangwane1998@gmail.com', '11111'),
(4, 4, 'syandangwane1998@gmail.com', '123456'),
(5, 5, 'syanda1@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videoID` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `serviceID` varchar(50) NOT NULL,
  `location` varchar(500) NOT NULL,
  `description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videoID`, `date`, `time`, `serviceID`, `location`, `description`) VALUES
(1, '', '', '', 'videos/5feb4cbc04bc7daf863d247b3be9c53d.mp4', 'Hello'),
(2, '2022/06/15', '09:57:39pm', '', 'videos/6dd006a1993ff8be952990cf2684b4bb.mp4', 'Hi'),
(3, '2022/06/15', '10:27:42pm', '08/05/2022', 'videos/29f8d3afa8ff6c34a4e30f8a4ddb0b34.mp4', 'Hello'),
(4, '2022/06/15', '11:36:38pm', '2', 'videos/270ac22b06dcefe5474955e605f35f25.mp4', 'Sure'),
(6, '2022/06/25', '03:07:49pm', '2', 'videos/1b67ab3cfb8889a89d30bb62f085d019.mp4', 'Hello'),
(7, '2022/06/25', '03:45:50pm', '', 'videos/1b67ab3cfb8889a89d30bb62f085d019.mp4', 'hhjhj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresss`
--
ALTER TABLE `addresss`
  ADD PRIMARY KEY (`addressID`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcementID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchID`);

--
-- Indexes for table `churchservice`
--
ALTER TABLE `churchservice`
  ADD PRIMARY KEY (`serviceID`);

--
-- Indexes for table `leaders`
--
ALTER TABLE `leaders`
  ADD PRIMARY KEY (`leaderID`);

--
-- Indexes for table `membershiprank`
--
ALTER TABLE `membershiprank`
  ADD PRIMARY KEY (`rankID`);

--
-- Indexes for table `membershipstatus`
--
ALTER TABLE `membershipstatus`
  ADD PRIMARY KEY (`statusID`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`occupationID`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`loginID`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresss`
--
ALTER TABLE `addresss`
  MODIFY `addressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `churchservice`
--
ALTER TABLE `churchservice`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `leaderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membershiprank`
--
ALTER TABLE `membershiprank`
  MODIFY `rankID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `membershipstatus`
--
ALTER TABLE `membershipstatus`
  MODIFY `statusID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `occupationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `userID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

