-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2019 at 12:11 PM
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
(57, 1, 1, 5);

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
-- Dumping data for table `tbl_job_request`
--

INSERT INTO `tbl_job_request` (`jobId`, `itemNo`, `workDescript`, `location`, `dateTimeStart`, `dateTimeEnd`, `remark`, `description`, `personAtend`, `resBy`, `AppBy`, `dateReq`) VALUES
(1, 4, 'guba ang plaka', 'Bldg 23', NULL, NULL, 'approve', NULL, 3, 1, NULL, '2019-02-11 16:38:19'),
(5, 21, 'sa', 'dadawd', '2019-02-04 00:00:00', '2019-02-14 00:00:00', 'approve', NULL, 9, 1, NULL, '2019-02-13 18:32:50'),
(6, 21, 'sa', '1', '2019-02-28 00:00:00', '2019-02-08 00:00:00', 'disapprove', 'jobrequesti bay', 9, 1, NULL, '2019-02-13 18:32:54'),
(7, 21, 'sa', 'dadawd', NULL, NULL, 'pending', NULL, NULL, 1, NULL, '2019-02-13 18:34:09'),
(8, 21, 'sa', 'dadawd', NULL, NULL, 'pending', NULL, NULL, 1, NULL, '2019-02-13 18:34:12'),
(9, 21, 'sa', 'dadawd', NULL, NULL, 'pending', NULL, NULL, 1, NULL, '2019-02-13 20:53:57'),
(10, 21, 'sa', 'dadawd', '2019-02-04 00:00:00', NULL, 'approve', NULL, 9, 1, NULL, '2019-02-13 21:10:11'),
(11, 4, '212', 'Bldg 23', '2019-02-19 00:00:00', NULL, 'approve', NULL, 9, 1, NULL, '2019-02-13 21:11:01'),
(12, 4, '212', 'Bldg 23', NULL, NULL, 'approve', NULL, 3, 1, NULL, '2019-02-13 21:12:11'),
(13, 21, 'sa', 'BLDG 21', '2019-02-19 00:00:00', NULL, 'approve', NULL, 9, 1, NULL, '2019-02-16 21:27:40'),
(14, 21, 'sa', 'BLDG 21', '2019-02-04 00:00:00', NULL, 'approve', NULL, 9, 1, NULL, '2019-02-16 21:27:46'),
(15, 4, 'work2x', 'Bldg 143', '2019-02-22 00:00:00', '2019-03-01 00:00:00', 'finished', NULL, 9, 11, NULL, '2019-02-17 06:50:16'),
(16, 143, 'sumbagay', 'Bldg 143', '2019-02-06 00:00:00', '2019-03-02 00:00:00', 'finished', NULL, 9, 11, NULL, '2019-02-17 06:51:36'),
(18, 21, 'sa', 'dadawd', NULL, NULL, 'secret', NULL, NULL, 1, NULL, '2019-02-21 16:33:57'),
(21, 143, 'guba', 'Bldg 23', NULL, NULL, 'pending', NULL, NULL, 1, NULL, '2019-02-25 16:58:38'),
(22, 2, 'duha ka bumbelya', '1', NULL, NULL, 'disapprove', 'lain', NULL, 1, NULL, '2019-02-28 09:17:02'),
(23, 2, 'duha ka bumbelya', '1', NULL, NULL, 'pending', NULL, NULL, 1, NULL, '2019-02-28 09:17:02'),
(24, 232, 'guba ang aircon', '2', '2019-03-02 00:00:00', '2019-03-03 00:00:00', 'finished', 's', 16, 2, NULL, '2019-02-28 09:26:07'),
(25, 2, 'done', '3', NULL, NULL, 'pending', NULL, NULL, 1, NULL, '2019-03-01 04:45:50'),
(26, 2, 'ASa', '4', '2019-03-02 00:00:00', '2019-03-05 00:00:00', 'finished', 'edw', 9, 14, NULL, '2019-03-01 08:15:23'),
(27, 2, 'guba ang guba', '7', '2019-03-03 00:00:00', NULL, 'approve', 'okokok', 9, 14, NULL, '2019-03-02 06:50:21'),
(28, 232, 'ahfg', '10', '2019-03-04 00:00:00', NULL, 'approve', 'okok', 16, 14, NULL, '2019-03-02 06:57:15'),
(29, 232, 'guba ang aircon', '5', NULL, NULL, 'pending', NULL, NULL, 1, NULL, '2019-03-02 08:15:13'),
(30, 232, 'cec', '4', '2019-03-04 00:00:00', '2019-03-04 00:00:00', 'finished', 'ayoha', 3, 14, NULL, '2019-03-02 08:16:45'),
(31, 13214, 'try', '7', NULL, '2019-03-03 00:00:00', 'finished', 'dili pwede', NULL, 14, NULL, '2019-03-02 08:43:09'),
(32, 572, 'paayo', '6', NULL, NULL, 'pending', NULL, NULL, 14, NULL, '2019-03-02 08:59:22');

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

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 00:33:33'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 01:48:52'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 01:49:52'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 01:51:27'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 01:53:46'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 01:54:13'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 01:55:40'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 01:56:38'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:00:35'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:01:00'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:02:43'),
(12, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:04:05'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:16:38'),
(14, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:17:48'),
(15, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:37:07'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 02:38:32'),
(17, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 03:31:57'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-09 03:52:03'),
(19, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-10 00:45:43'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-10 01:39:17'),
(21, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-10 01:45:01'),
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-10 06:08:48'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-10 11:22:29'),
(24, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-11 01:32:27'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-11 23:49:26'),
(26, 3, '{\"role\":\"3\",\"roleText\":\"Employee\",\"name\":\"Employee\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 00:03:50'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 00:05:05'),
(28, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 01:25:04'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 01:37:52'),
(30, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 03:14:50'),
(31, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 03:20:06'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 03:24:02'),
(33, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 03:30:09'),
(34, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 03:32:37'),
(35, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 03:54:29'),
(36, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 07:30:42'),
(37, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-12 13:37:15'),
(38, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-13 07:50:19'),
(39, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 71.0.3578.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Windows 10', '2019-02-13 22:22:47'),
(40, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 04:36:40'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 05:30:04'),
(42, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 06:02:04'),
(43, 3, '{\"role\":\"3\",\"roleText\":\"Faculty\",\"name\":\"Employee\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 06:20:51'),
(44, 2, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Manager\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 06:23:23'),
(45, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 06:38:41'),
(46, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 06:41:41'),
(47, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 10:08:31'),
(48, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 14:47:05'),
(49, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-14 16:51:59'),
(50, 9, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Joshua Brian Perater\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-14 17:19:47'),
(51, 3, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Employee\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-14 17:24:45'),
(52, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-14 17:34:51'),
(53, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-15 00:04:53'),
(54, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 00:10:23'),
(55, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 00:20:55'),
(56, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 00:22:13'),
(57, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 00:51:47'),
(58, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 02:46:53'),
(59, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-15 03:20:30'),
(60, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-15 10:55:24'),
(61, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 16:38:35'),
(62, 3, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Employee\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 18:07:03'),
(63, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-15 18:16:20'),
(64, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-16 00:05:23'),
(65, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 00:18:36'),
(66, 9, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Joshua Brian Perater\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 00:29:03'),
(67, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 02:38:58'),
(68, 9, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Joshua Brian Perater\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 02:41:05'),
(69, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 05:18:49'),
(70, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 11:43:43'),
(71, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 14:03:58'),
(72, 10, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Cristyfel Pagutayao\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 14:06:01'),
(73, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-17 14:07:20'),
(74, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 14:49:51'),
(75, 9, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Joshua Brian Perater\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-17 15:12:32'),
(76, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-18 07:23:27'),
(77, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-18 07:29:36'),
(78, 10, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Cristyfel Pagutayao\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-18 10:25:37'),
(79, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-18 10:45:40'),
(80, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2019-02-18 10:52:32'),
(81, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-22 00:13:56'),
(82, 10, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Cristyfel Pagutayao\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-22 01:00:45'),
(83, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-22 01:42:59'),
(84, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Windows 10', '2019-02-26 00:49:44'),
(85, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Firefox 65.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'Windows 10', '2019-02-26 03:07:16'),
(86, 9, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Joshua Brian Perater\"}', '::1', 'Firefox 65.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', 'Windows 10', '2019-02-26 04:30:13'),
(87, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-26 19:43:05'),
(88, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 10:41:19'),
(89, 2, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Ace\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 16:18:24'),
(90, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 17:16:18'),
(91, 13, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Christian H Cat-awan\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 17:19:28'),
(92, 2, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Ace\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 17:25:34'),
(93, 2, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Ace\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 18:55:51'),
(94, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 18:56:11'),
(95, 2, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Ace\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 18:57:59'),
(96, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 20:23:18'),
(97, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-02-28 23:40:30'),
(98, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 11:56:36'),
(99, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 12:09:55'),
(100, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 12:12:37'),
(101, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 12:14:46'),
(102, 2, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Ace\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 12:17:15'),
(103, 10, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Cristyfel Pagutayao\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 12:17:58'),
(104, 11, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Nikkie Eduria\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 13:30:08'),
(105, 13, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Christian H Cat-awan\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 15:10:32'),
(106, 14, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Joshua\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 16:15:10'),
(107, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 16:46:02'),
(108, 3, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Maintenance\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 17:07:03'),
(109, 9, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Joshua Brian Perater\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 17:21:21'),
(110, 13, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Christian H Cat-awan\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-01 17:32:35'),
(111, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-02 14:34:55'),
(112, 13, '{\"role\":\"4\",\"roleText\":\"Student\",\"name\":\"Christian H Cat-awan\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-02 14:42:48'),
(113, 14, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Joshua\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-02 14:50:00'),
(114, 3, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Maintenance\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-02 15:23:18'),
(115, 16, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Christian H Cat-awan\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-02 15:23:43'),
(116, 3, '{\"role\":\"3\",\"roleText\":\"Maintenance Staff\",\"name\":\"Maintenance\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-02 16:16:16'),
(117, 14, '{\"role\":\"2\",\"roleText\":\"Faculty\",\"name\":\"Joshua\"}', '::1', 'Chrome 72.0.3626.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Windows 10', '2019-03-02 16:16:35');

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

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`locID`, `bldgNo`, `roomNo`, `name`) VALUES
(1, '401', '1', 'ICT'),
(2, '9', '101', 'Room1'),
(3, '9', '102', 'Room2'),
(4, '9', '103', 'Room3'),
(5, '9', '104', 'Room4'),
(6, '41', '101', 'Room12'),
(7, '41', '102', 'Room13'),
(8, '41', '103', 'Room14'),
(9, '41', '104', 'Room15'),
(10, '9', '13', 'bldg 8');

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
(23, '1', 'maintenance', 0, 1, 0, 1, '2019-02-28 17:17:02'),
(50, 'Happy Day', 'event', 0, 0, 0, 13, '2019-02-28 17:20:56'),
(24, '2', 'maintenance', 0, 0, 16, 2, '2019-02-28 17:26:07'),
(51, 'Teachers Day', 'event', 0, 0, 0, 2, '2019-02-28 18:29:49'),
(52, 'seminar', 'event', 1, 0, 0, 10, '2019-03-01 12:24:10'),
(53, 'lablab', 'event', 0, 1, 0, 1, '2019-03-01 12:45:32'),
(25, '3', 'maintenance', 0, 1, 0, 1, '2019-03-01 12:45:50'),
(54, 'ambot', 'event', 1, 1, 0, 1, '2019-03-01 14:04:33'),
(55, 'ambot', 'event', 0, 0, 0, 13, '2019-03-01 15:11:21'),
(56, 'ambot', 'event', 0, 0, 0, 13, '2019-03-01 15:33:12'),
(26, '4', 'maintenance', 0, 0, 9, 14, '2019-03-01 16:15:23'),
(57, 'Teachers Day', 'event', 0, 1, 0, 1, '2019-03-01 16:48:44'),
(27, '7', 'maintenance', 0, 0, 9, 14, '2019-03-02 14:50:21'),
(28, '10', 'maintenance', 0, 0, 16, 14, '2019-03-02 14:57:15'),
(29, '5', 'maintenance', 0, 1, 0, 1, '2019-03-02 16:15:13'),
(30, '4', 'maintenance', 0, 0, 3, 14, '2019-03-02 16:16:45'),
(31, '7', 'maintenance', 0, 0, 0, 14, '2019-03-02 16:43:09'),
(32, '6', 'maintenance', 0, 1, 0, 14, '2019-03-02 16:59:22');

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
-- Dumping data for table `tbl_reserve_request`
--

INSERT INTO `tbl_reserve_request` (`formNo`, `noParticipant`, `dateActual`, `timeActual`, `dateEnd`, `timeEnd`, `purpose`, `tittleEvent`, `status`, `contactNo`, `description`, `departmentID`, `venueID`, `resBy`, `conBy`, `dateReq`) VALUES
(49, 5, '2019-02-26', '11:11:00', '2019-02-27', '11:11:00', '11', 'try lang ni', 'approve', '11', NULL, 2, 1, 11, NULL, '2019-02-25 19:09:57'),
(50, 132, '2019-03-02', '02:32:00', '2019-03-02', '21:07:00', 'happy day', 'Happy Day', 'pending', '9975085445', NULL, 7, 2, 13, NULL, '2019-02-28 09:20:56'),
(51, 35343, '2019-03-02', '03:45:00', '2019-03-02', '14:43:00', 'teachers day', 'Teachers Day', 'approve', '9975085445', 'ok', 6, 2, 2, NULL, '2019-02-28 10:29:49'),
(52, 18900, '2019-03-08', '11:00:00', '2019-03-08', '05:00:00', 'mag seminar', 'seminar', 'approve', '0965558868', 'ok', 2, 1, 10, NULL, '2019-03-01 04:24:10'),
(53, 562, '2019-03-07', '07:06:00', '2019-03-08', '08:07:00', 'lablab', 'lablab', 'pending', '9975085445', NULL, 9, 5, 1, NULL, '2019-03-01 04:45:32'),
(54, 2131, '2019-03-02', '12:13:00', '2019-03-03', '16:23:00', 'teachers day', 'ambot', 'approve', '9975085445', 'ok', 2, 3, 1, NULL, '2019-03-01 06:04:33'),
(55, 12, '2019-03-02', '12:00:00', '2019-03-03', '13:00:00', 'tsada', 'ambot', 'approve', '9975085445', 'ok', 2, 1, 13, NULL, '2019-03-01 07:11:21'),
(56, 12, '2019-03-03', '15:45:00', '2019-03-03', '21:00:00', 'tsada', 'ambot', 'approve', '9975085445', 'ok', 2, 1, 13, NULL, '2019-03-01 07:33:12'),
(57, 122, '2019-03-02', '02:33:00', '2019-03-02', '02:43:00', 'asasdsa', 'Teachers Day', 'pending', '9975085445', NULL, 3, 1, 1, NULL, '2019-03-01 08:48:44');

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
  `roleId` tinyint(4) NOT NULL COMMENT 'roleId',
  `role` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'role text'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'Admin'),
(2, 'Faculty'),
(3, 'Student'),
(4, 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT 'Login Email',
  `password` varchar(128) CHARACTER SET utf8 NOT NULL COMMENT 'Login Password',
  `name` varchar(128) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Full Name of User',
  `mobile` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1', 'Administrator', '09975085545', 1, 0, 1, '2019-03-02 06:53:00', NULL, NULL),
(2, 'student@example.com', '12', 'Christian H. Cat-awan', '09967026951', 3, 0, 1, '2019-03-02 07:00:00', NULL, NULL);

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
  MODIFY `departId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_equipment`
--
ALTER TABLE `tbl_equipment`
  MODIFY `equipId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_event_equip`
--
ALTER TABLE `tbl_event_equip`
  MODIFY `equipId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_job_request`
--
ALTER TABLE `tbl_job_request`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `locID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_reserve_request`
--
ALTER TABLE `tbl_reserve_request`
  MODIFY `formNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'roleId', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_venue`
--
ALTER TABLE `tbl_venue`
  MODIFY `venID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_equipment_history`
--
ALTER TABLE `tbl_equipment_history`
  ADD CONSTRAINT `tbl_equipment_history_ibfk_1` FOREIGN KEY (`equipId`) REFERENCES `tbl_equipment` (`equipId`) ON DELETE CASCADE ON UPDATE CASCADE;

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
