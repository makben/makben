-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 02:50 PM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '16-08-2021 07:02:47 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'E-commerce', 'E-commerce', '2017-03-28 07:10:55', '2019-06-24 07:06:04'),
(2, 'general', 'dsdas', '2017-06-11 10:54:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08'),
(9, 24, 'in process', 'ok', '2021-06-10 11:07:40'),
(10, 24, 'in process', 'god', '2021-08-13 18:49:57'),
(11, 24, 'closed', 'rg', '2021-08-13 18:50:16'),
(12, 25, 'in process', '', '2021-08-15 13:36:23'),
(13, 25, 'closed', '', '2021-08-15 13:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(255) DEFAULT NULL,
  `DepartmentDescription` tinytext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `DepartmentName`, `DepartmentDescription`, `postingDate`, `updationDate`) VALUES
(7, 'Computer science', 'Coded', '2021-08-14 18:44:16', '2021-08-14 18:47:07'),
(8, 'biology', 'uayfg', '2021-08-22 22:03:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `Office` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `departmentid`, `Office`, `creationDate`, `updationDate`) VALUES
(6, 7, 'goj', '2021-08-15 08:15:19', NULL),
(7, 8, 'H.O.D office', '2021-08-22 22:04:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `Office` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `Office`, `complaintType`, `Department`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(24, 2, 1, 'Online Shopping', 'General Query', 'Uttar Pradesh', 'gfsdfbgzsdfb', '', '2021-06-10 11:03:48', 'closed', '2021-08-13 18:50:16'),
(25, 3, 2, '', 'General Query', 'Computer science', 'hi', '', '2021-08-15 13:20:40', 'closed', '2021-08-15 13:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `tech`
--

CREATE TABLE `tech` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech`
--

INSERT INTO `tech` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'kwame', 'kwame@gmail.com', 'eede7de41ce5a5b3d371552f8a2bb84a', 123456789, NULL, NULL, NULL, NULL, NULL, '2021-06-11 12:09:57', '0000-00-00 00:00:00', 1),
(5, 'tech', 'tech@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1122334455, NULL, NULL, NULL, NULL, NULL, '2021-08-22 11:46:45', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `techlog`
--

CREATE TABLE `techlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `techlog`
--

INSERT INTO `techlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-11 12:21:43', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-11 12:22:28', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:00:37', '', 0),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:01:20', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:02:42', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:03:31', '', 0),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:04:01', '', 0),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:04:10', '', 1),
(0, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-12 01:21:20', '', 0),
(0, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-12 01:21:27', '', 0),
(0, 0, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-12 01:21:32', '', 0),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:21:51', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:22:04', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:22:55', '', 0),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:23:03', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-22 19:51:50', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-22 19:52:05', '', 0),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-23 17:21:53', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-23 17:22:02', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-23 17:23:29', '', 1),
(0, 0, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-23 17:23:45', '', 1),
(0, 1, 'kwame@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-23 17:40:46', '', 1),
(0, 0, 'tech', 0x3132372e302e302e3100000000000000, '2021-08-13 19:48:48', '', 0),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 19:49:05', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 19:51:37', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 19:52:04', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 19:55:33', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 19:59:07', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 19:59:38', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 20:01:01', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 20:01:26', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 20:02:02', '', 1),
(0, 0, 'tech', 0x3132372e302e302e3100000000000000, '2021-08-13 20:02:36', '', 0),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 20:02:51', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 20:04:21', '', 1),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 20:05:05', '', 1),
(0, 1, 'kwame@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-13 20:05:21', '', 1),
(0, 0, 'kweku@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-16 14:05:34', '', 0),
(0, 0, 'kweku@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-16 14:05:59', '', 0),
(0, 3, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-16 14:06:13', '', 1),
(0, 4, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-17 09:57:59', '', 1),
(0, 0, 'kweku@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 11:44:31', '', 0),
(0, 0, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 11:44:55', '', 0),
(0, 4, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 11:45:08', '', 1),
(0, 0, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 11:45:59', '', 0),
(0, 0, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 11:46:14', '', 0),
(0, 4, 'tech@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 11:47:01', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-28 17:04:36', '', 1),
(2, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-29 15:02:26', '', 1),
(3, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-30 14:58:00', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2017-03-31 17:39:07', '', 0),
(5, 0, 'dwerwer', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:22', '', 0),
(6, 0, 'ffert', 0x3a3a3100000000000000000000000000, '2017-03-31 17:41:29', '', 0),
(7, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:42:12', '', 0),
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:51', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2017-03-31 17:47:54', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2017-03-31 17:48:11', '', 0),
(11, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-31 17:49:25', '', 1),
(12, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:52:35', '02-04-2017 12:24:41 AM', 1),
(13, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 18:58:09', '02-04-2017 12:50:42 AM', 1),
(14, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-01 19:38:15', '02-04-2017 01:08:19 AM', 1),
(15, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:20', '', 0),
(16, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-04-02 18:50:28', '03-04-2017 12:26:50 AM', 1),
(17, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-05-02 18:01:26', '', 1),
(18, 0, 'test@gm.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:48:50', '', 0),
(19, 5, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2017-06-11 10:56:30', '11-06-2017 04:39:15 PM', 1),
(20, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:13:28', '11-06-2017 04:45:46 PM', 1),
(21, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2017-06-11 11:19:45', '11-06-2017 04:50:02 PM', 1),
(22, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-05-24 18:26:07', '', 1),
(23, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:22', '', 0),
(24, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:05:32', '', 0),
(25, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2018-09-05 17:07:12', '', 1),
(26, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-24 10:27:30', '24-06-2019 04:11:08 PM', 1),
(27, 2, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-09 06:37:12', '', 1),
(28, 0, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-10 10:30:55', '', 0),
(29, 2, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-10 10:31:08', '10-06-2021 06:43:33 PM', 1),
(30, 0, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-10 18:45:38', '', 0),
(31, 2, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-10 18:45:47', '11-06-2021 12:17:45 AM', 1),
(32, 2, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-11 11:30:35', '', 1),
(33, 2, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:01:56', '', 1),
(34, 2, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 01:24:31', '', 1),
(35, 2, 'mole@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-15 08:46:36', '', 1),
(36, 0, 'kweku@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-14 18:13:01', '', 0),
(37, 3, 'user@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-14 18:13:51', '', 1),
(38, 0, 'kweku@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-16 13:32:16', '', 0),
(39, 0, 'user@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-16 13:34:59', '', 0),
(40, 3, 'user@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-16 13:35:14', '16-08-2021 07:16:38 PM', 1),
(41, 3, 'user@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-16 13:46:55', '16-08-2021 07:26:17 PM', 1),
(42, 0, 'user@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 22:04:37', '', 0),
(43, 3, 'user@gmail.com', 0x3132372e302e302e3100000000000000, '2021-08-22 22:05:16', '23-08-2021 03:36:50 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(4, 'user', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 1234567890, NULL, NULL, NULL, NULL, '2021-08-22 22:05:08', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `tech`
--
ALTER TABLE `tech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tech`
--
ALTER TABLE `tech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
