-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2019 at 10:51 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

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
(24, 0, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `ass_reserve_venue`
--

CREATE TABLE `ass_reserve_venue` (
  `formNo` int(11) NOT NULL,
  `venID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ass_reserve_venue`
--

INSERT INTO `ass_reserve_venue` (`formNo`, `venID`) VALUES
(2, 100),
(2, 2019),
(2, 2019),
(2, 0),
(2, 0),
(2, 0),
(2, 3164975),
(2, 1),
(2, 1),
(3, 100),
(3, 2019),
(3, 2019),
(3, 0),
(3, 0),
(3, 0),
(3, 3164975),
(3, 1),
(3, 1),
(4, 100),
(4, 2019),
(4, 2019),
(4, 0),
(4, 0),
(4, 0),
(4, 3164975),
(4, 1),
(4, 1),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'CITC', 'Citc ni');

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
(4, 'Air Con Ni', 'Ulcer', '#model', '123', 'CITC', 'ADADA', 'Electrical', '2015');

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
(0, 'MIC', 'Electrical'),
(0, 'Soundbox', 'Electrical');

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
  `personAtend` int(11) DEFAULT NULL,
  `resBy` int(11) NOT NULL,
  `AppBy` int(11) DEFAULT NULL,
  `dateReq` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_job_request`
--

INSERT INTO `tbl_job_request` (`jobId`, `itemNo`, `workDescript`, `location`, `dateTimeStart`, `dateTimeEnd`, `remark`, `personAtend`, `resBy`, `AppBy`, `dateReq`) VALUES
(1, 4, 'guba ang plaka', 'Bldg 23', NULL, NULL, 'pending', NULL, 1, NULL, '2019-02-11 16:38:19'),
(5, 21, 'sa', 'dadawd', '2019-02-02 00:00:00', '2019-02-08 00:00:00', 'pending', NULL, 1, NULL, '2019-02-13 18:32:50'),
(6, 21, 'sa', 'dadawd', '2019-02-02 00:00:00', '2019-02-08 00:00:00', 'pending', NULL, 1, NULL, '2019-02-13 18:32:54'),
(7, 21, 'sa', 'dadawd', NULL, NULL, 'pending', NULL, 1, NULL, '2019-02-13 18:34:09'),
(8, 21, 'sa', 'dadawd', NULL, NULL, 'pending', NULL, 1, NULL, '2019-02-13 18:34:12'),
(9, 21, 'sa', 'dadawd', NULL, NULL, 'pending', NULL, 1, NULL, '2019-02-13 20:53:57'),
(10, 21, 'sa', 'dadawd', NULL, NULL, 'pending', NULL, 1, NULL, '2019-02-13 21:10:11'),
(11, 4, '212', 'Bldg 23', NULL, NULL, 'pending', NULL, 1, NULL, '2019-02-13 21:11:01'),
(12, 4, '212', 'Bldg 23', NULL, NULL, 'pending', NULL, 1, NULL, '2019-02-13 21:12:11');

--
-- Triggers `tbl_job_request`
--
DELIMITER $$
CREATE TRIGGER `job_req_notify` AFTER INSERT ON `tbl_job_request` FOR EACH ROW INSERT INTO tbl_notification VALUES(NEW.jobId,'job_request',0,1,NEW.resBy)
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
(41, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '::1', 'Chrome 72.0.3626.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Windows 10', '2019-02-14 05:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `ownerNotify` int(11) NOT NULL,
  `adminNotify` int(11) NOT NULL,
  `resBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `type`, `ownerNotify`, `adminNotify`, `resBy`) VALUES
(13, 'event', 0, 1, 1),
(14, 'event', 0, 1, 1),
(5, 'job_request', 0, 1, 1),
(6, 'job_request', 0, 1, 1),
(7, 'job_request', 0, 1, 1),
(8, 'job_request', 0, 1, 1),
(15, 'event', 0, 1, 1),
(16, 'event', 0, 1, 1),
(17, 'event', 0, 1, 1),
(9, 'job_request', 0, 1, 1),
(18, 'event', 0, 1, 1),
(19, 'event', 0, 1, 1),
(21, 'event', 0, 1, 1),
(22, 'event', 0, 1, 1),
(23, 'event', 0, 1, 1),
(10, 'job_request', 0, 1, 1),
(11, 'job_request', 0, 1, 1),
(12, 'job_request', 0, 1, 1),
(24, 'event', 0, 1, 1);

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
  `departmentID` int(11) NOT NULL,
  `venueID` int(11) NOT NULL,
  `resBy` int(11) NOT NULL,
  `conBy` int(11) DEFAULT NULL,
  `dateReq` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reserve_request`
--

INSERT INTO `tbl_reserve_request` (`formNo`, `noParticipant`, `dateActual`, `timeActual`, `dateEnd`, `timeEnd`, `purpose`, `tittleEvent`, `status`, `contactNo`, `departmentID`, `venueID`, `resBy`, `conBy`, `dateReq`) VALUES
(1, 100, '2019-02-01', NULL, '2019-02-14', NULL, 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 0, 1, NULL, '2019-02-10 18:39:05'),
(2, 100, '2019-02-01', NULL, '2019-02-14', NULL, 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 0, 1, NULL, '2019-02-10 18:39:50'),
(3, 100, '2019-02-01', NULL, '2019-02-14', NULL, 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 0, 1, NULL, '2019-02-10 18:40:21'),
(4, 100, '2019-02-16', NULL, '2019-02-05', NULL, 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 0, 1, NULL, '2019-02-10 18:41:54'),
(5, 100, '2019-02-11', NULL, '2019-02-12', NULL, 'wala ko kabalo', 'Tiitle lang ni', 'approve', '03164975', 1, 0, 1, NULL, '2019-02-11 15:50:48'),
(6, 100, '2019-02-11', '11:11:00', '2019-02-12', '11:11:00', 'wala ko kabalo', 'saba', 'pending', '03164975', 1, 0, 1, NULL, '2019-02-11 21:05:03'),
(7, 100, '2019-02-13', '11:11:00', '2019-02-12', '11:11:00', 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 0, 1, NULL, '2019-02-12 05:38:50'),
(8, 100, '2019-02-13', '11:11:00', '2019-02-12', '11:11:00', 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 0, 1, NULL, '2019-02-12 05:45:18'),
(9, 100, '2019-02-13', '11:11:00', '2019-02-15', '11:11:00', 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 1, 1, NULL, '2019-02-12 05:49:19'),
(10, 100, '2019-02-13', '11:11:00', '2019-02-15', '11:11:00', 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 1, 1, NULL, '2019-02-12 05:51:32'),
(13, 2, '2019-02-20', NULL, '2019-02-06', NULL, '21e12', 'e12e', 'e12e', 'e12e1', 1, 1, 1, NULL, '2019-02-13 17:50:44'),
(14, 2, '2019-02-20', NULL, '2019-02-06', NULL, '21e12', 'e12e', 'e12e', 'e12e1', 1, 1, 1, NULL, '2019-02-13 17:50:52'),
(15, 200, '2019-02-15', NULL, '2019-02-16', NULL, 'pag sure', 'tittle', 'pending', '09336', 1, 1, 1, NULL, '2019-02-13 20:49:49'),
(16, 200, '2019-02-15', NULL, '2019-02-16', NULL, 'pag sure', 'tittle', 'pending', '09336', 1, 1, 1, NULL, '2019-02-13 20:50:06'),
(17, 100, '2019-02-15', NULL, '2019-02-16', NULL, 'try agian', 'tittle again', 'pending', '0916994', 1, 1, 1, NULL, '2019-02-13 20:52:23'),
(18, 100, '2019-02-14', NULL, '2019-02-15', NULL, 'pupose', 'tiiitle', 'pending', 'daw', 1, 1, 1, NULL, '2019-02-13 20:55:29'),
(19, 100, '2019-02-14', NULL, '2019-02-15', NULL, 'pupose', 'tiiitle', 'pending', 'daw', 1, 1, 1, NULL, '2019-02-13 20:55:36'),
(21, 100, '2019-02-14', NULL, '2019-02-15', NULL, 'purpose', 'title', 'pending', 'daw', 1, 1, 1, NULL, '2019-02-13 21:03:25'),
(22, 10, '2019-02-22', NULL, '2019-02-16', NULL, 'purpose', 'tiile', 'pending', 'daw', 1, 1, 1, NULL, '2019-02-13 21:05:03'),
(23, 10, '2019-02-22', NULL, '2019-02-16', NULL, 'purpose', 'tiile', 'pending', 'daw', 1, 1, 1, NULL, '2019-02-13 21:05:15'),
(24, 100, '2019-02-22', '10:00:00', '2019-03-22', '10:00:00', 'wala ko kabalo', 'Tiitle lang ni', 'pending', '03164975', 1, 1, 1, NULL, '2019-02-13 21:17:06');

--
-- Triggers `tbl_reserve_request`
--
DELIMITER $$
CREATE TRIGGER `insertNotication` AFTER INSERT ON `tbl_reserve_request` FOR EACH ROW INSERT INTO tbl_notification VALUES(new.formno,'event',0,1,new.resBy)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(2, 'Manager'),
(3, 'Employee');

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
(1, 'admin@example.com', '$2y$10$6NOKhXKiR2SAgpFF2WpCkuRgYKlSqFJaqM0NgIM3PT1gKHEM5/SM6', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'manager@example.com', '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28');

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
(1, '401', 'AVR', 'AVR'),
(2, '501', 'GYM', 'GYM'),
(3, '123', 'wag', 'daw'),
(4, 'd', '12', 'daw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

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
-- Indexes for table `tbl_reserve_request`
--
ALTER TABLE `tbl_reserve_request`
  ADD PRIMARY KEY (`formNo`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `departId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_equipment`
--
ALTER TABLE `tbl_equipment`
  MODIFY `equipId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_job_request`
--
ALTER TABLE `tbl_job_request`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tbl_reserve_request`
--
ALTER TABLE `tbl_reserve_request`
  MODIFY `formNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_venue`
--
ALTER TABLE `tbl_venue`
  MODIFY `venID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;