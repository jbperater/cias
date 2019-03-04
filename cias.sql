-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 11:00 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cias`
--

-- --------------------------------------------------------

--
-- Table structure for table `ass_reserve_equip_need`
--

CREATE TABLE `ass_reserve_equip_need` (
  `formNo` int(11) NOT NULL,
  `equipId` int(11) NOT NULL,
  `tableNo` int(11) DEFAULT NULL,
  `chairNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ass_reserve_equip_need`
--

INSERT INTO `ass_reserve_equip_need` (`formNo`, `equipId`, `tableNo`, `chairNo`) VALUES
(0, 100, 100, 100),
(0, 2019, 100, 100),
(0, 2019, 100, 100),
(0, 0, 100, 100),
(0, 0, 100, 100),
(0, 0, 100, 100),
(0, 3164975, 100, 100),
(0, 1, 100, 100),
(0, 1, 100, 100),
(3, 100, 100, 100),
(3, 2019, 100, 100),
(3, 2019, 100, 100),
(3, 0, 100, 100),
(3, 0, 100, 100),
(3, 0, 100, 100),
(3, 3164975, 100, 100),
(3, 1, 100, 100),
(3, 1, 100, 100),
(4, 100, 100, 100),
(4, 2019, 100, 100),
(4, 2019, 100, 100),
(4, 0, 100, 100),
(4, 0, 100, 100),
(4, 0, 100, 100),
(4, 3164975, 100, 100),
(4, 1, 100, 100),
(4, 1, 100, 100),
(5, 0, 100, 100),
(5, 0, 100, 100),
(6, 0, 100, 100),
(6, 0, 100, 100),
(7, 0, 100, 100),
(7, 0, 100, 100),
(8, 0, 100, 100),
(8, 0, 100, 100),
(9, 0, 100, 100),
(9, 0, 100, 100),
(10, 0, 100, 100),
(10, 0, 100, 100),
(24, 0, 100, 100),
(24, 0, 100, 100),
(25, 0, 100, 100),
(25, 0, 100, 100),
(37, 0, 100, 100),
(37, 0, 100, 100),
(38, 0, 100, 100),
(38, 0, 100, 100),
(39, 0, 100, 100),
(39, 0, 100, 100),
(40, 0, 100, 100),
(40, 0, 100, 100),
(41, 0, 100, 100),
(41, 0, 100, 100),
(42, 0, 100, 100),
(42, 0, 100, 100),
(43, 0, 100, 100),
(43, 0, 100, 100),
(44, 0, 100, 100),
(44, 0, 100, 100),
(45, 0, 100, 100),
(45, 0, 100, 100),
(46, 0, 100, 100),
(46, 0, 100, 100),
(47, 1, 100, 100),
(48, 1, 100, 100),
(48, 2, 100, 100),
(49, 1, 12, 12),
(50, 2, 10, 323),
(50, 4, 10, 323),
(51, 1, 12, 12121),
(51, 2, 12, 12121),
(51, 3, 12, 12121),
(51, 4, 12, 12121),
(52, 1, 5, 5),
(53, 1, 10, 5),
(53, 2, 10, 5),
(54, 1, 2, 2),
(55, 1, 1, 1),
(56, 1, 1, 1),
(57, 1, 1, 5),
(58, 1, 132, 324),
(58, 2, 132, 324),
(59, 1, 24, 342),
(59, 2, 24, 342),
(60, 1, 12, 123),
(60, 2, 12, 123),
(61, 1, 12, 342),
(61, 2, 12, 342),
(62, 1, 12, 10),
(62, 2, 12, 10),
(63, 1, 112, 21312),
(63, 2, 112, 21312);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `departId` int(11) NOT NULL,
  `acroname` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`departId`, `acroname`, `name`) VALUES
(2, 'CEA', 'College of Engineering'),
(3, 'CSM', 'College of Science and Mathematics'),
(4, 'CSTE', 'College o Science and Technology Education'),
(5, 'CT', 'College of Technology'),
(6, 'CITC', 'College of Information Technology and Computing'),
(7, 'GS', 'Graduate School'),
(8, 'SO', 'Student Organization'),
(9, 'UA', 'University Administration');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equipment`
--

CREATE TABLE `tbl_equipment` (
  `equipId` int(11) NOT NULL,
  `equipName` varchar(64) NOT NULL,
  `brand` varchar(32) NOT NULL,
  `model` varchar(32) NOT NULL,
  `serialNo` varchar(32) NOT NULL,
  `office` varchar(32) NOT NULL,
  `department` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `yearAcc` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_equipment`
--

INSERT INTO `tbl_equipment` (`equipId`, `equipName`, `brand`, `model`, `serialNo`, `office`, `department`, `type`, `yearAcc`) VALUES
(1, 'AIR CONDITION', 'SUMSUNG', 'COMPACT', '1234', 'CEA', 'CEA', 'Electrical', '2012'),
(2, 'FAN', 'LG', 'wan', '12442', 'CITC', 'CITC', 'MECHANICAL', '2013'),
(3, 'Air Con Ni', 'Ulcer', '#model', '123', 'CITC', 'ADADA', 'Electrical', ''),
(4, 'Air Con Ni', 'Ulcer', '#model', '123', 'CITC', 'ADADA', 'Electrical', '2015'),
(5, 'Water', 'Ulcer', '#model', '123', 'CITC', 'CITC', 'Electrical', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equipment_history`
--

CREATE TABLE `tbl_equipment_history` (
  `equipId` int(11) NOT NULL,
  `dateReq` date NOT NULL,
  `description` varchar(50) NOT NULL,
  `partRep` varchar(50) NOT NULL,
  `dateRep` date NOT NULL,
  `timeRep` time NOT NULL,
  `dateFin` int(11) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `performedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_equipment_history`
--

INSERT INTO `tbl_equipment_history` (`equipId`, `dateReq`, `description`, `partRep`, `dateRep`, `timeRep`, `dateFin`, `remark`, `performedBy`) VALUES
(0, '2019-03-04', 'duha ka bumbelyadsd', 'happy', '2019-03-03', '00:32:00', 0, 'done', 3),
(0, '2019-03-03', 'duha ka bumbelya', 'happy', '2019-03-03', '02:32:00', 0, 'done', 1),
(0, '2019-03-05', 'duha ka bumbelya', 'happy', '2019-03-03', '02:32:00', 0, 'done', 2),
(1, '2019-03-03', 'done', 'happy', '2019-03-04', '03:24:00', 0, 'done', 10),
(1, '2019-03-03', 'done', 'happy', '2019-03-04', '03:24:00', 0, 'done', 10),
(1, '2019-03-03', 'duha ka bumbelya', 'happy', '2019-03-03', '02:32:00', 0, 'done', 10),
(1, '2019-03-03', 'duha ka bumbelya3ewr', 'happy', '2019-03-03', '02:42:00', 0, 'done', 10),
(1, '2019-03-03', 'duha ka bumbelya3ewrfsd', 'happy', '2019-03-03', '02:42:00', 0, 'done', 10),
(1, '2019-03-03', 'duha ka bumbelya3ewrfsdaSA', 'happy', '2019-03-03', '02:42:00', 0, 'done', 10),
(10, '2019-03-03', '5334', 'sdadas', '2019-03-03', '02:43:00', 0, 'done', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_equip`
--

CREATE TABLE `tbl_event_equip` (
  `equipId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_event_equip`
--

INSERT INTO `tbl_event_equip` (`equipId`, `name`, `type`) VALUES
(1, 'Multi-media Data Projector LCD Projector', 'Mechanical'),
(2, 'Sound System', 'Mechanical'),
(3, 'Scoreboard', 'Mechanical'),
(4, 'Microphone', 'Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_request`
--

CREATE TABLE `tbl_job_request` (
  `jobId` int(11) NOT NULL,
  `itemNo` int(11) NOT NULL,
  `workDescript` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `dateTimeStart` datetime DEFAULT NULL,
  `dateTimeEnd` datetime DEFAULT NULL,
  `remark` varchar(50) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `personAtend` int(11) DEFAULT NULL,
  `resBy` int(11) NOT NULL,
  `AppBy` int(11) DEFAULT NULL,
  `dateReq` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_job_request`
--
DELIMITER $$
CREATE TRIGGER `job_req_notify` AFTER INSERT ON `tbl_job_request` FOR EACH ROW INSERT INTO tbl_notification VALUES (new.jobId,new.location,"maintenance",0,1,0,new.resBy,CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `locID` int(11) NOT NULL,
  `bldgNo` varchar(15) NOT NULL,
  `roomNo` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `nofiName` varchar(50) NOT NULL,
  `type` varchar(16) NOT NULL,
  `ownerNotify` int(11) NOT NULL,
  `adminNotify` int(11) NOT NULL,
  `assign` int(11) NOT NULL,
  `resBy` int(11) DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `nofiName`, `type`, `ownerNotify`, `adminNotify`, `assign`, `resBy`, `time`) VALUES
(13, '', 'event', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(14, '', 'event', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(5, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(6, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(7, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(8, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(15, '', 'event', 0, 0, 0, 1, '0000-00-00 00:00:00'),
(16, '', 'event', 0, 0, 0, 1, '0000-00-00 00:00:00'),
(17, '', 'event', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(9, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(18, '', 'event', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(19, '', 'event', 1, 1, 0, 1, '0000-00-00 00:00:00'),
(21, '', 'event', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(22, '', 'event', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(23, '', 'event', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(10, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(11, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(12, '', 'job_request', 0, 1, 0, 1, '0000-00-00 00:00:00'),
(24, '', 'event', 0, 0, 0, 1, '0000-00-00 00:00:00'),
(25, '', 'event', 0, 0, 0, 2, '0000-00-00 00:00:00'),
(36, 'title', 'event', 0, 1, 0, 1, '2019-02-17 00:00:00'),
(37, 'Tiitle lang ni', 'event', 0, 1, 0, 1, '2019-02-17 05:20:02'),
(13, 'BLDG 21', 'maintenance', 0, 1, 9, 1, '2019-02-17 05:27:40'),
(14, 'BLDG 21', 'maintenance', 0, 1, 9, 1, '2019-02-17 05:27:46'),
(38, 'Tiitle lang ni', 'event', 0, 1, 0, 1, '2019-02-17 05:50:12'),
(39, 'Tiitle lang ni', 'event', 0, 1, 0, 1, '2019-02-17 05:56:18'),
(40, 'Tiitle lang ni', 'event', 0, 1, 0, 1, '2019-02-17 05:57:51'),
(41, 'Tiitle lang ni', 'event', 1, 1, 0, 1, '2019-02-17 06:28:30'),
(42, 'Tiitle lang ni', 'event', 1, 1, 0, 1, '2019-02-17 06:30:17'),
(43, 'Tiitle lang ni', 'event', 1, 1, 0, 1, '2019-02-17 06:30:38'),
(44, 'Tiitle lang ni', 'event', 1, 1, 0, 1, '2019-02-17 06:47:42'),
(45, '100', 'event', 1, 0, 0, 10, '2019-02-17 14:06:46'),
(46, '1000', 'event', 0, 0, 0, 10, '2019-02-17 14:19:30'),
(15, 'Bldg 143', 'maintenance', 0, 0, 9, 11, '2019-02-17 14:50:16'),
(16, 'Bldg 143', 'maintenance', 0, 0, 0, 11, '2019-02-17 14:51:36'),
(47, 'Tittle lang', 'event', 0, 0, 0, 11, '2019-02-18 10:49:03'),
(48, 'Event NI', 'event', 1, 1, 0, 1, '2019-02-18 10:58:08'),
(21, 'Bldg 23', 'maintenance', 0, 1, 0, 1, '2019-02-26 00:58:38'),
(49, 'try lang ni', 'event', 0, 0, 0, 11, '2019-02-26 03:09:57'),
(22, '1', 'maintenance', 1, 1, 0, 1, '2019-02-28 17:17:02'),
(23, '1', 'maintenance', 0, 1, 9, 1, '2019-02-28 17:17:02'),
(50, 'Happy Day', 'event', 1, 0, 0, 13, '2019-02-28 17:20:56'),
(24, '2', 'maintenance', 0, 0, 16, 2, '2019-02-28 17:26:07'),
(51, 'Teachers Day', 'event', 0, 0, 0, 2, '2019-02-28 18:29:49'),
(52, 'seminar', 'event', 1, 0, 0, 10, '2019-03-01 12:24:10'),
(53, 'lablab', 'event', 1, 1, 0, 1, '2019-03-01 12:45:32'),
(25, '3', 'maintenance', 0, 1, 9, 1, '2019-03-01 12:45:50'),
(54, 'ambot', 'event', 1, 1, 0, 1, '2019-03-01 14:04:33'),
(55, 'ambot', 'event', 0, 0, 0, 13, '2019-03-01 15:11:21'),
(56, 'ambot', 'event', 0, 0, 0, 13, '2019-03-01 15:33:12'),
(26, '4', 'maintenance', 0, 0, 9, 14, '2019-03-01 16:15:23'),
(57, 'Teachers Day', 'event', 1, 1, 0, 1, '2019-03-01 16:48:44'),
(27, '7', 'maintenance', 0, 0, 9, 14, '2019-03-02 14:50:21'),
(28, '10', 'maintenance', 0, 0, 16, 14, '2019-03-02 14:57:15'),
(29, '5', 'maintenance', 0, 1, 10, 1, '2019-03-02 16:15:13'),
(30, '4', 'maintenance', 0, 0, 3, 14, '2019-03-02 16:16:45'),
(31, '7', 'maintenance', 0, 0, 0, 14, '2019-03-02 16:43:09'),
(32, '6', 'maintenance', 0, 0, 0, 14, '2019-03-02 16:59:22'),
(33, '3', 'maintenance', 0, 1, 10, 1, '2019-03-02 19:56:33'),
(34, '5', 'maintenance', 0, 0, 9, 2, '2019-03-03 01:49:09'),
(58, 'jkdksdgf', 'event', 1, 1, 0, 1, '2019-03-03 11:41:35'),
(35, '4', 'maintenance', 0, 1, 10, 1, '2019-03-03 11:42:39'),
(59, 'hhahahaha day', 'event', 0, 0, 0, 3, '2019-03-04 12:37:04'),
(36, '4', 'maintenance', 0, 0, 10, 11, '2019-03-04 12:53:31'),
(37, '5', 'maintenance', 0, 0, 10, 11, '2019-03-04 14:54:13'),
(60, 'sdafsaf', 'event', 0, 0, 0, 11, '2019-03-04 15:11:40'),
(38, '3', 'maintenance', 0, 0, 13, 11, '2019-03-04 15:13:36'),
(61, 'Teachers Day', 'event', 0, 1, 0, 1, '2019-03-04 16:44:29'),
(62, 'wfwf', 'event', 0, 1, 0, 1, '2019-03-04 16:50:00'),
(39, '4', 'maintenance', 0, 1, 0, 1, '2019-03-04 16:51:22'),
(63, 'ambotwsds', 'event', 0, 0, 0, 3, '2019-03-04 17:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reserve_request`
--

CREATE TABLE `tbl_reserve_request` (
  `formNo` int(11) NOT NULL,
  `noParticipant` int(11) NOT NULL,
  `dateActual` date NOT NULL,
  `timeActual` time DEFAULT NULL,
  `dateEnd` date NOT NULL,
  `timeEnd` time DEFAULT NULL,
  `purpose` varchar(64) NOT NULL,
  `tittleEvent` varchar(64) NOT NULL,
  `status` varchar(32) NOT NULL,
  `contactNo` varchar(32) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `departmentID` int(11) NOT NULL,
  `venueID` int(11) NOT NULL,
  `resBy` int(11) NOT NULL,
  `conBy` int(11) DEFAULT NULL,
  `dateReq` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tbl_reserve_request`
--
DELIMITER $$
CREATE TRIGGER `insertNotify` AFTER INSERT ON `tbl_reserve_request` FOR EACH ROW INSERT INTO tbl_notification VALUES (new.formNo,new.tittleEvent,"event",0,1,0,new.resBy,CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Faculty'),
(3, 'Maintenance Staff'),
(4, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'student1@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Ace', '9890098900', 4, 0, 1, '2016-12-09 17:49:56', 1, '2019-03-03 08:29:30'),
(3, 'student@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Christian H Cat-awan', '9975085445', 4, 0, 1, '2016-12-09 17:50:22', 1, '2019-03-03 08:29:04'),
(9, 'maintenance1@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Joshua Brian Perater', '0000000000', 3, 0, 1, '2019-02-14 10:19:19', 1, '2019-03-03 08:30:38'),
(10, 'maintenance@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Cristyfel Pagutayao', '0000000000', 3, 0, 1, '2019-02-17 07:05:38', 1, '2019-03-03 10:50:13'),
(11, 'faculty@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Nikkie Eduria', '1000000000', 2, 0, 1, '2019-02-17 07:47:07', 1, '2019-03-03 08:30:03'),
(12, 'staff@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Naruto', '0000000000', 2, 0, 1, '2019-02-26 12:53:01', 1, '2019-03-03 08:29:46'),
(15, 'chrischan.cca@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Christian H Cat-awan', '9975085445', 1, 0, 1, '2019-03-04 10:15:45', NULL, NULL),
(14, 'admin2@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Allan Rodorocio', '9975085445', 1, 0, 1, '2019-03-04 10:13:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_venue`
--

CREATE TABLE `tbl_venue` (
  `venID` int(11) NOT NULL,
  `bldgNo` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_venue`
--

INSERT INTO `tbl_venue` (`venID`, `bldgNo`, `name`, `type`) VALUES
(1, '401', 'AVR1', 'AVR'),
(2, '501', 'GYM', 'GYM'),
(3, '123', 'AVR2', 'AVR'),
(4, '3', 'AVR3', 'AVR'),
(5, '123', 'PAT', 'AVR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`departId`);

--
-- Indexes for table `tbl_equipment`
--
ALTER TABLE `tbl_equipment`
  ADD PRIMARY KEY (`equipId`);

--
-- Indexes for table `tbl_equipment_history`
--
ALTER TABLE `tbl_equipment_history`
  ADD KEY `equipId` (`equipId`);

--
-- Indexes for table `tbl_event_equip`
--
ALTER TABLE `tbl_event_equip`
  ADD PRIMARY KEY (`equipId`);

--
-- Indexes for table `tbl_job_request`
--
ALTER TABLE `tbl_job_request`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`locID`);

--
-- Indexes for table `tbl_reserve_request`
--
ALTER TABLE `tbl_reserve_request`
  ADD PRIMARY KEY (`formNo`),
  ADD KEY `departmentID` (`departmentID`),
  ADD KEY `venueID` (`venueID`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_venue`
--
ALTER TABLE `tbl_venue`
  ADD PRIMARY KEY (`venID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `departId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_equipment`
--
ALTER TABLE `tbl_equipment`
  MODIFY `equipId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_event_equip`
--
ALTER TABLE `tbl_event_equip`
  MODIFY `equipId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_job_request`
--
ALTER TABLE `tbl_job_request`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `locID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_reserve_request`
--
ALTER TABLE `tbl_reserve_request`
  MODIFY `formNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_venue`
--
ALTER TABLE `tbl_venue`
  MODIFY `venID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_reserve_request`
--
ALTER TABLE `tbl_reserve_request`
  ADD CONSTRAINT `tbl_reserve_request_ibfk_1` FOREIGN KEY (`departmentID`) REFERENCES `tbl_department` (`departId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_reserve_request_ibfk_2` FOREIGN KEY (`venueID`) REFERENCES `tbl_venue` (`venID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
