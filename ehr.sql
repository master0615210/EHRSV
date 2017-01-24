-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2016 at 02:20 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.12-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehr`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_problems`
--

CREATE TABLE `active_problems` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_problems`
--

INSERT INTO `active_problems` (`id`, `patient_id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 353, 'asd', '2016-10-10 09:24:10', '0000-00-00 00:00:00', 1),
(2, 16, 'Regular coughing', '2016-10-10 09:52:55', '0000-00-00 00:00:00', 1),
(3, 9, 'asd', '2016-10-10 18:04:00', '0000-00-00 00:00:00', 1),
(4, 3, 'Continuous coughing', '2016-10-13 11:45:42', '0000-00-00 00:00:00', 1),
(5, 3, 'Itching', '2016-10-13 11:45:48', '0000-00-00 00:00:00', 1),
(6, 2, 'Hypertension and Diabeties', '2016-10-24 14:57:59', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `pick_date` date NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `doctor_id` int(40) NOT NULL,
  `other_reasons` varchar(50) NOT NULL,
  `priority` varchar(50) NOT NULL,
  `appointment_status` enum('missed','attended','pending') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `department_id`, `reason`, `pick_date`, `start_time`, `notes`, `doctor_id`, `other_reasons`, `priority`, `appointment_status`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 2, '', '2016-10-28', '8:00 AM', '', 2, 'NA', '', 'pending', '2016-10-19 07:52:18', '2016-10-20 07:13:31', 0),
(2, 3, 1, '', '2016-10-20', '7:00 AM', '', 1, 'Regular Checkup', '', 'pending', '2016-10-20 07:00:08', '2016-10-20 07:13:29', 0),
(3, 4, 4, '', '2016-10-21', '4:15 PM', '', 2, 'none', '', 'pending', '2016-10-21 12:16:13', '2016-10-21 12:19:25', 0),
(4, 7, 3, '', '2016-10-24', '9:00 AM', '', 1, 'Pain', '', 'pending', '2016-10-21 14:50:36', '2016-10-22 10:43:09', 0),
(5, 3, 9, '', '2016-11-02', '8:00 AM', '', 2, 'Followup', '', 'pending', '2016-10-21 14:53:11', '2016-10-22 11:57:56', 0),
(6, 3, 5, '', '2016-10-24', '7:30 PM', '', 1, 'NA', '', 'pending', '2016-10-23 19:20:49', '0000-00-00 00:00:00', 1),
(7, 7, 8, '', '2016-10-26', '2:45 PM', '', 2, 'NA', '', 'pending', '2016-10-23 19:21:15', '2016-10-24 21:31:05', 1),
(9, 3, 5, '', '2016-10-12', '7:30 PM', '', 2, 'NA', '', 'pending', '2016-10-23 19:22:27', '0000-00-00 00:00:00', 1),
(10, 2, 28, 'Average', '2016-10-28', '3:30 PM', 'GSK', 2, 'REFIL', 'true', 'pending', '2016-10-25 13:30:53', '2016-10-25 17:03:37', 0),
(11, 2, 8, '', '2016-12-06', '7:00 AM', '', 2, 'FOR OBSERVASION', '', 'pending', '2016-10-26 12:50:14', '0000-00-00 00:00:00', 1),
(12, 35, 8, '', '2016-11-07', '1:00 PM', '', 1, 'Follow up', '', 'pending', '2016-10-26 12:50:23', '0000-00-00 00:00:00', 1),
(13, 26, 5, '', '2016-10-31', '1:00 PM', '', 3, 'Follow up', '', 'pending', '2016-10-26 12:50:38', '0000-00-00 00:00:00', 1),
(14, 29, 8, '', '2016-11-24', '10:00 AM', '', 3, 'follow up', '', 'pending', '2016-10-26 12:50:53', '0000-00-00 00:00:00', 1),
(15, 33, 8, '', '2009-10-07', '8:00 AM', '', 2, 'FOLLOW UP', '', 'pending', '2016-10-26 12:51:01', '0000-00-00 00:00:00', 1),
(16, 2, 8, '', '2016-12-06', '7:00 AM', '', 3, 'FOR OBSEVASION', '', 'pending', '2016-10-26 12:51:32', '2016-10-26 14:41:26', 0),
(17, 37, 8, '', '2016-11-09', '8:00 AM', '', 3, 'FOR FOLLOW UP', '', 'pending', '2016-10-26 12:54:01', '0000-00-00 00:00:00', 1),
(18, 34, 5, '', '2016-10-13', '12:45 PM', '', 3, '00899', '', 'pending', '2016-10-26 12:54:05', '0000-00-00 00:00:00', 1),
(19, 49, 5, '', '2016-11-04', '10:00 AM', '', 3, 'Extraction of Molar', '', 'pending', '2016-10-26 12:54:24', '0000-00-00 00:00:00', 1),
(20, 36, 7, '', '2016-10-12', '8:15 AM', '', 3, 'FOR DELIVERY', '', 'pending', '2016-10-26 12:58:25', '0000-00-00 00:00:00', 1),
(21, 43, 1, '', '2016-10-05', '1:00 PM', '', 2, 'follow up', '', 'pending', '2016-10-26 12:58:49', '0000-00-00 00:00:00', 1),
(22, 42, 1, '', '2016-02-02', '1:00 PM', '', 1, 'eye itching', '', 'pending', '2016-10-26 12:58:54', '0000-00-00 00:00:00', 1),
(23, 28, 2, '', '2016-10-11', '1:00 PM', '', 3, 'hnt', '', 'pending', '2016-10-26 13:00:45', '0000-00-00 00:00:00', 1),
(24, 45, 15, '', '2016-10-17', '10:00 AM', '', 2, 'CRD', '', 'pending', '2016-10-26 13:01:46', '0000-00-00 00:00:00', 1),
(25, 47, 6, '', '2010-11-05', '10:00 AM', '', 3, 'FOLLOW-UP', '', 'pending', '2016-10-26 13:43:00', '2016-11-02 15:08:46', 0),
(26, 47, 8, '', '2016-10-31', '3:00 PM', '', 2, 'NA', '', 'pending', '2016-10-27 11:00:54', '2016-11-02 15:08:42', 0),
(27, 28, 1, '', '2016-11-02', '4:30 PM', '', 1, 'None', '', 'pending', '2016-11-02 12:27:18', '2016-11-02 15:08:41', 0),
(28, 1, 5, '', '2016-11-16', '4:00 PM', '', 2, 'aa', '', 'pending', '2016-11-05 11:31:24', '0000-00-00 00:00:00', 1),
(29, 48, 5, '', '2016-11-15', '2:00 PM', '', 1, 'q', '', 'pending', '2016-11-16 09:53:14', '0000-00-00 00:00:00', 1),
(30, 0, 6, '', '2016-11-02', '2:00 PM', '', 2, 'sad', '', 'pending', '2016-11-16 09:54:27', '0000-00-00 00:00:00', 1),
(31, 0, 5, '', '2016-11-02', '2:15 PM', '', 1, '1', '', 'pending', '2016-11-16 10:01:12', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(11) NOT NULL,
  `ward_id` int(3) UNSIGNED ZEROFILL DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `bed_status` enum('available','occupied','closed') NOT NULL DEFAULT 'available',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`id`, `ward_id`, `patient_id`, `bed_status`, `created_at`, `updated_at`, `status`) VALUES
(1, 001, 17, 'occupied', '2016-10-24 15:45:09', '2016-11-07 12:35:47', 1),
(2, 001, 63, 'occupied', '2016-10-24 15:45:09', '2016-11-07 12:36:59', 1),
(3, 001, 1, 'occupied', '2016-10-24 15:45:09', '2016-11-17 16:09:59', 1),
(4, 001, 1, 'occupied', '2016-10-24 15:45:09', '2016-11-17 16:13:51', 1),
(5, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(6, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(7, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(8, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(9, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(10, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(11, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(12, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(13, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(14, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(15, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(16, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(17, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(18, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(19, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(20, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(21, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(22, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(23, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(24, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(25, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(26, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(27, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(28, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(29, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(30, 001, 0, 'available', '2016-10-24 15:45:09', '0000-00-00 00:00:00', 1),
(31, 002, 1, 'occupied', '2016-10-25 01:33:59', '2016-11-17 15:59:55', 1),
(32, 002, 1, 'occupied', '2016-10-25 01:33:59', '2016-11-17 16:11:29', 1),
(33, 002, 0, 'closed', '2016-10-25 01:33:59', '2016-11-02 11:49:37', 1),
(34, 002, 97, 'occupied', '2016-10-25 01:33:59', '2016-11-17 16:16:02', 1),
(35, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(36, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(37, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(38, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(39, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(40, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(41, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(42, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(43, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(44, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(45, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(46, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(47, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(48, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(49, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(50, 002, 0, 'available', '2016-10-25 01:33:59', '0000-00-00 00:00:00', 1),
(81, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(82, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(83, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(84, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(85, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(86, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(87, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(88, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(89, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(90, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(91, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(92, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(93, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(94, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(95, 003, 0, 'available', '2016-10-25 01:39:58', '0000-00-00 00:00:00', 1),
(96, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(97, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(98, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(99, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(100, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(101, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(102, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(103, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(104, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(105, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(106, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(107, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(108, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(109, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(110, 000, 0, 'available', '2016-10-25 01:40:15', '0000-00-00 00:00:00', 1),
(111, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(112, 004, 11, 'occupied', '2016-10-25 01:41:35', '2016-11-18 08:25:42', 1),
(113, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(114, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(115, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(116, 004, 30, 'occupied', '2016-10-25 01:41:35', '2016-10-27 07:54:31', 1),
(117, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(118, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(119, 004, 0, 'available', '2016-10-25 01:41:35', '2016-11-07 11:59:10', 1),
(120, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(121, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(122, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(123, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(124, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1),
(125, 004, 0, 'available', '2016-10-25 01:41:35', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(8) NOT NULL,
  `patient_id` int(100) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `encounter_id` int(100) NOT NULL,
  `bill_status` enum('pending','paid') NOT NULL,
  `bill_purpose` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `patient_id`, `patient_name`, `encounter_id`, `bill_status`, `bill_purpose`, `created_at`, `updated_at`, `purpose`, `status`) VALUES
(1, 1, '', 1, 'paid', 'encounter', '2016-10-17 17:45:23', '2016-11-10 10:42:53', '', 1),
(2, 2, '', 2, 'paid', 'encounter', '2016-10-18 11:20:18', '0000-00-00 00:00:00', '', 1),
(3, 3, '', 3, 'paid', 'encounter', '2016-10-18 18:02:41', '0000-00-00 00:00:00', '', 1),
(4, 4, '', 4, 'paid', 'encounter', '2016-10-20 06:58:39', '0000-00-00 00:00:00', '', 1),
(5, 2, '', 5, 'paid', 'encounter', '2016-10-20 07:18:36', '2016-11-16 09:53:01', '', 1),
(6, 7, '', 6, 'paid', 'encounter', '2016-10-20 07:52:26', '0000-00-00 00:00:00', '', 1),
(7, 4, '', 7, 'paid', 'encounter', '2016-10-21 09:18:35', '2016-11-10 10:25:55', '', 1),
(8, 4, '', 8, 'paid', 'encounter', '2016-10-21 12:28:06', '2016-11-10 10:26:27', '', 1),
(9, 7, '', 9, 'pending', 'encounter', '2016-10-21 13:15:20', '0000-00-00 00:00:00', '', 1),
(10, 1, '', 10, 'paid', 'encounter', '2016-10-21 14:06:44', '2016-11-16 09:57:48', '', 1),
(11, 2, '', 11, 'paid', 'encounter', '2016-10-21 14:34:46', '0000-00-00 00:00:00', '', 1),
(12, 8, '', 12, 'paid', 'encounter', '2016-10-21 14:39:42', '2016-11-16 12:05:28', '', 1),
(13, 5, '', 13, 'pending', 'encounter', '2016-10-21 14:40:50', '0000-00-00 00:00:00', '', 1),
(14, 13, '', 14, 'paid', 'encounter', '2016-10-22 12:33:17', '2016-11-17 11:36:29', '', 1),
(15, 17, '', 15, 'pending', 'encounter', '2016-10-22 12:38:16', '0000-00-00 00:00:00', '', 1),
(16, 12, '', 16, 'pending', 'encounter', '2016-10-22 12:43:31', '0000-00-00 00:00:00', '', 1),
(17, 11, '', 17, 'pending', 'encounter', '2016-10-22 15:37:11', '0000-00-00 00:00:00', '', 1),
(18, 15, '', 18, 'pending', 'encounter', '2016-10-24 12:27:43', '0000-00-00 00:00:00', '', 1),
(19, 3, '', 20, 'pending', 'encounter', '2016-10-25 13:44:22', '0000-00-00 00:00:00', '', 1),
(20, 19, '', 21, 'pending', 'encounter', '2016-10-25 17:42:38', '0000-00-00 00:00:00', '', 1),
(21, 27, '', 22, 'pending', 'encounter', '2016-10-26 11:52:12', '0000-00-00 00:00:00', '', 1),
(22, 19, '', 23, 'pending', 'encounter', '2016-10-26 11:53:33', '0000-00-00 00:00:00', '', 1),
(23, 42, '', 24, 'pending', 'encounter', '2016-10-26 12:01:40', '0000-00-00 00:00:00', '', 1),
(24, 36, '', 25, 'pending', 'encounter', '2016-10-26 12:01:56', '0000-00-00 00:00:00', '', 1),
(25, 30, '', 26, 'pending', 'encounter', '2016-10-26 12:01:57', '0000-00-00 00:00:00', '', 1),
(26, 35, '', 27, 'pending', 'encounter', '2016-10-26 12:02:44', '0000-00-00 00:00:00', '', 1),
(27, 28, '', 28, 'paid', 'encounter', '2016-10-26 12:02:57', '0000-00-00 00:00:00', '', 1),
(28, 40, '', 29, 'pending', 'encounter', '2016-10-26 12:04:50', '0000-00-00 00:00:00', '', 1),
(29, 33, '', 30, 'pending', 'encounter', '2016-10-26 12:05:36', '0000-00-00 00:00:00', '', 1),
(30, 26, '', 31, 'pending', 'encounter', '2016-10-26 12:06:32', '0000-00-00 00:00:00', '', 1),
(31, 3, '', 32, 'pending', 'encounter', '2016-10-26 12:15:02', '0000-00-00 00:00:00', '', 1),
(32, 2, '', 33, 'pending', 'encounter', '2016-10-26 12:22:22', '0000-00-00 00:00:00', '', 1),
(33, 45, '', 34, 'pending', 'encounter', '2016-10-26 12:27:51', '0000-00-00 00:00:00', '', 1),
(34, 28, '', 35, 'pending', 'encounter', '2016-10-26 12:38:05', '0000-00-00 00:00:00', '', 1),
(35, 37, '', 36, 'pending', 'encounter', '2016-10-26 12:38:43', '0000-00-00 00:00:00', '', 1),
(36, 34, '', 37, 'pending', 'encounter', '2016-10-26 12:38:45', '0000-00-00 00:00:00', '', 1),
(37, 49, '', 38, 'pending', 'encounter', '2016-10-26 12:47:58', '0000-00-00 00:00:00', '', 1),
(38, 29, '', 39, 'pending', 'encounter', '2016-10-26 12:48:27', '0000-00-00 00:00:00', '', 1),
(39, 41, '', 40, 'pending', 'encounter', '2016-10-26 12:52:26', '0000-00-00 00:00:00', '', 1),
(40, 43, '', 41, 'paid', 'encounter', '2016-10-26 12:58:18', '2016-11-16 11:51:28', '', 1),
(41, 47, '', 42, 'paid', 'encounter', '2016-10-26 13:39:48', '2016-11-16 09:56:00', '', 1),
(42, 41, '', 43, 'pending', 'encounter', '2016-10-27 11:11:20', '0000-00-00 00:00:00', '', 1),
(43, 45, '', 44, 'pending', 'encounter', '2016-11-02 14:37:13', '0000-00-00 00:00:00', '', 1),
(44, 1, '', 45, 'pending', 'encounter', '2016-11-02 16:53:51', '0000-00-00 00:00:00', '', 1),
(45, 59, '', 46, 'pending', 'encounter', '2016-11-04 09:31:50', '0000-00-00 00:00:00', '', 1),
(46, 1, '', 47, 'pending', 'encounter', '2016-11-04 14:31:27', '0000-00-00 00:00:00', '', 1),
(47, 1, '', 48, 'pending', 'encounter', '2016-11-04 14:36:18', '0000-00-00 00:00:00', '', 1),
(48, 1, '', 49, 'pending', 'encounter', '2016-11-04 14:44:43', '0000-00-00 00:00:00', '', 1),
(49, 1, '', 50, 'pending', 'encounter', '2016-11-04 14:45:48', '0000-00-00 00:00:00', '', 1),
(50, 1, '', 51, 'paid', 'encounter', '2016-11-04 14:47:45', '2016-11-16 12:07:32', '', 1),
(51, 2, '', 52, 'paid', 'encounter', '2016-11-04 18:42:11', '2016-11-16 12:06:25', '', 1),
(52, 59, '', 53, 'pending', 'encounter', '2016-11-04 18:51:20', '0000-00-00 00:00:00', '', 1),
(53, 63, '', 54, 'pending', 'encounter', '2016-11-05 07:27:10', '0000-00-00 00:00:00', '', 1),
(54, 17, '', 55, 'pending', 'encounter', '2016-11-06 04:48:58', '0000-00-00 00:00:00', '', 1),
(55, 21, '', 56, 'pending', 'encounter', '2016-11-07 15:45:33', '0000-00-00 00:00:00', '', 1),
(56, 1, '', 57, 'pending', 'encounter', '2016-11-07 15:48:15', '0000-00-00 00:00:00', '', 1),
(57, 34, '', 58, 'paid', 'encounter', '2016-11-08 08:31:35', '2016-11-10 10:21:58', '', 1),
(58, 34, '', 59, 'pending', 'encounter', '2016-11-08 09:45:45', '0000-00-00 00:00:00', '', 1),
(59, 0, 'Jack', 0, 'paid', 'new_patient', '2016-11-10 12:14:56', '0000-00-00 00:00:00', '', 1),
(60, 0, 'eric banna', 0, 'paid', 'new_patient', '2016-11-10 12:20:16', '0000-00-00 00:00:00', '', 1),
(61, 0, 'abdullah', 0, 'paid', 'new_patient', '2016-11-10 12:22:01', '0000-00-00 00:00:00', '', 1),
(62, 0, 'chris', 0, 'paid', 'new_patient', '2016-11-10 12:23:00', '0000-00-00 00:00:00', '', 1),
(63, 0, 'Younis Khan', 0, 'paid', 'new_patient', '2016-11-11 13:13:33', '0000-00-00 00:00:00', '', 1),
(64, 0, 'sadf', 0, 'paid', 'new_patient', '2016-11-11 13:15:12', '0000-00-00 00:00:00', '', 1),
(65, 0, 'sadfadsf', 0, 'paid', 'new_patient', '2016-11-11 13:15:15', '0000-00-00 00:00:00', '', 1),
(66, 4, '', 60, 'paid', 'encounter', '2016-11-12 19:16:52', '2016-11-16 09:47:24', '', 1),
(67, 29, '', 61, 'pending', 'encounter', '2016-11-14 12:48:01', '0000-00-00 00:00:00', '', 1),
(68, 3, '', 62, 'paid', 'encounter', '2016-11-16 09:15:26', '2016-11-16 11:49:48', '', 1),
(69, 136, '', 63, 'paid', 'encounter', '2016-11-16 09:22:55', '2016-11-16 09:48:28', '', 1),
(70, 0, 'Faryal Anwar', 0, 'paid', 'new_patient', '2016-11-16 09:42:48', '0000-00-00 00:00:00', '', 1),
(71, 0, 'Faryal Anwar', 0, 'paid', 'new_patient', '2016-11-16 09:42:53', '0000-00-00 00:00:00', '', 1),
(72, 0, 'Desmond Kay', 0, 'paid', 'new_patient', '2016-11-16 11:27:32', '0000-00-00 00:00:00', '', 1),
(73, 160, 'Desmond Kay', 0, 'paid', 'new_patient', '2016-11-16 11:27:44', '2016-11-16 11:29:54', '', 1),
(74, 160, '', 64, 'paid', 'encounter', '2016-11-16 11:30:42', '2016-11-17 11:36:44', '', 1),
(75, 148, '', 65, 'pending', 'encounter', '2016-11-16 11:42:53', '0000-00-00 00:00:00', '', 1),
(76, 149, '', 66, 'pending', 'encounter', '2016-11-16 13:08:48', '0000-00-00 00:00:00', '', 1),
(77, 0, 'New patient', 0, 'paid', 'new_patient', '2016-11-16 14:07:49', '0000-00-00 00:00:00', '', 1),
(78, 0, 'Henry Clinton', 0, 'paid', 'new_patient', '2016-11-16 14:09:54', '0000-00-00 00:00:00', '', 1),
(79, 0, 'Darius Hay', 0, 'paid', 'new_patient', '2016-11-17 09:07:33', '0000-00-00 00:00:00', '', 1),
(80, 0, 'Beven Hay', 0, 'paid', 'new_patient', '2016-11-17 09:08:19', '0000-00-00 00:00:00', '', 1),
(81, 161, 'Darius Hay', 0, 'paid', 'new_patient', '2016-11-17 09:08:59', '2016-11-17 11:48:27', '', 1),
(82, 161, '', 67, 'pending', 'encounter', '2016-11-17 11:49:11', '0000-00-00 00:00:00', '', 1),
(83, 0, 'Tesco Lar', 0, 'paid', 'new_patient', '2016-11-17 14:41:14', '0000-00-00 00:00:00', '', 1),
(84, 0, 'Tesco Lar', 0, 'paid', 'new_patient', '2016-11-17 14:41:46', '0000-00-00 00:00:00', '', 1),
(85, 0, 'Tesco Lar', 0, 'paid', 'new_patient', '2016-11-17 14:41:50', '0000-00-00 00:00:00', '', 1),
(86, 0, 'new patient', 0, 'paid', 'new_patient', '2016-11-17 14:45:17', '0000-00-00 00:00:00', '', 1),
(87, 0, 'new patient', 0, 'paid', 'new_patient', '2016-11-17 14:45:48', '0000-00-00 00:00:00', '', 1),
(88, 0, 'new patient', 0, 'paid', 'new_patient', '2016-11-17 14:46:24', '0000-00-00 00:00:00', '', 1),
(89, 0, 'some one', 0, 'paid', 'new_patient', '2016-11-17 14:47:22', '0000-00-00 00:00:00', '', 1),
(90, 0, 'Chris Gayle', 0, 'paid', 'new_patient', '2016-11-17 14:48:03', '0000-00-00 00:00:00', '', 1),
(91, 0, 'Zaidi', 0, 'paid', 'new_patient', '2016-11-17 14:48:14', '0000-00-00 00:00:00', '', 1),
(92, 61, '', 68, 'pending', 'encounter', '2016-11-17 15:20:29', '0000-00-00 00:00:00', '', 1),
(93, 60, '', 69, 'pending', 'encounter', '2016-11-17 15:20:50', '0000-00-00 00:00:00', '', 1),
(94, 97, '', 70, 'pending', 'encounter', '2016-11-17 16:15:49', '0000-00-00 00:00:00', '', 1),
(95, 85, '', 71, 'pending', 'encounter', '2016-11-17 16:17:55', '0000-00-00 00:00:00', '', 1),
(96, 86, '', 72, 'pending', 'encounter', '2016-11-18 08:11:51', '0000-00-00 00:00:00', '', 1),
(97, 11, '', 73, 'pending', 'encounter', '2016-11-18 08:24:19', '0000-00-00 00:00:00', '', 1),
(98, 163, '', 74, 'pending', 'encounter', '2016-11-18 08:46:06', '0000-00-00 00:00:00', '', 1),
(99, 164, '', 75, 'pending', 'encounter', '2016-11-18 08:56:10', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `billing_category`
--

CREATE TABLE `billing_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_category`
--

INSERT INTO `billing_category` (`id`, `name`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Laboratory', 'Laboratory', '2016-10-21 05:51:20', '0000-00-00 00:00:00', 1),
(2, 'Radiology', 'Radiology', '2016-10-21 05:51:33', '0000-00-00 00:00:00', 1),
(3, 'NHIS', 'HMO Tests', '2016-10-26 13:46:54', '0000-00-00 00:00:00', 1),
(4, 'dental', 'dental', '2016-10-26 13:49:56', '0000-00-00 00:00:00', 1),
(5, 'General', 'dental', '2016-10-26 13:49:56', '2016-11-02 12:14:45', 1),
(6, 'dental', 'dental', '2016-10-26 13:49:57', '2016-10-26 13:50:17', 0),
(7, 'dental', 'dental', '2016-10-26 13:50:00', '2016-11-02 12:14:34', 0),
(8, 'dental', 'dental', '2016-10-26 13:50:00', '2016-10-26 13:51:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `billing_codes`
--

CREATE TABLE `billing_codes` (
  `id` int(20) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `charge` varchar(50) NOT NULL,
  `category` int(20) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_codes`
--

INSERT INTO `billing_codes` (`id`, `code`, `description`, `charge`, `category`, `tax`, `created_at`, `updated_at`, `status`) VALUES
(1, 'B123', 'Dressing', '1000', 1, '0', '2016-10-21 06:54:37', '2016-10-24 14:57:59', 1),
(2, '002', 'Bandages', '50', 1, '0', '2016-10-24 14:59:19', '2016-11-03 08:11:56', 1),
(3, 'BT1', 'blood test', '15000', 1, '0', '2016-10-26 13:46:41', '2016-11-03 08:11:49', 0),
(4, 'C123', 'Consultation', '200.00', 5, '0', '2016-11-02 12:14:27', '2016-11-02 12:15:09', 1),
(5, '123', 'test', '100.00', 1, '0', '2016-11-02 12:40:15', '2016-11-02 12:40:21', 0),
(6, 'S001', 'Dressing', '3000.00', 5, '0', '2016-11-03 08:11:42', '2016-11-07 10:42:52', 1),
(7, '123', 'Test code', '11.00', 2, '0', '2016-11-07 10:42:27', '2016-11-07 10:42:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`id`, `name`, `status`) VALUES
(1, 'A', 1),
(2, 'B', 1),
(3, 'O', 1),
(4, 'AB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `status`) VALUES
(1, 'bussiness', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `status`) VALUES
(1, 1, 'Ubakala', 1),
(2, 2, 'Cedarville', 1),
(3, 3, 'Amadiba', 1);

-- --------------------------------------------------------

--
-- Table structure for table `consulting_doctor`
--

CREATE TABLE `consulting_doctor` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contexts`
--

CREATE TABLE `contexts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `available_rights` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contexts`
--

INSERT INTO `contexts` (`id`, `name`, `available_rights`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Patient', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'Patient records (Summary)', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Patient Reports (Import/Export)', 'view,update', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'Patient Status (Checkout/Discharge/Move/Refer)', 'update', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 'Encounter', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(6, 'Clinical note', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(7, 'Lab order', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(9, 'Lab report', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(10, 'Lab Order label', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(11, 'Lab Test', 'view,update', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(12, 'Bill', 'view', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(13, 'Invoice', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(14, 'Pharmacy', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(15, 'Pharmacy prescription', 'view,update', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(16, 'Inventory', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(17, 'Stock', 'view,add', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(18, 'Appointments', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(19, 'Clinical notes templates', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(20, 'Lab order templates', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(21, 'Pool area', 'view', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(22, 'Ward', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(23, 'Users', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(24, 'Roles', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(25, 'Billng code', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(26, 'Tax rates', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(27, 'Labs', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(28, 'Lab tests Settings', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(29, 'Facility', 'view,update', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(30, 'Specialties', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(31, 'templates', 'view,add,update,delete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `context_methods`
--

CREATE TABLE `context_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `context_id` int(11) NOT NULL,
  `right` enum('add_right','update_right','delete_right','view_right') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `context_methods`
--

INSERT INTO `context_methods` (`id`, `name`, `context_id`, `right`) VALUES
(1, 'get_all_patients', 1, 'view_right'),
(2, 'add_patient', 1, 'add_right'),
(3, 'delete_patient', 1, 'delete_right'),
(4, 'add_patient_address', 1, 'add_right'),
(5, 'add_patient_kin', 1, 'add_right'),
(6, 'add_patient_employees', 1, 'add_right'),
(7, 'get_patient_demographics', 2, 'view_right'),
(8, 'get_patient_all_data', 2, 'view_right'),
(9, 'add_immunization', 2, 'add_right'),
(10, 'list_immunizations', 2, 'view_right'),
(11, 'delete_immunization', 2, 'delete_right'),
(12, 'add_active_problems', 2, 'add_right'),
(13, 'list_active_problems', 2, 'view_right'),
(14, 'delete_active_problems', 2, 'delete_right'),
(15, 'add_family_history', 2, 'add_right'),
(16, 'list_family_history', 2, 'view_right'),
(17, 'delete_family_history', 2, 'delete_right'),
(18, 'get_patient_vitals', 2, 'view_right'),
(19, 'add_patient_vitals', 2, 'add_right'),
(20, 'patient_supplements', 2, 'view_right'),
(21, 'add_patient_supplements', 2, 'add_right'),
(22, 'patient_allergies', 2, 'view_right'),
(23, 'add_patient_allergies', 2, 'add_right'),
(24, 'update_patient_allergies', 2, 'update_right'),
(25, 'delete_patient_allergies', 2, 'delete_right'),
(27, 'add_resources', 2, 'add_right'),
(28, 'list_resources', 2, 'view_right'),
(29, 'list_resources_back', 2, 'view_right'),
(30, 'list_patient_resources', 2, 'view_right'),
(31, 'list_patient_resources_back', 2, 'view_right'),
(32, 'update_patient_resources', 2, 'update_right'),
(33, 'delete_patient_resources', 2, 'delete_right'),
(34, 'checkout_patient', 4, 'update_right'),
(35, 'move_patient', 4, 'update_right'),
(36, 'get_visits', 5, 'view_right'),
(37, 'get_patient_visit_history', 5, 'view_right'),
(38, 'visit_details', 5, 'view_right'),
(39, 'patient_visit_list', 5, 'view_right'),
(40, 'update_visit_status', 5, 'update_right'),
(41, 'remove_visit', 5, 'delete_right'),
(42, 'add_visit', 5, 'add_right'),
(43, 'update_visit', 5, 'update_right'),
(44, 'patient_archives', 2, 'view_right'),
(45, 'remove_patient_archive', 2, 'delete_right'),
(46, 'get_patient', 1, 'view_right'),
(47, 'get_patient_plan', 1, 'view_right'),
(48, 'add_patient_plan', 1, 'add_right'),
(49, 'add_patient_clinical_notes', 6, 'add_right'),
(50, 'update_patient_clinical_notes', 6, 'update_right'),
(51, 'get_clinical_notes_pdf', 6, 'view_right'),
(52, 'signoff_clinical_report', 6, 'update_right'),
(53, 'check_clinical_notes_status', 6, 'view_right'),
(54, 'get_all_bills', 12, 'view_right'),
(55, 'get_all_invoices', 13, 'view_right'),
(56, 'update_invoice', 13, 'update_right'),
(57, 'get_invoice_data', 13, 'view_right'),
(58, 'get_invoice_status', 13, 'view_right'),
(59, 'get_billing_data', 13, 'view_right'),
(60, 'delete_invoice', 13, 'delete_right'),
(61, 'add_invoice_to_bills', 13, 'add_right'),
(62, 'send_invoice_email', 13, 'update_right'),
(63, 'get_bill_invoices', 13, 'view_right'),
(64, 'get_pharmacies', 14, 'view_right'),
(65, 'get_single_pharmacy', 14, 'view_right'),
(66, 'create_pharmacy', 14, 'add_right'),
(67, 'update_pharmacy', 14, 'update_right'),
(68, 'delete_pharmacy', 14, 'delete_right'),
(69, 'add_patient_prescription', 15, 'update_right'),
(70, 'update_patient_prescription', 15, 'update_right'),
(71, 'add_prescription_medication', 15, 'update_right'),
(72, 'get_all_prescription', 15, 'view_right'),
(73, 'get_prescription_list', 15, 'view_right'),
(74, 'get_prescription', 15, 'view_right'),
(75, 'dispense_medication', 15, 'update_right'),
(76, 'query_medication', 15, 'update_right'),
(77, 'get_patient_medications', 15, 'view_right'),
(78, 'update_prescription', 15, 'update_right'),
(79, 'remove_patient_precription_medications', 15, 'update_right'),
(80, 'create_inventory_category', 16, 'add_right'),
(81, 'update_inventory_category', 16, 'update_right'),
(82, 'get_inventory_category', 16, 'view_right'),
(83, 'get_inventory_single_category', 16, 'view_right'),
(84, 'delete_inventory_category', 16, 'delete_right'),
(85, 'create_inventory_supplier', 16, 'add_right'),
(86, 'update_inventory_supplier', 16, 'update_right'),
(87, 'get_inventory_suppliers', 16, 'view_right'),
(88, 'get_inventory_single_supplier', 16, 'view_right'),
(89, 'delete_inventory_supplier', 16, 'delete_right'),
(90, 'get_stock', 17, 'view_right'),
(91, 'get_active_stock', 17, 'view_right'),
(92, 'get_inactive_stock', 17, 'view_right'),
(93, 'get_stock_details', 17, 'view_right'),
(94, 'add_inventory', 17, 'add_right'),
(95, 'delete_inventory', 17, 'delete_right'),
(96, 'update_inventory', 17, 'update_right'),
(97, 'update_reorder_level', 16, 'update_right'),
(98, 'add_product', 16, 'add_right'),
(100, 'add_product_inventory', 16, 'add_right'),
(101, 'get_reorder_level', 16, 'view_right'),
(102, 'update_product', 16, 'update_right'),
(103, 'get_product', 16, 'view_right'),
(104, 'get_prescription_pdf', 15, 'view_right'),
(105, 'get_patient_appointments', 18, 'view_right'),
(106, 'get_single_appointment', 18, 'view_right'),
(107, 'add_patient_appointments', 18, 'add_right'),
(108, 'update_patient_appointments', 18, 'update_right'),
(109, 'delete_patient_appointments', 18, 'delete_right'),
(110, 'appointment_dates', 18, 'view_right'),
(111, 'appointment_dates_patients', 18, 'view_right'),
(112, 'appointment_dates_doctors', 18, 'view_right'),
(113, 'appointment_dates_departments', 18, 'view_right'),
(114, 'move_appointment', 18, 'update_right'),
(115, 'appointment_reminder', 18, 'update_right'),
(116, 'get_all_todays_appointments', 18, 'view_right'),
(117, 'patients_pool_area', 21, 'view_right'),
(118, 'create_ward', 22, 'add_right'),
(119, 'get_single_ward', 22, 'view_right'),
(120, 'delete_ward', 22, 'delete_right'),
(121, 'bed_occupancy', 22, 'view_right'),
(122, 'ward_occupancy', 22, 'view_right'),
(123, 'patients_admitted', 22, 'view_right'),
(124, 'update_discharge_date', 22, 'update_right'),
(126, 'patients_discharged', 22, 'view_right'),
(127, 'all_wards', 22, 'view_right'),
(128, 'ward_beds', 22, 'view_right'),
(129, 'add_patient_beds', 22, 'add_right'),
(130, 'delete_patient_bed', 22, 'delete_right'),
(131, 'edit_patient_bed', 22, 'update_right'),
(132, 'patient_discharge', 4, 'update_right'),
(133, 'register_user', 23, 'add_right'),
(134, 'get_all_users', 23, 'view_right'),
(135, 'get_user', 23, 'view_right'),
(136, 'update_user', 23, 'update_right'),
(137, 'delete_user', 23, 'delete_right'),
(138, 'get_all_contexts', 24, 'view_right'),
(139, 'add_role_group', 24, 'add_right'),
(140, 'update_role_group', 24, 'update_right'),
(141, 'get_roles', 24, 'view_right'),
(142, 'delete_role', 24, 'delete_right'),
(143, 'get_user_role', 24, 'view_right'),
(144, 'add_billing_category', 25, 'add_right'),
(145, 'update_billing_category', 25, 'update_right'),
(146, 'delete_billing_category', 25, 'delete_right'),
(147, 'get_billing_category', 25, 'view_right'),
(148, 'get_single_billing_category', 25, 'view_right'),
(149, 'add_billing_code', 25, 'add_right'),
(150, 'update_billing_code', 25, 'update_right'),
(151, 'get_all_billing_codes', 25, 'view_right'),
(152, 'get_billing_code', 25, 'view_right'),
(153, 'delete_billing_code', 25, 'delete_right'),
(154, 'add_tax_rates', 26, 'add_right'),
(155, 'update_tax_rates', 26, 'update_right'),
(156, 'list_tax_rates', 26, 'view_right'),
(157, 'list_tax_rate', 26, 'view_right'),
(158, 'delete_tax_rate', 26, 'delete_right'),
(159, 'add_lab', 27, 'add_right'),
(160, 'get_labs', 27, 'view_right'),
(161, 'get_lab', 27, 'view_right'),
(162, 'update_lab', 27, 'update_right'),
(163, 'delete_lab', 27, 'delete_right'),
(164, 'get_all_lab_tests', 28, 'view_right'),
(165, 'get_single_test', 28, 'view_right'),
(166, 'add_lab_test', 28, 'add_right'),
(167, 'update_current_lab_test', 28, 'update_right'),
(168, 'delete_lab_test', 28, 'delete_right'),
(169, 'get_todays_bills', 12, 'view_right'),
(170, 'add_update_hospital', 29, 'add_right'),
(171, 'get_hospital_profile', 29, 'view_right'),
(172, 'add_department', 30, 'add_right'),
(173, 'get_departments', 30, 'view_right'),
(174, 'get_department', 30, 'view_right'),
(175, 'update_department', 30, 'update_right'),
(176, 'delete_department', 30, 'delete_right'),
(177, 'add_patient_referel', 4, 'add_right'),
(178, 'get_todays_all_visits', 5, 'view_right'),
(179, 'get_templates', 31, 'view_right'),
(180, 'get_template', 31, 'view_right'),
(181, 'delete_template', 31, 'delete_right'),
(182, 'add_template', 31, 'add_right'),
(183, 'edit_template', 31, 'update_right'),
(184, 'get_lab_template_categories', 31, 'view_right'),
(185, 'get_lab_template_category', 31, 'view_right'),
(186, 'add_lab_template_category', 31, 'add_right'),
(187, 'update_lab_template_category', 31, 'update_right'),
(188, 'delete_lab_template_category', 31, 'delete_right'),
(189, 'get_templates_categories', 31, 'view_right'),
(190, 'delete_template_category', 31, 'delete_right'),
(191, 'add_template_category', 31, 'add_right'),
(192, 'get_template_category', 31, 'view_right'),
(193, 'update_template_category', 31, 'update_right'),
(194, 'get_all_lab_orders', 7, 'view_right'),
(195, 'get_all_radiology_lab_orders', 7, 'view_right'),
(196, 'add_lab_order', 7, 'add_right'),
(197, 'get_patient_lab_orders', 7, 'view_right'),
(198, 'get_lab_order', 7, 'view_right'),
(199, 'cancel_lab_order', 7, 'update_right'),
(200, 'get_lab_order_history', 7, 'view_right'),
(201, 'check_lab_orders_status', 7, 'view_right'),
(202, 'get_lab_tests', 11, 'view_right'),
(203, 'get_lab_test_details', 11, 'view_right'),
(204, 'update_lab_test', 11, 'update_right'),
(205, 'get_lab_test_fields', 11, 'view_right'),
(206, 'add_lab_test_values', 11, 'add_right'),
(207, 'update_lab_test_values', 11, 'update_right'),
(208, 'get_lab_test_pdf', 9, 'view_right'),
(209, 'signoff_lab_report', 9, 'update_right'),
(210, 'import_patients', 3, 'view_right'),
(211, 'get_dropdowndata', 7, 'view_right');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `country_code` varchar(40) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `nationality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `country_code`, `status`, `nationality`) VALUES
(1, 'Afghanistan ', '', 1, ' Afghan'),
(2, 'Albania ', '', 1, ' Albanian'),
(3, 'Algeria ', '', 1, ' Algerian'),
(4, 'Angola ', '', 1, ' Angolan'),
(5, 'Armenia ', '', 1, ' Armenian'),
(6, 'Argentina ', '', 1, ' Argentinian'),
(7, 'Australia ', '', 1, ' Australian'),
(8, 'Austria ', '', 1, ' Austrian'),
(9, 'Bahrain ', '', 1, ' Bahraini'),
(10, 'Bangladesh ', '', 1, ' Bangladeshi'),
(11, 'Barbados ', '', 1, ' Barbadian'),
(12, 'Belarus ', '', 1, ' Belarussian'),
(13, 'Belgium ', '', 1, ' Belgian'),
(14, 'Bhutan ', '', 1, ' Bhutanese'),
(15, 'Bolivia ', '', 1, ' Bolivian'),
(16, 'Bosnia ', '', 1, ' Bosnian'),
(17, 'Botswana ', '', 1, ' Botzwanian'),
(18, 'Brazil ', '', 1, ' Brazilian'),
(19, 'Brunei ', '', 1, ' Bruneian'),
(20, 'Bulgaria ', '', 1, ' Bulgarian'),
(21, 'Burundi ', '', 1, ' Burundian'),
(22, 'Cameroon ', '', 1, ' Cameroonian'),
(23, 'Canada ', '', 1, ' Canadian'),
(24, 'Chad ', '', 1, ' Chadian'),
(25, 'Chile ', '', 1, ' Chilean'),
(26, 'China ', '', 1, ' Chinese'),
(27, 'Colombia ', '', 1, ' Colombian'),
(28, 'Congo ', '', 1, ' Congolese'),
(29, 'Costa Rica ', '', 1, ' Costa Rican'),
(30, 'Côte d\'Ivoire ', '', 1, ' Ivorian'),
(31, 'Croatia ', '', 1, ' Croatian'),
(32, 'Cuba ', '', 1, ' Cuban'),
(33, 'Cyprus ', '', 1, ' Cypriot'),
(34, 'Czech Republic ', '', 1, ' Czech'),
(35, 'Denmark ', '', 1, ' Danish'),
(36, 'Dominica ', '', 1, ' Dominican'),
(37, 'Ecuador ', '', 1, ' Ecuadorean'),
(38, 'Egypt ', '', 1, ' Egyptian'),
(39, 'Eire ', '', 1, ' Irish'),
(40, 'England ', '', 1, ' English'),
(41, 'Estonia ', '', 1, ' Estonian'),
(42, 'Ethiopia ', '', 1, ' Ethiopian'),
(43, 'Eritrea ', '', 1, ' Eritrean'),
(44, 'Finland ', '', 1, ' Finnish'),
(45, 'France ', '', 1, ' French'),
(46, 'Gabon ', '', 1, ' Gabonese'),
(47, 'Georgia ', '', 1, ' Georgian'),
(48, 'Germany ', '', 1, ' German'),
(49, 'Great Britain ', '', 1, ' British'),
(50, 'Ghana ', '', 1, ' Ghanian'),
(51, 'Greece ', '', 1, ' Greek'),
(52, 'Grenada ', '', 1, ' Grenadian'),
(53, 'Guatemala ', '', 1, ' Guatemalan'),
(54, 'Guyana ', '', 1, ' Guyanese'),
(55, 'Hawaii ', '', 1, ' Hawaiian'),
(56, 'Haiti ', '', 1, ' Haitian'),
(57, 'Holland ', '', 1, ' Dutch'),
(58, 'Honduras ', '', 1, ' Honduran'),
(59, 'Hungary ', '', 1, ' Hungarian'),
(60, 'Iceland ', '', 1, ' Icelandic'),
(61, 'India ', '', 1, ' Indian'),
(62, 'Iran ', '', 1, ' Iranian'),
(63, 'Iraq ', '', 1, ' Iraqi'),
(64, 'Israel ', '', 1, ' Israeli'),
(65, 'Ivory Coast ', '', 1, ' Ivorian'),
(66, 'Italy ', '', 1, ' Italian'),
(67, 'Jamaica ', '', 1, ' Jamaican'),
(68, 'Japan ', '', 1, ' Japanese'),
(69, 'Jordan ', '', 1, ' Jordanian'),
(70, 'Kazakhstan ', '', 1, ' Khazakstani'),
(71, 'Kampuchea ', '', 1, ' Kampuchean'),
(72, 'Kenya ', '', 1, ' Kenyan'),
(73, 'Korea ', '', 1, ' Korean'),
(74, 'Kurdistan ', '', 1, ' Kurdish'),
(75, 'Kuwait ', '', 1, ' Kuwaiti'),
(76, 'Latvia ', '', 1, ' Latvian'),
(77, 'Lebanon ', '', 1, ' Lebanese'),
(78, 'Liberia ', '', 1, ' Liberian'),
(79, 'Libya ', '', 1, ' Libyan'),
(80, 'Lithuania ', '', 1, ' Lithuanian'),
(81, 'Macedonia ', '', 1, ' Macedonian'),
(82, 'Malawi ', '', 1, ' Malawian'),
(83, 'Malaysia ', '', 1, ' Malaysian'),
(84, 'Malta ', '', 1, ' Maltese'),
(85, 'Mexico ', '', 1, ' Mexican'),
(86, 'Moldova ', '', 1, ' Moldovian'),
(87, 'Mongolia ', '', 1, ' Mongolian'),
(88, 'Morocco ', '', 1, ' Moroccan'),
(89, 'Myanmar ', '', 1, ' Burmese'),
(90, 'Namibia ', '', 1, ' Namibian'),
(91, 'Nauru ', '', 1, ' Nauruan'),
(92, 'Nepal ', '', 1, ' Nepalese'),
(93, 'Netherlands ', '', 1, ' Dutch'),
(94, 'Namibia ', '', 1, ' Namibian'),
(95, 'Nicaragua ', '', 1, ' Nicaraguan'),
(96, 'Niger ', '', 1, ' Nigerien'),
(97, 'Nigeria ', '', 1, ' Nigerian'),
(98, 'Norway ', '', 1, ' Norwegian'),
(99, 'New Zealand ', '', 1, ' New Zealander'),
(100, 'Oman ', '', 1, ' Omani'),
(101, 'Pakistan ', '', 1, ' Pakistani'),
(102, 'Palestine ', '', 1, ' Palestinian'),
(103, 'Paraguay ', '', 1, ' Paraguayan'),
(104, 'Peru ', '', 1, ' Peruvian'),
(105, 'Quatar ', '', 1, ' Quatari'),
(106, 'Philippines ', '', 1, ' Filipino'),
(107, 'Poland ', '', 1, ' Polish'),
(108, 'Romania ', '', 1, ' Romanian'),
(109, 'Russia ', '', 1, ' Russian'),
(110, 'Rwanda ', '', 1, ' Rwandan'),
(111, 'Samoa ', '', 1, ' Samoan'),
(112, 'Saudi Arabia ', '', 1, ' Saudi'),
(113, 'Scotland ', '', 1, ' Scottish'),
(114, 'Senegal ', '', 1, ' Senegalese'),
(115, 'Serbia ', '', 1, ' Serbian'),
(116, 'Singapore ', '', 1, ' Singaporean'),
(117, 'Somalia ', '', 1, ' Somali'),
(118, 'South Africa ', '', 1, ' South African'),
(119, 'Spain ', '', 1, ' Spanish'),
(120, 'Sri Lanka ', '', 1, ' Sri Lankan'),
(121, 'Syria ', '', 1, ' Syrian'),
(122, 'Sudan ', '', 1, ' Sudanese'),
(123, 'Sweden ', '', 1, ' Swedish'),
(124, 'Switzerland ', '', 1, ' Swiss'),
(125, 'Syria ', '', 1, ' Syrian'),
(126, 'Thailand ', '', 1, ' Thai'),
(127, 'Tunisia ', '', 1, ' Tunisian'),
(128, 'Turkey ', '', 1, ' Turkish'),
(129, 'Uganda ', '', 1, ' Ugandan'),
(130, 'Ukraine ', '', 1, ' Ukrainian'),
(131, 'USA ', '', 1, ' American'),
(132, 'Uruguay ', '', 1, ' Uruguayan'),
(133, 'Uzbekistan ', '', 1, ' Uzbekistani'),
(134, 'Venezuela ', '', 1, ' Venezualan'),
(135, 'Vietnam ', '', 1, ' Vietnamese'),
(136, 'Yemen ', '', 1, ' Yemeni'),
(137, 'Zambia ', '', 1, ' Zambian');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Eye Clinic', '', '0000-00-00 00:00:00', '2016-11-02 19:58:19', 0),
(2, 'Cardiology Department', '', '0000-00-00 00:00:00', '2016-11-02 19:58:23', 0),
(3, 'Orthopedic Department', '', '0000-00-00 00:00:00', '2016-11-02 19:58:28', 0),
(4, 'Accidents & Emergency', 'Accidents & Emergency', '2016-10-21 05:42:38', '0000-00-00 00:00:00', 1),
(5, 'Dental', 'Dental', '2016-10-21 05:42:53', '0000-00-00 00:00:00', 1),
(6, 'Antenatal', 'Antenatal', '2016-10-21 05:43:23', '0000-00-00 00:00:00', 1),
(7, 'Maternity', 'Maternity', '2016-10-21 05:43:35', '0000-00-00 00:00:00', 1),
(8, 'GOPD', 'GOPD', '2016-10-21 05:44:06', '0000-00-00 00:00:00', 1),
(9, 'MOPD', 'MOPD', '2016-10-21 05:44:19', '0000-00-00 00:00:00', 1),
(10, 'LASEM', 'ACCIDENT  EMERGENCY', '2016-10-24 15:24:09', '0000-00-00 00:00:00', 1),
(11, 'ENT', 'Ear, nose and throat disorders', '2016-10-24 15:24:17', '0000-00-00 00:00:00', 1),
(12, 'DERMATOLOGY', 'SKIN', '2016-10-24 15:25:34', '0000-00-00 00:00:00', 1),
(13, 'HAEMATOLOGY', 'HIV CLINIC, SICKLE CELL CLINIC AND OTHER HAEMATOLOGICAL DISORDERS', '2016-10-24 15:26:40', '0000-00-00 00:00:00', 1),
(14, 'DENTAL DEPARTMENT', 'DENTAL', '2016-10-24 15:26:43', '2016-10-24 15:27:22', 0),
(15, 'NEPHROLOGY', 'RENAL PATHOLOGIES, DIALYSIS', '2016-10-24 15:27:24', '0000-00-00 00:00:00', 1),
(16, 'ENDOCRINOLOGY', 'DM, THYROID AND OTHER ENDOCRINE DISORDERS', '2016-10-24 15:28:56', '0000-00-00 00:00:00', 1),
(17, 'NEUROLOGY', 'STROKE,', '2016-10-24 15:30:42', '0000-00-00 00:00:00', 1),
(18, 'NEUROLOGY', 'STROKE,', '2016-10-24 15:30:42', '2016-10-24 15:38:47', 0),
(19, 'PSYCHIATRY', 'PSYCHOPATHOLOGIES', '2016-10-24 15:33:06', '0000-00-00 00:00:00', 1),
(20, 'UROLOGY', 'SURGICAL GENITOURINARY DISORDERS', '2016-10-24 15:34:19', '0000-00-00 00:00:00', 1),
(21, 'ANAESTHESIA', 'GENERAL, REGIONAL', '2016-10-24 15:35:29', '0000-00-00 00:00:00', 1),
(22, 'GENERAL SURGERY', 'SURGERIES FOR ABDOMINAL, HEPATOBILIARY SURGICAL CONDITIONS, THYROID SURGERIES', '2016-10-24 15:36:31', '0000-00-00 00:00:00', 1),
(23, 'DENTAL ORAL AND MAXILLOFACIAL SURGERY', 'MAXILLOFACIAL SURGERY', '2016-10-24 15:38:22', '0000-00-00 00:00:00', 1),
(24, 'PAEDIATRIC SURGERY', 'PAEDIATRIC SURGERY', '2016-10-24 15:41:35', '0000-00-00 00:00:00', 1),
(25, 'PAEDIATRIC SURGERY', 'PAEDIATRIC SURGERY', '2016-10-24 15:41:35', '0000-00-00 00:00:00', 1),
(26, 'MAXILLO-FACIAL SURGERY', 'MAXILLO FACIAL TUMOURS, FACIAL AND NECK ABCESSES, FACIAL FRACTURES', '2016-10-24 15:42:06', '0000-00-00 00:00:00', 1),
(27, 'General', 'This used to as a container for wards', '2016-10-25 01:32:47', '0000-00-00 00:00:00', 1),
(28, 'PHARMACY', 'DISPENSING, INVENTORY MANAGEMENT,PHARMACEUTICAL CARE INTERVENTIONS.', '2016-10-25 13:22:16', '2016-10-25 13:25:44', 1),
(29, 'Pharmacy', 'Dispensing, Inventory management, pharmaceutical Care Interventions,', '2016-10-25 13:22:16', '2016-10-25 13:23:30', 0),
(30, 'Pharmacy', 'Dispensing, Inventory management, pharmaceutical Care Interventions,', '2016-10-25 13:22:16', '2016-10-25 13:23:16', 0),
(31, 'Pharmacy', 'Dispensing, Inventory management, pharmaceutical Care Interventions,', '2016-10-25 13:22:18', '2016-10-25 13:22:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(11) NOT NULL,
  `name` varchar(185) NOT NULL,
  `code` varchar(10) NOT NULL,
  `category` varchar(21) NOT NULL,
  `model` varchar(19) NOT NULL,
  `unique_id` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `name`, `code`, `category`, `model`, `unique_id`) VALUES
(1, 'Abdomen', 'C76.2', 'icdcat2-13', 'gnuhealth.pathology', 'C762'),
(2, 'Abdominal actinomycosis', 'A42.1', 'icdcat1-4', 'gnuhealth.pathology', 'A421'),
(3, 'Abdominal part of oesophagus', 'C15.2', 'icdcat2-2', 'gnuhealth.pathology', 'C152'),
(4, 'Acanthamoebiasis', 'B60.1', 'icdcat1-16', 'gnuhealth.pathology', 'B601'),
(5, 'Accessory sinus, unspecified', 'C31.9', 'icdcat2-3', 'gnuhealth.pathology', 'C319'),
(6, 'Acoustic nerve', 'C72.4', 'icdcat2-11', 'gnuhealth.pathology', 'C724'),
(7, 'Actinomycetoma', 'B47.1', 'icdcat1-15', 'gnuhealth.pathology', 'B471'),
(8, 'Actinomycosis', 'A42', 'icdcat1-4', 'gnuhealth.pathology', 'A42'),
(9, 'Actinomycosis, unspecified', 'A42.9', 'icdcat1-4', 'gnuhealth.pathology', 'A429'),
(10, 'Actinomycotic septicaemia', 'A42.7', 'icdcat1-4', 'gnuhealth.pathology', 'A427'),
(11, 'Active stage of trachoma', 'A71.1', 'icdcat1-7', 'gnuhealth.pathology', 'A711'),
(12, 'Acute amoebic dysentery', 'A06.0', 'icdcat1-1', 'gnuhealth.pathology', 'A060'),
(13, 'Acute and fulminating melioidosis', 'A24.1', 'icdcat1-3', 'gnuhealth.pathology', 'A241'),
(14, 'Acute Chagas\' disease with heart involvement', 'B57.0', 'icdcat1-16', 'gnuhealth.pathology', 'B570'),
(15, 'Acute Chagas\' disease without heart involvement', 'B57.1', 'icdcat1-16', 'gnuhealth.pathology', 'B571'),
(16, 'Acute delta-(super) infection of hepatitis B carrier', 'B17.0', 'icdcat1-12', 'gnuhealth.pathology', 'B170'),
(17, 'Acute epidemic haemorrhagic conjunctivitis (enteroviral)', 'B30.3', 'icdcat1-14', 'gnuhealth.pathology', 'B303'),
(18, 'Acute erythraemia and erythroleukaemia', 'C94.0', 'icdcat2-14', 'gnuhealth.pathology', 'C940'),
(19, 'Acute gastro-enteropathy due to Norwalk agent', 'A08.1', 'icdcat1-1', 'gnuhealth.pathology', 'A081'),
(20, 'Acute hepatitis A', 'B15', 'icdcat1-12', 'gnuhealth.pathology', 'B15'),
(21, 'Acute hepatitis B', 'B16', 'icdcat1-12', 'gnuhealth.pathology', 'B16'),
(22, 'Acute hepatitis B with delta-agent (coinfection) with hepatic coma', 'B16.0', 'icdcat1-12', 'gnuhealth.pathology', 'B160'),
(23, 'Acute hepatitis B with delta-agent (coinfection) without hepatic coma', 'B16.1', 'icdcat1-12', 'gnuhealth.pathology', 'B161'),
(24, 'Acute hepatitis B without delta-agent and without hepatic coma', 'B16.9', 'icdcat1-12', 'gnuhealth.pathology', 'B169'),
(25, 'Acute hepatitis B without delta-agent with hepatic coma', 'B16.2', 'icdcat1-12', 'gnuhealth.pathology', 'B162'),
(26, 'Acute hepatitis C', 'B17.1', 'icdcat1-12', 'gnuhealth.pathology', 'B171'),
(27, 'Acute hepatitis E', 'B17.2', 'icdcat1-12', 'gnuhealth.pathology', 'B172'),
(28, 'Acute HIV infection syndrome', 'B23.0', 'icdcat1-13', 'gnuhealth.pathology', 'B230'),
(29, 'Acute leukaemia of unspecified cell type', 'C95.0', 'icdcat2-14', 'gnuhealth.pathology', 'C950'),
(30, 'Acute lymphoblastic leukaemia', 'C91.0', 'icdcat2-14', 'gnuhealth.pathology', 'C910'),
(31, 'Acute megakaryoblastic leukaemia', 'C94.2', 'icdcat2-14', 'gnuhealth.pathology', 'C942'),
(32, 'Acute meningococcaemia', 'A39.2', 'icdcat1-4', 'gnuhealth.pathology', 'A392'),
(33, 'Acute miliary tuberculosis of a single specified site', 'A19.0', 'icdcat1-2', 'gnuhealth.pathology', 'A190'),
(34, 'Acute miliary tuberculosis of multiple sites', 'A19.1', 'icdcat1-2', 'gnuhealth.pathology', 'A191'),
(35, 'Acute miliary tuberculosis, unspecified', 'A19.2', 'icdcat1-2', 'gnuhealth.pathology', 'A192'),
(36, 'Acute monocytic leukaemia', 'C93.0', 'icdcat2-14', 'gnuhealth.pathology', 'C930'),
(37, 'Acute myelofibrosis', 'C94.5', 'icdcat2-14', 'gnuhealth.pathology', 'C945'),
(38, 'Acute myeloid leukaemia', 'C92.0', 'icdcat2-14', 'gnuhealth.pathology', 'C920'),
(39, 'Acute myelomonocytic leukaemia', 'C92.5', 'icdcat2-14', 'gnuhealth.pathology', 'C925'),
(40, 'Acute nonparalytic poliomyelitis', 'A80.4', 'icdcat1-9', 'gnuhealth.pathology', 'A804'),
(41, 'Acute panmyelosis', 'C94.4', 'icdcat2-14', 'gnuhealth.pathology', 'C944'),
(42, 'Acute paralytic poliomyelitis, other and unspecified', 'A80.3', 'icdcat1-9', 'gnuhealth.pathology', 'A803'),
(43, 'Acute paralytic poliomyelitis, vaccine-associated', 'A80.0', 'icdcat1-9', 'gnuhealth.pathology', 'A800'),
(44, 'Acute paralytic poliomyelitis, wild virus, imported', 'A80.1', 'icdcat1-9', 'gnuhealth.pathology', 'A801'),
(45, 'Acute paralytic poliomyelitis, wild virus, indigenous', 'A80.2', 'icdcat1-9', 'gnuhealth.pathology', 'A802'),
(46, 'Acute poliomyelitis', 'A80', 'icdcat1-9', 'gnuhealth.pathology', 'A80'),
(47, 'Acute poliomyelitis, unspecified', 'A80.9', 'icdcat1-9', 'gnuhealth.pathology', 'A809'),
(48, 'Acute promyelocytic leukaemia', 'C92.4', 'icdcat2-14', 'gnuhealth.pathology', 'C924'),
(49, 'Acute pulmonary blastomycosis', 'B40.0', 'icdcat1-15', 'gnuhealth.pathology', 'B400'),
(50, 'Acute pulmonary coccidioidomycosis', 'B38.0', 'icdcat1-15', 'gnuhealth.pathology', 'B380'),
(51, 'Acute pulmonary histoplasmosis capsulati', 'B39.0', 'icdcat1-15', 'gnuhealth.pathology', 'B390'),
(52, 'Adenoviral encephalitis', 'A85.1', 'icdcat1-9', 'gnuhealth.pathology', 'A851'),
(53, 'Adenoviral enteritis', 'A08.2', 'icdcat1-1', 'gnuhealth.pathology', 'A082'),
(54, 'Adenoviral meningitis', 'A87.1', 'icdcat1-9', 'gnuhealth.pathology', 'A871'),
(55, 'Adenovirus as the cause of diseases classified to other chapters', 'B97.0', 'icdcat1-20', 'gnuhealth.pathology', 'B970'),
(56, 'Adenovirus infection, unspecified', 'B34.0', 'icdcat1-14', 'gnuhealth.pathology', 'B340'),
(57, 'Adrenal gland, unspecified', 'C74.9', 'icdcat2-12', 'gnuhealth.pathology', 'C749'),
(58, 'Adult T-cell leukaemia', 'C91.5', 'icdcat2-14', 'gnuhealth.pathology', 'C915'),
(59, 'African trypanosomiasis', 'B56', 'icdcat1-16', 'gnuhealth.pathology', 'B56'),
(60, 'African trypanosomiasis, unspecified', 'B56.9', 'icdcat1-16', 'gnuhealth.pathology', 'B569'),
(61, 'Allescheriasis', 'B48.2', 'icdcat1-15', 'gnuhealth.pathology', 'B482'),
(62, 'Alpha heavy chain disease', 'C88.1', 'icdcat2-14', 'gnuhealth.pathology', 'C881'),
(63, 'Amoebiasis', 'A06', 'icdcat1-1', 'gnuhealth.pathology', 'A06'),
(64, 'Amoebiasis, unspecified', 'A06.9', 'icdcat1-1', 'gnuhealth.pathology', 'A069'),
(65, 'Amoebic brain abscess', 'A06.6', 'icdcat1-1', 'gnuhealth.pathology', 'A066'),
(66, 'Amoebic infection of other sites', 'A06.8', 'icdcat1-1', 'gnuhealth.pathology', 'A068'),
(67, 'Amoebic liver abscess', 'A06.4', 'icdcat1-1', 'gnuhealth.pathology', 'A064'),
(68, 'Amoebic lung abscess', 'A06.5', 'icdcat1-1', 'gnuhealth.pathology', 'A065'),
(69, 'Amoebic nondysenteric colitis', 'A06.2', 'icdcat1-1', 'gnuhealth.pathology', 'A062'),
(70, 'Amoeboma of intestine', 'A06.3', 'icdcat1-1', 'gnuhealth.pathology', 'A063'),
(71, 'Ampulla of Vater', 'C24.1', 'icdcat2-2', 'gnuhealth.pathology', 'C241'),
(72, 'Anal canal', 'C21.1', 'icdcat2-2', 'gnuhealth.pathology', 'C211'),
(73, 'Angiosarcoma of liver', 'C22.3', 'icdcat2-2', 'gnuhealth.pathology', 'C223'),
(74, 'Angiostrongyliasis due to Parastrongylus cantonensis', 'B83.2', 'icdcat1-17', 'gnuhealth.pathology', 'B832'),
(75, 'Anisakiasis', 'B81.0', 'icdcat1-17', 'gnuhealth.pathology', 'B810'),
(76, 'Ankylostomiasis', 'B76.0', 'icdcat1-17', 'gnuhealth.pathology', 'B760'),
(77, 'Anogenital (venereal) warts', 'A63.0', 'icdcat1-5', 'gnuhealth.pathology', 'A630'),
(78, 'Anogenital herpesviral infection, unspecified', 'A60.9', 'icdcat1-5', 'gnuhealth.pathology', 'A609'),
(79, 'Anogenital herpesviral [herpes simplex] infections', 'A60', 'icdcat1-5', 'gnuhealth.pathology', 'A60'),
(80, 'Anterior floor of mouth', 'C04.0', 'icdcat2-1', 'gnuhealth.pathology', 'C040'),
(81, 'Anterior mediastinum', 'C38.1', 'icdcat2-3', 'gnuhealth.pathology', 'C381'),
(82, 'Anterior surface of epiglottis', 'C10.1', 'icdcat2-1', 'gnuhealth.pathology', 'C101'),
(83, 'Anterior two-thirds of tongue, part unspecified', 'C02.3', 'icdcat2-1', 'gnuhealth.pathology', 'C023'),
(84, 'Anterior wall of bladder', 'C67.3', 'icdcat2-10', 'gnuhealth.pathology', 'C673'),
(85, 'Anterior wall of nasopharynx', 'C11.3', 'icdcat2-1', 'gnuhealth.pathology', 'C113'),
(86, 'Anthrax', 'A22', 'icdcat1-3', 'gnuhealth.pathology', 'A22'),
(87, 'Anthrax septicaemia', 'A22.7', 'icdcat1-3', 'gnuhealth.pathology', 'A227'),
(88, 'Anthrax, unspecified', 'A22.9', 'icdcat1-3', 'gnuhealth.pathology', 'A229'),
(89, 'Anus and anal canal', 'D01.3', 'icdcat2-16', 'gnuhealth.pathology', 'D013'),
(90, 'Anus, unspecified', 'C21.0', 'icdcat2-2', 'gnuhealth.pathology', 'C210'),
(91, 'Aortic body and other paraganglia', 'C75.5', 'icdcat2-12', 'gnuhealth.pathology', 'C755'),
(92, 'Appendix', 'C18.1', 'icdcat2-2', 'gnuhealth.pathology', 'C181'),
(93, 'Arenaviral haemorrhagic fever', 'A96', 'icdcat1-10', 'gnuhealth.pathology', 'A96'),
(94, 'Arenaviral haemorrhagic fever, unspecified', 'A96.9', 'icdcat1-10', 'gnuhealth.pathology', 'A969'),
(95, 'Arthropod-borne viral encephalitis, unspecified', 'A85.2', 'icdcat1-9', 'gnuhealth.pathology', 'A852'),
(96, 'Aryepiglottic fold, hypopharyngeal aspect', 'C13.1', 'icdcat2-1', 'gnuhealth.pathology', 'C131'),
(97, 'Ascariasis', 'B77', 'icdcat1-17', 'gnuhealth.pathology', 'B77'),
(98, 'Ascariasis with intestinal complications', 'B77.0', 'icdcat1-17', 'gnuhealth.pathology', 'B770'),
(99, 'Ascariasis with other complications', 'B77.8', 'icdcat1-17', 'gnuhealth.pathology', 'B778'),
(100, 'Ascariasis, unspecified', 'B77.9', 'icdcat1-17', 'gnuhealth.pathology', 'B779'),
(101, 'Ascending colon', 'C18.2', 'icdcat2-2', 'gnuhealth.pathology', 'C182'),
(102, 'Aspergillosis', 'B44', 'icdcat1-15', 'gnuhealth.pathology', 'B44'),
(103, 'Aspergillosis, unspecified', 'B44.9', 'icdcat1-15', 'gnuhealth.pathology', 'B449'),
(104, 'Asymptomatic neurosyphilis', 'A52.2', 'icdcat1-5', 'gnuhealth.pathology', 'A522'),
(105, 'Atypical virus infection of central nervous system, unspecified', 'A81.9', 'icdcat1-9', 'gnuhealth.pathology', 'A819'),
(106, 'Atypical virus infections of central nervous system', 'A81', 'icdcat1-9', 'gnuhealth.pathology', 'A81'),
(107, 'Aural myiasis', 'B87.4', 'icdcat1-18', 'gnuhealth.pathology', 'B874'),
(108, 'Australian encephalitis', 'A83.4', 'icdcat1-9', 'gnuhealth.pathology', 'A834'),
(109, 'Axillary and upper limb lymph nodes', 'C77.3', 'icdcat2-13', 'gnuhealth.pathology', 'C773'),
(110, 'Axillary tail of breast', 'C50.6', 'icdcat2-7', 'gnuhealth.pathology', 'C506'),
(111, 'B-cell lymphoma, unspecified', 'C85.1', 'icdcat2-14', 'gnuhealth.pathology', 'C851'),
(112, 'Babesiosis', 'B60.0', 'icdcat1-16', 'gnuhealth.pathology', 'B600'),
(113, 'Bacillus fragilis [B. fragilis] as the cause of diseases classified to other chapters', 'B96.6', 'icdcat1-20', 'gnuhealth.pathology', 'B966'),
(114, 'Bacterial foodborne intoxication, unspecified', 'A05.9', 'icdcat1-1', 'gnuhealth.pathology', 'A059'),
(115, 'Bacterial infection of unspecified site', 'A49', 'icdcat1-4', 'gnuhealth.pathology', 'A49'),
(116, 'Bacterial infection, unspecified', 'A49.9', 'icdcat1-4', 'gnuhealth.pathology', 'A499'),
(117, 'Bacterial intestinal infection, unspecified', 'A04.9', 'icdcat1-1', 'gnuhealth.pathology', 'A049'),
(118, 'Balantidiasis', 'A07.0', 'icdcat1-1', 'gnuhealth.pathology', 'A070'),
(119, 'Bartonellosis', 'A44', 'icdcat1-4', 'gnuhealth.pathology', 'A44'),
(120, 'Bartonellosis, unspecified', 'A44.9', 'icdcat1-4', 'gnuhealth.pathology', 'A449'),
(121, 'Biliary tract, unspecified', 'C24.9', 'icdcat2-2', 'gnuhealth.pathology', 'C249'),
(122, 'Black piedra', 'B36.3', 'icdcat1-15', 'gnuhealth.pathology', 'B363'),
(123, 'Bladder neck', 'C67.5', 'icdcat2-10', 'gnuhealth.pathology', 'C675'),
(124, 'Bladder, unspecified', 'C67.9', 'icdcat2-10', 'gnuhealth.pathology', 'C679'),
(125, 'Blastomycosis', 'B40', 'icdcat1-15', 'gnuhealth.pathology', 'B40'),
(126, 'Blastomycosis, unspecified', 'B40.9', 'icdcat1-15', 'gnuhealth.pathology', 'B409'),
(127, 'Body of pancreas', 'C25.1', 'icdcat2-2', 'gnuhealth.pathology', 'C251'),
(128, 'Body of penis', 'C60.2', 'icdcat2-9', 'gnuhealth.pathology', 'C602'),
(129, 'Body of stomach', 'C16.2', 'icdcat2-2', 'gnuhealth.pathology', 'C162'),
(130, 'Bone and articular cartilage of limb, unspecified', 'C40.9', 'icdcat2-4', 'gnuhealth.pathology', 'C409'),
(131, 'Bone and articular cartilage, unspecified', 'C41.9', 'icdcat2-4', 'gnuhealth.pathology', 'C419'),
(132, 'Bone and joint lesions of yaws', 'A66.6', 'icdcat1-6', 'gnuhealth.pathology', 'A666'),
(133, 'Bones of skull and face', 'C41.0', 'icdcat2-4', 'gnuhealth.pathology', 'C410'),
(134, 'Border of tongue', 'C02.1', 'icdcat2-1', 'gnuhealth.pathology', 'C021'),
(135, 'Borderline lepromatous leprosy', 'A30.4', 'icdcat1-4', 'gnuhealth.pathology', 'A304'),
(136, 'Borderline leprosy', 'A30.3', 'icdcat1-4', 'gnuhealth.pathology', 'A303'),
(137, 'Borderline tuberculoid leprosy', 'A30.2', 'icdcat1-4', 'gnuhealth.pathology', 'A302'),
(138, 'Botulism', 'A05.1', 'icdcat1-1', 'gnuhealth.pathology', 'A051'),
(139, 'Brain stem', 'C71.7', 'icdcat2-11', 'gnuhealth.pathology', 'C717'),
(140, 'Brain, unspecified', 'C71.9', 'icdcat2-11', 'gnuhealth.pathology', 'C719'),
(141, 'Branchial cleft', 'C10.4', 'icdcat2-1', 'gnuhealth.pathology', 'C104'),
(142, 'Brazilian purpuric fever', 'A48.4', 'icdcat1-4', 'gnuhealth.pathology', 'A484'),
(143, 'Breast, unspecified', 'C50.9', 'icdcat2-7', 'gnuhealth.pathology', 'C509'),
(144, 'Broad ligament', 'C57.1', 'icdcat2-8', 'gnuhealth.pathology', 'C571'),
(145, 'Bronchus and lung', 'D02.2', 'icdcat2-16', 'gnuhealth.pathology', 'D022'),
(146, 'Bronchus or lung, unspecified', 'C34.9', 'icdcat2-3', 'gnuhealth.pathology', 'C349'),
(147, 'Brucellosis', 'A23', 'icdcat1-3', 'gnuhealth.pathology', 'A23'),
(148, 'Brucellosis due to Brucella abortus', 'A23.1', 'icdcat1-3', 'gnuhealth.pathology', 'A231'),
(149, 'Brucellosis due to Brucella canis', 'A23.3', 'icdcat1-3', 'gnuhealth.pathology', 'A233'),
(150, 'Brucellosis due to Brucella melitensis', 'A23.0', 'icdcat1-3', 'gnuhealth.pathology', 'A230'),
(151, 'Brucellosis due to Brucella suis', 'A23.2', 'icdcat1-3', 'gnuhealth.pathology', 'A232'),
(152, 'Brucellosis, unspecified', 'A23.9', 'icdcat1-3', 'gnuhealth.pathology', 'A239'),
(153, 'Bubonic plague', 'A20.0', 'icdcat1-3', 'gnuhealth.pathology', 'A200'),
(154, 'Burkitt\'s tumour', 'C83.7', 'icdcat2-14', 'gnuhealth.pathology', 'C837'),
(155, 'Caecum', 'C18.0', 'icdcat2-2', 'gnuhealth.pathology', 'C180'),
(156, 'California encephalitis', 'A83.5', 'icdcat1-9', 'gnuhealth.pathology', 'A835'),
(157, 'Campylobacter enteritis', 'A04.5', 'icdcat1-1', 'gnuhealth.pathology', 'A045'),
(158, 'Candidal endocarditis', 'B37.6', 'icdcat1-15', 'gnuhealth.pathology', 'B376'),
(159, 'Candidal meningitis', 'B37.5', 'icdcat1-15', 'gnuhealth.pathology', 'B375'),
(160, 'Candidal septicaemia', 'B37.7', 'icdcat1-15', 'gnuhealth.pathology', 'B377'),
(161, 'Candidal stomatitis', 'B37.0', 'icdcat1-15', 'gnuhealth.pathology', 'B370'),
(162, 'Candidiasis', 'B37', 'icdcat1-15', 'gnuhealth.pathology', 'B37'),
(163, 'Candidiasis of other sites', 'B37.8', 'icdcat1-15', 'gnuhealth.pathology', 'B378'),
(164, 'Candidiasis of other urogenital sites', 'B37.4', 'icdcat1-15', 'gnuhealth.pathology', 'B374'),
(165, 'Candidiasis of skin and nail', 'B37.2', 'icdcat1-15', 'gnuhealth.pathology', 'B372'),
(166, 'Candidiasis of vulva and vagina', 'B37.3', 'icdcat1-15', 'gnuhealth.pathology', 'B373'),
(167, 'Candidiasis, unspecified', 'B37.9', 'icdcat1-15', 'gnuhealth.pathology', 'B379'),
(168, 'Carcinoma in situ of middle ear and respiratory system', 'D02', 'icdcat2-16', 'gnuhealth.pathology', 'D02'),
(169, 'Carcinoma in situ of oral cavity, oesophagus and stomach', 'D00', 'icdcat2-16', 'gnuhealth.pathology', 'D00'),
(170, 'Carcinoma in situ of other and unspecified digestive organs', 'D01', 'icdcat2-16', 'gnuhealth.pathology', 'D01'),
(171, 'Carcinoma in situ of skin', 'D04', 'icdcat2-16', 'gnuhealth.pathology', 'D04'),
(172, 'Cardia', 'C16.0', 'icdcat2-2', 'gnuhealth.pathology', 'C160'),
(173, 'Cardiovascular syphilis', 'A52.0', 'icdcat1-5', 'gnuhealth.pathology', 'A520'),
(174, 'Carotid body', 'C75.4', 'icdcat2-12', 'gnuhealth.pathology', 'C754'),
(175, 'Cat-scratch disease', 'A28.1', 'icdcat1-3', 'gnuhealth.pathology', 'A281'),
(176, 'Cauda equina', 'C72.1', 'icdcat2-11', 'gnuhealth.pathology', 'C721'),
(177, 'Cellulocutaneous plague', 'A20.1', 'icdcat1-3', 'gnuhealth.pathology', 'A201'),
(178, 'Central European tick-borne encephalitis', 'A84.1', 'icdcat1-9', 'gnuhealth.pathology', 'A841'),
(179, 'Central nervous system, unspecified', 'C72.9', 'icdcat2-11', 'gnuhealth.pathology', 'C729'),
(180, 'Central portion of breast', 'C50.1', 'icdcat2-7', 'gnuhealth.pathology', 'C501'),
(181, 'Cercarial dermatitis', 'B65.3', 'icdcat1-17', 'gnuhealth.pathology', 'B653'),
(182, 'Cerebellum', 'C71.6', 'icdcat2-11', 'gnuhealth.pathology', 'C716'),
(183, 'Cerebral cryptococcosis', 'B45.1', 'icdcat1-15', 'gnuhealth.pathology', 'B451'),
(184, 'Cerebral meninges', 'C70.0', 'icdcat2-11', 'gnuhealth.pathology', 'C700'),
(185, 'Cerebral ventricle', 'C71.5', 'icdcat2-11', 'gnuhealth.pathology', 'C715'),
(186, 'Cerebrum, except lobes and ventricles', 'C71.0', 'icdcat2-11', 'gnuhealth.pathology', 'C710'),
(187, 'Cervical part of oesophagus', 'C15.0', 'icdcat2-2', 'gnuhealth.pathology', 'C150'),
(188, 'Cervicofacial actinomycosis', 'A42.2', 'icdcat1-4', 'gnuhealth.pathology', 'A422'),
(189, 'Cervix uteri, unspecified', 'C53.9', 'icdcat2-8', 'gnuhealth.pathology', 'C539'),
(190, 'Cestode infection, unspecified', 'B71.9', 'icdcat1-17', 'gnuhealth.pathology', 'B719'),
(191, 'Chagas\' disease', 'B57', 'icdcat1-16', 'gnuhealth.pathology', 'B57'),
(192, 'Chagas\' disease (chronic) with digestive system involvement', 'B57.3', 'icdcat1-16', 'gnuhealth.pathology', 'B573'),
(193, 'Chagas\' disease (chronic) with heart involvement', 'B57.2', 'icdcat1-16', 'gnuhealth.pathology', 'B572'),
(194, 'Chagas\' disease (chronic) with nervous system involvement', 'B57.4', 'icdcat1-16', 'gnuhealth.pathology', 'B574'),
(195, 'Chagas\' disease (chronic) with other organ involvement', 'B57.5', 'icdcat1-16', 'gnuhealth.pathology', 'B575'),
(196, 'Chancroid', 'A57', 'icdcat1-5', 'gnuhealth.pathology', 'A57'),
(197, 'Cheek mucosa', 'C06.0', 'icdcat2-1', 'gnuhealth.pathology', 'C060'),
(198, 'Chikungunya virus disease', 'A92.0', 'icdcat1-10', 'gnuhealth.pathology', 'A920'),
(199, 'Chlamydia psittaci infection', 'A70', 'icdcat1-7', 'gnuhealth.pathology', 'A70'),
(200, 'Chlamydial conjunctivitis', 'A74.0', 'icdcat1-7', 'gnuhealth.pathology', 'A740'),
(201, 'Chlamydial infection of anus and rectum', 'A56.3', 'icdcat1-5', 'gnuhealth.pathology', 'A563'),
(202, 'Chlamydial infection of genito-urinary tract, unspecified', 'A56.2', 'icdcat1-5', 'gnuhealth.pathology', 'A562'),
(203, 'Chlamydial infection of lower genito-urinary tract', 'A56.0', 'icdcat1-5', 'gnuhealth.pathology', 'A560'),
(204, 'Chlamydial infection of pelviperitoneum and other genito-urinary organs', 'A56.1', 'icdcat1-5', 'gnuhealth.pathology', 'A561'),
(205, 'Chlamydial infection of pharynx', 'A56.4', 'icdcat1-5', 'gnuhealth.pathology', 'A564'),
(206, 'Chlamydial infection, unspecified', 'A74.9', 'icdcat1-7', 'gnuhealth.pathology', 'A749'),
(207, 'Chlamydial lymphogranuloma (venereum)', 'A55', 'icdcat1-5', 'gnuhealth.pathology', 'A55'),
(208, 'Cholera', 'A00', 'icdcat1-1', 'gnuhealth.pathology', 'A00'),
(209, 'Cholera due to Vibrio cholerae 01, biovar cholerae', 'A00.0', 'icdcat1-1', 'gnuhealth.pathology', 'A000'),
(210, 'Cholera due to Vibrio cholerae 01, biovar el tor', 'A00.1', 'icdcat1-1', 'gnuhealth.pathology', 'A001'),
(211, 'Cholera, unspecified', 'A00.9', 'icdcat1-1', 'gnuhealth.pathology', 'A009'),
(212, 'Choroid', 'C69.3', 'icdcat2-11', 'gnuhealth.pathology', 'C693'),
(213, 'Chromomycosis and phaeomycotic abscess', 'B43', 'icdcat1-15', 'gnuhealth.pathology', 'B43'),
(214, 'Chromomycosis, unspecified', 'B43.9', 'icdcat1-15', 'gnuhealth.pathology', 'B439'),
(215, 'Chronic erythraemia', 'C94.1', 'icdcat2-14', 'gnuhealth.pathology', 'C941'),
(216, 'Chronic intestinal amoebiasis', 'A06.1', 'icdcat1-1', 'gnuhealth.pathology', 'A061'),
(217, 'Chronic leukaemia of unspecified cell type', 'C95.1', 'icdcat2-14', 'gnuhealth.pathology', 'C951'),
(218, 'Chronic lymphocytic leukaemia', 'C91.1', 'icdcat2-14', 'gnuhealth.pathology', 'C911'),
(219, 'Chronic meningococcaemia', 'A39.3', 'icdcat1-4', 'gnuhealth.pathology', 'A393'),
(220, 'Chronic monocytic leukaemia', 'C93.1', 'icdcat2-14', 'gnuhealth.pathology', 'C931'),
(221, 'Chronic myeloid leukaemia', 'C92.1', 'icdcat2-14', 'gnuhealth.pathology', 'C921'),
(222, 'Chronic pulmonary blastomycosis', 'B40.1', 'icdcat1-15', 'gnuhealth.pathology', 'B401'),
(223, 'Chronic pulmonary coccidioidomycosis', 'B38.1', 'icdcat1-15', 'gnuhealth.pathology', 'B381'),
(224, 'Chronic pulmonary histoplasmosis capsulati', 'B39.1', 'icdcat1-15', 'gnuhealth.pathology', 'B391'),
(225, 'Chronic viral hepatitis', 'B18', 'icdcat1-12', 'gnuhealth.pathology', 'B18'),
(226, 'Chronic viral hepatitis B with delta-agent', 'B18.0', 'icdcat1-12', 'gnuhealth.pathology', 'B180'),
(227, 'Chronic viral hepatitis B without delta-agent', 'B18.1', 'icdcat1-12', 'gnuhealth.pathology', 'B181'),
(228, 'Chronic viral hepatitis C', 'B18.2', 'icdcat1-12', 'gnuhealth.pathology', 'B182'),
(229, 'Chronic viral hepatitis, unspecified', 'B18.9', 'icdcat1-12', 'gnuhealth.pathology', 'B189'),
(230, 'Ciliary body', 'C69.4', 'icdcat2-11', 'gnuhealth.pathology', 'C694'),
(231, 'Clitoris', 'C51.2', 'icdcat2-8', 'gnuhealth.pathology', 'C512'),
(232, 'Cloacogenic zone', 'C21.2', 'icdcat2-2', 'gnuhealth.pathology', 'C212'),
(233, 'Clonorchiasis', 'B66.1', 'icdcat1-17', 'gnuhealth.pathology', 'B661'),
(234, 'Clostridium perfringens [C. perfringens] as the cause of diseases classified to other chapters', 'B96.7', 'icdcat1-20', 'gnuhealth.pathology', 'B967'),
(235, 'Coccidioidomycosis', 'B38', 'icdcat1-15', 'gnuhealth.pathology', 'B38'),
(236, 'Coccidioidomycosis meningitis', 'B38.4', 'icdcat1-15', 'gnuhealth.pathology', 'B384'),
(237, 'Coccidioidomycosis, unspecified', 'B38.9', 'icdcat1-15', 'gnuhealth.pathology', 'B389'),
(238, 'Colon', 'D01.0', 'icdcat2-16', 'gnuhealth.pathology', 'D010'),
(239, 'Colon, unspecified', 'C18.9', 'icdcat2-2', 'gnuhealth.pathology', 'C189'),
(240, 'Colorado tick fever', 'A93.2', 'icdcat1-10', 'gnuhealth.pathology', 'A932'),
(241, 'Commissure of lip', 'C00.6', 'icdcat2-1', 'gnuhealth.pathology', 'C006'),
(242, 'Congenital syphilis', 'A50', 'icdcat1-5', 'gnuhealth.pathology', 'A50'),
(243, 'Congenital syphilis, unspecified', 'A50.9', 'icdcat1-5', 'gnuhealth.pathology', 'A509'),
(244, 'Conjunctiva', 'C69.0', 'icdcat2-11', 'gnuhealth.pathology', 'C690'),
(245, 'Conjunctivitis due to adenovirus', 'B30.1', 'icdcat1-14', 'gnuhealth.pathology', 'B301'),
(246, 'Connective and soft tissue of abdomen', 'C49.4', 'icdcat2-6', 'gnuhealth.pathology', 'C494'),
(247, 'Connective and soft tissue of head, face and neck', 'C49.0', 'icdcat2-6', 'gnuhealth.pathology', 'C490'),
(248, 'Connective and soft tissue of lower limb, including hip', 'C49.2', 'icdcat2-6', 'gnuhealth.pathology', 'C492'),
(249, 'Connective and soft tissue of pelvis', 'C49.5', 'icdcat2-6', 'gnuhealth.pathology', 'C495'),
(250, 'Connective and soft tissue of thorax', 'C49.3', 'icdcat2-6', 'gnuhealth.pathology', 'C493'),
(251, 'Connective and soft tissue of trunk, unspecified', 'C49.6', 'icdcat2-6', 'gnuhealth.pathology', 'C496'),
(252, 'Connective and soft tissue of upper limb, including shoulder', 'C49.1', 'icdcat2-6', 'gnuhealth.pathology', 'C491'),
(253, 'Connective and soft tissue, unspecified', 'C49.9', 'icdcat2-6', 'gnuhealth.pathology', 'C499'),
(254, 'Cornea', 'C69.1', 'icdcat2-11', 'gnuhealth.pathology', 'C691'),
(255, 'Coronavirus as the cause of diseases classified to other chapters', 'B97.2', 'icdcat1-20', 'gnuhealth.pathology', 'B972'),
(256, 'Coronavirus infection, unspecified', 'B34.2', 'icdcat1-14', 'gnuhealth.pathology', 'B342'),
(257, 'Corpus uteri, unspecified', 'C54.9', 'icdcat2-8', 'gnuhealth.pathology', 'C549'),
(258, 'Cortex of adrenal gland', 'C74.0', 'icdcat2-12', 'gnuhealth.pathology', 'C740'),
(259, 'Craniopharyngeal duct', 'C75.2', 'icdcat2-12', 'gnuhealth.pathology', 'C752'),
(260, 'Creutzfeldt-Jakob disease', 'A81.0', 'icdcat1-9', 'gnuhealth.pathology', 'A810'),
(261, 'Crimean-Congo haemorrhagic fever', 'A98.0', 'icdcat1-10', 'gnuhealth.pathology', 'A980'),
(262, 'Cryptococcosis', 'B45', 'icdcat1-15', 'gnuhealth.pathology', 'B45'),
(263, 'Cryptococcosis, unspecified', 'B45.9', 'icdcat1-15', 'gnuhealth.pathology', 'B459'),
(264, 'Cryptosporidiosis', 'A07.2', 'icdcat1-1', 'gnuhealth.pathology', 'A072'),
(265, 'Cutaneous amoebiasis', 'A06.7', 'icdcat1-1', 'gnuhealth.pathology', 'A067'),
(266, 'Cutaneous and mucocutaneous bartonellosis', 'A44.1', 'icdcat1-4', 'gnuhealth.pathology', 'A441'),
(267, 'Cutaneous anthrax', 'A22.0', 'icdcat1-3', 'gnuhealth.pathology', 'A220'),
(268, 'Cutaneous blastomycosis', 'B40.3', 'icdcat1-15', 'gnuhealth.pathology', 'B403'),
(269, 'Cutaneous chromomycosis', 'B43.0', 'icdcat1-15', 'gnuhealth.pathology', 'B430'),
(270, 'Cutaneous coccidioidomycosis', 'B38.3', 'icdcat1-15', 'gnuhealth.pathology', 'B383'),
(271, 'Cutaneous cryptococcosis', 'B45.2', 'icdcat1-15', 'gnuhealth.pathology', 'B452'),
(272, 'Cutaneous diphtheria', 'A36.3', 'icdcat1-4', 'gnuhealth.pathology', 'A363'),
(273, 'Cutaneous erysipeloid', 'A26.0', 'icdcat1-3', 'gnuhealth.pathology', 'A260'),
(274, 'Cutaneous leishmaniasis', 'B55.1', 'icdcat1-16', 'gnuhealth.pathology', 'B551'),
(275, 'Cutaneous listeriosis', 'A32.0', 'icdcat1-4', 'gnuhealth.pathology', 'A320'),
(276, 'Cutaneous mucormycosis', 'B46.3', 'icdcat1-15', 'gnuhealth.pathology', 'B463'),
(277, 'Cutaneous mycobacterial infection', 'A31.1', 'icdcat1-4', 'gnuhealth.pathology', 'A311'),
(278, 'Cutaneous myiasis', 'B87.0', 'icdcat1-18', 'gnuhealth.pathology', 'B870'),
(279, 'Cutaneous nocardiosis', 'A43.1', 'icdcat1-4', 'gnuhealth.pathology', 'A431'),
(280, 'Cutaneous strongyloidiasis', 'B78.1', 'icdcat1-17', 'gnuhealth.pathology', 'B781'),
(281, 'Cysticercosis', 'B69', 'icdcat1-17', 'gnuhealth.pathology', 'B69'),
(282, 'Cysticercosis of central nervous system', 'B69.0', 'icdcat1-17', 'gnuhealth.pathology', 'B690'),
(283, 'Cysticercosis of eye', 'B69.1', 'icdcat1-17', 'gnuhealth.pathology', 'B691'),
(284, 'Cysticercosis of other sites', 'B69.8', 'icdcat1-17', 'gnuhealth.pathology', 'B698'),
(285, 'Cysticercosis, unspecified', 'B69.9', 'icdcat1-17', 'gnuhealth.pathology', 'B699'),
(286, 'Cytomegaloviral disease', 'B25', 'icdcat1-14', 'gnuhealth.pathology', 'B25'),
(287, 'Cytomegaloviral disease, unspecified', 'B25.9', 'icdcat1-14', 'gnuhealth.pathology', 'B259'),
(288, 'Cytomegaloviral hepatitis', 'B25.1', 'icdcat1-14', 'gnuhealth.pathology', 'B251'),
(289, 'Cytomegaloviral mononucleosis', 'B27.1', 'icdcat1-14', 'gnuhealth.pathology', 'B271'),
(290, 'Cytomegaloviral pancreatitis', 'B25.2', 'icdcat1-14', 'gnuhealth.pathology', 'B252'),
(291, 'Cytomegaloviral pneumonitis', 'B25.0', 'icdcat1-14', 'gnuhealth.pathology', 'B250'),
(292, 'Dengue fever [classical dengue]', 'A90', 'icdcat1-10', 'gnuhealth.pathology', 'A90'),
(293, 'Dengue haemorrhagic fever', 'A91', 'icdcat1-10', 'gnuhealth.pathology', 'A91'),
(294, 'Dermatophytosis', 'B35', 'icdcat1-15', 'gnuhealth.pathology', 'B35'),
(295, 'Dermatophytosis, unspecified', 'B35.9', 'icdcat1-15', 'gnuhealth.pathology', 'B359'),
(296, 'Descended testis', 'C62.1', 'icdcat2-9', 'gnuhealth.pathology', 'C621'),
(297, 'Descending colon', 'C18.6', 'icdcat2-2', 'gnuhealth.pathology', 'C186'),
(298, 'Diarrhoea and gastro-enteritis of presumed infectious origin', 'A09', 'icdcat1-1', 'gnuhealth.pathology', 'A09'),
(299, 'Dicroceliasis', 'B66.2', 'icdcat1-17', 'gnuhealth.pathology', 'B662'),
(300, 'Diffuse non-Hodgkin\'s lymphoma', 'C83', 'icdcat2-14', 'gnuhealth.pathology', 'C83'),
(301, 'Diffuse non-Hodgkin\'s lymphoma, unspecified', 'C83.9', 'icdcat2-14', 'gnuhealth.pathology', 'C839'),
(302, 'Digestive organ, unspecified', 'D01.9', 'icdcat2-16', 'gnuhealth.pathology', 'D019'),
(303, 'Diphtheria', 'A36', 'icdcat1-4', 'gnuhealth.pathology', 'A36'),
(304, 'Diphtheria, unspecified', 'A36.9', 'icdcat1-4', 'gnuhealth.pathology', 'A369'),
(305, 'Diphyllobothriasis', 'B70.0', 'icdcat1-17', 'gnuhealth.pathology', 'B700'),
(306, 'Diphyllobothriasis and sparganosis', 'B70', 'icdcat1-17', 'gnuhealth.pathology', 'B70'),
(307, 'Dipylidiasis', 'B71.1', 'icdcat1-17', 'gnuhealth.pathology', 'B711'),
(308, 'Disseminated aspergillosis', 'B44.7', 'icdcat1-15', 'gnuhealth.pathology', 'B447'),
(309, 'Disseminated blastomycosis', 'B40.7', 'icdcat1-15', 'gnuhealth.pathology', 'B407'),
(310, 'Disseminated coccidioidomycosis', 'B38.7', 'icdcat1-15', 'gnuhealth.pathology', 'B387'),
(311, 'Disseminated cryptococcosis', 'B45.7', 'icdcat1-15', 'gnuhealth.pathology', 'B457'),
(312, 'Disseminated herpesviral disease', 'B00.7', 'icdcat1-11', 'gnuhealth.pathology', 'B007'),
(313, 'Disseminated histoplasmosis capsulati', 'B39.3', 'icdcat1-15', 'gnuhealth.pathology', 'B393'),
(314, 'Disseminated mucormycosis', 'B46.4', 'icdcat1-15', 'gnuhealth.pathology', 'B464'),
(315, 'Disseminated paracoccidioidomycosis', 'B41.7', 'icdcat1-15', 'gnuhealth.pathology', 'B417'),
(316, 'Disseminated sporotrichosis', 'B42.7', 'icdcat1-15', 'gnuhealth.pathology', 'B427'),
(317, 'Disseminated strongyloidiasis', 'B78.7', 'icdcat1-17', 'gnuhealth.pathology', 'B787'),
(318, 'Disseminated zoster', 'B02.7', 'icdcat1-11', 'gnuhealth.pathology', 'B027'),
(319, 'Dome of bladder', 'C67.1', 'icdcat2-10', 'gnuhealth.pathology', 'C671'),
(320, 'Dorsal surface of tongue', 'C02.0', 'icdcat2-1', 'gnuhealth.pathology', 'C020'),
(321, 'Dracunculiasis', 'B72', 'icdcat1-17', 'gnuhealth.pathology', 'B72'),
(322, 'Duodenum', 'C17.0', 'icdcat2-2', 'gnuhealth.pathology', 'C170'),
(323, 'Early congenital syphilis, latent', 'A50.1', 'icdcat1-5', 'gnuhealth.pathology', 'A501'),
(324, 'Early congenital syphilis, symptomatic', 'A50.0', 'icdcat1-5', 'gnuhealth.pathology', 'A500'),
(325, 'Early congenital syphilis, unspecified', 'A50.2', 'icdcat1-5', 'gnuhealth.pathology', 'A502'),
(326, 'Early syphilis', 'A51', 'icdcat1-5', 'gnuhealth.pathology', 'A51'),
(327, 'Early syphilis, latent', 'A51.5', 'icdcat1-5', 'gnuhealth.pathology', 'A515'),
(328, 'Early syphilis, unspecified', 'A51.9', 'icdcat1-5', 'gnuhealth.pathology', 'A519'),
(329, 'Eastern equine encephalitis', 'A83.2', 'icdcat1-9', 'gnuhealth.pathology', 'A832'),
(330, 'Ebola virus disease', 'A98.4', 'icdcat1-10', 'gnuhealth.pathology', 'A984'),
(331, 'Echinococcosis', 'B67', 'icdcat1-17', 'gnuhealth.pathology', 'B67'),
(332, 'Echinococcosis, other and unspecified', 'B67.9', 'icdcat1-17', 'gnuhealth.pathology', 'B679'),
(333, 'Echinococcosis, unspecified, of liver', 'B67.8', 'icdcat1-17', 'gnuhealth.pathology', 'B678'),
(334, 'Echinococcus granulosus infection of bone', 'B67.2', 'icdcat1-17', 'gnuhealth.pathology', 'B672'),
(335, 'Echinococcus granulosus infection of liver', 'B67.0', 'icdcat1-17', 'gnuhealth.pathology', 'B670'),
(336, 'Echinococcus granulosus infection of lung', 'B67.1', 'icdcat1-17', 'gnuhealth.pathology', 'B671'),
(337, 'Echinococcus granulosus infection, other and multiple sites', 'B67.3', 'icdcat1-17', 'gnuhealth.pathology', 'B673'),
(338, 'Echinococcus granulosus infection, unspecified', 'B67.4', 'icdcat1-17', 'gnuhealth.pathology', 'B674'),
(339, 'Echinococcus multilocularis infection of liver', 'B67.5', 'icdcat1-17', 'gnuhealth.pathology', 'B675'),
(340, 'Echinococcus multilocularis infection, other and multiple sites', 'B67.6', 'icdcat1-17', 'gnuhealth.pathology', 'B676'),
(341, 'Echinococcus multilocularis infection, unspecified', 'B67.7', 'icdcat1-17', 'gnuhealth.pathology', 'B677'),
(342, 'Eczema herpeticum', 'B00.0', 'icdcat1-11', 'gnuhealth.pathology', 'B000'),
(343, 'Endocervix', 'C53.0', 'icdcat2-8', 'gnuhealth.pathology', 'C530'),
(344, 'Endocrine gland, unspecified', 'C75.9', 'icdcat2-12', 'gnuhealth.pathology', 'C759'),
(345, 'Endocrine pancreas', 'C25.4', 'icdcat2-2', 'gnuhealth.pathology', 'C254'),
(346, 'Endometrium', 'C54.1', 'icdcat2-8', 'gnuhealth.pathology', 'C541'),
(347, 'Enteritis due to Yersinia enterocolitica', 'A04.6', 'icdcat1-1', 'gnuhealth.pathology', 'A046'),
(348, 'Enterobiasis', 'B80', 'icdcat1-17', 'gnuhealth.pathology', 'B80'),
(349, 'Enterocolitis due to Clostridium difficile', 'A04.7', 'icdcat1-1', 'gnuhealth.pathology', 'A047'),
(350, 'Enterohaemorrhagic Escherichia coli infection', 'A04.3', 'icdcat1-1', 'gnuhealth.pathology', 'A043'),
(351, 'Enteroinvasive Escherichia coli infection', 'A04.2', 'icdcat1-1', 'gnuhealth.pathology', 'A042'),
(352, 'Enteropathogenic Escherichia coli infection', 'A04.0', 'icdcat1-1', 'gnuhealth.pathology', 'A040'),
(353, 'Enterotoxigenic Escherichia coli infection', 'A04.1', 'icdcat1-1', 'gnuhealth.pathology', 'A041'),
(354, 'Enteroviral encephalitis', 'A85.0', 'icdcat1-9', 'gnuhealth.pathology', 'A850'),
(355, 'Enteroviral exanthematous fever [Boston exanthem]', 'A88.0', 'icdcat1-9', 'gnuhealth.pathology', 'A880'),
(356, 'Enteroviral meningitis', 'A87.0', 'icdcat1-9', 'gnuhealth.pathology', 'A870'),
(357, 'Enteroviral vesicular pharyngitis', 'B08.5', 'icdcat1-11', 'gnuhealth.pathology', 'B085'),
(358, 'Enteroviral vesicular stomatitis with exanthem', 'B08.4', 'icdcat1-11', 'gnuhealth.pathology', 'B084'),
(359, 'Enterovirus as the cause of diseases classified to other chapters', 'B97.1', 'icdcat1-20', 'gnuhealth.pathology', 'B971'),
(360, 'Enterovirus infection, unspecified', 'B34.1', 'icdcat1-14', 'gnuhealth.pathology', 'B341'),
(361, 'Epidemic louse-borne typhus fever due to Rickettsia prowazekii', 'A75.0', 'icdcat1-8', 'gnuhealth.pathology', 'A750'),
(362, 'Epidemic myalgia', 'B33.0', 'icdcat1-14', 'gnuhealth.pathology', 'B330'),
(363, 'Epidemic vertigo', 'A88.1', 'icdcat1-9', 'gnuhealth.pathology', 'A881'),
(364, 'Epididymis', 'C63.0', 'icdcat2-9', 'gnuhealth.pathology', 'C630'),
(365, 'Erysipelas', 'A46', 'icdcat1-4', 'gnuhealth.pathology', 'A46'),
(366, 'Erysipeloid', 'A26', 'icdcat1-3', 'gnuhealth.pathology', 'A26'),
(367, 'Erysipeloid, unspecified', 'A26.9', 'icdcat1-3', 'gnuhealth.pathology', 'A269'),
(368, 'Erysipelothrix septicaemia', 'A26.7', 'icdcat1-3', 'gnuhealth.pathology', 'A267'),
(369, 'Erythema infectiosum [fifth disease]', 'B08.3', 'icdcat1-11', 'gnuhealth.pathology', 'B083'),
(370, 'Escherichia coli [E. coli] as the cause of diseases classified to other chapters', 'B96.2', 'icdcat1-20', 'gnuhealth.pathology', 'B962'),
(371, 'Ethmoidal sinus', 'C31.1', 'icdcat2-3', 'gnuhealth.pathology', 'C311'),
(372, 'Eumycetoma', 'B47.0', 'icdcat1-15', 'gnuhealth.pathology', 'B470'),
(373, 'Exanthema subitum [sixth disease]', 'B08.2', 'icdcat1-11', 'gnuhealth.pathology', 'B082'),
(374, 'Exocervix', 'C53.1', 'icdcat2-8', 'gnuhealth.pathology', 'C531'),
(375, 'External hirudiniasis', 'B88.3', 'icdcat1-18', 'gnuhealth.pathology', 'B883'),
(376, 'External lip, unspecified', 'C00.2', 'icdcat2-1', 'gnuhealth.pathology', 'C002'),
(377, 'External lower lip', 'C00.1', 'icdcat2-1', 'gnuhealth.pathology', 'C001'),
(378, 'External upper lip', 'C00.0', 'icdcat2-1', 'gnuhealth.pathology', 'C000'),
(379, 'Extrahepatic bile duct', 'C24.0', 'icdcat2-2', 'gnuhealth.pathology', 'C240'),
(380, 'Extraintestinal yersiniosis', 'A28.2', 'icdcat1-3', 'gnuhealth.pathology', 'A282'),
(381, 'Eye, unspecified', 'C69.9', 'icdcat2-11', 'gnuhealth.pathology', 'C699'),
(382, 'Fallopian tube', 'C57.0', 'icdcat2-8', 'gnuhealth.pathology', 'C570'),
(383, 'Far Eastern tick-borne encephalitis [Russian spring-summer encephalitis]', 'A84.0', 'icdcat1-9', 'gnuhealth.pathology', 'A840'),
(384, 'Fascioliasis', 'B66.3', 'icdcat1-17', 'gnuhealth.pathology', 'B663'),
(385, 'Fasciolopsiasis', 'B66.5', 'icdcat1-17', 'gnuhealth.pathology', 'B665'),
(386, 'Female genital organ, unspecified', 'C57.9', 'icdcat2-8', 'gnuhealth.pathology', 'C579'),
(387, 'Filariasis', 'B74', 'icdcat1-17', 'gnuhealth.pathology', 'B74'),
(388, 'Filariasis due to Brugia malayi', 'B74.1', 'icdcat1-17', 'gnuhealth.pathology', 'B741'),
(389, 'Filariasis due to Brugia timori', 'B74.2', 'icdcat1-17', 'gnuhealth.pathology', 'B742'),
(390, 'Filariasis due to Wuchereria bancrofti', 'B74.0', 'icdcat1-17', 'gnuhealth.pathology', 'B740'),
(391, 'Filariasis, unspecified', 'B74.9', 'icdcat1-17', 'gnuhealth.pathology', 'B749'),
(392, 'Floor of mouth, unspecified', 'C04.9', 'icdcat2-1', 'gnuhealth.pathology', 'C049'),
(393, 'Fluke infection, unspecified', 'B66.9', 'icdcat1-17', 'gnuhealth.pathology', 'B669'),
(394, 'Follicular non-Hodgkin\'s lymphoma, unspecified', 'C82.9', 'icdcat2-14', 'gnuhealth.pathology', 'C829'),
(395, 'Follicular [nodular] non-Hodgkin\'s lymphoma', 'C82', 'icdcat2-14', 'gnuhealth.pathology', 'C82'),
(396, 'Foodborne Bacillus cereus intoxication', 'A05.4', 'icdcat1-1', 'gnuhealth.pathology', 'A054'),
(397, 'Foodborne Clostridium perfringens [Clostridium welchii] intoxication', 'A05.2', 'icdcat1-1', 'gnuhealth.pathology', 'A052'),
(398, 'Foodborne staphylococcal intoxication', 'A05.0', 'icdcat1-1', 'gnuhealth.pathology', 'A050'),
(399, 'Foodborne Vibrio parahaemolyticus intoxication', 'A05.3', 'icdcat1-1', 'gnuhealth.pathology', 'A053'),
(400, 'Frontal lobe', 'C71.1', 'icdcat2-11', 'gnuhealth.pathology', 'C711'),
(401, 'Frontal sinus', 'C31.2', 'icdcat2-3', 'gnuhealth.pathology', 'C312'),
(402, 'Fundus of stomach', 'C16.1', 'icdcat2-2', 'gnuhealth.pathology', 'C161'),
(403, 'Fundus uteri', 'C54.3', 'icdcat2-8', 'gnuhealth.pathology', 'C543'),
(404, 'Gambiense trypanosomiasis', 'B56.0', 'icdcat1-16', 'gnuhealth.pathology', 'B560'),
(405, 'Gamma heavy chain disease', 'C88.2', 'icdcat2-14', 'gnuhealth.pathology', 'C882'),
(406, 'Gammaherpesviral mononucleosis', 'B27.0', 'icdcat1-14', 'gnuhealth.pathology', 'B270'),
(407, 'Gangosa', 'A66.5', 'icdcat1-6', 'gnuhealth.pathology', 'A665'),
(408, 'Gas gangrene', 'A48.0', 'icdcat1-4', 'gnuhealth.pathology', 'A480'),
(409, 'Gastro-intestinal anthrax', 'A22.2', 'icdcat1-3', 'gnuhealth.pathology', 'A222'),
(410, 'Gastro-intestinal mucormycosis', 'B46.2', 'icdcat1-15', 'gnuhealth.pathology', 'B462'),
(411, 'Gastro-intestinal tularaemia', 'A21.3', 'icdcat1-3', 'gnuhealth.pathology', 'A213'),
(412, 'Generalised tularaemia', 'A21.7', 'icdcat1-3', 'gnuhealth.pathology', 'A217'),
(413, 'Geotrichosis', 'B48.3', 'icdcat1-15', 'gnuhealth.pathology', 'B483'),
(414, 'Giardiasis [lambliasis]', 'A07.1', 'icdcat1-1', 'gnuhealth.pathology', 'A071'),
(415, 'Glanders', 'A24.0', 'icdcat1-3', 'gnuhealth.pathology', 'A240'),
(416, 'Glanders and melioidosis', 'A24', 'icdcat1-3', 'gnuhealth.pathology', 'A24'),
(417, 'Glans penis', 'C60.1', 'icdcat2-9', 'gnuhealth.pathology', 'C601'),
(418, 'Glottis', 'C32.0', 'icdcat2-3', 'gnuhealth.pathology', 'C320'),
(419, 'Gnathostomiasis', 'B83.1', 'icdcat1-17', 'gnuhealth.pathology', 'B831'),
(420, 'Gonococcal infection', 'A54', 'icdcat1-5', 'gnuhealth.pathology', 'A54'),
(421, 'Gonococcal infection of anus and rectum', 'A54.6', 'icdcat1-5', 'gnuhealth.pathology', 'A546'),
(422, 'Gonococcal infection of eye', 'A54.3', 'icdcat1-5', 'gnuhealth.pathology', 'A543'),
(423, 'Gonococcal infection of lower genito-urinary tract with periurethral and accessory gland abscess', 'A54.1', 'icdcat1-5', 'gnuhealth.pathology', 'A541'),
(424, 'Gonococcal infection of lower genito-urinary tract without periurethral or accessory gland abscess', 'A54.0', 'icdcat1-5', 'gnuhealth.pathology', 'A540'),
(425, 'Gonococcal infection of musculoskeletal system', 'A54.4', 'icdcat1-5', 'gnuhealth.pathology', 'A544'),
(426, 'Gonococcal infection, unspecified', 'A54.9', 'icdcat1-5', 'gnuhealth.pathology', 'A549'),
(427, 'Gonococcal pelviperitonitis and other gonococcal genito-urinary infections', 'A54.2', 'icdcat1-5', 'gnuhealth.pathology', 'A542'),
(428, 'Gonococcal pharyngitis', 'A54.5', 'icdcat1-5', 'gnuhealth.pathology', 'A545'),
(429, 'Granuloma inguinale', 'A58', 'icdcat1-5', 'gnuhealth.pathology', 'A58'),
(430, 'Greater curvature of stomach, unspecified', 'C16.6', 'icdcat2-2', 'gnuhealth.pathology', 'C166'),
(431, 'Gum, unspecified', 'C03.9', 'icdcat2-1', 'gnuhealth.pathology', 'C039'),
(432, 'Gummata and ulcers of yaws', 'A66.4', 'icdcat1-6', 'gnuhealth.pathology', 'A664'),
(433, 'Haemophilus influenzae infection, unspecified', 'A49.2', 'icdcat1-4', 'gnuhealth.pathology', 'A492'),
(434, 'Haemophilus influenzae [H. influenzae] as the cause of diseases classified to other chapters', 'B96.3', 'icdcat1-20', 'gnuhealth.pathology', 'B963'),
(435, 'Haemorrhagic fever with renal syndrome', 'A98.5', 'icdcat1-10', 'gnuhealth.pathology', 'A985'),
(436, 'Hairy-cell leukaemia', 'C91.4', 'icdcat2-14', 'gnuhealth.pathology', 'C914'),
(437, 'Hantavirus (cardio-)pulmonary syndrome', 'B33.4', 'icdcat1-14', 'gnuhealth.pathology', 'B334'),
(438, 'Hard palate', 'C05.0', 'icdcat2-1', 'gnuhealth.pathology', 'C050'),
(439, 'Head of pancreas', 'C25.0', 'icdcat2-2', 'gnuhealth.pathology', 'C250'),
(440, 'Head, face and neck', 'C76.0', 'icdcat2-13', 'gnuhealth.pathology', 'C760'),
(441, 'Heart', 'C38.0', 'icdcat2-3', 'gnuhealth.pathology', 'C380'),
(442, 'Helminthiasis, unspecified', 'B83.9', 'icdcat1-17', 'gnuhealth.pathology', 'B839'),
(443, 'Hepatic flexure', 'C18.3', 'icdcat2-2', 'gnuhealth.pathology', 'C183'),
(444, 'Hepatitis A with hepatic coma', 'B15.0', 'icdcat1-12', 'gnuhealth.pathology', 'B150'),
(445, 'Hepatitis A without hepatic coma', 'B15.9', 'icdcat1-12', 'gnuhealth.pathology', 'B159'),
(446, 'Hepatoblastoma', 'C22.2', 'icdcat2-2', 'gnuhealth.pathology', 'C222'),
(447, 'Herpesviral encephalitis', 'B00.4', 'icdcat1-11', 'gnuhealth.pathology', 'B004'),
(448, 'Herpesviral gingivostomatitis and pharyngotonsillitis', 'B00.2', 'icdcat1-11', 'gnuhealth.pathology', 'B002'),
(449, 'Herpesviral infection of genitalia and urogenital tract', 'A60.0', 'icdcat1-5', 'gnuhealth.pathology', 'A600'),
(450, 'Herpesviral infection of perianal skin and rectum', 'A60.1', 'icdcat1-5', 'gnuhealth.pathology', 'A601'),
(451, 'Herpesviral infection, unspecified', 'B00.9', 'icdcat1-11', 'gnuhealth.pathology', 'B009'),
(452, 'Herpesviral meningitis', 'B00.3', 'icdcat1-11', 'gnuhealth.pathology', 'B003'),
(453, 'Herpesviral ocular disease', 'B00.5', 'icdcat1-11', 'gnuhealth.pathology', 'B005'),
(454, 'Herpesviral vesicular dermatitis', 'B00.1', 'icdcat1-11', 'gnuhealth.pathology', 'B001'),
(455, 'Herpesviral [herpes simplex] infections', 'B00', 'icdcat1-11', 'gnuhealth.pathology', 'B00'),
(456, 'Histoplasmosis', 'B39', 'icdcat1-15', 'gnuhealth.pathology', 'B39'),
(457, 'Histoplasmosis capsulati, unspecified', 'B39.4', 'icdcat1-15', 'gnuhealth.pathology', 'B394'),
(458, 'Histoplasmosis duboisii', 'B39.5', 'icdcat1-15', 'gnuhealth.pathology', 'B395'),
(459, 'Histoplasmosis, unspecified', 'B39.9', 'icdcat1-15', 'gnuhealth.pathology', 'B399'),
(460, 'HIV disease resulting in (persistent) generalised lymphadenopathy', 'B23.1', 'icdcat1-13', 'gnuhealth.pathology', 'B231'),
(461, 'HIV disease resulting in Burkitt\'s lymphoma', 'B21.1', 'icdcat1-13', 'gnuhealth.pathology', 'B211'),
(462, 'HIV disease resulting in candidiasis', 'B20.4', 'icdcat1-13', 'gnuhealth.pathology', 'B204'),
(463, 'HIV disease resulting in cytomegaloviral disease', 'B20.2', 'icdcat1-13', 'gnuhealth.pathology', 'B202'),
(464, 'HIV disease resulting in encephalopathy', 'B22.0', 'icdcat1-13', 'gnuhealth.pathology', 'B220'),
(465, 'HIV disease resulting in haematological and immunological abnormalities, not elsewhere classified', 'B23.2', 'icdcat1-13', 'gnuhealth.pathology', 'B232'),
(466, 'HIV disease resulting in Kaposi\'s sarcoma', 'B21.0', 'icdcat1-13', 'gnuhealth.pathology', 'B210'),
(467, 'HIV disease resulting in lymphoid interstitial pneumonitis', 'B22.1', 'icdcat1-13', 'gnuhealth.pathology', 'B221'),
(468, 'HIV disease resulting in multiple diseases classified elsewhere', 'B22.7', 'icdcat1-13', 'gnuhealth.pathology', 'B227'),
(469, 'HIV disease resulting in multiple infections', 'B20.7', 'icdcat1-13', 'gnuhealth.pathology', 'B207'),
(470, 'HIV disease resulting in multiple malignant neoplasms', 'B21.7', 'icdcat1-13', 'gnuhealth.pathology', 'B217'),
(471, 'HIV disease resulting in mycobacterial infection', 'B20.0', 'icdcat1-13', 'gnuhealth.pathology', 'B200'),
(472, 'HIV disease resulting in other bacterial infections', 'B20.1', 'icdcat1-13', 'gnuhealth.pathology', 'B201'),
(473, 'HIV disease resulting in other infectious and parasitic diseases', 'B20.8', 'icdcat1-13', 'gnuhealth.pathology', 'B208'),
(474, 'HIV disease resulting in other malignant neoplasms', 'B21.8', 'icdcat1-13', 'gnuhealth.pathology', 'B218'),
(475, 'HIV disease resulting in other malignant neoplasms of lymphoid, haematopoietic and related tissue', 'B21.3', 'icdcat1-13', 'gnuhealth.pathology', 'B213'),
(476, 'HIV disease resulting in other mycoses', 'B20.5', 'icdcat1-13', 'gnuhealth.pathology', 'B205'),
(477, 'HIV disease resulting in other specified conditions', 'B23.8', 'icdcat1-13', 'gnuhealth.pathology', 'B238'),
(478, 'HIV disease resulting in other types of non-Hodgkin\'s lymphoma', 'B21.2', 'icdcat1-13', 'gnuhealth.pathology', 'B212'),
(479, 'HIV disease resulting in other viral infections', 'B20.3', 'icdcat1-13', 'gnuhealth.pathology', 'B203'),
(480, 'HIV disease resulting in Pneumocystis carinii pneumonia', 'B20.6', 'icdcat1-13', 'gnuhealth.pathology', 'B206'),
(481, 'HIV disease resulting in unspecified infectious or parasitic disease', 'B20.9', 'icdcat1-13', 'gnuhealth.pathology', 'B209'),
(482, 'HIV disease resulting in unspecified malignant neoplasm', 'B21.9', 'icdcat1-13', 'gnuhealth.pathology', 'B219'),
(483, 'HIV disease resulting in wasting syndrome', 'B22.2', 'icdcat1-13', 'gnuhealth.pathology', 'B222'),
(484, 'Hodgkin\'s disease', 'C81', 'icdcat2-14', 'gnuhealth.pathology', 'C81'),
(485, 'Hodgkin\'s disease, unspecified', 'C81.9', 'icdcat2-14', 'gnuhealth.pathology', 'C819'),
(486, 'Hookworm disease, unspecified', 'B76.9', 'icdcat1-17', 'gnuhealth.pathology', 'B769'),
(487, 'Hookworm diseases', 'B76', 'icdcat1-17', 'gnuhealth.pathology', 'B76'),
(488, 'Human immunodeficiency virus [HIV] disease resulting in infectious and parasitic diseases', 'B20', 'icdcat1-13', 'gnuhealth.pathology', 'B20'),
(489, 'Human immunodeficiency virus [HIV] disease resulting in malignant neoplasms', 'B21', 'icdcat1-13', 'gnuhealth.pathology', 'B21'),
(490, 'Human immunodeficiency virus [HIV] disease resulting in other conditions', 'B23', 'icdcat1-13', 'gnuhealth.pathology', 'B23'),
(491, 'Human immunodeficiency virus [HIV] disease resulting in other specified diseases', 'B22', 'icdcat1-13', 'gnuhealth.pathology', 'B22'),
(492, 'Hymenolepiasis', 'B71.0', 'icdcat1-17', 'gnuhealth.pathology', 'B710'),
(493, 'Hyperkeratosis of yaws', 'A66.3', 'icdcat1-6', 'gnuhealth.pathology', 'A663'),
(494, 'Hypopharynx, unspecified', 'C13.9', 'icdcat2-1', 'gnuhealth.pathology', 'C139'),
(495, 'Ileum', 'C17.2', 'icdcat2-2', 'gnuhealth.pathology', 'C172'),
(496, 'Ill-defined sites within the digestive system', 'C26.9', 'icdcat2-2', 'gnuhealth.pathology', 'C269'),
(497, 'Ill-defined sites within the respiratory system', 'C39.9', 'icdcat2-3', 'gnuhealth.pathology', 'C399'),
(498, 'Immunoblastic (diffuse)', 'C83.4', 'icdcat2-14', 'gnuhealth.pathology', 'C834'),
(499, 'Immunoproliferative small intestinal disease', 'C88.3', 'icdcat2-14', 'gnuhealth.pathology', 'C883'),
(500, 'Indeterminate leprosy', 'A30.0', 'icdcat1-4', 'gnuhealth.pathology', 'A300'),
(501, 'Infection due to other mycobacteria', 'A31', 'icdcat1-4', 'gnuhealth.pathology', 'A31'),
(502, 'Infectious mononucleosis', 'B27', 'icdcat1-14', 'gnuhealth.pathology', 'B27'),
(503, 'Infectious mononucleosis, unspecified', 'B27.9', 'icdcat1-14', 'gnuhealth.pathology', 'B279'),
(504, 'Infestation, unspecified', 'B88.9', 'icdcat1-18', 'gnuhealth.pathology', 'B889'),
(505, 'Inguinal and lower limb lymph nodes', 'C77.4', 'icdcat2-13', 'gnuhealth.pathology', 'C774'),
(506, 'Initial lesions of yaws', 'A66.0', 'icdcat1-6', 'gnuhealth.pathology', 'A660'),
(507, 'Initial stage of trachoma', 'A71.0', 'icdcat1-7', 'gnuhealth.pathology', 'A710'),
(508, 'Intermediate lesions of pinta', 'A67.1', 'icdcat1-6', 'gnuhealth.pathology', 'A671'),
(509, 'Internal hirudiniasis', 'B83.4', 'icdcat1-17', 'gnuhealth.pathology', 'B834'),
(510, 'Intestinal angiostrongyliasis', 'B81.3', 'icdcat1-17', 'gnuhealth.pathology', 'B813'),
(511, 'Intestinal capillariasis', 'B81.1', 'icdcat1-17', 'gnuhealth.pathology', 'B811'),
(512, 'Intestinal helminthiasis, unspecified', 'B82.0', 'icdcat1-17', 'gnuhealth.pathology', 'B820'),
(513, 'Intestinal parasitism, unspecified', 'B82.9', 'icdcat1-17', 'gnuhealth.pathology', 'B829'),
(514, 'Intestinal strongyloidiasis', 'B78.0', 'icdcat1-17', 'gnuhealth.pathology', 'B780'),
(515, 'Intestinal tract, part unspecified', 'C26.0', 'icdcat2-2', 'gnuhealth.pathology', 'C260'),
(516, 'Intra-abdominal lymph nodes', 'C77.2', 'icdcat2-13', 'gnuhealth.pathology', 'C772'),
(517, 'Intrahepatic bile duct carcinoma', 'C22.1', 'icdcat2-2', 'gnuhealth.pathology', 'C221'),
(518, 'Intrapelvic lymph nodes', 'C77.5', 'icdcat2-13', 'gnuhealth.pathology', 'C775'),
(519, 'Intrathoracic lymph nodes', 'C77.1', 'icdcat2-13', 'gnuhealth.pathology', 'C771'),
(520, 'Invasive pulmonary aspergillosis', 'B44.0', 'icdcat1-15', 'gnuhealth.pathology', 'B440'),
(521, 'Isosporiasis', 'A07.3', 'icdcat1-1', 'gnuhealth.pathology', 'A073'),
(522, 'Isthmus uteri', 'C54.0', 'icdcat2-8', 'gnuhealth.pathology', 'C540'),
(523, 'Japanese encephalitis', 'A83.0', 'icdcat1-9', 'gnuhealth.pathology', 'A830'),
(524, 'Jejunum', 'C17.1', 'icdcat2-2', 'gnuhealth.pathology', 'C171'),
(525, 'Junin haemorrhagic fever', 'A96.0', 'icdcat1-10', 'gnuhealth.pathology', 'A960'),
(526, 'Juvenile monocytic leukaemia', 'C93.3', 'icdcat2-14', 'gnuhealth.pathology', 'C933'),
(527, 'Kaposi\'s sarcoma', 'C46', 'icdcat2-6', 'gnuhealth.pathology', 'C46'),
(528, 'Kaposi\'s sarcoma of lymph nodes', 'C46.3', 'icdcat2-6', 'gnuhealth.pathology', 'C463'),
(529, 'Kaposi\'s sarcoma of multiple organs', 'C46.8', 'icdcat2-6', 'gnuhealth.pathology', 'C468'),
(530, 'Kaposi\'s sarcoma of other sites', 'C46.7', 'icdcat2-6', 'gnuhealth.pathology', 'C467'),
(531, 'Kaposi\'s sarcoma of palate', 'C46.2', 'icdcat2-6', 'gnuhealth.pathology', 'C462'),
(532, 'Kaposi\'s sarcoma of skin', 'C46.0', 'icdcat2-6', 'gnuhealth.pathology', 'C460'),
(533, 'Kaposi\'s sarcoma of soft tissue', 'C46.1', 'icdcat2-6', 'gnuhealth.pathology', 'C461'),
(534, 'Kaposi\'s sarcoma, unspecified', 'C46.9', 'icdcat2-6', 'gnuhealth.pathology', 'C469'),
(535, 'Keratoconjunctivitis due to adenovirus', 'B30.0', 'icdcat1-14', 'gnuhealth.pathology', 'B300'),
(536, 'Klebsiella pneumoniae [K. pneumoniae] as the cause of diseases classified to other chapters', 'B96.1', 'icdcat1-20', 'gnuhealth.pathology', 'B961'),
(537, 'Kyasanur Forest disease', 'A98.2', 'icdcat1-10', 'gnuhealth.pathology', 'A982'),
(538, 'Labium majus', 'C51.0', 'icdcat2-8', 'gnuhealth.pathology', 'C510'),
(539, 'Labium minus', 'C51.1', 'icdcat2-8', 'gnuhealth.pathology', 'C511'),
(540, 'Lachrymal gland and duct', 'C69.5', 'icdcat2-11', 'gnuhealth.pathology', 'C695'),
(541, 'Large cell (diffuse)', 'C83.3', 'icdcat2-14', 'gnuhealth.pathology', 'C833');
INSERT INTO `diagnosis` (`id`, `name`, `code`, `category`, `model`, `unique_id`) VALUES
(542, 'Large cell, follicular', 'C82.2', 'icdcat2-14', 'gnuhealth.pathology', 'C822'),
(543, 'Laryngeal cartilage', 'C32.3', 'icdcat2-3', 'gnuhealth.pathology', 'C323'),
(544, 'Laryngeal diphtheria', 'A36.2', 'icdcat1-4', 'gnuhealth.pathology', 'A362'),
(545, 'Larynx', 'D02.0', 'icdcat2-16', 'gnuhealth.pathology', 'D020'),
(546, 'Larynx, unspecified', 'C32.9', 'icdcat2-3', 'gnuhealth.pathology', 'C329'),
(547, 'Lassa fever', 'A96.2', 'icdcat1-10', 'gnuhealth.pathology', 'A962'),
(548, 'Late congenital neurosyphilis [juvenile neurosyphilis]', 'A50.4', 'icdcat1-5', 'gnuhealth.pathology', 'A504'),
(549, 'Late congenital syphilis, latent', 'A50.6', 'icdcat1-5', 'gnuhealth.pathology', 'A506'),
(550, 'Late congenital syphilis, unspecified', 'A50.7', 'icdcat1-5', 'gnuhealth.pathology', 'A507'),
(551, 'Late congenital syphilitic oculopathy', 'A50.3', 'icdcat1-5', 'gnuhealth.pathology', 'A503'),
(552, 'Late lesions of pinta', 'A67.2', 'icdcat1-6', 'gnuhealth.pathology', 'A672'),
(553, 'Late syphilis', 'A52', 'icdcat1-5', 'gnuhealth.pathology', 'A52'),
(554, 'Late syphilis, latent', 'A52.8', 'icdcat1-5', 'gnuhealth.pathology', 'A528'),
(555, 'Late syphilis, unspecified', 'A52.9', 'icdcat1-5', 'gnuhealth.pathology', 'A529'),
(556, 'Latent syphilis, unspecified as early or late', 'A53.0', 'icdcat1-5', 'gnuhealth.pathology', 'A530'),
(557, 'Latent yaws', 'A66.8', 'icdcat1-6', 'gnuhealth.pathology', 'A668'),
(558, 'Lateral floor of mouth', 'C04.1', 'icdcat2-1', 'gnuhealth.pathology', 'C041'),
(559, 'Lateral wall of bladder', 'C67.2', 'icdcat2-10', 'gnuhealth.pathology', 'C672'),
(560, 'Lateral wall of nasopharynx', 'C11.2', 'icdcat2-1', 'gnuhealth.pathology', 'C112'),
(561, 'Lateral wall of oropharynx', 'C10.2', 'icdcat2-1', 'gnuhealth.pathology', 'C102'),
(562, 'Legionnaires\' disease', 'A48.1', 'icdcat1-4', 'gnuhealth.pathology', 'A481'),
(563, 'Leishmaniasis', 'B55', 'icdcat1-16', 'gnuhealth.pathology', 'B55'),
(564, 'Leishmaniasis, unspecified', 'B55.9', 'icdcat1-16', 'gnuhealth.pathology', 'B559'),
(565, 'Lepromatous leprosy', 'A30.5', 'icdcat1-4', 'gnuhealth.pathology', 'A305'),
(566, 'Leprosy [Hansen\'s disease]', 'A30', 'icdcat1-4', 'gnuhealth.pathology', 'A30'),
(567, 'Leprosy, unspecified', 'A30.9', 'icdcat1-4', 'gnuhealth.pathology', 'A309'),
(568, 'Leptospirosis', 'A27', 'icdcat1-3', 'gnuhealth.pathology', 'A27'),
(569, 'Leptospirosis icterohaemorrhagica', 'A27.0', 'icdcat1-3', 'gnuhealth.pathology', 'A270'),
(570, 'Leptospirosis, unspecified', 'A27.9', 'icdcat1-3', 'gnuhealth.pathology', 'A279'),
(571, 'Lesser curvature of stomach, unspecified', 'C16.5', 'icdcat2-2', 'gnuhealth.pathology', 'C165'),
(572, 'Letterer-Siwe disease', 'C96.0', 'icdcat2-14', 'gnuhealth.pathology', 'C960'),
(573, 'Leukaemia of unspecified cell type', 'C95', 'icdcat2-14', 'gnuhealth.pathology', 'C95'),
(574, 'Leukaemia, unspecified', 'C95.9', 'icdcat2-14', 'gnuhealth.pathology', 'C959'),
(575, 'Lingual tonsil', 'C02.4', 'icdcat2-1', 'gnuhealth.pathology', 'C024'),
(576, 'Lip, oral cavity and pharynx', 'D00.0', 'icdcat2-16', 'gnuhealth.pathology', 'D000'),
(577, 'Lip, unspecified', 'C00.9', 'icdcat2-1', 'gnuhealth.pathology', 'C009'),
(578, 'Lip, unspecified, inner aspect', 'C00.5', 'icdcat2-1', 'gnuhealth.pathology', 'C005'),
(579, 'Listerial meningitis and meningoencephalitis', 'A32.1', 'icdcat1-4', 'gnuhealth.pathology', 'A321'),
(580, 'Listerial septicaemia', 'A32.7', 'icdcat1-4', 'gnuhealth.pathology', 'A327'),
(581, 'Listeriosis', 'A32', 'icdcat1-4', 'gnuhealth.pathology', 'A32'),
(582, 'Listeriosis, unspecified', 'A32.9', 'icdcat1-4', 'gnuhealth.pathology', 'A329'),
(583, 'Liver cell carcinoma', 'C22.0', 'icdcat2-2', 'gnuhealth.pathology', 'C220'),
(584, 'Liver, gallbladder and bile ducts', 'D01.5', 'icdcat2-16', 'gnuhealth.pathology', 'D015'),
(585, 'Liver, unspecified', 'C22.9', 'icdcat2-2', 'gnuhealth.pathology', 'C229'),
(586, 'Lobomycosis', 'B48.0', 'icdcat1-15', 'gnuhealth.pathology', 'B480'),
(587, 'Localised Salmonella infections', 'A02.2', 'icdcat1-1', 'gnuhealth.pathology', 'A022'),
(588, 'Loiasis', 'B74.3', 'icdcat1-17', 'gnuhealth.pathology', 'B743'),
(589, 'Long bones of lower limb', 'C40.2', 'icdcat2-4', 'gnuhealth.pathology', 'C402'),
(590, 'Louse-borne relapsing fever', 'A68.0', 'icdcat1-6', 'gnuhealth.pathology', 'A680'),
(591, 'Lower gum', 'C03.1', 'icdcat2-1', 'gnuhealth.pathology', 'C031'),
(592, 'Lower limb', 'C76.5', 'icdcat2-13', 'gnuhealth.pathology', 'C765'),
(593, 'Lower lip, inner aspect', 'C00.4', 'icdcat2-1', 'gnuhealth.pathology', 'C004'),
(594, 'Lower lobe, bronchus or lung', 'C34.3', 'icdcat2-3', 'gnuhealth.pathology', 'C343'),
(595, 'Lower third of oesophagus', 'C15.5', 'icdcat2-2', 'gnuhealth.pathology', 'C155'),
(596, 'Lower-inner quadrant of breast', 'C50.3', 'icdcat2-7', 'gnuhealth.pathology', 'C503'),
(597, 'Lower-outer quadrant of breast', 'C50.5', 'icdcat2-7', 'gnuhealth.pathology', 'C505'),
(598, 'Lyme disease', 'A69.2', 'icdcat1-6', 'gnuhealth.pathology', 'A692'),
(599, 'Lymph node, unspecified', 'C77.9', 'icdcat2-13', 'gnuhealth.pathology', 'C779'),
(600, 'Lymph nodes of head, face and neck', 'C77.0', 'icdcat2-13', 'gnuhealth.pathology', 'C770'),
(601, 'Lymph nodes of multiple regions', 'C77.8', 'icdcat2-13', 'gnuhealth.pathology', 'C778'),
(602, 'Lymphoblastic (diffuse)', 'C83.5', 'icdcat2-14', 'gnuhealth.pathology', 'C835'),
(603, 'Lymphocutaneous sporotrichosis', 'B42.1', 'icdcat1-15', 'gnuhealth.pathology', 'B421'),
(604, 'Lymphocytic choriomeningitis', 'A87.2', 'icdcat1-9', 'gnuhealth.pathology', 'A872'),
(605, 'Lymphocytic depletion', 'C81.3', 'icdcat2-14', 'gnuhealth.pathology', 'C813'),
(606, 'Lymphocytic predominance', 'C81.0', 'icdcat2-14', 'gnuhealth.pathology', 'C810'),
(607, 'Lymphoepithelioid lymphoma', 'C84.3', 'icdcat2-14', 'gnuhealth.pathology', 'C843'),
(608, 'Lymphoid leukaemia', 'C91', 'icdcat2-14', 'gnuhealth.pathology', 'C91'),
(609, 'Lymphoid leukaemia, unspecified', 'C91.9', 'icdcat2-14', 'gnuhealth.pathology', 'C919'),
(610, 'Lymphosarcoma', 'C85.0', 'icdcat2-14', 'gnuhealth.pathology', 'C850'),
(611, 'Machupo haemorrhagic fever', 'A96.1', 'icdcat1-10', 'gnuhealth.pathology', 'A961'),
(612, 'Main bronchus', 'C34.0', 'icdcat2-3', 'gnuhealth.pathology', 'C340'),
(613, 'Major salivary gland, unspecified', 'C08.9', 'icdcat2-1', 'gnuhealth.pathology', 'C089'),
(614, 'Malaria due to simian plasmodia', 'B53.1', 'icdcat1-16', 'gnuhealth.pathology', 'B531'),
(615, 'Male genital organ, unspecified', 'C63.9', 'icdcat2-9', 'gnuhealth.pathology', 'C639'),
(616, 'Malignant histiocytosis', 'C96.1', 'icdcat2-14', 'gnuhealth.pathology', 'C961'),
(617, 'Malignant immunoproliferative disease, unspecified', 'C88.9', 'icdcat2-14', 'gnuhealth.pathology', 'C889'),
(618, 'Malignant immunoproliferative diseases', 'C88', 'icdcat2-14', 'gnuhealth.pathology', 'C88'),
(619, 'Malignant mast cell tumour', 'C96.2', 'icdcat2-14', 'gnuhealth.pathology', 'C962'),
(620, 'Malignant melanoma of ear and external auricular canal', 'C43.2', 'icdcat2-5', 'gnuhealth.pathology', 'C432'),
(621, 'Malignant melanoma of eyelid, including canthus', 'C43.1', 'icdcat2-5', 'gnuhealth.pathology', 'C431'),
(622, 'Malignant melanoma of lip', 'C43.0', 'icdcat2-5', 'gnuhealth.pathology', 'C430'),
(623, 'Malignant melanoma of lower limb, including hip', 'C43.7', 'icdcat2-5', 'gnuhealth.pathology', 'C437'),
(624, 'Malignant melanoma of other and unspecified parts of face', 'C43.3', 'icdcat2-5', 'gnuhealth.pathology', 'C433'),
(625, 'Malignant melanoma of scalp and neck', 'C43.4', 'icdcat2-5', 'gnuhealth.pathology', 'C434'),
(626, 'Malignant melanoma of skin', 'C43', 'icdcat2-5', 'gnuhealth.pathology', 'C43'),
(627, 'Malignant melanoma of skin, unspecified', 'C43.9', 'icdcat2-5', 'gnuhealth.pathology', 'C439'),
(628, 'Malignant melanoma of trunk', 'C43.5', 'icdcat2-5', 'gnuhealth.pathology', 'C435'),
(629, 'Malignant melanoma of upper limb, including shoulder', 'C43.6', 'icdcat2-5', 'gnuhealth.pathology', 'C436'),
(630, 'Malignant neoplasm of accessory sinuses', 'C31', 'icdcat2-3', 'gnuhealth.pathology', 'C31'),
(631, 'Malignant neoplasm of adrenal gland', 'C74', 'icdcat2-12', 'gnuhealth.pathology', 'C74'),
(632, 'Malignant neoplasm of anus and anal canal', 'C21', 'icdcat2-2', 'gnuhealth.pathology', 'C21'),
(633, 'Malignant neoplasm of base of tongue', 'C01', 'icdcat2-1', 'gnuhealth.pathology', 'C01'),
(634, 'Malignant neoplasm of bladder', 'C67', 'icdcat2-10', 'gnuhealth.pathology', 'C67'),
(635, 'Malignant neoplasm of bone and articular cartilage of limbs', 'C40', 'icdcat2-4', 'gnuhealth.pathology', 'C40'),
(636, 'Malignant neoplasm of bone and articular cartilage of other and unspecified sites', 'C41', 'icdcat2-4', 'gnuhealth.pathology', 'C41'),
(637, 'Malignant neoplasm of brain', 'C71', 'icdcat2-11', 'gnuhealth.pathology', 'C71'),
(638, 'Malignant neoplasm of breast', 'C50', 'icdcat2-7', 'gnuhealth.pathology', 'C50'),
(639, 'Malignant neoplasm of bronchus and lung', 'C34', 'icdcat2-3', 'gnuhealth.pathology', 'C34'),
(640, 'Malignant neoplasm of cervix uteri', 'C53', 'icdcat2-8', 'gnuhealth.pathology', 'C53'),
(641, 'Malignant neoplasm of colon', 'C18', 'icdcat2-2', 'gnuhealth.pathology', 'C18'),
(642, 'Malignant neoplasm of corpus uteri', 'C54', 'icdcat2-8', 'gnuhealth.pathology', 'C54'),
(643, 'Malignant neoplasm of eye and adnexa', 'C69', 'icdcat2-11', 'gnuhealth.pathology', 'C69'),
(644, 'Malignant neoplasm of floor of mouth', 'C04', 'icdcat2-1', 'gnuhealth.pathology', 'C04'),
(645, 'Malignant neoplasm of gallbladder', 'C23', 'icdcat2-2', 'gnuhealth.pathology', 'C23'),
(646, 'Malignant neoplasm of gum', 'C03', 'icdcat2-1', 'gnuhealth.pathology', 'C03'),
(647, 'Malignant neoplasm of heart, mediastinum and pleura', 'C38', 'icdcat2-3', 'gnuhealth.pathology', 'C38'),
(648, 'Malignant neoplasm of hypopharynx', 'C13', 'icdcat2-1', 'gnuhealth.pathology', 'C13'),
(649, 'Malignant neoplasm of kidney, except renal pelvis', 'C64', 'icdcat2-10', 'gnuhealth.pathology', 'C64'),
(650, 'Malignant neoplasm of larynx', 'C32', 'icdcat2-3', 'gnuhealth.pathology', 'C32'),
(651, 'Malignant neoplasm of lip', 'C00', 'icdcat2-1', 'gnuhealth.pathology', 'C00'),
(652, 'Malignant neoplasm of liver and intrahepatic bile ducts', 'C22', 'icdcat2-2', 'gnuhealth.pathology', 'C22'),
(653, 'Malignant neoplasm of meninges', 'C70', 'icdcat2-11', 'gnuhealth.pathology', 'C70'),
(654, 'Malignant neoplasm of nasal cavity and middle ear', 'C30', 'icdcat2-3', 'gnuhealth.pathology', 'C30'),
(655, 'Malignant neoplasm of nasopharynx', 'C11', 'icdcat2-1', 'gnuhealth.pathology', 'C11'),
(656, 'Malignant neoplasm of oesophagus', 'C15', 'icdcat2-2', 'gnuhealth.pathology', 'C15'),
(657, 'Malignant neoplasm of oropharynx', 'C10', 'icdcat2-1', 'gnuhealth.pathology', 'C10'),
(658, 'Malignant neoplasm of other and ill-defined digestive organs', 'C26', 'icdcat2-2', 'gnuhealth.pathology', 'C26'),
(659, 'Malignant neoplasm of other and ill-defined sites', 'C76', 'icdcat2-13', 'gnuhealth.pathology', 'C76'),
(660, 'Malignant neoplasm of other and ill-defined sites in the lip, oral cavity and pharynx', 'C14', 'icdcat2-1', 'gnuhealth.pathology', 'C14'),
(661, 'Malignant neoplasm of other and ill-defined sites in the respiratory system and intrathoracic organs', 'C39', 'icdcat2-3', 'gnuhealth.pathology', 'C39'),
(662, 'Malignant neoplasm of other and unspecified female genital organs', 'C57', 'icdcat2-8', 'gnuhealth.pathology', 'C57'),
(663, 'Malignant neoplasm of other and unspecified major salivary glands', 'C08', 'icdcat2-1', 'gnuhealth.pathology', 'C08'),
(664, 'Malignant neoplasm of other and unspecified male genital organs', 'C63', 'icdcat2-9', 'gnuhealth.pathology', 'C63'),
(665, 'Malignant neoplasm of other and unspecified parts of biliary tract', 'C24', 'icdcat2-2', 'gnuhealth.pathology', 'C24'),
(666, 'Malignant neoplasm of other and unspecified parts of mouth', 'C06', 'icdcat2-1', 'gnuhealth.pathology', 'C06'),
(667, 'Malignant neoplasm of other and unspecified parts of tongue', 'C02', 'icdcat2-1', 'gnuhealth.pathology', 'C02'),
(668, 'Malignant neoplasm of other and unspecified urinary organs', 'C68', 'icdcat2-10', 'gnuhealth.pathology', 'C68'),
(669, 'Malignant neoplasm of other connective and soft tissue', 'C49', 'icdcat2-6', 'gnuhealth.pathology', 'C49'),
(670, 'Malignant neoplasm of other endocrine glands and related structures', 'C75', 'icdcat2-12', 'gnuhealth.pathology', 'C75'),
(671, 'Malignant neoplasm of ovary', 'C56', 'icdcat2-8', 'gnuhealth.pathology', 'C56'),
(672, 'Malignant neoplasm of palate', 'C05', 'icdcat2-1', 'gnuhealth.pathology', 'C05'),
(673, 'Malignant neoplasm of pancreas', 'C25', 'icdcat2-2', 'gnuhealth.pathology', 'C25'),
(674, 'Malignant neoplasm of parotid gland', 'C07', 'icdcat2-1', 'gnuhealth.pathology', 'C07'),
(675, 'Malignant neoplasm of penis', 'C60', 'icdcat2-9', 'gnuhealth.pathology', 'C60'),
(676, 'Malignant neoplasm of peripheral nerves and autonomic nervous system', 'C47', 'icdcat2-6', 'gnuhealth.pathology', 'C47'),
(677, 'Malignant neoplasm of placenta', 'C58', 'icdcat2-8', 'gnuhealth.pathology', 'C58'),
(678, 'Malignant neoplasm of prostate', 'C61', 'icdcat2-9', 'gnuhealth.pathology', 'C61'),
(679, 'Malignant neoplasm of pyriform sinus', 'C12', 'icdcat2-1', 'gnuhealth.pathology', 'C12'),
(680, 'Malignant neoplasm of rectosigmoid junction', 'C19', 'icdcat2-2', 'gnuhealth.pathology', 'C19'),
(681, 'Malignant neoplasm of rectum', 'C20', 'icdcat2-2', 'gnuhealth.pathology', 'C20'),
(682, 'Malignant neoplasm of renal pelvis', 'C65', 'icdcat2-10', 'gnuhealth.pathology', 'C65'),
(683, 'Malignant neoplasm of retroperitoneum and peritoneum', 'C48', 'icdcat2-6', 'gnuhealth.pathology', 'C48'),
(684, 'Malignant neoplasm of skin, unspecified', 'C44.9', 'icdcat2-5', 'gnuhealth.pathology', 'C449'),
(685, 'Malignant neoplasm of small intestine', 'C17', 'icdcat2-2', 'gnuhealth.pathology', 'C17'),
(686, 'Malignant neoplasm of spinal cord, cranial nerves and other parts of central nervous system', 'C72', 'icdcat2-11', 'gnuhealth.pathology', 'C72'),
(687, 'Malignant neoplasm of stomach', 'C16', 'icdcat2-2', 'gnuhealth.pathology', 'C16'),
(688, 'Malignant neoplasm of testis', 'C62', 'icdcat2-9', 'gnuhealth.pathology', 'C62'),
(689, 'Malignant neoplasm of thymus', 'C37', 'icdcat2-3', 'gnuhealth.pathology', 'C37'),
(690, 'Malignant neoplasm of thyroid gland', 'C73', 'icdcat2-12', 'gnuhealth.pathology', 'C73'),
(691, 'Malignant neoplasm of tonsil', 'C09', 'icdcat2-1', 'gnuhealth.pathology', 'C09'),
(692, 'Malignant neoplasm of trachea', 'C33', 'icdcat2-3', 'gnuhealth.pathology', 'C33'),
(693, 'Malignant neoplasm of ureter', 'C66', 'icdcat2-10', 'gnuhealth.pathology', 'C66'),
(694, 'Malignant neoplasm of uterus, part unspecified', 'C55', 'icdcat2-8', 'gnuhealth.pathology', 'C55'),
(695, 'Malignant neoplasm of vagina', 'C52', 'icdcat2-8', 'gnuhealth.pathology', 'C52'),
(696, 'Malignant neoplasm of vulva', 'C51', 'icdcat2-8', 'gnuhealth.pathology', 'C51'),
(697, 'Malignant neoplasm without specification of site', 'C80', 'icdcat2-13', 'gnuhealth.pathology', 'C80'),
(698, 'Malignant neoplasms of independent (primary) multiple sites', 'C97', 'icdcat2-15', 'gnuhealth.pathology', 'C97'),
(699, 'Malignant neoplasms of lymphoid, haematopoietic and related tissue, unspecified', 'C96.9', 'icdcat2-14', 'gnuhealth.pathology', 'C969'),
(700, 'Mandible', 'C41.1', 'icdcat2-4', 'gnuhealth.pathology', 'C411'),
(701, 'Mansonelliasis', 'B74.4', 'icdcat1-17', 'gnuhealth.pathology', 'B744'),
(702, 'Marburg virus disease', 'A98.3', 'icdcat1-10', 'gnuhealth.pathology', 'A983'),
(703, 'Mast cell leukaemia', 'C94.3', 'icdcat2-14', 'gnuhealth.pathology', 'C943'),
(704, 'Maxillary sinus', 'C31.0', 'icdcat2-3', 'gnuhealth.pathology', 'C310'),
(705, 'Measles', 'B05', 'icdcat1-11', 'gnuhealth.pathology', 'B05'),
(706, 'Measles complicated by encephalitis', 'B05.0', 'icdcat1-11', 'gnuhealth.pathology', 'B050'),
(707, 'Measles complicated by meningitis', 'B05.1', 'icdcat1-11', 'gnuhealth.pathology', 'B051'),
(708, 'Measles complicated by otitis media', 'B05.3', 'icdcat1-11', 'gnuhealth.pathology', 'B053'),
(709, 'Measles complicated by pneumonia', 'B05.2', 'icdcat1-11', 'gnuhealth.pathology', 'B052'),
(710, 'Measles with intestinal complications', 'B05.4', 'icdcat1-11', 'gnuhealth.pathology', 'B054'),
(711, 'Measles with other complications', 'B05.8', 'icdcat1-11', 'gnuhealth.pathology', 'B058'),
(712, 'Measles without complication', 'B05.9', 'icdcat1-11', 'gnuhealth.pathology', 'B059'),
(713, 'Meckel\'s diverticulum', 'C17.3', 'icdcat2-2', 'gnuhealth.pathology', 'C173'),
(714, 'Mediastinum, part unspecified', 'C38.3', 'icdcat2-3', 'gnuhealth.pathology', 'C383'),
(715, 'Medulla of adrenal gland', 'C74.1', 'icdcat2-12', 'gnuhealth.pathology', 'C741'),
(716, 'Melanoma in situ', 'D03', 'icdcat2-16', 'gnuhealth.pathology', 'D03'),
(717, 'Melanoma in situ of ear and external auricular canal', 'D03.2', 'icdcat2-16', 'gnuhealth.pathology', 'D032'),
(718, 'Melanoma in situ of eyelid, including canthus', 'D03.1', 'icdcat2-16', 'gnuhealth.pathology', 'D031'),
(719, 'Melanoma in situ of lip', 'D03.0', 'icdcat2-16', 'gnuhealth.pathology', 'D030'),
(720, 'Melanoma in situ of lower limb, including hip', 'D03.7', 'icdcat2-16', 'gnuhealth.pathology', 'D037'),
(721, 'Melanoma in situ of other and unspecified parts of face', 'D03.3', 'icdcat2-16', 'gnuhealth.pathology', 'D033'),
(722, 'Melanoma in situ of other sites', 'D03.8', 'icdcat2-16', 'gnuhealth.pathology', 'D038'),
(723, 'Melanoma in situ of scalp and neck', 'D03.4', 'icdcat2-16', 'gnuhealth.pathology', 'D034'),
(724, 'Melanoma in situ of trunk', 'D03.5', 'icdcat2-16', 'gnuhealth.pathology', 'D035'),
(725, 'Melanoma in situ of upper limb, including shoulder', 'D03.6', 'icdcat2-16', 'gnuhealth.pathology', 'D036'),
(726, 'Melanoma in situ, unspecified', 'D03.9', 'icdcat2-16', 'gnuhealth.pathology', 'D039'),
(727, 'Melioidosis, unspecified', 'A24.4', 'icdcat1-3', 'gnuhealth.pathology', 'A244'),
(728, 'Meningeal tuberculoma', 'A17.1', 'icdcat1-2', 'gnuhealth.pathology', 'A171'),
(729, 'Meninges, unspecified', 'C70.9', 'icdcat2-11', 'gnuhealth.pathology', 'C709'),
(730, 'Meningococcaemia, unspecified', 'A39.4', 'icdcat1-4', 'gnuhealth.pathology', 'A394'),
(731, 'Meningococcal heart disease', 'A39.5', 'icdcat1-4', 'gnuhealth.pathology', 'A395'),
(732, 'Meningococcal infection', 'A39', 'icdcat1-4', 'gnuhealth.pathology', 'A39'),
(733, 'Meningococcal infection, unspecified', 'A39.9', 'icdcat1-4', 'gnuhealth.pathology', 'A399'),
(734, 'Meningococcal meningitis', 'A39.0', 'icdcat1-4', 'gnuhealth.pathology', 'A390'),
(735, 'Mesothelioma', 'C45', 'icdcat2-6', 'gnuhealth.pathology', 'C45'),
(736, 'Mesothelioma of other sites', 'C45.7', 'icdcat2-6', 'gnuhealth.pathology', 'C457'),
(737, 'Mesothelioma of pericardium', 'C45.2', 'icdcat2-6', 'gnuhealth.pathology', 'C452'),
(738, 'Mesothelioma of peritoneum', 'C45.1', 'icdcat2-6', 'gnuhealth.pathology', 'C451'),
(739, 'Mesothelioma of pleura', 'C45.0', 'icdcat2-6', 'gnuhealth.pathology', 'C450'),
(740, 'Mesothelioma, unspecified', 'C45.9', 'icdcat2-6', 'gnuhealth.pathology', 'C459'),
(741, 'Middle ear', 'C30.1', 'icdcat2-3', 'gnuhealth.pathology', 'C301'),
(742, 'Middle lobe, bronchus or lung', 'C34.2', 'icdcat2-3', 'gnuhealth.pathology', 'C342'),
(743, 'Middle third of oesophagus', 'C15.4', 'icdcat2-2', 'gnuhealth.pathology', 'C154'),
(744, 'Miliary tuberculosis', 'A19', 'icdcat1-2', 'gnuhealth.pathology', 'A19'),
(745, 'Miliary tuberculosis, unspecified', 'A19.9', 'icdcat1-2', 'gnuhealth.pathology', 'A199'),
(746, 'Mixed cellularity', 'C81.2', 'icdcat2-14', 'gnuhealth.pathology', 'C812'),
(747, 'Mixed intestinal helminthiases', 'B81.4', 'icdcat1-17', 'gnuhealth.pathology', 'B814'),
(748, 'Mixed lesions of pinta', 'A67.3', 'icdcat1-6', 'gnuhealth.pathology', 'A673'),
(749, 'Mixed pediculosis and phthiriasis', 'B85.4', 'icdcat1-18', 'gnuhealth.pathology', 'B854'),
(750, 'Mixed small and large cell (diffuse)', 'C83.2', 'icdcat2-14', 'gnuhealth.pathology', 'C832'),
(751, 'Mixed small cleaved and large cell, follicular', 'C82.1', 'icdcat2-14', 'gnuhealth.pathology', 'C821'),
(752, 'Molluscum contagiosum', 'B08.1', 'icdcat1-11', 'gnuhealth.pathology', 'B081'),
(753, 'Monkeypox', 'B04', 'icdcat1-11', 'gnuhealth.pathology', 'B04'),
(754, 'Monocytic leukaemia', 'C93', 'icdcat2-14', 'gnuhealth.pathology', 'C93'),
(755, 'Monocytic leukaemia, unspecified', 'C93.9', 'icdcat2-14', 'gnuhealth.pathology', 'C939'),
(756, 'Mosquito-borne viral encephalitis', 'A83', 'icdcat1-9', 'gnuhealth.pathology', 'A83'),
(757, 'Mosquito-borne viral encephalitis, unspecified', 'A83.9', 'icdcat1-9', 'gnuhealth.pathology', 'A839'),
(758, 'Mosquito-borne viral fever, unspecified', 'A92.9', 'icdcat1-10', 'gnuhealth.pathology', 'A929'),
(759, 'Mouth, unspecified', 'C06.9', 'icdcat2-1', 'gnuhealth.pathology', 'C069'),
(760, 'Mucocutaneous leishmaniasis', 'B55.2', 'icdcat1-16', 'gnuhealth.pathology', 'B552'),
(761, 'Mucormycosis, unspecified', 'B46.5', 'icdcat1-15', 'gnuhealth.pathology', 'B465'),
(762, 'Multiple myeloma', 'C90.0', 'icdcat2-14', 'gnuhealth.pathology', 'C900'),
(763, 'Multiple myeloma and malignant plasma cell neoplasms', 'C90', 'icdcat2-14', 'gnuhealth.pathology', 'C90'),
(764, 'Multiple papillomata and wet crab yaws', 'A66.1', 'icdcat1-6', 'gnuhealth.pathology', 'A661'),
(765, 'Mumps', 'B26', 'icdcat1-14', 'gnuhealth.pathology', 'B26'),
(766, 'Mumps encephalitis', 'B26.2', 'icdcat1-14', 'gnuhealth.pathology', 'B262'),
(767, 'Mumps meningitis', 'B26.1', 'icdcat1-14', 'gnuhealth.pathology', 'B261'),
(768, 'Mumps orchitis', 'B26.0', 'icdcat1-14', 'gnuhealth.pathology', 'B260'),
(769, 'Mumps pancreatitis', 'B26.3', 'icdcat1-14', 'gnuhealth.pathology', 'B263'),
(770, 'Mumps with other complications', 'B26.8', 'icdcat1-14', 'gnuhealth.pathology', 'B268'),
(771, 'Mumps without complication', 'B26.9', 'icdcat1-14', 'gnuhealth.pathology', 'B269'),
(772, 'Mycetoma', 'B47', 'icdcat1-15', 'gnuhealth.pathology', 'B47'),
(773, 'Mycetoma, unspecified', 'B47.9', 'icdcat1-15', 'gnuhealth.pathology', 'B479'),
(774, 'Mycobacterial infection, unspecified', 'A31.9', 'icdcat1-4', 'gnuhealth.pathology', 'A319'),
(775, 'Mycoplasma infection, unspecified', 'A49.3', 'icdcat1-4', 'gnuhealth.pathology', 'A493'),
(776, 'Mycoplasma pneumoniae [M. pneumoniae] as the cause of diseases classified to other chapters', 'B96.0', 'icdcat1-20', 'gnuhealth.pathology', 'B960'),
(777, 'Mycosis fungoides', 'C84.0', 'icdcat2-14', 'gnuhealth.pathology', 'C840'),
(778, 'Myeloid leukaemia', 'C92', 'icdcat2-14', 'gnuhealth.pathology', 'C92'),
(779, 'Myeloid leukaemia, unspecified', 'C92.9', 'icdcat2-14', 'gnuhealth.pathology', 'C929'),
(780, 'Myeloid sarcoma', 'C92.3', 'icdcat2-14', 'gnuhealth.pathology', 'C923'),
(781, 'Myiasis', 'B87', 'icdcat1-18', 'gnuhealth.pathology', 'B87'),
(782, 'Myiasis of other sites', 'B87.8', 'icdcat1-18', 'gnuhealth.pathology', 'B878'),
(783, 'Myiasis, unspecified', 'B87.9', 'icdcat1-18', 'gnuhealth.pathology', 'B879'),
(784, 'Myometrium', 'C54.2', 'icdcat2-8', 'gnuhealth.pathology', 'C542'),
(785, 'name', 'code', 'category', 'model', 'unique_id'),
(786, 'Nasal cavity', 'C30.0', 'icdcat2-3', 'gnuhealth.pathology', 'C300'),
(787, 'Nasopharyngeal diphtheria', 'A36.1', 'icdcat1-4', 'gnuhealth.pathology', 'A361'),
(788, 'Nasopharyngeal myiasis', 'B87.3', 'icdcat1-18', 'gnuhealth.pathology', 'B873'),
(789, 'Nasopharynx, unspecified', 'C11.9', 'icdcat2-1', 'gnuhealth.pathology', 'C119'),
(790, 'Necatoriasis', 'B76.1', 'icdcat1-17', 'gnuhealth.pathology', 'B761'),
(791, 'Necrotising ulcerative stomatitis', 'A69.0', 'icdcat1-6', 'gnuhealth.pathology', 'A690'),
(792, 'Negleriasis', 'B60.2', 'icdcat1-16', 'gnuhealth.pathology', 'B602'),
(793, 'Neurosyphilis, unspecified', 'A52.3', 'icdcat1-5', 'gnuhealth.pathology', 'A523'),
(794, 'Nipple and areola', 'C50.0', 'icdcat2-7', 'gnuhealth.pathology', 'C500'),
(795, 'Nocardiosis', 'A43', 'icdcat1-4', 'gnuhealth.pathology', 'A43'),
(796, 'Nocardiosis, unspecified', 'A43.9', 'icdcat1-4', 'gnuhealth.pathology', 'A439'),
(797, 'Nodular sclerosis', 'C81.1', 'icdcat2-14', 'gnuhealth.pathology', 'C811'),
(798, 'Non-Hodgkin\'s lymphoma, unspecified type', 'C85.9', 'icdcat2-14', 'gnuhealth.pathology', 'C859'),
(799, 'Non-venereal syphilis', 'A65', 'icdcat1-6', 'gnuhealth.pathology', 'A65'),
(800, 'Nonpneumonic Legionnaires\' disease [Pontiac fever]', 'A48.2', 'icdcat1-4', 'gnuhealth.pathology', 'A482'),
(801, 'O\'nyong-nyong fever', 'A92.1', 'icdcat1-10', 'gnuhealth.pathology', 'A921'),
(802, 'Obstetrical tetanus', 'A34', 'icdcat1-4', 'gnuhealth.pathology', 'A34'),
(803, 'Occipital lobe', 'C71.4', 'icdcat2-11', 'gnuhealth.pathology', 'C714'),
(804, 'Ocular myiasis', 'B87.2', 'icdcat1-18', 'gnuhealth.pathology', 'B872'),
(805, 'Oculoglandular tularaemia', 'A21.1', 'icdcat1-3', 'gnuhealth.pathology', 'A211'),
(806, 'Oesophagus', 'D00.1', 'icdcat2-16', 'gnuhealth.pathology', 'D001'),
(807, 'Oesophagus, unspecified', 'C15.9', 'icdcat2-2', 'gnuhealth.pathology', 'C159'),
(808, 'Olfactory nerve', 'C72.2', 'icdcat2-11', 'gnuhealth.pathology', 'C722'),
(809, 'Omsk haemorrhagic fever', 'A98.1', 'icdcat1-10', 'gnuhealth.pathology', 'A981'),
(810, 'Onchocerciasis', 'B73', 'icdcat1-17', 'gnuhealth.pathology', 'B73'),
(811, 'Opisthorchiasis', 'B66.0', 'icdcat1-17', 'gnuhealth.pathology', 'B660'),
(812, 'Opportunistic mycoses', 'B48.7', 'icdcat1-15', 'gnuhealth.pathology', 'B487'),
(813, 'Optic nerve', 'C72.3', 'icdcat2-11', 'gnuhealth.pathology', 'C723'),
(814, 'Orbit', 'C69.6', 'icdcat2-11', 'gnuhealth.pathology', 'C696'),
(815, 'Oropharynx, unspecified', 'C10.9', 'icdcat2-1', 'gnuhealth.pathology', 'C109'),
(816, 'Oropouche virus disease', 'A93.0', 'icdcat1-10', 'gnuhealth.pathology', 'A930'),
(817, 'Osseous cryptococcosis', 'B45.3', 'icdcat1-15', 'gnuhealth.pathology', 'B453'),
(818, 'Other acariasis', 'B88.0', 'icdcat1-18', 'gnuhealth.pathology', 'B880'),
(819, 'Other acute viral hepatitis', 'B17', 'icdcat1-12', 'gnuhealth.pathology', 'B17'),
(820, 'Other and unspecified cranial nerves', 'C72.5', 'icdcat2-11', 'gnuhealth.pathology', 'C725'),
(821, 'Other and unspecified infectious diseases', 'B99', 'icdcat1-21', 'gnuhealth.pathology', 'B99'),
(822, 'Other and unspecified malignant neoplasms of lymphoid, haematopoietic and related tissue', 'C96', 'icdcat2-14', 'gnuhealth.pathology', 'C96'),
(823, 'Other and unspecified parts of intestine', 'D01.4', 'icdcat2-16', 'gnuhealth.pathology', 'D014'),
(824, 'Other and unspecified syphilis', 'A53', 'icdcat1-5', 'gnuhealth.pathology', 'A53'),
(825, 'Other and unspecified T-cell lymphomas', 'C84.5', 'icdcat2-14', 'gnuhealth.pathology', 'C845'),
(826, 'Other and unspecified types of non-Hodgkin\'s lymphoma', 'C85', 'icdcat2-14', 'gnuhealth.pathology', 'C85'),
(827, 'Other arenaviral haemorrhagic fevers', 'A96.8', 'icdcat1-10', 'gnuhealth.pathology', 'A968'),
(828, 'Other arthropod infestations', 'B88.2', 'icdcat1-18', 'gnuhealth.pathology', 'B882'),
(829, 'Other arthropod-borne viral fevers, not elsewhere classified', 'A93', 'icdcat1-10', 'gnuhealth.pathology', 'A93'),
(830, 'Other atypical virus infections of central nervous system', 'A81.8', 'icdcat1-9', 'gnuhealth.pathology', 'A818'),
(831, 'Other bacterial agents as the cause of diseases classified to other chapters', 'B96', 'icdcat1-20', 'gnuhealth.pathology', 'B96'),
(832, 'Other bacterial diseases, not elsewhere classified', 'A48', 'icdcat1-4', 'gnuhealth.pathology', 'A48'),
(833, 'Other bacterial foodborne intoxications', 'A05', 'icdcat1-1', 'gnuhealth.pathology', 'A05'),
(834, 'Other bacterial infections of unspecified site', 'A49.8', 'icdcat1-4', 'gnuhealth.pathology', 'A498'),
(835, 'Other bacterial intestinal infections', 'A04', 'icdcat1-1', 'gnuhealth.pathology', 'A04'),
(836, 'Other brucellosis', 'A23.8', 'icdcat1-3', 'gnuhealth.pathology', 'A238'),
(837, 'Other cestode infections', 'B71', 'icdcat1-17', 'gnuhealth.pathology', 'B71'),
(838, 'Other chlamydial diseases', 'A74.8', 'icdcat1-7', 'gnuhealth.pathology', 'A748'),
(839, 'Other chronic viral hepatitis', 'B18.8', 'icdcat1-12', 'gnuhealth.pathology', 'B188'),
(840, 'Other cytomegaloviral diseases', 'B25.8', 'icdcat1-14', 'gnuhealth.pathology', 'B258'),
(841, 'Other dermatophytoses', 'B35.8', 'icdcat1-15', 'gnuhealth.pathology', 'B358'),
(842, 'Other diphtheria', 'A36.8', 'icdcat1-4', 'gnuhealth.pathology', 'A368'),
(843, 'Other diseases caused by chlamydiae', 'A74', 'icdcat1-7', 'gnuhealth.pathology', 'A74'),
(844, 'Other early skin lesions of yaws', 'A66.2', 'icdcat1-6', 'gnuhealth.pathology', 'A662'),
(845, 'Other filariases', 'B74.8', 'icdcat1-17', 'gnuhealth.pathology', 'B748'),
(846, 'Other fluke infections', 'B66', 'icdcat1-17', 'gnuhealth.pathology', 'B66'),
(847, 'Other forms of actinomycosis', 'A42.8', 'icdcat1-4', 'gnuhealth.pathology', 'A428'),
(848, 'Other forms of anthrax', 'A22.8', 'icdcat1-3', 'gnuhealth.pathology', 'A228'),
(849, 'Other forms of aspergillosis', 'B44.8', 'icdcat1-15', 'gnuhealth.pathology', 'B448'),
(850, 'Other forms of bartonellosis', 'A44.8', 'icdcat1-4', 'gnuhealth.pathology', 'A448'),
(851, 'Other forms of blastomycosis', 'B40.8', 'icdcat1-15', 'gnuhealth.pathology', 'B408'),
(852, 'Other forms of chromomycosis', 'B43.8', 'icdcat1-15', 'gnuhealth.pathology', 'B438'),
(853, 'Other forms of coccidioidomycosis', 'B38.8', 'icdcat1-15', 'gnuhealth.pathology', 'B388'),
(854, 'Other forms of cryptococcosis', 'B45.8', 'icdcat1-15', 'gnuhealth.pathology', 'B458'),
(855, 'Other forms of erysipeloid', 'A26.8', 'icdcat1-3', 'gnuhealth.pathology', 'A268'),
(856, 'Other forms of herpesviral infection', 'B00.8', 'icdcat1-11', 'gnuhealth.pathology', 'B008'),
(857, 'Other forms of leprosy', 'A30.8', 'icdcat1-4', 'gnuhealth.pathology', 'A308'),
(858, 'Other forms of leptospirosis', 'A27.8', 'icdcat1-3', 'gnuhealth.pathology', 'A278'),
(859, 'Other forms of listeriosis', 'A32.8', 'icdcat1-4', 'gnuhealth.pathology', 'A328'),
(860, 'Other forms of nocardiosis', 'A43.8', 'icdcat1-4', 'gnuhealth.pathology', 'A438'),
(861, 'Other forms of paracoccidioidomycosis', 'B41.8', 'icdcat1-15', 'gnuhealth.pathology', 'B418'),
(862, 'Other forms of plague', 'A20.8', 'icdcat1-3', 'gnuhealth.pathology', 'A208'),
(863, 'Other forms of sporotrichosis', 'B42.8', 'icdcat1-15', 'gnuhealth.pathology', 'B428'),
(864, 'Other forms of tularaemia', 'A21.8', 'icdcat1-3', 'gnuhealth.pathology', 'A218'),
(865, 'Other gonococcal infections', 'A54.8', 'icdcat1-5', 'gnuhealth.pathology', 'A548'),
(866, 'Other helminthiases', 'B83', 'icdcat1-17', 'gnuhealth.pathology', 'B83'),
(867, 'Other Hodgkin\'s disease', 'C81.7', 'icdcat2-14', 'gnuhealth.pathology', 'C817'),
(868, 'Other hookworm diseases', 'B76.8', 'icdcat1-17', 'gnuhealth.pathology', 'B768'),
(869, 'Other ill-defined sites', 'C76.7', 'icdcat2-13', 'gnuhealth.pathology', 'C767'),
(870, 'Other infectious mononucleosis', 'B27.8', 'icdcat1-14', 'gnuhealth.pathology', 'B278'),
(871, 'Other infestations', 'B88', 'icdcat1-18', 'gnuhealth.pathology', 'B88'),
(872, 'Other intestinal Escherichia coli infections', 'A04.4', 'icdcat1-1', 'gnuhealth.pathology', 'A044'),
(873, 'Other intestinal helminthiases, not elsewhere classified', 'B81', 'icdcat1-17', 'gnuhealth.pathology', 'B81'),
(874, 'Other late congenital syphilis, symptomatic', 'A50.5', 'icdcat1-5', 'gnuhealth.pathology', 'A505'),
(875, 'Other leukaemia of unspecified cell type', 'C95.7', 'icdcat2-14', 'gnuhealth.pathology', 'C957'),
(876, 'Other leukaemias of specified cell type', 'C94', 'icdcat2-14', 'gnuhealth.pathology', 'C94'),
(877, 'Other lymphoid leukaemia', 'C91.7', 'icdcat2-14', 'gnuhealth.pathology', 'C917'),
(878, 'Other malignant immunoproliferative diseases', 'C88.7', 'icdcat2-14', 'gnuhealth.pathology', 'C887'),
(879, 'Other malignant neoplasms of skin', 'C44', 'icdcat2-5', 'gnuhealth.pathology', 'C44'),
(880, 'Other manifestations of yaws', 'A66.7', 'icdcat1-6', 'gnuhealth.pathology', 'A667'),
(881, 'Other melioidosis', 'A24.3', 'icdcat1-3', 'gnuhealth.pathology', 'A243'),
(882, 'Other meningococcal infections', 'A39.8', 'icdcat1-4', 'gnuhealth.pathology', 'A398'),
(883, 'Other miliary tuberculosis', 'A19.8', 'icdcat1-2', 'gnuhealth.pathology', 'A198'),
(884, 'Other monocytic leukaemia', 'C93.7', 'icdcat2-14', 'gnuhealth.pathology', 'C937'),
(885, 'Other mosquito-borne viral encephalitis', 'A83.8', 'icdcat1-9', 'gnuhealth.pathology', 'A838'),
(886, 'Other mosquito-borne viral fevers', 'A92', 'icdcat1-10', 'gnuhealth.pathology', 'A92'),
(887, 'Other mycobacterial infections', 'A31.8', 'icdcat1-4', 'gnuhealth.pathology', 'A318'),
(888, 'Other mycoses, not elsewhere classified', 'B48', 'icdcat1-15', 'gnuhealth.pathology', 'B48'),
(889, 'Other myeloid leukaemia', 'C92.7', 'icdcat2-14', 'gnuhealth.pathology', 'C927'),
(890, 'Other orthopoxvirus infections', 'B08.0', 'icdcat1-11', 'gnuhealth.pathology', 'B080'),
(891, 'Other parasitologically confirmed malaria', 'B53', 'icdcat1-16', 'gnuhealth.pathology', 'B53'),
(892, 'Other parasitologically confirmed malaria, not elsewhere classified', 'B53.8', 'icdcat1-16', 'gnuhealth.pathology', 'B538'),
(893, 'Other parts of pancreas', 'C25.7', 'icdcat2-2', 'gnuhealth.pathology', 'C257'),
(894, 'Other parts of respiratory system', 'D02.3', 'icdcat2-16', 'gnuhealth.pathology', 'D023'),
(895, 'Other predominantly sexually transmitted diseases, not elsewhere classified', 'A63', 'icdcat1-5', 'gnuhealth.pathology', 'A63'),
(896, 'Other protozoal diseases, not elsewhere classified', 'B60', 'icdcat1-16', 'gnuhealth.pathology', 'B60'),
(897, 'Other protozoal intestinal diseases', 'A07', 'icdcat1-1', 'gnuhealth.pathology', 'A07'),
(898, 'Other pulmonary aspergillosis', 'B44.1', 'icdcat1-15', 'gnuhealth.pathology', 'B441'),
(899, 'Other respiratory tuberculosis, confirmed bacteriologically and histologically', 'A15.8', 'icdcat1-2', 'gnuhealth.pathology', 'A158'),
(900, 'Other respiratory tuberculosis, without mention of bacteriological or histological confirmation', 'A16.8', 'icdcat1-2', 'gnuhealth.pathology', 'A168'),
(901, 'Other rickettsioses', 'A79', 'icdcat1-8', 'gnuhealth.pathology', 'A79'),
(902, 'Other Salmonella infections', 'A02', 'icdcat1-1', 'gnuhealth.pathology', 'A02'),
(903, 'Other sarcomas of liver', 'C22.4', 'icdcat2-2', 'gnuhealth.pathology', 'C224'),
(904, 'Other schistosomiases', 'B65.8', 'icdcat1-17', 'gnuhealth.pathology', 'B658'),
(905, 'Other secondary syphilis', 'A51.4', 'icdcat1-5', 'gnuhealth.pathology', 'A514'),
(906, 'Other septicaemia', 'A41', 'icdcat1-4', 'gnuhealth.pathology', 'A41'),
(907, 'Other severe and complicated Plasmodium falciparum malaria', 'B50.8', 'icdcat1-16', 'gnuhealth.pathology', 'B508'),
(908, 'Other sexually transmitted chlamydial diseases', 'A56', 'icdcat1-5', 'gnuhealth.pathology', 'A56'),
(909, 'Other shigellosis', 'A03.8', 'icdcat1-1', 'gnuhealth.pathology', 'A038'),
(910, 'Other specified acute viral hepatitis', 'B17.8', 'icdcat1-12', 'gnuhealth.pathology', 'B178'),
(911, 'Other specified arthropod-borne viral fevers', 'A93.8', 'icdcat1-10', 'gnuhealth.pathology', 'A938'),
(912, 'Other specified bacterial agents as the cause of diseases classified to other chapters', 'B96.8', 'icdcat1-20', 'gnuhealth.pathology', 'B968'),
(913, 'Other specified bacterial diseases', 'A48.8', 'icdcat1-4', 'gnuhealth.pathology', 'A488'),
(914, 'Other specified bacterial foodborne intoxications', 'A05.8', 'icdcat1-1', 'gnuhealth.pathology', 'A058'),
(915, 'Other specified bacterial intestinal infections', 'A04.8', 'icdcat1-1', 'gnuhealth.pathology', 'A048'),
(916, 'Other specified carcinomas of liver', 'C22.7', 'icdcat2-2', 'gnuhealth.pathology', 'C227'),
(917, 'Other specified cestode infections', 'B71.8', 'icdcat1-17', 'gnuhealth.pathology', 'B718'),
(918, 'Other specified digestive organs', 'D01.7', 'icdcat2-16', 'gnuhealth.pathology', 'D017'),
(919, 'Other specified female genital organs', 'C57.7', 'icdcat2-8', 'gnuhealth.pathology', 'C577'),
(920, 'Other specified fluke infections', 'B66.8', 'icdcat1-17', 'gnuhealth.pathology', 'B668'),
(921, 'Other specified helminthiases', 'B83.8', 'icdcat1-17', 'gnuhealth.pathology', 'B838'),
(922, 'Other specified infestations', 'B88.8', 'icdcat1-18', 'gnuhealth.pathology', 'B888'),
(923, 'Other specified intestinal helminthiases', 'B81.8', 'icdcat1-17', 'gnuhealth.pathology', 'B818'),
(924, 'Other specified intestinal infections', 'A08.5', 'icdcat1-1', 'gnuhealth.pathology', 'A085'),
(925, 'Other specified leukaemias', 'C94.7', 'icdcat2-14', 'gnuhealth.pathology', 'C947'),
(926, 'Other specified male genital organs', 'C63.7', 'icdcat2-9', 'gnuhealth.pathology', 'C637'),
(927, 'Other specified malignant neoplasms of lymphoid, haematopoietic and related tissue', 'C96.7', 'icdcat2-14', 'gnuhealth.pathology', 'C967'),
(928, 'Other specified mosquito-borne viral fevers', 'A92.8', 'icdcat1-10', 'gnuhealth.pathology', 'A928'),
(929, 'Other specified mycoses', 'B48.8', 'icdcat1-15', 'gnuhealth.pathology', 'B488'),
(930, 'Other specified predominantly sexually transmitted diseases', 'A63.8', 'icdcat1-5', 'gnuhealth.pathology', 'A638'),
(931, 'Other specified protozoal diseases', 'B60.8', 'icdcat1-16', 'gnuhealth.pathology', 'B608'),
(932, 'Other specified protozoal intestinal diseases', 'A07.8', 'icdcat1-1', 'gnuhealth.pathology', 'A078'),
(933, 'Other specified rickettsioses', 'A79.8', 'icdcat1-8', 'gnuhealth.pathology', 'A798'),
(934, 'Other specified Salmonella infections', 'A02.8', 'icdcat1-1', 'gnuhealth.pathology', 'A028'),
(935, 'Other specified septicaemia', 'A41.8', 'icdcat1-4', 'gnuhealth.pathology', 'A418'),
(936, 'Other specified spirochaetal infections', 'A69.8', 'icdcat1-6', 'gnuhealth.pathology', 'A698'),
(937, 'Other specified superficial mycoses', 'B36.8', 'icdcat1-15', 'gnuhealth.pathology', 'B368'),
(938, 'Other specified types of non-Hodgkin\'s lymphoma', 'C85.7', 'icdcat2-14', 'gnuhealth.pathology', 'C857'),
(939, 'Other specified viral diseases', 'B33.8', 'icdcat1-14', 'gnuhealth.pathology', 'B338'),
(940, 'Other specified viral encephalitis', 'A85.8', 'icdcat1-9', 'gnuhealth.pathology', 'A858'),
(941, 'Other specified viral haemorrhagic fevers', 'A98.8', 'icdcat1-10', 'gnuhealth.pathology', 'A988'),
(942, 'Other specified viral infections characterised by skin and mucous membrane lesions', 'B08.8', 'icdcat1-11', 'gnuhealth.pathology', 'B088'),
(943, 'Other specified viral infections of central nervous system', 'A88.8', 'icdcat1-9', 'gnuhealth.pathology', 'A888'),
(944, 'Other specified zoonotic bacterial diseases, not elsewhere classified', 'A28.8', 'icdcat1-3', 'gnuhealth.pathology', 'A288'),
(945, 'Other spirochaetal infections', 'A69', 'icdcat1-6', 'gnuhealth.pathology', 'A69'),
(946, 'Other spotted fevers', 'A77.8', 'icdcat1-8', 'gnuhealth.pathology', 'A778'),
(947, 'Other staphylococcus as the cause of diseases classified to other chapters', 'B95.7', 'icdcat1-20', 'gnuhealth.pathology', 'B957'),
(948, 'Other streptococcal septicaemia', 'A40.8', 'icdcat1-4', 'gnuhealth.pathology', 'A408'),
(949, 'Other streptococcus as the cause of diseases classified to other chapters', 'B95.4', 'icdcat1-20', 'gnuhealth.pathology', 'B954'),
(950, 'Other superficial mycoses', 'B36', 'icdcat1-15', 'gnuhealth.pathology', 'B36'),
(951, 'Other symptomatic late syphilis', 'A52.7', 'icdcat1-5', 'gnuhealth.pathology', 'A527'),
(952, 'Other tetanus', 'A35', 'icdcat1-4', 'gnuhealth.pathology', 'A35'),
(953, 'Other tick-borne viral encephalitis', 'A84.8', 'icdcat1-9', 'gnuhealth.pathology', 'A848'),
(954, 'Other tuberculosis of nervous system', 'A17.8', 'icdcat1-2', 'gnuhealth.pathology', 'A178'),
(955, 'Other types of diffuse non-Hodgkin\'s lymphoma', 'C83.8', 'icdcat2-14', 'gnuhealth.pathology', 'C838'),
(956, 'Other types of follicular non-Hodgkin\'s lymphoma', 'C82.7', 'icdcat2-14', 'gnuhealth.pathology', 'C827'),
(957, 'Other Vincent\'s infections', 'A69.1', 'icdcat1-6', 'gnuhealth.pathology', 'A691'),
(958, 'Other viral agents as the cause of diseases classified to other chapters', 'B97.8', 'icdcat1-20', 'gnuhealth.pathology', 'B978'),
(959, 'Other viral conjunctivitis', 'B30.8', 'icdcat1-14', 'gnuhealth.pathology', 'B308'),
(960, 'Other viral diseases, not elsewhere classified', 'B33', 'icdcat1-14', 'gnuhealth.pathology', 'B33'),
(961, 'Other viral encephalitis, not elsewhere classified', 'A85', 'icdcat1-9', 'gnuhealth.pathology', 'A85'),
(962, 'Other viral enteritis', 'A08.3', 'icdcat1-1', 'gnuhealth.pathology', 'A083'),
(963, 'Other viral haemorrhagic fevers, not elsewhere classified', 'A98', 'icdcat1-10', 'gnuhealth.pathology', 'A98'),
(964, 'Other viral infections characterised by skin and mucous membrane lesions, not elsewhere classified', 'B08', 'icdcat1-11', 'gnuhealth.pathology', 'B08'),
(965, 'Other viral infections of central nervous system, not elsewhere classified', 'A88', 'icdcat1-9', 'gnuhealth.pathology', 'A88'),
(966, 'Other viral infections of unspecified site', 'B34.8', 'icdcat1-14', 'gnuhealth.pathology', 'B348'),
(967, 'Other viral meningitis', 'A87.8', 'icdcat1-9', 'gnuhealth.pathology', 'A878'),
(968, 'Other zoonotic bacterial diseases, not elsewhere classified', 'A28', 'icdcat1-3', 'gnuhealth.pathology', 'A28'),
(969, 'Other zygomycoses', 'B46.8', 'icdcat1-15', 'gnuhealth.pathology', 'B468'),
(970, 'Overlapping lesion of accessory sinuses', 'C31.8', 'icdcat2-3', 'gnuhealth.pathology', 'C318'),
(971, 'Overlapping lesion of biliary tract', 'C24.8', 'icdcat2-2', 'gnuhealth.pathology', 'C248'),
(972, 'Overlapping lesion of bladder', 'C67.8', 'icdcat2-10', 'gnuhealth.pathology', 'C678'),
(973, 'Overlapping lesion of bone and articular cartilage', 'C41.8', 'icdcat2-4', 'gnuhealth.pathology', 'C418'),
(974, 'Overlapping lesion of bone and articular cartilage of limbs', 'C40.8', 'icdcat2-4', 'gnuhealth.pathology', 'C408'),
(975, 'Overlapping lesion of brain', 'C71.8', 'icdcat2-11', 'gnuhealth.pathology', 'C718'),
(976, 'Overlapping lesion of brain and other parts of central nervous system', 'C72.8', 'icdcat2-11', 'gnuhealth.pathology', 'C728'),
(977, 'Overlapping lesion of breast', 'C50.8', 'icdcat2-7', 'gnuhealth.pathology', 'C508'),
(978, 'Overlapping lesion of bronchus and lung', 'C34.8', 'icdcat2-3', 'gnuhealth.pathology', 'C348'),
(979, 'Overlapping lesion of cervix uteri', 'C53.8', 'icdcat2-8', 'gnuhealth.pathology', 'C538'),
(980, 'Overlapping lesion of colon', 'C18.8', 'icdcat2-2', 'gnuhealth.pathology', 'C188'),
(981, 'Overlapping lesion of connective and soft tissue', 'C49.8', 'icdcat2-6', 'gnuhealth.pathology', 'C498'),
(982, 'Overlapping lesion of corpus uteri', 'C54.8', 'icdcat2-8', 'gnuhealth.pathology', 'C548'),
(983, 'Overlapping lesion of digestive system', 'C26.8', 'icdcat2-2', 'gnuhealth.pathology', 'C268'),
(984, 'Overlapping lesion of eye and adnexa', 'C69.8', 'icdcat2-11', 'gnuhealth.pathology', 'C698'),
(985, 'Overlapping lesion of female genital organs', 'C57.8', 'icdcat2-8', 'gnuhealth.pathology', 'C578'),
(986, 'Overlapping lesion of floor of mouth', 'C04.8', 'icdcat2-1', 'gnuhealth.pathology', 'C048'),
(987, 'Overlapping lesion of heart, mediastinum and pleura', 'C38.8', 'icdcat2-3', 'gnuhealth.pathology', 'C388'),
(988, 'Overlapping lesion of hypopharynx', 'C13.8', 'icdcat2-1', 'gnuhealth.pathology', 'C138'),
(989, 'Overlapping lesion of larynx', 'C32.8', 'icdcat2-3', 'gnuhealth.pathology', 'C328'),
(990, 'Overlapping lesion of lip', 'C00.8', 'icdcat2-1', 'gnuhealth.pathology', 'C008'),
(991, 'Overlapping lesion of lip, oral cavity and pharynx', 'C14.8', 'icdcat2-1', 'gnuhealth.pathology', 'C148'),
(992, 'Overlapping lesion of major salivary glands', 'C08.8', 'icdcat2-1', 'gnuhealth.pathology', 'C088'),
(993, 'Overlapping lesion of male genital organs', 'C63.8', 'icdcat2-9', 'gnuhealth.pathology', 'C638'),
(994, 'Overlapping lesion of nasopharynx', 'C11.8', 'icdcat2-1', 'gnuhealth.pathology', 'C118'),
(995, 'Overlapping lesion of oesophagus', 'C15.8', 'icdcat2-2', 'gnuhealth.pathology', 'C158'),
(996, 'Overlapping lesion of oropharynx', 'C10.8', 'icdcat2-1', 'gnuhealth.pathology', 'C108'),
(997, 'Overlapping lesion of other and ill-defined sites', 'C76.8', 'icdcat2-13', 'gnuhealth.pathology', 'C768'),
(998, 'Overlapping lesion of other and unspecified parts of mouth', 'C06.8', 'icdcat2-1', 'gnuhealth.pathology', 'C068'),
(999, 'Overlapping lesion of palate', 'C05.8', 'icdcat2-1', 'gnuhealth.pathology', 'C058'),
(1000, 'Overlapping lesion of pancreas', 'C25.8', 'icdcat2-2', 'gnuhealth.pathology', 'C258'),
(1001, 'Overlapping lesion of penis', 'C60.8', 'icdcat2-9', 'gnuhealth.pathology', 'C608'),
(1002, 'Overlapping lesion of peripheral nerves and autonomic nervous system', 'C47.8', 'icdcat2-6', 'gnuhealth.pathology', 'C478'),
(1003, 'Overlapping lesion of rectum, anus and anal canal', 'C21.8', 'icdcat2-2', 'gnuhealth.pathology', 'C218'),
(1004, 'Overlapping lesion of respiratory and intrathoracic organs', 'C39.8', 'icdcat2-3', 'gnuhealth.pathology', 'C398'),
(1005, 'Overlapping lesion of retroperitoneum and peritoneum', 'C48.8', 'icdcat2-6', 'gnuhealth.pathology', 'C488'),
(1006, 'Overlapping lesion of skin', 'C44.8', 'icdcat2-5', 'gnuhealth.pathology', 'C448'),
(1007, 'Overlapping lesion of small intestine', 'C17.8', 'icdcat2-2', 'gnuhealth.pathology', 'C178'),
(1008, 'Overlapping lesion of stomach', 'C16.8', 'icdcat2-2', 'gnuhealth.pathology', 'C168'),
(1009, 'Overlapping lesion of tongue', 'C02.8', 'icdcat2-1', 'gnuhealth.pathology', 'C028'),
(1010, 'Overlapping lesion of tonsil', 'C09.8', 'icdcat2-1', 'gnuhealth.pathology', 'C098'),
(1011, 'Overlapping lesion of urinary organs', 'C68.8', 'icdcat2-10', 'gnuhealth.pathology', 'C688'),
(1012, 'Overlapping lesion of vulva', 'C51.8', 'icdcat2-8', 'gnuhealth.pathology', 'C518'),
(1013, 'Overlapping malignant melanoma of skin', 'C43.8', 'icdcat2-5', 'gnuhealth.pathology', 'C438'),
(1014, 'Palate, unspecified', 'C05.9', 'icdcat2-1', 'gnuhealth.pathology', 'C059'),
(1015, 'Pancreas, unspecified', 'C25.9', 'icdcat2-2', 'gnuhealth.pathology', 'C259'),
(1016, 'Pancreatic duct', 'C25.3', 'icdcat2-2', 'gnuhealth.pathology', 'C253'),
(1017, 'Papillomavirus as the cause of diseases classified to other chapters', 'B97.7', 'icdcat1-20', 'gnuhealth.pathology', 'B977'),
(1018, 'Papovirus infection, unspecified', 'B34.4', 'icdcat1-14', 'gnuhealth.pathology', 'B344'),
(1019, 'Paracoccidioidomycosis', 'B41', 'icdcat1-15', 'gnuhealth.pathology', 'B41'),
(1020, 'Paracoccidioidomycosis, unspecified', 'B41.9', 'icdcat1-15', 'gnuhealth.pathology', 'B419'),
(1021, 'Paragonimiasis', 'B66.4', 'icdcat1-17', 'gnuhealth.pathology', 'B664'),
(1022, 'Parametrium', 'C57.3', 'icdcat2-8', 'gnuhealth.pathology', 'C573'),
(1023, 'Parathyroid gland', 'C75.0', 'icdcat2-12', 'gnuhealth.pathology', 'C750'),
(1024, 'Paratyphoid fever A', 'A01.1', 'icdcat1-1', 'gnuhealth.pathology', 'A011'),
(1025, 'Paratyphoid fever B', 'A01.2', 'icdcat1-1', 'gnuhealth.pathology', 'A012'),
(1026, 'Paratyphoid fever C', 'A01.3', 'icdcat1-1', 'gnuhealth.pathology', 'A013'),
(1027, 'Paratyphoid fever, unspecified', 'A01.4', 'icdcat1-1', 'gnuhealth.pathology', 'A014'),
(1028, 'Paraurethral glands', 'C68.1', 'icdcat2-10', 'gnuhealth.pathology', 'C681'),
(1029, 'Parietal lobe', 'C71.3', 'icdcat2-11', 'gnuhealth.pathology', 'C713'),
(1030, 'Parvovirus as the cause of diseases classified to other chapters', 'B97.6', 'icdcat1-20', 'gnuhealth.pathology', 'B976'),
(1031, 'Parvovirus infection, unspecified', 'B34.3', 'icdcat1-14', 'gnuhealth.pathology', 'B343'),
(1032, 'Pasteurellosis', 'A28.0', 'icdcat1-3', 'gnuhealth.pathology', 'A280'),
(1033, 'Pediculosis and phthiriasis', 'B85', 'icdcat1-18', 'gnuhealth.pathology', 'B85'),
(1034, 'Pediculosis due to Pediculus humanus capitis', 'B85.0', 'icdcat1-18', 'gnuhealth.pathology', 'B850'),
(1035, 'Pediculosis due to Pediculus humanus corporis', 'B85.1', 'icdcat1-18', 'gnuhealth.pathology', 'B851'),
(1036, 'Pediculosis, unspecified', 'B85.2', 'icdcat1-18', 'gnuhealth.pathology', 'B852'),
(1037, 'Pelvic bones, sacrum and coccyx', 'C41.4', 'icdcat2-4', 'gnuhealth.pathology', 'C414'),
(1038, 'Pelvis', 'C76.3', 'icdcat2-13', 'gnuhealth.pathology', 'C763'),
(1039, 'Penicillosis', 'B48.4', 'icdcat1-15', 'gnuhealth.pathology', 'B484'),
(1040, 'Penis, unspecified', 'C60.9', 'icdcat2-9', 'gnuhealth.pathology', 'C609'),
(1041, 'Peripheral and cutaneous T-cell lymphomas', 'C84', 'icdcat2-14', 'gnuhealth.pathology', 'C84'),
(1042, 'Peripheral nerves and autonomic nervous system, unspecified', 'C47.9', 'icdcat2-6', 'gnuhealth.pathology', 'C479'),
(1043, 'Peripheral nerves of abdomen', 'C47.4', 'icdcat2-6', 'gnuhealth.pathology', 'C474'),
(1044, 'Peripheral nerves of head, face and neck', 'C47.0', 'icdcat2-6', 'gnuhealth.pathology', 'C470'),
(1045, 'Peripheral nerves of lower limb, including hip', 'C47.2', 'icdcat2-6', 'gnuhealth.pathology', 'C472'),
(1046, 'Peripheral nerves of pelvis', 'C47.5', 'icdcat2-6', 'gnuhealth.pathology', 'C475'),
(1047, 'Peripheral nerves of thorax', 'C47.3', 'icdcat2-6', 'gnuhealth.pathology', 'C473'),
(1048, 'Peripheral nerves of trunk, unspecified', 'C47.6', 'icdcat2-6', 'gnuhealth.pathology', 'C476'),
(1049, 'Peripheral nerves of upper limb, including shoulder', 'C47.1', 'icdcat2-6', 'gnuhealth.pathology', 'C471'),
(1050, 'Peripheral T-cell lymphoma', 'C84.4', 'icdcat2-14', 'gnuhealth.pathology', 'C844'),
(1051, 'Peritoneum, unspecified', 'C48.2', 'icdcat2-6', 'gnuhealth.pathology', 'C482'),
(1052, 'Phaeomycotic brain abscess', 'B43.1', 'icdcat1-15', 'gnuhealth.pathology', 'B431'),
(1053, 'Pharyngeal diphtheria', 'A36.0', 'icdcat1-4', 'gnuhealth.pathology', 'A360'),
(1054, 'Pharynx, unspecified', 'C14.0', 'icdcat2-1', 'gnuhealth.pathology', 'C140'),
(1055, 'Phthiriasis', 'B85.3', 'icdcat1-18', 'gnuhealth.pathology', 'B853'),
(1056, 'Pineal gland', 'C75.3', 'icdcat2-12', 'gnuhealth.pathology', 'C753'),
(1057, 'Pinta [carate]', 'A67', 'icdcat1-6', 'gnuhealth.pathology', 'A67'),
(1058, 'Pinta, unspecified', 'A67.9', 'icdcat1-6', 'gnuhealth.pathology', 'A679'),
(1059, 'Pituitary gland', 'C75.1', 'icdcat2-12', 'gnuhealth.pathology', 'C751'),
(1060, 'Pityriasis versicolor', 'B36.0', 'icdcat1-15', 'gnuhealth.pathology', 'B360'),
(1061, 'Plague', 'A20', 'icdcat1-3', 'gnuhealth.pathology', 'A20'),
(1062, 'Plague meningitis', 'A20.3', 'icdcat1-3', 'gnuhealth.pathology', 'A203'),
(1063, 'Plague, unspecified', 'A20.9', 'icdcat1-3', 'gnuhealth.pathology', 'A209'),
(1064, 'Plasma cell leukaemia', 'C90.1', 'icdcat2-14', 'gnuhealth.pathology', 'C901'),
(1065, 'Plasmacytoma, extramedullary', 'C90.2', 'icdcat2-14', 'gnuhealth.pathology', 'C902'),
(1066, 'Plasmodium falciparum malaria', 'B50', 'icdcat1-16', 'gnuhealth.pathology', 'B50'),
(1067, 'Plasmodium falciparum malaria with cerebral complications', 'B50.0', 'icdcat1-16', 'gnuhealth.pathology', 'B500'),
(1068, 'Plasmodium falciparum malaria, unspecified', 'B50.9', 'icdcat1-16', 'gnuhealth.pathology', 'B509'),
(1069, 'Plasmodium malariae malaria', 'B52', 'icdcat1-16', 'gnuhealth.pathology', 'B52'),
(1070, 'Plasmodium malariae malaria with nephropathy', 'B52.0', 'icdcat1-16', 'gnuhealth.pathology', 'B520');
INSERT INTO `diagnosis` (`id`, `name`, `code`, `category`, `model`, `unique_id`) VALUES
(1071, 'Plasmodium malariae malaria with other complications', 'B52.8', 'icdcat1-16', 'gnuhealth.pathology', 'B528'),
(1072, 'Plasmodium malariae malaria without complication', 'B52.9', 'icdcat1-16', 'gnuhealth.pathology', 'B529'),
(1073, 'Plasmodium ovale malaria', 'B53.0', 'icdcat1-16', 'gnuhealth.pathology', 'B530'),
(1074, 'Plasmodium vivax malaria', 'B51', 'icdcat1-16', 'gnuhealth.pathology', 'B51'),
(1075, 'Plasmodium vivax malaria with other complications', 'B51.8', 'icdcat1-16', 'gnuhealth.pathology', 'B518'),
(1076, 'Plasmodium vivax malaria with rupture of spleen', 'B51.0', 'icdcat1-16', 'gnuhealth.pathology', 'B510'),
(1077, 'Plasmodium vivax malaria without complication', 'B51.9', 'icdcat1-16', 'gnuhealth.pathology', 'B519'),
(1078, 'Pleura', 'C38.4', 'icdcat2-3', 'gnuhealth.pathology', 'C384'),
(1079, 'Pluriglandular involvement, unspecified', 'C75.8', 'icdcat2-12', 'gnuhealth.pathology', 'C758'),
(1080, 'Pneumocystosis', 'B59', 'icdcat1-16', 'gnuhealth.pathology', 'B59'),
(1081, 'Pneumonic plague', 'A20.2', 'icdcat1-3', 'gnuhealth.pathology', 'A202'),
(1082, 'Postcricoid region', 'C13.0', 'icdcat2-1', 'gnuhealth.pathology', 'C130'),
(1083, 'Posterior mediastinum', 'C38.2', 'icdcat2-3', 'gnuhealth.pathology', 'C382'),
(1084, 'Posterior wall of bladder', 'C67.4', 'icdcat2-10', 'gnuhealth.pathology', 'C674'),
(1085, 'Posterior wall of hypopharynx', 'C13.2', 'icdcat2-1', 'gnuhealth.pathology', 'C132'),
(1086, 'Posterior wall of nasopharynx', 'C11.1', 'icdcat2-1', 'gnuhealth.pathology', 'C111'),
(1087, 'Posterior wall of oropharynx', 'C10.3', 'icdcat2-1', 'gnuhealth.pathology', 'C103'),
(1088, 'Prepuce', 'C60.0', 'icdcat2-9', 'gnuhealth.pathology', 'C600'),
(1089, 'Primary anal syphilis', 'A51.1', 'icdcat1-5', 'gnuhealth.pathology', 'A511'),
(1090, 'Primary genital syphilis', 'A51.0', 'icdcat1-5', 'gnuhealth.pathology', 'A510'),
(1091, 'Primary lesions of pinta', 'A67.0', 'icdcat1-6', 'gnuhealth.pathology', 'A670'),
(1092, 'Primary respiratory tuberculosis without mention of bacteriological or histological confirmation', 'A16.7', 'icdcat1-2', 'gnuhealth.pathology', 'A167'),
(1093, 'Primary respiratory tuberculosis, confirmed bacteriologically and histologically', 'A15.7', 'icdcat1-2', 'gnuhealth.pathology', 'A157'),
(1094, 'Primary syphilis of other sites', 'A51.2', 'icdcat1-5', 'gnuhealth.pathology', 'A512'),
(1095, 'Progressive multifocal leukoencephalopathy', 'A81.2', 'icdcat1-9', 'gnuhealth.pathology', 'A812'),
(1096, 'Prolymphocytic leukaemia', 'C91.3', 'icdcat2-14', 'gnuhealth.pathology', 'C913'),
(1097, 'Proteus (mirabilis)(morganii) as the cause of diseases classified to other chapters', 'B96.4', 'icdcat1-20', 'gnuhealth.pathology', 'B964'),
(1098, 'Protozoal intestinal disease, unspecified', 'A07.9', 'icdcat1-1', 'gnuhealth.pathology', 'A079'),
(1099, 'Pseudomonas (aeruginosa)(mallei)(pseudomallei) as the cause of diseases classified to other chapters', 'B96.5', 'icdcat1-20', 'gnuhealth.pathology', 'B965'),
(1100, 'Pulmonary actinomycosis', 'A42.0', 'icdcat1-4', 'gnuhealth.pathology', 'A420'),
(1101, 'Pulmonary anthrax', 'A22.1', 'icdcat1-3', 'gnuhealth.pathology', 'A221'),
(1102, 'Pulmonary blastomycosis, unspecified', 'B40.2', 'icdcat1-15', 'gnuhealth.pathology', 'B402'),
(1103, 'Pulmonary candidiasis', 'B37.1', 'icdcat1-15', 'gnuhealth.pathology', 'B371'),
(1104, 'Pulmonary coccidioidomycosis, unspecified', 'B38.2', 'icdcat1-15', 'gnuhealth.pathology', 'B382'),
(1105, 'Pulmonary cryptococcosis', 'B45.0', 'icdcat1-15', 'gnuhealth.pathology', 'B450'),
(1106, 'Pulmonary histoplasmosis capsulati, unspecified', 'B39.2', 'icdcat1-15', 'gnuhealth.pathology', 'B392'),
(1107, 'Pulmonary mucormycosis', 'B46.0', 'icdcat1-15', 'gnuhealth.pathology', 'B460'),
(1108, 'Pulmonary mycobacterial infection', 'A31.0', 'icdcat1-4', 'gnuhealth.pathology', 'A310'),
(1109, 'Pulmonary nocardiosis', 'A43.0', 'icdcat1-4', 'gnuhealth.pathology', 'A430'),
(1110, 'Pulmonary paracoccidioidomycosis', 'B41.0', 'icdcat1-15', 'gnuhealth.pathology', 'B410'),
(1111, 'Pulmonary sporotrichosis', 'B42.0', 'icdcat1-15', 'gnuhealth.pathology', 'B420'),
(1112, 'Pulmonary toxoplasmosis', 'B58.3', 'icdcat1-16', 'gnuhealth.pathology', 'B583'),
(1113, 'Pulmonary tularaemia', 'A21.2', 'icdcat1-3', 'gnuhealth.pathology', 'A212'),
(1114, 'Pyloric antrum', 'C16.3', 'icdcat2-2', 'gnuhealth.pathology', 'C163'),
(1115, 'Pylorus', 'C16.4', 'icdcat2-2', 'gnuhealth.pathology', 'C164'),
(1116, 'Q fever', 'A78', 'icdcat1-8', 'gnuhealth.pathology', 'A78'),
(1117, 'Rabies', 'A82', 'icdcat1-9', 'gnuhealth.pathology', 'A82'),
(1118, 'Rabies, unspecified', 'A82.9', 'icdcat1-9', 'gnuhealth.pathology', 'A829'),
(1119, 'Rat-bite fever, unspecified', 'A25.9', 'icdcat1-3', 'gnuhealth.pathology', 'A259'),
(1120, 'Rat-bite fevers', 'A25', 'icdcat1-3', 'gnuhealth.pathology', 'A25'),
(1121, 'Recrudescent typhus [Brill\'s disease]', 'A75.1', 'icdcat1-8', 'gnuhealth.pathology', 'A751'),
(1122, 'Rectosigmoid junction', 'D01.1', 'icdcat2-16', 'gnuhealth.pathology', 'D011'),
(1123, 'Rectum', 'D01.2', 'icdcat2-16', 'gnuhealth.pathology', 'D012'),
(1124, 'Relapsing fever, unspecified', 'A68.9', 'icdcat1-6', 'gnuhealth.pathology', 'A689'),
(1125, 'Relapsing fevers', 'A68', 'icdcat1-6', 'gnuhealth.pathology', 'A68'),
(1126, 'Reovirus as the cause of diseases classified to other chapters', 'B97.5', 'icdcat1-20', 'gnuhealth.pathology', 'B975'),
(1127, 'Respiratory synctial virus as the cause of diseases classified to other chapters', 'B97.4', 'icdcat1-20', 'gnuhealth.pathology', 'B974'),
(1128, 'Respiratory system, unspecified', 'D02.4', 'icdcat2-16', 'gnuhealth.pathology', 'D024'),
(1129, 'Respiratory tuberculosis unspecified, confirmed bacteriologically and histologically', 'A15.9', 'icdcat1-2', 'gnuhealth.pathology', 'A159'),
(1130, 'Respiratory tuberculosis unspecified, without mention of bacteriological or histological confirmation', 'A16.9', 'icdcat1-2', 'gnuhealth.pathology', 'A169'),
(1131, 'Respiratory tuberculosis, bacteriologically and histologically confirmed', 'A15', 'icdcat1-2', 'gnuhealth.pathology', 'A15'),
(1132, 'Respiratory tuberculosis, not confirmed bacteriologically or histologically', 'A16', 'icdcat1-2', 'gnuhealth.pathology', 'A16'),
(1133, 'Retina', 'C69.2', 'icdcat2-11', 'gnuhealth.pathology', 'C692'),
(1134, 'Retromolar area', 'C06.2', 'icdcat2-1', 'gnuhealth.pathology', 'C062'),
(1135, 'Retroperitoneum', 'C48.0', 'icdcat2-6', 'gnuhealth.pathology', 'C480'),
(1136, 'Retrovirus as the cause of diseases classified to other chapters', 'B97.3', 'icdcat1-20', 'gnuhealth.pathology', 'B973'),
(1137, 'Retrovirus infections, not elsewhere classified', 'B33.3', 'icdcat1-14', 'gnuhealth.pathology', 'B333'),
(1138, 'Rhinocerebral mucormycosis', 'B46.1', 'icdcat1-15', 'gnuhealth.pathology', 'B461'),
(1139, 'Rhinosporidiosis', 'B48.1', 'icdcat1-15', 'gnuhealth.pathology', 'B481'),
(1140, 'Rhodesiense trypanosomiasis', 'B56.1', 'icdcat1-16', 'gnuhealth.pathology', 'B561'),
(1141, 'Ribs, sternum and clavicle', 'C41.3', 'icdcat2-4', 'gnuhealth.pathology', 'C413'),
(1142, 'Rickettsialpox due to Rickettsia akari', 'A79.1', 'icdcat1-8', 'gnuhealth.pathology', 'A791'),
(1143, 'Rickettsiosis, unspecified', 'A79.9', 'icdcat1-8', 'gnuhealth.pathology', 'A799'),
(1144, 'Rift Valley fever', 'A92.4', 'icdcat1-10', 'gnuhealth.pathology', 'A924'),
(1145, 'Rocio virus disease', 'A83.6', 'icdcat1-9', 'gnuhealth.pathology', 'A836'),
(1146, 'Ross River disease', 'B33.1', 'icdcat1-14', 'gnuhealth.pathology', 'B331'),
(1147, 'Rotaviral enteritis', 'A08.0', 'icdcat1-1', 'gnuhealth.pathology', 'A080'),
(1148, 'Round ligament', 'C57.2', 'icdcat2-8', 'gnuhealth.pathology', 'C572'),
(1149, 'Rubella with neurological complications', 'B06.0', 'icdcat1-11', 'gnuhealth.pathology', 'B060'),
(1150, 'Rubella with other complications', 'B06.8', 'icdcat1-11', 'gnuhealth.pathology', 'B068'),
(1151, 'Rubella without complication', 'B06.9', 'icdcat1-11', 'gnuhealth.pathology', 'B069'),
(1152, 'Rubella [German measles]', 'B06', 'icdcat1-11', 'gnuhealth.pathology', 'B06'),
(1153, 'Salmonella gastro-enteritis', 'A02.0', 'icdcat1-1', 'gnuhealth.pathology', 'A020'),
(1154, 'Salmonella infection, unspecified', 'A02.9', 'icdcat1-1', 'gnuhealth.pathology', 'A029'),
(1155, 'Salmonella septicaemia', 'A02.1', 'icdcat1-1', 'gnuhealth.pathology', 'A021'),
(1156, 'Sandfly fever', 'A93.1', 'icdcat1-10', 'gnuhealth.pathology', 'A931'),
(1157, 'Scabies', 'B86', 'icdcat1-18', 'gnuhealth.pathology', 'B86'),
(1158, 'Scapula and long bones of upper limb', 'C40.0', 'icdcat2-4', 'gnuhealth.pathology', 'C400'),
(1159, 'Scarlet fever', 'A38', 'icdcat1-4', 'gnuhealth.pathology', 'A38'),
(1160, 'Schistosomiasis due to Schistosoma haematobium [urinary schistosomiasis]', 'B65.0', 'icdcat1-17', 'gnuhealth.pathology', 'B650'),
(1161, 'Schistosomiasis due to Schistosoma japonicum', 'B65.2', 'icdcat1-17', 'gnuhealth.pathology', 'B652'),
(1162, 'Schistosomiasis due to Schistosoma Mansoni [intestinal schistosomiasis]', 'B65.1', 'icdcat1-17', 'gnuhealth.pathology', 'B651'),
(1163, 'Schistosomiasis [bilharziasis]', 'B65', 'icdcat1-17', 'gnuhealth.pathology', 'B65'),
(1164, 'Schistosomiasis, unspecified', 'B65.9', 'icdcat1-17', 'gnuhealth.pathology', 'B659'),
(1165, 'Scrotum', 'C63.2', 'icdcat2-9', 'gnuhealth.pathology', 'C632'),
(1166, 'Secondary and unspecified malignant neoplasm of lymph nodes', 'C77', 'icdcat2-13', 'gnuhealth.pathology', 'C77'),
(1167, 'Secondary malignant neoplasm of adrenal gland', 'C79.7', 'icdcat2-13', 'gnuhealth.pathology', 'C797'),
(1168, 'Secondary malignant neoplasm of bladder and other and unspecified urinary organs', 'C79.1', 'icdcat2-13', 'gnuhealth.pathology', 'C791'),
(1169, 'Secondary malignant neoplasm of bone and bone marrow', 'C79.5', 'icdcat2-13', 'gnuhealth.pathology', 'C795'),
(1170, 'Secondary malignant neoplasm of brain and cerebral meninges', 'C79.3', 'icdcat2-13', 'gnuhealth.pathology', 'C793'),
(1171, 'Secondary malignant neoplasm of kidney and renal pelvis', 'C79.0', 'icdcat2-13', 'gnuhealth.pathology', 'C790'),
(1172, 'Secondary malignant neoplasm of large intestine and rectum', 'C78.5', 'icdcat2-13', 'gnuhealth.pathology', 'C785'),
(1173, 'Secondary malignant neoplasm of liver', 'C78.7', 'icdcat2-13', 'gnuhealth.pathology', 'C787'),
(1174, 'Secondary malignant neoplasm of lung', 'C78.0', 'icdcat2-13', 'gnuhealth.pathology', 'C780'),
(1175, 'Secondary malignant neoplasm of mediastinum', 'C78.1', 'icdcat2-13', 'gnuhealth.pathology', 'C781'),
(1176, 'Secondary malignant neoplasm of other and unspecified digestive organs', 'C78.8', 'icdcat2-13', 'gnuhealth.pathology', 'C788'),
(1177, 'Secondary malignant neoplasm of other and unspecified parts of nervous system', 'C79.4', 'icdcat2-13', 'gnuhealth.pathology', 'C794'),
(1178, 'Secondary malignant neoplasm of other and unspecified respiratory organs', 'C78.3', 'icdcat2-13', 'gnuhealth.pathology', 'C783'),
(1179, 'Secondary malignant neoplasm of other sites', 'C79', 'icdcat2-13', 'gnuhealth.pathology', 'C79'),
(1180, 'Secondary malignant neoplasm of other specified sites', 'C79.8', 'icdcat2-13', 'gnuhealth.pathology', 'C798'),
(1181, 'Secondary malignant neoplasm of ovary', 'C79.6', 'icdcat2-13', 'gnuhealth.pathology', 'C796'),
(1182, 'Secondary malignant neoplasm of pleura', 'C78.2', 'icdcat2-13', 'gnuhealth.pathology', 'C782'),
(1183, 'Secondary malignant neoplasm of respiratory and digestive organs', 'C78', 'icdcat2-13', 'gnuhealth.pathology', 'C78'),
(1184, 'Secondary malignant neoplasm of retroperitoneum and peritoneum', 'C78.6', 'icdcat2-13', 'gnuhealth.pathology', 'C786'),
(1185, 'Secondary malignant neoplasm of skin', 'C79.2', 'icdcat2-13', 'gnuhealth.pathology', 'C792'),
(1186, 'Secondary malignant neoplasm of small intestine', 'C78.4', 'icdcat2-13', 'gnuhealth.pathology', 'C784'),
(1187, 'Secondary syphilis of skin and mucous membranes', 'A51.3', 'icdcat1-5', 'gnuhealth.pathology', 'A513'),
(1188, 'Septicaemia due to anaerobes', 'A41.4', 'icdcat1-4', 'gnuhealth.pathology', 'A414'),
(1189, 'Septicaemia due to Haemophilus influenzae', 'A41.3', 'icdcat1-4', 'gnuhealth.pathology', 'A413'),
(1190, 'Septicaemia due to other Gram-negative organisms', 'A41.5', 'icdcat1-4', 'gnuhealth.pathology', 'A415'),
(1191, 'Septicaemia due to other specified staphylococcus', 'A41.1', 'icdcat1-4', 'gnuhealth.pathology', 'A411'),
(1192, 'Septicaemia due to Staphylococcus aureus', 'A41.0', 'icdcat1-4', 'gnuhealth.pathology', 'A410'),
(1193, 'Septicaemia due to Streptococcus pneumoniae', 'A40.3', 'icdcat1-4', 'gnuhealth.pathology', 'A403'),
(1194, 'Septicaemia due to streptococcus, group A', 'A40.0', 'icdcat1-4', 'gnuhealth.pathology', 'A400'),
(1195, 'Septicaemia due to streptococcus, group B', 'A40.1', 'icdcat1-4', 'gnuhealth.pathology', 'A401'),
(1196, 'Septicaemia due to streptococcus, group D', 'A40.2', 'icdcat1-4', 'gnuhealth.pathology', 'A402'),
(1197, 'Septicaemia due to unspecified staphylococcus', 'A41.2', 'icdcat1-4', 'gnuhealth.pathology', 'A412'),
(1198, 'Septicaemia, unspecified', 'A41.9', 'icdcat1-4', 'gnuhealth.pathology', 'A419'),
(1199, 'Septicaemic plague', 'A20.7', 'icdcat1-3', 'gnuhealth.pathology', 'A207'),
(1200, 'Sequelae of central nervous system tuberculosis', 'B90.0', 'icdcat1-19', 'gnuhealth.pathology', 'B900'),
(1201, 'Sequelae of genito-urinary tuberculosis', 'B90.1', 'icdcat1-19', 'gnuhealth.pathology', 'B901'),
(1202, 'Sequelae of leprosy', 'B92', 'icdcat1-19', 'gnuhealth.pathology', 'B92'),
(1203, 'Sequelae of other and unspecified infectious and parasitic diseases', 'B94', 'icdcat1-19', 'gnuhealth.pathology', 'B94'),
(1204, 'Sequelae of other specified infectious and parasitic diseases', 'B94.8', 'icdcat1-19', 'gnuhealth.pathology', 'B948'),
(1205, 'Sequelae of poliomyelitis', 'B91', 'icdcat1-19', 'gnuhealth.pathology', 'B91'),
(1206, 'Sequelae of respiratory and unspecified tuberculosis', 'B90.9', 'icdcat1-19', 'gnuhealth.pathology', 'B909'),
(1207, 'Sequelae of trachoma', 'B94.0', 'icdcat1-19', 'gnuhealth.pathology', 'B940'),
(1208, 'Sequelae of tuberculosis', 'B90', 'icdcat1-19', 'gnuhealth.pathology', 'B90'),
(1209, 'Sequelae of tuberculosis of bones and joints', 'B90.2', 'icdcat1-19', 'gnuhealth.pathology', 'B902'),
(1210, 'Sequelae of tuberculosis of other organs', 'B90.8', 'icdcat1-19', 'gnuhealth.pathology', 'B908'),
(1211, 'Sequelae of unspecified infectious or parasitic disease', 'B94.9', 'icdcat1-19', 'gnuhealth.pathology', 'B949'),
(1212, 'Sequelae of viral encephalitis', 'B94.1', 'icdcat1-19', 'gnuhealth.pathology', 'B941'),
(1213, 'Sequelae of viral hepatitis', 'B94.2', 'icdcat1-19', 'gnuhealth.pathology', 'B942'),
(1214, 'Sexually transmitted chlamydial infection of other sites', 'A56.8', 'icdcat1-5', 'gnuhealth.pathology', 'A568'),
(1215, 'Sézary\'s disease', 'C84.1', 'icdcat2-14', 'gnuhealth.pathology', 'C841'),
(1216, 'Shigellosis', 'A03', 'icdcat1-1', 'gnuhealth.pathology', 'A03'),
(1217, 'Shigellosis due to Shigella boydii', 'A03.2', 'icdcat1-1', 'gnuhealth.pathology', 'A032'),
(1218, 'Shigellosis due to Shigella dysenteriae', 'A03.0', 'icdcat1-1', 'gnuhealth.pathology', 'A030'),
(1219, 'Shigellosis due to Shigella flexneri', 'A03.1', 'icdcat1-1', 'gnuhealth.pathology', 'A031'),
(1220, 'Shigellosis due to Shigella sonnei', 'A03.3', 'icdcat1-1', 'gnuhealth.pathology', 'A033'),
(1221, 'Shigellosis, unspecified', 'A03.9', 'icdcat1-1', 'gnuhealth.pathology', 'A039'),
(1222, 'Short bones of lower limb', 'C40.3', 'icdcat2-4', 'gnuhealth.pathology', 'C403'),
(1223, 'Short bones of upper limb', 'C40.1', 'icdcat2-4', 'gnuhealth.pathology', 'C401'),
(1224, 'Sigmoid colon', 'C18.7', 'icdcat2-2', 'gnuhealth.pathology', 'C187'),
(1225, 'Skin of ear and external auricular canal', 'C44.2', 'icdcat2-5', 'gnuhealth.pathology', 'C442'),
(1226, 'Skin of eyelid, including canthus', 'C44.1', 'icdcat2-5', 'gnuhealth.pathology', 'C441'),
(1227, 'Skin of lip', 'C44.0', 'icdcat2-5', 'gnuhealth.pathology', 'C440'),
(1228, 'Skin of lower limb, including hip', 'C44.7', 'icdcat2-5', 'gnuhealth.pathology', 'C447'),
(1229, 'Skin of other and unspecified parts of face', 'C44.3', 'icdcat2-5', 'gnuhealth.pathology', 'C443'),
(1230, 'Skin of scalp and neck', 'C44.4', 'icdcat2-5', 'gnuhealth.pathology', 'C444'),
(1231, 'Skin of trunk', 'C44.5', 'icdcat2-5', 'gnuhealth.pathology', 'C445'),
(1232, 'Skin of upper limb, including shoulder', 'C44.6', 'icdcat2-5', 'gnuhealth.pathology', 'C446'),
(1233, 'Small cell (diffuse)', 'C83.0', 'icdcat2-14', 'gnuhealth.pathology', 'C830'),
(1234, 'Small cleaved cell (diffuse)', 'C83.1', 'icdcat2-14', 'gnuhealth.pathology', 'C831'),
(1235, 'Small cleaved cell, follicular', 'C82.0', 'icdcat2-14', 'gnuhealth.pathology', 'C820'),
(1236, 'Small intestine, unspecified', 'C17.9', 'icdcat2-2', 'gnuhealth.pathology', 'C179'),
(1237, 'Smallpox', 'B03', 'icdcat1-11', 'gnuhealth.pathology', 'B03'),
(1238, 'Soft palate', 'C05.1', 'icdcat2-1', 'gnuhealth.pathology', 'C051'),
(1239, 'Sparganosis', 'B70.1', 'icdcat1-17', 'gnuhealth.pathology', 'B701'),
(1240, 'Specified parts of peritoneum', 'C48.1', 'icdcat2-6', 'gnuhealth.pathology', 'C481'),
(1241, 'Spermatic cord', 'C63.1', 'icdcat2-9', 'gnuhealth.pathology', 'C631'),
(1242, 'Sphenoidal sinus', 'C31.3', 'icdcat2-3', 'gnuhealth.pathology', 'C313'),
(1243, 'Spinal cord', 'C72.0', 'icdcat2-11', 'gnuhealth.pathology', 'C720'),
(1244, 'Spinal meninges', 'C70.1', 'icdcat2-11', 'gnuhealth.pathology', 'C701'),
(1245, 'Spirillosis', 'A25.0', 'icdcat1-3', 'gnuhealth.pathology', 'A250'),
(1246, 'Spirochaetal infection, unspecified', 'A69.9', 'icdcat1-6', 'gnuhealth.pathology', 'A699'),
(1247, 'Spleen', 'C26.1', 'icdcat2-2', 'gnuhealth.pathology', 'C261'),
(1248, 'Splenic flexure', 'C18.5', 'icdcat2-2', 'gnuhealth.pathology', 'C185'),
(1249, 'Sporotrichosis', 'B42', 'icdcat1-15', 'gnuhealth.pathology', 'B42'),
(1250, 'Sporotrichosis, unspecified', 'B42.9', 'icdcat1-15', 'gnuhealth.pathology', 'B429'),
(1251, 'Spotted fever due to Rickettsia australis', 'A77.3', 'icdcat1-8', 'gnuhealth.pathology', 'A773'),
(1252, 'Spotted fever due to Rickettsia conorii', 'A77.1', 'icdcat1-8', 'gnuhealth.pathology', 'A771'),
(1253, 'Spotted fever due to Rickettsia rickettsii', 'A77.0', 'icdcat1-8', 'gnuhealth.pathology', 'A770'),
(1254, 'Spotted fever due to Rickettsia siberica', 'A77.2', 'icdcat1-8', 'gnuhealth.pathology', 'A772'),
(1255, 'Spotted fever [tick-borne rickettsioses]', 'A77', 'icdcat1-8', 'gnuhealth.pathology', 'A77'),
(1256, 'Spotted fever, unspecified', 'A77.9', 'icdcat1-8', 'gnuhealth.pathology', 'A779'),
(1257, 'St. Louis encephalitis', 'A83.3', 'icdcat1-9', 'gnuhealth.pathology', 'A833'),
(1258, 'Staphylococcal infection, unspecified', 'A49.0', 'icdcat1-4', 'gnuhealth.pathology', 'A490'),
(1259, 'Staphylococcus aureus as the cause of diseases classified to other chapters', 'B95.6', 'icdcat1-20', 'gnuhealth.pathology', 'B956'),
(1260, 'Stomach', 'D00.2', 'icdcat2-16', 'gnuhealth.pathology', 'D002'),
(1261, 'Stomach, unspecified', 'C16.9', 'icdcat2-2', 'gnuhealth.pathology', 'C169'),
(1262, 'Streptobacillosis', 'A25.1', 'icdcat1-3', 'gnuhealth.pathology', 'A251'),
(1263, 'Streptococcal infection, unspecified', 'A49.1', 'icdcat1-4', 'gnuhealth.pathology', 'A491'),
(1264, 'Streptococcal septicaemia', 'A40', 'icdcat1-4', 'gnuhealth.pathology', 'A40'),
(1265, 'Streptococcal septicaemia, unspecified', 'A40.9', 'icdcat1-4', 'gnuhealth.pathology', 'A409'),
(1266, 'Streptococcus and staphylococcus as the cause of diseases classified to other chapters', 'B95', 'icdcat1-20', 'gnuhealth.pathology', 'B95'),
(1267, 'Streptococcus pneumoniae as the cause of diseases classified to other chapters', 'B95.3', 'icdcat1-20', 'gnuhealth.pathology', 'B953'),
(1268, 'Streptococcus, group A, as the cause of diseases classified to other chapters', 'B95.0', 'icdcat1-20', 'gnuhealth.pathology', 'B950'),
(1269, 'Streptococcus, group B, as the cause of diseases classified to other chapters', 'B95.1', 'icdcat1-20', 'gnuhealth.pathology', 'B951'),
(1270, 'Streptococcus, group D, as the cause of diseases classified to other chapters', 'B95.2', 'icdcat1-20', 'gnuhealth.pathology', 'B952'),
(1271, 'Strongyloidiasis', 'B78', 'icdcat1-17', 'gnuhealth.pathology', 'B78'),
(1272, 'Strongyloidiasis, unspecified', 'B78.9', 'icdcat1-17', 'gnuhealth.pathology', 'B789'),
(1273, 'Subacute and chronic melioidosis', 'A24.2', 'icdcat1-3', 'gnuhealth.pathology', 'A242'),
(1274, 'Subacute leukaemia of unspecified cell type', 'C95.2', 'icdcat2-14', 'gnuhealth.pathology', 'C952'),
(1275, 'Subacute lymphocytic leukaemia', 'C91.2', 'icdcat2-14', 'gnuhealth.pathology', 'C912'),
(1276, 'Subacute monocytic leukaemia', 'C93.2', 'icdcat2-14', 'gnuhealth.pathology', 'C932'),
(1277, 'Subacute myeloid leukaemia', 'C92.2', 'icdcat2-14', 'gnuhealth.pathology', 'C922'),
(1278, 'Subacute sclerosing panencephalitis', 'A81.1', 'icdcat1-9', 'gnuhealth.pathology', 'A811'),
(1279, 'Subcutaneous phaeomycotic abscess and cyst', 'B43.2', 'icdcat1-15', 'gnuhealth.pathology', 'B432'),
(1280, 'Subglottis', 'C32.2', 'icdcat2-3', 'gnuhealth.pathology', 'C322'),
(1281, 'Sublingual gland', 'C08.1', 'icdcat2-1', 'gnuhealth.pathology', 'C081'),
(1282, 'Submandibular gland', 'C08.0', 'icdcat2-1', 'gnuhealth.pathology', 'C080'),
(1283, 'Superficial mycosis, unspecified', 'B36.9', 'icdcat1-15', 'gnuhealth.pathology', 'B369'),
(1284, 'Superior wall of nasopharynx', 'C11.0', 'icdcat2-1', 'gnuhealth.pathology', 'C110'),
(1285, 'Supraglottis', 'C32.1', 'icdcat2-3', 'gnuhealth.pathology', 'C321'),
(1286, 'Sylvatic rabies', 'A82.0', 'icdcat1-9', 'gnuhealth.pathology', 'A820'),
(1287, 'Sylvatic yellow fever', 'A95.0', 'icdcat1-10', 'gnuhealth.pathology', 'A950'),
(1288, 'Symptomatic neurosyphilis', 'A52.1', 'icdcat1-5', 'gnuhealth.pathology', 'A521'),
(1289, 'Syngamiasis', 'B83.3', 'icdcat1-17', 'gnuhealth.pathology', 'B833'),
(1290, 'Syphilis, unspecified', 'A53.9', 'icdcat1-5', 'gnuhealth.pathology', 'A539'),
(1291, 'Systemic bartonellosis', 'A44.0', 'icdcat1-4', 'gnuhealth.pathology', 'A440'),
(1292, 'T-zone lymphoma', 'C84.2', 'icdcat2-14', 'gnuhealth.pathology', 'C842'),
(1293, 'Taenia saginata taeniasis', 'B68.1', 'icdcat1-17', 'gnuhealth.pathology', 'B681'),
(1294, 'Taenia solium taeniasis', 'B68.0', 'icdcat1-17', 'gnuhealth.pathology', 'B680'),
(1295, 'Taeniasis', 'B68', 'icdcat1-17', 'gnuhealth.pathology', 'B68'),
(1296, 'Taeniasis, unspecified', 'B68.9', 'icdcat1-17', 'gnuhealth.pathology', 'B689'),
(1297, 'Tail of pancreas', 'C25.2', 'icdcat2-2', 'gnuhealth.pathology', 'C252'),
(1298, 'Temporal lobe', 'C71.2', 'icdcat2-11', 'gnuhealth.pathology', 'C712'),
(1299, 'Testis, unspecified', 'C62.9', 'icdcat2-9', 'gnuhealth.pathology', 'C629'),
(1300, 'Tetanus neonatorum', 'A33', 'icdcat1-4', 'gnuhealth.pathology', 'A33'),
(1301, 'Thoracic part of oesophagus', 'C15.1', 'icdcat2-2', 'gnuhealth.pathology', 'C151'),
(1302, 'Thorax', 'C76.1', 'icdcat2-13', 'gnuhealth.pathology', 'C761'),
(1303, 'Tick-borne relapsing fever', 'A68.1', 'icdcat1-6', 'gnuhealth.pathology', 'A681'),
(1304, 'Tick-borne viral encephalitis', 'A84', 'icdcat1-9', 'gnuhealth.pathology', 'A84'),
(1305, 'Tick-borne viral encephalitis, unspecified', 'A84.9', 'icdcat1-9', 'gnuhealth.pathology', 'A849'),
(1306, 'Tinea barbae and tinea capitis', 'B35.0', 'icdcat1-15', 'gnuhealth.pathology', 'B350'),
(1307, 'Tinea corporis', 'B35.4', 'icdcat1-15', 'gnuhealth.pathology', 'B354'),
(1308, 'Tinea cruris', 'B35.6', 'icdcat1-15', 'gnuhealth.pathology', 'B356'),
(1309, 'Tinea imbricata', 'B35.5', 'icdcat1-15', 'gnuhealth.pathology', 'B355'),
(1310, 'Tinea manuum', 'B35.2', 'icdcat1-15', 'gnuhealth.pathology', 'B352'),
(1311, 'Tinea nigra', 'B36.1', 'icdcat1-15', 'gnuhealth.pathology', 'B361'),
(1312, 'Tinea pedis', 'B35.3', 'icdcat1-15', 'gnuhealth.pathology', 'B353'),
(1313, 'Tinea unguium', 'B35.1', 'icdcat1-15', 'gnuhealth.pathology', 'B351'),
(1314, 'Tongue, unspecified', 'C02.9', 'icdcat2-1', 'gnuhealth.pathology', 'C029'),
(1315, 'Tonsil, unspecified', 'C09.9', 'icdcat2-1', 'gnuhealth.pathology', 'C099'),
(1316, 'Tonsillar aspergillosis', 'B44.2', 'icdcat1-15', 'gnuhealth.pathology', 'B442'),
(1317, 'Tonsillar fossa', 'C09.0', 'icdcat2-1', 'gnuhealth.pathology', 'C090'),
(1318, 'Tonsillar pillar (anterior) (posterior)', 'C09.1', 'icdcat2-1', 'gnuhealth.pathology', 'C091'),
(1319, 'Toxic shock syndrome', 'A48.3', 'icdcat1-4', 'gnuhealth.pathology', 'A483'),
(1320, 'Toxoplasma hepatitis', 'B58.1', 'icdcat1-16', 'gnuhealth.pathology', 'B581'),
(1321, 'Toxoplasma meningoencephalitis', 'B58.2', 'icdcat1-16', 'gnuhealth.pathology', 'B582'),
(1322, 'Toxoplasma oculopathy', 'B58.0', 'icdcat1-16', 'gnuhealth.pathology', 'B580'),
(1323, 'Toxoplasmosis', 'B58', 'icdcat1-16', 'gnuhealth.pathology', 'B58'),
(1324, 'Toxoplasmosis with other organ involvement', 'B58.8', 'icdcat1-16', 'gnuhealth.pathology', 'B588'),
(1325, 'Toxoplasmosis, unspecified', 'B58.9', 'icdcat1-16', 'gnuhealth.pathology', 'B589'),
(1326, 'Trachea', 'D02.1', 'icdcat2-16', 'gnuhealth.pathology', 'D021'),
(1327, 'Trachoma', 'A71', 'icdcat1-7', 'gnuhealth.pathology', 'A71'),
(1328, 'Trachoma, unspecified', 'A71.9', 'icdcat1-7', 'gnuhealth.pathology', 'A719'),
(1329, 'Transverse colon', 'C18.4', 'icdcat2-2', 'gnuhealth.pathology', 'C184'),
(1330, 'Trench fever', 'A79.0', 'icdcat1-8', 'gnuhealth.pathology', 'A790'),
(1331, 'Trichinellosis', 'B75', 'icdcat1-17', 'gnuhealth.pathology', 'B75'),
(1332, 'Trichomoniasis', 'A59', 'icdcat1-5', 'gnuhealth.pathology', 'A59'),
(1333, 'Trichomoniasis of other sites', 'A59.8', 'icdcat1-5', 'gnuhealth.pathology', 'A598'),
(1334, 'Trichomoniasis, unspecified', 'A59.9', 'icdcat1-5', 'gnuhealth.pathology', 'A599'),
(1335, 'Trichostrongyliasis', 'B81.2', 'icdcat1-17', 'gnuhealth.pathology', 'B812'),
(1336, 'Trichuriasis', 'B79', 'icdcat1-17', 'gnuhealth.pathology', 'B79'),
(1337, 'Trigone of bladder', 'C67.0', 'icdcat2-10', 'gnuhealth.pathology', 'C670'),
(1338, 'True histiocytic lymphoma', 'C96.3', 'icdcat2-14', 'gnuhealth.pathology', 'C963'),
(1339, 'Tuberculoid leprosy', 'A30.1', 'icdcat1-4', 'gnuhealth.pathology', 'A301'),
(1340, 'Tuberculosis of adrenal glands', 'A18.7', 'icdcat1-2', 'gnuhealth.pathology', 'A187'),
(1341, 'Tuberculosis of bones and joints', 'A18.0', 'icdcat1-2', 'gnuhealth.pathology', 'A180'),
(1342, 'Tuberculosis of ear', 'A18.6', 'icdcat1-2', 'gnuhealth.pathology', 'A186'),
(1343, 'Tuberculosis of eye', 'A18.5', 'icdcat1-2', 'gnuhealth.pathology', 'A185'),
(1344, 'Tuberculosis of genito-urinary system', 'A18.1', 'icdcat1-2', 'gnuhealth.pathology', 'A181'),
(1345, 'Tuberculosis of intestines, peritoneum and mesenteric glands', 'A18.3', 'icdcat1-2', 'gnuhealth.pathology', 'A183'),
(1346, 'Tuberculosis of intrathoracic lymph nodes, confirmed bacteriologically and histologically', 'A15.4', 'icdcat1-2', 'gnuhealth.pathology', 'A154'),
(1347, 'Tuberculosis of intrathoracic lymph nodes, without mention of bacteriological or histological confirmation', 'A16.3', 'icdcat1-2', 'gnuhealth.pathology', 'A163'),
(1348, 'Tuberculosis of larynx, trachea and bronchus, confirmed bacteriologically and histologically', 'A15.5', 'icdcat1-2', 'gnuhealth.pathology', 'A155'),
(1349, 'Tuberculosis of larynx, trachea and bronchus, without mention of bacteriological or histological confirmation', 'A16.4', 'icdcat1-2', 'gnuhealth.pathology', 'A164'),
(1350, 'Tuberculosis of lung, bacteriological and histological examination not done', 'A16.1', 'icdcat1-2', 'gnuhealth.pathology', 'A161'),
(1351, 'Tuberculosis of lung, bacteriologically and histologically negative', 'A16.0', 'icdcat1-2', 'gnuhealth.pathology', 'A160'),
(1352, 'Tuberculosis of lung, confirmed by culture only', 'A15.1', 'icdcat1-2', 'gnuhealth.pathology', 'A151'),
(1353, 'Tuberculosis of lung, confirmed by sputum microscopy with or without culture', 'A15.0', 'icdcat1-2', 'gnuhealth.pathology', 'A150'),
(1354, 'Tuberculosis of lung, confirmed by unspecified means', 'A15.3', 'icdcat1-2', 'gnuhealth.pathology', 'A153'),
(1355, 'Tuberculosis of lung, confirmed histologically', 'A15.2', 'icdcat1-2', 'gnuhealth.pathology', 'A152'),
(1356, 'Tuberculosis of lung, without mention of bacteriological or histological confirmation', 'A16.2', 'icdcat1-2', 'gnuhealth.pathology', 'A162'),
(1357, 'Tuberculosis of nervous system', 'A17', 'icdcat1-2', 'gnuhealth.pathology', 'A17'),
(1358, 'Tuberculosis of nervous system, unspecified', 'A17.9', 'icdcat1-2', 'gnuhealth.pathology', 'A179'),
(1359, 'Tuberculosis of other organs', 'A18', 'icdcat1-2', 'gnuhealth.pathology', 'A18'),
(1360, 'Tuberculosis of other specified organs', 'A18.8', 'icdcat1-2', 'gnuhealth.pathology', 'A188'),
(1361, 'Tuberculosis of skin and subcutaneous tissue', 'A18.4', 'icdcat1-2', 'gnuhealth.pathology', 'A184'),
(1362, 'Tuberculous meningitis', 'A17.0', 'icdcat1-2', 'gnuhealth.pathology', 'A170'),
(1363, 'Tuberculous peripheral lymphadenopathy', 'A18.2', 'icdcat1-2', 'gnuhealth.pathology', 'A182'),
(1364, 'Tuberculous pleurisy, confirmed bacteriologically and histologically', 'A15.6', 'icdcat1-2', 'gnuhealth.pathology', 'A156'),
(1365, 'Tuberculous pleurisy, without mention of bacteriological or histological confirmation', 'A16.5', 'icdcat1-2', 'gnuhealth.pathology', 'A165'),
(1366, 'Tularaemia', 'A21', 'icdcat1-3', 'gnuhealth.pathology', 'A21'),
(1367, 'Tularaemia, unspecified', 'A21.9', 'icdcat1-3', 'gnuhealth.pathology', 'A219'),
(1368, 'Tungiasis [sand flea infestation]', 'B88.1', 'icdcat1-18', 'gnuhealth.pathology', 'B881'),
(1369, 'Typhoid and paratyphoid fevers', 'A01', 'icdcat1-1', 'gnuhealth.pathology', 'A01'),
(1370, 'Typhoid fever', 'A01.0', 'icdcat1-1', 'gnuhealth.pathology', 'A010'),
(1371, 'Typhus fever', 'A75', 'icdcat1-8', 'gnuhealth.pathology', 'A75'),
(1372, 'Typhus fever due to Rickettsia tsutsugamushi', 'A75.3', 'icdcat1-8', 'gnuhealth.pathology', 'A753'),
(1373, 'Typhus fever due to Rickettsia typhi', 'A75.2', 'icdcat1-8', 'gnuhealth.pathology', 'A752'),
(1374, 'Typhus fever, unspecified', 'A75.9', 'icdcat1-8', 'gnuhealth.pathology', 'A759'),
(1375, 'Ulceroglandular tularaemia', 'A21.0', 'icdcat1-3', 'gnuhealth.pathology', 'A210'),
(1376, 'Undescended testis', 'C62.0', 'icdcat2-9', 'gnuhealth.pathology', 'C620'),
(1377, 'Undifferentiated (diffuse)', 'C83.6', 'icdcat2-14', 'gnuhealth.pathology', 'C836'),
(1378, 'Unspecified arthropod-borne viral fever', 'A94', 'icdcat1-10', 'gnuhealth.pathology', 'A94'),
(1379, 'Unspecified human immunodeficiency virus [HIV] disease', 'B24', 'icdcat1-13', 'gnuhealth.pathology', 'B24'),
(1380, 'Unspecified intestinal parasitism', 'B82', 'icdcat1-17', 'gnuhealth.pathology', 'B82'),
(1381, 'Unspecified malaria', 'B54', 'icdcat1-16', 'gnuhealth.pathology', 'B54'),
(1382, 'Unspecified mycosis', 'B49', 'icdcat1-15', 'gnuhealth.pathology', 'B49'),
(1383, 'Unspecified parasitic disease', 'B89', 'icdcat1-18', 'gnuhealth.pathology', 'B89'),
(1384, 'Unspecified protozoal disease', 'B64', 'icdcat1-16', 'gnuhealth.pathology', 'B64'),
(1385, 'Unspecified sexually transmitted disease', 'A64', 'icdcat1-5', 'gnuhealth.pathology', 'A64'),
(1386, 'Unspecified staphylococcus as the cause of diseases classified to other chapters', 'B95.8', 'icdcat1-20', 'gnuhealth.pathology', 'B958'),
(1387, 'Unspecified streptococcus as the cause of diseases classified to other chapters', 'B95.5', 'icdcat1-20', 'gnuhealth.pathology', 'B955'),
(1388, 'Unspecified viral encephalitis', 'A86', 'icdcat1-9', 'gnuhealth.pathology', 'A86'),
(1389, 'Unspecified viral haemorrhagic fever', 'A99', 'icdcat1-10', 'gnuhealth.pathology', 'A99'),
(1390, 'Unspecified viral hepatitis', 'B19', 'icdcat1-12', 'gnuhealth.pathology', 'B19'),
(1391, 'Unspecified viral hepatitis with coma', 'B19.0', 'icdcat1-12', 'gnuhealth.pathology', 'B190'),
(1392, 'Unspecified viral hepatitis without coma', 'B19.9', 'icdcat1-12', 'gnuhealth.pathology', 'B199'),
(1393, 'Unspecified viral infection characterised by skin and mucous membrane lesions', 'B09', 'icdcat1-11', 'gnuhealth.pathology', 'B09'),
(1394, 'Unspecified viral infection of central nervous system', 'A89', 'icdcat1-9', 'gnuhealth.pathology', 'A89'),
(1395, 'Upper gum', 'C03.0', 'icdcat2-1', 'gnuhealth.pathology', 'C030'),
(1396, 'Upper limb', 'C76.4', 'icdcat2-13', 'gnuhealth.pathology', 'C764'),
(1397, 'Upper lip, inner aspect', 'C00.3', 'icdcat2-1', 'gnuhealth.pathology', 'C003'),
(1398, 'Upper lobe, bronchus or lung', 'C34.1', 'icdcat2-3', 'gnuhealth.pathology', 'C341'),
(1399, 'Upper respiratory tract, part unspecified', 'C39.0', 'icdcat2-3', 'gnuhealth.pathology', 'C390'),
(1400, 'Upper third of oesophagus', 'C15.3', 'icdcat2-2', 'gnuhealth.pathology', 'C153'),
(1401, 'Upper-inner quadrant of breast', 'C50.2', 'icdcat2-7', 'gnuhealth.pathology', 'C502'),
(1402, 'Upper-outer quadrant of breast', 'C50.4', 'icdcat2-7', 'gnuhealth.pathology', 'C504'),
(1403, 'Urachus', 'C67.7', 'icdcat2-10', 'gnuhealth.pathology', 'C677'),
(1404, 'Urban rabies', 'A82.1', 'icdcat1-9', 'gnuhealth.pathology', 'A821'),
(1405, 'Urban yellow fever', 'A95.1', 'icdcat1-10', 'gnuhealth.pathology', 'A951'),
(1406, 'Ureteric orifice', 'C67.6', 'icdcat2-10', 'gnuhealth.pathology', 'C676'),
(1407, 'Urethra', 'C68.0', 'icdcat2-10', 'gnuhealth.pathology', 'C680'),
(1408, 'Urinary organ, unspecified', 'C68.9', 'icdcat2-10', 'gnuhealth.pathology', 'C689'),
(1409, 'Urogenital trichomoniasis', 'A59.0', 'icdcat1-5', 'gnuhealth.pathology', 'A590'),
(1410, 'Uterine adnexa, unspecified', 'C57.4', 'icdcat2-8', 'gnuhealth.pathology', 'C574'),
(1411, 'Uvula', 'C05.2', 'icdcat2-1', 'gnuhealth.pathology', 'C052'),
(1412, 'Vallecula', 'C10.0', 'icdcat2-1', 'gnuhealth.pathology', 'C100'),
(1413, 'Varicella encephalitis', 'B01.1', 'icdcat1-11', 'gnuhealth.pathology', 'B011'),
(1414, 'Varicella meningitis', 'B01.0', 'icdcat1-11', 'gnuhealth.pathology', 'B010'),
(1415, 'Varicella pneumonia', 'B01.2', 'icdcat1-11', 'gnuhealth.pathology', 'B012'),
(1416, 'Varicella with other complications', 'B01.8', 'icdcat1-11', 'gnuhealth.pathology', 'B018'),
(1417, 'Varicella without complications', 'B01.9', 'icdcat1-11', 'gnuhealth.pathology', 'B019'),
(1418, 'Varicella [chickenpox]', 'B01', 'icdcat1-11', 'gnuhealth.pathology', 'B01'),
(1419, 'Venezuelan equine fever', 'A92.2', 'icdcat1-10', 'gnuhealth.pathology', 'A922'),
(1420, 'Ventral surface of tongue', 'C02.2', 'icdcat2-1', 'gnuhealth.pathology', 'C022'),
(1421, 'Vertebral column', 'C41.2', 'icdcat2-4', 'gnuhealth.pathology', 'C412'),
(1422, 'Vestibule of mouth', 'C06.1', 'icdcat2-1', 'gnuhealth.pathology', 'C061'),
(1423, 'Viral agents as the cause of diseases classified to other chapters', 'B97', 'icdcat1-20', 'gnuhealth.pathology', 'B97'),
(1424, 'Viral and other specified intestinal infections', 'A08', 'icdcat1-1', 'gnuhealth.pathology', 'A08'),
(1425, 'Viral carditis', 'B33.2', 'icdcat1-14', 'gnuhealth.pathology', 'B332'),
(1426, 'Viral conjunctivitis', 'B30', 'icdcat1-14', 'gnuhealth.pathology', 'B30'),
(1427, 'Viral conjunctivitis, unspecified', 'B30.9', 'icdcat1-14', 'gnuhealth.pathology', 'B309'),
(1428, 'Viral infection of unspecified site', 'B34', 'icdcat1-14', 'gnuhealth.pathology', 'B34'),
(1429, 'Viral infection, unspecified', 'B34.9', 'icdcat1-14', 'gnuhealth.pathology', 'B349'),
(1430, 'Viral intestinal infection, unspecified', 'A08.4', 'icdcat1-1', 'gnuhealth.pathology', 'A084'),
(1431, 'Viral meningitis', 'A87', 'icdcat1-9', 'gnuhealth.pathology', 'A87'),
(1432, 'Viral meningitis, unspecified', 'A87.9', 'icdcat1-9', 'gnuhealth.pathology', 'A879'),
(1433, 'Viral pharyngoconjunctivitis', 'B30.2', 'icdcat1-14', 'gnuhealth.pathology', 'B302'),
(1434, 'Viral warts', 'B07', 'icdcat1-11', 'gnuhealth.pathology', 'B07'),
(1435, 'Visceral larva migrans', 'B83.0', 'icdcat1-17', 'gnuhealth.pathology', 'B830'),
(1436, 'Visceral leishmaniasis', 'B55.0', 'icdcat1-16', 'gnuhealth.pathology', 'B550'),
(1437, 'Vulva, unspecified', 'C51.9', 'icdcat2-8', 'gnuhealth.pathology', 'C519'),
(1438, 'Waldenström\'s macroglobulinaemia', 'C88.0', 'icdcat2-14', 'gnuhealth.pathology', 'C880'),
(1439, 'Waldeyer\'s ring', 'C14.2', 'icdcat2-1', 'gnuhealth.pathology', 'C142'),
(1440, 'Waterhouse-Friderichsen syndrome', 'A39.1', 'icdcat1-4', 'gnuhealth.pathology', 'A391'),
(1441, 'West Nile fever', 'A92.3', 'icdcat1-10', 'gnuhealth.pathology', 'A923'),
(1442, 'Western equine encephalitis', 'A83.1', 'icdcat1-9', 'gnuhealth.pathology', 'A831'),
(1443, 'White piedra', 'B36.2', 'icdcat1-15', 'gnuhealth.pathology', 'B362'),
(1444, 'Whooping cough', 'A37', 'icdcat1-4', 'gnuhealth.pathology', 'A37'),
(1445, 'Whooping cough due to Bordetella parapertussis', 'A37.1', 'icdcat1-4', 'gnuhealth.pathology', 'A371'),
(1446, 'Whooping cough due to Bordetella pertussis', 'A37.0', 'icdcat1-4', 'gnuhealth.pathology', 'A370'),
(1447, 'Whooping cough due to other Bordetella species', 'A37.8', 'icdcat1-4', 'gnuhealth.pathology', 'A378'),
(1448, 'Whooping cough, unspecified', 'A37.9', 'icdcat1-4', 'gnuhealth.pathology', 'A379'),
(1449, 'Wound myiasis', 'B87.1', 'icdcat1-18', 'gnuhealth.pathology', 'B871'),
(1450, 'Yaws', 'A66', 'icdcat1-6', 'gnuhealth.pathology', 'A66'),
(1451, 'Yaws, unspecified', 'A66.9', 'icdcat1-6', 'gnuhealth.pathology', 'A669'),
(1452, 'Yellow fever', 'A95', 'icdcat1-10', 'gnuhealth.pathology', 'A95'),
(1453, 'Yellow fever, unspecified', 'A95.9', 'icdcat1-10', 'gnuhealth.pathology', 'A959'),
(1454, 'Zoonotic bacterial disease, unspecified', 'A28.9', 'icdcat1-3', 'gnuhealth.pathology', 'A289'),
(1455, 'Zoster encephalitis', 'B02.0', 'icdcat1-11', 'gnuhealth.pathology', 'B020'),
(1456, 'Zoster meningitis', 'B02.1', 'icdcat1-11', 'gnuhealth.pathology', 'B021'),
(1457, 'Zoster ocular disease', 'B02.3', 'icdcat1-11', 'gnuhealth.pathology', 'B023'),
(1458, 'Zoster with other complications', 'B02.8', 'icdcat1-11', 'gnuhealth.pathology', 'B028'),
(1459, 'Zoster with other nervous system involvement', 'B02.2', 'icdcat1-11', 'gnuhealth.pathology', 'B022'),
(1460, 'Zoster without complication', 'B02.9', 'icdcat1-11', 'gnuhealth.pathology', 'B029'),
(1461, 'Zoster [herpes zoster]', 'B02', 'icdcat1-11', 'gnuhealth.pathology', 'B02'),
(1462, 'Zygomycosis', 'B46', 'icdcat1-15', 'gnuhealth.pathology', 'B46'),
(1463, 'Zygomycosis, unspecified', 'B46.9', 'icdcat1-15', 'gnuhealth.pathology', 'B469');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Doctor James', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'Doctor Alex', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Dr Rodriguaz', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dose_form`
--

CREATE TABLE `dose_form` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dose_form`
--

INSERT INTO `dose_form` (`id`, `name`, `status`) VALUES
(1, 'capsule', 1),
(2, 'capsule, extended release', 1),
(3, 'tablet', 1),
(4, 'tablet, chewable', 1),
(5, 'tablet, chewable, extended release', 1),
(6, 'tablet, coated particles', 1),
(7, 'tablet, disintegrating', 1),
(8, 'tablet, dispersible', 1),
(9, 'tablet, effervescent', 1),
(10, 'tablet, extended release', 1),
(11, 'tablet, soluble', 1),
(12, 'drops', 1),
(13, 'injection', 1),
(14, 'gel', 1),
(15, 'ointment', 1),
(16, 'cream', 1),
(17, 'lotion', 1),
(18, 'paste', 1),
(19, 'powder', 1),
(20, 'syrup', 1),
(21, 'aerosol', 1),
(22, 'aerosol powder', 1),
(23, 'aerosol with adapter', 1),
(24, 'bar', 1),
(25, 'concentrate', 1),
(26, 'cream with applicator', 1),
(27, 'crystal', 1),
(28, 'delayed release capsule', 1),
(29, 'device', 1),
(30, 'disintegrating strip', 1),
(31, 'dispersion', 1),
(32, 'dressing', 1),
(33, 'elixir', 1),
(34, 'emulsion', 1),
(35, 'enema', 1),
(36, 'enteric coated tablet', 1),
(37, 'film', 1),
(38, 'film, extended release', 1),
(39, 'foam', 1),
(40, 'foam with applicator', 1),
(41, 'gas', 1),
(42, 'gel forming solution', 1),
(43, 'gel with applicator', 1),
(44, 'granule', 1),
(45, 'granule for reconstitution', 1),
(46, 'granule, effervescent', 1),
(47, 'granule, enteric coated', 1),
(48, 'granule, extended release', 1),
(49, 'gum', 1),
(50, 'implant', 1),
(51, 'insert', 1),
(52, 'kit', 1),
(53, 'liquid', 1),
(54, 'liquid, extended release', 1),
(55, 'lozenge', 1),
(56, 'oil', 1),
(57, 'ointment w/applicator', 1),
(58, 'pad', 1),
(59, 'powder for injection', 1),
(60, 'powder for injection, extended release', 1),
(61, 'powder for reconstitution', 1),
(62, 'powder for reconstitution, delayed release', 1),
(63, 'powder for reconstitution, extended release', 1),
(64, 'ring', 1),
(65, 'shampoo', 1),
(66, 'soap', 1),
(67, 'solution', 1),
(68, 'sponge', 1),
(69, 'spray', 1),
(70, 'stick', 1),
(71, 'suppository', 1),
(72, 'suspension', 1),
(73, 'suspension, extended release', 1),
(74, 'swab', 1),
(75, 'tampon', 1),
(76, 'tape', 1),
(77, 'test', 1),
(78, 'tincture', 1),
(79, 'wafer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `encounter_class`
--

CREATE TABLE `encounter_class` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encounter_class`
--

INSERT INTO `encounter_class` (`id`, `name`, `status`) VALUES
(1, 'Emergency', 1),
(2, 'Inpatient', 1),
(3, 'Outpatient', 1),
(4, 'Preadmit', 1),
(5, 'Recurring patient', 1),
(6, 'Obstetrics', 1);

-- --------------------------------------------------------

--
-- Table structure for table `encounter_type`
--

CREATE TABLE `encounter_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `encounter_type`
--

INSERT INTO `encounter_type` (`id`, `name`, `status`) VALUES
(1, 'Consultation', 1),
(2, 'Surgical procedure', 1),
(3, 'Followup visit', 1),
(4, 'Rehabilitation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `family_history`
--

CREATE TABLE `family_history` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_history`
--

INSERT INTO `family_history` (`id`, `patient_id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 16, 'Cancer history in family', '2016-10-10 09:53:09', '0000-00-00 00:00:00', 1),
(2, 16, 'Blood pressure', '2016-10-10 09:53:18', '0000-00-00 00:00:00', 1),
(3, 9, 'asd', '2016-10-10 18:03:58', '0000-00-00 00:00:00', 1),
(4, 3, 'Cancer history', '2016-10-13 11:45:55', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `field_categories`
--

CREATE TABLE `field_categories` (
  `id` int(30) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `frequency`
--

CREATE TABLE `frequency` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frequency`
--

INSERT INTO `frequency` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'once a week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'once a month', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'every other day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, '2 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 'twice', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(6, '2 times a week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(7, '2 times a month', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(8, '3 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(9, '3 times', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(10, '3 times a week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(11, '4 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(12, '4 times a week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(13, '5 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(14, 'every 4 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(15, '5 times a week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(16, 'As needed', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(17, '1 to 2 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(18, '1 to 3 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(19, '1 to 4 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(20, '2 to 4 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(21, '3 to 4 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(22, '4 to 6 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(23, '6 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(24, '7 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(25, '8 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(26, '9 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(27, '10 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(28, '12 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(29, '16 times a day', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(30, '6 times a week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(31, 'every 18 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(32, 'every 36 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(33, 'every 48 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(34, 'every 72 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(35, 'every 7 days', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(36, 'every 15 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(37, 'every hour', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(38, 'every 16 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(39, 'every 2 weeks', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(40, 'every 30 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(41, 'every 40 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(42, 'yearly', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(43, 'every 3 weeks', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(44, 'every 5 days', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(45, 'every 60 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(46, 'every 6 weeks', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(47, 'every 10 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(48, 'every 12 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(49, 'every 2 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(50, 'every 24 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(51, 'every 3 days', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(52, 'every 3 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(53, 'every 4 days', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(54, 'every 5 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(55, 'every 6 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(56, 'every 8 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(57, 'every 96 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(58, 'every 1 to 2 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(59, 'every 3 months', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(60, 'every 30 to 60 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(61, 'every 6 to 15 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(62, 'every 10 to 15 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(63, 'every 4 to 6 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(64, 'every 6 to 8 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(65, 'every 5 to 8 months', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(66, 'every 10 to 30 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(67, 'every 2 to 3 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(68, 'every 2 to 3 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(69, 'every 2 to 4 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(70, 'every 25 to 60 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(71, 'every 25 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(72, 'every 2 to 5 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(73, 'every 2 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(74, 'every 3 to 4 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(75, 'every 3 to 5 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(76, 'every 3 to 6 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(77, 'every 4 weeks', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(78, 'every 5 to 15 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(79, 'every 6 months', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(80, 'every 8 to 12 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(81, 'every other week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(82, 'every 20 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(83, 'every 5 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(84, 'every 5 to 10 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(85, 'every 3 to 4 weeks', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(86, '3 to 4 times a week', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(87, 'every 4 hours while awake', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(88, 'every minute', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(89, 'every 4 months', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(90, 'every 90 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(91, 'every 10 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(92, 'Monday through Friday', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(93, 'Monday Wednesday and Friday', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(94, 'in the morning and at bedtime', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(95, 'now', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(96, 'every 4 to 8 hours', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(97, 'every 3 to 6 months', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(98, 'every 3 to 4 days', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(99, 'every 3 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(100, 'every 8 weeks', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(101, 'every 2 months', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(102, 'every 4 minutes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hmo`
--

CREATE TABLE `hmo` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hmo`
--

INSERT INTO `hmo` (`id`, `name`, `status`) VALUES
(1, 'Arewa Health Maintenance Services', 1),
(2, 'Cignet Health Limited', 1),
(3, 'Gti Healthcare Limited', 1),
(4, 'Health Partners Limited', 1),
(5, 'Healthcare International Limit', 1),
(6, 'Healthcare Security Limited', 1),
(7, 'Hygeia HMO Limited', 1),
(8, 'Integrated Healthcare Limited', 1),
(9, 'International Health Management Services Limited', 1),
(10, 'Kaduna GMD Healthcare Limited', 1),
(11, 'Maayoit Healthcare Limited', 1),
(12, 'Managed Healthcare Services Limited', 1),
(13, 'Markfema Nigeria Limited', 1),
(14, 'Medi Plan Health Care Limited', 1),
(15, 'Multi Shield Nigeria Limited', 1),
(16, 'Oceanic Health Management Limited', 1),
(17, 'Precious Healthcare Limited', 1),
(18, 'Premier Medicaid Limited', 1),
(19, 'Premium Private Health Trust Limited', 1),
(20, 'Prepaid Medicare Services Limited', 1),
(21, 'Princeton Health Group', 1),
(22, 'Ronsberger Nigeria Limited', 1),
(23, 'Royal Health Maintenance Services', 1),
(24, 'Songhai Health Trust Limited', 1),
(25, 'Sterling Health Managed Care Services Limited', 1),
(26, 'Strategic Health Planners Co Limited', 1),
(27, 'Total Health Trust Limited', 1),
(28, 'Unic Health Managed Care Services Limited', 1),
(29, 'United Comprehensive Health Managers Limited', 1),
(30, 'United Healthcare International Limited', 1),
(31, 'Wetlands Health Services Limited', 1),
(32, 'Wise Health Services Limited', 1),
(33, 'Zenith Medicare Limited', 1),
(34, 'Zuma Health Trust', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(80) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `country` int(11) NOT NULL,
  `number_of_departments` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `date_registration` date NOT NULL,
  `email` int(11) NOT NULL,
  `number_beds` int(11) NOT NULL,
  `website` varchar(70) NOT NULL,
  `name_proprietor` varchar(50) NOT NULL,
  `accredation_lab` varchar(50) NOT NULL,
  `accredation_pharmacy` varchar(50) NOT NULL,
  `accredation_others` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `image`, `image_name`, `address`, `type`, `city`, `registration_number`, `state`, `category`, `country`, `number_of_departments`, `phone`, `date_registration`, `email`, `number_beds`, `website`, `name_proprietor`, `accredation_lab`, `accredation_pharmacy`, `accredation_others`, `created_at`, `updated_at`, `status`) VALUES
(1, 'General Hospital Abuja', '19866843771478613294.jpg', 'B8St_vbJ8zCY2t_pdmvXp_u0DCtJdsJWL1-AXyJSaAw.jpg', 'Taiwo Road', 'Secondary Healthcare Centre', 'Ilorin', '000123', 4, 'Secondary Healthcare', 6, 10, '000000000000', '1999-06-15', 0, 0, 'www.general-ilorin.com', 'Dr Lawal', '1000012', 'General', 'None', '2016-10-21 07:00:57', '2016-11-08 14:55:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_plan`
--

CREATE TABLE `hospital_plan` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_plan`
--

INSERT INTO `hospital_plan` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'self', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'NHIS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Retainership', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'FHSS', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `intake`
--

CREATE TABLE `intake` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intake`
--

INSERT INTO `intake` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, '2 tablets daily', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_categories`
--

CREATE TABLE `inventory_categories` (
  `id` int(50) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_desc` text NOT NULL,
  `cat_group` enum('Drugs','Supplements','Documents','Others') NOT NULL,
  `cost` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_categories`
--

INSERT INTO `inventory_categories` (`id`, `cat_name`, `cat_desc`, `cat_group`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Antibiotics', '', 'Others', 0, 1, '2016-10-17 09:15:43', '2016-10-17 10:15:43'),
(2, 'Vitamins', '', 'Supplements', 0, 1, '2016-10-03 13:52:37', '0000-00-00 00:00:00'),
(3, 'Syrups', '', 'Drugs', 0, 1, '2016-10-03 13:52:51', '0000-00-00 00:00:00'),
(4, 'Strengthening medicines', 'none', 'Supplements', 0, 1, '2016-10-10 15:23:28', '0000-00-00 00:00:00'),
(5, 'old reports', '', 'Documents', 30, 1, '2016-10-10 15:55:58', '0000-00-00 00:00:00'),
(6, 'Lab Materials', 'NA', 'Others', 0, 1, '2016-10-20 08:00:45', '0000-00-00 00:00:00'),
(7, 'Supplement', 'None', 'Supplements', 0, 1, '2016-10-25 11:19:48', '0000-00-00 00:00:00'),
(8, 'Consumables', 'Cleaning Materials', 'Others', 0, 1, '2016-10-25 12:51:27', '0000-00-00 00:00:00'),
(9, 'OXYGEN', 'BOC', 'Others', 0, 1, '2016-10-25 12:52:11', '0000-00-00 00:00:00'),
(10, 'OXYGEN', 'BOC', 'Others', 0, 1, '2016-10-25 12:52:18', '0000-00-00 00:00:00'),
(11, 'OXYGEN', 'BOC', 'Others', 0, 1, '2016-10-25 12:52:20', '0000-00-00 00:00:00'),
(12, 'Oxygen', 'BOC', 'Others', 0, 1, '2016-10-25 12:56:11', '0000-00-00 00:00:00'),
(13, 'Consumables', 'Cleaning Materials', 'Others', 0, 1, '2016-10-25 12:56:58', '0000-00-00 00:00:00'),
(14, 'Consumables', 'Toiletries', 'Others', 0, 1, '2016-10-25 12:57:51', '0000-00-00 00:00:00'),
(15, 'Capsule', 'NA', 'Drugs', 0, 1, '2016-10-25 12:59:38', '0000-00-00 00:00:00'),
(16, 'Supplements', 'NA', 'Supplements', 0, 1, '2016-10-25 12:59:54', '0000-00-00 00:00:00'),
(17, 'testing', 'none', 'Supplements', 0, 1, '2016-11-15 14:37:06', '0000-00-00 00:00:00'),
(18, 'testing', 'testing', 'Supplements', 0, 1, '2016-11-15 14:41:43', '0000-00-00 00:00:00'),
(19, 'Hospital formalities', 'N/A', 'Documents', 0, 1, '2016-11-17 08:57:54', '0000-00-00 00:00:00'),
(20, 'All hospital formalities', 'N/A', 'Documents', 0, 1, '2016-11-17 09:10:36', '0000-00-00 00:00:00'),
(21, 'testing', 'None', 'Drugs', 0, 0, '2016-11-17 08:51:37', '0000-00-00 00:00:00'),
(22, 'testing', 'Checking !', 'Drugs', 0, 0, '2016-11-17 08:52:53', '0000-00-00 00:00:00'),
(23, 'Testing', 'None', 'Supplements', 0, 1, '2016-11-17 09:55:25', '0000-00-00 00:00:00'),
(24, 'Testing1', 'testing1', 'Drugs', 0, 0, '2016-11-17 08:58:09', '2016-11-17 09:58:01'),
(25, 'Testing1', 'Testing1', 'Supplements', 0, 1, '2016-11-17 08:59:00', '2016-11-17 09:59:00'),
(26, 'Testing', 'Testing', 'Supplements', 0, 1, '2016-11-17 09:59:14', '0000-00-00 00:00:00'),
(27, 'Testing', 'Testing', 'Supplements', 0, 0, '2016-11-17 10:52:05', '0000-00-00 00:00:00'),
(28, 'Testing1122', 'Testing11122', 'Documents', 0, 0, '2016-11-17 10:51:36', '2016-11-17 11:51:29'),
(29, 'testing', 'testing', 'Supplements', 0, 0, '2016-11-17 10:36:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_consumption`
--

CREATE TABLE `inventory_consumption` (
  `id` int(11) NOT NULL,
  `service_type` varchar(45) DEFAULT NULL,
  `service_type_id` int(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_products`
--

CREATE TABLE `inventory_products` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `group` enum('Drugs','Supplements','Documents','Others') NOT NULL,
  `cat_id` int(50) DEFAULT NULL,
  `department_id` int(20) NOT NULL,
  `description` text,
  `trade_name` varchar(50) DEFAULT NULL,
  `route` varchar(50) DEFAULT NULL,
  `strength` varchar(50) DEFAULT NULL,
  `dose_from` varchar(50) DEFAULT NULL,
  `reorder_level` int(100) DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_products`
--

INSERT INTO `inventory_products` (`id`, `name`, `group`, `cat_id`, `department_id`, `description`, `trade_name`, `route`, `strength`, `dose_from`, `reorder_level`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(000001, 'Amoxyclave', 'Drugs', 3, 0, NULL, 'Trader', 'route', '100', '2', 400, 0, 1, '0000-00-00 00:00:00', '2016-11-17 11:17:46'),
(000002, 'Vitamin E tablets', 'Supplements', 2, 0, NULL, 'Trade', 'route', '150', '3', 500000, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000003, 'ANtibiotic', 'Drugs', 3, 0, NULL, 'trade', 'route', '100', '3', 500000, 0, 1, '0000-00-00 00:00:00', '2016-11-17 09:04:04'),
(000004, 'Panadol', 'Drugs', 15, 0, 'Updating Panadol', 'new', 'oral', '2', '2', 500, 0, 1, '0000-00-00 00:00:00', '2016-11-14 09:38:31'),
(000005, 'Patient Medical Report', 'Documents', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000006, 'Admission form', 'Documents', 1, 0, NULL, 'none', '', '23', '', 50, 100, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000007, 'Report format', 'Others', 5, 0, NULL, '', '', '', '', 100, 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000008, 'Bottles', 'Others', 0, 0, NULL, '', '', '', '', 500, 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000009, 'PCM', 'Drugs', 4, 0, NULL, 'TUYIL', '', '50', '', 1000, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000010, 'Paclitaxel (Taxol)- Multum', 'Drugs', 2, 0, NULL, 'None', '', '20', '', 5000, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000011, 'Paracetamol', 'Drugs', 0, 0, NULL, 'Emzor', '', '500', '', 10, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000012, 'Ibuprofen', 'Drugs', 15, 0, NULL, 'Reprofen', '', '400', '', 20, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000013, 'morning fresh', 'Others', 3, 0, NULL, '', '', '', '', 10, 13450, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000014, 'Augmenton', 'Drugs', 15, 0, NULL, 'C company', '', '1500', '', 1500, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000015, 'Zolid', 'Drugs', 3, 0, NULL, '', '', '1', '', 10, 105, 1, '0000-00-00 00:00:00', '2016-11-17 09:35:20'),
(000016, 'Billing form', 'Documents', 5, 0, NULL, 'none', '', '', '', 1000, 3000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(000017, '1', '', 0, 0, NULL, '', '', '1', '', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `investigation_type`
--

CREATE TABLE `investigation_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investigation_type`
--

INSERT INTO `investigation_type` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'chest PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `patient_id` int(100) NOT NULL,
  `bill_id` int(100) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `due` float NOT NULL,
  `invoice_status` enum('draft','paid','pending','deposit') NOT NULL,
  `type` enum('other','product','service') NOT NULL DEFAULT 'other',
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `billing_code_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `patient_id`, `bill_id`, `description`, `amount`, `due`, `invoice_status`, `type`, `product_id`, `quantity`, `billing_code_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 4, 5, 'This invoice is generated for Lab Orders', 50, -500, 'paid', 'other', 0, 0, 0, '2016-10-07 16:52:29', '2016-11-17 02:00:20', 0),
(2, 4, 5, 'This invoice is generated for patient prescription', 50, -50, 'paid', 'other', 0, 0, 0, '2016-10-07 17:03:16', '2016-11-17 02:00:20', 0),
(3, 8, 7, 'This invoice is generated for Lab Orders', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-08 11:15:07', '2016-11-17 02:00:20', 0),
(4, 8, 7, 'This invoice is generated for patient prescription', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-08 11:23:10', '2016-11-17 02:00:20', 0),
(5, 8, 7, 'This invoice is generated for Lab Orders', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-08 13:04:21', '2016-11-17 02:00:20', 1),
(6, 8, 7, 'This invoice is generated for Lab Orders', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-08 13:07:52', '2016-11-17 02:00:20', 1),
(7, 8, 7, 'This invoice is generated for Lab Orders', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-08 13:08:07', '2016-11-17 02:00:20', 1),
(8, 4, 8, 'This invoice is generated for Lab Orders', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-08 17:26:21', '2016-11-17 02:00:20', 0),
(9, 16, 10, 'This invoice is generated for Lab Orders', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-10 09:33:54', '2016-11-17 02:00:20', 1),
(10, 4, 11, 'This invoice is generated for Lab Orders', 50, -30, 'paid', 'other', 0, 0, 0, '2016-10-10 15:00:13', '2016-11-17 02:00:20', 1),
(11, 3, 17, 'This invoice is generated for Lab Orders', 50, 0, 'pending', 'other', 0, 0, 0, '2016-10-13 11:46:42', '2016-11-17 02:00:20', 1),
(12, 3, 17, 'This invoice is generated for patient prescription', 50, 0, 'pending', 'other', 0, 0, 0, '2016-10-13 11:49:30', '2016-11-17 02:00:20', 1),
(13, 10, 22, 'This invoice is generated for Lab Orders', 50, 0, 'pending', 'other', 0, 0, 0, '2016-10-14 13:35:17', '2016-11-17 02:00:20', 1),
(14, 10, 22, 'This invoice is generated for Lab Orders', 50, 0, 'pending', 'other', 0, 0, 0, '2016-10-14 13:37:27', '2016-11-17 02:00:20', 1),
(15, 34, 23, 'This invoice is generated for Lab Orders', 50, 0, 'pending', 'other', 0, 0, 0, '2016-10-14 15:32:00', '2016-11-17 02:00:20', 1),
(16, 34, 23, 'This invoice is generated for Lab Orders', 50, 0, 'pending', 'other', 0, 0, 0, '2016-10-14 15:32:51', '2016-11-17 02:00:20', 1),
(17, 34, 23, 'This invoice is generated for Lab Orders', 50, 0, 'pending', 'other', 0, 0, 0, '2016-10-14 16:02:16', '2016-11-17 02:00:20', 1),
(18, 2, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 3, 0, 0, '2016-10-17 14:54:02', '2016-11-17 02:00:20', 0),
(19, 2, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 3, 0, 0, '2016-10-17 14:54:17', '2016-11-17 02:00:20', 0),
(20, 2, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 2, 0, 0, '2016-10-17 14:57:59', '2016-11-17 02:00:20', 0),
(21, 2, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 2, 0, 0, '2016-10-17 14:58:06', '2016-11-17 02:00:20', 0),
(22, 4, 4, 'This invoice is generated for Lab Orders', 50, -23, 'paid', 'other', 0, 0, 0, '2016-10-20 07:18:26', '2016-11-17 02:00:20', 1),
(23, 2, 5, 'This invoice is generated for Lab Orders', 50, -50, 'paid', 'other', 0, 0, 0, '2016-10-20 07:21:31', '2016-11-17 02:00:20', 1),
(24, 2, 5, 'This invoice is generated for Lab Orders', 50, -50, 'paid', 'other', 0, 0, 0, '2016-10-20 07:22:13', '2016-11-17 02:00:20', 1),
(25, 2, 5, 'This invoice is generated for patient prescription', 50, -50, 'paid', 'other', 0, 0, 0, '2016-10-20 07:23:04', '2016-11-17 02:00:20', 1),
(26, 2, 5, 'This invoice is generated for Inventory Products', 50, 50, 'pending', 'product', 5, 0, 0, '2016-10-20 07:24:31', '2016-11-17 02:00:20', 0),
(27, 2, 5, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 7, 0, 0, '2016-10-20 07:31:52', '2016-11-17 02:00:20', 1),
(28, 2, 5, 'This invoice is generated for Inventory Products', 100, -50, 'paid', 'product', 6, 0, 0, '2016-10-20 07:32:21', '2016-11-17 02:00:20', 1),
(29, 2, 5, 'This invoice is generated for Inventory Products', 200, 0, 'paid', 'product', 6, 0, 0, '2016-10-20 07:32:32', '2016-11-17 02:00:20', 1),
(30, 2, 5, 'This invoice is generated for Inventory Products', 500, 0, 'paid', 'product', 7, 0, 0, '2016-10-20 07:32:40', '2016-11-17 02:00:20', 1),
(31, 2, 2, 'This invoice is generated for Inventory Products', 200, -200, 'paid', 'product', 6, 0, 0, '2016-10-20 07:42:37', '2016-11-17 02:00:20', 1),
(32, 1, 1, 'This invoice is generated for Inventory Products', 100, 0, 'paid', 'product', 6, 0, 0, '2016-10-20 07:49:39', '2016-11-17 02:00:20', 1),
(33, 7, 6, 'This invoice is generated for Lab Orders', 50, -50, 'paid', 'other', 0, 0, 0, '2016-10-20 07:56:16', '2016-11-17 02:00:20', 1),
(34, 3, 3, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 5, 0, 0, '2016-10-20 08:32:43', '2016-11-17 02:00:20', 1),
(35, 2, 2, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 5, 0, 0, '2016-10-20 10:13:46', '2016-11-17 02:00:20', 1),
(36, 7, 6, 'This invoice is generated for Inventory Products', 250, -500, 'paid', 'product', 8, 0, 0, '2016-10-20 16:30:10', '2016-11-17 02:00:20', 1),
(37, 7, 6, 'This invoice is generated for Inventory Products', 200, -400, 'paid', 'product', 6, 0, 0, '2016-10-20 16:31:21', '2016-11-17 02:00:20', 1),
(38, 4, 4, 'This invoice is generated for Inventory Products', 50, 50, 'pending', 'product', 5, 0, 0, '2016-10-20 16:40:32', '2016-11-17 02:00:20', 1),
(39, 4, 4, 'This invoice is generated for Inventory Products', 50, 50, 'pending', 'product', 5, 0, 0, '2016-10-20 16:41:03', '2016-11-17 02:00:20', 1),
(40, 2, 5, 'This invoice is generated for Inventory Products', 50, 20, 'deposit', 'product', 5, 0, 0, '2016-10-20 16:50:05', '2016-11-17 02:00:20', 1),
(41, 2, 5, 'This invoice is generated for Inventory Products', 50, 30, 'deposit', 'product', 5, 0, 0, '2016-10-20 16:51:57', '2016-11-17 02:00:20', 0),
(42, 1, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 7, 0, 0, '2016-10-20 16:56:53', '2016-11-17 02:00:20', 1),
(43, 7, 6, 'This invoice is generated for patient prescription', 50, 50, 'pending', 'other', 0, 0, 0, '2016-10-21 11:21:01', '2016-11-17 02:00:20', 1),
(44, 3, 3, 'This invoice is generated for patient prescription', 50, 50, 'pending', 'other', 0, 0, 0, '2016-10-21 12:39:09', '2016-11-17 02:00:20', 1),
(45, 1, 1, 'This invoice is generated for patient prescription', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-21 12:45:21', '2016-11-17 02:00:20', 1),
(46, 7, 9, 'This invoice is generated for patient prescription', 50, 5, 'deposit', 'other', 0, 0, 0, '2016-10-21 13:15:53', '2016-11-17 02:00:20', 1),
(47, 4, 7, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 5, 0, 0, '2016-10-21 14:01:26', '2016-11-17 02:00:20', 1),
(48, 4, 7, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 5, 0, 0, '2016-10-21 14:01:46', '2016-11-17 02:00:20', 1),
(49, 1, 10, 'This invoice is generated for patient prescription', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-21 14:07:45', '2016-11-17 02:00:20', 1),
(50, 4, 8, 'This invoice is generated for Inventory Products', 7000, 0, 'paid', 'product', 6, 0, 0, '2016-10-21 15:38:25', '2016-11-17 02:00:20', 1),
(51, 1, 1, 'This invoice is generated for Inventory Products', 150, 0, 'paid', 'product', 8, 0, 0, '2016-10-21 20:39:17', '2016-11-17 02:00:20', 1),
(52, 11, 17, 'This invoice is generated for Lab Orders', 200, 200, 'pending', 'other', 0, 0, 0, '2016-10-22 15:47:12', '2016-11-17 02:00:20', 1),
(53, 4, 7, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'service', 0, 0, 2, '2016-10-24 14:59:35', '2016-11-17 02:00:20', 1),
(54, 2, 2, 'This invoice is generated for Inventory Products', 50, -70, 'paid', 'service', 0, 0, 1, '2016-10-25 09:25:51', '2016-11-17 02:00:20', 1),
(55, 2, 2, 'This invoice is generated for Inventory Products', 50, -50, 'paid', 'service', 0, 0, 2, '2016-10-25 10:15:10', '2016-11-17 02:00:20', 1),
(56, 1, 10, 'This invoice is generated for Lab Orders', 125, 0, 'paid', 'other', 0, 0, 0, '2016-10-25 12:33:03', '2016-11-17 02:00:20', 1),
(57, 1, 10, 'This invoice is generated for Lab Orders', 125, 0, 'paid', 'other', 0, 0, 0, '2016-10-25 12:33:07', '2016-11-17 02:00:20', 1),
(58, 1, 10, 'This invoice is generated for Lab Orders', 50, 0, 'paid', 'other', 0, 0, 0, '2016-10-25 14:49:12', '2016-11-17 02:00:20', 1),
(59, 5, 13, 'This invoice is generated for Lab Orders', 100, 100, 'pending', 'other', 0, 0, 0, '2016-10-25 15:07:19', '2016-11-17 02:00:20', 1),
(60, 3, 19, 'This invoice is generated for Lab Orders', 400, 400, 'pending', 'other', 0, 0, 0, '2016-10-25 15:12:59', '2016-11-17 02:00:20', 1),
(61, 1, 10, 'This invoice is generated for Inventory Products', 400, 0, 'paid', 'product', 6, 0, 0, '2016-10-25 17:29:10', '2016-11-17 02:00:20', 1),
(62, 19, 20, 'This invoice is generated for Lab Orders', 2500, 2500, 'pending', 'other', 0, 0, 0, '2016-10-25 17:53:42', '2016-11-17 02:00:20', 1),
(63, 12, 16, 'This invoice is generated for patient prescription', 50, 50, 'pending', 'other', 0, 0, 0, '2016-10-26 10:13:55', '2016-11-17 02:00:20', 1),
(64, 28, 27, 'This invoice is generated for Inventory Products', 200, 0, 'paid', 'product', 6, 0, 0, '2016-10-26 13:24:34', '2016-11-17 02:00:20', 1),
(65, 7, 9, 'This invoice is generated for Inventory Products', 150, -100, 'paid', 'product', 8, 0, 0, '2016-10-26 13:26:01', '2016-11-17 02:00:20', 1),
(66, 2, 2, 'This invoice is generated for Inventory Products', 1700, 0, 'paid', 'product', 8, 0, 0, '2016-10-26 13:34:07', '2016-11-17 02:00:20', 1),
(67, 28, 34, 'This invoice is generated for Inventory Products', 150, 80, 'deposit', 'product', 8, 0, 0, '2016-10-26 13:34:22', '2016-11-17 02:00:20', 1),
(68, 28, 34, 'This invoice is generated for Inventory Products', 50, 50, 'pending', 'product', 5, 0, 0, '2016-10-26 13:34:34', '2016-11-17 02:00:20', 1),
(69, 1, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'service', 0, 0, 0, '2016-10-26 13:35:24', '2016-11-17 02:00:20', 0),
(70, 2, 2, 'This invoice is generated for Inventory Products', 1700, -700, 'paid', 'product', 8, 0, 0, '2016-10-26 13:35:25', '2016-11-17 02:00:20', 1),
(71, 8, 7, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'service', 0, 0, 1, '2016-10-26 13:35:27', '2016-11-17 02:00:20', 1),
(72, 28, 34, 'This invoice is generated for Inventory Products', 50, 50, 'pending', 'product', 5, 0, 0, '2016-10-26 13:35:27', '2016-11-17 02:00:20', 1),
(73, 7, 9, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'service', 0, 0, 0, '2016-10-26 13:35:35', '2016-11-17 02:00:20', 1),
(74, 8, 7, 'This invoice is generated for Inventory Products', 250, 0, 'paid', 'product', 8, 0, 0, '2016-10-26 13:35:56', '2016-11-17 02:00:20', 1),
(75, 1, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'service', 0, 0, 0, '2016-10-26 13:35:58', '2016-11-17 02:00:20', 0),
(76, 7, 9, 'This invoice is generated for Inventory Products', 200, 200, 'pending', 'product', 8, 0, 0, '2016-10-26 13:35:59', '2016-11-17 02:00:20', 1),
(77, 2, 5, 'This invoice is generated for Inventory Products', 50, 0, 'pending', 'service', 0, 0, 0, '2016-10-26 13:36:25', '2016-11-17 02:00:20', 1),
(78, 1, 1, 'This invoice is generated for Inventory Products', 400, 0, 'paid', 'product', 6, 0, 0, '2016-10-26 13:36:36', '2016-11-17 02:00:20', 1),
(79, 1, 1, 'This invoice is generated for Inventory Products', 400, 0, 'paid', 'product', 6, 0, 0, '2016-10-26 13:37:20', '2016-11-17 02:00:20', 1),
(80, 3, 3, 'This invoice is generated for Inventory Products', 50, 50, 'pending', 'product', 5, 0, 0, '2016-10-26 13:37:56', '2016-11-17 02:00:20', 1),
(81, 2, 2, 'This invoice is generated for Inventory Products', 1700, 0, 'paid', 'product', 8, 0, 0, '2016-10-26 13:38:00', '2016-11-17 02:00:20', 1),
(82, 7, 9, 'This invoice is generated for Inventory Products', 94150, 94150, 'pending', 'product', 13, 0, 0, '2016-10-26 13:38:11', '2016-11-17 02:00:20', 1),
(83, 3, 3, 'This invoice is generated for Inventory Products', -40350, -40350, 'pending', 'product', 13, 0, 0, '2016-10-26 13:38:23', '2016-11-17 02:00:20', 0),
(84, 2, 2, 'This invoice is generated for Inventory Products', 200, 0, 'paid', 'product', 8, 0, 0, '2016-10-26 13:39:03', '2016-11-17 02:00:20', 1),
(85, 34, 36, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 5, 0, 0, '2016-10-26 13:40:17', '2016-11-17 02:00:20', 1),
(86, 34, 36, 'This invoice is generated for Inventory Products', 100, 0, 'paid', 'product', 6, 0, 0, '2016-10-26 13:40:26', '2016-11-17 02:00:20', 1),
(87, 34, 36, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 7, 0, 0, '2016-10-26 13:40:35', '2016-11-17 02:00:20', 1),
(88, 34, 36, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'product', 8, 0, 0, '2016-10-26 13:40:45', '2016-11-17 02:00:20', 1),
(89, 2, 2, 'This invoice is generated for Inventory Products', 40350, 10050, 'deposit', 'product', 13, 0, 0, '2016-10-26 13:40:52', '2016-11-17 02:00:20', 1),
(90, 34, 36, 'This invoice is generated for Inventory Products', 50, 25, 'deposit', 'product', 8, 0, 0, '2016-10-26 13:40:55', '2016-11-17 02:00:20', 1),
(91, 12, 16, 'This invoice is generated for Inventory Products', 150, 150, 'pending', 'product', 8, 0, 0, '2016-10-26 13:52:18', '2016-11-17 02:00:20', 1),
(92, 2, 2, 'This invoice is generated for Inventory Products', 50, 0, 'pending', 'service', 0, 0, 4, '2016-11-02 12:16:14', '2016-11-17 02:00:20', 1),
(93, 1, 1, 'This invoice is generated for Inventory Products', 1000, 0, 'paid', 'service', 0, 0, 1, '2016-11-02 12:44:11', '2016-11-17 02:00:20', 1),
(94, 1, 1, 'This invoice is generated for Inventory Products', 50, 0, 'paid', 'service', 0, 0, 2, '2016-11-02 12:45:30', '2016-11-17 02:00:20', 1),
(95, 1, 1, 'Product old reports-Report format', 500, 0, 'paid', 'product', 7, 0, 0, '2016-11-02 13:27:15', '2016-11-17 02:00:20', 1),
(96, 3, 3, 'This invoice is generated for Inventory Products', 200, 100, 'deposit', 'service', 0, 0, 4, '2016-11-02 13:51:37', '2016-11-17 02:00:20', 1),
(97, 1, 1, 'Service Laboratory-BT1', 15000, 0, 'paid', 'service', 0, 0, 3, '2016-11-02 16:32:05', '2016-11-17 02:00:20', 1),
(98, 1, 44, 'PrescriptionGOPD Pharmacy', 50, 50, 'pending', 'other', 0, 0, 0, '2016-11-02 17:21:50', '2016-11-17 02:00:20', 1),
(99, 45, 43, 'Lab Order -Microbiology', 50, 50, 'pending', 'other', 0, 0, 0, '2016-11-03 17:25:53', '2016-11-17 02:00:20', 1),
(100, 41, 42, 'Lab Order -Radiology', 1375, 1375, 'pending', 'other', 0, 0, 0, '2016-11-03 17:43:44', '2016-11-17 02:00:20', 1),
(101, 1, 50, 'Prescription -Central Pharmacy', 50, 0, 'paid', 'other', 0, 0, 0, '2016-11-04 16:01:57', '2016-11-17 02:00:20', 1),
(102, 17, 54, 'Product Syrups-morning fresh', 26900, 26900, 'pending', 'product', 13, 0, 0, '2016-11-07 14:26:17', '2016-11-17 02:00:20', 1),
(103, 17, 54, 'Product Syrups-morning fresh', 26900, 26900, 'pending', 'product', 13, 0, 0, '2016-11-07 14:26:28', '2016-11-17 02:00:20', 1),
(104, 17, 54, 'Product old reports-Patient Medical Report', 50, 50, 'pending', 'product', 5, 0, 0, '2016-11-07 14:26:37', '2016-11-17 02:00:20', 1),
(105, 17, 54, 'Product old reports-Patient Medical Report', 50, 50, 'pending', 'product', 5, 0, 0, '2016-11-07 14:26:44', '2016-11-17 02:00:20', 1),
(106, 1, 56, 'Lab Order -Radiology', 125, 125, 'pending', 'other', 0, 0, 0, '2016-11-07 15:49:13', '2016-11-17 02:00:20', 1),
(107, 1, 1, 'Service General-C123', 200, 0, 'paid', 'service', 0, 0, 4, '2016-11-07 16:23:32', '2016-11-17 02:00:20', 1),
(108, 1, 56, 'Lab Order -Microbiology', 50, 0, 'paid', 'other', 0, 0, 0, '2016-11-07 16:33:45', '2016-11-17 02:00:20', 1),
(109, 34, 57, 'Lab Order -Microbiology', 250, 0, 'paid', 'other', 0, 0, 0, '2016-11-08 08:54:20', '2016-11-17 02:00:20', 1),
(110, 34, 58, 'Lab Order -Microbiology', 50, 50, 'pending', 'other', 0, 0, 0, '2016-11-08 09:59:59', '2016-11-17 02:00:20', 1),
(111, 34, 58, 'Prescription -Central Pharmacy', 50, 50, 'pending', 'other', 0, 0, 0, '2016-11-08 10:00:21', '2016-11-17 02:00:20', 1),
(112, 41, 42, 'Lab Order -Radiology', 1800, 1800, 'pending', 'other', 0, 0, 0, '2016-11-11 15:44:13', '2016-11-17 02:00:20', 1),
(113, 4, 66, 'Prescription -Central Pharmacy', 50, 0, 'paid', 'other', 0, 0, 0, '2016-11-14 09:54:12', '2016-11-17 02:00:20', 1),
(114, 29, 38, 'Prescription -Central Pharmacy', 50, 50, 'pending', 'other', 0, 0, 0, '2016-11-14 11:49:38', '2016-11-17 02:00:20', 1),
(115, 29, 67, 'Prescription -Central Pharmacy', 1526, 1526, 'pending', 'other', 0, 0, 0, '2016-11-14 12:48:58', '2016-11-18 11:21:16', 1),
(116, 4, 8, 'Service General-C123', 200, 200, 'pending', 'service', 0, 0, 4, '2016-11-16 09:50:07', '2016-11-17 02:00:20', 1),
(117, 4, 8, 'Service General-S001', 3000, 3000, 'pending', 'service', 0, 0, 6, '2016-11-16 09:50:21', '2016-11-17 02:00:20', 1),
(118, 3, 68, 'Prescription -Dental Centre', 0, 0, 'paid', 'other', 0, 0, 0, '2016-11-16 11:13:44', '2016-11-17 02:00:20', 1),
(119, 161, 82, 'Lab Order -Radiology', 1800, 1800, 'pending', 'other', 0, 0, 0, '2016-11-17 12:15:06', '2016-11-17 02:00:20', 1),
(120, 2, 5, 'Product Antibiotics-Admission form', 200, 200, 'pending', 'product', 6, 0, 0, '2016-11-17 14:49:00', '0000-00-00 00:00:00', 1),
(121, 60, 93, 'Prescription -Dental Centre', 250, 250, 'pending', 'other', 0, 0, 0, '2016-11-17 15:42:58', '0000-00-00 00:00:00', 1),
(122, 61, 92, 'Prescription -', 0, 0, 'pending', 'other', 0, 0, 0, '2016-11-17 15:49:37', '0000-00-00 00:00:00', 1),
(123, 163, 98, 'Prescription -', 0, 0, 'pending', 'other', 0, 0, 0, '2016-11-18 11:05:18', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Haematology', 'LAB01', 'Haematology', '0000-00-00 00:00:00', '2016-10-21 07:45:59', 0),
(2, 'Radiology', 'RAD01', 'Radiology', '0000-00-00 00:00:00', '2016-10-25 12:35:16', 1),
(3, 'Microbiology', 'LAB02', 'Microbiology', '2016-10-21 05:56:52', '0000-00-00 00:00:00', 1),
(4, 'UltraSound', 'U-123', 'for all ultrasounds', '2016-10-21 07:36:08', '0000-00-00 00:00:00', 1),
(5, 'sfad', 'fsda', 'sadf', '2016-10-21 08:21:26', '2016-10-21 08:21:36', 0),
(6, 'tttt', 't', 't', '2016-10-21 08:34:21', '2016-10-21 08:34:40', 0),
(7, 'Blood Lab', 'BL', 'All blood tests are carried out here', '2016-10-21 08:43:38', '2016-11-02 20:27:00', 0),
(8, 'chemical pathology', '001', 'fASTING BLOOD SUGAR,ELECTROLYTE UREA AND CREATININE,FASTING LIPID PROFILE, LIVER FUNCTION TEST.', '2016-10-25 12:40:12', '2016-10-25 13:19:06', 0),
(9, 'chemical pathology', '001', 'fASTING BLOOD SUGAR,ELECTROLYTE UREA AND CREATININE,FASTING LIPID PROFILE, LIVER FUNCTION TEST.', '2016-10-25 12:40:12', '2016-10-25 13:15:17', 0),
(10, 'chemical pathology', '001', 'fASTING BLOOD SUGAR,ELECTROLYTE UREA AND CREATININE,FASTING LIPID PROFILE, LIVER FUNCTION TEST.', '2016-10-25 12:40:14', '2016-11-02 20:27:04', 0),
(11, 'HAEMATOLOGY', '002', 'PCV,FULL BLOOD COUNT,ESR,GENOTYPE,BLOOD FILM, CLOTTING PROFILE,BONE MARROW,D-DIMER', '2016-10-25 12:42:55', '2016-11-02 20:27:10', 0),
(12, 'MICROBIOLOGY', '003', 'URINE M/C/S,SPUTUM M/C/S,HVS M/C/S,MATOUX,GENE XPERT,AFB,STOOL M/C/S,SFA M/C/S,URETHRA SWAB,', '2016-10-25 12:47:14', '2016-11-02 20:27:14', 0),
(13, 'MICROBIOLOGY', '003', 'URINE M/C/S,SPUTUM M/C/S,HVS M/C/S,MATOUX,GENE XPERT,AFB,STOOL M/C/S,SFA M/C/S,URETHRA SWAB,', '2016-10-25 12:47:15', '2016-10-25 13:19:22', 0),
(14, 'PARASITOLOGY', '004', 'URINALYSIS,MALARIA PARASITE,MICRO FILARIA,SKIN SNIP,STOOL OCCULT BLOOD,', '2016-10-25 12:50:41', '2016-10-27 08:21:37', 0),
(15, 'PARASITOLOGY', '004', 'URINALYSIS,MALARIA PARASITE,MICRO FILARIA,SKIN SNIP,STOOL OCCULT BLOOD,', '2016-10-25 12:50:42', '2016-11-02 20:27:21', 0),
(16, 'IMMUNO ASSAY', '005', 'TFT, PSA,HORMONAL PROFILE, CORTISOL, HBAIC, H-PYLORI,', '2016-10-25 12:54:20', '2016-11-02 20:27:28', 0),
(17, 'BLOOD TRANSFUSION SERVICES', '006', 'BLOOD GROUP, HEPATITIS B, HEPATITIS C,HIV 1/ 2, BLOOD CROSS MATCHING,ANTI BODY TITRATION, COOMBS TEST (DIRECT AND INDIRECT)', '2016-10-25 13:01:56', '2016-11-02 20:28:07', 0),
(18, 'BLOOD TRANSFUSION SERVICES', '006', 'BLOOD GROUP, HEPATITIS B, HEPATITIS C,HIV 1/ 2, BLOOD CROSS MATCHING,ANTI BODY TITRATION, COOMBS TEST (DIRECT AND INDIRECT)', '2016-10-25 13:01:57', '2016-10-27 08:17:55', 0),
(19, 'HISTOPATHOLOGY', '007', 'BIOPSY,PAP SMEAR, EMBALMENT,DNA HISTOGRAM,CYTOGENETICS,', '2016-10-25 13:11:05', '2016-11-02 20:28:12', 0),
(20, 'HISTOPATHOLOGY', '007', 'BIOPSY,PAP SMEAR, EMBALMENT,DNA HISTOGRAM,CYTOGENETICS,', '2016-10-25 13:11:05', '2016-10-27 08:16:56', 0),
(21, 'HISTOPATHOLOGY', '007', 'BIOPSY,PAP SMEAR, EMBALMENT,DNA HISTOGRAM,CYTOGENETICS,', '2016-10-25 13:11:05', '2016-10-27 08:16:50', 0),
(22, 'VOLUNTARY COUNSELLING TEST', '010', 'HIV 1 /2,HEPATITIS B AND HEPATITIS C, VDRL, VIRAL LOAD, CD4 COUNT,', '2016-10-25 13:14:47', '2016-11-02 20:28:15', 0),
(23, 'Blood Group Serology', '011', 'Haemathology Labs', '2016-10-27 08:21:25', '2016-11-02 20:29:54', 0),
(24, 'Haemathology', '005', 'Haemathology Laboratory Tests', '2016-11-02 20:29:43', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_orders`
--

CREATE TABLE `lab_orders` (
  `id` int(11) NOT NULL,
  `patient_id` int(8) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `lab` int(11) NOT NULL,
  `order_by` int(11) NOT NULL,
  `clinical_information` varchar(50) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `notes` varchar(50) NOT NULL,
  `order_status` enum('created','In Progress','cancelled','completed') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_orders`
--

INSERT INTO `lab_orders` (`id`, `patient_id`, `visit_id`, `lab`, `order_by`, `clinical_information`, `diagnosis`, `notes`, `order_status`, `created_at`, `updated_at`, `status`) VALUES
(1, 4, 4, 1, 0, '', '', 'NA', 'created', '2016-10-20 07:18:26', '0000-00-00 00:00:00', 1),
(2, 2, 5, 1, 0, '', '', 'No notes from doctor', 'created', '2016-10-20 07:21:31', '0000-00-00 00:00:00', 1),
(3, 2, 5, 0, 0, '', '', 'none', 'created', '2016-10-20 07:22:13', '0000-00-00 00:00:00', 1),
(4, 7, 6, 1, 0, '', '', 'NA', 'created', '2016-10-20 07:56:16', '0000-00-00 00:00:00', 1),
(5, 8, 0, 1, 0, '', '', 'test for malaria', 'created', '2016-10-20 15:49:46', '0000-00-00 00:00:00', 1),
(6, 11, 17, 0, 0, '', '', 'Abdominal', 'created', '2016-10-22 15:47:12', '0000-00-00 00:00:00', 1),
(7, 17, 0, 7, 0, '', '', 'none', 'created', '2016-10-24 15:47:17', '0000-00-00 00:00:00', 1),
(8, 1, 10, 0, 0, '', '', 'Kindly ensure the patient is fasting before the te', 'created', '2016-10-25 12:33:03', '0000-00-00 00:00:00', 1),
(9, 1, 10, 0, 0, '', '', 'Kindly ensure the patient is fasting before the te', 'created', '2016-10-25 12:33:07', '0000-00-00 00:00:00', 1),
(10, 3, 20, 7, 0, '', '', 'NA', 'created', '2016-10-25 13:44:57', '0000-00-00 00:00:00', 1),
(11, 3, 20, 7, 0, '', '', 'NA', 'created', '2016-10-25 13:46:01', '0000-00-00 00:00:00', 1),
(12, 5, 0, 7, 0, '', '', 'none', 'created', '2016-10-25 14:48:32', '0000-00-00 00:00:00', 1),
(13, 1, 10, 3, 0, '', '', 'none', 'cancelled', '2016-10-25 14:49:12', '2016-11-09 12:02:36', 1),
(14, 4, 19, 3, 0, '', '', 'none', 'cancelled', '2016-10-25 15:01:35', '2016-11-09 12:10:15', 1),
(15, 4, 19, 3, 0, '', '', 'none', 'created', '2016-10-25 15:01:52', '0000-00-00 00:00:00', 1),
(16, 3, 20, 7, 0, '', '', 'NA', 'created', '2016-10-25 15:03:34', '0000-00-00 00:00:00', 1),
(17, 3, 20, 7, 0, '', '', 'NA', 'created', '2016-10-25 15:03:35', '0000-00-00 00:00:00', 1),
(18, 5, 13, 3, 0, '', '', 'none', 'created', '2016-10-25 15:07:19', '0000-00-00 00:00:00', 1),
(19, 3, 20, 7, 0, '', '', 'NONE', 'created', '2016-10-25 15:12:59', '0000-00-00 00:00:00', 1),
(20, 4, 19, 7, 0, '', '', 'Test', 'created', '2016-10-25 15:14:09', '0000-00-00 00:00:00', 1),
(21, 19, 21, 7, 0, '', '', 'kindly use serum for investigating the patient', 'created', '2016-10-25 17:53:42', '0000-00-00 00:00:00', 1),
(22, 1, 0, 2, 0, '', '', 'none', 'created', '2016-11-02 15:27:59', '0000-00-00 00:00:00', 1),
(23, 1, 0, 2, 0, '', '', 'New Order', 'cancelled', '2016-11-02 16:49:48', '2016-11-09 13:29:19', 1),
(24, 2, 0, 2, 0, '', '', 'New Lab Orders', 'created', '2016-11-02 16:51:35', '0000-00-00 00:00:00', 1),
(25, 1, 45, 2, 0, '', '', 'test', 'created', '2016-11-02 16:54:30', '0000-00-00 00:00:00', 1),
(26, 5, 0, 3, 0, '', '', 'N/A', 'created', '2016-11-03 09:08:02', '0000-00-00 00:00:00', 1),
(27, 45, 44, 3, 0, '', '', 'NA', 'created', '2016-11-03 17:25:53', '0000-00-00 00:00:00', 1),
(28, 41, 43, 2, 0, '', '', 'NA', 'created', '2016-11-03 17:43:44', '0000-00-00 00:00:00', 1),
(29, 3, 0, 2, 0, '', '', 'none', 'created', '2016-11-04 13:12:27', '0000-00-00 00:00:00', 1),
(30, 4, 0, 3, 0, '', '', 'None', 'created', '2016-11-04 13:13:11', '0000-00-00 00:00:00', 1),
(31, 58, 0, 3, 0, '', '', 'none', 'created', '2016-11-04 13:50:04', '0000-00-00 00:00:00', 1),
(32, 1, 57, 2, 0, '', '', 'New Lab Order', 'created', '2016-11-07 15:49:13', '0000-00-00 00:00:00', 1),
(33, 1, 57, 3, 0, '', '', 'New Notes', 'created', '2016-11-07 16:33:45', '0000-00-00 00:00:00', 1),
(34, 34, 58, 3, 0, '', '', 'N/A', 'created', '2016-11-08 08:54:20', '0000-00-00 00:00:00', 1),
(35, 34, 59, 3, 0, '', '', 'N/A', 'created', '2016-11-08 09:59:59', '0000-00-00 00:00:00', 1),
(36, 41, 43, 2, 0, '', '', 'Kindly take cross section of  right side of chest', 'created', '2016-11-11 15:44:13', '0000-00-00 00:00:00', 1),
(37, 161, 67, 2, 0, '', '', 'NA', 'created', '2016-11-17 12:15:06', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_order_cancelation`
--

CREATE TABLE `lab_order_cancelation` (
  `id` int(11) NOT NULL,
  `lab_order` int(11) NOT NULL,
  `reason` varchar(40) NOT NULL,
  `notes` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_order_cancelation`
--

INSERT INTO `lab_order_cancelation` (`id`, `lab_order`, `reason`, `notes`, `created_at`, `updated_at`, `status`) VALUES
(1, 13, '2', 'ads', '2016-11-09 12:02:36', '0000-00-00 00:00:00', 1),
(2, 14, '3', 'ad', '2016-11-09 12:10:15', '0000-00-00 00:00:00', 1),
(3, 23, '3', 'dsf', '2016-11-09 13:29:19', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_order_tests`
--

CREATE TABLE `lab_order_tests` (
  `id` int(11) NOT NULL,
  `lab_order_id` int(11) NOT NULL,
  `lab_test` int(11) NOT NULL,
  `priority` varchar(50) NOT NULL,
  `test_status` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_order_tests`
--

INSERT INTO `lab_order_tests` (`id`, `lab_order_id`, `lab_test`, `priority`, `test_status`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 'Urgent', 'result completed', '2016-10-12 09:00:00', '2016-10-20 07:22:21', 1),
(2, 2, 2, 'Urgent', 'sample collected', '2016-10-20 07:21:31', '2016-10-21 14:57:24', 1),
(3, 2, 2, 'Urgent', 'result completed', '0000-00-00 00:00:00', '2016-10-21 13:54:23', 1),
(4, 3, 3, 'Urgent', '', '2016-10-20 07:22:13', '0000-00-00 00:00:00', 1),
(5, 4, 1, 'Urgent', 'in progress', '2016-10-25 09:00:00', '2016-10-20 08:11:32', 1),
(6, 5, 1, 'Urgent', '', '2016-10-20 15:49:46', '0000-00-00 00:00:00', 1),
(7, 6, 3, 'Urgent', '', '2016-10-22 15:47:12', '0000-00-00 00:00:00', 1),
(8, 7, 5, 'Urgent', 'result completed', '2016-10-26 10:15:00', '0000-00-00 00:00:00', 1),
(9, 7, 3, 'Urgent', 'in progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(10, 8, 1, 'Urgent', '', '2016-10-25 12:33:03', '0000-00-00 00:00:00', 1),
(11, 9, 1, 'Urgent', '', '2016-10-25 12:33:07', '0000-00-00 00:00:00', 1),
(12, 10, 4, 'Urgent', '', '2016-10-25 13:44:57', '0000-00-00 00:00:00', 1),
(13, 12, 3, 'Urgent', '', '2016-10-25 14:48:32', '0000-00-00 00:00:00', 1),
(14, 13, 4, 'Urgent', '', '2016-10-25 14:49:12', '0000-00-00 00:00:00', 1),
(15, 14, 4, 'Urgent', '', '2016-11-17 09:00:00', '0000-00-00 00:00:00', 1),
(16, 15, 4, 'Urgent', 'completed', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(17, 15, 4, 'Urgent', '', '2016-10-25 15:01:52', '0000-00-00 00:00:00', 1),
(18, 18, 4, 'Urgent', 'in progress', '2016-10-27 05:00:00', '0000-00-00 00:00:00', 1),
(19, 18, 4, 'Urgent', '', '2016-10-25 15:07:19', '0000-00-00 00:00:00', 1),
(20, 19, 3, 'Urgent', '', '2016-10-25 15:12:59', '0000-00-00 00:00:00', 1),
(21, 19, 3, 'Urgent', '', '2016-10-25 15:12:59', '0000-00-00 00:00:00', 1),
(22, 20, 5, 'Urgent', '', '2016-10-25 15:14:09', '0000-00-00 00:00:00', 1),
(23, 20, 5, 'Urgent', '', '2016-10-25 15:14:09', '0000-00-00 00:00:00', 1),
(24, 21, 6, 'Urgent', '', '2016-10-25 17:53:42', '0000-00-00 00:00:00', 1),
(25, 21, 5, 'Urgent', '', '2016-10-25 17:53:42', '0000-00-00 00:00:00', 1),
(26, 22, 1, 'Low', 'sample collected', '2016-11-01 07:30:00', '0000-00-00 00:00:00', 1),
(27, 22, 1, 'Medium', '', '2016-11-02 15:27:59', '0000-00-00 00:00:00', 1),
(28, 22, 1, 'High', '', '2016-11-02 15:27:59', '0000-00-00 00:00:00', 1),
(29, 23, 1, 'Urgent', '', '2016-11-02 16:49:48', '0000-00-00 00:00:00', 1),
(30, 24, 1, 'Urgent', '', '2016-11-02 16:51:35', '0000-00-00 00:00:00', 1),
(31, 25, 1, 'Urgent', '', '2016-11-02 16:54:30', '0000-00-00 00:00:00', 1),
(32, 26, 4, 'Medium', '', '2016-11-03 09:08:02', '0000-00-00 00:00:00', 1),
(33, 27, 4, 'High', '', '2016-11-03 17:25:53', '0000-00-00 00:00:00', 1),
(34, 28, 7, 'High', '', '2016-11-03 17:43:44', '0000-00-00 00:00:00', 1),
(35, 28, 1, 'High', '', '2016-11-03 17:43:44', '0000-00-00 00:00:00', 1),
(36, 29, 1, 'Medium', '', '2016-11-04 13:12:27', '0000-00-00 00:00:00', 1),
(37, 29, 1, 'Low', '', '2016-11-04 13:12:27', '0000-00-00 00:00:00', 1),
(38, 30, 4, 'Low', '', '2016-11-04 13:13:11', '0000-00-00 00:00:00', 1),
(39, 30, 4, 'Medium', '', '2016-11-04 13:13:11', '0000-00-00 00:00:00', 1),
(40, 31, 4, 'Low', '', '2016-11-04 13:50:04', '0000-00-00 00:00:00', 1),
(41, 31, 4, 'High', '', '2016-11-04 13:50:04', '0000-00-00 00:00:00', 1),
(42, 32, 1, 'Medium', '', '2016-11-07 15:49:13', '0000-00-00 00:00:00', 1),
(43, 33, 4, 'Medium', '', '2016-11-07 16:33:45', '0000-00-00 00:00:00', 1),
(44, 34, 1, 'High', '', '2016-11-08 08:54:20', '0000-00-00 00:00:00', 1),
(45, 34, 1, 'Medium', '', '2016-11-08 08:54:20', '0000-00-00 00:00:00', 1),
(46, 35, 4, 'Low', '', '2016-11-08 09:59:59', '0000-00-00 00:00:00', 1),
(47, 36, 9, 'Medium', '', '2016-11-11 15:44:13', '0000-00-00 00:00:00', 1),
(48, 36, 8, 'High', '', '2016-11-11 15:44:13', '0000-00-00 00:00:00', 1),
(49, 37, 8, 'Medium', '', '2016-11-17 12:15:06', '0000-00-00 00:00:00', 1),
(50, 37, 9, 'High', '', '2016-11-17 12:15:06', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_tests`
--

CREATE TABLE `lab_tests` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lonic_code` varchar(40) NOT NULL,
  `lab` int(11) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `test_status` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_tests`
--

INSERT INTO `lab_tests` (`id`, `name`, `lonic_code`, `lab`, `cost`, `description`, `test_status`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Blood_PCV(Chemistry -Med Investigation Lab )', 'cv-001', 2, '125', 'none', 'paid', '0000-00-00 00:00:00', '2016-11-17 12:32:31', 0),
(2, 'Urine_PCV(Chemistry -Med Investigation Lab )', 'cv-002', 1, '500', 'URINE ANALYSIS', 'completed', '0000-00-00 00:00:00', '2016-11-17 12:32:36', 0),
(3, 'New Radiology Template ', 'R-100', 7, '200', 'none', '', '0000-00-00 00:00:00', '2016-11-17 12:32:46', 1),
(4, 'Haemoglobin', 'HB', 3, '50', 'none', '', '2016-10-21 08:43:15', '2016-10-21 09:12:51', 1),
(5, 'Blood_PCV Test', 'LAB003', 7, '1500', 'NA', '', '2016-10-21 14:24:57', '0000-00-00 00:00:00', 1),
(6, 'TISSUE Biochemsty analysis', '091', 10, '1000', 'tissue analysis', '', '2016-10-25 17:38:19', '0000-00-00 00:00:00', 1),
(7, 'Blood Group Serology', '001', 24, '1250.00', 'NA', '', '2016-11-02 20:30:49', '0000-00-00 00:00:00', 1),
(8, 'Ultra Sound Scanning', 'USS01', 2, '1200.00', 'Abdominal Ultra Sound Scanning', '', '2016-11-11 15:41:32', '0000-00-00 00:00:00', 1),
(9, 'Xray', 'XR001', 2, '600.00', 'Using Xray machine to carry out scanning of body sections', '', '2016-11-11 15:42:48', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `status`) VALUES
(1, 'English', 1),
(2, 'Hausa', 1),
(3, 'Igbo', 1),
(4, 'Yoruba', 1),
(5, 'Other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `local_goverment_area`
--

CREATE TABLE `local_goverment_area` (
  `id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_goverment_area`
--

INSERT INTO `local_goverment_area` (`id`, `state_id`, `name`, `status`) VALUES
(1, 1, 'Aba North', 1),
(2, 1, 'Aba South', 1),
(3, 1, 'Arochukwu', 1),
(4, 1, 'Bende', 1),
(5, 1, 'Ikwuano', 1),
(6, 1, 'Isiala Ngwa North', 1),
(7, 1, 'Isiala Ngwa South', 1),
(8, 1, 'Isuikwuato', 1),
(9, 1, 'Obi Ngwa', 1),
(10, 1, 'Ohafia', 1),
(11, 1, 'Osisioma', 1),
(12, 1, 'Ugwunagbo', 1),
(13, 1, 'Ukwa East', 1),
(14, 1, 'Ukwa West', 1),
(15, 1, 'Umuahia North', 1),
(16, 1, 'Umuahia South', 1),
(17, 1, 'Umu Nneochi', 1),
(18, 2, 'Demsa', 1),
(19, 2, 'Fufure', 1),
(20, 2, 'Ganye', 1),
(21, 2, 'Gayuk', 1),
(22, 2, 'Gombi', 1),
(23, 2, 'Grie', 1),
(24, 2, 'Hong', 1),
(25, 2, 'Jada', 1),
(26, 2, 'Larmurde', 1),
(27, 2, 'Madagali', 1),
(28, 2, 'Maiha', 1),
(29, 2, 'Mayo Belwa', 1),
(30, 2, 'Michika', 1),
(31, 2, 'Mubi North', 1),
(32, 2, 'Mubi South', 1),
(33, 2, 'Numan', 1),
(34, 2, 'Shelleng', 1),
(35, 2, 'Song', 1),
(36, 2, 'Toungo', 1),
(37, 2, 'Yola North', 1),
(38, 2, 'Yola South', 1),
(39, 3, 'Abak', 1),
(40, 3, 'Eastern Obolo', 1),
(41, 3, 'Eket', 1),
(42, 3, 'Esit Eket', 1),
(43, 3, 'Essien Udim', 1),
(44, 3, 'Etim Ekpo', 1),
(45, 3, 'Etinan', 1),
(46, 3, 'Ibeno', 1),
(47, 3, 'Ibesikpo Asutan', 1),
(48, 3, 'Ibiono-Ibom', 1),
(49, 3, 'Ika', 1),
(50, 3, 'Ikono', 1),
(51, 3, 'Ikot Abasi', 1),
(52, 3, 'Ikot Ekpene', 1),
(53, 3, 'Ini', 1),
(54, 3, 'Itu', 1),
(55, 3, 'Mbo', 1),
(56, 3, 'Mkpat-Enin', 1),
(57, 3, 'Nsit-Atai', 1),
(58, 3, 'Nsit-Ibom', 1),
(59, 3, 'Nsit-Ubium', 1),
(60, 3, 'Obot Akara', 1),
(61, 3, 'Okobo', 1),
(62, 3, 'Onna', 1),
(63, 3, 'Oron', 1),
(64, 3, 'Oruk Anam', 1),
(65, 3, 'Udung-Uko', 1),
(66, 3, 'Ukanafun', 1),
(67, 3, 'Uruan', 1),
(68, 3, 'Urue-Offong/Oruko', 1),
(69, 3, 'Uyo', 1),
(70, 4, 'Aguata', 1),
(71, 4, 'Anambra East', 1),
(72, 4, 'Anambra West', 1),
(73, 4, 'Anaocha', 1),
(74, 4, 'Awka North', 1),
(75, 4, 'Awka South', 1),
(76, 4, 'Ayamelum', 1),
(77, 4, 'Dunukofia', 1),
(78, 4, 'Ekwusigo', 1),
(79, 4, 'Idemili North', 1),
(80, 4, 'Idemili South', 1),
(81, 4, 'Ihiala', 1),
(82, 4, 'Njikoka', 1),
(83, 4, 'Nnewi North', 1),
(84, 4, 'Nnewi South', 1),
(85, 4, 'Ogbaru', 1),
(86, 4, 'Onitsha North', 1),
(87, 4, 'Onitsha South', 1),
(88, 4, 'Orumba North', 1),
(89, 4, 'Orumba South', 1),
(90, 4, 'Oyi', 1),
(91, 5, 'Alkaleri', 1),
(92, 5, 'Bauchi', 1),
(93, 5, 'Bogoro', 1),
(94, 5, 'Damban', 1),
(95, 5, 'Darazo', 1),
(96, 5, 'Dass', 1),
(97, 5, 'Gamawa', 1),
(98, 5, 'Ganjuwa', 1),
(99, 5, 'Giade', 1),
(100, 5, 'Itas/Gadau', 1),
(101, 5, 'Jama\'are', 1),
(102, 5, 'Katagum', 1),
(103, 5, 'Kirfi', 1),
(104, 5, 'Misau', 1),
(105, 5, 'Ningi', 1),
(106, 5, 'Shira', 1),
(107, 5, 'Tafawa Balewa', 1),
(108, 5, 'Toro', 1),
(109, 5, 'Warji', 1),
(110, 5, 'Zaki', 1),
(111, 6, 'Brass', 1),
(112, 6, 'Ekeremor', 1),
(113, 6, 'Kolokuma/Opokuma', 1),
(114, 6, 'Nembe', 1),
(115, 6, 'Ogbia', 1),
(116, 6, 'Sagbama', 1),
(117, 6, 'Southern Ijaw', 1),
(118, 6, 'Yenagoa', 1),
(119, 7, 'Agatu', 1),
(120, 7, 'Apa', 1),
(121, 7, 'Ado', 1),
(122, 7, 'Buruku', 1),
(123, 7, 'Gboko', 1),
(124, 7, 'Guma', 1),
(125, 7, 'Gwer East', 1),
(126, 7, 'Gwer West', 1),
(127, 7, 'Katsina-Ala', 1),
(128, 7, 'Konshisha', 1),
(129, 7, 'Kwande', 1),
(130, 7, 'Logo', 1),
(131, 7, 'Makurdi', 1),
(132, 7, 'Obi', 1),
(133, 7, 'Ogbadibo', 1),
(134, 7, 'Ohimini', 1),
(135, 7, 'Oju', 1),
(136, 7, 'Okpokwu', 1),
(137, 7, 'Oturkpo', 1),
(138, 7, 'Tarka', 1),
(139, 7, 'Ukum', 1),
(140, 7, 'Ushongo', 1),
(141, 7, 'Vandeikya', 1),
(142, 8, 'Abadam', 1),
(143, 8, 'Askira/Uba', 1),
(144, 8, 'Bama', 1),
(145, 8, 'Bayo', 1),
(146, 8, 'Biu', 1),
(147, 8, 'Chibok', 1),
(148, 8, 'Damboa', 1),
(149, 8, 'Dikwa', 1),
(150, 8, 'Gubio', 1),
(151, 8, 'Guzamala', 1),
(152, 8, 'Gwoza', 1),
(153, 8, 'Hawul', 1),
(154, 8, 'Jere', 1),
(155, 8, 'Kaga', 1),
(156, 8, 'Kala/Balge', 1),
(157, 8, 'Konduga', 1),
(158, 8, 'Kukawa', 1),
(159, 8, 'Kwaya Kusar', 1),
(160, 8, 'Mafa', 1),
(161, 8, 'Magumeri', 1),
(162, 8, 'Maiduguri', 1),
(163, 8, 'Marte', 1),
(164, 8, 'Mobbar', 1),
(165, 8, 'Monguno', 1),
(166, 8, 'Ngala', 1),
(167, 8, 'Nganzai', 1),
(168, 8, 'Shani', 1),
(169, 9, 'Abi', 1),
(170, 9, 'Akamkpa', 1),
(171, 9, 'Akpabuyo', 1),
(172, 9, 'Bakassi', 1),
(173, 9, 'Bekwarra', 1),
(174, 9, 'Biase', 1),
(175, 9, 'Boki', 1),
(176, 9, 'Calabar Municipal', 1),
(177, 9, 'Calabar South', 1),
(178, 9, 'Etung', 1),
(179, 9, 'Ikom', 1),
(180, 9, 'Obanliku', 1),
(181, 9, 'Obubra', 1),
(182, 9, 'Obudu', 1),
(183, 9, 'Odukpani', 1),
(184, 9, 'Ogoja', 1),
(185, 9, 'Yakuur', 1),
(186, 9, 'Yala', 1),
(187, 10, 'Aniocha North', 1),
(188, 10, 'Aniocha South', 1),
(189, 10, 'Bomadi', 1),
(190, 10, 'Burutu', 1),
(191, 10, 'Ethiope East', 1),
(192, 10, 'Ethiope West', 1),
(193, 10, 'Ika North East', 1),
(194, 10, 'Ika South', 1),
(195, 10, 'Isoko North', 1),
(196, 10, 'Isoko South', 1),
(197, 10, 'Ndokwa East', 1),
(198, 10, 'Ndokwa West', 1),
(199, 10, 'Okpe', 1),
(200, 10, 'Oshimili North', 1),
(201, 10, 'Oshimili South', 1),
(202, 10, 'Patani', 1),
(203, 10, 'Sapele, Delta', 1),
(204, 10, 'Udu', 1),
(205, 10, 'Ughelli North', 1),
(206, 10, 'Ughelli South', 1),
(207, 10, 'Ukwuani', 1),
(208, 10, 'Uvwie', 1),
(209, 10, 'Warri North', 1),
(210, 10, 'Warri South', 1),
(211, 10, 'Warri South West', 1),
(212, 11, 'Abakaliki', 1),
(213, 11, 'Afikpo North', 1),
(214, 11, 'Afikpo South', 1),
(215, 11, 'Ebonyi', 1),
(216, 11, 'Ezza North', 1),
(217, 11, 'Ezza South', 1),
(218, 11, 'Ikwo', 1),
(219, 11, 'Ishielu', 1),
(220, 11, 'Ivo', 1),
(221, 11, 'Izzi', 1),
(222, 11, 'Ohaozara', 1),
(223, 11, 'Ohaukwu', 1),
(224, 11, 'Onicha', 1),
(225, 12, 'Akoko-Edo', 1),
(226, 12, 'Egor', 1),
(227, 12, 'Esan Central', 1),
(228, 12, 'Esan North-East', 1),
(229, 12, 'Esan South-East', 1),
(230, 12, 'Esan West', 1),
(231, 12, 'Etsako Central', 1),
(232, 12, 'Etsako East', 1),
(233, 12, 'Etsako West', 1),
(234, 12, 'Igueben', 1),
(235, 12, 'Ikpoba Okha', 1),
(236, 12, 'Orhionmwon', 1),
(237, 12, 'Oredo', 1),
(238, 12, 'Ovia North-East', 1),
(239, 12, 'Ovia South-West', 1),
(240, 12, 'Owan East', 1),
(241, 12, 'Owan West', 1),
(242, 12, 'Uhunmwonde', 1),
(243, 13, 'Ado Ekiti', 1),
(244, 13, 'Efon', 1),
(245, 13, 'Ekiti East', 1),
(246, 13, 'Ekiti South-West', 1),
(247, 13, 'Ekiti West', 1),
(248, 13, 'Emure', 1),
(249, 13, 'Gbonyin', 1),
(250, 13, 'Ido Osi', 1),
(251, 13, 'Ijero', 1),
(252, 13, 'Ikere', 1),
(253, 13, 'Ikole', 1),
(254, 13, 'Ilejemeje', 1),
(255, 13, 'Irepodun/Ifelodun', 1),
(256, 13, 'Ise/Orun', 1),
(257, 13, 'Moba', 1),
(258, 13, 'Oye', 1),
(259, 14, 'Aninri', 1),
(260, 14, 'Awgu', 1),
(261, 14, 'Enugu East', 1),
(262, 14, 'Enugu North', 1),
(263, 14, 'Enugu South', 1),
(264, 14, 'Ezeagu', 1),
(265, 14, 'Igbo Etiti', 1),
(266, 14, 'Igbo Eze North', 1),
(267, 14, 'Igbo Eze South', 1),
(268, 14, 'Isi Uzo', 1),
(269, 14, 'Nkanu East', 1),
(270, 14, 'Nkanu West', 1),
(271, 14, 'Nsukka', 1),
(272, 14, 'Oji River', 1),
(273, 14, 'Udenu', 1),
(274, 14, 'Udi', 1),
(275, 14, 'Uzo Uwani', 1),
(276, 15, 'Abaji', 1),
(277, 15, 'Bwari', 1),
(278, 15, 'Gwagwalada', 1),
(279, 15, 'Kuje', 1),
(280, 15, 'Kwali', 1),
(281, 15, 'Municipal Area Council', 1),
(282, 16, 'Akko', 1),
(283, 16, 'Balanga', 1),
(284, 16, 'Billiri', 1),
(285, 16, 'Dukku', 1),
(286, 16, 'Funakaye', 1),
(287, 16, 'Gombe', 1),
(288, 16, 'Kaltungo', 1),
(289, 16, 'Kwami', 1),
(290, 16, 'Nafada', 1),
(291, 16, 'Shongom', 1),
(292, 16, 'Yamaltu/Deba', 1),
(293, 17, 'Aboh Mbaise', 1),
(294, 17, 'Ahiazu Mbaise', 1),
(295, 17, 'Ehime Mbano', 1),
(296, 17, 'Ezinihitte', 1),
(297, 17, 'Ideato North', 1),
(298, 17, 'Ideato South', 1),
(299, 17, 'Ihitte/Uboma', 1),
(300, 17, 'Ikeduru', 1),
(301, 17, 'Isiala Mbano', 1),
(302, 17, 'Isu', 1),
(303, 17, 'Mbaitoli', 1),
(304, 17, 'Ngor Okpala', 1),
(305, 17, 'Njaba', 1),
(306, 17, 'Nkwerre', 1),
(307, 17, 'Nwangele', 1),
(308, 17, 'Obowo', 1),
(309, 17, 'Oguta', 1),
(310, 17, 'Ohaji/Egbema', 1),
(311, 17, 'Okigwe', 1),
(312, 17, 'Orlu', 1),
(313, 17, 'Orsu', 1),
(314, 17, 'Oru East', 1),
(315, 17, 'Oru West', 1),
(316, 17, 'Owerri Municipal', 1),
(317, 17, 'Owerri North', 1),
(318, 17, 'Owerri West', 1),
(319, 17, 'Unuimo', 1),
(320, 18, 'Auyo', 1),
(321, 18, 'Babura', 1),
(322, 18, 'Biriniwa', 1),
(323, 18, 'Birnin Kudu', 1),
(324, 18, 'Buji', 1),
(325, 18, 'Dutse', 1),
(326, 18, 'Gagarawa', 1),
(327, 18, 'Garki', 1),
(328, 18, 'Gumel', 1),
(329, 18, 'Guri', 1),
(330, 18, 'Gwaram', 1),
(331, 18, 'Gwiwa', 1),
(332, 18, 'Hadejia', 1),
(333, 18, 'Jahun', 1),
(334, 18, 'Kafin Hausa', 1),
(335, 18, 'Kazaure', 1),
(336, 18, 'Kiri Kasama', 1),
(337, 18, 'Kiyawa', 1),
(338, 18, 'Kaugama', 1),
(339, 18, 'Maigatari', 1),
(340, 18, 'Malam Madori', 1),
(341, 18, 'Miga', 1),
(342, 18, 'Ringim', 1),
(343, 18, 'Roni', 1),
(344, 18, 'Sule Tankarkar', 1),
(345, 18, 'Taura', 1),
(346, 18, 'Yankwashi', 1),
(347, 19, 'Birnin Gwari', 1),
(348, 19, 'Chikun', 1),
(349, 19, 'Giwa', 1),
(350, 19, 'Igabi', 1),
(351, 19, 'Ikara', 1),
(352, 19, 'Jaba', 1),
(353, 19, 'Jema\'a', 1),
(354, 19, 'Kachia', 1),
(355, 19, 'Kaduna North', 1),
(356, 19, 'Kaduna South', 1),
(357, 19, 'Kagarko', 1),
(358, 19, 'Kajuru', 1),
(359, 19, 'Kaura', 1),
(360, 19, 'Kauru', 1),
(361, 19, 'Kubau', 1),
(362, 19, 'Kudan', 1),
(363, 19, 'Lere', 1),
(364, 19, 'Makarfi', 1),
(365, 19, 'Sabon Gari', 1),
(366, 19, 'Sanga', 1),
(367, 19, 'Soba', 1),
(368, 19, 'Zangon Kataf', 1),
(369, 19, 'Zaria', 1),
(370, 20, 'Ajingi', 1),
(371, 20, 'Albasu', 1),
(372, 20, 'Bagwai', 1),
(373, 20, 'Bebeji', 1),
(374, 20, 'Bichi', 1),
(375, 20, 'Bunkure', 1),
(376, 20, 'Dala', 1),
(377, 20, 'Dambatta', 1),
(378, 20, 'Dawakin Kudu', 1),
(379, 20, 'Dawakin Tofa', 1),
(380, 20, 'Doguwa', 1),
(381, 20, 'Fagge', 1),
(382, 20, 'Gabasawa', 1),
(383, 20, 'Garko', 1),
(384, 20, 'Garun Mallam', 1),
(385, 20, 'Gaya', 1),
(386, 20, 'Gezawa', 1),
(387, 20, 'Gwale', 1),
(388, 20, 'Gwarzo', 1),
(389, 20, 'Kabo', 1),
(390, 20, 'Kano Municipal', 1),
(391, 20, 'Karaye', 1),
(392, 20, 'Kibiya', 1),
(393, 20, 'Kiru', 1),
(394, 20, 'Kumbotso', 1),
(395, 20, 'Kunchi', 1),
(396, 20, 'Kura', 1),
(397, 20, 'Madobi', 1),
(398, 20, 'Makoda', 1),
(399, 20, 'Minjibir', 1),
(400, 20, 'Nasarawa', 1),
(401, 20, 'Rano', 1),
(402, 20, 'Rimin Gado', 1),
(403, 20, 'Rogo', 1),
(404, 20, 'Shanono', 1),
(405, 20, 'Sumaila', 1),
(406, 20, 'Takai', 1),
(407, 20, 'Tarauni', 1),
(408, 20, 'Tofa', 1),
(409, 20, 'Tsanyawa', 1),
(410, 20, 'Tudun Wada', 1),
(411, 20, 'Ungogo', 1),
(412, 20, 'Warawa', 1),
(413, 20, 'Wudil', 1),
(414, 21, 'Bakori', 1),
(415, 21, 'Batagarawa', 1),
(416, 21, 'Batsari', 1),
(417, 21, 'Baure', 1),
(418, 21, 'Bindawa', 1),
(419, 21, 'Charanchi', 1),
(420, 21, 'Dandume', 1),
(421, 21, 'Danja', 1),
(422, 21, 'Dan Musa', 1),
(423, 21, 'Daura', 1),
(424, 21, 'Dutsi', 1),
(425, 21, 'Dutsin Ma', 1),
(426, 21, 'Faskari', 1),
(427, 21, 'Funtua', 1),
(428, 21, 'Ingawa', 1),
(429, 21, 'Jibia', 1),
(430, 21, 'Kafur', 1),
(431, 21, 'Kaita', 1),
(432, 21, 'Kankara', 1),
(433, 21, 'Kankia', 1),
(434, 21, 'Katsina', 1),
(435, 21, 'Kurfi', 1),
(436, 21, 'Kusada', 1),
(437, 21, 'Mai\'Adua', 1),
(438, 21, 'Malumfashi', 1),
(439, 21, 'Mani', 1),
(440, 21, 'Mashi', 1),
(441, 21, 'Matazu', 1),
(442, 21, 'Musawa', 1),
(443, 21, 'Rimi', 1),
(444, 21, 'Sabuwa', 1),
(445, 21, 'Safana', 1),
(446, 21, 'Sandamu', 1),
(447, 21, 'Zango', 1),
(448, 22, 'Aleiro', 1),
(449, 22, 'Arewa Dandi', 1),
(450, 22, 'Argungu', 1),
(451, 22, 'Augie', 1),
(452, 22, 'Bagudo', 1),
(453, 22, 'Birnin Kebbi', 1),
(454, 22, 'Bunza', 1),
(455, 22, 'Dandi', 1),
(456, 22, 'Fakai', 1),
(457, 22, 'Gwandu', 1),
(458, 22, 'Jega', 1),
(459, 22, 'Kalgo', 1),
(460, 22, 'Koko/Besse', 1),
(461, 22, 'Maiyama', 1),
(462, 22, 'Ngaski', 1),
(463, 22, 'Sakaba', 1),
(464, 22, 'Shanga', 1),
(465, 22, 'Suru', 1),
(466, 22, 'Wasagu/Danko', 1),
(467, 22, 'Yauri', 1),
(468, 22, 'Zuru', 1),
(469, 23, 'Adavi', 1),
(470, 23, 'Ajaokuta', 1),
(471, 23, 'Ankpa', 1),
(472, 23, 'Bassa', 1),
(473, 23, 'Dekina', 1),
(474, 23, 'Ibaji', 1),
(475, 23, 'Idah', 1),
(476, 23, 'Igalamela Odolu', 1),
(477, 23, 'Ijumu', 1),
(478, 23, 'Kabba/Bunu', 1),
(479, 23, 'Kogi', 1),
(480, 23, 'Lokoja', 1),
(481, 23, 'Mopa Muro', 1),
(482, 23, 'Ofu', 1),
(483, 23, 'Ogori/Magongo', 1),
(484, 23, 'Okehi', 1),
(485, 23, 'Okene', 1),
(486, 23, 'Olamaboro', 1),
(487, 23, 'Omala', 1),
(488, 23, 'Yagba East', 1),
(489, 23, 'Yagba West', 1),
(490, 24, 'Asa', 1),
(491, 24, 'Baruten', 1),
(492, 24, 'Edu', 1),
(493, 24, 'Ekiti, Kwara State', 1),
(494, 24, 'Ifelodun', 1),
(495, 24, 'Ilorin East', 1),
(496, 24, 'Ilorin South', 1),
(497, 24, 'Ilorin West', 1),
(498, 24, 'Irepodun', 1),
(499, 24, 'Isin', 1),
(500, 24, 'Kaiama', 1),
(501, 24, 'Moro', 1),
(502, 24, 'Offa', 1),
(503, 24, 'Oke Ero', 1),
(504, 24, 'Oyun', 1),
(505, 24, 'Pategi', 1),
(506, 25, 'Agege', 1),
(507, 25, 'Ajeromi-Ifelodun', 1),
(508, 25, 'Alimosho', 1),
(509, 25, 'Amuwo-Odofin', 1),
(510, 25, 'Apapa', 1),
(511, 25, 'Badagry', 1),
(512, 25, 'Epe', 1),
(513, 25, 'Eti Osa', 1),
(514, 25, 'Ibeju-Lekki', 1),
(515, 25, 'Ifako-Ijaiye', 1),
(516, 25, 'Ikeja', 1),
(517, 25, 'Ikorodu', 1),
(518, 25, 'Kosofe', 1),
(519, 25, 'Lagos Island', 1),
(520, 25, 'Lagos Mainland', 1),
(521, 25, 'Mushin', 1),
(522, 25, 'Ojo', 1),
(523, 25, 'Oshodi-Isolo', 1),
(524, 25, 'Shomolu', 1),
(525, 25, 'Surulere, Lagos State', 1),
(526, 26, 'Akwanga', 1),
(527, 26, 'Awe', 1),
(528, 26, 'Doma', 1),
(529, 26, 'Karu', 1),
(530, 26, 'Keana', 1),
(531, 26, 'Keffi', 1),
(532, 26, 'Kokona', 1),
(533, 26, 'Lafia', 1),
(534, 26, 'Nasarawa', 1),
(535, 26, 'Nasarawa Egon', 1),
(536, 26, 'Obi', 1),
(537, 26, 'Toto', 1),
(538, 26, 'Wamba', 1),
(539, 27, 'Agaie', 1),
(540, 27, 'Agwara', 1),
(541, 27, 'Bida', 1),
(542, 27, 'Borgu', 1),
(543, 27, 'Bosso', 1),
(544, 27, 'Chanchaga', 1),
(545, 27, 'Edati', 1),
(546, 27, 'Gbako', 1),
(547, 27, 'Gurara', 1),
(548, 27, 'Katcha', 1),
(549, 27, 'Kontagora', 1),
(550, 27, 'Lapai', 1),
(551, 27, 'Lavun', 1),
(552, 27, 'Magama', 1),
(553, 27, 'Mariga', 1),
(554, 27, 'Mashegu', 1),
(555, 27, 'Mokwa', 1),
(556, 27, 'Moya', 1),
(557, 27, 'Paikoro', 1),
(558, 27, 'Rafi', 1),
(559, 27, 'Rijau', 1),
(560, 27, 'Shiroro', 1),
(561, 27, 'Suleja', 1),
(562, 27, 'Tafa', 1),
(563, 27, 'Wushishi', 1),
(564, 28, 'Abeokuta North', 1),
(565, 28, 'Abeokuta South', 1),
(566, 28, 'Ado-Odo/Ota', 1),
(567, 28, 'Egbado North', 1),
(568, 28, 'Egbado South', 1),
(569, 28, 'Ewekoro', 1),
(570, 28, 'Ifo', 1),
(571, 28, 'Ijebu East', 1),
(572, 28, 'Ijebu North', 1),
(573, 28, 'Ijebu North East', 1),
(574, 28, 'Ijebu Ode', 1),
(575, 28, 'Ikenne', 1),
(576, 28, 'Imeko Afon', 1),
(577, 28, 'Ipokia', 1),
(578, 28, 'Obafemi Owode', 1),
(579, 28, 'Odeda', 1),
(580, 28, 'Odogbolu', 1),
(581, 28, 'Ogun Waterside', 1),
(582, 28, 'Remo North', 1),
(583, 28, 'Shagamu', 1),
(584, 29, 'Akoko North-East', 1),
(585, 29, 'Akoko North-West', 1),
(586, 29, 'Akoko South-West', 1),
(587, 29, 'Akoko South-East', 1),
(588, 29, 'Akure North', 1),
(589, 29, 'Akure South', 1),
(590, 29, 'Ese Odo', 1),
(591, 29, 'Idanre', 1),
(592, 29, 'Ifedore', 1),
(593, 29, 'Ilaje', 1),
(594, 29, 'Ile Oluji/Okeigbo', 1),
(595, 29, 'Irele', 1),
(596, 29, 'Odigbo', 1),
(597, 29, 'Okitipupa', 1),
(598, 29, 'Ondo East', 1),
(599, 29, 'Ondo West', 1),
(600, 29, 'Ose', 1),
(601, 29, 'Owo', 1),
(602, 30, 'Atakunmosa East', 1),
(603, 30, 'Atakunmosa West', 1),
(604, 30, 'Aiyedaade', 1),
(605, 30, 'Aiyedire', 1),
(606, 30, 'Boluwaduro', 1),
(607, 30, 'Boripe', 1),
(608, 30, 'Ede North', 1),
(609, 30, 'Ede South', 1),
(610, 30, 'Ife Central', 1),
(611, 30, 'Ife East', 1),
(612, 30, 'Ife North', 1),
(613, 30, 'Ife South', 1),
(614, 30, 'Egbedore', 1),
(615, 30, 'Ejigbo', 1),
(616, 30, 'Ifedayo', 1),
(617, 30, 'Ifelodun', 1),
(618, 30, 'Ila', 1),
(619, 30, 'Ilesa East', 1),
(620, 30, 'Ilesa West', 1),
(621, 30, 'Irepodun', 1),
(622, 30, 'Irewole', 1),
(623, 30, 'Isokan', 1),
(624, 30, 'Iwo', 1),
(625, 30, 'Obokun', 1),
(626, 30, 'Odo Otin', 1),
(627, 30, 'Ola Oluwa', 1),
(628, 30, 'Olorunda', 1),
(629, 30, 'Oriade', 1),
(630, 30, 'Orolu', 1),
(631, 30, 'Osogbo', 1),
(632, 31, 'Afijio', 1),
(633, 31, 'Akinyele', 1),
(634, 31, 'Atiba', 1),
(635, 31, 'Atisbo', 1),
(636, 31, 'Egbeda', 1),
(637, 31, 'Ibadan North', 1),
(638, 31, 'Ibadan North-East', 1),
(639, 31, 'Ibadan North-West', 1),
(640, 31, 'Ibadan South-East', 1),
(641, 31, 'Ibadan South-West', 1),
(642, 31, 'Ibarapa Central', 1),
(643, 31, 'Ibarapa East', 1),
(644, 31, 'Ibarapa North', 1),
(645, 31, 'Ido', 1),
(646, 31, 'Irepo', 1),
(647, 31, 'Iseyin', 1),
(648, 31, 'Itesiwaju', 1),
(649, 31, 'Iwajowa', 1),
(650, 31, 'Kajola', 1),
(651, 31, 'Lagelu', 1),
(652, 31, 'Ogbomosho North', 1),
(653, 31, 'Ogbomosho South', 1),
(654, 31, 'Ogo Oluwa', 1),
(655, 31, 'Olorunsogo', 1),
(656, 31, 'Oluyole', 1),
(657, 31, 'Ona Ara', 1),
(658, 31, 'Orelope', 1),
(659, 31, 'Ori Ire', 1),
(660, 31, 'Oyo', 1),
(661, 31, 'Oyo East', 1),
(662, 31, 'Saki East', 1),
(663, 31, 'Saki West', 1),
(664, 31, 'Surulere, Oyo State', 1),
(665, 32, 'Bokkos', 1),
(666, 32, 'Barkin Ladi', 1),
(667, 32, 'Bassa', 1),
(668, 32, 'Jos East', 1),
(669, 32, 'Jos North', 1),
(670, 32, 'Jos South', 1),
(671, 32, 'Kanam', 1),
(672, 32, 'Kanke', 1),
(673, 32, 'Langtang South', 1),
(674, 32, 'Langtang North', 1),
(675, 32, 'Mangu', 1),
(676, 32, 'Mikang', 1),
(677, 32, 'Pankshin', 1),
(678, 32, 'Qua\'an Pan', 1),
(679, 32, 'Riyom', 1),
(680, 32, 'Shendam', 1),
(681, 32, 'Wase', 1),
(682, 33, 'Abua/Odual', 1),
(683, 33, 'Ahoada East', 1),
(684, 33, 'Ahoada West', 1),
(685, 33, 'Akuku-Toru', 1),
(686, 33, 'Andoni', 1),
(687, 33, 'Asari-Toru', 1),
(688, 33, 'Bonny', 1),
(689, 33, 'Degema', 1),
(690, 33, 'Eleme', 1),
(691, 33, 'Emuoha', 1),
(692, 33, 'Etche', 1),
(693, 33, 'Gokana', 1),
(694, 33, 'Ikwerre', 1),
(695, 33, 'Khana', 1),
(696, 33, 'Obio/Akpor', 1),
(697, 33, 'Ogba/Egbema/Ndoni', 1),
(698, 33, 'Ogu/Bolo', 1),
(699, 33, 'Okrika', 1),
(700, 33, 'Omuma', 1),
(701, 33, 'Opobo/Nkoro', 1),
(702, 33, 'Oyigbo', 1),
(703, 33, 'Port Harcourt', 1),
(704, 33, 'Tai', 1),
(705, 34, 'Binji', 1),
(706, 34, 'Bodinga', 1),
(707, 34, 'Dange Shuni', 1),
(708, 34, 'Gada', 1),
(709, 34, 'Goronyo', 1),
(710, 34, 'Gudu', 1),
(711, 34, 'Gwadabawa', 1),
(712, 34, 'Illela', 1),
(713, 34, 'Isa', 1),
(714, 34, 'Kebbe', 1),
(715, 34, 'Kware', 1),
(716, 34, 'Rabah', 1),
(717, 34, 'Sabon Birni', 1),
(718, 34, 'Shagari', 1),
(719, 34, 'Silame', 1),
(720, 34, 'Sokoto North', 1),
(721, 34, 'Sokoto South', 1),
(722, 34, 'Tambuwal', 1),
(723, 34, 'Tangaza', 1),
(724, 34, 'Tureta', 1),
(725, 34, 'Wamako', 1),
(726, 34, 'Wurno', 1),
(727, 34, 'Yabo', 1),
(728, 35, 'Ardo Kola', 1),
(729, 35, 'Bali', 1),
(730, 35, 'Donga', 1),
(731, 35, 'Gashaka', 1),
(732, 35, 'Gassol', 1),
(733, 35, 'Ibi', 1),
(734, 35, 'Jalingo', 1),
(735, 35, 'Karim Lamido', 1),
(736, 35, 'Kumi', 1),
(737, 35, 'Lau', 1),
(738, 35, 'Sardauna', 1),
(739, 35, 'Takum', 1),
(740, 35, 'Ussa', 1),
(741, 35, 'Wukari', 1),
(742, 35, 'Yorro', 1),
(743, 35, 'Zing', 1),
(744, 36, 'Bade', 1),
(745, 36, 'Bursari', 1),
(746, 36, 'Damaturu', 1),
(747, 36, 'Fika', 1),
(748, 36, 'Fune', 1),
(749, 36, 'Geidam', 1),
(750, 36, 'Gujba', 1),
(751, 36, 'Gulani', 1),
(752, 36, 'Jakusko', 1),
(753, 36, 'Karasuwa', 1),
(754, 36, 'Machina', 1),
(755, 36, 'Nangere', 1),
(756, 36, 'Nguru', 1),
(757, 36, 'Potiskum', 1),
(758, 36, 'Tarmuwa', 1),
(759, 36, 'Yunusari', 1),
(760, 36, 'Yusufari', 1),
(761, 37, 'Anka', 1),
(762, 37, 'Bakura', 1),
(763, 37, 'Birnin Magaji/Kiyaw', 1),
(764, 37, 'Bukkuyum', 1),
(765, 37, 'Bungudu', 1),
(766, 37, 'Gummi', 1),
(767, 37, 'Gusau', 1),
(768, 37, 'Kaura Namoda', 1),
(769, 37, 'Maradun', 1),
(770, 37, 'Maru', 1),
(771, 37, 'Shinkafi', 1),
(772, 37, 'Talata Mafara', 1),
(773, 37, 'Chafe', 1),
(774, 37, 'Zurmi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `status`) VALUES
(1, 'GSK', 1),
(2, 'Abbot', 1),
(3, 'asdasd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `maritial_status`
--

CREATE TABLE `maritial_status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maritial_status`
--

INSERT INTO `maritial_status` (`id`, `name`, `status`) VALUES
(1, 'Single', 1),
(2, 'Married', 1),
(3, 'Divorced', 1),
(4, 'Partner', 1),
(5, 'Common law', 1),
(6, 'Civil partnership', 1),
(7, 'Separated', 1),
(8, 'Widowed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `material` int(11) NOT NULL,
  `cost` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `order_id`, `prescription_id`, `material`, `cost`, `quantity`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 0, 1, '10', 5, '2016-10-10 17:11:30', '0000-00-00 00:00:00', 1),
(2, 1, 0, 2, '20', 15, '2016-10-10 17:11:30', '0000-00-00 00:00:00', 1),
(3, 1, 0, 1, '10', 5, '2016-10-10 17:16:58', '0000-00-00 00:00:00', 1),
(4, 1, 0, 2, '20', 15, '2016-10-10 17:16:58', '0000-00-00 00:00:00', 1),
(5, 1, 0, 5, '969690', 32323, '2016-10-10 17:18:26', '0000-00-00 00:00:00', 1),
(6, 1, 0, 5, '7020', 234, '2016-10-10 17:31:56', '0000-00-00 00:00:00', 1),
(7, 1, 0, 5, '9990', 333, '2016-10-10 17:31:56', '0000-00-00 00:00:00', 1),
(8, 1, 0, 5, '360', 12, '2016-10-10 18:09:34', '0000-00-00 00:00:00', 1),
(9, 11, 0, 5, '60', 2, '2016-10-11 20:35:50', '0000-00-00 00:00:00', 1),
(10, 11, 0, 5, '60', 2, '2016-10-13 20:50:10', '0000-00-00 00:00:00', 1),
(11, 11, 0, 5, '60', 2, '2016-10-13 20:50:11', '0000-00-00 00:00:00', 1),
(12, 11, 0, 5, '60', 2, '2016-10-13 20:50:13', '0000-00-00 00:00:00', 1),
(13, 11, 0, 5, '60', 2, '2016-10-13 20:50:13', '0000-00-00 00:00:00', 1),
(14, 11, 0, 5, '60', 2, '2016-10-13 20:50:13', '0000-00-00 00:00:00', 1),
(15, 11, 0, 5, '60', 2, '2016-10-13 20:50:13', '0000-00-00 00:00:00', 1),
(16, 11, 0, 5, '60', 2, '2016-10-13 20:50:13', '0000-00-00 00:00:00', 1),
(17, 11, 0, 5, '60', 2, '2016-10-13 20:50:13', '0000-00-00 00:00:00', 1),
(18, 11, 0, 5, '60', 2, '2016-10-13 20:50:14', '0000-00-00 00:00:00', 1),
(19, 11, 0, 5, '60', 2, '2016-10-13 20:50:14', '0000-00-00 00:00:00', 1),
(20, 11, 0, 5, '60', 2, '2016-10-13 20:50:14', '0000-00-00 00:00:00', 1),
(21, 11, 0, 5, '60', 2, '2016-10-13 20:50:14', '0000-00-00 00:00:00', 1),
(22, 11, 0, 5, '60', 2, '2016-10-13 20:50:15', '0000-00-00 00:00:00', 1),
(23, 11, 0, 5, '60', 2, '2016-10-13 20:50:15', '0000-00-00 00:00:00', 1),
(24, 11, 0, 5, '60', 2, '2016-10-13 20:50:15', '0000-00-00 00:00:00', 1),
(25, 11, 0, 5, '60', 2, '2016-10-13 20:50:16', '0000-00-00 00:00:00', 1),
(26, 11, 0, 5, '60', 2, '2016-10-13 20:50:16', '0000-00-00 00:00:00', 1),
(27, 11, 0, 5, '60', 2, '2016-10-13 20:50:16', '0000-00-00 00:00:00', 1),
(28, 11, 0, 5, '60', 2, '2016-10-13 20:53:53', '0000-00-00 00:00:00', 1),
(29, 11, 0, 5, '60', 2, '2016-10-13 20:54:07', '0000-00-00 00:00:00', 1),
(30, 11, 0, 5, '0', 0, '2016-10-13 20:54:07', '0000-00-00 00:00:00', 1),
(31, 11, 0, 5, '60', 2, '2016-10-14 05:47:51', '0000-00-00 00:00:00', 1),
(32, 11, 0, 5, '0', 0, '2016-10-14 05:47:51', '0000-00-00 00:00:00', 1),
(33, 11, 0, 5, '30', 1, '2016-10-14 05:47:51', '0000-00-00 00:00:00', 1),
(34, 11, 0, 5, '60', 2, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(35, 11, 0, 5, '0', 0, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(36, 11, 0, 5, '30', 1, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(37, 11, 0, 5, '60', 2, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(38, 11, 0, 5, '0', 0, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(39, 11, 0, 5, '30', 1, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(40, 11, 0, 5, '60', 2, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(41, 11, 0, 5, '0', 0, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(42, 11, 0, 5, '30', 1, '2016-10-14 05:47:52', '0000-00-00 00:00:00', 1),
(43, 11, 0, 5, '60', 2, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(44, 11, 0, 5, '0', 0, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(45, 11, 0, 5, '30', 1, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(46, 11, 0, 5, '60', 2, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(47, 11, 0, 5, '0', 0, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(48, 11, 0, 5, '30', 1, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(49, 11, 0, 5, '60', 2, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(50, 11, 0, 5, '0', 0, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(51, 11, 0, 5, '30', 1, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(52, 11, 0, 5, '60', 2, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(53, 11, 0, 5, '0', 0, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(54, 11, 0, 5, '30', 1, '2016-10-14 05:47:53', '0000-00-00 00:00:00', 1),
(55, 11, 0, 5, '60', 2, '2016-10-14 05:47:54', '0000-00-00 00:00:00', 1),
(56, 11, 0, 5, '0', 0, '2016-10-14 05:47:54', '0000-00-00 00:00:00', 1),
(57, 11, 0, 5, '30', 1, '2016-10-14 05:47:54', '0000-00-00 00:00:00', 1),
(58, 11, 0, 5, '60', 2, '2016-10-14 05:47:54', '0000-00-00 00:00:00', 1),
(59, 11, 0, 5, '0', 0, '2016-10-14 05:47:54', '0000-00-00 00:00:00', 1),
(60, 11, 0, 5, '30', 1, '2016-10-14 05:47:54', '0000-00-00 00:00:00', 1),
(61, 11, 0, 5, '120', 4, '2016-10-14 05:48:59', '0000-00-00 00:00:00', 1),
(62, 7, 0, 5, '60', 2, '2016-10-17 10:08:26', '0000-00-00 00:00:00', 1),
(63, 7, 0, 5, '60', 2, '2016-10-17 10:08:35', '0000-00-00 00:00:00', 1),
(64, 1, 0, 1, '0', 5, '2016-10-20 07:21:19', '0000-00-00 00:00:00', 1),
(65, 4, 0, 5, '1680', 56, '2016-10-20 08:07:49', '0000-00-00 00:00:00', 1),
(66, 7, 0, 8, '0', 5, '2016-10-25 13:17:37', '0000-00-00 00:00:00', 1),
(67, 7, 0, 6, '0', 5, '2016-10-25 13:18:55', '0000-00-00 00:00:00', 1),
(68, 7, 0, 6, '0', 7, '2016-10-25 13:20:29', '0000-00-00 00:00:00', 1),
(69, 7, 0, 6, '0', 5, '2016-10-25 13:43:09', '0000-00-00 00:00:00', 1),
(70, 18, 0, 6, '0', 2, '2016-10-27 12:48:59', '0000-00-00 00:00:00', 1),
(71, 1, 0, 5, '690', 23, '2016-11-10 14:37:12', '0000-00-00 00:00:00', 1),
(72, 0, 6, 1, '0', 1, '2016-11-10 14:59:29', '0000-00-00 00:00:00', 1),
(73, 0, 6, 8, '0', 11, '2016-11-10 14:59:29', '0000-00-00 00:00:00', 1),
(74, 0, 6, 11, '0', 2, '2016-11-10 14:59:29', '0000-00-00 00:00:00', 1),
(75, 0, 6, 5, '30', 1, '2016-11-10 15:02:10', '0000-00-00 00:00:00', 1),
(76, 0, 6, 8, '0', 11, '2016-11-10 15:02:10', '0000-00-00 00:00:00', 1),
(77, 0, 18, 5, '120', 4, '2016-11-16 13:50:14', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `patient_id` int(30) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `supplements` varchar(40) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `dosage` varchar(40) NOT NULL,
  `frequency` varchar(30) NOT NULL,
  `intake` varchar(30) NOT NULL,
  `from_date` date NOT NULL,
  `medicine_status` varchar(40) NOT NULL,
  `to_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_inventory`
--

CREATE TABLE `medicine_inventory` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_units`
--

CREATE TABLE `medicine_units` (
  `id` int(11) NOT NULL,
  `dosage` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `route` varchar(40) NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `direction` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_units`
--

INSERT INTO `medicine_units` (`id`, `dosage`, `unit`, `route`, `frequency`, `direction`, `duration`, `created_at`, `updated_at`, `status`) VALUES
(1, 'n/a', 'grams(s)', 'single', '2 times a day', 'upside', 'days', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'apply', '', '', '', '', 'weeks', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'apply sparingly', '', '', '', '', 'months', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, '0.1', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, '0.25', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(6, '0.5', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(7, '1', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(8, '2', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(9, '3', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(10, '4', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(11, '1-2', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(12, '2-3', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(13, '2-4', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(14, '3-4', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(15, '5', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(16, '5-10', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(17, '6', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(18, '7', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `name`, `status`) VALUES
(1, 'Abraka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_investigation_billing_code`
--

CREATE TABLE `new_investigation_billing_code` (
  `id` int(11) NOT NULL,
  `investigation_type` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `charge` varchar(50) NOT NULL,
  `tax` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_investigation_billing_code`
--

INSERT INTO `new_investigation_billing_code` (`id`, `investigation_type`, `code`, `charge`, `tax`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'PA chest pain', '0021', '60', 1, 'this is the updated Investigation Billing Code', '2016-08-08 12:59:22', '2016-08-08 14:54:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `NHIS_BASIC`
--

CREATE TABLE `NHIS_BASIC` (
  `ID` int(11) NOT NULL,
  `health_facility` varchar(5) DEFAULT NULL,
  `month` varchar(5) DEFAULT NULL,
  `political_ward` varchar(5) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `lga` varchar(5) DEFAULT NULL,
  `status` varchar(8) NOT NULL,
  `state` varchar(5) DEFAULT NULL,
  `beds` varchar(5) DEFAULT NULL,
  `facilty_code1` varchar(5) DEFAULT NULL,
  `facilty_code2` varchar(5) DEFAULT NULL,
  `facilty_code3` varchar(5) DEFAULT NULL,
  `facilty_code4` varchar(5) DEFAULT NULL,
  `facilty_code5` varchar(5) DEFAULT NULL,
  `facilty_code6` varchar(5) DEFAULT NULL,
  `facilty_code7` varchar(5) DEFAULT NULL,
  `facilty_code8` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NHIS_DATA`
--

CREATE TABLE `NHIS_DATA` (
  `ID` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `health_facility_attendance0_28d` varchar(5) DEFAULT NULL,
  `health_facility_attendance29d_11m` varchar(5) DEFAULT NULL,
  `health_facility_attendance12_59m` varchar(5) DEFAULT NULL,
  `health_facility_attendance5_9_yrs` varchar(5) DEFAULT NULL,
  `health_facility_attendance10_19_yrs` varchar(5) DEFAULT NULL,
  `health_facility_attendance20_yrs` varchar(5) DEFAULT NULL,
  `health_facility_attendance_total` varchar(5) DEFAULT NULL,
  `opd_attendance_total` varchar(5) DEFAULT NULL,
  `antenatal_attendance_total` varchar(5) DEFAULT NULL,
  `antenatal_first_visit_before_20_weeks_total` varchar(5) DEFAULT NULL,
  `antenatal_visit_before_20_weeks` varchar(5) DEFAULT NULL,
  `tt1_preg` varchar(5) DEFAULT NULL,
  `tt1_non_preg` varchar(5) DEFAULT NULL,
  `tt2_preg` varchar(5) DEFAULT NULL,
  `tt2_non_preg` varchar(5) DEFAULT NULL,
  `tt3_preg` varchar(5) DEFAULT NULL,
  `tt3_non_preg` varchar(5) DEFAULT NULL,
  `tt4_preg` varchar(5) DEFAULT NULL,
  `tt5_preg` varchar(5) DEFAULT NULL,
  `tt5_non_preg` varchar(5) DEFAULT NULL,
  `preg_outcome_live_less_25_male` varchar(5) DEFAULT NULL,
  `preg_outcome_live_greater_25_male` varchar(5) DEFAULT NULL,
  `preg_outcome_live_less_25_female` varchar(5) DEFAULT NULL,
  `preg_outcome_live_greater_25_female` varchar(5) DEFAULT NULL,
  `preg_outcome_live_total` varchar(5) DEFAULT NULL,
  `preg_outcome_still_births` varchar(5) DEFAULT NULL,
  `preg_outcome_fresh_still_births` varchar(5) DEFAULT NULL,
  `preg_outcome_abortion_induced` varchar(5) DEFAULT NULL,
  `preg_outcome_abortion_total` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_birth_asphyxia_male` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_birth_asphyxia_female` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_birth_asphyxia_total` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_neonatal_sepsis_male` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_neonatal_sepsis_female` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_neonatal_sepsis_total` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_neonatal_tetanus_male` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_neonatal_jaundice_male` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_neonatal_jaundice_female` varchar(5) DEFAULT NULL,
  `preg_outcome_complications_neonatal_jaundice_total` varchar(5) DEFAULT NULL,
  `preg_outcome_low_birth_kms_male` varchar(5) DEFAULT NULL,
  `preg_outcome_low_birth_kms_female` varchar(5) DEFAULT NULL,
  `preg_outcome_low_birth_kms_total` varchar(5) DEFAULT NULL,
  `preg_outcome_low_birth_kms_discharged_male` varchar(5) DEFAULT NULL,
  `preg_outcome_low_birth_kms_discharged_female` varchar(5) DEFAULT NULL,
  `preg_outcome_low_birth_kms_discharged_total` varchar(5) DEFAULT NULL,
  `opv_0_birth_fixed_less_1year` varchar(5) DEFAULT NULL,
  `opv_0_birth_outreached_less_1year` varchar(5) DEFAULT NULL,
  `opv_0_birth_total` varchar(5) DEFAULT NULL,
  `hep_0_birth_fixed_less_1year` varchar(5) DEFAULT NULL,
  `hep_0_birth_outreach_less_1year` varchar(5) DEFAULT NULL,
  `bcg_fixed_less_1year` varchar(5) DEFAULT NULL,
  `bcg_outreach_less_1year` varchar(5) DEFAULT NULL,
  `bcg_total` varchar(5) DEFAULT NULL,
  `opv_fixed_less_1year` varchar(5) DEFAULT NULL,
  `opv_outreach_less_1year` varchar(5) DEFAULT NULL,
  `opv_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `opv_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `opv_total` varchar(5) DEFAULT NULL,
  `hep_b1_fixed_less_1year` varchar(5) DEFAULT NULL,
  `hep_b1_outreach_less_1year` varchar(5) DEFAULT NULL,
  `hep_b1_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `hep_b1_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `hep_b1_total` varchar(5) DEFAULT NULL,
  `penta_1_fixed_less_1year` varchar(5) DEFAULT NULL,
  `penta_1_outreach_less_1year` varchar(5) DEFAULT NULL,
  `penta_1_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `penta_1_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `penta_1_total` varchar(5) DEFAULT NULL,
  `dpt1_not_using_penta_fixed_less_1year` varchar(5) DEFAULT NULL,
  `dpt1_not_using_penta_outreach_less_1year` varchar(5) DEFAULT NULL,
  `dpt1_not_using_penta_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `dpt1_not_using_penta_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `dpt1_not_using_penta_total` varchar(5) DEFAULT NULL,
  `pcv1_fixed_less_1year` varchar(5) DEFAULT NULL,
  `pcv1_outreach_less_1year` varchar(5) DEFAULT NULL,
  `pcv1_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `pcv1_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `pcv1_total` varchar(5) DEFAULT NULL,
  `opv_2_fixed_fixed_less_1year` varchar(5) DEFAULT NULL,
  `opv_2_fixed_outreach_less_1year` varchar(5) DEFAULT NULL,
  `opv_2_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `opv_2_fixed_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `opv_2_total` varchar(5) DEFAULT NULL,
  `hep_b2_fixed_less_1year` varchar(5) DEFAULT NULL,
  `hep_b2_outreach_less_1year` varchar(5) DEFAULT NULL,
  `hep_b2_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `hep_b2_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `hep_b2_total` varchar(5) DEFAULT NULL,
  `penta_2_fixed_less_1year` varchar(5) DEFAULT NULL,
  `penta_2_outreach_less_1year` varchar(5) DEFAULT NULL,
  `penta_2_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `penta_2_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `penta_2_total` varchar(5) DEFAULT NULL,
  `dpt2_not_using_penta_fixed_less_1year` varchar(5) DEFAULT NULL,
  `dpt2_not_using_penta_outreach_less_1year` varchar(5) DEFAULT NULL,
  `dpt2_not_using_penta_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `dpt2_not_using_penta_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `dpt2_not_using_penta_total` varchar(5) DEFAULT NULL,
  `pcv2_fixed_less_1year` varchar(5) DEFAULT NULL,
  `pcv2_outreach_less_1year` varchar(5) DEFAULT NULL,
  `pcv2_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `pcv2_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `pcv2_total` varchar(5) DEFAULT NULL,
  `opv_3_fixed_less_1year` varchar(5) DEFAULT NULL,
  `opv_3_outreach_less_1year` varchar(5) DEFAULT NULL,
  `opv_3_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `opv_3_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `opv_3_total` varchar(5) DEFAULT NULL,
  `penta_3_fixed_less_1year` varchar(5) DEFAULT NULL,
  `penta_3_outreach_less_1year` varchar(5) DEFAULT NULL,
  `penta_3_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `penta_3_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `penta_3_total` varchar(5) DEFAULT NULL,
  `dpt3_not_using_penta_fixed_less_1year` varchar(5) DEFAULT NULL,
  `dpt3_not_using_penta_outreach_less_1year` varchar(5) DEFAULT NULL,
  `dpt3_not_using_penta_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `dpt3_not_using_penta_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `dpt3_not_using_penta_total` varchar(5) DEFAULT NULL,
  `pcv3_fixed_less_1year` varchar(5) DEFAULT NULL,
  `pcv3_outreach_less_1year` varchar(5) DEFAULT NULL,
  `pcv3_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `pcv3_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `pcv3_total` varchar(5) DEFAULT NULL,
  `measles1_fixed_less_1year` varchar(5) DEFAULT NULL,
  `measles1_outreach_less_1year` varchar(5) DEFAULT NULL,
  `measles1_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `measles1_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `measles1_total` varchar(5) DEFAULT NULL,
  `fully_immunized_fixed_less_1year` varchar(5) DEFAULT NULL,
  `fully_immunized_outreach_less_1year` varchar(5) DEFAULT NULL,
  `fully_immunized_total` varchar(5) DEFAULT NULL,
  `yellow_fever_fixed_less_1year` varchar(5) DEFAULT NULL,
  `yellow_fever_outreach_less_1year` varchar(5) DEFAULT NULL,
  `yellow_fever_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `yellow_fever_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `yellow_fever_total` varchar(5) DEFAULT NULL,
  `measles2_fixed_less_1year` varchar(5) DEFAULT NULL,
  `measles2_outreach_less_1year` varchar(5) DEFAULT NULL,
  `measles2_fixed_greater_1year` varchar(5) DEFAULT NULL,
  `measles2_outreach_greater_1year` varchar(5) DEFAULT NULL,
  `measles2_total` varchar(5) DEFAULT NULL,
  `conjugate_a_csm_fixed_less_1_year` varchar(5) DEFAULT NULL,
  `conjugate_a_csm_outreach_less_1_year` varchar(5) DEFAULT NULL,
  `conjugate_a_csm_fixed_greater_1_year` varchar(5) DEFAULT NULL,
  `conjugate_a_csm_outreach_greater_1_year` varchar(5) DEFAULT NULL,
  `conjugate_a_csm_total` varchar(5) DEFAULT NULL,
  `child_0to59_total_male` varchar(5) DEFAULT NULL,
  `child_0to59_total_female` varchar(5) DEFAULT NULL,
  `child_0to59_total` varchar(5) DEFAULT NULL,
  `child_0to59_below_bottomline_male` varchar(5) DEFAULT NULL,
  `child_0to59_below_bottomline_female` varchar(5) DEFAULT NULL,
  `child_0to59_below_bottomline_total` varchar(5) DEFAULT NULL,
  `child_0to6_rpeorting_being_exclusively_breast_fed_male` varchar(5) DEFAULT NULL,
  `child_0to6_rpeorting_being_exclusively_breast_fed_female` varchar(5) DEFAULT NULL,
  `child_0to6_rpeorting_being_exclusively_breast_fed_total` varchar(5) DEFAULT NULL,
  `child_6to11_given_vitmin_a_male` varchar(5) DEFAULT NULL,
  `child_6to11_given_vitmin_a_female` varchar(5) DEFAULT NULL,
  `child_6to11_given_vitmin_a_total` varchar(5) DEFAULT NULL,
  `child_12to59_given_vitmin_a_male` varchar(5) DEFAULT NULL,
  `child_12to59_given_vitmin_a_female` varchar(5) DEFAULT NULL,
  `child_12to59_given_vitmin_a_total` varchar(5) DEFAULT NULL,
  `child_12to59_deworming_medications_male` varchar(5) DEFAULT NULL,
  `child_12to59_deworming_medications_female` varchar(5) DEFAULT NULL,
  `child_12to59_deworming_medications_total` varchar(5) DEFAULT NULL,
  `child_less_5years_otp_sc_male` varchar(5) DEFAULT NULL,
  `child_less_5years_otp_sc_female` varchar(5) DEFAULT NULL,
  `child_less_5years_otp_sc_total` varchar(5) DEFAULT NULL,
  `child_less_5years_recovered_male` varchar(5) DEFAULT NULL,
  `child_less_5years_recovered_female` varchar(5) DEFAULT NULL,
  `child_less_5years_recovered_total` varchar(5) DEFAULT NULL,
  `child_admitted_cmam_program_male` varchar(5) DEFAULT NULL,
  `child_admitted_cmam_program_female` varchar(5) DEFAULT NULL,
  `child_admitted_cmam_program_total` varchar(5) DEFAULT NULL,
  `child_default_cmam_program_male` varchar(5) DEFAULT NULL,
  `child_default_cmam_program_female` varchar(5) DEFAULT NULL,
  `child_default_cmam_program_total` varchar(5) DEFAULT NULL,
  `malaria_child_5year_lln` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_male` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_female` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_total` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_oral_rehydration_male` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_oral_rehydration_female` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_oral_rehydration_total` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_ors_zinc_male` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_ors_zinc_female` varchar(5) DEFAULT NULL,
  `diarrhoea_new_case_less_5years_ors_zinc_total` varchar(5) DEFAULT NULL,
  `pneumonia_new_case_less_5years_male` varchar(5) DEFAULT NULL,
  `pneumonia_new_case_less_5years_female` varchar(5) DEFAULT NULL,
  `pneumonia_new_case_less_5years_total` varchar(5) DEFAULT NULL,
  `pneumonia_new_case_less_given_amoxyl_dt_5years_male` varchar(5) DEFAULT NULL,
  `pneumonia_new_case_less_given_amoxyl_dt_5years_female` varchar(5) DEFAULT NULL,
  `pneumonia_new_case_less_given_amoxyl_dt_5years_total` varchar(5) DEFAULT NULL,
  `measles_new_case_less_5years_male` varchar(5) DEFAULT NULL,
  `measles_new_case_less_5years_female` varchar(5) DEFAULT NULL,
  `measles_new_case_less_5years_total` varchar(5) DEFAULT NULL,
  `fmly_planning_client_counselled_male` varchar(5) DEFAULT NULL,
  `fmly_planning_client_counselled_female` varchar(5) DEFAULT NULL,
  `fmly_planning_client_counselled_total` varchar(5) DEFAULT NULL,
  `new_fmly_planning_acceptors_male` varchar(5) DEFAULT NULL,
  `new_fmly_planning_acceptors_female` varchar(5) DEFAULT NULL,
  `new_fmly_planning_acceptors_total` varchar(5) DEFAULT NULL,
  `fmly_planning_clients_hct_male` varchar(5) DEFAULT NULL,
  `fmly_planning_clients_hct_female` varchar(5) DEFAULT NULL,
  `fmly_planning_clients_hct_total` varchar(5) DEFAULT NULL,
  `fmly_planning_clients_art_refill_male` varchar(5) DEFAULT NULL,
  `fmly_planning_clients_art_refill_female` varchar(5) DEFAULT NULL,
  `fmly_planning_clients_art_refill_total` varchar(5) DEFAULT NULL,
  `fmly_planning_female_15to49_modern_contraception_male` varchar(5) DEFAULT NULL,
  `fmly_planning_female_15to49_modern_contraception_female` varchar(5) DEFAULT NULL,
  `fmly_planning_female_15to49_modern_contraception_total` varchar(5) DEFAULT NULL,
  `fmly_planning_given_oral_pill_total` varchar(5) DEFAULT NULL,
  `fmly_planning_oral_pill_dispensed_total` varchar(5) DEFAULT NULL,
  `fmly_planning_injectables_given_total` varchar(5) DEFAULT NULL,
  `fmly_planning_iucd_inserted_total` varchar(5) DEFAULT NULL,
  `fmly_planning_implants_inserted_total` varchar(5) DEFAULT NULL,
  `fmly_planning_sterilizations_total` varchar(5) DEFAULT NULL,
  `fmly_planning_male_condoms_total` varchar(5) DEFAULT NULL,
  `fmly_planning_female_condoms_total` varchar(5) DEFAULT NULL,
  `fmly_planning_pmtct_hiv_preg_total` varchar(5) DEFAULT NULL,
  `referral_in` varchar(5) DEFAULT NULL,
  `referral_out` varchar(5) DEFAULT NULL,
  `malaria_cases_referred_for_further_treatment` varchar(5) DEFAULT NULL,
  `malaria_cases_referred_for_adversedrug_reaction` varchar(5) DEFAULT NULL,
  `women_referred_out_for_Pregnancy_related_complications` varchar(5) DEFAULT NULL,
  `women_seen_and_referred_for_obstetric_fistula_vvf_rvf` varchar(5) DEFAULT NULL,
  `non_communicable_diseases` varchar(5) DEFAULT NULL,
  `coronary_heart_disease_new_cases` varchar(5) DEFAULT NULL,
  `diabetes_mellitus_new_cases` varchar(5) DEFAULT NULL,
  `hypertension_new_cases` varchar(5) DEFAULT NULL,
  `sickle_cell_disease_new_cases` varchar(5) DEFAULT NULL,
  `road_traffic_accident_new_cases` varchar(5) DEFAULT NULL,
  `home_accident_new_cases` varchar(5) DEFAULT NULL,
  `nake_bites_new_cases` varchar(5) DEFAULT NULL,
  `asthma_new_cases` varchar(5) DEFAULT NULL,
  `athritis_new_cases` varchar(5) DEFAULT NULL,
  `sti_treated_new_cases` varchar(5) DEFAULT NULL,
  `male_Urethritis_new_cases` varchar(5) DEFAULT NULL,
  `anc_anaemia_test_done` varchar(5) DEFAULT NULL,
  `anc_anaemia_test_positive` varchar(5) DEFAULT NULL,
  `anc_proteinuria_test_done` varchar(5) DEFAULT NULL,
  `anc_proteinuria_test_positive` varchar(5) DEFAULT NULL,
  `hiv_rapid_antibody_test_done` varchar(5) DEFAULT NULL,
  `Sputum_AFB_new_diagnostic_test_done_incl_relapse` varchar(5) DEFAULT NULL,
  `Sputum_AFB_new_diagnostic_test_done` varchar(5) DEFAULT NULL,
  `Functional_beds` varchar(5) DEFAULT NULL,
  `inpatient_days_total` varchar(5) DEFAULT NULL,
  `npatient_discharges_total` varchar(5) DEFAULT NULL,
  `Mortality` varchar(5) DEFAULT NULL,
  `deaths_of_women_related_to_pregnancy` varchar(5) DEFAULT NULL,
  `maternal_deaths_audited` varchar(5) DEFAULT NULL,
  `antepartum` varchar(5) DEFAULT NULL,
  `pre_eclampsia` varchar(5) DEFAULT NULL,
  `post_partum` varchar(5) DEFAULT NULL,
  `sepsis` varchar(5) DEFAULT NULL,
  `Obstructed` varchar(5) DEFAULT NULL,
  `Abortion` varchar(5) DEFAULT NULL,
  `maternal_malaria` varchar(5) DEFAULT NULL,
  `Anaemia` varchar(5) DEFAULT NULL,
  `HIV` varchar(5) DEFAULT NULL,
  `maternal_others` varchar(5) DEFAULT NULL,
  `asphyxia` varchar(5) DEFAULT NULL,
  `prematurity` varchar(5) DEFAULT NULL,
  `Neonatal` varchar(5) DEFAULT NULL,
  `diarrhoea` varchar(5) DEFAULT NULL,
  `congenital_alformation` varchar(5) DEFAULT NULL,
  `neonatal_others` varchar(5) DEFAULT NULL,
  `under5_death_malaria` varchar(5) DEFAULT NULL,
  `pneumonia` varchar(5) DEFAULT NULL,
  `malnutrition` varchar(5) DEFAULT NULL,
  `under5_death_others` varchar(5) DEFAULT NULL,
  `hiv_counselling_male_2yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_male_2_14yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_male_15_19yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_male_20_24yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_male_25_49yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_male_50yrs_above` varchar(5) DEFAULT NULL,
  `hiv_counselling_female_2yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_female_2_14yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_female_15_19yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_female_20_24yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_female_25_49yrs` varchar(5) DEFAULT NULL,
  `hiv_counselling_female_50yrs_above` varchar(5) DEFAULT NULL,
  `hiv_counselling_total` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_male_2yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_male_2_14yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_male_15_19yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_male_25_49yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_male_50yrs_above` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_female_2yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_female_2_14yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_female_15_19yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_female_20_24yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_female_25_49yrs` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_female_50yrs_above` varchar(5) DEFAULT NULL,
  `individuals_tested_HIV_total` varchar(5) DEFAULT NULL,
  `couples_hiv_counselled` varchar(5) DEFAULT NULL,
  `received_results_that_are_sero_discordant` varchar(5) DEFAULT NULL,
  `HIV_care_treatment` varchar(5) DEFAULT NULL,
  `SRH_HIV_integrated_services_male` varchar(5) DEFAULT NULL,
  `SRH_HIV_integrated_services_female` varchar(5) DEFAULT NULL,
  `SRH_HIV_integrated_services_total` varchar(5) DEFAULT NULL,
  `HCT_clients_FP_method_male` varchar(5) DEFAULT NULL,
  `HCT_clients_FP_method_female` varchar(5) DEFAULT NULL,
  `HCT_clients_FP_method_total` varchar(5) DEFAULT NULL,
  `HCT_clients_screened_for_STIs_male` varchar(5) DEFAULT NULL,
  `HCT_clients_screened_for_STIs_female` varchar(5) DEFAULT NULL,
  `HCT_clients_screened_for_STIs_total` varchar(5) DEFAULT NULL,
  `HCT_clients_treated_for_STIs_male` varchar(5) DEFAULT NULL,
  `HCT_clients_treated_for_STIs_female` varchar(5) DEFAULT NULL,
  `HCT_clients_treated_for_STIs_total` varchar(5) DEFAULT NULL,
  `SRH_HIV_Integrated_service_male` varchar(5) DEFAULT NULL,
  `SRH_HIV_Integrated_service_female` varchar(5) DEFAULT NULL,
  `SRH_HIV_Integrated_service_total` varchar(5) DEFAULT NULL,
  `TB_HIV_total_154` varchar(5) DEFAULT NULL,
  `TB_HIV_total_155` varchar(5) DEFAULT NULL,
  `TB_HIV_total_156` varchar(5) DEFAULT NULL,
  `TB_HIV_total_157` varchar(5) DEFAULT NULL,
  `TB_HIV_total_158` varchar(5) DEFAULT NULL,
  `TB_HIV_total_159` varchar(5) DEFAULT NULL,
  `TB_HIV_total_160` varchar(5) DEFAULT NULL,
  `TB_HIV_total_161` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_162a_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_162_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_163_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_164_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_165_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_166_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_167_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_168_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_169_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_170_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_171_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_172_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_173_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_174_total` varchar(5) DEFAULT NULL,
  `PMTCT_Mother_175_total` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_176_male` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_176_female` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_176_total` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_177_male` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_177_female` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_177_total` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_178_male` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_178_female` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_178_total` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_179_male` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_179_female` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_179_total` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_180_male` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_180_female` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_180_total` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_181_male` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_181_female` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_181_total` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_182_male` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_182_female` varchar(5) DEFAULT NULL,
  `PMTCT_Infant_182_total` varchar(5) DEFAULT NULL,
  `TB_cases_notified_male_0_4yrs` varchar(5) DEFAULT NULL,
  `TB_cases_notified_male_5_15yrs` varchar(5) DEFAULT NULL,
  `TB_cases_notified_male_grtr_15yrs` varchar(5) DEFAULT NULL,
  `TB_cases_notified_female_0_4yrs` varchar(5) DEFAULT NULL,
  `TB_cases_notified_female_5_15yrs` varchar(5) DEFAULT NULL,
  `TB_cases_notified_total` varchar(5) DEFAULT NULL,
  `male_0_4` varchar(5) DEFAULT NULL,
  `male_5_15` varchar(5) DEFAULT NULL,
  `male_grtr_15` varchar(5) DEFAULT NULL,
  `female_0_4` varchar(5) DEFAULT NULL,
  `female_5_15` varchar(5) DEFAULT NULL,
  `female_grtr_15` varchar(5) DEFAULT NULL,
  `total` varchar(5) DEFAULT NULL,
  `TB_male_0_4` varchar(5) DEFAULT NULL,
  `TB_male_5_15` varchar(5) DEFAULT NULL,
  `TB_male_grtr_15` varchar(5) DEFAULT NULL,
  `TB_female_0_4` varchar(5) DEFAULT NULL,
  `TB_female_5_15` varchar(5) DEFAULT NULL,
  `TB_female_grtr_15` varchar(5) DEFAULT NULL,
  `TB_total` varchar(5) DEFAULT NULL,
  `DR_TB_suspects_tested_for_DR_TB_male_0_4` varchar(5) DEFAULT NULL,
  `DR_TB_suspects_tested_for_DR_TB_male_5_15` varchar(5) DEFAULT NULL,
  `DR_TB_suspects_tested_for_DR_TB_male_grtr_15` varchar(5) DEFAULT NULL,
  `DR_TB_suspects_tested_for_DR_TB_female_0_4` varchar(5) DEFAULT NULL,
  `DR_TB_suspects_tested_for_DR_TB_female_5_15` varchar(5) DEFAULT NULL,
  `DR_TB_suspects_tested_for_DR_TB_female_grtr_15` varchar(5) DEFAULT NULL,
  `DR_TB_suspects_tested_for_DR_TB_total` varchar(5) DEFAULT NULL,
  `confirmed_DR_TB_patients_enrolled_for_treatment_male_0_4` varchar(5) DEFAULT NULL,
  `confirmed_DR_TB_patients_enrolled_for_treatment_male_5_15` varchar(5) DEFAULT NULL,
  `confirmed_DR_TB_patients_enrolled_for_treatment_male_grtr_15` varchar(5) DEFAULT NULL,
  `confirmed_DR_TB_patients_enrolled_for_treatment_female_0_4` varchar(5) DEFAULT NULL,
  `confirmed_DR_TB_patients_enrolled_for_treatment_female_5_15` varchar(5) DEFAULT NULL,
  `confirmed_DR_TB_patients_enrolled_for_treatment_female_grtr_15` varchar(5) DEFAULT NULL,
  `confirmed_DR_TB_patients_enrolled_for_treatment_total` varchar(5) DEFAULT NULL,
  `Leprosy_cases_registered_male_0_4` varchar(5) DEFAULT NULL,
  `Leprosy_cases_registered_male_5_15` varchar(5) DEFAULT NULL,
  `Leprosy_cases_registered_male_grtr_15` varchar(5) DEFAULT NULL,
  `Leprosy_cases_registered_female_0_4` varchar(5) DEFAULT NULL,
  `Leprosy_cases_registered_female_5_15` varchar(5) DEFAULT NULL,
  `Leprosy_cases_registered_female_grtr_15` varchar(5) DEFAULT NULL,
  `Leprosy_cases_registered_male_total` varchar(5) DEFAULT NULL,
  `Buruli_ulcer_patients_notified_male_0_4` varchar(5) DEFAULT NULL,
  `Buruli_ulcer_patients_notified_male_5_15` varchar(5) DEFAULT NULL,
  `Buruli_ulcer_patients_notified_male_grtr_15` varchar(5) DEFAULT NULL,
  `Buruli_ulcer_patients_notified_female_0_4` varchar(5) DEFAULT NULL,
  `Buruli_ulcer_patients_notified_female_5_15` varchar(5) DEFAULT NULL,
  `Buruli_ulcer_patients_notified_female_grtr_15` varchar(5) DEFAULT NULL,
  `Buruli_ulcer_patients_notified_total` varchar(5) DEFAULT NULL,
  `Malaria_Testing_5_years` varchar(5) DEFAULT NULL,
  `Malaria_Testing_total` varchar(5) DEFAULT NULL,
  `Persons_presenting_with_fever_and_tested_by_RDT_5_years` varchar(5) DEFAULT NULL,
  `Persons_presenting_with_fever_and_tested_by_RDT_total` varchar(5) DEFAULT NULL,
  `Persons_test_positive_for_malaria_by_RDT_5_years` varchar(5) DEFAULT NULL,
  `Persons_test_positive_for_malaria_by_RDT_total` varchar(5) DEFAULT NULL,
  `Persons_tested_Microscopy_for_malaria_parasites_less5_years` varchar(5) DEFAULT NULL,
  `Persons_tested_Microscopy_for_malaria_parasites_grtr_eq5_years` varchar(5) DEFAULT NULL,
  `Persons_tested_Microscopy_for_malaria_parasites_total` varchar(5) DEFAULT NULL,
  `persn_tested_positive_for_malaria_less5_years` varchar(5) DEFAULT NULL,
  `persn_tested_positive_malaria_grtr_eq5_years` varchar(5) DEFAULT NULL,
  `persn_tested_positive_malaria_total` varchar(5) DEFAULT NULL,
  `Pregnant_women_with_clinically_diagnosed_Malaria_total` varchar(5) DEFAULT NULL,
  `Pregnant_women_with_confirmed_Malaria_total` varchar(5) DEFAULT NULL,
  `Persons_with_clinically_diagnosed_Malaria_5_years` varchar(5) DEFAULT NULL,
  `Persons_with_clinically_diagnosed_Malaria_total` varchar(5) DEFAULT NULL,
  `Persons_with_confirmed_uncomplicated_Malaria_5_years` varchar(5) DEFAULT NULL,
  `Persons_with_confirmed_uncomplicated_Malaria_total` varchar(5) DEFAULT NULL,
  `Persons_with_severe_Malaria_5_years` varchar(5) DEFAULT NULL,
  `Persons_with_severe_Malaria_total` varchar(5) DEFAULT NULL,
  `persn_uncomplicated_malaria_receiving_act_less_5years` varchar(5) DEFAULT NULL,
  `persn_uncomplicated_malaria_receiving_act_greater_5years` varchar(5) DEFAULT NULL,
  `persn_uncomplicated_malaria_receiving_act_total` varchar(5) DEFAULT NULL,
  `persn_treated_act_clinical_diagnosis_less_5years` varchar(5) DEFAULT NULL,
  `persn_treated_act_clinical_diagnosis_greater_5years` varchar(5) DEFAULT NULL,
  `persn_treated_act_clinical_diagnosis_totals` varchar(5) DEFAULT NULL,
  `persn_uncomplicated_malaria_other_antimalarials_total` varchar(5) DEFAULT NULL,
  `women_who_reported_leaking_urine_feces_vvf` varchar(5) DEFAULT NULL,
  `women_who_reported_leaking_urine_feces_rvf` varchar(5) DEFAULT NULL,
  `women_who_reported_leaking_urine_feces_vvf_rvf` varchar(5) DEFAULT NULL,
  `women_who_reported_leaking_urine_feces_total` varchar(5) DEFAULT NULL,
  `women_who_receiving_surgery_fistula_repair_vvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_surgery_fistula_repair_rvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_surgery_fistula_repair_vvf_rvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_surgery_fistula_repair_total` varchar(5) DEFAULT NULL,
  `women_who_receiving_first_repair_vvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_first_repair_rvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_first_repair_vvf_rvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_first_repair_total` varchar(5) DEFAULT NULL,
  `women_who_receiving_second_repair_vvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_second_repair_rvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_second_repair_vvf_rvf` varchar(5) DEFAULT NULL,
  `women_who_receiving_second_repair_total` varchar(5) DEFAULT NULL,
  `women_who_discharged_fistula_surgery_vvf` varchar(5) DEFAULT NULL,
  `women_who_discharged_fistula_surgery_rvf` varchar(5) DEFAULT NULL,
  `women_who_discharged_fistula_surgery_vvf_rvf` varchar(5) DEFAULT NULL,
  `women_who_discharged_fistula_surgery_total` varchar(5) DEFAULT NULL,
  `women_who_closedanddry_fistula_at_discharge_vvf` varchar(5) DEFAULT NULL,
  `women_who_closedanddry_fistula_at_discharge_rvf` varchar(5) DEFAULT NULL,
  `women_who_closedanddry_fistula_at_discharge_vvf_rvf` varchar(5) DEFAULT NULL,
  `women_who_closedanddry_fistula_at_discharge_total` varchar(5) DEFAULT NULL,
  `stock_out_essential_drug_7days_consecutively_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_essential_drug_7days_consecutively_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_essential_drug_7days_consecutively_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_vaccine_supplies_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_vaccine_supplies_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_vaccine_supplies_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_famly_palnning_commodtities_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_famly_palnning_commodtities_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_famly_palnning_commodtities_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_female_condoms_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_female_condoms_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_female_condoms_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_implants_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_implants_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_implants_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_emergency_contraception_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_emergency_contraception_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_emergency_contraception_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_oxytocin_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_oxytocin_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_oxytocin_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_misoprostol_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_misoprostol_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_misoprostol_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_magnesium_sulphate_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_magnesium_sulphate_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_magnesium_sulphate_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_injectable_antibiotics_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_injectable_antibiotics_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_injectable_antibiotics_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_ancs_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_ancs_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_ancs_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_chlorhexidine_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_chlorhexidine_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_chlorhexidine_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_resuscitation_equipment_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_resuscitation_equipment_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_resuscitation_equipment_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_amoxicillin_dt_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_amoxicillin_dt_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_amoxicillin_dt_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_ors_zinc_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_ors_zinc_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_ors_zinc_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_ifas_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_ifas_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_ifas_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_acts_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_acts_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_acts_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_rdts_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_rdts_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_rdts_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_sps_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_sps_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_sps_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_llins_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_llins_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_llins_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_antiretroviral_drugs_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_antiretroviral_drugs_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_antiretroviral_drugs_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_hiv_kits_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_hiv_kits_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_hiv_kits_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_anti_tb_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_anti_tb_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_anti_tb_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_cpt_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_cpt_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_cpt_past_one_month_na` varchar(5) DEFAULT NULL,
  `stock_out_inh_past_one_month_yes` varchar(5) DEFAULT NULL,
  `stock_out_inh_past_one_month_no` varchar(5) DEFAULT NULL,
  `stock_out_inh_past_one_month_na` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `name`, `status`) VALUES
(1, 'engineer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` varchar(40) DEFAULT NULL,
  `sex` tinyint(4) NOT NULL DEFAULT '1',
  `age` varchar(40) DEFAULT NULL,
  `patient_image` varchar(100) DEFAULT NULL,
  `image_name` varchar(50) NOT NULL,
  `marital_status` int(30) NOT NULL,
  `religion` int(11) DEFAULT NULL,
  `father_firstname` varchar(45) DEFAULT NULL,
  `father_middlename` varchar(45) DEFAULT NULL,
  `father_lastname` varchar(45) DEFAULT NULL,
  `mother_firstname` varchar(45) DEFAULT NULL,
  `mother_middlename` varchar(45) DEFAULT NULL,
  `mother_lastname` varchar(45) DEFAULT NULL,
  `refered_name` varchar(45) DEFAULT NULL,
  `patient_unit_number` varchar(100) DEFAULT NULL,
  `identity_type` varchar(45) DEFAULT NULL,
  `identity_number` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `local_goverment_area` varchar(45) DEFAULT NULL,
  `tribe` varchar(45) DEFAULT NULL,
  `language` int(11) NOT NULL,
  `nationality` int(11) NOT NULL,
  `blood_group` int(11) NOT NULL,
  `hospital_plan` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` varchar(45) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `sex`, `age`, `patient_image`, `image_name`, `marital_status`, `religion`, `father_firstname`, `father_middlename`, `father_lastname`, `mother_firstname`, `mother_middlename`, `mother_lastname`, `refered_name`, `patient_unit_number`, `identity_type`, `identity_number`, `state`, `local_goverment_area`, `tribe`, `language`, `nationality`, `blood_group`, `hospital_plan`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Karen', '', 'Hilda', '1999-02-03', 1, '17 year', '8840053441476722574.jpg', 'images.jpg', 3, 0, '', '', '', '', '', '', '', '', '1', '82777272', '24', '503', 'Yoruba', 0, 97, 0, 1, '2016-10-17 17:44:03', '2016-11-04 15:55:12', '1'),
(2, 'Tunde', '', 'IBIKUNLE', '2009-02-11', 1, '7 year', '8001387371479286343.jpg', 'boy.jpg', 2, 0, '', '', '', '', '', '', '', '', '1', '665525252', '3', '569', '', 0, 5, 0, 1, '2016-10-18 11:13:50', '2016-11-16 09:53:01', '1'),
(3, 'David', '', 'Owen', '1979-06-13', 1, '37 year', '3220361961476809932.jpg', 'photo.jpg', 1, 3, '', '', '', '', '', '', '', '', '2', 'NH7277223', '5', '4', '', 0, 97, 0, 2, '2016-10-18 17:59:04', '2016-10-18 18:01:09', '1'),
(4, 'Jim', '', 'Lee', '2010-12-28', 2, '5 year', '16343687401476942854.png', 'EHR   Dashboard.png', 3, 1, '', '', '', '', '', '', '', '', '2', 'ID132', '3', '3', '', 0, 0, 0, 0, '2016-10-20 06:54:27', '0000-00-00 00:00:00', '1'),
(5, 'Ade', '', 'Oluwole', '1989-02-15', 1, '27 year', '', '', 1, 1, '', '', '', '', '', '', '', '', '2', 'ID132', '31', '661', '', 0, 0, 0, 2, '2016-10-20 07:06:59', '2016-10-20 07:08:58', '1'),
(6, 'Jessica', '', 'David', '2015-08-30', 2, '1 year', '', '', 6, 2, '', '', '', '', '', '', '', '', '', '', '5', '1', '', 0, 0, 2, 1, '2016-10-20 07:46:20', '2016-10-20 07:46:34', '1'),
(7, 'Dare', '', 'Olayinka', '1993-07-15', 1, '23 year', '10932165631477124330.jpg', 'MTE4MDAzNDEwNzMzODYwMzY2.jpg', 3, 2, '', '', '', '', '', '', '', '', '2', 'ID132', '2', '2', '', 0, 0, 0, 2, '2016-10-20 07:50:56', '2016-10-22 09:18:52', '1'),
(8, 'Adesina', 'Famous', 'Olaide', '2016-10-19', 2, '1 day', '', '', 1, 2, 'babatunde', 'shina', 'austine', 'babatunde', 'falilat', 'bunmi', '', '15324', '3', '0987', '24', '494', 'tapa', 2, 97, 4, 1, '2016-10-20 14:07:09', '2016-10-20 14:38:14', '1'),
(9, 'salami', 'sheriff', 'abiodun', '1987-06-02', 1, '29 year', '6624030481476968888.jpg', '11164183_890314474375050_6752847122382228915_o.jpg', 2, 0, 'salami', 'azeez', 'olamilekan', 'salami', 'shadiat', 'sarah', 'nil', '12345', '2', '02348', '24', '494', 'yoruba', 0, 0, 0, 1, '2016-10-20 14:10:08', '2016-10-20 15:28:49', '1'),
(10, 'Abdullah', 'Ola', 'Jimoh', '2016-10-19', 1, '1 day', '', '', 1, 2, 'Dauda', 'Olawale', 'Abdullah', 'Abdullah', 'Nike', 'Adijat', '', '', '4', '1234', '2', '4', '', 3, 97, 2, 1, '2016-10-20 14:18:15', '2016-10-20 14:36:09', '1'),
(11, 'chris', 'adeola', 'adetola', '2014-02-25', 1, '2 year', '949666701477135218.jpg', '10.jpg', 1, 1, 'chigozie', 'chris', 'adetola', 'chidima', 'bisi', 'adetola', 'sopd', '', '2', '12234555565', '1', '5', 'ibo', 1, 0, 1, 0, '2016-10-22 12:20:25', '0000-00-00 00:00:00', '1'),
(12, 'Filani', 'Stella', 'Toyin', '2014-12-10', 2, '1 year', '', '', 1, 1, 'Filani', 'Moshood', 'A', 'Filani', 'Abigael', 'O', 'Dr Alabi', '000024', '2', '000000056', '23', '478', 'Yoruba', 4, 97, 3, 1, '2016-10-22 12:20:35', '2016-10-22 12:34:23', '1'),
(13, 'moshood', 'adebayo', 'raheem', '2000-06-03', 1, '16 year', '', '', 1, 2, 'moshood', 'babatope', 'abubakre', 'titilope', 'aishat', 'moshood', '', '', '4', '2221133', '24', '255', 'yoruba', 4, 97, 3, 1, '2016-10-22 12:21:07', '2016-10-25 10:59:43', '0'),
(14, 'Gbenga', 'Remi', 'Oyekunle', '2010-05-05', 1, '6 year', '', '', 1, 1, 'Ladi', 'Moses', 'Oyekunle', 'Lydia', 'Mojirola', 'Oyekunle', 'GOPD', '034531', '3', 'A06068308', '24', '498', 'YORUBA', 4, 97, 1, 1, '2016-10-22 12:21:26', '2016-10-22 12:33:39', '1'),
(15, 'Adebola', 'Michael', 'Olakunle', '1980-04-11', 1, '36 year', '', '', 2, 1, 'Adekunle', 'Taiye', 'John', 'Deborah', 'Ayoka', 'Adekunle', 'Jimoh Saheed', '238756', '1', '2345667', '31', '661', 'Yoruba', 4, 97, 2, 1, '2016-10-22 12:22:33', '2016-10-22 13:11:33', '1'),
(16, 'Moshood', 'Adebayo', 'Akintola', '1914-09-27', 1, '101 year', '', '', 2, 0, 'Amuda', 'Abdullahi', 'Akintola', 'Sabitiu', 'Alake', 'Akintola', '', '123456', '1', '', '30', '626', 'Yoruba', 4, 97, 3, 1, '2016-10-22 12:24:14', '2016-10-22 12:34:26', '1'),
(17, 'Ireti', 'Aduke', 'Babalola', '1986-10-15', 2, '29 year', '', '', 2, 1, 'Joseph', 'olamide', 'Oyelakin', 'Serah', 'Abike', 'Oyelakin', 'Dr Kunle', '', '2', '123456789', '13', '255', 'Yoruba', 4, 97, 3, 1, '2016-10-22 12:24:44', '2016-10-22 12:35:21', '1'),
(18, 'bukola', 'olokoba', 'lateefat', '1985-10-21', 2, '30 year', '11273724311477135489.JPG', 'IMG_0531.JPG', 2, 2, 'oladapo', 'demola', 'adebimpe', 'oladapo', 'limota', 'shola', 'uith', '1234', '3', '342569', '5', '6', 'yoruba', 4, 97, 3, 1, '2016-10-22 12:24:59', '2016-10-22 12:36:56', '1'),
(19, 'seriki', 'bode', 'kazeem', '1980-01-24', 2, '36 year', '', '', 2, 2, 'lamidi', 'fakeye', 'azeez', 'mariam', 'abeni', 'r', 'akeem', '', '2', '08033333296', '2', '2', 'ibibio', 1, 2, 4, 1, '2016-10-25 16:40:08', '2016-10-25 17:02:27', '1'),
(20, 'Ajobiewe', 'ganiyu', 'Ade', '1980-06-12', 1, '36 year', '7858072871477410895.jpg', 'Picture 001.jpg', 2, 2, 'abu', 'jimoh', 'keteh', 'ramat', 'fade', 'abu', '', '', '2', '', '25', '519', 'kagoro', 1, 97, 2, 1, '2016-10-25 17:01:07', '2016-10-25 17:03:12', '1'),
(21, 'jide', 'lola', 'tobi', '2000-06-06', 1, '16 year', '', '', 1, 1, 'kazeem', 'james', 'isaac', '', '', '', '', '', '4', '', '25', '520', 'yoruba', 1, 97, 2, 0, '2016-10-25 17:03:33', '0000-00-00 00:00:00', '1'),
(22, 'john', '', 'james', '1977-09-07', 1, '39 year', '', '', 2, 0, 'john', 'jones', 'jose', 'susan', 'ali', 'johne', '', '', '3', 'a12456', '25', '517', 'yoruba', 1, 0, 0, 0, '2016-10-25 17:21:42', '0000-00-00 00:00:00', '1'),
(23, 'Manuel', '', 'Larma', '2016-10-04', 1, '22 days', '', '', 1, 3, '', '', '', '', '', '', '', '', '1', '26262622', '3', '2', '', 0, 0, 0, 1, '2016-10-26 06:42:34', '2016-10-26 08:57:45', '1'),
(24, 'okunmuyide', 'oluwakemi', 'dele', '2016-03-03', 2, '7 months 23 days', '', '', 1, 1, 'okunmuyide', 'femi', 'moses', 'okunmuyide', 'esther', 'asunle', '', '', '3', '7865555', '30', '619', 'yoruba', 1, 96, 1, 0, '2016-10-26 09:54:43', '0000-00-00 00:00:00', '1'),
(25, 'popoola', '', 'sunday', '2009-10-22', 1, '1 day', '', '', 3, 0, 'sosanya', 'adetola', '', 'johnson', 'sunday', '', '', '', '2', '7895', '29', '593', 'yoruba', 4, 97, 1, 0, '2016-10-26 09:55:03', '0000-00-00 00:00:00', '1'),
(26, 'Ebenezer', 'Ifeolu', 'Adegbo', '2009-10-23', 1, '0 day', '', '20016', 2, 1, 'Samuel', 'Adeyotu', 'Adegbo', 'Marian', 'Mobolaji', 'Adegbo', 'Radiology', '0001', '3', 'A 5555', '29', '599', 'Yoruba', 4, 97, 2, 0, '2016-10-26 09:58:25', '0000-00-00 00:00:00', '1'),
(27, 'lamidi', 'kazeem', 'ajagbe', '2009-09-29', 1, '24 days', '13593391671477475931.jpg', 'Picture 001.jpg', 1, 3, 'ayansiji', 'adigun', 'femi', 'akinosun', 'ahmed', 'ajadi', '', '', '2', '324567', '31', '637', 'yoruba', 1, 97, 1, 1, '2016-10-26 10:49:37', '2016-10-26 10:58:55', '1'),
(28, 'falade', 'ojo', 'olakunle', '2009-10-01', 1, '22 days', '9432579731477476153.jpg', 'Koala.jpg', 2, 2, 'falade', '', 'jonh', 'falade', '', 'serah', '', '', '4', '00000', '28', '577', 'yoruba', 4, 97, 2, 1, '2016-10-26 10:51:42', '2016-10-26 11:02:35', '1'),
(29, 'akinyemi', 'deola', 'JUSTINA', '2016-10-12', 2, '14 days', '', '', 1, 1, 'Akinyemi', 'Emmanuel', 'Wale', 'Akinyemi', 'Bose', 'Felicia', 'Oluwakemi', '', '4', '000000', '30', '619', 'yoruba', 4, 97, 1, 1, '2016-10-26 10:51:59', '2016-10-26 11:13:31', '1'),
(30, 'Taiwo', '', 'Kehinde', '2009-10-19', 1, '4 days', '', '', 2, 2, 'Taiwo', '', 'Adewusi', 'Adeola', '', 'Taiwo', 'Dr Balogun', '', '4', '007', '25', '513', 'Hausa', 2, 97, 3, 2, '2016-10-26 10:52:57', '2016-10-26 11:02:11', '1'),
(31, 'ojutomori', 'kehinde', 'wosilat', '1980-10-15', 2, '28 year', '', '', 2, 1, 'adeniyi', 'bashir', 'musa', 'adeniyi', 'taibat', 'abike', 'general hospital lagos', '', '2', '00001', '25', NULL, 'yoruba', 4, 0, 1, 0, '2016-10-26 10:54:10', '0000-00-00 00:00:00', '1'),
(32, 'Ebenezer', '', 'Adegbo', '2016-10-25', 1, '1 day', '', '', 2, 1, 'Samuel', '', 'Adegbo', 'Marian', '', 'Adegbo', 'Radiology', '0005', '3', 'A 5505', '29', '599', 'Yoruba', 4, 97, 2, 0, '2016-10-26 10:55:07', '0000-00-00 00:00:00', '1'),
(33, 'Joseph', 'Bola', 'Olamide', '2009-10-06', 1, '17 days', '', '', 1, 1, 'Badejo', 'John', 'Gbolahan', 'Badejo', 'Mary', 'Bisi', 'GOPD', '', '4', '004521', '28', '572', 'yoruba', 4, 97, 3, 0, '2016-10-26 10:55:22', '2016-10-26 11:17:16', '1'),
(34, 'Thomas', 'Jimi', 'Falani', '91-01-11', 1, '25 year', '14699578661478590257.jpg', 'boy.jpg', 1, 0, 'Richard', 'Tolulope', 'Falani', 'Bimbo', 'Grace', 'Falani', 'Dr olude', '001', '1', '000008', '25', NULL, '', 0, 97, 0, 1, '2016-10-26 10:55:33', '2016-11-08 08:31:00', '1'),
(35, 'Azeez', '', 'Demi', '32-04-07', 1, '84 year', '14540742301477477188.jpg', 'Penguins.jpg', 2, 2, 'Ade', '', 'Azeez', 'Ada', '', 'Azizat', '', '', '4', '00000', '5', '2', 'Ibiobio', 4, 97, 3, 1, '2016-10-26 10:56:11', '2016-10-26 11:19:51', '1'),
(36, 'FASASI', 'KEJI', 'TAOFIKAT', '1974-08-10', 2, '35 year', '', '', 1, 2, '', '', '', '', '', '', '', '', '', '', '25', NULL, '', 0, 0, 0, 0, '2016-10-26 11:02:43', '0000-00-00 00:00:00', '1'),
(37, 'lamina', 'ego', 'rita', '2009-02-11', 2, '7 year', '16104291631477476249.jpg', 'aaa.jpg', 1, 1, 'eledah francis', 'otobo', 'rapheal', 'eledah janet', 'amaka', 'christian', 'general hospital lagos', '4', '4', '00000', '10', '193', 'yoruba', 3, 97, 2, 0, '2016-10-26 11:05:38', '0000-00-00 00:00:00', '1'),
(38, 'Odunayo', '', 'Ifeoluwa', '2016-10-25', 1, '1 day', '', '', 2, 1, 'Samuel', '', 'Adegbo', 'Marian', '', 'Adegbo', 'Radiology', '', '', '1111', '29', '599', 'Yoruba', 4, 97, 2, 1, '2016-10-26 11:07:20', '2016-10-26 11:21:07', '1'),
(39, 'ajanaku', 'adele', 'folake', '2009-10-05', 2, '18 days', '', '', 1, 1, 'kunle', 'dele', 'funso', 'ezekiel', 'mulika', 'adufe', '', '', '3', 'a345678', '6', '6', 'igbo', 3, 97, 2, 0, '2016-10-26 11:15:37', '0000-00-00 00:00:00', '1'),
(40, 'OJUTOMORI', '', 'KEHINDE', '2009-10-15', 2, '8 days', '10179051991477477617.jpg', 'pediatricburns_1.jpg', 1, 1, 'OJUTOMORI', 'ADISA', '', 'OJUTOMORI', '', 'ASHABI', 'MOPD', '', '4', '00000', '25', NULL, '', 4, 0, 0, 1, '2016-10-26 11:16:01', '2016-10-26 11:27:20', '1'),
(41, 'Taiwo', '', 'Idowu', '2016-10-23', 1, '3 days', '', '', 1, 2, 'Adewusi', '', 'Taiwo', 'Omowunmi', '', 'Taiwo', '', '', '4', '009', '25', '513', 'yoruba', 2, 97, 3, 1, '2016-10-26 11:16:24', '2016-10-26 11:20:56', '1'),
(42, 'alabi', 'tunde', 'whesu', '1980-02-04', 2, '36 year', '', '', 2, 0, '', '', '', '', '', '', '', '', '4', '00000', '4', NULL, '', 0, 0, 0, 0, '2016-10-26 11:17:45', '0000-00-00 00:00:00', '1'),
(43, 'Nwankwo', 'Rose', 'Obiangeli', '2005-11-03', 1, '10 year', '136547881477477350.jpg', 'Jellyfish.jpg', 1, 1, 'Nwankwo', 'Peter', 'Obi', 'Nwankwo', 'Esther', 'Ngozi', 'Chinyere', '', '3', '66667432', '4', '70', 'IGBO', 3, 97, 3, 0, '2016-10-26 11:22:43', '0000-00-00 00:00:00', '1'),
(44, 'okafor', 'ego', 'mabel', '1979-02-03', 2, '37 year', '11136675021477477826.jpg', 'aaa.jpg', 2, 0, 'peter', 'emeka', 'john', 'peter', 'onyeka', 'grace', 'general hospital lagos', '03', '1', 'A937834', '4', NULL, 'igbo', 0, 0, 0, 0, '2016-10-26 11:22:50', '2016-10-26 11:44:37', '1'),
(45, 'jude', '', 'oduga', '2001-03-06', 1, '8 year', '5400920841477477048.jpg', 'Penguins.jpg', 1, 1, 'jude', '', 'osondu', 'jude', '', 'stella', '', '', '3', 'A45678689', '1', '5', 'ibo', 3, 97, 3, 2, '2016-10-26 11:23:18', '2016-10-26 11:39:04', '1'),
(46, 'tella', 'salami', 'bisi', '2009-09-29', 2, '24 days', '', '', 2, 1, 'adesewa', 'saba', 'lola', 'abiodun', 'femi', 'lamino', '', '', '', '', '25', NULL, 'yoruba', 4, 0, 4, 0, '2016-10-26 11:24:25', '0000-00-00 00:00:00', '1'),
(47, 'TAIWO', 'MARY', 'OMOLABAKE', '1977-10-02', 2, '31 year', '', '', 2, 1, 'TAIWO', 'FRANCIS', 'OJO', 'TAIWO', 'ELIZABETH', 'OLAIDE', 'LIMH', '', '4', '00000', '30', '610', 'YORUBA', 4, 97, 1, 2, '2016-10-26 11:25:30', '2016-10-26 11:44:07', '1'),
(48, 'Kunmbi', 'Josephine', 'Adebayo', '1986-10-10', 2, '29 year', '', '', 2, 1, 'Tola', 'Dotun', 'Adebayo', 'Bosun', 'Tokunbo', 'Adebayo', 'Dr olude', '', '2', '', '30', '64', 'Yoruba', 4, 97, 2, 2, '2016-10-26 11:30:27', '2016-10-26 11:41:16', '1'),
(49, 'Jomiloju', '', 'Adegbo', '2016-09-25', 1, '1 month 1 day', '', '', 1, 1, 'Ebenezer', '', 'Adegbo', 'Stella', '', 'Adegbo', '', '123456', '4', '00123', '29', '599', 'Yoruba', 4, 97, 2, 2, '2016-10-26 11:32:15', '2016-10-26 11:42:44', '1'),
(50, 'FASASI', 'KEJI', 'TAOFIKAT', '2009-08-10', 2, '2 months 13 days', '', '', 1, 2, 'FASASI', 'AYINDE', 'SAKIR', 'FASASI', 'TINU', 'SEKINAT', 'MOPD', '', '2', '35002', '25', '513', 'YORUBA', 4, 97, 1, 0, '2016-10-26 11:33:22', '0000-00-00 00:00:00', '1'),
(51, 'Wese', '', 'Adamu', '16-02-11', 2, '100 year', '5401207221477478091.jpg', '1kobo.jpg', 3, 3, 'Adamu', '', 'Kande', 'Adamu', '', 'Sisi', '', '', '2', '123456789', '29', '190', 'Nupe', 0, 97, 3, 0, '2016-10-26 11:39:12', '0000-00-00 00:00:00', '1'),
(52, 'FASASI', 'KEJI', 'TAOFIKAT', '2009-10-22', 2, '1 day', '', '', 1, 2, 'FASASI', 'AYINDE', 'SAKIR', 'FASASI', 'TINU', 'SEKINAT', 'MOPD', '', '2', '', '25', '513', 'YORUBA', 4, 97, 1, 1, '2016-10-26 11:43:36', '2016-10-26 11:49:56', '1'),
(53, 'Ahmed', '', 'Musa', '1984-07-12', 1, '32 year', '', '', 1, 2, '', '', '', '', '', '', '', '', '1', 'N161112321', '5', '2', 'Yoruba', 0, 0, 0, 0, '2016-10-27 07:43:56', '0000-00-00 00:00:00', '1'),
(54, 'john', 'doe', 'lagbaja', '1989-02-23', 1, '27 year', '18164712631477559627.jpg', '20b9a72.jpg', 2, 1, 'abu', 'ibrahim', 'adele', 'zinat', 'bola', 'adel', '', '', '2', 'a123097', '4', '353', 'ibibio', 3, 97, 3, 1, '2016-10-27 10:16:20', '2016-10-27 10:19:33', '1'),
(55, 'Ti', '', 'Ling', '2009-06-10', 1, '7 year', '', '', 2, 3, '', '', '', '', '', '', '', '', '4', '906266262', '3', '4', '', 0, 0, 0, 1, '2016-10-27 10:44:23', '2016-10-27 10:45:55', '1'),
(56, 'd', '', 'ytr', '2016-10-05', 1, '22 days', '', '', 2, 0, '', '', '', '', '', '', '', '', '', '567890', '4', NULL, '', 0, 0, 0, 4, '2016-10-27 10:45:03', '2016-10-27 10:46:12', '1'),
(57, 'Owen', '', 'Johnson', '2016-08-09', 2, '2 months 23 days', '', '', 6, 0, 'Johnson', '', 'David', 'sam', '', 'johnson', 'none', '', '1', '546544', '3', '4', 'none', 0, 0, 0, 1, '2016-11-02 14:45:42', '2016-11-04 15:36:28', '1'),
(58, 'aki', 'aki', 'aki', '2016-11-02', 1, '1 day', '', '', 1, 0, '', '', '', '', '', '', '', '', '2', '323232323', '25', '517', '', 1, 97, 2, 0, '2016-11-03 09:27:35', '2016-11-03 09:28:34', '1'),
(59, 'Tommy', '', 'Smith', '1964-07-16', 1, '52 year', '', '', 2, 1, '', '', '', '', '', '', '', '', '2', '6727772', '5', NULL, '', 0, 0, 0, 1, '2016-11-04 09:30:51', '2016-11-04 09:31:22', '1'),
(60, 'Tunde', '', 'IBIKUNLE', '2009-02-11', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '569', '', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(61, 'Jim', '', 'Lee', '2010-12-28', 0, NULL, NULL, '', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '3', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(62, 'Ade', '', 'Oluwole', '1989-02-15', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '31', '661', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(63, 'Adebola', 'Michael', 'Olakunle', '1980-04-11', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '238756', NULL, NULL, '31', '661', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(64, 'Filani', 'Stella', 'Toyin', '2014-12-10', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '000024', NULL, NULL, '23', '478', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(65, 'Gbenga', 'Remi', 'Oyekunle', '2010-05-05', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '034531', NULL, NULL, '24', '498', 'YORUBA', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(66, 'Ireti', 'Aduke', 'Babalola', '1986-10-15', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '13', '255', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(67, 'jide', 'lola', 'tobi', '2000-06-06', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '520', 'yoruba', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(68, 'okunmuyide', 'oluwakemi', 'dele', '2016-03-03', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '619', 'yoruba', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(69, 'Ebenezer', 'Ifeolu', 'Adegbo', '2009-10-23', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0001', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(70, 'akinyemi', 'deola', 'JUSTINA', '2016-10-12', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '619', 'yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(71, 'Ebenezer', '', 'Adegbo', '2016-10-25', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0005', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(72, 'lamina', 'ego', 'rita', '2009-02-11', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, '10', '193', 'yoruba', 3, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(73, 'Joseph', 'Bola', 'Olamide', '2009-10-06', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '28', '572', 'yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(74, 'Odunayo', '', 'Ifeoluwa', '2016-10-25', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(75, 'OJUTOMORI', '', 'KEHINDE', '2009-10-15', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '', '', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(76, 'jude', '', 'oduga', '2001-03-06', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '1', '5', 'ibo', 3, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(77, 'Nwankwo', 'Rose', 'Obiangeli', '2005-11-03', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '70', 'IGBO', 3, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(78, 'TAIWO', 'MARY', 'OMOLABAKE', '1977-10-02', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '610', 'YORUBA', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(79, 'tella', 'salami', 'bisi', '2009-09-29', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '', 'yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(80, 'Kunmbi', 'Josephine', 'Adebayo', '1986-10-10', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '64', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(81, 'Jomiloju', '', 'Adegbo', '2016-09-25', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(82, 'john', 'doe', 'lagbaja', '1989-02-23', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '353', 'ibibio', 3, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(83, 'Owen', '', 'Johnson', '2016-08-09', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '4', 'none', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(84, 'Jessica', '', 'David', '2015-08-30', 0, NULL, NULL, '', 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '5', '1', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(85, 'Dare', '', 'Olayinka', '1993-07-15', 1, NULL, NULL, '', 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2', '2', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(86, 'Adesina', 'Famous', 'Olaide', '2016-10-19', 0, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15324', NULL, NULL, '24', '494', 'tapa', 2, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(87, 'Abdullah', 'Ola', 'Jimoh', '2016-10-19', 1, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2', '4', '', 3, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(88, 'bukola', 'olokoba', 'lateefat', '1985-10-21', 0, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, '5', '6', 'yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(89, 'Ajobiewe', 'ganiyu', 'Ade', '1980-06-12', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '519', 'kagoro', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(90, 'seriki', 'bode', 'kazeem', '1980-01-24', 0, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2', '2', 'ibibio', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(91, 'falade', 'ojo', 'olakunle', '2009-10-01', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '28', '577', 'yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(92, 'Taiwo', '', 'Kehinde', '2009-10-19', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '513', 'Hausa', 2, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(93, 'Azeez', '', 'Demi', '32-04-07', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '5', '2', 'Ibiobio', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(94, 'Thomas', 'Jimi', 'Falani', '91-01-11', 1, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '001', NULL, NULL, '25', '', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(95, 'Taiwo', '', 'Idowu', '2016-10-23', 1, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '513', 'yoruba', 2, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(96, 'FASASI', 'KEJI', 'TAOFIKAT', '2009-10-22', 0, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '513', 'YORUBA', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(97, 'Karen', '', 'Hilda', '1999-02-03', 0, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '24', '503', 'Yoruba', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(98, 'David', '', 'Owen', '1979-06-13', 1, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '5', '4', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(99, 'Manuel', '', 'Larma', '2016-10-04', 1, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '2', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(100, 'lamidi', 'kazeem', 'ajagbe', '2009-09-29', 1, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '31', '637', 'yoruba', 1, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(101, 'Wese', '', 'Adamu', '16-02-11', 0, NULL, NULL, '', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '29', '190', 'Nupe', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(102, 'Ti', '', 'Ling', '2009-06-10', 1, NULL, NULL, '', 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '4', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(103, 'salami', 'sheriff', 'abiodun', '1987-06-02', 1, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, NULL, '24', '494', 'yoruba', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(104, 'Moshood', 'Adebayo', 'Akintola', '1914-09-27', 1, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, '30', '626', 'Yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(105, 'popoola', '', 'sunday', '2009-10-22', 1, NULL, NULL, '', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '29', '593', 'yoruba', 4, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(106, 'alabi', 'tunde', 'whesu', '1980-02-04', 0, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(107, 'okafor', 'ego', 'mabel', '1979-02-03', 0, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03', NULL, NULL, '4', '', 'igbo', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(108, 'd', '', 'ytr', '2016-10-05', 1, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '', '', 0, 0, 0, 0, '2016-11-04 12:22:33', '0000-00-00 00:00:00', '1'),
(109, 'Jane', '', 'Watson', '17-07-1969', 2, '47 years', '', '', 5, 0, '', '', '', '', '', '', '', '', '', '654644', '3', NULL, '', 0, 97, 0, 0, '2016-11-04 15:31:37', '0000-00-00 00:00:00', '1'),
(110, 'Jane', '', 'anniston', '31-10-2016', 2, '3 days', '', '', 3, 0, '', '', '', '', '', '', '', '', '', '214324', '2', NULL, '', 0, 97, 0, 1, '2016-11-04 15:33:49', '2016-11-04 15:33:57', '1'),
(111, 'Tunde', '', 'IBIKUNLE', '2009-02-11', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '569', '', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(112, 'Jim', '', 'Lee', '2010-12-28', 0, NULL, NULL, '', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '3', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(113, 'Ade', '', 'Oluwole', '1989-02-15', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '31', '661', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(114, 'Adebola', 'Michael', 'Olakunle', '1980-04-11', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '238756', NULL, NULL, '31', '661', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(115, 'Filani', 'Stella', 'Toyin', '2014-12-10', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '000024', NULL, NULL, '23', '478', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(116, 'Gbenga', 'Remi', 'Oyekunle', '2010-05-05', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '034531', NULL, NULL, '24', '498', 'YORUBA', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(117, 'Ireti', 'Aduke', 'Babalola', '1986-10-15', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '13', '255', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(118, 'jide', 'lola', 'tobi', '2000-06-06', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '520', 'yoruba', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(119, 'okunmuyide', 'oluwakemi', 'dele', '2016-03-03', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '619', 'yoruba', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(120, 'Ebenezer', 'Ifeolu', 'Adegbo', '2009-10-23', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0001', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(121, 'akinyemi', 'deola', 'JUSTINA', '2016-10-12', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '619', 'yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(122, 'Ebenezer', '', 'Adegbo', '2016-10-25', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0005', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(123, 'lamina', 'ego', 'rita', '2009-02-11', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, '10', '193', 'yoruba', 3, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(124, 'Joseph', 'Bola', 'Olamide', '2009-10-06', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '28', '572', 'yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(125, 'Odunayo', '', 'Ifeoluwa', '2016-10-25', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(126, 'OJUTOMORI', '', 'KEHINDE', '2009-10-15', 0, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '', '', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(127, 'jude', '', 'oduga', '2001-03-06', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '1', '5', 'ibo', 3, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(128, 'Nwankwo', 'Rose', 'Obiangeli', '2005-11-03', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '70', 'IGBO', 3, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(129, 'TAIWO', 'MARY', 'OMOLABAKE', '1977-10-02', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '610', 'YORUBA', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(130, 'tella', 'salami', 'bisi', '2009-09-29', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '', 'yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(131, 'Kunmbi', 'Josephine', 'Adebayo', '1986-10-10', 0, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '30', '64', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(132, 'Jomiloju', '', 'Adegbo', '2016-09-25', 1, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, '29', '599', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(133, 'john', 'doe', 'lagbaja', '1989-02-23', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '353', 'ibibio', 3, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(134, 'Owen', '', 'Johnson', '2016-08-09', 1, NULL, NULL, '', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '4', 'none', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(135, 'Jessica', '', 'David', '2015-08-30', 0, NULL, NULL, '', 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '5', '1', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(136, 'Dare', '', 'Olayinka', '1993-07-15', 1, NULL, NULL, '', 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2', '2', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(137, 'Adesina', 'Famous', 'Olaide', '2016-10-19', 0, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15324', NULL, NULL, '24', '494', 'tapa', 2, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(138, 'Abdullah', 'Ola', 'Jimoh', '2016-10-19', 1, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2', '4', '', 3, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(139, 'bukola', 'olokoba', 'lateefat', '1985-10-21', 0, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, NULL, '5', '6', 'yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(140, 'Ajobiewe', 'ganiyu', 'Ade', '1980-06-12', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '519', 'kagoro', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(141, 'seriki', 'bode', 'kazeem', '1980-01-24', 0, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2', '2', 'ibibio', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(142, 'falade', 'ojo', 'olakunle', '2009-10-01', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '28', '577', 'yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(143, 'Taiwo', '', 'Kehinde', '2009-10-19', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '513', 'Hausa', 2, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(144, 'Azeez', '', 'Demi', '32-04-07', 1, NULL, NULL, '', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '5', '2', 'Ibiobio', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(145, 'Thomas', 'Jimi', 'Falani', '91-01-11', 1, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '001', NULL, NULL, '25', '', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(146, 'Taiwo', '', 'Idowu', '2016-10-23', 1, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '513', 'yoruba', 2, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(147, 'FASASI', 'KEJI', 'TAOFIKAT', '2009-10-22', 0, NULL, NULL, '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '25', '513', 'YORUBA', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(148, 'Karen', '', 'Hilda', '1999-02-03', 0, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '24', '503', 'Yoruba', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(149, 'David', '', 'Owen', '1979-06-13', 1, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '5', '4', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(150, 'Manuel', '', 'Larma', '2016-10-04', 1, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '2', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(151, 'lamidi', 'kazeem', 'ajagbe', '2009-09-29', 1, NULL, NULL, '', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '31', '637', 'yoruba', 1, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(152, 'Wese', '', 'Adamu', '16-02-11', 0, NULL, NULL, '', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '29', '190', 'Nupe', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(153, 'Ti', '', 'Ling', '2009-06-10', 1, NULL, NULL, '', 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '3', '4', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(154, 'salami', 'sheriff', 'abiodun', '1987-06-02', 1, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, NULL, '24', '494', 'yoruba', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(155, 'Moshood', 'Adebayo', 'Akintola', '1914-09-27', 1, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456', NULL, NULL, '30', '626', 'Yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(156, 'popoola', '', 'sunday', '2009-10-22', 1, NULL, NULL, '', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '29', '593', 'yoruba', 4, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(157, 'alabi', 'tunde', 'whesu', '1980-02-04', 0, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(158, 'okafor', 'ego', 'mabel', '1979-02-03', 0, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03', NULL, NULL, '4', '', 'igbo', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(159, 'd', '', 'ytr', '2016-10-05', 1, NULL, NULL, '', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '4', '', '', 0, 0, 0, 0, '2016-11-11 15:28:58', '0000-00-00 00:00:00', '1'),
(160, 'Desmond', '', 'Kay', '26-02-2009', 2, '7 years', '', '', 2, 2, '', '', '', '', '', '', '', '677272', '1', '87727772', '4', NULL, '', 0, 97, 0, 1, '2016-11-16 11:29:54', '2016-11-16 11:30:07', '1'),
(161, 'Darius', '', 'Blue', '16-06-2009', 2, '7 years', '', '', 2, 1, '', '', '', '', '', '', '', '', '1', '82772662', '2', '2', '', 0, 97, 0, 1, '2016-11-17 11:48:27', '2016-11-17 11:48:43', '1'),
(162, 'sd', '', 'Smf', '16-11-2016', 1, '1 day', '', '', 7, 0, '', '', '', '', '', '', '', '', '', '123', '7', NULL, '', 0, 97, 0, 0, '2016-11-17 13:51:03', '0000-00-00 00:00:00', '1'),
(163, 'Ebuka', 'John', 'Ubendu', '10-09-1996', 1, '20 years', '14634814741479457519.jpg', 'passpt.jpg', 1, 0, 'Blessed', '', 'Ubendu', 'Christy', '', 'Ubendu', '', '', '4', '000001', '4', '70', 'Igbo', 0, 97, 0, 0, '2016-11-18 08:35:01', '2016-11-18 09:25:37', '1'),
(164, 'Ebuka', 'John', 'Ubendu', '10-09-1996', 1, '20 years', '14858042541479454941.jpg', 'passpt.jpg', 1, 1, 'Blessed', '', 'Ubendu', 'Christy', '', 'Ubendu', '', '', '4', '0000001', '4', '70', 'Igbo', 3, 97, 1, 1, '2016-11-18 08:43:21', '2016-11-18 08:45:03', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patients_admitted`
--

CREATE TABLE `patients_admitted` (
  `id` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `admit_date` date NOT NULL,
  `start_time` varchar(30) NOT NULL,
  `expected_discharge_date` datetime NOT NULL,
  `is_discharged` int(11) NOT NULL,
  `notes` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients_admitted`
--

INSERT INTO `patients_admitted` (`id`, `checkout_id`, `patient_id`, `department_id`, `ward_id`, `admit_date`, `start_time`, `expected_discharge_date`, `is_discharged`, `notes`, `created_at`, `updated_at`, `status`) VALUES
(1, 13, 3, 22, 4, '0000-00-00', '5:30 PM', '0000-00-00 00:00:00', 1, '', '2016-10-25 17:23:40', '2016-11-07 10:33:08', 1),
(2, 19, 30, 4, 4, '2016-09-04', '8:00 AM', '0000-00-00 00:00:00', 0, '', '2016-10-27 07:54:31', '0000-00-00 00:00:00', 1),
(3, 20, 45, 0, 4, '2016-09-04', '8:00 AM', '0000-00-00 00:00:00', 1, '', '2016-10-27 07:57:10', '2016-11-07 11:59:10', 1),
(4, 39, 17, 4, 1, '2016-10-01', '4:45 PM', '0000-00-00 00:00:00', 0, '', '2016-11-07 12:35:47', '0000-00-00 00:00:00', 1),
(5, 40, 63, 4, 1, '2016-10-01', '4:45 PM', '0000-00-00 00:00:00', 0, '', '2016-11-07 12:36:59', '0000-00-00 00:00:00', 1),
(6, 41, 1, 5, 1, '2016-10-01', '4:45 PM', '0000-00-00 00:00:00', 1, '', '2016-11-07 12:38:37', '2016-11-07 14:28:27', 1),
(7, 42, 1, 5, 1, '2016-10-01', '4:45 PM', '0000-00-00 00:00:00', 1, '', '2016-11-07 12:39:52', '2016-11-07 14:28:27', 1),
(8, 43, 1, 5, 2, '2016-10-01', '4:45 PM', '0000-00-00 00:00:00', 1, '', '2016-11-07 12:40:36', '2016-11-07 14:28:27', 1),
(9, 53, 61, 0, 1, '0000-00-00', '', '2016-11-30 00:00:00', 0, '', '2016-11-17 15:56:00', '0000-00-00 00:00:00', 1),
(10, 54, 61, 0, 2, '0000-00-00', '', '2016-11-28 00:00:00', 0, '', '2016-11-17 15:58:45', '0000-00-00 00:00:00', 1),
(11, 55, 1, 0, 2, '2016-10-04', '', '2016-11-28 00:00:00', 0, '', '2016-11-17 15:59:55', '0000-00-00 00:00:00', 1),
(12, 56, 4, 0, 0, '0000-00-00', '', '0000-00-00 00:00:00', 0, '', '2016-11-17 16:08:57', '0000-00-00 00:00:00', 1),
(13, 57, 1, 0, 1, '2016-10-04', '', '2016-11-01 00:00:00', 0, '', '2016-11-17 16:09:59', '0000-00-00 00:00:00', 1),
(14, 58, 1, 0, 2, '2016-10-04', '', '2016-11-01 00:00:00', 0, '', '2016-11-17 16:11:29', '0000-00-00 00:00:00', 1),
(15, 59, 1, 0, 1, '2016-10-04', '', '2016-11-01 00:00:00', 0, '', '2016-11-17 16:13:51', '0000-00-00 00:00:00', 1),
(16, 61, 97, 0, 2, '2016-10-04', '', '2016-11-29 00:00:00', 0, '', '2016-11-17 16:16:02', '0000-00-00 00:00:00', 1),
(17, 62, 11, 0, 4, '2016-10-05', '', '0000-00-00 00:00:00', 0, '', '2016-11-18 08:25:42', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_address`
--

CREATE TABLE `patient_address` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `address_type` enum('contact','permanent') DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `phone_number` varchar(60) DEFAULT NULL,
  `mobile_number` varchar(60) DEFAULT NULL,
  `house_number` varchar(100) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `local_goverment_area` int(11) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_address`
--

INSERT INTO `patient_address` (`id`, `patient_id`, `address_type`, `email`, `phone_number`, `mobile_number`, `house_number`, `street`, `city`, `state`, `country`, `local_goverment_area`, `postal_code`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'contact', '', '234', '234080076554', '', '', '', 0, 0, NULL, '', '2016-10-17 17:44:12', '0000-00-00 00:00:00', 1),
(2, 2, 'contact', '', '234', '234928882772', '', '', '', 0, 0, NULL, '', '2016-10-18 11:14:04', '0000-00-00 00:00:00', 1),
(3, 3, 'contact', '', '234', '234807262662', '', '', '', 0, 0, NULL, '', '2016-10-18 17:59:15', '0000-00-00 00:00:00', 1),
(4, 4, 'contact', '', '234', '234093983883', '', '', '', 0, 0, NULL, '', '2016-10-20 06:54:32', '0000-00-00 00:00:00', 1),
(5, 5, 'contact', '', '234', '234808838727', '', '', '', 0, 0, NULL, '', '2016-10-20 07:07:08', '0000-00-00 00:00:00', 1),
(6, 6, 'contact', '', '234', '234654654464', '', '', '', 0, 0, NULL, '', '2016-10-20 07:46:24', '0000-00-00 00:00:00', 1),
(7, 7, 'contact', '', '234', '234808289292', '', '', '', 0, 0, NULL, '', '2016-10-20 07:51:02', '0000-00-00 00:00:00', 1),
(8, 9, 'contact', 'salamishriffabiodun@gmail.com', '23406-052598', '234080605259', '116,abdulazeez attah road surulere ilorin', 'surulere kwara state', 'ilorin', 24, 97, 494, '23401', '2016-10-20 14:13:01', '0000-00-00 00:00:00', 1),
(9, 8, 'contact', '', '23409-056723', '234080675432', 'House b room 4 rose street ilorin kwara state', 'Rose street', 'ilorin', 24, 97, 494, '24042', '2016-10-20 14:16:10', '0000-00-00 00:00:00', 1),
(10, 10, 'contact', 'bola@gmail.com', '234', '234080354320', '21', 'gbedelola', 'Kanu', 2, 97, 7, '240', '2016-10-20 14:23:54', '0000-00-00 00:00:00', 1),
(11, 13, 'contact', '', '234', '234080376245', '', 'ipata road', 'ilorin', 24, 97, 255, '', '2016-10-22 12:25:51', '0000-00-00 00:00:00', 1),
(12, 15, 'contact', '', '23408-067979', '234080679794', '22', 'Airport Road', 'Oyo', 31, 97, NULL, '', '2016-10-22 12:25:58', '0000-00-00 00:00:00', 1),
(13, 12, 'contact', 'filanis@yahoo.com', '23480-338014', '234080338014', 'No 22 OKolowo  Ilorin', 'kilanko', 'Ilorin', 23, 97, 478, '244', '2016-10-22 12:25:58', '0000-00-00 00:00:00', 1),
(14, 14, 'contact', 'segunabidoye2012@gmail.com', '23407-064984', '234070649849', 'No 3', 'Olasehinde street, Irewolede', 'Ilorin', 24, 97, 496, '240001', '2016-10-22 12:26:08', '0000-00-00 00:00:00', 1),
(15, 16, 'contact', 'fredameh@gmail.com', '234', '234090978987', 'No 7', 'Adesomi Street', 'Ilorin', 0, 97, NULL, '240001', '2016-10-22 12:27:28', '0000-00-00 00:00:00', 1),
(16, 17, 'contact', 'ireti@yahoo.com', '23403-1_____', '234805335717', 'No 12, Adamu Attah Road, Ilorin', 'No 12, Adamu Attah Road,', 'Ilorin', 24, 97, 497, '240001', '2016-10-22 12:28:11', '0000-00-00 00:00:00', 1),
(17, 18, 'contact', 'ols.cs@yahoo.com', '234', '234080320600', '4', 'gaa Akanbi road', 'ilorin', 24, 97, 495, '1234', '2016-10-22 12:31:24', '0000-00-00 00:00:00', 1),
(19, 20, 'contact', 'kadelu@yahoo.com', '23480-885607', '234080386669', '23, adilubua road', '', 'lagos', 22, 97, 506, '', '2016-10-25 17:02:47', '0000-00-00 00:00:00', 1),
(20, 21, 'contact', '', '23408-014236', '234080529846', '68', 'road 2.', '', 25, 97, 524, '', '2016-10-25 17:05:42', '0000-00-00 00:00:00', 1),
(21, 23, 'contact', '', '234', '234092992999', '', '', '', 0, 0, NULL, '', '2016-10-26 06:44:51', '0000-00-00 00:00:00', 1),
(22, 19, 'contact', 'onifadebabatundeazeez@yahoo.com', '23433-820491', '234234080338', '200', 'pedro', 'offa', 0, 0, 0, '', '2016-10-26 09:56:49', '0000-00-00 00:00:00', 1),
(23, 24, 'contact', 'ladfeguk@yahoo.com', '23480-523861', '234080324566', '235,magbamiloko street, amukoko lag', 'magbamiloko street, amukoko lagos', 'lagos', 25, 97, 509, '234', '2016-10-26 09:59:15', '0000-00-00 00:00:00', 1),
(24, 25, 'contact', 'yetunde@yahoo.com', '234', '234080542178', 'no 1 olabisi srt. ojuelegba. lagos.', '', '', 1, 97, 1, '', '2016-10-26 09:59:25', '0000-00-00 00:00:00', 1),
(25, 26, 'contact', 'ebenezer_adegbo@yahoo.com', '23480-332302', '234080332302', '', '1, Radiology Street, General Hospital', 'Lagos', 25, 97, 519, '234', '2016-10-26 10:08:44', '0000-00-00 00:00:00', 1),
(26, 27, 'contact', 'lanidfi@gamail.com', '234', '234080243567', '34', 'mawamiwale street', 'lagos', 25, 97, 524, '234', '2016-10-26 10:51:21', '0000-00-00 00:00:00', 1),
(27, 29, 'contact', 'emakem2006@yahoo.com', '23480-523816', '234012700061', '352', 'Magbamiloko street', 'Lagos', 25, 97, 516, '234', '2016-10-26 10:54:16', '0000-00-00 00:00:00', 1),
(28, 28, 'contact', 'larrybizlarrybee@yahoo.com', '234', '234080562581', '34', 'martins street, mushin lagos', 'mushin', 25, 97, 521, '10011', '2016-10-26 10:54:19', '0000-00-00 00:00:00', 1),
(29, 30, 'contact', 'anxious@anything.com', '23480-945226', '234080281596', '3/5', 'Broad Street', 'lagos', 25, 97, 519, '2341', '2016-10-26 10:56:12', '0000-00-00 00:00:00', 1),
(31, 32, 'contact', 'ebenezer_adegbo@yahoo.com', '23480-332302', '234080332302', '1, Radiology Avenue,', 'General Hospital', 'Lagos', 25, 97, 519, '1234', '2016-10-26 10:59:13', '0000-00-00 00:00:00', 1),
(32, 35, 'contact', 'temi@mawomi.com', '23401-777777', '234080222222', '123, miosinle str.', '184/186 BAMGBOSE STREET', 'Eko ile', 25, 97, 520, '23401', '2016-10-26 11:02:06', '0000-00-00 00:00:00', 1),
(33, 34, 'contact', 'falanithomas@yahoo.com', '0_-______', '070506720', '5,adebayo street Marsha surulere', 'Adebayo street', 'Lagos', 0, 0, NULL, '864235', '2016-10-26 11:04:08', '0000-00-00 00:00:00', 1),
(34, 37, 'contact', '', '2340_-______', '234080543092', '', '', '', 0, 0, NULL, '', '2016-10-26 11:07:18', '0000-00-00 00:00:00', 1),
(35, 33, 'contact', '', '23408-036671', '234070821044', 'NO 2', 'ADARANIJO STREET,L/ISLAND', 'LAGOS', 0, 97, 0, '', '2016-10-26 11:08:01', '0000-00-00 00:00:00', 1),
(36, 38, 'contact', 'ebenezer_adegbo@yahoo.com', '234', '234080332302', '1, Radiology Avenue,', 'General Hospital', '', 25, 97, 519, '', '2016-10-26 11:11:52', '0000-00-00 00:00:00', 1),
(37, 40, 'contact', '', '23485-247330', '23485247330', '58', 'ASHOGBON STREET LAGOS ISLAND', 'LAGOS', 25, 97, 519, '234', '2016-10-26 11:17:50', '0000-00-00 00:00:00', 1),
(38, 41, 'contact', 'trasult@something.com', '234', '234080331230', '5', 'Broad Street', 'lagos', 25, 97, 519, '2341', '2016-10-26 11:17:51', '0000-00-00 00:00:00', 1),
(39, 42, 'contact', '', '23470-9564__', '234080338204', '12', 'sanusi fafunwa', 'lagos', 25, 97, 502, '23401', '2016-10-26 11:19:22', '0000-00-00 00:00:00', 1),
(40, 45, 'contact', '', '234', '234080254874', '67', 'tokunbo street lagos island', 'island', 25, 97, 519, '23401', '2016-10-26 11:24:35', '0000-00-00 00:00:00', 1),
(41, 43, 'contact', 'ayoade@yahoo.com', '23423-15674_', '234234805288', '56', 'Wawa Street', 'Lagos', 25, 97, 509, '234', '2016-10-26 11:25:30', '0000-00-00 00:00:00', 1),
(42, 44, 'contact', 'irish55@yahoo.com', '23408-067543', '234080567894', '67,', 'lewis street,lagos island', 'lagos', 4, 97, 2, '234', '2016-10-26 11:27:47', '0000-00-00 00:00:00', 1),
(43, 47, 'contact', '', '23407-033256', '234080221544', 'NO 21', 'CAC STREET KETU', 'LAGOS', 25, 97, 518, '10009', '2016-10-26 11:29:11', '0000-00-00 00:00:00', 1),
(44, 46, 'contact', '', '23408-056787', '234090786543', '10 olowolayemo st isheri', 'bisi', 'lagos', 25, 97, 519, '', '2016-10-26 11:29:40', '0000-00-00 00:00:00', 1),
(45, 48, 'contact', 'adebayo@yahoo.com', '23477-48371_', '234070506720', '354 Dixon street off Glover road magodo', '', 'Lagos', 0, 97, NULL, '659855', '2016-10-26 11:34:26', '0000-00-00 00:00:00', 1),
(46, 49, 'contact', '', '23480-332302', '234080332302', '1, Radiology Avenue,', 'General Hospital', 'Lagos', 25, 97, 519, '1234', '2016-10-26 11:34:56', '0000-00-00 00:00:00', 1),
(47, 51, 'contact', '', '234', '234091234567', '999', 'Kandukandu', 'Ondo', 29, 97, 5, '', '2016-10-26 11:42:14', '0000-00-00 00:00:00', 1),
(48, 52, 'contact', '', '23420-685413', '23420685413', '9', 'TOKOSI STREET LAGOS', 'LAGOS', 25, 97, 513, '234', '2016-10-26 11:45:21', '0000-00-00 00:00:00', 1),
(49, 54, 'contact', '', '23480-376607', '234080379907', '20, idu shaga street', '', 'lagos', 25, 97, 7, '23401', '2016-10-27 10:19:09', '0000-00-00 00:00:00', 1),
(50, 55, 'contact', '', '234', '234080664544', '', '', '', 0, 0, NULL, '', '2016-10-27 10:44:51', '0000-00-00 00:00:00', 1),
(51, 56, 'contact', '', '23480-000000', '234766544345', '', '', '', 0, 0, NULL, '', '2016-10-27 10:45:53', '0000-00-00 00:00:00', 1),
(52, 57, 'contact', '', '234', '234321654644', '', '', '', 0, 0, NULL, '', '2016-11-02 14:45:46', '0000-00-00 00:00:00', 1),
(53, 59, 'contact', '', '234', '234080028828', '', '', '', 0, 0, NULL, '', '2016-11-04 09:31:11', '0000-00-00 00:00:00', 1),
(54, 60, 'contact', '\r\n', NULL, '234928882772', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(55, 61, 'contact', '\r\n', NULL, '234093983883', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(56, 62, 'contact', '\r\n', NULL, '234808838727', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(57, 63, 'contact', '\r\n', NULL, '234080679794', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(58, 64, 'contact', 'filanis@yahoo.com\r\n', NULL, '234080338014', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(59, 65, 'contact', 'segunabidoye2012@gmail.com\r\n', NULL, '234070649849', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(60, 66, 'contact', 'ireti@yahoo.com\r\n', NULL, '234805335717', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(61, 67, 'contact', '\r\n', NULL, '234080529846', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(62, 68, 'contact', 'ladfeguk@yahoo.com\r\n', NULL, '234080324566', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(63, 69, 'contact', 'ebenezer_adegbo@yahoo.com\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(64, 70, 'contact', 'emakem2006@yahoo.com\r\n', NULL, '234012700061', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(65, 71, 'contact', 'ebenezer_adegbo@yahoo.com\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(66, 72, 'contact', '\r\n', NULL, '234080543092', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(67, 73, 'contact', '\r\n', NULL, '234070821044', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(68, 74, 'contact', 'ebenezer_adegbo@yahoo.com\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(69, 75, 'contact', '\r\n', NULL, '23485247330', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(70, 76, 'contact', '\r\n', NULL, '234080254874', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(71, 77, 'contact', 'ayoade@yahoo.com\r\n', NULL, '234234805288', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(72, 78, 'contact', '\r\n', NULL, '234080221544', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(73, 79, 'contact', '\r\n', NULL, '234090786543', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(74, 80, 'contact', 'adebayo@yahoo.com\r\n', NULL, '234070506720', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(75, 81, 'contact', '\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(76, 82, 'contact', '\r\n', NULL, '234080379907', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(77, 83, 'contact', '\r\n', NULL, '234321654644', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(78, 84, 'contact', '\r\n', NULL, '234654654464', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(79, 85, 'contact', '\r\n', NULL, '234808289292', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(80, 86, 'contact', '\r\n', NULL, '234080675432', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(81, 87, 'contact', 'bola@gmail.com\r\n', NULL, '234080354320', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(82, 88, 'contact', 'ols.cs@yahoo.com\r\n', NULL, '234080320600', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(83, 89, 'contact', 'kadelu@yahoo.com\r\n', NULL, '234080386669', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(84, 90, 'contact', 'onifadebabatundeazeez@yahoo.com\r\n', NULL, '234234080338', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(85, 91, 'contact', 'larrybizlarrybee@yahoo.com\r\n', NULL, '234080562581', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(86, 92, 'contact', 'anxious@anything.com\r\n', NULL, '234080281596', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(87, 93, 'contact', 'temi@mawomi.com\r\n', NULL, '234080222222', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(88, 94, 'contact', 'falanithomas@yahoo.com\r\n', NULL, '070506720', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(89, 95, 'contact', 'trasult@something.com\r\n', NULL, '234080331230', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(90, 96, 'contact', '\r\n', NULL, '23420685413', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(91, 97, 'contact', '\r\n', NULL, '234080076554', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(92, 98, 'contact', '\r\n', NULL, '234807262662', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(93, 99, 'contact', '\r\n', NULL, '234092992999', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(94, 100, 'contact', 'lanidfi@gamail.com\r\n', NULL, '234080243567', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(95, 101, 'contact', '\r\n', NULL, '234091234567', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(96, 102, 'contact', '\r\n', NULL, '234080664544', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(97, 103, 'contact', 'salamishriffabiodun@gmail.com\r\n', NULL, '234080605259', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(98, 104, 'contact', 'fredameh@gmail.com\r\n', NULL, '234090978987', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(99, 105, 'contact', 'yetunde@yahoo.com\r\n', NULL, '234080542178', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(100, 106, 'contact', '\r\n', NULL, '234080338204', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(101, 107, 'contact', 'irish55@yahoo.com\r\n', NULL, '234080567894', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(102, 108, 'contact', '\r\n', NULL, '234766544345', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-04 12:22:33', '0000-00-00 00:00:00', 1),
(103, 109, 'contact', '', '234', '234243242343', '', '', '', 0, 97, NULL, '', '2016-11-04 15:31:41', '0000-00-00 00:00:00', 1),
(104, 110, 'contact', '', '234', '234232322432', '', '', '', 0, 97, NULL, '', '2016-11-04 15:33:53', '0000-00-00 00:00:00', 1),
(105, 111, 'contact', '\r\n', NULL, '234928882772', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(106, 112, 'contact', '\r\n', NULL, '234093983883', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(107, 113, 'contact', '\r\n', NULL, '234808838727', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(108, 114, 'contact', '\r\n', NULL, '234080679794', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(109, 115, 'contact', 'filanis@yahoo.com\r\n', NULL, '234080338014', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(110, 116, 'contact', 'segunabidoye2012@gmail.com\r\n', NULL, '234070649849', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(111, 117, 'contact', 'ireti@yahoo.com\r\n', NULL, '234805335717', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(112, 118, 'contact', '\r\n', NULL, '234080529846', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(113, 119, 'contact', 'ladfeguk@yahoo.com\r\n', NULL, '234080324566', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(114, 120, 'contact', 'ebenezer_adegbo@yahoo.com\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(115, 121, 'contact', 'emakem2006@yahoo.com\r\n', NULL, '234012700061', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(116, 122, 'contact', 'ebenezer_adegbo@yahoo.com\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(117, 123, 'contact', '\r\n', NULL, '234080543092', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(118, 124, 'contact', '\r\n', NULL, '234070821044', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(119, 125, 'contact', 'ebenezer_adegbo@yahoo.com\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(120, 126, 'contact', '\r\n', NULL, '23485247330', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(121, 127, 'contact', '\r\n', NULL, '234080254874', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(122, 128, 'contact', 'ayoade@yahoo.com\r\n', NULL, '234234805288', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(123, 129, 'contact', '\r\n', NULL, '234080221544', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(124, 130, 'contact', '\r\n', NULL, '234090786543', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(125, 131, 'contact', 'adebayo@yahoo.com\r\n', NULL, '234070506720', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(126, 132, 'contact', '\r\n', NULL, '234080332302', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(127, 133, 'contact', '\r\n', NULL, '234080379907', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(128, 134, 'contact', '\r\n', NULL, '234321654644', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(129, 135, 'contact', '\r\n', NULL, '234654654464', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(130, 136, 'contact', '\r\n', NULL, '234808289292', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(131, 137, 'contact', '\r\n', NULL, '234080675432', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(132, 138, 'contact', 'bola@gmail.com\r\n', NULL, '234080354320', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(133, 139, 'contact', 'ols.cs@yahoo.com\r\n', NULL, '234080320600', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(134, 140, 'contact', 'kadelu@yahoo.com\r\n', NULL, '234080386669', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(135, 141, 'contact', 'onifadebabatundeazeez@yahoo.com\r\n', NULL, '234234080338', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(136, 142, 'contact', 'larrybizlarrybee@yahoo.com\r\n', NULL, '234080562581', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(137, 143, 'contact', 'anxious@anything.com\r\n', NULL, '234080281596', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(138, 144, 'contact', 'temi@mawomi.com\r\n', NULL, '234080222222', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(139, 145, 'contact', 'falanithomas@yahoo.com\r\n', NULL, '070506720', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(140, 146, 'contact', 'trasult@something.com\r\n', NULL, '234080331230', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(141, 147, 'contact', '\r\n', NULL, '23420685413', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(142, 148, 'contact', '\r\n', NULL, '234080076554', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(143, 149, 'contact', '\r\n', NULL, '234807262662', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(144, 150, 'contact', '\r\n', NULL, '234092992999', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(145, 151, 'contact', 'lanidfi@gamail.com\r\n', NULL, '234080243567', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(146, 152, 'contact', '\r\n', NULL, '234091234567', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(147, 153, 'contact', '\r\n', NULL, '234080664544', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(148, 154, 'contact', 'salamishriffabiodun@gmail.com\r\n', NULL, '234080605259', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(149, 155, 'contact', 'fredameh@gmail.com\r\n', NULL, '234090978987', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(150, 156, 'contact', 'yetunde@yahoo.com\r\n', NULL, '234080542178', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(151, 157, 'contact', '\r\n', NULL, '234080338204', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(152, 158, 'contact', 'irish55@yahoo.com\r\n', NULL, '234080567894', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(153, 159, 'contact', '\r\n', NULL, '234766544345', NULL, NULL, '', NULL, NULL, NULL, NULL, '2016-11-11 15:28:58', '0000-00-00 00:00:00', 1),
(154, 160, 'contact', '', '234', '234080027727', '', '', '', 0, 97, NULL, '', '2016-11-16 11:30:00', '0000-00-00 00:00:00', 1),
(155, 161, 'contact', '', '234', '234089032989', '', '', '', 0, 97, NULL, '', '2016-11-17 11:48:32', '0000-00-00 00:00:00', 1),
(156, 164, 'contact', '', '234', '234090345675', 'No 4 Jos road', 'by Yoruba street', 'Zaria', 19, 97, 365, '', '2016-11-18 08:44:32', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_allergies`
--

CREATE TABLE `patient_allergies` (
  `id` int(30) NOT NULL,
  `patient_id` int(30) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `allergy_type` varchar(50) NOT NULL,
  `drug_allergy` tinyint(4) NOT NULL DEFAULT '0',
  `food_allergy` tinyint(4) NOT NULL DEFAULT '0',
  `enviromental_allergy` tinyint(4) NOT NULL DEFAULT '0',
  `allergies` varchar(30) NOT NULL DEFAULT '',
  `severity` varchar(30) NOT NULL,
  `observed_on` date NOT NULL,
  `reactions` varchar(30) NOT NULL DEFAULT '',
  `actions` varchar(30) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `allergy_status` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_checkout`
--

CREATE TABLE `patient_checkout` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `reason` enum('No Appointment','Follow up','admitPatient','Dead') NOT NULL,
  `notes` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_checkout`
--

INSERT INTO `patient_checkout` (`id`, `visit_id`, `reason`, `notes`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, '', '', '2016-10-18 18:03:13', '0000-00-00 00:00:00', 1),
(2, 4, '', '', '2016-10-20 07:32:21', '0000-00-00 00:00:00', 1),
(3, 9, 'Dead', '', '2016-10-21 13:18:47', '0000-00-00 00:00:00', 1),
(4, 9, '', '', '2016-10-21 13:32:35', '0000-00-00 00:00:00', 1),
(5, 15, 'admitPatient', '', '2016-10-22 13:12:29', '0000-00-00 00:00:00', 1),
(6, 14, 'admitPatient', '', '2016-10-22 13:16:34', '0000-00-00 00:00:00', 1),
(7, 17, 'admitPatient', '', '2016-10-22 15:49:24', '0000-00-00 00:00:00', 1),
(8, 18, '', '', '2016-10-24 14:30:35', '0000-00-00 00:00:00', 1),
(9, 10, '', '', '2016-10-25 17:22:10', '0000-00-00 00:00:00', 1),
(10, 0, '', '', '2016-10-25 17:22:13', '0000-00-00 00:00:00', 1),
(11, 20, '', '', '2016-10-25 17:22:19', '0000-00-00 00:00:00', 1),
(12, 10, '', '', '2016-10-25 17:22:27', '0000-00-00 00:00:00', 1),
(13, 20, 'admitPatient', '', '2016-10-25 17:23:40', '0000-00-00 00:00:00', 1),
(14, 10, '', '', '2016-10-25 17:30:40', '0000-00-00 00:00:00', 1),
(15, 20, '', '', '2016-10-25 17:30:42', '0000-00-00 00:00:00', 1),
(16, 21, '', '', '2016-10-25 18:16:35', '0000-00-00 00:00:00', 1),
(17, 11, '', 'NA', '2016-10-26 05:28:44', '0000-00-00 00:00:00', 1),
(18, 36, '', '', '2016-10-26 12:58:41', '0000-00-00 00:00:00', 1),
(19, 26, 'admitPatient', 'NA', '2016-10-27 07:54:31', '0000-00-00 00:00:00', 1),
(20, 34, 'admitPatient', 'NA', '2016-10-27 07:57:10', '0000-00-00 00:00:00', 1),
(21, 25, '', '', '2016-11-03 20:03:33', '0000-00-00 00:00:00', 1),
(22, 29, '', '', '2016-11-05 06:35:35', '0000-00-00 00:00:00', 1),
(23, 37, '', '', '2016-11-05 06:35:41', '0000-00-00 00:00:00', 1),
(24, 32, '', '', '2016-11-05 06:35:47', '0000-00-00 00:00:00', 1),
(25, 31, '', '', '2016-11-05 06:35:53', '0000-00-00 00:00:00', 1),
(26, 24, '', '', '2016-11-05 06:35:58', '0000-00-00 00:00:00', 1),
(27, 23, '', '', '2016-11-05 06:36:06', '0000-00-00 00:00:00', 1),
(28, 35, '', '', '2016-11-05 06:36:13', '0000-00-00 00:00:00', 1),
(29, 42, '', '', '2016-11-05 06:36:23', '0000-00-00 00:00:00', 1),
(30, 41, '', '', '2016-11-05 06:36:30', '0000-00-00 00:00:00', 1),
(31, 30, '', '', '2016-11-05 06:36:35', '0000-00-00 00:00:00', 1),
(32, 27, '', '', '2016-11-05 06:36:40', '0000-00-00 00:00:00', 1),
(33, 38, '', '', '2016-11-05 06:36:46', '0000-00-00 00:00:00', 1),
(34, 22, '', '', '2016-11-05 06:36:53', '0000-00-00 00:00:00', 1),
(35, 16, '', '', '2016-11-05 06:36:59', '0000-00-00 00:00:00', 1),
(36, 13, '', '', '2016-11-05 06:37:05', '0000-00-00 00:00:00', 1),
(37, 12, '', '', '2016-11-05 06:37:12', '0000-00-00 00:00:00', 1),
(38, 53, '', '', '2016-11-05 06:37:36', '0000-00-00 00:00:00', 1),
(39, 55, 'admitPatient', 'none', '2016-11-07 12:35:47', '0000-00-00 00:00:00', 1),
(40, 54, 'admitPatient', 'None', '2016-11-07 12:36:59', '0000-00-00 00:00:00', 1),
(41, 51, 'admitPatient', 'None', '2016-11-07 12:38:37', '0000-00-00 00:00:00', 1),
(42, 51, 'admitPatient', 'None', '2016-11-07 12:39:52', '0000-00-00 00:00:00', 1),
(43, 51, 'admitPatient', 'None', '2016-11-07 12:40:36', '0000-00-00 00:00:00', 1),
(44, 58, '', '', '2016-11-08 09:29:11', '0000-00-00 00:00:00', 1),
(45, 56, 'admitPatient', '', '2016-11-09 08:36:04', '0000-00-00 00:00:00', 1),
(46, 39, '', '', '2016-11-14 12:46:39', '0000-00-00 00:00:00', 1),
(47, 64, 'admitPatient', '', '2016-11-17 10:25:48', '0000-00-00 00:00:00', 1),
(48, 67, '', '', '2016-11-17 12:17:40', '0000-00-00 00:00:00', 1),
(49, 66, 'admitPatient', '', '2016-11-17 15:05:51', '0000-00-00 00:00:00', 1),
(50, 66, 'admitPatient', 'NA', '2016-11-17 15:06:30', '0000-00-00 00:00:00', 1),
(51, 68, 'admitPatient', 'asd', '2016-11-17 15:51:12', '0000-00-00 00:00:00', 1),
(52, 68, 'admitPatient', 'asdfsda', '2016-11-17 15:54:30', '0000-00-00 00:00:00', 1),
(53, 68, 'admitPatient', 'sad', '2016-11-17 15:56:00', '0000-00-00 00:00:00', 1),
(54, 68, 'admitPatient', 'asd', '2016-11-17 15:58:45', '0000-00-00 00:00:00', 1),
(55, 57, 'admitPatient', 'sdaf', '2016-11-17 15:59:55', '0000-00-00 00:00:00', 1),
(56, 4, 'admitPatient', '', '2016-11-17 16:08:57', '0000-00-00 00:00:00', 1),
(57, 57, 'admitPatient', 'sad', '2016-11-17 16:09:59', '0000-00-00 00:00:00', 1),
(58, 51, 'admitPatient', 'as', '2016-11-17 16:11:29', '0000-00-00 00:00:00', 1),
(59, 57, 'admitPatient', 'sdfa', '2016-11-17 16:13:51', '0000-00-00 00:00:00', 1),
(60, 69, 'admitPatient', 'asd', '2016-11-17 16:14:32', '0000-00-00 00:00:00', 1),
(61, 70, 'admitPatient', 'sd', '2016-11-17 16:16:02', '0000-00-00 00:00:00', 1),
(62, 73, 'admitPatient', 'removal of tooth', '2016-11-18 08:25:42', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_clinical_notes`
--

CREATE TABLE `patient_clinical_notes` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `signoff` tinyint(4) NOT NULL,
  `diagnosis` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_clinical_notes`
--

INSERT INTO `patient_clinical_notes` (`id`, `patient_id`, `visit_id`, `template_id`, `value`, `signoff`, `diagnosis`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 13, '{"Diagnosis":"","field3697":"Light Headache","field3700":"Nothing","field3706":"Nothing","field3712":"Nothing","field3709":"Nothing","field3703":"Nothing"}', 1, '[6,891,1370]', '2016-10-17 18:10:05', '2016-10-18 06:45:48', 1),
(2, 4, 4, 13, '{"Diagnosis":"","field3697":"Headache and sore troat","field3700":"test","field3706":"Test","field3712":"Test","field3709":"Test","field3703":"Test"}', 1, '[891,1370]', '2016-10-20 07:17:27', '2016-10-20 07:32:00', 1),
(3, 2, 5, 13, '{"Diagnosis":"","field3697":"Sweating, nausea, shortness of breath, or severe weakness may accompany the pain. Myocarditis. In addition to chest pain, this heart muscle inflammation may cause fever, fatigue, fast heart beat, and trouble breathing. Although no blockage exists, myocarditis symptoms can resemble those of a heart attack.","field3700":"Sweating, nausea, shortness of breath, or severe weakness may accompany the pain. Myocarditis. In addition to chest pain, this heart muscle inflammation may cause fever, fatigue, fast heart beat, and trouble breathing. Although no blockage exists, myocarditis symptoms can resemble those of a heart attack.","field3706":"Sweating, nausea, shortness of breath, or severe weakness may accompany the pain. Myocarditis. In addition to chest pain, this heart muscle inflammation may cause fever, fatigue, fast heart beat, and trouble breathing. Although no blockage exists, myocarditis symptoms can resemble those of a heart attack.","field3712":"Sweating, nausea, shortness of breath, or severe weakness may accompany the pain. Myocarditis. In addition to chest pain, this heart muscle inflammation may cause fever, fatigue, fast heart beat, and trouble breathing. Although no blockage exists, myocarditis symptoms can resemble those of a heart attack.","field3709":"Sweating, nausea, shortness of breath, or severe weakness may accompany the pain. Myocarditis. In addition to chest pain, this heart muscle inflammation may cause fever, fatigue, fast heart beat, and trouble breathing. Although no blockage exists, myocarditis symptoms can resemble those of a heart attack.","field3703":"Sweating, nausea, shortness of breath, or severe weakness may accompany the pain. Myocarditis. In addition to chest pain, this heart muscle inflammation may cause fever, fatigue, fast heart beat, and trouble breathing. Although no blockage exists, myocarditis symptoms can resemble those of a heart attack."}', 0, '[4,19,396,1279]', '2016-10-20 07:21:02', '2016-10-21 08:29:22', 1),
(4, 7, 6, 13, '{"Diagnosis":"","field3697":"Test","field3700":"Test","field3706":"Test","field3712":"Test4333","field3709":"Test","field3703":"Test"}', 1, '[3]', '2016-10-20 07:54:18', '2016-10-21 12:46:41', 1),
(5, 5, 13, 13, '{"Diagnosis":"","field3697":"","field3700":"","field3706":"","field3712":"","field3709":"","field3703":""}', 0, '[3,8,10,1068]', '2016-10-22 06:52:17', '2016-10-25 15:06:57', 1),
(6, 13, 14, 13, '{"Diagnosis":"","field3697":"headaches and fever x 5\\/7","field3700":"fever- high grade and intermittent.Worse at night\\nheadache is generalised,associated vomiting, double vision,neck pain and stiffness","field3706":"nil of note","field3712":"nil of note","field3709":"hypertension","field3703":"nil of note"}', 0, '0', '2016-10-22 13:03:34', '2016-10-22 13:03:35', 1),
(7, 18, 0, 12, '{"Diagnosis":"","Complaint":"","field6075":"","field6078":"","field6081":""}', 0, '0', '2016-10-22 13:30:19', '2016-10-22 13:41:30', 1),
(8, 11, 17, 13, '{"Diagnosis":"","field3697":"","field3700":"","field3706":"","field3712":"","field3709":"","field3703":""}', 1, '[683,1066]', '2016-10-22 15:43:57', '2016-10-22 15:49:59', 1),
(9, 15, 18, 13, '{"Diagnosis":"","field3697":"test","field3700":"","field3706":"test","field3712":"","field3709":"","field3703":""}', 0, '[1381]', '2016-10-24 13:30:23', '2016-10-24 13:30:24', 1),
(10, 2, 11, 22, '{"Diagnosis":"","field7065":"dfhgjlk"}', 0, '[4]', '2016-10-24 14:07:11', '2016-10-25 12:41:42', 1),
(11, 19, 21, 13, '{"Diagnosis":"","field3697":"headache, body pain, cold","field3700":"prone to","field3706":"react to amonda","field3712":"antibiotic","field3709":"hypertension","field3703":"none"}', 1, '0', '2016-10-25 18:07:52', '2016-10-25 18:07:52', 1),
(12, 41, 40, 13, '{"Diagnosis":"","field3697":"","field3700":"","field3706":"","field3712":"","field3709":"","field3703":""}', 0, '0', '2016-10-27 04:35:51', '2016-10-27 04:35:51', 1),
(13, 41, 43, 13, '{"field8238":"Yes","field3697":"Yes","field8240":"Yes","field3700":"Y","field3706":"Y","field3712":"Y","field3709":"","Diagnosis":"","field3703":"T"}', 0, '[2]', '2016-11-03 17:41:44', '2016-11-16 08:54:25', 1),
(14, 59, 46, 13, '{"field8238":"FG","field3697":"GHh","field8240":"Hj","field3700":"","field3706":"GH","field3712":"GH","field3709":"GH","Diagnosis":"","field3703":"GH"}', 0, '0', '2016-11-04 09:32:41', '2016-11-04 09:44:39', 1),
(15, 59, 53, 13, '{"field8238":"Tommy Smith","field3697":"Ka","field8240":"Ka","field3700":"","field3706":"Ka","field3712":"Ka","field3709":"K","Diagnosis":"","field3703":""}', 0, '[3,4]', '2016-11-04 21:00:03', '2016-11-05 06:34:59', 1),
(16, 63, 54, 13, '{"field8238":"Malaria","field3697":"Patient complains of headache, vomiting, lack of appetite","field8240":"High temperature","field3700":"","field3706":"","field3712":"","field3709":"","Diagnosis":"","field3703":""}', 1, '0', '2016-11-07 08:40:25', '2016-11-07 10:22:21', 1),
(17, 45, 44, 13, '{"field8238":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","field3697":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","field8240":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","field3700":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","field3706":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","field3712":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","field3709":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","field3703":"A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.A provisional diagnosis is a medical diagnosis by a professional based on the information provided at the moment. A doctor issues a provisional diagnosis when first presented with a case and further tests or information are required before an exact diagnosis can be determined.","Diagnosis":""}', 0, '[3,19,77,98,164,608,905,1300]', '2016-11-07 14:09:08', '2016-11-17 15:14:17', 1),
(18, 34, 58, 13, '{"field8238":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues.","field3697":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues.","field8240":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues.","field3700":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues.","field3706":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues.","field3712":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues.","field3709":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues.","Diagnosis":"","field3703":"Whether the cancer is invasive. Tumors of many types may be noninvasive (in situ, which means \\u201cin place\\u201d) or invasive. Invasive tumors can spread to other parts of the body through a process called metastasis. Although noninvasive tumors do not spread, they may grow or develop into an invasive tumor in the future. For invasive tumors, it is important for the pathologist to note how much the tumor has grown into nearby healthy tissues."}', 1, '[324,472,1088,1257]', '2016-11-08 08:41:01', '2016-11-08 09:01:23', 1),
(19, 2, 52, 13, '{"field8238":"Test","field3697":"Test","field8240":"Test","field3700":"","field3706":"","field3712":"Test","field3709":"Test","Diagnosis":"","field3703":"Test"}', 0, '[5,614]', '2016-11-08 09:49:34', '2016-11-16 10:45:35', 1),
(20, 34, 59, 13, '{"field8238":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions.","field3697":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions.","field8240":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions.","field3700":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions.","field3706":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions.","field3712":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions.","field3709":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions.","Diagnosis":"","field3703":"Diagnosis is the identification of the nature and cause of a certain phenomenon. Diagnosis is used in many different disciplines with variations in the use of logic, analytics, and experience to determine \\"cause and effect\\". In systems engineering and computer science, it is typically used to determine the causes of symptoms, mitigations, and solutions."}', 0, '[18,43,142]', '2016-11-08 10:00:36', '2016-11-16 15:06:10', 1),
(21, 161, 67, 13, '{"field8238":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","field3697":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","field8240":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","field3700":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","field3706":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","field3712":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","field3709":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","field3703":"Trump communications director Jason Miller and Republican National Committee spokesman Sean Spicer announced anyone being vetted for a high post in the administration must provide a termination of lobbying form if they are a registered lobbyist.","Diagnosis":""}', 0, '0', '2016-11-17 12:09:43', '2016-11-17 12:17:21', 1),
(22, 149, 66, 13, '{"field8238":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","field3697":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","field8240":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","field3700":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","field3706":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","field3712":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","field3709":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","field3703":"Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax","Diagnosis":""}', 1, '[1,3]', '2016-11-17 14:52:39', '2016-11-18 12:25:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_dependants`
--

CREATE TABLE `patient_dependants` (
  `id` int(20) NOT NULL,
  `plan_detail_id` int(20) NOT NULL,
  `principal_id` int(20) NOT NULL,
  `dependant_id` int(20) NOT NULL,
  `relationship` int(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_dependants`
--

INSERT INTO `patient_dependants` (`id`, `plan_detail_id`, `principal_id`, `dependant_id`, `relationship`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 3, 2, 1, '2016-10-18 18:01:09', '0000-00-00 00:00:00', 1),
(2, 2, 5, 4, 5, '2016-10-20 07:08:58', '0000-00-00 00:00:00', 1),
(3, 3, 7, 4, 5, '2016-10-20 07:51:27', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_employers`
--

CREATE TABLE `patient_employers` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `mobile_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `house_number` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_employers`
--

INSERT INTO `patient_employers` (`id`, `patient_id`, `name`, `phone_number`, `mobile_number`, `email`, `house_number`, `street`, `city`, `state`, `country`, `created_at`, `updated_at`, `status`) VALUES
(1, 9, 'civil', '', '', '', '', '', '', '', '', '2016-10-20 14:16:37', '0000-00-00 00:00:00', 1),
(2, 10, 'Kwara state government', '', '09078654321', 'ade@gmail.com', '109', 'Jayi', 'Kano', '21', '97', '2016-10-20 14:35:17', '0000-00-00 00:00:00', 1),
(3, 8, 'kwara state government', '090657432', '08056326721', '', 'rm2 flat 2', 'wuse', 'lagos', '? string:97 ?', '97', '2016-10-20 14:35:49', '2016-10-20 14:36:15', 1),
(4, 15, 'Nigerian Papermill', '', '', '', 'No', 'Airport', 'Oyo', '', '', '2016-10-22 12:30:34', '0000-00-00 00:00:00', 1),
(5, 14, 'general hospital ilorin', '', '07064984968', 'ladoke@gamil.com', '8', 'judith street', 'ilorin', '24', '97', '2016-10-22 12:33:03', '0000-00-00 00:00:00', 1),
(6, 12, 'GHI', '012345676', '08045678923', 'kntlmoshood@gmail.com', 'No 34', 'Umar Saro', 'Kabba', '23', '97', '2016-10-22 12:33:16', '0000-00-00 00:00:00', 1),
(7, 16, 'General Hospital', '', '', '', '', '', '', '', '97', '2016-10-22 12:33:46', '0000-00-00 00:00:00', 1),
(8, 17, 'Kwara Stae Government', '35', '08012345678', 'ghi@yahoo.com', '45', 'AGBAYA', '', '24', '97', '2016-10-22 12:34:57', '0000-00-00 00:00:00', 1),
(9, 18, 'GHI', '080327008', '080320998', 'sedr.@yahoo.com', '3', 'tanke oke odo', 'odo owa', '6', '96', '2016-10-22 12:36:11', '0000-00-00 00:00:00', 1),
(10, 27, 'lagos state government', '', '08045637282', 'lsdgahbxzfF2@YAHOO.COM', '345', 'Inalende street, lagos', 'lagos', '25', '97', '2016-10-26 10:54:58', '0000-00-00 00:00:00', 1),
(11, 28, 'self employe', '', '08022568558', '', '122', 'idumagbo avenue, lagos island', 'island', '25', '97', '2016-10-26 10:59:43', '0000-00-00 00:00:00', 1),
(12, 30, 'LASG', '080281596', '', 'ROSUL@GMAIL.COM', '5', 'BROAD STREET', 'LAGOS', '25', '97', '2016-10-26 11:00:34', '0000-00-00 00:00:00', 1),
(13, 29, 'Nigerian Brewery', '012333333', '23480999944', '', '7', 'Kelu street', '', '', '97', '2016-10-26 11:02:00', '0000-00-00 00:00:00', 1),
(14, 34, 'Standard crest', '017748371', '07050672086', 'jimifalani@yahoo.com', '2,abpyade Cole street Victoria island lagos', '', 'Lagos', '25', '97', '2016-10-26 11:08:52', '0000-00-00 00:00:00', 1),
(15, 38, 'Lagos State Health Service Commission', '803312467', '08033567892', '', '!, Radiology Avenue,', 'General Hospital', 'Lagos', '25', '97', '2016-10-26 11:18:03', '0000-00-00 00:00:00', 1),
(16, 35, 'HSC', '011111111', '09055555555', 'kuronile@omolayo.com', '222', 'ilewe', 'kunu', '2', '97', '2016-10-26 11:18:41', '0000-00-00 00:00:00', 1),
(17, 41, 'lasg', '', '', 'myself@yahoo.com', '5', 'broad street', 'lagos', '25', '97', '2016-10-26 11:20:48', '0000-00-00 00:00:00', 1),
(18, 40, 'LAGOS STATE GOVERNMENT', '858247330', '', '', '58', 'ASHOGBON STREET LAGOS ISLAND', 'LAGOS', '25', '97', '2016-10-26 11:22:28', '0000-00-00 00:00:00', 1),
(19, 45, 'lasg', '', '08047125895', 'lshscinfo@yahoo.com', '21', 'bolaji ojo street, lagos', 'lagos mainland', '25', '97', '2016-10-26 11:28:42', '0000-00-00 00:00:00', 1),
(20, 43, 'Water Corporation', '012345678', '23466632189', '', '56', 'Wawa Street', '', '', '97', '2016-10-26 11:30:21', '0000-00-00 00:00:00', 1),
(21, 46, 'general hospital lagos', '090868909', '09878689', '', '90 baruwa cls ikeja', 'bisi st', '', '', '', '2016-10-26 11:35:10', '0000-00-00 00:00:00', 1),
(22, 52, 'LAGOS STATE GOVERNMENT', '20685413', '25875421', '', '9', 'TOKOSI STREET LAGOS ISLAND', 'LAGOS', '25', '97', '2016-10-26 11:49:24', '0000-00-00 00:00:00', 1),
(23, 164, 'Blessed Obinno Computers', '', '', '', '', '', '', '', '97', '2016-11-18 08:44:55', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_followup`
--

CREATE TABLE `patient_followup` (
  `id` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `pick_date` date NOT NULL,
  `pick_time` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_immunizations`
--

CREATE TABLE `patient_immunizations` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `immunization_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_immunizations`
--

INSERT INTO `patient_immunizations` (`id`, `patient_id`, `name`, `immunization_date`, `created_at`, `updated_at`, `status`) VALUES
(1, 5, 'CPP', '2016-10-20', '2016-10-22 20:05:15', '0000-00-00 00:00:00', 1),
(2, 2, 'patient injection administered', '2016-11-17', '2016-11-17 15:18:48', '2016-11-17 15:20:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_insurance`
--

CREATE TABLE `patient_insurance` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_kin`
--

CREATE TABLE `patient_kin` (
  `id` int(11) NOT NULL,
  `patient_id` int(45) NOT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `relationship` varchar(45) DEFAULT NULL,
  `others` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `mobile_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `house_number` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_kin`
--

INSERT INTO `patient_kin` (`id`, `patient_id`, `fullname`, `middlename`, `lastname`, `relationship`, `others`, `phone_number`, `mobile_number`, `email`, `house_number`, `street`, `city`, `state`, `country`, `postal_code`, `created_at`, `updated_at`, `status`) VALUES
(1, 9, 'salami', 'shukurat', 'ajoke', '4', '', '060525988', '08060525988', 'salamisarahajoke@yahoo.com', '10,okewemimo street magbo lagos state', 'magbon badagry', '', '', '97', '24042', '2016-10-20 14:16:04', '0000-00-00 00:00:00', 1),
(2, 8, 'adesina', 'roy', 'james', '4', '', '067432888', '07063425162', '', 'rm 4 fiat 6', 'wuse street', 'ilorin', '24', NULL, '240272', '2016-10-20 14:31:01', '0000-00-00 00:00:00', 1),
(3, 10, 'Abdullah', 'Dare', 'Aremu', '1', '', '', '08035662878', 'ade@gmail.com', '133', 'Ajenipa', 'Ilorin', '', '97', '240', '2016-10-20 14:31:23', '0000-00-00 00:00:00', 1),
(4, 15, 'Abigael', 'Ajoke', 'Adekunle', '2', '', '070683628', '08072543987', '', '26', 'Airport', 'Oyo', '31', NULL, '', '2016-10-22 12:28:41', '0000-00-00 00:00:00', 1),
(5, 13, 'moshood', 'abiola', 'abdulkareem', '4', '', '', '08076854321', '', '', 'ipata road', 'ilorin', '', '97', '', '2016-10-22 12:29:28', '0000-00-00 00:00:00', 1),
(6, 14, 'Usman', 'Majeed', 'Kolawole', '4', '', '', '07064984968', 'freeman@gmail.com', 'No 5 olorunshogo', '', 'ilorin', '', '97', '240001', '2016-10-22 12:30:01', '0000-00-00 00:00:00', 1),
(7, 12, 'Kuranga', 'Modinat', 'Temitayo', '2', '', '080667745', '08034567887', 'kntlmoshood@yahoo.com', 'No 34', 'killer street', 'Ilorin', '', '97', '244', '2016-10-22 12:30:31', '0000-00-00 00:00:00', 1),
(8, 16, 'Abdullahi', 'Ahmed', 'Akintunde', '7', '', '080845851', '08084585141', 'fredameh@gmail.com', '7 Adangba', 'Adangba', '', '', '97', '', '2016-10-22 12:31:10', '0000-00-00 00:00:00', 1),
(9, 17, 'kunle', 'memuno', 'oyelakin', '2', '', '081234567', '08045678345', 'adeyemi@yahoo.com', '12, Adamu Attah Road ,Ilorin', 'adamu battah road', 'Ilorin', '24', '97', '234556', '2016-10-22 12:32:47', '0000-00-00 00:00:00', 1),
(10, 18, 'ademola', 'tunde', 'bashira', '2', '', '080340789', '07023451', '', 'tanke okeodo', 'ilorin', 'ilorin', '', '4', '1234', '2016-10-22 12:34:22', '0000-00-00 00:00:00', 1),
(11, 27, 'ajadi', 'kudirat', 'aduke', '4', '', '080943256', '08096785432', 'adaduik@gmail.com', '32', 'igbehinadun street, lagos', 'lagos', '', '97', '234', '2016-10-26 10:53:17', '0000-00-00 00:00:00', 1),
(12, 28, 'falade', 'aduke', 'kemi', '2', '', '070892082', '07089208220', 'aduke234@yahoo.com', '34', 'martins street, mushin lagos', 'mushin', '25', '97', '10011', '2016-10-26 10:57:32', '2016-10-26 11:01:38', 1),
(13, 30, 'Taiwo', '', 'Taiwo', '2', '', '080281596', '', 'rosul@gmail.com', '3', 'Broad street', 'lagos', '', '97', '2341', '2016-10-26 10:58:35', '0000-00-00 00:00:00', 1),
(14, 29, 'Akinyemi', '', 'Bolanle', '4', '', '012333306', '23480566677', '', '36', 'Okowunmi', 'Lagos', '', '97', '234', '2016-10-26 10:59:02', '0000-00-00 00:00:00', 1),
(15, 33, 'JOHN', 'GBOLAHAN', 'BADEJO', '1', 'FATHER', '080665312', '07082117342', '', '2 ADARANIJO STREET L/ISLAND', 'L/ISLAND', 'LAGOS', '', '97', '1009', '2016-10-26 11:03:40', '0000-00-00 00:00:00', 1),
(16, 34, 'Richard', 'Tolulope', 'Falani', '1', '', '', '07056789542', 'richardfalani@yahoo.com', '51 adebauo street surulere', '', '', '', '', '125869', '2016-10-26 11:06:08', '0000-00-00 00:00:00', 1),
(17, 35, 'Adiatu', 'OF', 'Azeez', '2', '', '013333330', '09011111111', 'suwe@taining.com', '123', 'Agboole str', 'LAGOS ISLAND', '25', NULL, '23401', '2016-10-26 11:15:12', '0000-00-00 00:00:00', 1),
(18, 38, 'Damilola', '', 'Adegbo', '5', '', '809667333', '', '', '1, Radiology Avenue', 'General Hospital', 'Lagos', '25', '97', '1234', '2016-10-26 11:15:24', '2016-10-26 11:26:47', 1),
(19, 41, 'Taiwo', '', 'Idowu', '5', '', '080281596', '', 'id@anything.com', '3', 'broad street', 'lagos', '25', NULL, '2341', '2016-10-26 11:19:40', '0000-00-00 00:00:00', 1),
(20, 40, 'SAKA', 'MOTUNRAYO', 'OYIN', '5', '', '', '85247330', '', '58', 'ASHOGBON STREET LAGOS ISLAND', 'LAGOS', '', '97', '234', '2016-10-26 11:20:31', '0000-00-00 00:00:00', 1),
(21, 42, 'alabi', 'tunji', 'wese', '1', '', '12', '', 'alabi@yahoo.com', 'idowu str.', '', 'badagry', '', '97', '23401', '2016-10-26 11:25:54', '0000-00-00 00:00:00', 1),
(22, 45, 'jude', 'ajoke', 'serah', '2', '', '080974512', '08097458214', '', '67', 'tokunbo street, lagos island', 'island', '', '97', '23401', '2016-10-26 11:26:13', '0000-00-00 00:00:00', 1),
(23, 43, 'Nneka', 'Joy', 'Ngozi', '5', '', '', '23807777443', '', '56', 'Wawa Street', 'Lagos', '', '97', '', '2016-10-26 11:28:27', '0000-00-00 00:00:00', 1),
(24, 47, 'ONABANJO', 'BOLA', 'FELIX', '2', 'HUSBAND', '080992147', '07045321182', '', '21', 'CAC STREET,KETU', 'LAGOS', '', '97', '0004', '2016-10-26 11:31:48', '0000-00-00 00:00:00', 1),
(25, 46, 'sesan', 'adelanwa', 'boluwatife', '2', '', '090567899', '090786543', '', '54 bello street magodo', 'magodu', '', '', '', '', '2016-10-26 11:33:36', '0000-00-00 00:00:00', 1),
(26, 49, 'Ifeolu', '', 'Adegbo', '1', '', '803456789', '', '', '1, Radiology Avenue', 'General Hospital', 'Lagos', '', '97', '1234', '2016-10-26 11:39:14', '0000-00-00 00:00:00', 1),
(27, 48, 'Tola', '', 'Adebayo', '1', '', '0705623645', '07050687426', 'adebayotola@gmail.com', '56, Crossgate street,  dulwich Kelli lagos', '', 'Lagos', '', '', '235688', '2016-10-26 11:39:42', '0000-00-00 00:00:00', 1),
(28, 51, 'toyin', 'bola', 'kemi', '2', '', '34', '', '', 'lewis  street,lagos lsland', '', '', '', '', '', '2016-10-26 11:44:56', '0000-00-00 00:00:00', 1),
(29, 52, 'ADAGUNDURO', 'KHALEED', 'ADEWALE', '4', '', '', '', '', '9', 'TOKOSI STREET', '', '', '', '234', '2016-10-26 11:47:34', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_test_values`
--

CREATE TABLE `patient_lab_test_values` (
  `id` int(11) NOT NULL,
  `lab_order_id` int(11) NOT NULL,
  `lab_test` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `template_values` text NOT NULL,
  `signoff` tinyint(4) NOT NULL DEFAULT '0',
  `added_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_lab_test_values`
--

INSERT INTO `patient_lab_test_values` (`id`, `lab_order_id`, `lab_test`, `template_id`, `template_values`, `signoff`, `added_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 14, '{"field1518":"2","field1510":"Test","field1513":"Test"}', 1, 0, '2016-10-20 07:29:10', '2016-11-17 16:09:05', 1),
(2, 4, 5, 14, '{"field1518":"1","field1510":"dfghd","field1513":"dfghhhh"}', 1, 0, '2016-10-20 08:12:12', '2016-10-25 11:11:26', 1),
(3, 4, 5, 14, '{}', 0, 0, '2016-10-20 08:12:13', '0000-00-00 00:00:00', 1),
(4, 2, 2, 2, '{"RBC":"5.4g\\/dl","RBCnotes":"Adequate Red Blood Cell count."}', 1, 0, '2016-10-21 13:58:23', '2016-10-24 15:42:39', 1),
(5, 2, 2, 2, '{"RBC":"5.4g/dl","RBCnotes":"Adequate Red Blood Cell count."}', 0, 0, '2016-10-21 13:58:23', '0000-00-00 00:00:00', 1),
(6, 2, 2, 2, '{"RBC":"5.4g/dl","RBCnotes":"Adequate Red Blood Cell count."}', 0, 0, '2016-10-21 13:58:23', '0000-00-00 00:00:00', 1),
(7, 2, 2, 2, '{"RBC":"5.4g/dl","RBCnotes":"Adequate Red Blood Cell count."}', 0, 0, '2016-10-21 13:58:23', '0000-00-00 00:00:00', 1),
(8, 5, 6, 4, '{"Count":""}', 0, 0, '2016-10-20 16:00:18', '2016-10-20 16:00:19', 1),
(9, 7, 9, 17, '{"DIFFERENTIAL":"BLAST -\\nPROMYELOCYTE -\\nMYELOCYTE -\\nMETAMYELOCYTE -\\nNUET(50-75%) -\\nLYMPH(25-40%) -\\nMONO(2-10%) -\\nEOSIN(1-6%) -\\nBASO(0-1%) -","RCI":"POLYCHROMASIA-\\nANISOCYTOSIS-\\nPOIKILOCYTOSIS-\\nMICROCYTOSIS-\\nMACROCYTOSIS-\\nHYPOCHROMASIA-\\nTARGET CELLS-\\nSICKLE CELLS-\\nNUCLEATED RED CELLS-\\nPLATELETS(On Film)","RETIC":"0.5-1.5%","HB":"12.5-18.5G\\/DL","PLT":"150000-400000M\\/L","RBC":"5-7m","WBC":"3-10G\\/L","PCV":"0-100%"}', 1, 0, '2016-10-26 04:38:25', '2016-10-26 04:38:26', 1),
(10, 7, 9, 17, '{}', 0, 0, '2016-10-26 04:38:26', '0000-00-00 00:00:00', 1),
(11, 13, 14, 2, '{"RBC":"120","RBCnotes":"None"}', 0, 0, '2016-11-09 13:11:19', '2016-11-09 13:13:58', 1),
(12, 14, 15, 2, '{"RBC":"94","RBCnotes":"None"}', 0, 0, '2016-11-09 13:16:48', '2016-11-09 13:16:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_prescription`
--

CREATE TABLE `patient_prescription` (
  `id` int(11) NOT NULL,
  `visit_id` int(8) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `prescription_status` varchar(40) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_prescription`
--

INSERT INTO `patient_prescription` (`id`, `visit_id`, `patient_id`, `total_amount`, `due`, `prescription_status`, `paid`, `created_at`, `updated_at`, `status`) VALUES
(1, 5, 2, 0, 0, 'in progress', 1, '2016-10-20 07:23:04', '0000-00-00 00:00:00', 1),
(2, 6, 7, 0, 0, 'in progress', 1, '2016-10-21 11:21:01', '0000-00-00 00:00:00', 1),
(3, 3, 3, 0, 0, 'in progress', 1, '2016-10-21 12:39:09', '0000-00-00 00:00:00', 1),
(4, 8, 4, 0, 0, 'in progress', 1, '2016-10-21 12:41:45', '0000-00-00 00:00:00', 1),
(5, 1, 1, 0, 0, 'in progress', 1, '2016-10-21 12:45:21', '0000-00-00 00:00:00', 1),
(6, 9, 7, 0, 0, 'in progress', 1, '2016-10-21 13:15:53', '0000-00-00 00:00:00', 1),
(7, 10, 1, 0, 0, 'in progress', 1, '2016-10-21 14:07:45', '0000-00-00 00:00:00', 1),
(8, 13, 5, 0, 0, 'in progress', 1, '2016-10-24 14:51:55', '0000-00-00 00:00:00', 1),
(9, 11, 2, 0, 0, 'in progress', 1, '2016-10-25 12:31:43', '0000-00-00 00:00:00', 1),
(10, 16, 12, 0, 0, 'in progress', 1, '2016-10-26 10:13:55', '0000-00-00 00:00:00', 1),
(11, 45, 1, 0, 0, 'in progress', 1, '2016-11-02 17:21:50', '0000-00-00 00:00:00', 1),
(12, 46, 59, 0, 0, 'in progress', 1, '2016-11-04 09:34:59', '0000-00-00 00:00:00', 1),
(13, 51, 1, 0, 0, 'in progress', 1, '2016-11-04 16:01:57', '0000-00-00 00:00:00', 1),
(14, 53, 59, 0, 0, 'in progress', 1, '2016-11-04 21:00:48', '0000-00-00 00:00:00', 1),
(15, 59, 34, 0, 0, 'in progress', 1, '2016-11-08 10:00:21', '0000-00-00 00:00:00', 1),
(16, 60, 4, 0, 0, 'in progress', 1, '2016-11-14 09:54:12', '0000-00-00 00:00:00', 1),
(17, 39, 29, 0, 0, 'in progress', 1, '2016-11-14 11:49:38', '0000-00-00 00:00:00', 1),
(18, 61, 29, 0, 0, 'in progress', 1, '2016-11-14 12:48:58', '0000-00-00 00:00:00', 1),
(19, 62, 3, 0, 0, 'in progress', 1, '2016-11-16 11:13:44', '0000-00-00 00:00:00', 1),
(20, 67, 161, 0, 0, 'in progress', 1, '2016-11-17 12:15:39', '0000-00-00 00:00:00', 1),
(21, 66, 149, 0, 0, 'in progress', 1, '2016-11-17 15:01:33', '0000-00-00 00:00:00', 1),
(22, 69, 60, 0, 0, 'in progress', 1, '2016-11-17 15:42:58', '0000-00-00 00:00:00', 1),
(23, 68, 61, 0, 0, 'in progress', 1, '2016-11-17 15:49:37', '0000-00-00 00:00:00', 1),
(24, 72, 86, 0, 0, 'in progress', 1, '2016-11-18 08:13:22', '0000-00-00 00:00:00', 1),
(25, 74, 163, 0, 0, 'in progress', 1, '2016-11-18 11:05:18', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_prescription_medicine`
--

CREATE TABLE `patient_prescription_medicine` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `medication` int(11) NOT NULL,
  `supplements` int(11) NOT NULL,
  `sig` text NOT NULL,
  `dispense` varchar(50) NOT NULL,
  `total_dispense` int(11) NOT NULL,
  `reffills` varchar(50) NOT NULL,
  `pharmacy` int(11) NOT NULL,
  `medication_status` enum('pending','query','dispensed') NOT NULL DEFAULT 'pending',
  `amount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_prescription_medicine`
--

INSERT INTO `patient_prescription_medicine` (`id`, `prescription_id`, `medication`, `supplements`, `sig`, `dispense`, `total_dispense`, `reffills`, `pharmacy`, `medication_status`, `amount`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 4, 1, 'apply grams(s) single for 2 times a day upside x 12 weeks', '100', 0, '10', 0, 'pending', 0, '2016-10-20 07:23:04', '0000-00-00 00:00:00', 1),
(2, 1, 3, 1, 'n/a grams(s) single for 2 times a day upside x 12 weeks', '1', 0, '1', 0, 'pending', 0, '2016-10-20 07:23:04', '0000-00-00 00:00:00', 1),
(3, 2, 4, 1, 'tablet dose(s) nasal for every other day upside x 12 weeks', '11', 0, '11', 0, 'pending', 0, '2016-10-21 11:21:01', '0000-00-00 00:00:00', 1),
(4, 3, 4, 1, 'capsule, extended release gram(s) oral for 2 times a day upside x 12 weeks', '1', 0, '2', 0, 'pending', 0, '2016-10-21 12:39:09', '0000-00-00 00:00:00', 1),
(10, 7, 4, 1, 'tablet day(s) injectable for every other day upside x 12 weeks', '12', 0, '0', 0, 'pending', 0, '2016-10-21 14:07:45', '0000-00-00 00:00:00', 1),
(11, 7, 3, 1, 'tablet day(s) injectable for every other day upside x 12 weeks', '22', 0, '1', 0, 'pending', 0, '2016-10-21 14:07:45', '0000-00-00 00:00:00', 1),
(14, 10, 4, 0, 'tablet dose(s) nasal for every other day upside x 12 weeks', '1', 1, '10', 3, 'pending', 2, '2016-11-02 14:26:25', '0000-00-00 00:00:00', 1),
(39, 13, 1, 1, 'capsule, extended release day(s) oral for once a month upside 2 days', '10', 0, '5', 1, 'pending', 0, '2016-11-04 16:01:57', '2016-11-14 09:49:48', 0),
(44, 15, 11, 1, 'tablet, chewable dose(s) rectal for 2 times a day upside 1 days', '11', 0, '11', 1, 'pending', 0, '2016-11-08 10:00:21', '0000-00-00 00:00:00', 1),
(47, 16, 9, 1, '2', '10', 0, '10', 1, 'pending', 0, '2016-11-14 09:54:12', '0000-00-00 00:00:00', 1),
(48, 17, 4, 1, 'tablet ', '10', 0, '20', 1, 'pending', 0, '2016-11-14 11:49:38', '0000-00-00 00:00:00', 1),
(125, 19, 11, 1, 'capsule, extended release day(s) injectable for 2 times a day upside 2 days', '424', 0, '1', 3, 'pending', 0, '2016-11-16 11:13:44', '0000-00-00 00:00:00', 1),
(126, 19, 1, 0, 'tablet day(s) injectable for every other day upside 12 months', '1', 0, '1', 3, 'pending', 0, '2016-11-16 11:14:25', '0000-00-00 00:00:00', 1),
(140, 22, 1, 1, '1', '1', 0, '1', 3, 'pending', 0, '2016-11-17 15:42:58', '0000-00-00 00:00:00', 1),
(141, 23, 1, 1, 'sdf', '213', 0, '21', 0, 'pending', 0, '2016-11-17 15:49:37', '0000-00-00 00:00:00', 1),
(142, 25, 1, 1, 'capsule, extended release dose(s) injectable for every other day upside 2 days', '11', 0, '23', 0, 'pending', 0, '2016-11-18 11:05:18', '0000-00-00 00:00:00', 1),
(144, 18, 3, 0, '2', '40', 1000, '30', 1, 'pending', 25, '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1),
(145, 18, 1, 0, 'capsule, extended release day(s) oral for 2 times a day upside 2 days', '5', 15, '30', 1, 'pending', 3, '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1),
(146, 18, 1, 0, '2', '2', 6, '2', 1, 'pending', 3, '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1),
(147, 18, 1, 0, 'q', '10', 30, '1', 1, 'pending', 3, '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1),
(148, 18, 3, 0, 'capsule, extended release day(s) injectable for every other day upside 2 days', '5', 125, '15', 1, 'pending', 25, '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1),
(149, 18, 4, 0, 'tablet day(s) injectable for every other day upside 2 days', '2', 50, '5', 1, 'pending', 25, '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1),
(150, 18, 3, 0, 'capsule, extended release day(s) injectable for once a month upside 12 days', '12', 300, '1', 1, 'pending', 25, '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_procedures`
--

CREATE TABLE `patient_procedures` (
  `id` int(11) NOT NULL,
  `procedure_type_id` int(20) DEFAULT NULL,
  `patient_id` int(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_referels`
--

CREATE TABLE `patient_referels` (
  `id` int(11) NOT NULL,
  `referal_type` enum('internal','external') NOT NULL DEFAULT 'internal',
  `patient_id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `attachment` varchar(50) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor` int(11) NOT NULL,
  `provisional_diagnosis` varchar(50) NOT NULL,
  `reason_referal` varchar(50) NOT NULL,
  `history` varchar(50) NOT NULL,
  `investigations` text NOT NULL,
  `external_referal_email` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_referels`
--

INSERT INTO `patient_referels` (`id`, `referal_type`, `patient_id`, `visit_id`, `attachment`, `department_id`, `doctor`, `provisional_diagnosis`, `reason_referal`, `history`, `investigations`, `external_referal_email`, `created_at`, `updated_at`, `status`) VALUES
(1, 'internal', 2, 5, '', 0, 2, 'S', 'S', 'S', 'S', '', '2016-10-21 08:30:06', '0000-00-00 00:00:00', 1),
(2, 'internal', 41, 40, '', 0, 2, 'NA', 'NA', 'NA', 'NA', '', '2016-10-27 04:43:33', '0000-00-00 00:00:00', 1),
(3, 'external', 41, 40, '', 0, 0, 'NA', 'NA', 'NA', 'NA', 'ibikunle@gmail.com', '2016-10-27 04:46:31', '0000-00-00 00:00:00', 1),
(4, 'internal', 34, 59, '', 0, 1, 'tumor', 'surgery expected', 'two previous operations', 'ongoing', '', '2016-11-10 16:21:08', '0000-00-00 00:00:00', 1),
(5, 'internal', 1, 1, '', 0, 1, '1', '1', '1', '1', '', '2016-11-10 16:23:29', '0000-00-00 00:00:00', 1),
(6, 'internal', 34, 59, '', 0, 2, 'sdaf', 'sdaf', 'sdf', 'sdf', '', '2016-11-10 16:24:40', '0000-00-00 00:00:00', 1),
(7, 'external', 34, 59, '', 0, 0, 'jkj', 'kjj', 'jkjk', 'kj', 'a@a.com', '2016-11-10 16:25:21', '0000-00-00 00:00:00', 1),
(8, 'internal', 34, 59, '', 0, 2, 'asd', 'asd', 'asd', 'sad', '', '2016-11-10 16:26:56', '0000-00-00 00:00:00', 1),
(9, 'internal', 34, 59, '', 0, 2, 'sdfa', 'dfas', 'asdf', 'sdf', '', '2016-11-10 16:27:42', '0000-00-00 00:00:00', 1),
(10, 'internal', 34, 59, '', 0, 2, 'asd', 'sa', 'asd', 'das', '', '2016-11-10 16:28:05', '0000-00-00 00:00:00', 1),
(11, 'internal', 34, 59, '', 0, 2, 'asd', 'asd', 'asd', 'sad', '', '2016-11-10 16:29:10', '0000-00-00 00:00:00', 1),
(12, 'internal', 34, 59, '', 0, 1, 'sdf', 'sda', 'sd', 'sfd', '', '2016-11-10 16:30:08', '0000-00-00 00:00:00', 1),
(13, 'internal', 34, 59, '', 0, 1, 'asd', 'dsa', 'sda', 'asddas', '', '2016-11-10 16:30:39', '0000-00-00 00:00:00', 1),
(14, 'internal', 34, 59, '', 0, 2, 'dsaf', 'asdf', 'sadf', 'sdf', '', '2016-11-10 16:31:20', '0000-00-00 00:00:00', 1),
(15, 'external', 1, 57, '', 0, 1, 'none', 'none', 'none', 'none', 'none@none.com', '2016-11-11 10:37:46', '0000-00-00 00:00:00', 1),
(16, 'internal', 1, 57, '', 0, 2, 'none', 'none', 'none', 'none', '', '2016-11-11 10:38:15', '0000-00-00 00:00:00', 1),
(17, 'internal', 1, 57, '', 0, 2, 'referralID', 'referralID', 'referralID', 'referralID', '', '2016-11-11 10:40:13', '0000-00-00 00:00:00', 1),
(18, 'internal', 34, 69, '', 0, 1, 'brain tumor', 'life risk', 'a small tumor 6 years back', 'ongoing', '', '2016-11-11 10:49:10', '0000-00-00 00:00:00', 1),
(19, 'internal', 1, 57, '', 0, 2, 'referralID', 'referralID', 'referralID', 'referralID', '', '2016-11-11 11:51:22', '0000-00-00 00:00:00', 1),
(20, 'internal', 1, 57, '', 0, 2, 'referralID', 'referralID', 'referralID', 'referralID', '', '2016-11-11 11:53:06', '0000-00-00 00:00:00', 1),
(21, 'external', 1, 57, '', 0, 0, 'None', 'None', 'None', 'None', 'None@None.com', '2016-11-11 11:54:02', '0000-00-00 00:00:00', 1),
(22, 'external', 29, 61, '', 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'faryalanwar@aplosinnovations.com', '2016-11-16 08:39:19', '0000-00-00 00:00:00', 1),
(23, 'external', 4, 60, '', 0, 0, 'N/A', 'N/A', 'N/A', 'N/A', 'faryalanwar@aplosinnovations.com', '2016-11-16 08:50:03', '0000-00-00 00:00:00', 1),
(24, 'internal', 41, 43, '', 0, 1, 'test', 'test', 'test', 'test', '', '2016-11-16 08:58:12', '0000-00-00 00:00:00', 1),
(25, 'internal', 2, 52, '', 0, 1, 'N/A', 'N/A', 'N/A', 'N/A', '', '2016-11-16 10:46:03', '0000-00-00 00:00:00', 1),
(26, 'internal', 148, 65, '', 0, 2, 'sdf', 'sa', 'sadf', 'sdf', '', '2016-11-16 12:10:36', '0000-00-00 00:00:00', 1),
(27, 'internal', 148, 65, '', 0, 3, 'a', 'a', 'a', 'a', '', '2016-11-16 12:13:22', '0000-00-00 00:00:00', 1),
(28, 'internal', 148, 65, '', 0, 2, 'sdf', 'sa', 'sdf', 'sdf', '', '2016-11-16 12:14:46', '0000-00-00 00:00:00', 1),
(29, 'internal', 148, 65, '', 0, 3, 'ads', 'asd', 'asd', 'asd', '', '2016-11-16 12:17:06', '0000-00-00 00:00:00', 1),
(30, 'internal', 148, 65, '', 0, 2, 'sdf', 'sadf', 'sadf', 'sdf', '', '2016-11-16 12:18:34', '0000-00-00 00:00:00', 1),
(31, 'internal', 148, 65, '', 0, 2, 'sadf', 'sda', 'sad', 'sdf', '', '2016-11-16 12:19:10', '0000-00-00 00:00:00', 1),
(32, 'internal', 148, 65, '', 0, 2, 'sdaf', 'sdaf', 'sdf', 'sad', '', '2016-11-16 12:20:06', '0000-00-00 00:00:00', 1),
(33, 'internal', 3, 62, '', 0, 2, 'N/A', 'N/A', 'N/A', 'N/A', '', '2016-11-17 11:33:28', '0000-00-00 00:00:00', 1),
(34, 'internal', 45, 44, '', 0, 2, 'Test', 'Beijing has turned the tables on US President-elec', 'Beijing has turned the tables on US President-elec', 'Beijing has turned the tables on US President-elect Donald Trump over his accusation that climate change is a Chinese hoax', '', '2016-11-17 15:15:32', '0000-00-00 00:00:00', 1),
(35, 'internal', 85, 71, '', 0, 2, 'zxc', 'vczx', 'xczv', 'cvzx', '', '2016-11-17 16:19:24', '0000-00-00 00:00:00', 1),
(36, 'internal', 85, 71, '', 0, 2, 'sadf', 'fsda', 'sdaf', 'sda', '', '2016-11-17 16:21:31', '0000-00-00 00:00:00', 1),
(37, 'internal', 163, 74, '', 0, 2, 'NA', 'NA', 'NA', 'NA', '', '2016-11-18 11:09:40', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_vitals`
--

CREATE TABLE `patient_vitals` (
  `id` int(30) NOT NULL,
  `patient_id` int(30) NOT NULL,
  `visit_id` int(8) NOT NULL,
  `systolic_mm_hg` varchar(30) NOT NULL DEFAULT '',
  `diastolic_mm_hg` varchar(30) NOT NULL DEFAULT '',
  `pulse` varchar(30) NOT NULL DEFAULT '',
  `respiratory_rate` varchar(30) NOT NULL DEFAULT '',
  `temperature_c` varchar(30) NOT NULL DEFAULT '',
  `temperature_f` varchar(30) NOT NULL DEFAULT '',
  `bmi_result` varchar(30) NOT NULL DEFAULT '',
  `bmi_weight` varchar(30) NOT NULL DEFAULT '',
  `bmi_height` varchar(30) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_vitals`
--

INSERT INTO `patient_vitals` (`id`, `patient_id`, `visit_id`, `systolic_mm_hg`, `diastolic_mm_hg`, `pulse`, `respiratory_rate`, `temperature_c`, `temperature_f`, `bmi_result`, `bmi_weight`, `bmi_height`, `notes`, `created_at`, `status`) VALUES
(1, 1, 1, '23', '23', '12', '112', '200000000000000030', '111111111111111112', '103.8062283737024', '12', '34', '', '2016-10-17 18:08:40', 1),
(2, 2, 2, '244', '45', '45', '45', '453', '233.88888888888889', '29.744199881023203', '45', '123', '', '2016-10-18 11:21:16', 1),
(3, 4, 4, '23', '45', '442', '23', '44', '6.666666666666667', '51.556613127106885', '78', '123', '', '2016-10-20 07:14:58', 1),
(4, 5, 13, '', '', '78', '18', '36', '2.22', '3050.39', '7615', '158', '', '2016-10-21 15:22:18', 1),
(5, 2, 11, '110', '70', '84', '22', '37', '2.78', '175000.00', '70', '2', 'complain of headache and cold', '2016-10-21 15:25:24', 1),
(6, 1, 10, '80', '120', '72', '18', '36', '2.22', '27.68', '80', '170', '', '2016-10-21 15:26:10', 1),
(7, 5, 13, '', '', '78', '1676777777', '37', '2.78', '32.05', '78', '156', '', '2016-10-21 15:26:41', 1),
(8, 5, 13, '', '', '76', '18', '36', '2.22', '27.94', '68', '156', '', '2016-10-21 15:28:11', 1),
(9, 8, 12, '80', '120', '74', '18', '37', '2.78', '27.68', '80', '170', '', '2016-10-21 15:29:16', 1),
(10, 8, 12, '150', '100', '88', '22', '36', '2.22', '31.51', '60', '138', '', '2016-10-21 15:29:26', 1),
(11, 2, 11, '100', '70', '86', '28', '36', '2.22', '40.89', '67', '128', '', '2016-10-21 15:39:09', 1),
(12, 11, 17, '45', '5', '34', '45', '56', '13.33', '188.14', '59', '56', 'weight index is very low', '2016-10-22 15:41:29', 1),
(13, 15, 18, '120', '70', '72', '24', '36', '2.22', '20.76', '60', '170', '', '2016-10-24 12:32:49', 1),
(14, 19, 21, '25', '41', '25', '25', '34', '1.11', '24.49', '75', '175', 'patient is looking pale and shivering', '2016-10-25 17:48:32', 1),
(15, 3, 32, '130', '80', '40', '20', '36', '2.22', '23.67', '75', '178', 'normal', '2016-10-26 12:35:07', 1),
(16, 3, 32, '100', '70', '50', '20', '36', '2.22', '30.61', '97', '178', '', '2016-10-26 12:35:12', 1),
(17, 2, 33, '100', '50', '70', '20', '36', '2.22', '30.61', '97', '178', 'weight reduction recommended', '2016-10-26 12:35:46', 1),
(18, 35, 27, '110', '60', '80', '20', '36', '2.22', '30.61', '97', '178', '', '2016-10-26 12:36:03', 1),
(19, 45, 34, '120', '67', '72', '20', '36', '2.22', '37.66', '87', '152', 'GOOD', '2016-10-26 12:36:09', 1),
(20, 12, 16, '50', '75', '70', '67', '36', '2.22', '153.71', '69', '67', '', '2016-10-26 12:37:54', 1),
(21, 40, 29, '110', '70', '70', '20', '36', '2.22', '41.42', '70', '130', '', '2016-10-26 12:38:41', 1),
(22, 28, 35, '145', '90', '27', '77', '37', '2.78', '33.29', '70', '145', 'GOOD BMI', '2016-10-26 12:39:36', 1),
(23, 36, 25, '120', '70', '70', '30', '36', '2.22', '48.00', '75', '125', '', '2016-10-26 12:40:15', 1),
(24, 33, 30, '50', '50', '90', '20', '36', '2.22', '30.00', '30', '100', '', '2016-10-26 12:40:24', 1),
(25, 37, 36, '110', '70', '', '', '', '', '', '', '', '', '2016-10-26 12:40:36', 1),
(26, 34, 37, '120', '30', '20', '20', '25', '-3.89', '53.56', '102', '138', '', '2016-10-26 12:41:23', 1),
(27, 26, 31, '125', '70', '72', '20', '37', '2.78', '22.49', '65', '170', '', '2016-10-26 12:41:27', 1),
(28, 34, 37, '120', '50', '18', '20', '25', '-3.89', '84.30', '102', '110', '', '2016-10-26 12:42:37', 1),
(29, 37, 36, '110', '70', '70', '30', '36', '2.22', '45.14', '65', '120', '', '2016-10-26 12:43:14', 1),
(30, 42, 24, '100', '60', '70', '18', '36', '2.22', '29.41', '85', '170', '', '2016-10-26 12:45:47', 1),
(31, 2, 33, '130', '80', '74', '25', '36', '2.22', '46.87', '78', '129', '', '2016-10-26 12:48:03', 1),
(32, 35, 27, '110', '70', '84', '20', '36', '2.22', '30.47', '78', '160', '', '2016-10-26 12:48:36', 1),
(33, 29, 39, '120', '80', '72', '20', '36', '2.22', '31.31', '97', '176', 'obese', '2016-10-26 12:49:42', 1),
(34, 49, 38, '110', '70', '72', '22', '37', '2.78', '38.19', '55', '120', '', '2016-10-26 12:52:45', 1),
(35, 34, 37, '128', '58', '20', '20', '25', '-3.89', '80.99', '98', '110', '', '2016-10-26 12:53:24', 1),
(36, 33, 30, '110', '70', '72', '25', '36', '2.22', '41.60', '65', '125', '', '2016-10-26 12:53:34', 1),
(37, 41, 40, '123', '75', '29', '', '', '', '', '', '', '', '2016-10-26 12:56:12', 1),
(38, 36, 25, '110', '80', '70', '25', '36', '2.22', '48.00', '75', '125', '', '2016-10-26 12:57:14', 1),
(39, 41, 40, '139', '79', '23', '37', '37', '2.78', '22.68', '81', '189', 'The patient is a young pretty babie with great stature and tempting lips', '2016-10-26 12:59:43', 1),
(40, 41, 43, '35', '2', '6', '6', '34', '1.11', '28.89', '65', '150', '', '2016-10-27 11:14:14', 1),
(41, 59, 46, '45', '34', '23', '23', '87', '30.56', '1266.54', '67', '23', '', '2016-11-04 09:32:21', 1),
(42, 17, 55, '70.', '90.', '45.', '36.', '32.5', '0.28', '22.79', '69.8', '175.', 'Patients looks fit', '2016-11-06 04:50:41', 1),
(43, 163, 74, '60.', '45.', '34.', '24.', '34.', '1.11', '23.01', '56.', '156.', '', '2016-11-18 09:26:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `service_type` varchar(45) DEFAULT NULL,
  `service_type_id` int(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` int(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address_1` varchar(50) NOT NULL,
  `address_2` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `work_phone` varchar(50) NOT NULL,
  `post_code` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `name`, `contact_person`, `city`, `state`, `country`, `address_1`, `address_2`, `email`, `work_phone`, `post_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Central Pharmacy', 'Tunde', '2', 2, '1', 'First floor', 'Shop#233', 'tunde@openng.com', '521211221', '5236', 1, '2016-10-03 14:28:25', '0000-00-00 00:00:00'),
(2, 'GOPD Pharmacy', 'Mr Lawal', 'Ilorin', 24, '97', 'General Hospital', 'Ilorin', 'lawal@yahoo.com', '08036294301', '234', 1, '2016-10-21 07:27:42', '0000-00-00 00:00:00'),
(3, 'Dental Centre', 'Mrs Quadiri', 'Ilorin', 24, '97', '1 take, Ilorin', 'kwara', 'quadiri@gmail.com', '0803000000', '240001', 1, '2016-10-21 11:06:32', '0000-00-00 00:00:00'),
(4, 'chest clinic,', 'BALOGUN', 'lagos', 25, '97', 'GHL', 'MARINA', 'balo@yahoo.com', '08035672782', '234', 1, '2016-10-25 12:46:13', '0000-00-00 00:00:00'),
(5, 'Fee Paying Pharmacy', 'Ita', 'Lagos', 25, '97', 'GHL', 'Marina', 'ita@yahoo.com', '08036713469', '234', 1, '2016-10-25 12:49:38', '0000-00-00 00:00:00'),
(6, 'LASEMS Pharmacy', 'SALAMI', 'lagos', 25, '97', 'GHL', 'Marina', 'salami@yahoo.com', '08023468910', '234', 1, '2016-10-25 12:52:04', '0000-00-00 00:00:00'),
(7, 'LASEMS Pharmacy', 'SALAMI', 'lagos', 25, '97', 'GHL', 'Marina', 'salami@yahoo.com', '08023468910', '234', 0, '2016-10-25 12:52:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `plan_details`
--

CREATE TABLE `plan_details` (
  `id` int(11) NOT NULL,
  `plan_id` int(20) NOT NULL,
  `patient_id` int(20) NOT NULL,
  `is_principal` int(20) NOT NULL,
  `is_dependant` int(20) NOT NULL,
  `hmo` int(20) NOT NULL,
  `policies` varchar(50) NOT NULL,
  `insurance_id` int(30) NOT NULL,
  `description` varchar(30) NOT NULL DEFAULT '',
  `retainership` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `notes` varchar(50) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_details`
--

INSERT INTO `plan_details` (`id`, `plan_id`, `patient_id`, `is_principal`, `is_dependant`, `hmo`, `policies`, `insurance_id`, `description`, `retainership`, `category`, `notes`, `created_at`, `updated_at`, `status`) VALUES
(2, 2, 5, 1, 0, 1, '000', 0, 'NA', '', '', '', '2016-10-20 07:08:58', '0000-00-00 00:00:00', 1),
(3, 2, 7, 1, 0, 4, '0000', 0, 'NA', '', '', '', '2016-10-20 07:51:27', '0000-00-00 00:00:00', 1),
(4, 2, 30, 1, 0, 7, '', 7, 'ECONOMIC MALARIA DUE TO RECESS', '', '', '', '2016-10-26 11:02:11', '0000-00-00 00:00:00', 1),
(5, 2, 45, 1, 0, 7, '', 1254, 'HTN AND DM', '', '', '', '2016-10-26 11:31:19', '0000-00-00 00:00:00', 1),
(6, 2, 48, 1, 0, 3, '', 6, 'Heart transplant', '', '', '', '2016-10-26 11:41:16', '0000-00-00 00:00:00', 1),
(7, 2, 49, 1, 0, 7, '12255', 111, 'Maternal', '', '', '', '2016-10-26 11:42:44', '0000-00-00 00:00:00', 1),
(9, 2, 47, 0, 0, 5, '1234', 4, 'FOR MATERNITY CARE', '', '', '', '2016-10-26 11:44:07', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(30) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `status`) VALUES
(1, 'public', 1),
(2, 'private', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_notes`
--

CREATE TABLE `prescription_notes` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) DEFAULT NULL,
  `note_for_pharmacy` varchar(100) DEFAULT '',
  `note_from_pharmacy` varchar(100) DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_notes`
--

INSERT INTO `prescription_notes` (`id`, `prescription_id`, `note_for_pharmacy`, `note_from_pharmacy`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'none', '', '2016-10-20 07:23:04', '0000-00-00 00:00:00', 1),
(2, 2, 'none', '', '2016-10-21 11:21:01', '0000-00-00 00:00:00', 1),
(3, 3, 'NA', '', '2016-10-21 12:39:09', '0000-00-00 00:00:00', 1),
(9, 7, 'none', '', '2016-10-21 14:07:45', '0000-00-00 00:00:00', 1),
(11, 10, 'None', '', '2016-11-02 14:26:25', '0000-00-00 00:00:00', 1),
(13, 6, 'none', '', '2016-11-02 17:13:07', '0000-00-00 00:00:00', 1),
(19, 11, 'new', '', '2016-11-04 09:15:04', '0000-00-00 00:00:00', 1),
(20, 13, 'This is a new prescription', '', '2016-11-04 16:01:57', '0000-00-00 00:00:00', 1),
(21, 5, '11', '', '2016-11-07 23:10:27', '0000-00-00 00:00:00', 1),
(22, 15, 'NA', '', '2016-11-08 10:00:21', '0000-00-00 00:00:00', 1),
(23, 16, 'new', '', '2016-11-14 09:54:12', '0000-00-00 00:00:00', 1),
(24, 17, 'This medicine is required urgently !', '', '2016-11-14 11:49:38', '0000-00-00 00:00:00', 1),
(38, 19, 'N/A', '', '2016-11-16 11:13:44', '0000-00-00 00:00:00', 1),
(41, 22, '1', '', '2016-11-17 15:42:58', '0000-00-00 00:00:00', 1),
(42, 23, 'asds', '', '2016-11-17 15:49:37', '0000-00-00 00:00:00', 1),
(43, 25, 'NA', '', '2016-11-18 11:05:18', '0000-00-00 00:00:00', 1),
(44, 18, '0000029', '', '2016-11-18 11:21:16', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `procedure_types`
--

CREATE TABLE `procedure_types` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiology_template`
--

CREATE TABLE `radiology_template` (
  `id` int(11) NOT NULL,
  `investigation_type` int(11) NOT NULL,
  `template` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radiology_template`
--

INSERT INTO `radiology_template` (`id`, `investigation_type`, `template`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'chest-results-template', '2016-08-08 15:06:21', '2016-08-08 16:56:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `name`, `status`) VALUES
(1, 'Parent', 1),
(2, 'Spouse', 1),
(3, 'Partner', 1),
(4, 'Sibling', 1),
(5, 'Daughter or Son', 1),
(6, 'Unrelated', 1),
(7, 'Other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `name`, `status`) VALUES
(1, 'Christian', 1),
(2, 'Muslim', 1),
(3, 'Other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(30) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `followup_parent_id` int(30) NOT NULL,
  `file` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `patient_id`, `name`, `type`, `followup_parent_id`, `file`, `file_name`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'Radiology', 'folder', 0, '', '', '2016-10-18 11:16:54', '0000-00-00 00:00:00', 1),
(2, 2, 'Lab Reports', 'folder', 0, '', '', '2016-10-18 11:17:00', '0000-00-00 00:00:00', 1),
(3, 5, 'Radiology', 'folder', 0, '', '', '2016-10-20 07:09:17', '0000-00-00 00:00:00', 1),
(4, 5, 'Lab Reports', 'folder', 0, '', '', '2016-10-20 07:09:21', '0000-00-00 00:00:00', 1),
(5, 5, 'Forms', 'folder', 0, '', '', '2016-10-20 07:09:27', '0000-00-00 00:00:00', 1),
(6, 5, 'EHR   Billing.png', 'file', 3, '14480922751476943791.png', 'EHR   Billing.png', '2016-10-20 07:09:51', '0000-00-00 00:00:00', 1),
(7, 5, 'EHR   Dashboard.png', 'file', 3, '9724335161476943802.png', 'EHR   Dashboard.png', '2016-10-20 07:10:02', '0000-00-00 00:00:00', 1),
(8, 5, 'EHR   Billing.png', 'file', 3, '2875798731476943813.png', 'EHR   Billing.png', '2016-10-20 07:10:13', '0000-00-00 00:00:00', 1),
(9, 7, 'EHR   Billing2.png', 'file', 0, '6502017291476946297.png', 'EHR   Billing2.png', '2016-10-20 07:51:37', '0000-00-00 00:00:00', 1),
(10, 10, 'x-ray', 'folder', 0, '', '', '2016-10-20 15:35:39', '0000-00-00 00:00:00', 1),
(11, 10, 'lab', 'folder', 0, '', '', '2016-10-20 15:37:27', '0000-00-00 00:00:00', 1),
(12, 8, 'CDViewer.exe', 'file', 0, '9284796531476975320.exe', 'CDViewer.exe', '2016-10-20 15:55:20', '0000-00-00 00:00:00', 1),
(13, 8, 'IMG_20150903_101500.jpg', 'file', 0, '7890515821476975494.jpg', 'IMG_20150903_101500.jpg', '2016-10-20 15:58:14', '0000-00-00 00:00:00', 1),
(14, 8, 'IMG_20150903_101451.jpg', 'file', 0, '14976376571476975609.jpg', 'IMG_20150903_101451.jpg', '2016-10-20 16:00:09', '0000-00-00 00:00:00', 1),
(15, 4, 'EHR   Dashboard.png', 'file', 0, '17101193151477079258.png', 'EHR   Dashboard.png', '2016-10-21 20:47:38', '2016-10-21 20:48:15', 1),
(16, 20, 'Arthrogryposis - Wikipedia, the free encyclopedia.', 'file', 0, '7090933731477411459.htm', 'Arthrogryposis - Wikipedia, the free encyclopedia.', '2016-10-25 17:04:19', '0000-00-00 00:00:00', 1),
(17, 19, 'Koala.jpg', 'file', 0, '15761996001477415388.jpg', 'Koala.jpg', '2016-10-25 18:09:48', '0000-00-00 00:00:00', 1),
(18, 23, 'Lab Reports', 'folder', 0, '', '', '2016-10-26 09:23:16', '0000-00-00 00:00:00', 1),
(19, 23, 'Radiology', 'folder', 0, '', '', '2016-10-26 09:23:21', '0000-00-00 00:00:00', 1),
(20, 23, 'Clinical Notes', 'folder', 0, '', '', '2016-10-26 09:23:34', '0000-00-00 00:00:00', 1),
(21, 8, 'Radiology', 'folder', 0, '', '', '2016-10-26 09:37:42', '0000-00-00 00:00:00', 1),
(22, 8, 'Lab Reports', 'folder', 0, '', '', '2016-10-26 09:37:50', '0000-00-00 00:00:00', 1),
(23, 8, 'Clinical Notes', 'folder', 0, '', '', '2016-10-26 09:38:03', '0000-00-00 00:00:00', 1),
(24, 27, 'Picture 007.jpg', 'file', 0, '12666525531477475891.jpg', 'Picture 007.jpg', '2016-10-26 10:58:11', '0000-00-00 00:00:00', 1),
(25, 29, 'Tulips.jpg', 'file', 0, '6681258121477476261.jpg', 'Tulips.jpg', '2016-10-26 11:04:21', '0000-00-00 00:00:00', 1),
(26, 55, 'Clinical Notes', 'folder', 0, '', '', '2016-10-27 10:47:28', '0000-00-00 00:00:00', 1),
(27, 56, 'mon', 'folder', 0, '', '', '2016-10-27 10:47:28', '0000-00-00 00:00:00', 1),
(28, 55, 'Lab Reports', 'folder', 0, '', '', '2016-10-27 10:47:53', '0000-00-00 00:00:00', 1),
(29, 54, 'ASSIGNMENT a.pdf', 'file', 0, '16991746411477562138.pdf', 'ASSIGNMENT a.pdf', '2016-10-27 10:55:38', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `retainership`
--

CREATE TABLE `retainership` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retainership`
--

INSERT INTO `retainership` (`id`, `name`, `created_at`, `status`) VALUES
(1, 'new retainership ', '0000-00-00 00:00:00', 1),
(2, 'retainership data ', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Administrator', '0000-00-00 00:00:00', '2016-11-08 08:55:00', 1),
(2, 'Template Manager', '2016-10-27 16:33:16', '2016-10-27 16:36:46', 1),
(3, 'Clinical Templates manager', '2016-10-27 17:24:59', '0000-00-00 00:00:00', 1),
(4, 'Administrator', '2016-10-27 18:00:51', '2016-10-27 18:03:51', 0),
(5, 'Super Administrator', '2016-11-02 20:18:15', '2016-11-03 15:27:31', 0),
(6, 'Super Administrator', '2016-11-03 15:30:12', '2016-11-03 17:39:56', 1),
(7, 'Record Officers', '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(8, 'Record Officers', '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(9, 'Doctors', '2016-11-07 23:44:08', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_rights`
--

CREATE TABLE `role_rights` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `context_id` int(11) NOT NULL,
  `add_right` tinyint(10) NOT NULL DEFAULT '1',
  `update_right` tinyint(10) NOT NULL DEFAULT '1',
  `delete_right` tinyint(10) NOT NULL DEFAULT '1',
  `view_right` tinyint(10) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_rights`
--

INSERT INTO `role_rights` (`id`, `role_id`, `context_id`, `add_right`, `update_right`, `delete_right`, `view_right`, `type`, `created_at`, `updated_at`, `status`) VALUES
(9, 2, 31, 1, 1, 1, 1, 1, '2016-10-27 16:36:46', '0000-00-00 00:00:00', 1),
(10, 2, 31, 1, 1, 1, 1, 2, '2016-10-27 16:36:46', '0000-00-00 00:00:00', 1),
(11, 3, 31, 1, 1, 1, 1, 1, '2016-10-27 17:24:59', '0000-00-00 00:00:00', 1),
(21, 4, 7, 1, 1, 1, 1, 2, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(22, 4, 9, 0, 0, 0, 0, 7, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(23, 4, 1, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(24, 4, 21, 0, 0, 0, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(25, 4, 6, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(26, 4, 5, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(27, 4, 2, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(28, 4, 16, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(29, 4, 14, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(30, 4, 12, 0, 0, 0, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(31, 4, 23, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(32, 4, 24, 1, 1, 1, 1, 0, '2016-10-27 18:00:51', '0000-00-00 00:00:00', 1),
(451, 5, 1, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(452, 5, 2, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(453, 5, 3, 0, 1, 0, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(454, 5, 4, 0, 1, 0, 0, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(455, 5, 5, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(456, 5, 6, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(457, 5, 7, 1, 1, 1, 1, 2, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(458, 5, 7, 1, 1, 1, 1, 3, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(459, 5, 7, 1, 1, 1, 1, 4, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(460, 5, 7, 1, 1, 1, 1, 24, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(461, 5, 9, 1, 1, 1, 1, 2, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(462, 5, 9, 1, 1, 1, 1, 3, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(463, 5, 9, 1, 1, 1, 1, 4, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(464, 5, 9, 1, 1, 1, 1, 24, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(465, 5, 11, 0, 1, 0, 1, 2, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(466, 5, 11, 0, 1, 0, 1, 3, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(467, 5, 11, 0, 1, 0, 1, 4, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(468, 5, 11, 0, 1, 0, 1, 24, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(469, 5, 12, 0, 0, 0, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(470, 5, 13, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(471, 5, 14, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(472, 5, 15, 0, 1, 0, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(473, 5, 16, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(474, 5, 17, 1, 0, 0, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(475, 5, 18, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(476, 5, 21, 0, 0, 0, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(477, 5, 22, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(478, 5, 23, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(479, 5, 24, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(480, 5, 25, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(481, 5, 26, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(482, 5, 27, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(483, 5, 28, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(484, 5, 29, 0, 1, 0, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(485, 5, 30, 1, 1, 1, 1, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(486, 5, 31, 0, 0, 0, 0, 0, '2016-11-03 10:16:24', '0000-00-00 00:00:00', 1),
(613, 6, 1, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(614, 6, 2, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(615, 6, 3, 0, 1, 0, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(616, 6, 4, 0, 1, 0, 0, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(617, 6, 5, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(618, 6, 6, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(619, 6, 7, 1, 1, 1, 1, 2, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(620, 6, 7, 1, 1, 1, 1, 3, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(621, 6, 7, 1, 1, 1, 1, 4, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(622, 6, 7, 1, 1, 1, 1, 24, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(623, 6, 9, 1, 1, 1, 1, 2, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(624, 6, 9, 1, 1, 1, 1, 3, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(625, 6, 9, 1, 1, 1, 1, 4, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(626, 6, 9, 1, 1, 1, 1, 24, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(627, 6, 11, 0, 1, 0, 1, 2, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(628, 6, 11, 0, 1, 0, 1, 3, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(629, 6, 11, 0, 1, 0, 1, 4, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(630, 6, 11, 0, 1, 0, 1, 24, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(631, 6, 12, 0, 0, 0, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(632, 6, 13, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(633, 6, 14, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(634, 6, 15, 0, 1, 0, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(635, 6, 16, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(636, 6, 17, 1, 0, 0, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(637, 6, 18, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(638, 6, 21, 0, 0, 0, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(639, 6, 22, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(640, 6, 23, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(641, 6, 24, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(642, 6, 25, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(643, 6, 26, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(644, 6, 27, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(645, 6, 28, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(646, 6, 29, 0, 1, 0, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(647, 6, 30, 1, 1, 1, 1, 0, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(648, 6, 31, 1, 1, 1, 1, 1, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(649, 6, 31, 1, 1, 1, 1, 2, '2016-11-03 17:39:56', '0000-00-00 00:00:00', 1),
(711, 7, 1, 1, 1, 0, 1, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(712, 7, 2, 0, 0, 0, 1, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(713, 7, 5, 1, 1, 0, 1, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(714, 7, 4, 0, 0, 0, 0, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(715, 7, 12, 0, 0, 0, 1, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(716, 7, 13, 0, 0, 0, 1, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(717, 7, 18, 1, 1, 0, 1, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(718, 7, 21, 0, 0, 0, 0, 0, '2016-11-06 05:31:28', '0000-00-00 00:00:00', 1),
(719, 8, 1, 1, 1, 0, 1, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(720, 8, 2, 0, 0, 0, 1, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(721, 8, 5, 1, 1, 0, 1, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(722, 8, 4, 0, 0, 0, 0, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(723, 8, 12, 0, 0, 0, 1, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(724, 8, 13, 0, 0, 0, 1, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(725, 8, 18, 1, 1, 0, 1, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(726, 8, 21, 0, 0, 0, 1, 0, '2016-11-06 05:31:43', '0000-00-00 00:00:00', 1),
(759, 9, 6, 1, 1, 1, 1, 0, '2016-11-07 23:44:08', '0000-00-00 00:00:00', 1),
(760, 1, 1, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(761, 1, 2, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(762, 1, 23, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(763, 1, 24, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(764, 1, 25, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(765, 1, 26, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(766, 1, 27, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(767, 1, 5, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(768, 1, 7, 1, 1, 1, 1, 1, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(769, 1, 12, 0, 0, 0, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(770, 1, 16, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(771, 1, 17, 1, 0, 0, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(772, 1, 18, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(773, 1, 30, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(774, 1, 22, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(775, 1, 28, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(776, 1, 14, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(777, 1, 15, 0, 1, 0, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(778, 1, 21, 0, 0, 0, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(779, 1, 6, 1, 1, 1, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(780, 1, 7, 1, 1, 1, 1, 2, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(781, 1, 7, 1, 1, 1, 1, 3, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(782, 1, 9, 1, 1, 1, 1, 2, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(783, 1, 11, 0, 1, 0, 1, 2, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(784, 1, 3, 0, 1, 0, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(785, 1, 31, 0, 0, 0, 0, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(786, 1, 7, 1, 1, 1, 1, 24, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(787, 1, 9, 1, 1, 1, 1, 3, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(788, 1, 11, 0, 1, 0, 1, 3, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(789, 1, 31, 1, 1, 1, 1, 1, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(790, 1, 31, 1, 1, 1, 1, 2, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(791, 1, 4, 1, 1, 0, 0, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(792, 1, 29, 0, 1, 0, 1, 0, '2016-11-08 08:55:00', '0000-00-00 00:00:00', 1),
(793, 1, 11, 0, 1, 0, 1, 1, '2016-11-10 00:00:00', '2016-11-04 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `code`, `created_at`, `updated_at`, `status`) VALUES
(0, 'Room1', 'Room1', 'Room1', '2016-11-11 12:54:10', '0000-00-00 00:00:00', 1),
(1, 'Room 1', 'test', 'room1', '2016-11-07 13:55:45', '2016-11-11 12:53:56', 0),
(2, 'Consulting Room 1', 'Consultation room for GOPD doctors', 'CR001', '2016-11-07 15:06:09', '2016-11-07 15:08:59', 1),
(3, 'Consulting Room 2', 'Consultation room for GOPD doctors', 'CR002', '2016-11-07 15:08:23', '2016-11-07 15:08:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `route_selected`
--

CREATE TABLE `route_selected` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route_selected`
--

INSERT INTO `route_selected` (`id`, `name`, `status`) VALUES
(1, 'oral', 1),
(2, 'injectable', 1),
(3, 'nasal', 1),
(4, 'rectal', 1),
(5, 'buccal', 1),
(6, 'compounding', 1),
(7, 'implant', 1),
(8, 'inhalation', 1),
(9, 'intra-articular', 1),
(10, 'intrabiliary', 1),
(11, 'intradermal', 1),
(12, 'intralymphatic', 1),
(13, 'intramuscular', 1),
(14, 'intraocular', 1),
(15, 'intraperitoneal', 1),
(16, 'intrapleural', 1),
(17, 'intrathecal', 1),
(18, 'intratracheal', 1),
(19, 'intrauteral', 1),
(20, 'intravenous', 1),
(21, 'intravesical', 1),
(22, 'irrigation', 1),
(23, 'mucous membrane', 1),
(24, 'ophthalmic', 1),
(25, 'oral and injectable', 1),
(26, 'oral and rectal', 1),
(27, 'oral and topical', 1),
(28, 'oral transmucosal', 1),
(29, 'otic', 1),
(30, 'subcutaneous', 1),
(31, 'sublingual', 1),
(32, 'topical', 1),
(33, 'transdermal', 1),
(34, 'transurethral', 1),
(35, 'vaginal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `payload` text,
  `last_activity` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('00332f74a5d0798197a5a2de26cdee95812f9183', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicThHYjloWHpyT2ZMMHlxQlNsQ3RkSTM4RTh0eVJuWWZ6eUs4RFhGYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NjQ1O3M6MToiYyI7aToxNDc5NDY1NjQ1O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465645'),
('004ccd1651116d886fbc77e7bd84ad1b84d8d82d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDRwOXc5eEY1THpDc2VudXNFblhJV3EzMWZTOGk1Zm42VlEwQTdiUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTQ7czoxOiJjIjtpOjE0Nzk0NjYyNTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466254'),
('012e451709645c3f4c295482f08ce75b7f346d6c', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0VsSFJkT0pGcndteldYTERXQmQxcXZYS0hza3FWSzBRQXFud3NRMCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQyOTA7czoxOiJjIjtpOjE0Nzk0NjQyOTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464290'),
('02e6a7ffe6a346c6f29578c2f75215542aa7d50b', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTZHc2hsdjFxWGtPZ3NySlZueVg1bFIxT1NLVWpPckVIRUgyNTNmZSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTQ7czoxOiJjIjtpOjE0Nzk0NjQ5OTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464994'),
('047200b26cd4030d874de958f43662c3ff49127b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamd1dTF1NXZJV005dmtuSExNS2t0dXZ6R2hsNnpseDFYT0Mxb2trdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4NjY7czoxOiJjIjtpOjE0Nzk0NjY4NjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466866'),
('0473c588498e01246e842cdf9762c90856e84416', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUDhEZ2x3MjJVZHp4NDNmTTRGYXVzcWJGdHBRSGFhcTBEdDdrRkJEaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDc7czoxOiJjIjtpOjE0Nzk0NjU2NDc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465647'),
('04c5e2c431f7bca16f19226a63b675c50123482d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR2ZWbGxZT3Q5SmRhbThIQ25vVzhoRnJWcDFFT0tYYTFOUmFrdzd3UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjM7czoxOiJjIjtpOjE0Nzk0NjU2MjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465623'),
('05d0961c610c59959b2c4ba01426138384771d7c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmR3UmRSdmNQZkg3Tkk3M3hNaDZJOVhYb0YxSkh4VVU0SExPQ090WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY3MTk2O3M6MToiYyI7aToxNDc5NDY3MTk2O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479467196'),
('0646805e9534860927e86d0763e6486efa0fd53c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZTVwQzdYS2xJbmhsSW9vZG5ic25nb1dQejZYdWFqcVZPTUIxR2JpcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzM7czoxOiJjIjtpOjE0Nzk0Njc3NzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467773'),
('072c4bb6f31ef27b5e934a2ef4d4741d0ea1265b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXVLVkgxMXpTZWcwMjZuN0xxZml6T2U2dTU4dkZ2ZzdhMkFiTXdsYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0MjY7czoxOiJjIjtpOjE0Nzk0NjU0MjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465426'),
('07837afecd5e0116fbc9a69472b14fd3bea4dcd9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWE3QlA2SWpnb3pNWnNWc2djbjcweHFoWGpaM2ZvVTZSN1VtMGJ5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE2NCZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakl6TENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTVRFek56UXNJbVY0Y0NJNk1UUTNPVFkzTURVM05Dd2libUptSWpveE5EYzVOREV4TXpjMExDSnFkR2tpT2lKak4yRmtOalpsTXpBMk9USmtPVFZqWXpZek16aGtNMlJoTjJNMllXUTNZaUo5LnVlcWtyMW9RWW52YU1NNUJfU21EdGp6X1F0ZTBEVTNFbzQ0eXhWWGZDQjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY0MjYxO3M6MToiYyI7aToxNDc5NDY0MjUwO3M6MToibCI7czoxOiIwIjt9fQ==', '1479464261'),
('07853633c3ad443156989ec3deda2eb2400d783c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMDRHVHFJMXNGUmI0eXNGWlJSSXl3a1NMbm5EdFFuY0FDeE9MbTJVVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1ODI7czoxOiJjIjtpOjE0Nzk0Njc1ODI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467582'),
('07b8b4b79bc69c8f2536f7a43c6e574ce9d81677', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0dQMm9UcTVkc2lMbUVvT2tOenhaejczUUh2aFlUVktiV3FDakJxaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzM7czoxOiJjIjtpOjE0Nzk0NjgyMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468233'),
('07bb111f65299eaa76389b0b93489621113ba976', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibjR6TU5CN2xvTFJONHNnOTZMYjZwUmJ5M0NKSEp2c3cxNkJtc3U0YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTYyMDtzOjE6ImMiO2k6MTQ3OTQ2NTYyMDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465620'),
('082bafa5858b242890342d0cc8734c56b0442c40', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOGpNa2djS0lXdWlHM2t2ODNCdGUwNGM1TW9Zd1lvTUJXUVJPOEJ2SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzU7czoxOiJjIjtpOjE0Nzk0Njc3NzU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467775'),
('0937a78262a1c6219d8d6164a85f8903477db2a5', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXF1dll1dzd1RFJWNVNTMlh5U1dBYVlOS2NXS1U3WEo4OHNKSlE1NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzE5NjtzOjE6ImMiO2k6MTQ3OTQ2NzE5NjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467196'),
('09ed8f8464e5f815be124eaa4172c2cd6729a017', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ1hhTzRDelFmd1VqNml5S1JFRElNS2J2WEpqNWp4QTJDcVdKNTJSZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4NjY7czoxOiJjIjtpOjE0Nzk0NjY4NjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466866'),
('0a8909a3735bfd72f425ca65288d72298a1afa01', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieDN5Y2lJTFhTaDdUQXVhSkROZ1ltRnBZMXhqbVVCMWY2OVF0OENoNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY3NDUyO3M6MToiYyI7aToxNDc5NDY3NDUyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479467452'),
('0ac9626904d91d4954a5db72bbeb712cb93af259', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicGw0ZUZCWWpxb2RqSkhGcTh2bXFQOHJtN3BxOTZCN3dMaWhEd0RIYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzQ7czoxOiJjIjtpOjE0Nzk0NjYwNzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466074'),
('0bd5599f869333bf53c3f7a45d058679ac68c899', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRHdONWZoa1B2WXRaeHJQc3JHVG8zOExyWWNvSmlYT0EyRkRZdWpXSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTA4MjtzOjE6ImMiO2k6MTQ3OTQ2NTA4MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465082'),
('0c660e3e47308f48e8f02ad9c3a11292c8eefada', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUnJEWUtqaVlUVEVkRFh1aWJmYjY4SGZkTmY2TU5IcndkeUlraG94YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTQyNTtzOjE6ImMiO2k6MTQ3OTQ2NTQyNTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465425'),
('0c9c6081d84866ab60d2fa26e7451d81934da306', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWJSa2hhYk5ydnJUNWFFTUVHSVJ5dmN4QUFRUW5qdTlITXBmYms1RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2NDE1O3M6MToiYyI7aToxNDc5NDY2NDE1O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466415'),
('0eb8b1135cbf582a3f86a11b0a4337e60a632b7c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVzB1bjBzeDRWampaZnZZalp5a0lpSzhpbzFvTm1QNkp3T2ttMDFoNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODMzMjtzOjE6ImMiO2k6MTQ3OTQ2ODMzMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468332'),
('0f60471730f0a8374a6d54f605185a6742884d96', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVnFEOEZoRFRmVDMwNXhWd1VEVHRHcFBud1NLQ0tZMkpLdllWVUk5dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjIyMjtzOjE6ImMiO2k6MTQ3OTQ2NjIyMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466222'),
('0fc9f380140bc1d79d7616fd326ee2442fa10f4b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVkM4dDVsS3V2UHA5VG40aEdwRU1SUW83UXU2Q2cwMmJJWVh3aW91UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzM7czoxOiJjIjtpOjE0Nzk0NjgzMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468333'),
('1015747f7b301a0d407dd06bf4b268b0b258b754', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGpTVEZvaEdrdndObEZOT2VSMW1MN2RmUThVQUtkMVFaVVc1eXVpYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjI1MztzOjE6ImMiO2k6MTQ3OTQ2NjI1MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466253'),
('1095665726a78827bf1bf4420a8547ac41352027', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmRWWlZKenRHZTQ1TEVIem5pdlc5dkZpTVFFUUJEOU9BOVBaTnhnNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1MzUyO3M6MToiYyI7aToxNDc5NDY1MzUyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465352'),
('111546d15fe014cf2349be8ad0e3b47e7cc95581', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidEdHaWNsb2xpTldwMzA1cDV1R0ZjYnVyNFRkZm5kb3VVTVk2cVROaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2NDYwO3M6MToiYyI7aToxNDc5NDY2NDYwO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466460'),
('12bd0535d56be8b836d5ec207d2198c1ffc0f647', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVljWHFuWlJYZHVHd1ZFVDM4QkI1Y3BjQTBhcTFKM2RuTnNwMXlXayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjEwMDtzOjE6ImMiO2k6MTQ3OTQ2NjEwMDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466100'),
('130419c4dd7300920309f6edb0bf7ea38e9c1d5d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZE91R1VrYTNtSno0TXZGbDB6TkNvbTBjRzN1WEExUWtlUVJNVTVrNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjE7czoxOiJjIjtpOjE0Nzk0NjczNjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467361'),
('134a81fd2bb1f1abcdde6e48337864bb471a61e8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVVtNWFaS0tNOVVwZXpyS2RHdTdlWm9kSVJDUjZ3WVZ5SVlnWEhpVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJekxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME1URXpOelFzSW1WNGNDSTZNVFEzT1RZM01EVTNOQ3dpYm1KbUlqb3hORGM1TkRFeE16YzBMQ0pxZEdraU9pSmpOMkZrTmpabE16QTJPVEprT1RWall6WXpNemhrTTJSaE4yTTJZV1EzWWlKOS51ZXFrcjFvUVludmFNTTVCX1NtRHRqel9RdGUwRFUzRW80NHl4VlhmQ0IwIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Nzc1NjQ7czoxOiJjIjtpOjE0Nzk0Nzc1NjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479477564'),
('135121ac92acd9c6b06864d4fefcda3e27985e4b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSXlFdkJzSmtjSERvb3Q0cjVTcEFWbkE0cWdxOWo2V1Q1YXBmQUNLMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjE7czoxOiJjIjtpOjE0Nzk0NjU2MjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465622'),
('13e98ae712f0c974f8da1abaac6ce34daf61c765', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiODNNeE5ZQU9RbkZsSVFSSFFrOXpJVURCTkg3WnJDSFJ3MVpTSEVadCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjM7czoxOiJjIjtpOjE0Nzk0NjYyMjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466223'),
('14994d8e8025eede31f91ab1687ada573ab33949', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN2ROemMwZ1ZucUJiNGR1OEVmRVlFYTlWaFF2YjBtYUNQZUJvNUg0diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjM3MTtzOjE6ImMiO2k6MTQ3OTQ2NjM3MTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466371'),
('155903b76365ea67dd14a0e638e3b19424f69a39', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT3hFOWlUTjh1eXRnUk1OYUtCOElNTXFOSk5EYzI3a0tRUzBuTkM3cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDc7czoxOiJjIjtpOjE0Nzk0NjU2NDc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465647'),
('1639826184cabf7ee0a1906aa128804132321308', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYWlDbXJJejFoWGp4QW1kVlo3dVJRRnRzQ2hVcWtIT3U1RmZQVTliVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTk7czoxOiJjIjtpOjE0Nzk0Njc1MTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467519'),
('17918635e067a8bea789e5866d72585b4877dcbd', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUW1KUTdnalZuYzVtY3B5aUVrbEMzRWQybVVSTGRTVnBhNnpYT3FkaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzM7czoxOiJjIjtpOjE0Nzk0NjYwNzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466073'),
('189843e71b3d08056f9dd64fb9ea50c7d68c45fc', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUUzejczSUV4TDRmZEhRc1Y2ZG8wM29vM1dHS1hES1A3T2QzUUk4RiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjM3ODI7czoxOiJjIjtpOjE0Nzk0NjM3ODI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479463782'),
('191990a17158fa897a16ac63c2a99bb51086ebe0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWxzU1U0U2dCSzZmOExqSHF2NjVKWlNWZUtHNGd4Q1FYWUF4NEJBNyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNDU7czoxOiJjIjtpOjE0Nzk0NjgzNDU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468345'),
('19de2816f206ba46b8dd766a8dab8039b50e0880', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWUFjamRHak1vY2FmQW9iTEVmMWRtTkVIWldZZncwcU5CMXhxQ0FwOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyNDg7czoxOiJjIjtpOjE0Nzk0NjgyNDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468248'),
('1a57708e399559bfb751f5b68820ae1f1d4a97f9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlh2RFVEdHoycGFFV1padjB2bzMyNHpuZUxXOEFkd3Z1dFlaMFozaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODM7czoxOiJjIjtpOjE0Nzk0NjU5ODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465983'),
('1a970f7544a33c9bed53619876b060678958179e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVG5uUE1SbUxIemVsNXhLcEJLcnRSakk1WTI1V0NnZ1Z4UHV2eDFVbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTQ7czoxOiJjIjtpOjE0Nzk0NjQ3OTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464794'),
('1ac80f7f678f7c2bd8be6e6f4706f6d53f9ad42f', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjB2NXFwZFJ0T1BNTVpFOVJxNXJidTJDOEs0UlV5ODNNa3R2aDh1NiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDk7czoxOiJjIjtpOjE0Nzk0NjU3MDk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465709'),
('1ae5a704d23a933bfb4fbb9df8193acb6472485b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOUZ5Q0xpNVVLcThvMjZqYXM5bDkwVmdXS3ZvbFlEck9YaDdvN1JEYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDQ7czoxOiJjIjtpOjE0Nzk0NjYxMDQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466104'),
('1b38a745c1e67af91b8c3ac62dbd55bdcc0edf65', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYmU1d3ZocDNpRm9nVW1ROTBIME9vczlsZWRJZndLYlQ0R0R1d255RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0Mjc7czoxOiJjIjtpOjE0Nzk0NjU0Mjc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465427'),
('1b4320acca4b14044126ab8ea57de89e2332f943', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibzF1Qm1YcTM2bTkyUkdJcnBHR0dvb2tjUFQzampLdGo1WjhCclNvdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTU7czoxOiJjIjtpOjE0Nzk0NjY0MTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466415'),
('1b9918738e68125660b862c33e05815ed8dba2b0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnJyb2hCS1hPSGlNMWxOREZrWDQ5emJDRVY1a3RXV3Rwb3hPV0R0SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyNDE7czoxOiJjIjtpOjE0Nzk0NjcyNDE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467242'),
('1c2e4fbd7eb599fc3febb2d671f4c1ad5f476d63', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkNGYUIxZnhtYmZESHNOclduMUVMaVFaODVkdHlmZWlSM0pNdmpDayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDI7czoxOiJjIjtpOjE0Nzk0NjYxMDI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466102'),
('1cf195c17c94766c5d47ef7d0bf3124641856fd0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHFNMmtyMWNUanRLcHBUbmxwUXpKalR6c3UzaGpISWlRUmFKVnhvUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjM7czoxOiJjIjtpOjE0Nzk0NjYyMjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466223'),
('1d36ff411dc6895d13ab9202bf540853897d1403', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidmhtcVlFRlhBZmVZck1wb3h4WmdqMnJhN2NHbEFKNlJGRnpyb2xBWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4NzA7czoxOiJjIjtpOjE0Nzk0NjY4NzA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466870'),
('1d78a73965620420db5b7a3149caa1f06660538f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWdoV0lTa2xwTDA2cGxHSEVqa0ZRdEdBenNHSnYwS2FKQWJYV1NTZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTA4MjtzOjE6ImMiO2k6MTQ3OTQ2NTA4MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465082'),
('1e97ff0c72a3bd3b35785df3829b178b982af843', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRU9IUW5mZVF3c3hjVzVlQTI4SGI3cjVDQnZTNk5DaXdZVGFRZEl3VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzI7czoxOiJjIjtpOjE0Nzk0NjYzNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466372'),
('1ebaa68d8909fa779051213d044bcd9f89868423', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjdXU1gxZnVvY1V1Qnh3SHRIOGc1MkhXclZFYnNpZlFlT29iQU0xNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjQ2MDtzOjE6ImMiO2k6MTQ3OTQ2NjQ2MDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466460'),
('202083de206215704459d44910ac1a481b6f1f99', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid1BrUnVIRTU5cjFCWFhCOWlFUlRLc21ycDB2aExDUWZ2a1hVM2s3MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjI1MztzOjE6ImMiO2k6MTQ3OTQ2NjI1MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466253'),
('212abc6fd4642e08796c9b74d191610cae3ffa09', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoienY0c1hTRHRjWngxUHc2NzZRQUZyVkFSa2RMSUpySnFiOVc3R3VPSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzM7czoxOiJjIjtpOjE0Nzk0NjgzMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468333'),
('21cc6d463533d8f64500362825f3dc219411ceb0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTW1CNDdLVkdNbTB1TFh3bWN5R1kwT1dvdnAxSEd6MWxtSUgwelJOQiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTM7czoxOiJjIjtpOjE0Nzk0Njc0NTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467453'),
('22bdb542895b77df8a0ae0d728ad996ae44bd7d2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUlA1N2t6dFhBWHlKeEx6ZDRCb1VRTkdzcW50YzlKSTROdzJ3aU42aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NDk5MztzOjE6ImMiO2k6MTQ3OTQ2NDk5MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479464993'),
('22ff11c7697ccdab13183813e47d1d2e11258838', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOU9VMXlKclZWbE5ZR0UzbUpkTUVPY2lLNU1XT0I3NmdsSnhrNUY0dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzQ1MjtzOjE6ImMiO2k6MTQ3OTQ2NzQ1MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467452'),
('2399ab86c220e51228ca8e73674c39bd159a0466', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU5Cc1lidVU4Q2pZTUJTcHpLQThHeDZVenRQSXZOczdaamZsMGxpSCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1Nzk7czoxOiJjIjtpOjE0Nzk0Njc1Nzk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467579'),
('23e7852314df2836d86cf0f799fedfd6c691319c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR2RXVEhSZHo4NHBYbWZhOTJtQ3l1UGpIMWZKbUdmeTkwN3FSZVBmbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTk7czoxOiJjIjtpOjE0Nzk0Njc1MTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467519'),
('2421c7df88738bf274ce73197f121a75de09423b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicWtoRWFIaUJZWE42RDk0aUh2Y2k1SkVEd21aY3dRS1hCYVkwM2NIdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjI7czoxOiJjIjtpOjE0Nzk0NjY0NjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466462'),
('24c52aee663a582b0d51de175d8c6b32611b2daa', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjVCZURlTTFNS3MwSjZ3VkxKNzJ2dUh5eGFvaDluQVFyQ3BHNFFQZyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4Njc7czoxOiJjIjtpOjE0Nzk0NjY4Njc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466867');
INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('24e719b4e1c414b4cddb1b562f3e37432818d240', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUjljcGdxTG5qdkZiWEFVWmJKNTlnZVF6V1RNSzA5WjBIdHZMZnNCSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjA3MjtzOjE6ImMiO2k6MTQ3OTQ2NjA3MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466072'),
('24ef27e4a7a436a081f0511689c6cd26d9226d7b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaWg1N2JFNWV2V245NHVUNk4wUDNlS2JxQk5KdHQwZmZEbWFRblhqUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTU7czoxOiJjIjtpOjE0Nzk0NjUzNTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465355'),
('25150d30dc10f7f81d7217b081ff1cfc5fd5fb40', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkZ3VmJNVFA0TktIREVqVXVHTExqa3M1S0dOM1Z6SmM0cElHUkZQWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjI7czoxOiJjIjtpOjE0Nzk0NjczNjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467362'),
('25dbd8abb2361d2d36af8028cc741e0c89aeb43a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOVQ2OFR4cGg3NlF0cjNJRmJmMGNXdWlwWktEdDNHUGozcFdpUVNTUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODMzMjtzOjE6ImMiO2k6MTQ3OTQ2ODMzMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468332'),
('261afdb63f4968955e78086098423d7a8fc8d41c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV0JDV1NOWENHN1NoWlFxWG1jMFhlN3JCOUZ1cHc4aHlBeFl4aGpmZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODQ7czoxOiJjIjtpOjE0Nzk0NjU5ODQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465984'),
('26481363a90c09216be65cf78acfacd91eb81916', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXVPUjc0NDh0ZGE2cEF5VmxlRlA2Nm1XaklzV3FOakhCb1NzODZHNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjE7czoxOiJjIjtpOjE0Nzk0NjY0NjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466461'),
('271452335e0a9509523f04d76d9d328f494993ad', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoianhWQkE5T2l3UmZYQk5wQ2tuY3ZsUG5hMzVDOGZNclRXS0NRbjFTUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgzOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfaW52b2ljZXM/YmlsbF9pZD05OCZsaW1pdD0wJm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOalE1TkRJc0ltVjRjQ0k2TVRRM09UY3lOREUwTWl3aWJtSm1Jam94TkRjNU5EWTBPVFF5TENKcWRHa2lPaUl5Tm1VNFpXSTBZV0kyT0RreFlqTmlaR0l5WlRZMVltWTFNVGMwTWpRM01pSjkuWnBTNklfRHNzcEE5LWp2NEdzaGdHRUhtS2w0TDJWS3ZiMGlHeG9ydHg2RSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1MjY3O3M6MToiYyI7aToxNDc5NDY1MjY3O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465267'),
('271579ebdee8bbc1b376d8e0c3fe67f9fc04ea6e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHkwb1JDUE9lcHJRcE5Pc0FWOXlsczVFN0NjbDk0UU1qZnJHVTdrMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODMzMjtzOjE6ImMiO2k6MTQ3OTQ2ODMzMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468332'),
('2a0dc533136d78e6854093a3106c585af8da9156', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTmRCbXBGTFZmMUZzRENualNlU0JkZkVlYWxTeFpPRUQ0aVlWc2lqSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzQ7czoxOiJjIjtpOjE0Nzk0NjUwMzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465034'),
('2a3b4220bb5e925b4578db8487c14fe0884f4cbd', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieDU3VzJRazFhc2RsRXE2Z29USUlTcHBqZml6UFRpUEp3RlhtNEpPVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTY0NTtzOjE6ImMiO2k6MTQ3OTQ2NTY0NTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465645'),
('2a8c4a85397d2787d180676bf09dd52f67ddc23b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmpFVnVaMDRmRXU5MkRwZlo0TDFsUWtmN2dGNU9jRXBWRUoycktrTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjA7czoxOiJjIjtpOjE0Nzk0NjU2MjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465620'),
('2ae2f529679bb7b5f31db81ef9ecf187abbeb0d2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlE0dnZ3cW9KV2lGQmp3cHJoNkJJWlNVQkNTbUtFbWQ5TEk3aWxITSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgzOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfaW52b2ljZXM/YmlsbF9pZD05OSZsaW1pdD0wJm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOalE1TkRJc0ltVjRjQ0k2TVRRM09UY3lOREUwTWl3aWJtSm1Jam94TkRjNU5EWTBPVFF5TENKcWRHa2lPaUl5Tm1VNFpXSTBZV0kyT0RreFlqTmlaR0l5WlRZMVltWTFNVGMwTWpRM01pSjkuWnBTNklfRHNzcEE5LWp2NEdzaGdHRUhtS2w0TDJWS3ZiMGlHeG9ydHg2RSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1MjU4O3M6MToiYyI7aToxNDc5NDY1MjU4O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465258'),
('2b4a9308b2b9401e07e3b3bbbf64903b6d4191ba', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjA3TXRaQW9nSVNkUWFwYnlJQk95SFhGQUN3bjFqT3NjRTVJanNXaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzUxODtzOjE6ImMiO2k6MTQ3OTQ2NzUxODtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467518'),
('2b6bfde4708663466e0d5ea04b025394a04224f7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSENsMG9sY1o3U29xY3RmY29LTVZkMW1nekVSVnhKaWVzZ0dxajVGNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTM7czoxOiJjIjtpOjE0Nzk0NjUzNTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465353'),
('2bd6747cf6d6f5afc7ae6e517da221db3f035533', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT09SMFB2NDVDdm14akJ1ZTJJNDF0NHJ0c0IzcE1OUWdHQ1dJRHlaRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfaW52b2ljZXM/YmlsbF9pZD0xJmxpbWl0PTAmb2Zmc2V0PTAmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5qUTVORElzSW1WNGNDSTZNVFEzT1RjeU5ERTBNaXdpYm1KbUlqb3hORGM1TkRZME9UUXlMQ0pxZEdraU9pSXlObVU0WldJMFlXSTJPRGt4WWpOaVpHSXlaVFkxWW1ZMU1UYzBNalEzTWlKOS5acFM2SV9Ec3NwQTktanY0R3NoZ0dFSG1LbDRMMlZLdmIwaUd4b3J0eDZFIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUyMzk7czoxOiJjIjtpOjE0Nzk0NjUyMzk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465239'),
('2ca8ab87a0e26c1150d589b92473f6dae5a61a2d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3Z3YWxjaktyUjF6MXNSQ3hIcDFrYnlES0VOaU55MnhGWnRpdmF1YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NDI1O3M6MToiYyI7aToxNDc5NDY1NDI1O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465425'),
('2dd94e5804dff0c6a4dd4307770d593304935bfc', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWplNnR6OHZnejBkRXY4Um9tamJqVUhsWFNHU0VzZmZQOVpDYnEwRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjQ7czoxOiJjIjtpOjE0Nzk0NjczNjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467364'),
('2f3c8b338b9d82bbe633cec2a00eb8bb75e7ee27', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHY5eVpPdHlmRmFOWDQ0bm5HOVNQTkllblZvVzUzQkl6Z2gxYTY0ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTI7czoxOiJjIjtpOjE0Nzk0NjUzNTI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465352'),
('30838ca30aa9edee204d4f712195dba8abeb7c47', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZk0yemEwVHE2WVRJcno5SHlwWG9LcGtsaHRnenFXcFJ1ekM0YzI3MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjA3MjtzOjE6ImMiO2k6MTQ3OTQ2NjA3MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466072'),
('309872326846dc7be608c3b15a609976cd77f441', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkZleGwwOE1jSnFNcXJUVmlYUzVIdTUzYm8zTEtabjd0NEhsR1JpOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjI7czoxOiJjIjtpOjE0Nzk0NjczNjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467362'),
('309af4e7cd9d11fba9a65021a1937cf72dd06460', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXM2dmpPeTY3S01Bb1BLeExqWmNUNEZlQWY0b2N2RDU4YzVwRGx4aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NDc5MDtzOjE6ImMiO2k6MTQ3OTQ2NDc5MDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479464790'),
('3109f4924a847be4912fea6da18627fbd9570faf', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkc3MjZxYUV2bzNyZFFtSmVsdW8ySXVFdjJ6dHFBTUFEOTY0eDFmNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTQ7czoxOiJjIjtpOjE0Nzk0NjUzNTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465354'),
('3150f870a80e858d82ff5ecdfc4e16228eb0a840', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWlJOSmxTcURTM0lzcnFVSFZJckxPWUU1ellhaXNSY21SS1JvU3hxcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjI7czoxOiJjIjtpOjE0Nzk0NjczNjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467362'),
('31840781f1338fbc4f324d84904960f7818c6117', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTUgxWHlDYlh4RlZ2clhGRWpneHZDeVZQNFJJYVNMN1FhNW1HUERKViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0Mjk7czoxOiJjIjtpOjE0Nzk0NjU0Mjk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465429'),
('32203968de3c6186ed5a9f24835f369ae276bef0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2VmTFNTblhLRmh0b05TeVhISXdjNVZRTzNEZ3dxVFZQM3RpZjZPcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMzE7czoxOiJjIjtpOjE0Nzk0NjgxMzE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468131'),
('3255700115699855763c6868da64471f00ca0082', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialNHMmdWdXNHYVdDbFNLelMxTWVycGg0MlNRQlVVdGQ1QksxWFh5cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTA4MjtzOjE6ImMiO2k6MTQ3OTQ2NTA4MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465082'),
('32b7642fc83d380cb87190aa97b06f555fcd614e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY3gzRTN5aDJ2eURFSWJ6MGNpZnVITFFLd2JUNk9oMEI3aksyTEVPdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDY7czoxOiJjIjtpOjE0Nzk0NjU2NDY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465646'),
('32e1ddd87efdf9d51b8a833b4738ec8f900bc5b2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNjJkOThsZTR0QXY0d2c3RXRXNlZpcGtMNHlrWlVCVndGdHFuU3BzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODQ7czoxOiJjIjtpOjE0Nzk0NjU1ODQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465584'),
('32faebef41e0bb9e1b24e47bed4018029a221db1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVl2V0I2cjdnYU1vdXBUVlJiYUVuaUc0eTZiTnhNQ2prd3F2Yjd0QiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzI7czoxOiJjIjtpOjE0Nzk0NjYzNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466372'),
('33ebb20c5b5dda078351695f74f733272572d947', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMk5jRzVuelhKMjVpRU1MTjc2bEhXQnFtOUlFc0FrS214TUVCamRSdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTI7czoxOiJjIjtpOjE0Nzk0NjQ3OTI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464792'),
('34948012b3b92e8a2d561e71277a41e62a463f7c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDFSeTlGUkdLZlNQTnczU3piQlVPVHRuYVdqMXozelB3WjlSRTVhNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTg7czoxOiJjIjtpOjE0Nzk0NjcxOTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467198'),
('363902ddaa6cbdac5b941589469add5754f32f5a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieTI5eDdLZ0VlSDdvdlJEUW8yTmhZWlNGd3UwZGdLVlprNUhpZGkzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTAzNDtzOjE6ImMiO2k6MTQ3OTQ2NTAzNDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465034'),
('36e8df31e01ebb06b5a611cdf0e953101c17b473', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV0ZZTFRCd1R4dVhuQ1lRR3VzdGdNZThRdjFwbWpuaU9QbWhIZUxnRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NDk5MztzOjE6ImMiO2k6MTQ3OTQ2NDk5MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479464993'),
('374a359e93e02e2ac68446604b12daa72d73cfff', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSE04VG5QdHY5eFFBSzZ6UmJwRU5aWUk4Z2Z0aXdnOHpBUkFDeU1WUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTA7czoxOiJjIjtpOjE0Nzk0NjQ3OTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464790'),
('376c078ae9e42ef9552cd1994d8076a5f777c532', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRm9FSUJmOUhZU2t0dEtrN1R4ZjJaVGZjVUtOU0duQ0xTSFR6clRKaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY3NTE4O3M6MToiYyI7aToxNDc5NDY3NTE4O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479467518'),
('38d0168bf7dd79f7f38957fa856d3db71b4efd19', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidnMwUm95YTkzNlZtMExlWGY3MFRGSllaMlNadXBpTUlDcUU0d3RjeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzE5NjtzOjE6ImMiO2k6MTQ3OTQ2NzE5NjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467196'),
('397f56a49fb1d5ef37d24fdf1aa511c062697ae9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkJNc3laZUJESGtiT09IRXNJbDhXOU1sTmZTTzNTWUhGY0dxeUtLNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2Nzc3MjtzOjE6ImMiO2k6MTQ3OTQ2Nzc3MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467772'),
('39ee5d36694b5871017075cd9a6911ca10bf4648', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidkxGaWpZeVB0SzFXV1ljU1p5SWZkVGl3dE5xbFQwenpZSVZyMGgzbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTc7czoxOiJjIjtpOjE0Nzk0NjcxOTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467197'),
('3a1c88bf4194135f20ed2070a201bcfb80c23944', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ0c5Y0FybGZMbW9UWXdWelM3c3hNMjRidTBPdHJ0c2diOWl4ZEZRdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODM7czoxOiJjIjtpOjE0Nzk0NjU1ODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465583'),
('3a5ca3f02b21b9c3bd1a4e0dbdae56480a14db75', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnQ3d1hiZHFKYjlaODdzTnNvRFFoSkhmUWI5NFJaYlZNTWM1bGdUTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDc7czoxOiJjIjtpOjE0Nzk0NjU3MDc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465707'),
('3a8c6f7ca538626865aa6ee776e95bd5b1aa2f6f', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2VkQ1BzRU1NWVJURVJhelByd2pSeDY3SmpQdEVVZklHaDFZemd6eiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjQ7czoxOiJjIjtpOjE0Nzk0NjYxNjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466164'),
('3b24e4cced59b320d8c5d75c05258fec85b761b0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXprMkpxN1BUY3JPNXVWdkJXalZrdkx4Y3NmY2txY3hrdmgzVTBNOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTYyMDtzOjE6ImMiO2k6MTQ3OTQ2NTYyMDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465620'),
('3c0b7005bf0d8c6a2ab3c589c03db48254155e54', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNXpFYm80ekp5Y1pQUEFxckRtc3JyRUNCYjhtVnBld3p4TndzUXRuRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTQ7czoxOiJjIjtpOjE0Nzk0NjUzNTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465354'),
('3c91c32aeb42a22f52763128b1fdc0da6d06e860', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRkRDejhJTFh5VGZJOHRJZW15RU5odHJSWW53NlJ4NG5ZZEVGNEVRVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjQ7czoxOiJjIjtpOjE0Nzk0NjYxNjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466164'),
('3cdbb59a870449a7df97b047e37a7ebdc47fa007', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFN4a3d0WFdnMEh5OHFmT3pPdkE1NEg3WW1UMjZvdTI4eEtFSXJLYyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MzI7czoxOiJjIjtpOjE0Nzk0Njc1MzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467532'),
('3d3951073f2024eb2cbd2ac155f8c2cc62d7b308', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidFBKdTNxdk9Id1hMOGlkdnlNZkgySWpENzU4MzZjYUJhWGZnZU5QRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzE7czoxOiJjIjtpOjE0Nzk0NjYzNzE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466371'),
('3d5f73703fdb13316daa40cd970344bbdb074d6d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT3ZiY1l3MHBmeTlBVU9BUVpJQ3N0N3JrMFpiWXl2aE9US1BDNWxZOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDg7czoxOiJjIjtpOjE0Nzk0NjU3MDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465708'),
('3e81bf911fa0be16c934c6c61c4e03d41b5e13a8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY01UM2IyM29zYmZycWNHSTJPSDRkbGZxOXlwUnNkNDN1UE9teU1GZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY0Nzg5O3M6MToiYyI7aToxNDc5NDY0Nzg5O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479464790'),
('3f63ce0eb95e0799fbfa9328ffbc871b13f2f14d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3B2M0QwRUhDcWZ2UWFYYWEwUlFpa2tWUDF4MERKeUF1STN3aFpMWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTI7czoxOiJjIjtpOjE0Nzk0Njc0NTI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467452'),
('3fc0703c19c99c06b54ce2d0f3eafe5fd532407a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREZXTTVROGVDR1pzUTdxT2N2STlOT05KNlNNdDFVSEhMQmV5VVpKeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2MDcyO3M6MToiYyI7aToxNDc5NDY2MDcyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466072'),
('3fecc70444c0685894cf7d3cc2a703f16e991630', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSFo3NjM1aTRMek0wMVdna3dEbEVIRENIYnNHcVBNTGN1T2RVSVE1QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMDA7czoxOiJjIjtpOjE0Nzk0NjcyMDA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467200'),
('4047f1fdda0c7a0ad4ec150eaa5cbbe8363312d9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSWpaSEJlYUpVOGd1dDU2d1BnN0hpU1FscU1kQUdNSERORExLNVJSSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzI7czoxOiJjIjtpOjE0Nzk0NjYzNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466372'),
('40608f8c3d6874f6a9ecad1041ef453a1ec39761', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2FNaWMyZlMxTzVzbXFqMUlkcGRkTTNTYnQ5SjhrSFlSbEU1WHJXQSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODQ7czoxOiJjIjtpOjE0Nzk0NjU1ODQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465584'),
('4071966c172996c7ef5a5e6d4c8e485acb415fa2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOTI2alpkazBrTU9CT21Ld21HcnhPSnNoaklOYjhFNkxhSVJobjNLdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4Njc7czoxOiJjIjtpOjE0Nzk0NjY4Njc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466867'),
('40a50c51b234be8783bc8fb4348f2440d509b2bf', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWxDRzRXdW5pZVFMTlJic3B5OGhwSHliWGdaelNYQTdFSXU4QVlVVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjY7czoxOiJjIjtpOjE0Nzk0NjYyMjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466226'),
('410120b245e803b15688397b1f52c6c38c4222fa', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic3NsSWtIVnRMNTN2bkpkZWlkS3UzZG9RT3Nqa24zRWpFTzVMS0I2TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1MDM0O3M6MToiYyI7aToxNDc5NDY1MDM0O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465034'),
('414d21fab51d51c1251fb125cebd862c739301f5', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVnFxRFd2eUxYczdHekhtbmhuc2RMRk56YWpuRWxsWkEwWjZqQkxwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzI7czoxOiJjIjtpOjE0Nzk0NjYwNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466072'),
('417c00fa866285cae2f6797d6566faef2846cfd0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNUdQcXV3anRrUUFCMWt0V1NSTk41dVZBYk5USTRJTnNrM09aOVc5SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTc7czoxOiJjIjtpOjE0Nzk0NjcxOTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467197'),
('4210e1cea051d8ac6fc00d5c87007c14635af2e7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0F3MEt2TVRHaDMyTE54WHRNUUJMV2xFcTlRVmlHR2Voc2ZqTGlVZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzI7czoxOiJjIjtpOjE0Nzk0NjYzNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466372'),
('42152ca0d124e121226bc58668d506e1fa3db818', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUnlqVzloclZWRU1NOWFQS1BrYThlQ3FxN3RwNlliaFVqWjBKUUpBMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NjIwO3M6MToiYyI7aToxNDc5NDY1NjIwO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465620');
INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('433e25158e12ca9aa35c600ce3630bafcf4b1369', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXVJbEpGczRCeWdrbXVyRlY0d08yZkZPa1hqcTNGREZoU09raTdpMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzU7czoxOiJjIjtpOjE0Nzk0NjUwMzU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465035'),
('43d9ddbedefd65d71c5ce243a3625ffa4ac40071', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnFzQ0N6T1BYOUJlOURxc1ZVVkI3MGFSZEt6MEdJTUd6SmJYVWZFaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTQ7czoxOiJjIjtpOjE0Nzk0NjYyNTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466254'),
('4417ab2531f284b6eb2c68671c11d2c6091dc699', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnV0TGZDMUJDWDVkWG5MSlowdlYyOGV6SUU0UVZBaDVaeGpBSEdqeCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyODA7czoxOiJjIjtpOjE0Nzk0NjgyODA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468281'),
('4492b328010aaa04ef129489f6aa12f8b16b03a5', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRE15akl4bjZZMW9WczVwNFpPbXNYS1VWWXhLZG5hd1lTSGVjUmxuciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDE7czoxOiJjIjtpOjE0Nzk0NjYxMDE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466101'),
('45253f2cdc656683ad37026ded86a7cf08bbbe25', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNUdhYlRhVEtFUU9WRmt1NWRBZjhMYlF4Q3NKVHVQR0E2T0FXMUZYbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NjI7czoxOiJjIjtpOjE0Nzk0Njc0NjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467462'),
('4580b339445fa7e0c38a377e102600eb444a2275', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXJyS2V1WTlwSWZBWUNEMDJjdXBqNEl0TG5DbUViUGFCVlk4UDhDciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NTA7czoxOiJjIjtpOjE0Nzk0NjU2NTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465650'),
('45878c049991f92132f6dbb2b98ffd0b37442d0e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS3BGSGdReXRUanlGWG42cWsxVE5CZm1sU0tETWZjZHVsbnN4MW5mZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjQ7czoxOiJjIjtpOjE0Nzk0NjYyMjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466224'),
('45fb2a9f128a5bd3465a67436229eed2c4fa89d6', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVpUS0pTa1NOVzR1MUZRd2d0bktBZG9LMjdBU1VqUVVXTGFxbTVRQSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTQ7czoxOiJjIjtpOjE0Nzk0NjYyNTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466254'),
('4656d398a0a96cfa45d96349ffd3629bced19be6', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaGNvYUc5aWltUEdkdEtHdXlFZnpjc1dhYUdXbm9hRnlad0paM0NreCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzM7czoxOiJjIjtpOjE0Nzk0NjYwNzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466073'),
('465fe70d529e6e4757afe767e546d9c53c664305', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHp3SWhmR2IwaFVNVkpDcHB6RVN4eE1nTHpveXhNejlPNUN3TE9VYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY3MjM2O3M6MToiYyI7aToxNDc5NDY3MjM2O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479467236'),
('46a9d183a2a5feac484fcf01c74601220f1cd507', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0VONENVSWZRT1FsZUxsS0oySGQ0UlpRTGFLQ29DaGd3U2U2alFiWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjEwMDtzOjE6ImMiO2k6MTQ3OTQ2NjEwMDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466100'),
('46cb5cf5b460b9c55d55ed1471efad809a1a697f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMlBhREJORTlpVHdZRUJqdzljS21TajE3bHk1R0pORVJ5OEVVQ2hUMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTM7czoxOiJjIjtpOjE0Nzk0NjUzNTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465353'),
('47dd69c243d142ca420e7f016da61439e06dad0d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoianN2cjJtd0VzTmVKTVE2QWdjSDNieEkxbTJHT0MyMWo5aUEwYXo1TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODI7czoxOiJjIjtpOjE0Nzk0NjU5ODI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465982'),
('47fe9841ff66fd10ea405a5feed16d474cc3a3ff', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaTFNWjFsR3JRZk84eE1MQ1NSeWp5UFk0TWJNbU85Q2ZWY05yZVlZVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjI7czoxOiJjIjtpOjE0Nzk0NjU2MjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465622'),
('480df51ebad6cc389a69b31ed74c0f637f6b9902', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRndyeHR3NDdZWXBUeWRGR2M2cUNmVFpRckREYmZ3dEZHU1U0alVBdyI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjk6Imh0dHA6Ly9kZW1vei5vbmxpbmUvZWhyL3B1YmxpYy9hcGkvZ2V0X3BhdGllbnQ/cGF0aWVudF9pZD0wMDAwMTYzJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOalF4TXpRc0ltVjRjQ0k2TVRRM09UY3lNek16TkN3aWJtSm1Jam94TkRjNU5EWTBNVE0wTENKcWRHa2lPaUkyWmpFeVpUSXlNV016WkRZeU0yRXlZamhtWTJWaFpHVmhORGd6TVdJeU55SjkuUnFvT3FRWU9xZHJpa3VDeWxTcXRLUHIwOGxURXhiVC1LN1B5U0o5b0psSSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NTU0O3M6MToiYyI7aToxNDc5NDY0MTM0O3M6MToibCI7czoxOiIwIjt9fQ==', '1479465554'),
('4b333277f03b33cb0bde9afd7b1b4ff1140fdeb5', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTBVRDR5YlRhYVNkMTh4NUEwOWE5SGxwRDJSek10cnZZYm91YzdCZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDE7czoxOiJjIjtpOjE0Nzk0NjYxMDE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466101'),
('4b74cfe2a42f3efa76cb305935d44cfaad0164aa', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVldQS3pFY3RsNXZRN0VEQThJUlVxa0NZcUxsd0dRUGlpdnpoOW1RNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDY7czoxOiJjIjtpOjE0Nzk0NjU2NDY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465646'),
('4c8f6982af6ad807a26f24cf0bd6917119fb2309', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzNYRld0SFJFaFpXVWRuSGxOSmZWYnN2RnZKam9RTW14VHJSdzNibCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjM7czoxOiJjIjtpOjE0Nzk0NjYyMjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466223'),
('4d264ffdaf2cd20859ec0e9b4fc3e5dc458d5ae1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3NSMjFDWjhjNXk4SmxFRGI2Z0JSb2RRT0tvNGdCblVaaEtaaE02TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDk7czoxOiJjIjtpOjE0Nzk0NjU3MDk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465709'),
('4d95810ee0f3acd83041d62ddad8ec69863cbd63', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT29qZm1PNHRlNzJ5VFFxb3JWQThvVkltZkZVaDNoMDhmN2VkbnlNZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjA7czoxOiJjIjtpOjE0Nzk0NjU2MjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465620'),
('5030a2a5d731c10ddeb0a7dab2ce0f159d18d820', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTWpUdHdycUlldVhaR0ZPVVZIWDZzZ21UMnUxYWxMQktNa0VVN0FDNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjI7czoxOiJjIjtpOjE0Nzk0NjYyMjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466222'),
('52014c3ccdbed56d79f984f241fcdb325156cc42', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWNhREttdTQwbjBtYktvZld4OXhJa090eTdKS3NmZWkxZkNoSUFCRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakl6TENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTVRFek56UXNJbVY0Y0NJNk1UUTNPVFkzTURVM05Dd2libUptSWpveE5EYzVOREV4TXpjMExDSnFkR2tpT2lKak4yRmtOalpsTXpBMk9USmtPVFZqWXpZek16aGtNMlJoTjJNMllXUTNZaUo5LnVlcWtyMW9RWW52YU1NNUJfU21EdGp6X1F0ZTBEVTNFbzQ0eXhWWGZDQjAiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ3NzU2NDtzOjE6ImMiO2k6MTQ3OTQ3NzU2NDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479477564'),
('52428448446259ee74012f2f0324f9d3cbc36dfb', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic0EzRjRIWDBvb2lwUEJiUTVnMGxtVWczR2N6Z1poTDkwS3BDMmJOUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTk7czoxOiJjIjtpOjE0Nzk0NjY0MTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466419'),
('5261511ae10292793642879237ead2fa0ac54a4f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMDJ6YklCSGZWamhRWVRPU3I4ZDZxN21qMW1NVExPOFpPaXVuQkpQcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MzY7czoxOiJjIjtpOjE0Nzk0Njc1MzY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467536'),
('541d726e0dbd173f9871b4f44119564c93e0cb59', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVE9LWVpBcGEyZ1JMSEVQd0cxTWExUDQ0dWk4c2R5TnBmeHBrSjU3dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjc7czoxOiJjIjtpOjE0Nzk0NjYxNjc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466167'),
('55d63b540eb9459e8fd9fe4b102fada2fd6fc334', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNDdKZkFDYldhZ0JOd0s3Y0g0cUVjYlZNSFhzUkVDWjlCeDQ4MktYWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1MDgyO3M6MToiYyI7aToxNDc5NDY1MDgyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465082'),
('565434b84183911283c75332dc47f34169708fd4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidzExN3AwakM5RFN2bWQyQjFEbXd2dUZWVlNlRmlzZnZtU0cyMTR4VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjQ7czoxOiJjIjtpOjE0Nzk0NjY0NjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466464'),
('56f14d5f90d0c7d690dfb3fbfac8dcc0eed97e26', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkQwcVlZZFVHSEtaYlNOQ0JHVVlscmJhdzNNYXVSVkd2ZDRoSzhhZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyODE7czoxOiJjIjtpOjE0Nzk0NjgyODE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468281'),
('583f150312125814eedf91d4db8911891452b868', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYW9OV1lYaVlCSE5iVzEybXNCYWowdXRBcExRekw4V3lVZDBONDZPOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzI7czoxOiJjIjtpOjE0Nzk0NjgzMzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468332'),
('595bb4cf6643d5cf47651a07591f08c840645cfc', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOGtCWFYyQVRiZ2UwYWNTeWhzcXRrRGhiZFRVdktXSWY1bEtXZWtMOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0MjY7czoxOiJjIjtpOjE0Nzk0NjU0MjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465426'),
('599610c7fa90e644eafa31534cc645102f574348', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2w0TUdET1RnNDY4eG1YVHQwUTk4S2hIdVJZMWNCQ0p1Sk50RUhabyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjI7czoxOiJjIjtpOjE0Nzk0NjczNjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467362'),
('59a39b7a76ab4ad4ffd69b7ccc36dce68f4047e8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYWl0Y1BDUXdMZ1QwamZjb2JZNmZsMWlNbFg5TFIxMFE4YjQ0QjVmbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxNDE7czoxOiJjIjtpOjE0Nzk0NjgxNDE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468141'),
('59c8ffed330dd29ec52c4c860f7a5e8c5771e4f0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmt5RU1wWlJDd096ekUzejVKSElqTmhVNXVHdU1XV0s2YmNrbEh2cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2ODY2O3M6MToiYyI7aToxNDc5NDY2ODY2O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466866'),
('59cc2e6ed485047a9c36199377012d001097307a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmdqREcxSmZmVU5uaUZTN0c3THh6b1pwNTdUUGRrQXRQaWtldjFSVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODQ7czoxOiJjIjtpOjE0Nzk0NjU1ODQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465584'),
('5b01d9853a90cc6bb8b9d94a66a1142089f9e207', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMW5peUtjc0F4eWEwUjRZa2kxTDFOR0JDRTVwZnBybktWSXFHdWpJaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTk4MjtzOjE6ImMiO2k6MTQ3OTQ2NTk4MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465982'),
('5c6dca686c1e41e0cbefc762f2e2ddaf6b4a2759', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNFpkMXZ2ZExiVk5wZXpOOU5sTDhIdldWd2JUSzJkTlhhSnhHbVJMayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTAzNDtzOjE6ImMiO2k6MTQ3OTQ2NTAzNDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465034'),
('5c8c16cd3ecbf30fb9e1c1300f956eaa9e30de7d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTmM4V0VwcVZMbWNTV3F5QW0wekRwZlVwbjNPRDk5Mzk3V3FYWVJ0WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfYmlsbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5qUTVORElzSW1WNGNDSTZNVFEzT1RjeU5ERTBNaXdpYm1KbUlqb3hORGM1TkRZME9UUXlMQ0pxZEdraU9pSXlObVU0WldJMFlXSTJPRGt4WWpOaVpHSXlaVFkxWW1ZMU1UYzBNalEzTWlKOS5acFM2SV9Ec3NwQTktanY0R3NoZ0dFSG1LbDRMMlZLdmIwaUd4b3J0eDZFIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5Nzc7czoxOiJjIjtpOjE0Nzk0NjQ5Nzc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464977'),
('5c9c437c5840b503cf732aaf5c3ac17c16be6114', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVBEdkRiUTJVMGpaYjF6TlNkYWVEM2ZIM3VsNTZjSDdzNVlUWnJFbCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzM7czoxOiJjIjtpOjE0Nzk0NjYwNzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466073'),
('5f0ca5b0757eec6600a662c524b984a46e805fd6', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVFJsbmtBaG4zYW16aEZOaDBkN29BSk16ak1XV3M1dUNCQmdoUmk3WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0MjU7czoxOiJjIjtpOjE0Nzk0NjU0MjU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465425'),
('5f109c9e1614071ae51d939a3f3835e38dfaff25', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMHRQRjJxMVlaYXRUenFBZ1JDN1dBSUR3eW9DdzNSTEhLMzZJQnRVMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTM7czoxOiJjIjtpOjE0Nzk0NjYyNTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466253'),
('610993f820bbf307d35cace60b0148e986bd5025', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3N6TWp5d29HY2RGeDVTZlprTnRHZ2tQeU9NNlMxTno5bGt1ZXpReCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTk4MjtzOjE6ImMiO2k6MTQ3OTQ2NTk4MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465982'),
('61d2c6ed8dd1ec624a508e31a60e2385fca16901', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUDRNclVzTFRvdHFrSUdIdmhhdDl1VndkQ2ZUNVVHeWxLd1FFdGlpVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY0OTkzO3M6MToiYyI7aToxNDc5NDY0OTkzO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479464993'),
('627262b9c912aa3aedc6325897bc8bb6611cfb1e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieG14SkZXbjFIN3VwamlwSzVQOXhNOVFzMlVzQ1cxaGY5TmJzWnhDQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjE7czoxOiJjIjtpOjE0Nzk0NjU2MjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465622'),
('62dd8aa2f733f0be81fff0f5017cd85b9336e43b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnJhVkhpc2w2cUZjcmxOU0lhb1BKUTVBajZZTG9sUU1LSkZiWmJvbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzY7czoxOiJjIjtpOjE0Nzk0NjcyMzY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467236'),
('638fd4ff3a6b45b94d2944158537b7ce435f888d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN2I4NWVNUmhMZDYyRzZIUExMTEsxSmRiWFIwR1hzSFZ1ZEVhQWhTVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjA3MjtzOjE6ImMiO2k6MTQ3OTQ2NjA3MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466072'),
('641215b6ed663c46f39994e8f169cd0845cc5179', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS2M4ejNSdVZhOXBtMVRIUGJEOFpJY1VhRW9abjNSS21VTWV4VmNPSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjU7czoxOiJjIjtpOjE0Nzk0NjYxNjU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466165'),
('6473419a11130ac936d7bd34144fc49fb083c750', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjNrVHc2Z3ZyV0VYS1JLbEdONTVrckYxZ0lodkR4M2NVOEk2ZDZlRiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjI7czoxOiJjIjtpOjE0Nzk0NjczNjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467362'),
('64c4204274399e270eb21b18afa00c8f9da26045', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUNzbGg0VHdqcmhVV0FYQ1JZOXl6VXljdUt0dVhPa2s1SWpJeWoxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTcwNztzOjE6ImMiO2k6MTQ3OTQ2NTcwNztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465707'),
('65630533a128c9ae13d84ac1a637641bfa526211', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzNHblAyMWVyZmo4NVRLN3VoZXJ5Z0xyUEU3Y2xVTkxNZHpNUTJHdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDg7czoxOiJjIjtpOjE0Nzk0NjU3MDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465708'),
('65634d0bf5a01b20738c2845a8f15a42d7215e3d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVEdxMEo5RTlhVTg2bVpyTmo4cjREd3h6RjhyTU8wSTlGN3Z2cDZ0ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzM7czoxOiJjIjtpOjE0Nzk0NjgyMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468233'),
('65a5ec806e2e7eecb83ad8a0c535736294bc9fdc', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiazNuOG5VRU1ZYVRvS0l3cllGUkhRdFVUZk9KUVlZR3ZKclp4QW56eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODEyNztzOjE6ImMiO2k6MTQ3OTQ2ODEyNztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468127'),
('65a84b9270b7fb43dccc733388f169681ae4a5ad', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjk4c0lkVXNDZVZHV3d3VUVSU1BibURJWVl1SzFSdHMzOVVkRVhrMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODIzMztzOjE6ImMiO2k6MTQ3OTQ2ODIzMztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468233'),
('6627141da476b56f1d9551fdf3a049b419de8b6f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMUhsQkFMRFo1MjVndFZMME1BSVlZWHU0RmVYc2F1RGlWcVE2V0ZrUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODQ7czoxOiJjIjtpOjE0Nzk0NjU1ODQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465584'),
('671af37b5fedf6ac283f5d3fcb26db7dd15db368', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1lDa25scTBwWVltajZuZkgxSEkwV1dUbFpGT0ltc3A4aVN6SlY3QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzE5NjtzOjE6ImMiO2k6MTQ3OTQ2NzE5NjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467196'),
('68102cc9413efefc7ae90fcb99d85beafa2aa99b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOFhpZnNQdHVYVTlWQ1VYdnJGZ1NVYWt0ZnRCcUZ6N3BNUVF6WFBHTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTM7czoxOiJjIjtpOjE0Nzk0Njc0NTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467453'),
('68b7dc6c7f58314c4d6eb0293f813df52bc1d670', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkVYdGFZNlVJMXpYZUNtZkkzeXhkNmdseklDOWpnWlB3YzZBRWRueSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTU4MztzOjE6ImMiO2k6MTQ3OTQ2NTU4MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465583'),
('69602a1f361105f9db68c72753bad4c497786de0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWE1uNHpRTDBqbERTQmVSajVRbzEzZ04zb000VHN4M1hNeGZIejdqbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfYmlsbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5qUTVORElzSW1WNGNDSTZNVFEzT1RjeU5ERTBNaXdpYm1KbUlqb3hORGM1TkRZME9UUXlMQ0pxZEdraU9pSXlObVU0WldJMFlXSTJPRGt4WWpOaVpHSXlaVFkxWW1ZMU1UYzBNalEzTWlKOS5acFM2SV9Ec3NwQTktanY0R3NoZ0dFSG1LbDRMMlZLdmIwaUd4b3J0eDZFIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5NjY7czoxOiJjIjtpOjE0Nzk0NjQ5NjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464966'),
('6992b26a2796de23ecbe4b3ac73586eb039b3b10', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlBHWXNMWDVQRml5RmQxTWhibmVJUGtyNXkxWTFQQjllTVNwOUxRSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjg7czoxOiJjIjtpOjE0Nzk0NjgxMjg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468128'),
('69a25f7ad71bb89619bb0b36548d1d4efe297b2a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0VRQTl4OGs5TW84TE9pQ0UwY3FaWnR1dGpaOTFsajJKSHRuemIxTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDA7czoxOiJjIjtpOjE0Nzk0NjYxMDA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466100'),
('6a0b73a201f4bc51dca66f3d21256d6d6d0eee3b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczIzODRSQU5icnFiSzVSMEt0OGt6R2Z3NU5nRmR1bFJPN1JLQlNlZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDE7czoxOiJjIjtpOjE0Nzk0NjYxMDE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466101'),
('6ca21113b6e6251dc7e576c5539d5a941e0159b1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkp5cEZYUVlRSFJCOFdZek1xN3RtMHpQSnZWNnBaa3U0WVRiRkZCdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzI7czoxOiJjIjtpOjE0Nzk0NjgzMzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468332');
INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('6d1de5fee4f9339856e8f666b85c046fe4b0b50d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGRmMFFQMUlsZzBzYTVhZFQ4Tk1MdjBGanNCQkFxVnh4cUZtVzhTZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxNDM7czoxOiJjIjtpOjE0Nzk0NjgxNDM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468143'),
('6d9f3be46035ba4888afea80a46f251299d58100', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUVdEVTVPWWIzRnhnQmVBU0NDNkN6RUtCUGh0YUlIRkNIV2VFUE5tMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODI7czoxOiJjIjtpOjE0Nzk0NjUwODI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465082'),
('6edd771a163b5a3d76b45057e5551e246b4e6c5b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3A5a25HMWtGTExtczVPaUF3b3QwaTNaVlVKQ1owUkIzaHgwdUgzRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NDk5MztzOjE6ImMiO2k6MTQ3OTQ2NDk5MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479464993'),
('6f49ac1b82620dc947f15299631dcbc6a5764983', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaERWZlEySkYxSzQ3UUFrdXpTZDhRVGxISnFWM1lIQktnWnREUDNVRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTA7czoxOiJjIjtpOjE0Nzk0NjQ3OTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464790'),
('6f96a99966f33c89b61b28923fe82f7628d1ebad', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWUV2dVlNQnpOU3RKbE1kMW9lZk9hTUVlZGZVcXFYSXppZ1RCVjhIRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjE7czoxOiJjIjtpOjE0Nzk0NjczNjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467361'),
('70b3255d4758021a6aee702d5896abd663e9b378', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidkRWdzFuOXRuV1gzOVRmcjRQQ3YyMWdUa29QSGRNcFh3M2JjelpMNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTU4MztzOjE6ImMiO2k6MTQ3OTQ2NTU4MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465583'),
('70e90b4f3b5da60e569ec8358ff24aee89372127', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGdUTllydGtvVFJvcW5yeVhjSVNYVVFET04wdWVBSnhrblZTeVRWUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzM7czoxOiJjIjtpOjE0Nzk0Njc3NzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467773'),
('715f7b7caf3aec1f10f5c54ffeaf5d3876a3e931', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3J5eno3cDRzeDhMMXZNeTBBcHh5dm1ZMlhrWVR4T0QzMzBrMWw1UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2Njg2NjtzOjE6ImMiO2k6MTQ3OTQ2Njg2NjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466866'),
('7325879c22e44ea460e9f9ef6049e38d3784ef98', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOVI1RGxHa1NPNzg0alRqekhtQUVHMWl1UmVVNHFESVdxMlR5WHdhVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzY7czoxOiJjIjtpOjE0Nzk0NjgyMzY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468236'),
('732a3f29c7f3d18c4721aa978c1d70794072b987', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMEJLZHh6NzlTYUR3STNYUE02N2VYSlI0blZJOFBHcnlEdXpNVjZxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODQ7czoxOiJjIjtpOjE0Nzk0NjUwODQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465084'),
('74a5602acce627117d7d3221b4caa8d63377d481', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiancyVjlOQWxFY1dtc05TYlNMaG1ZWHIwQ1Q2NTVjcGNOUzFnNllCTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzE7czoxOiJjIjtpOjE0Nzk0NjYzNzE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466371'),
('74c85e8dacdf78eaca13063ddf2a96fa0e419f7d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia2M0Tjc5S0psb2FEQU5aZHE5Zm0zSDBwYk5aTVpSYUNFdnFOM0VGZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzI7czoxOiJjIjtpOjE0Nzk0NjgzMzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468332'),
('752842a77ba280053edad59996897249227db144', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWJ6dFVZZXpING5kbG5zQ24zN1ZZcXloQ2ZGWVFsTHlQYnZ0ODZTOCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NjE7czoxOiJjIjtpOjE0Nzk0Njc0NjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467461'),
('781bfae7182b0e416580adddc4a362f6a3159790', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialhNYzZETjdWaUM2bXpxVXlWRHp6MWkxVmg3WnRtTnBXY0tNVFlqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTcwNztzOjE6ImMiO2k6MTQ3OTQ2NTcwNztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465707'),
('784210c84ae6e794f85d39b1b69821fd98974d90', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFJkMVRmTndPY2dqVHF1cnh6dEVMcHNvMjhHd1BVVmd4amRxQTFhdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjA7czoxOiJjIjtpOjE0Nzk0NjY0NjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466460'),
('78fc639f67ee32cdbd64987cf5290d1e7e595eb4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlJ5MENtS1ByMnUzbkFISEp6aTlmSTZscTFYdFBpdzVtNWJRMFVTRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODQ7czoxOiJjIjtpOjE0Nzk0NjUwODQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465084'),
('790a921b56a1166c6f08025db7db7aed35796572', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMklBVklkaFBTdTZWY1VRMHRBcDI4dFVybmdRMHBYNUtvcHROOTA5QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2MjUzO3M6MToiYyI7aToxNDc5NDY2MjUzO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466253'),
('7b6c00191846f58df471eb950a4c12620c7986c3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnRTQTZxQ282NzRObnJ2TEt3dTlZYzcyRzk4UXhqdGxEUmdrN0kwbyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzM7czoxOiJjIjtpOjE0Nzk0NjgyMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468233'),
('7bbcde621b1f67f80c3d72b86ab9ad7333580281', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYVJKV0FaeU5WVGlxZXNqZlBhSnRKRnczR0V4WkRUMWw3QUxGdlhxSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODM7czoxOiJjIjtpOjE0Nzk0NjU5ODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465983'),
('7bfeae4dd724da3fbbf48d9076ea3a0452cc76b5', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXIzZExEZExFMW5aWXJ6MUNVUEphQnpIN2dNNzlxeHpGRE5PQ3JVTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTQ7czoxOiJjIjtpOjE0Nzk0NjQ5OTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464994'),
('7c45ad4c4287b3d4d1cd945d82f7c7e9e94af3c5', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWjRSUmllMmFEU0RkUkZqeHJzVVdrdWxQMEIyakp1eWZCQXJNMzVINCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzQ7czoxOiJjIjtpOjE0Nzk0NjUwMzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465034'),
('7c50a2aa5bb76543c002d456881f18b0fb3887da', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0YyMVhGU1Y4elJlanhFbkFVTjlXaVJ0eHY5MEVFdG5aRElEdWZZeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTU7czoxOiJjIjtpOjE0Nzk0NjYyNTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466255'),
('7c82d57c900eff295607894ca4f7778b29f50b51', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRlZiUzZHUXc1OFRUZ1I2U01nWFNQQXhUWVBOREJ4ZzZ6Tjc3MUZiVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJekxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME1URXpOelFzSW1WNGNDSTZNVFEzT1RZM01EVTNOQ3dpYm1KbUlqb3hORGM1TkRFeE16YzBMQ0pxZEdraU9pSmpOMkZrTmpabE16QTJPVEprT1RWall6WXpNemhrTTJSaE4yTTJZV1EzWWlKOS51ZXFrcjFvUVludmFNTTVCX1NtRHRqel9RdGUwRFUzRW80NHl4VlhmQ0IwIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Nzc1NjQ7czoxOiJjIjtpOjE0Nzk0Nzc1NjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479477564'),
('7c93a8e6ec85535f018756bf6cd8a97c514dc494', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoielJ2VXZaSHBFaXlXUWc1RFp2c3V6WEVUSk5WQWxHUTBta1VFdHZyTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODIzMztzOjE6ImMiO2k6MTQ3OTQ2ODIzMztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468233'),
('7cd62b1bd0a4461572cf74c233aad250ceb85c42', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibFZYaHZRZUdqQXdtWkR1RUIwdFVsQ2dTaEpWZVZNYnJCWm5nTEYzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzM7czoxOiJjIjtpOjE0Nzk0NjgyMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468233'),
('7d229a76694ae49343a0c4af08dee955e3c92617', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGJySkNybk84VU1CbTdqODdKbHZ0S2sxN1lHTE1EdEdUZUFvNnZIdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTQ7czoxOiJjIjtpOjE0Nzk0NjQ5OTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464994'),
('7d2c556726881ae9f104e0755133f54c5b737f48', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVkNsclk0bU44TTdKaXVyV0JCNjdlU3pBQkRNYVg1MTRFOE13MzkxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTg7czoxOiJjIjtpOjE0Nzk0NjcxOTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467198'),
('7df5c374d929a7e99c00f6575d488ed28edd9da7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidm5UWExGelVNWGlFQm5IVm1PRWhGUVEzZnUybVRsOVJnWmRCR2VaMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgzOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfaW52b2ljZXM/YmlsbF9pZD01MCZsaW1pdD0wJm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOalE1TkRJc0ltVjRjQ0k2TVRRM09UY3lOREUwTWl3aWJtSm1Jam94TkRjNU5EWTBPVFF5TENKcWRHa2lPaUl5Tm1VNFpXSTBZV0kyT0RreFlqTmlaR0l5WlRZMVltWTFNVGMwTWpRM01pSjkuWnBTNklfRHNzcEE5LWp2NEdzaGdHRUhtS2w0TDJWS3ZiMGlHeG9ydHg2RSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NDU3O3M6MToiYyI7aToxNDc5NDY1NDU3O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465457'),
('7e14d750fc2c3e859326a7ffbd9656b9e15572c2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNDEwOXo2QjhmWng4czJySnV3Z1U5MmRZTTRBNjhxWlB6c1psRzM4TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTk7czoxOiJjIjtpOjE0Nzk0Njc1MTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467519'),
('7fad97da528e702ed6159c16d4fe332f250aeed3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQW13QUxucFhKanBheEZiZHROWExIVndybUZDS2VnSktldW1YTjE5NiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyODA7czoxOiJjIjtpOjE0Nzk0NjgyODA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468280'),
('807496c0bd0f18f6265f895ee70f17f821f45db1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY0FIb2U4ZmFpNVdpaVZIbzJlcHJOcDFIMXVOeVBjeUFEUWtyRU5HUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODM7czoxOiJjIjtpOjE0Nzk0NjU5ODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465983'),
('80fc571028cb654a59467c51846a8993e2da14ee', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXRETk9wbEFUYUVoaGRKbHkyaGtQcG9ZQzE3Tld0cW5WYjFsN2ZPdSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNDQ7czoxOiJjIjtpOjE0Nzk0NjgzNDQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468344'),
('81488213bd9fedfd7b473c56a5482fec0d982fc4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGZIbGdRendFZ24zMUJad0hhdU1SWnVkQjVuZXBEYWkzbjFoRVZkVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODEyNztzOjE6ImMiO2k6MTQ3OTQ2ODEyNztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468127'),
('81f0c772ef5958e59168eb186204cfe7890da105', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblZGQTBjaDJ4YUF5VmgxbWxzbXZmU05WeE8yaG1QYXN6RkRlcWJqeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjc7czoxOiJjIjtpOjE0Nzk0NjgxMjc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468127'),
('81f317875dd5b99b94bde5b9f84de2c58cf549b5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTk5d3hHeDFYMVBmTE9tekxwQVhpc2wwdUtjNmVaakFQT0xTamJOdyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyNDY7czoxOiJjIjtpOjE0Nzk0NjgyNDY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468246'),
('8240ed852ca64e79c08076a0b9d69749f13833ae', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidTFhNGNnMUVMalZsdWdOclF1SUcxdElielBWbjlBUVdJVGJ1OUg2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4Njc7czoxOiJjIjtpOjE0Nzk0NjY4Njc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466867'),
('8244a53506ca3dc2f84a6e794e263379fa55dbc8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTJ4ODRXam5nRGdPZ2N1Ylh6VTBYMk4yM2VEMXd2NHp4R0ZUc0JISyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzY7czoxOiJjIjtpOjE0Nzk0NjUwMzY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465036'),
('82b028cb5889ddf17ea0d417e4d880201b8b496c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMGpNOWNXT2VIcHFHaVFqY3FRZUl6eTBYa0NKZngydTVlTVZxbzNLdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfYmlsbHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5qUTVORElzSW1WNGNDSTZNVFEzT1RjeU5ERTBNaXdpYm1KbUlqb3hORGM1TkRZME9UUXlMQ0pxZEdraU9pSXlObVU0WldJMFlXSTJPRGt4WWpOaVpHSXlaVFkxWW1ZMU1UYzBNalEzTWlKOS5acFM2SV9Ec3NwQTktanY0R3NoZ0dFSG1LbDRMMlZLdmIwaUd4b3J0eDZFIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUyNDg7czoxOiJjIjtpOjE0Nzk0NjUyNDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465248'),
('82db633e65f9115d306d8139c3da90113c5888fb', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSlpzcVJ1N0p1d0hlWm5HajVUS0s3NjVnY1AyWXdVaVkwVmZDSENEbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4Njg7czoxOiJjIjtpOjE0Nzk0NjY4Njg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466868'),
('844e2f9ecb9b2a45095d0e2072cde679c48238a9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieHlCTEhDS0JmZmx2NndtOUFwQmRiMXk1ampvamZhN0JMczdicXVTYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgzOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfdG9kYXlzX2FwcG9pbnRtZW50cz9saW1pdD01Jm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSXpMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBNVEV6TnpRc0ltVjRjQ0k2TVRRM09UWTNNRFUzTkN3aWJtSm1Jam94TkRjNU5ERXhNemMwTENKcWRHa2lPaUpqTjJGa05qWmxNekEyT1RKa09UVmpZell6TXpoa00yUmhOMk0yWVdRM1lpSjkudWVxa3Ixb1FZbnZhTU01Ql9TbUR0anpfUXRlMERVM0VvNDR5eFZYZkNCMCI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY0MjUwO3M6MToiYyI7aToxNDc5NDY0MjUwO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479464250'),
('84c8a5ef0a2107170853f769ee04d9b494b716af', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSUNZaUlPeVNtVHA3dHdLbU1UR3FLU3R5T1cwYjJaV3VYUVFGUE9DTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90b2RheXNfYWxsX3Zpc2l0cz9saW1pdD01Jm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSXpMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBNVEV6TnpRc0ltVjRjQ0k2TVRRM09UWTNNRFUzTkN3aWJtSm1Jam94TkRjNU5ERXhNemMwTENKcWRHa2lPaUpqTjJGa05qWmxNekEyT1RKa09UVmpZell6TXpoa00yUmhOMk0yWVdRM1lpSjkudWVxa3Ixb1FZbnZhTU01Ql9TbUR0anpfUXRlMERVM0VvNDR5eFZYZkNCMCI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY0MjUwO3M6MToiYyI7aToxNDc5NDY0MjUwO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479464250'),
('851b5528f2b3762e8ce7b7c8d058b37ccbc701d0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSGwzMndZdm81MUJkWjBQdXFnaHNja0d6bXlSaEZzZkd6N2UyNXUwdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzQ1MjtzOjE6ImMiO2k6MTQ3OTQ2NzQ1MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467452'),
('864f8090936195614c40be52697a0cb77b3ecdca', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGxrVDc4U2xKc1Y5V3NUWWEzS3hUdzhjNzhBNzFXaXF1cUZPYk1yVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1Nzk7czoxOiJjIjtpOjE0Nzk0Njc1Nzk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467579'),
('865cfcc96d5ed7e7b2197d5f033f82b514c54982', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRG5seWp5RmQ5Tkg3NVlpalJQUG83TXNGQXBITmlqbWEzSkxSd2lpNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDA7czoxOiJjIjtpOjE0Nzk0NjYxMDA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466100'),
('87a6a94e6a589d045cd57bfd80a2dcb0e8a75638', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibkplcVBEWndKcEFqeUxzaWcxSkpmSWFtNWxXck1sQkJRdGlEd3pvWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTA7czoxOiJjIjtpOjE0Nzk0NjQ3OTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464790'),
('880fdae1ab18dfa5d2d38627fdc190c52187738c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWUJydnhuTExSc25MaXluNkpwbGxBbFZLTGFhNWtYSXJnUTB1a2ZqTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2Njg2NjtzOjE6ImMiO2k6MTQ3OTQ2Njg2NjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466866'),
('88b90803a081244d118ac3f04b0deb86e4a4de4e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSVh4bWlkYVRBcklVdWRzc2xDY0EzMzFBU245NmZxMXZCNlJVNGc1ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjIyMjtzOjE6ImMiO2k6MTQ3OTQ2NjIyMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466222'),
('89fd6d0a96c373f8e0c745ede520ab25a68e2961', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNTlOZ00xRm91NjRibmIxT0FFc2loTHE3ajlFbnpQbklKY1YwenBGaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTM7czoxOiJjIjtpOjE0Nzk0Njc0NTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467453'),
('8a5dcbac72510b075cfeab6c19d63f15fa6ea215', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHJId1FWQjAyQU1SbkhGeWdqMVJ3Mk1La3NLTDFJRXdwOXBMRkxCSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50X3Zpc2l0X2hpc3Rvcnk/bGltaXQ9MTUmb2Zmc2V0PTAmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJekxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME1URXpOelFzSW1WNGNDSTZNVFEzT1RZM01EVTNOQ3dpYm1KbUlqb3hORGM1TkRFeE16YzBMQ0pxZEdraU9pSmpOMkZrTmpabE16QTJPVEprT1RWall6WXpNemhrTTJSaE4yTTJZV1EzWWlKOS51ZXFrcjFvUVludmFNTTVCX1NtRHRqel9RdGUwRFUzRW80NHl4VlhmQ0IwIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Nzc1NjQ7czoxOiJjIjtpOjE0Nzk0Nzc1NjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479477564'),
('8a8690dbfba913793e3afd54c9726d2ccc78ed69', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia1dGMzZPTTFWeDcxSFlud3NPVU5rRElxa3pUdXlQUGR6TVBCVWFiUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzI7czoxOiJjIjtpOjE0Nzk0NjYzNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466373'),
('8c6af930ea39f7a221548fb466ff3d663237fec6', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOEFNSmFrNFpCbmlNOUE1c01YTlFqMUtCM3VMSTA1bG9Na1F4WHJ2eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjI7czoxOiJjIjtpOjE0Nzk0NjYyMjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466222'),
('8d3cce0221169377d1b78a5a0152dcf79bad8986', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUUplNHQxS0dHVUNDaGRtU1dNdnhUMWZ0bE9hUmxIUHNJNzZFZ1JhSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTM7czoxOiJjIjtpOjE0Nzk0NjUzNTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465353'),
('8d89edc48e62ecc64cf2a7a29aa528ba799e9d5b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZGNVazBLYWFGc3hFOUJPd2tNQkw1QWxWcjFBand2anhtdDc0RUV0QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzM2MTtzOjE6ImMiO2k6MTQ3OTQ2NzM2MTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467361'),
('8e7844457d0c52b7d9958ff5b27ba1944b605ed3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0VIWm1xTVRMRjVuRkx3UEpRc0gzSTBhcFR4Y21mRVJuV05kMFZXQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzg7czoxOiJjIjtpOjE0Nzk0NjcyMzg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467238'),
('8f0257e51b1f9fb182cba3397c4036be97b2acbd', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTFSdjB0ZW5DWFFnWXdxUkRvYkUxZzg5dEY3VXJRNG82S2E3Y1NOciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjE2MztzOjE6ImMiO2k6MTQ3OTQ2NjE2MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466163'),
('8f29b8eb4c868c450ecbf5e8cd64383f730bc2f7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGl2WjJ0QlZ1UENvVm03anU2ZjF2c1NzMkUzdHZ4Nmh5bmJDV2pVbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTI7czoxOiJjIjtpOjE0Nzk0Njc0NTI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467452'),
('8f8c23d7268f8ff0721e1288507205a2812a2db7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibktqeUFoaHZaejNvQ3hCbVVpUlcxemZSSDN0WUk1YllNVWhPTmJxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4Njc7czoxOiJjIjtpOjE0Nzk0NjY4Njc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466867'),
('9012e3ae6294f5930b7ca902ac53ed7b39f6fff6', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSmd3UXl1b1kzS1pVRWZBbXRXS2lDZGxENUFMMFV3S2xrNFpuMEo0MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDU7czoxOiJjIjtpOjE0Nzk0NjU2NDU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465646'),
('90200ac56fd8dc000b778527ffe8bb7c26bfa55b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVUFzb1o0VmlXMkVpczZTeG9CSWtHTU01RHJhQlYxWXZoRTdIbE9BZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjI7czoxOiJjIjtpOjE0Nzk0NjY0NjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466462'),
('90a00c558257127fd47c6668cdbb7b71bdd19637', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY0JjV0wyQWhTVXM1Rm9CaVlKV2NRbG96M0FHcmo4SzF3VXlHeHFqZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTM1MjtzOjE6ImMiO2k6MTQ3OTQ2NTM1MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465352');
INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('91e9c43b5fa486b74e515afbd7bbe9b1509d5e97', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1BLS0lKRHVxMjlKcVZFWlNSdHY4OFQ4MVVGV1BNQWUzRXc2NDNYSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjE2MztzOjE6ImMiO2k6MTQ3OTQ2NjE2MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466163'),
('92aa458c443f5eb26e5720a274c92f6fe2501bb9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkVNbnhuTE5UZ3ZoMHQxWHFUMnpibzZ0REVqVktmSUxLZ1Q5SGlncCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzI7czoxOiJjIjtpOjE0Nzk0NjYwNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466072'),
('92be0011f7159181d4efa55c70cb73baff29a7a4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTmljcXc4cFZVdkxvR2oxeDdYQU5Zc1NNWE5KSVJVaHBSWU5YR3o0dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzI7czoxOiJjIjtpOjE0Nzk0NjgzMzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468332'),
('92d31c8533bf0d4b26f65600aec067ca724f4687', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzluRjdTR2RMSlFyMTB6WHNzU1N2SmhOR3FZbWdlZUhHVkxGdmhLZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzM7czoxOiJjIjtpOjE0Nzk0NjgyMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468233'),
('93209bc35ee7dfbdec60f08bb59b1f74b9e1d0a8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUDBrNTBNaVhXdVFjRjVkcmprZlZRd2RZZ2R5cnlQZ20wUEVjVTBlayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY4MjMzO3M6MToiYyI7aToxNDc5NDY4MjMzO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479468233'),
('967903640bdea4ae188ca478b459c1847c8af120', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREIzSlJpd2lHOU10VzJiYUVPZHViNHFvdER1WDhiR0VmWTJZRDFwZyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NjE7czoxOiJjIjtpOjE0Nzk0Njc0NjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467461'),
('969bcd68f94b097f40f88e82cda62625e3471746', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVXRaelZ4M3FPeXF3VjVXaHVIdGxZNVN2TUZqOHNpbmNNTnFUZzBscyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1OTgyO3M6MToiYyI7aToxNDc5NDY1OTgyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465982'),
('9769b8cc0a859bd45cd94954627b8650ee3de66c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia3l5NEM3R2ZhYlhVQVU4MWVZOURSWWh6cGd1S21Hc09ZNktQdlBGbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2MjIyO3M6MToiYyI7aToxNDc5NDY2MjIyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466222'),
('9aadd197c890f6444895c6ebb23538cdcda643fb', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieUFuOGh3bmFhODd0SmliMXEwaXBsZm41TklDNnNSOUlBWG9TRUt4ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDI7czoxOiJjIjtpOjE0Nzk0NjYxMDI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466102'),
('9bd841835c36e6d32c824270e5b6acdde8ef01ea', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY09ZUzhzZmVROGlyckY4WWpNblhKVWRQNnhxZzRDckQ5cFZXN0JKTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzM7czoxOiJjIjtpOjE0Nzk0NjgyMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468233'),
('9c17ee89e10807aaddb16862c681a781fe9a199a', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVpUSlRkWnpjeXNuZThPUDA2MmpaSnFtOVp3Ymw5TVoyQTBiNEo1dyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxNDA7czoxOiJjIjtpOjE0Nzk0NjgxNDA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468140'),
('9c78b90d51e833a91a1712853419cd8f2568539f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNXI3bW9BTEk3NnA2dFFHZDVFY0RNSFVhRkxNN25SSzZ2T2NnOWlwTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzI7czoxOiJjIjtpOjE0Nzk0Njc3NzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467772'),
('9cc51717ff035d3f6916729f6c5249dfad2f347d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQXB1MmJveDhUMm92NDVidm4xV1pyWGR5UWJ3am41NW1PaUZmY2NzVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTY0NTtzOjE6ImMiO2k6MTQ3OTQ2NTY0NTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465645'),
('9d6b4221dae0c34b317167396d75667f7c62157c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTldNejhKN2xWaXBCN3kyRGZGeVpENVdxbXNRSHhGZTBJWnpEWFZRZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjE7czoxOiJjIjtpOjE0Nzk0NjY0NjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466461'),
('9e942ce61933296634cf2391ffc802081d6cecbe', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWp1cWxQZDFucVdDZ0xmd0VYd0JJVXVsRXdIR0ZxbDRETVFEY3E5WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NjQ7czoxOiJjIjtpOjE0Nzk0Njc0NjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467464'),
('a0cdbd6cd1a59def5b72fdaefafd2a7962fc7d5e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieVBHZjI5QzBuNmNkQXh2MmVwZ29DdjNGUG5FTURDbkxzQUZ1S1A1WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjk7czoxOiJjIjtpOjE0Nzk0NjgxMjk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468129'),
('a0fc62242dbfb643552e3c962a3e47ed51d63ca7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkdsNlBHdHlQQWd6UURQZE56ZTFEVTV2VXNFYno2RGVmdFhTdlBEbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzM2MTtzOjE6ImMiO2k6MTQ3OTQ2NzM2MTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467361'),
('a13c63df89c4b27d9a8120446215038cbacd3ec3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibkx1dHRpeUNSZFNPUExsbFRWVGFkd1JEN2d1bUpGcllsdDFGaUFTRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNDg7czoxOiJjIjtpOjE0Nzk0NjgzNDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468348'),
('a1785eb1c839e28d62c091ea4311de9965fecd3c', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejNPeTFaSGV5d1AyRzRiOWkxMU1rOHp6cjJGOXYxRVVjOURNc3RPaCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0MjY7czoxOiJjIjtpOjE0Nzk0NjU0MjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465426'),
('a1a9dacc3397d133a32938dfbd05e56b300c23d4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHRoc0l3UmRTQ3ljUGJyUlpTbERKcnlKcFlCd2lGT3V6VUY0dndpYSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzU7czoxOiJjIjtpOjE0Nzk0NjUwMzU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465035'),
('a3bd816e92122d4be6fdaa1879a3b6d7d3c9f14e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3BZcUlHUmhDdWVkdmRROXhMbFNFNGMzRzV3bldTTkQ4eE1hOUpsQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgzOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfaW52b2ljZXM/YmlsbF9pZD05NiZsaW1pdD0wJm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOalE1TkRJc0ltVjRjQ0k2TVRRM09UY3lOREUwTWl3aWJtSm1Jam94TkRjNU5EWTBPVFF5TENKcWRHa2lPaUl5Tm1VNFpXSTBZV0kyT0RreFlqTmlaR0l5WlRZMVltWTFNVGMwTWpRM01pSjkuWnBTNklfRHNzcEE5LWp2NEdzaGdHRUhtS2w0TDJWS3ZiMGlHeG9ydHg2RSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NDQyO3M6MToiYyI7aToxNDc5NDY1NDQyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465442'),
('a3c6af067b01c80c7159da104c753cc251c6a467', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkZGQjVXNmROTERDTlNidHV5Qm1kY25UMUR6NEJzQnFHNXhITm9JRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzU7czoxOiJjIjtpOjE0Nzk0NjgzMzU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468335'),
('a4df61a1ae2ca620ff5253fdf2c6da2c4badc2b8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOWRuU2pEQ3F0aXBWN3o0alBOMGwxZjEyQUZObnJMTjNsQWp6cVVHSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzg7czoxOiJjIjtpOjE0Nzk0NjcyMzg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467238'),
('a4e0604a7f1d4f9d2a38c2e913824d0968dde122', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0VBWHppSFIzV3JpSzFHVE1sRkVPUFhoRzhjY0o2VEdMeEowT0psaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzM7czoxOiJjIjtpOjE0Nzk0Njc3NzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467773'),
('a50a94b57ca4ce5c445525ea012cbf2011daa630', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiejJCVTFieGUyVWJua0lwNVY1ZlNkbHlBVE1iaDl5MGlVUmlDb3Z4TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODIzMztzOjE6ImMiO2k6MTQ3OTQ2ODIzMztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468233'),
('a5174edee7fdf765bb6c07ec182310de7369112d', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1owRzJISENWMEY5a2FuOGZScUhHcWJtY0dyRGRjQlJPc2NtQVdYaSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQyOTA7czoxOiJjIjtpOjE0Nzk0NjQyOTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464290'),
('a566a434dd9ffaa3d2de9c9157b97b7ea4ad0682', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNW15dDdRZVl0NlRCUXJCcGJZSWJBQlhadUJDS3JzZlp4T2VuWmVQZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTk7czoxOiJjIjtpOjE0Nzk0Njc1MTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467519'),
('a593d08acc4e46e1a49b6db36dd5c64a7ef65d67', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNnlQMlc1R2tCZUtOU0lqS0xnNFhLbDBzaDlyc2dPaWEzdjlDaldyOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjA7czoxOiJjIjtpOjE0Nzk0NjY0NjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466460'),
('a62168fdbca457ac4602278f86ce71ceba134add', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGVaZmJ1dWloYzVNZVl2VE42eUkyZkFaU0ZWQjhHNjRBRERra2FlMiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjE7czoxOiJjIjtpOjE0Nzk0NjY0NjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466461'),
('a7c2cbf95431ef77e97a07bada92ecb502835ef2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOUYwRWx0VWVaTndXSzhRRFdXZEhJellPVWFVMDJMOFdnZlZBTGlFSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTI7czoxOiJjIjtpOjE0Nzk0NjQ3OTI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464792'),
('a893131b54dd796a0024e98dcdc616c56038360b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3Q5dlpLVVluamEyaUZXdU5oaDVsQ01ISDNmT2lJY212bHozMWp6bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTA7czoxOiJjIjtpOjE0Nzk0NjQ3OTA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464790'),
('a8adf2c7a20f32c59a571d29d62ba809e1825153', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieTNtaVM1dWNiVGpTRXZueUpvRFljYm9mNWRGVFFmc1lVRXUySzZaMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjEwMDtzOjE6ImMiO2k6MTQ3OTQ2NjEwMDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466100'),
('a911ca33d89069a3fd658c876f071846c191c2dd', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTJPaGh3SGNkSUVueUZNVHZxejljM3EyeGRxZGUxSmhZdEpMa09tSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzM7czoxOiJjIjtpOjE0Nzk0Njc3NzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467773'),
('a93da7017b1f39c78b0c8e5630b8f0c175a4affa', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmxHUHNWa3Zza1Z4TXpDVmFORjR2eDJ0TnRYR1A0TFQzZklOOFdXOSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzc7czoxOiJjIjtpOjE0Nzk0NjcyMzc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467237'),
('a972ae8467d0d4226a2720df6b4b5992c640e779', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNU5kUE84OHdvY0F0YUplQzhZOUVMRHE0VGowcnV6c3liTm9xTzJiQiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjg7czoxOiJjIjtpOjE0Nzk0NjgxMjg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468128'),
('a9d5100f18d01693f4f47f76a183bb49286629d8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU29oM3V6YmVLUzhPQ0ZXdFVIejRqZEI4dlB6aDlzZE9iU1hnUTZxaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNDY7czoxOiJjIjtpOjE0Nzk0NjgzNDY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468346'),
('aa79999a49b53ac3a4776a3b2067f222fdd7b2ab', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXRhWTRLYlBxaXBtVXZMOXM2YmpoTHh0TElDSGNJN01uT0g1SDRDeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjg7czoxOiJjIjtpOjE0Nzk0NjgxMjg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468128'),
('aaa3f30214d0bc4e94c6a56a40233e6d2c09fc2b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibzNlWUJmQUVmS3l2ZFhhSmZKN2ZTZlR4bWNWOWFLbklxakdhSFNGRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTc7czoxOiJjIjtpOjE0Nzk0NjQ5OTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464997'),
('abcba880373fce8d658c58d51d436c9a1572736b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaDBxN3JkUXhOUElzMnJKV3NMaHNDdHpKZUdVUXFhQ1A4NDBES1dsYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDU7czoxOiJjIjtpOjE0Nzk0NjU2NDU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465646'),
('abdaf81fb25e337e2f30b7f3e6e9410625ff7713', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidnFRS1ZHUDY5RzFxbXgzZnVBZ2FUWUttYmRDNTZPQThwczdEQW15dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjQ2MDtzOjE6ImMiO2k6MTQ3OTQ2NjQ2MDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466460'),
('abf2296dd4c45ac02ee4679252b2a7695c0e6693', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODE1cnNvajVZQnVweTl6amlOVmg2alUyN2FaTk9xaEx5enJzYjFtSyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNTc7czoxOiJjIjtpOjE0Nzk0NjgzNTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468357'),
('acaed59e3c110aad6d28209d3609ad1d339a995b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUlVIMkFTMGp6V0o3MlI5RVFvUVlmdkVRdDRodUp4ajZpWUIxcW43UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0MjU7czoxOiJjIjtpOjE0Nzk0NjU0MjU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465425'),
('ace03baa1b9aefa30456b8ed0f568ad55c92caf1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRjdmTnlXZ201TVhoZlhrdUowQ1hNb1hIZ1ZBOVhyREdpTUhHd0x5MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzU7czoxOiJjIjtpOjE0Nzk0NjUwMzU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465035'),
('ad3063eaa1d61122d403199b5f375c83229714fe', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR0xVbVZ3UzJKMVlMTENyZk5WME1GVFdRM1V3ckZwR2JyS05TclppeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNjA7czoxOiJjIjtpOjE0Nzk0NjgzNjA7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468360'),
('ad973d33a2288ce7d1ae2fce2a97cf092ccb57d2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibk5yaHYyMERyWXhnMWJpZ1ZLNkJCUW54MktLMWIyMU1hcHVFYXc1QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODM7czoxOiJjIjtpOjE0Nzk0NjU5ODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465983'),
('ae874f402711a73b6d7af60c17c5bbc05f917bb9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWjc5YUd1YkxHd2FQc1FaeVFYTkc2eWhteGlkUFdFdjkzeW5XTUV3ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODI7czoxOiJjIjtpOjE0Nzk0NjU5ODI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465982'),
('aea038b273d8657695e389f5bf758e65c7f75115', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOEpMaTdLOXlNQk9qNFhnMWVqQk9GVGxlcTloVnoyZWZqb2JIWVVYWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzIzNjtzOjE6ImMiO2k6MTQ3OTQ2NzIzNjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467236'),
('af4d9195a55e113d4e36d21de5ed18c87cdc8e72', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaHA1dmNXNGZsQVViWkk3NlZac2lBTWlwYVh1REZMMVI0Q1JJQWVVQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTg7czoxOiJjIjtpOjE0Nzk0Njc1MTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467518'),
('b0215077abfd2af9aee1d92fc82aeb284126d653', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic1lENG1meG9wR0hyWEVGVHp0SUt1SVRNQ1JwRkpyTEFscWtlUmFieCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTU7czoxOiJjIjtpOjE0Nzk0NjQ5OTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464995'),
('b03f582a9931a4c0196ea40e49b06c708af70894', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRDFDR2w0VmlzQWNxQ0NwYUl5ZE9jRFNUR3I2T1Fyemt5SnhmTGc4YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTY7czoxOiJjIjtpOjE0Nzk0NjcxOTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467196'),
('b09c2dd881a0399f95a44fbc983b45a80b862eb9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN2ZhOUprOW1DTnhoczhRZkVXMXEyWXVzbHozN0hsMm9weVR2QUFrSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTQ7czoxOiJjIjtpOjE0Nzk0NjQ5OTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464994'),
('b09e8ebf218b367e7d408ff3357fbe9192f74dd9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTVJCUE8zMWJ5V2g1dlBONVBiRHk4VUU3V2hsenN4dU9HZkdmQ0VXUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTc7czoxOiJjIjtpOjE0Nzk0NjYyNTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466257'),
('b0e46c38fc8948a4c5e69d7607c5c49ba6d4e713', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ2tVeHBUYWd5Q2lHRjRYZmlyMFRkMEN0OFczdTJsb1FRZlJtSDVXViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2Nzc3MjtzOjE6ImMiO2k6MTQ3OTQ2Nzc3MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467772'),
('b103504f660c897977f53b30d61bdcf0eeb89631', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiekFQUjA2SEp4SUI5TnhFNm1KdFI1RFpYelpVSTlESDlSQmR5Y2NsZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzU7czoxOiJjIjtpOjE0Nzk0NjYwNzU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466076'),
('b1ca171618e3b2362ce43350e9120ff90330b010', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3ZzaEM0aXJpS1pBNDlnNEtNVnJWUFF1WDlaZTY5OFEwN1RGQVpRdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzIzNjtzOjE6ImMiO2k6MTQ3OTQ2NzIzNjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467236'),
('b21e6ed9e5f85afd7e1d0e4791c48e2e18d3f376', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0tVdGd0RENIY3FLNGF5TGhwblc1eFlBYmpoOUozV1NVbW1XS0t2SiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1Nzg7czoxOiJjIjtpOjE0Nzk0Njc1Nzg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467578'),
('b25e92d665bf16eae9a1b53ada2ee635ac24d082', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVhLWTBKaVA4VGhDRFNoZFU2anFFOGlGUThlNlZvazNWblFUaGZUbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjQxNTtzOjE6ImMiO2k6MTQ3OTQ2NjQxNTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466415'),
('b3e019d9ff96358dc6085aad28ce217e3f46aa08', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZU1sZllsQ3FBdG5ITHBPejc1UFIzMFRERjVHTXE1WXlQaGNGNzM1RSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjM3ODI7czoxOiJjIjtpOjE0Nzk0NjM3ODI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479463782'),
('b4a2a21364dcb53e4a98d2fa67d16807b4b7b6ac', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoickVWSEpLNmxISkZ0aFJKVjhHdU5zcWx2RFdidDZpOGlibmw4VWR6RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjI7czoxOiJjIjtpOjE0Nzk0NjU2MjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465622'),
('b515dc424a503a12e9a6ccc041d35ffd9d5ccc10', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicmlvSHRFOXQ1MlVJcmZ5MnlVOHJiZlFNcjBzU083ZlR2NTdHdFJ3YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTM7czoxOiJjIjtpOjE0Nzk0Njc0NTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467453'),
('b536fda8ccd882ba8d40d8e7f5aaf6189b825a2a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3pwaFR6TFVsSW1mUWdHYmRFVUNlaGJvZUtlamZ2MTY1T0VuYWxpViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgzOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfaW52b2ljZXM/YmlsbF9pZD05NyZsaW1pdD0wJm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOalE1TkRJc0ltVjRjQ0k2TVRRM09UY3lOREUwTWl3aWJtSm1Jam94TkRjNU5EWTBPVFF5TENKcWRHa2lPaUl5Tm1VNFpXSTBZV0kyT0RreFlqTmlaR0l5WlRZMVltWTFNVGMwTWpRM01pSjkuWnBTNklfRHNzcEE5LWp2NEdzaGdHRUhtS2w0TDJWS3ZiMGlHeG9ydHg2RSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1Mjc0O3M6MToiYyI7aToxNDc5NDY1Mjc0O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465274'),
('b58b257ec66ef3fe11c033464fc63fcd92f0d9d7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWhTSnFKeThZODlOVkJacDg3bWg0YXc1QmpDUW9JN0xnT1pYUTV5VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjQ7czoxOiJjIjtpOjE0Nzk0NjYyMjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466224'),
('b5953a06864dcb3a5c3437e471f8d286d4d97f6c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV09pUVYwWFhJTTIzWkZDOUZEMVNod1pZTzBrSjI3eUEwVVZIMGpqaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzgzOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfaW52b2ljZXM/YmlsbF9pZD05MCZsaW1pdD0wJm9mZnNldD0wJnRva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOalE1TkRJc0ltVjRjQ0k2TVRRM09UY3lOREUwTWl3aWJtSm1Jam94TkRjNU5EWTBPVFF5TENKcWRHa2lPaUl5Tm1VNFpXSTBZV0kyT0RreFlqTmlaR0l5WlRZMVltWTFNVGMwTWpRM01pSjkuWnBTNklfRHNzcEE5LWp2NEdzaGdHRUhtS2w0TDJWS3ZiMGlHeG9ydHg2RSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NDQ5O3M6MToiYyI7aToxNDc5NDY1NDQ5O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465449'),
('b5a5b4041e3234f492ddab3a3c396fe58943f6fa', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOEUwU05DSGoyV2d0bEpEUW43OXNzU0JnRmtEaWcwcGR2RDFTcEdCRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTY7czoxOiJjIjtpOjE0Nzk0NjcxOTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467196');
INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('b77ef3db0905eba858fcbe74592b5648954960e3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTnFKQ29xWlVJeVJaNTZEWnVLYlVWZnZ3QmQ3M0VOcGJUZ3hMVUkwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTY7czoxOiJjIjtpOjE0Nzk0NjY0MTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466416'),
('b8078607fff3c8164fe1722615770c00724ba09b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkcySXg2Z2F4VjlRV3FtazR2eW9QUm8wTFNlOWpOWG9NaHNJdkJJdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDY7czoxOiJjIjtpOjE0Nzk0NjU2NDY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465646'),
('b80a7197f63ff55497e404f9455815f254d400ed', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWXZzVW05N25TODZmdHJDZnc4NWFiVlA3aHBreFlRYlEzOVVaNFZtdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTQyNTtzOjE6ImMiO2k6MTQ3OTQ2NTQyNTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465425'),
('b85fa48cfc8914af2c1442b54fa5e4ed3ad2fc14', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXhydDVIdlVqU3R2elF6ZDc2cDdEajFiRFBHOWZHWGI0NGRMY21YViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NTgzO3M6MToiYyI7aToxNDc5NDY1NTgzO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465583'),
('b9420f0d34ef85ec2286ed0d9254d3ea22cee4c7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSE5ENks2YWVtZGFNTTBRdWVHUE12cWVIcERGb0dTQVpEdjBFNGtFTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2Nzc3MjtzOjE6ImMiO2k6MTQ3OTQ2Nzc3MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467772'),
('b98448e2e5cfddcb01e11c6b5bd42f0a7fb9d0ee', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibXc0R3o2WFdRSjVham1QNU5XNnNxbzNSYlZHNjVZZjFIRFVuQlZ0SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzQ7czoxOiJjIjtpOjE0Nzk0NjYzNzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466375'),
('bacf0929ecfba92a9911892d85e4f3c9afc42a92', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVnhydHNSTkJ4QWN3a1JKa1BHMXVRTGhZTnVnRFJUVENvRTd5OENXRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjQxNTtzOjE6ImMiO2k6MTQ3OTQ2NjQxNTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466415'),
('bad3acafa095fda8ae9dc9292ab363bd82e07c8f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHdMeEN3OEl1M2dGOFc0TGtrd1RHUVJrWDRnT1Qybm1lOHNIM3ZiZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzM7czoxOiJjIjtpOjE0Nzk0NjYwNzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466073'),
('bb03fde31a4bd8425eb45c007d1952e89ea90fb0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibU91VTBYdjFaTURHRVpJc0FQVGlWOTUxeTF0cFUySHdsYjZWOXhMaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjM7czoxOiJjIjtpOjE0Nzk0NjYxNjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466163'),
('bb1db0fc676c63c1724f8a6f850ef6cc9a30f691', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDlyS2VFOE5hT1I4bkh6Vm53aXg2MGk0QndubjR0Rzd4dmlYaUhWViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjIyMjtzOjE6ImMiO2k6MTQ3OTQ2NjIyMjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466222'),
('bb392e8a8f29ffdc3fdbd2038e0c1dd3b032684b', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUNjU2pjWmRTbWphNFRvdzZqa1dSTXptNzRqaTlYVHBFT1BxTUh0aCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5NDI7czoxOiJjIjtpOjE0Nzk0NjQ5NDI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464942'),
('bc4d80b258eb0e9902c034b3e11d86c16b9b6ccd', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWjg3R0FnN254WTZ6elprSXlCakwwYkpmRWJSQ1hpZ0tmSlVFNGlYUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTE7czoxOiJjIjtpOjE0Nzk0NjQ3OTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464791'),
('bd47fd31c56aac280a3543634fff3924be483fa9', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEYxbFJOdHJTMzNPVlh4ZFdDRTR6a01DOEpTVzFoSzVJUVZhVVZjTyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxMDE7czoxOiJjIjtpOjE0Nzk0NjYxMDE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466101'),
('be0dbc464f1b2976851857d14457eba4e6614fea', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkZEd2FFOTZyNTkzeUpzeXJTUDBiNXV0WmRJbHd3Uk9sRTJMbjdpUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzUxODtzOjE6ImMiO2k6MTQ3OTQ2NzUxODtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467518'),
('be9a48a2b08f0d66ab7eb32fcf86133d7da2d66d', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3FyY3NveUt2TTM0dnFESnJkN1FHZUk4NTJ5dVZsbTJLY0JFN2EzRiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2NDc7czoxOiJjIjtpOjE0Nzk0NjU2NDc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465647'),
('bed2306f4b3eb26d9ef819ee2561bc2dbbdecfe9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV1hNRGN1OUNwMTZUNG1rcmNXTmNRemltZVY5c0I4ZkJHT0JZaVJ5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjM3MTtzOjE6ImMiO2k6MTQ3OTQ2NjM3MTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466371'),
('beef11fe593ad4de04ec0e9eae187785628b6cc2', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS21pQU5oWnR1emhFZlpFV1p4VXl1WnFhN2VuMFBjbmwxOGZnaWEzeCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzM7czoxOiJjIjtpOjE0Nzk0NjgzMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468333'),
('bf7efc06e9720b0a36edb9f8d4736e4ae1bddce2', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWDZMMWEwdE9ybUE2WjZyVU9qQjZzU1k2elZpRXBkdUtpUWdYVXdwRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTk7czoxOiJjIjtpOjE0Nzk0Njc1MTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467519'),
('c0d5bd4e3ef27965c7197bd924653a33bcd6db8b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS2toMEhzT1R3YnlYNjRNTU55UlJHY1JtdjhsZ0R4a1VQWHlZaVplSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjk7czoxOiJjIjtpOjE0Nzk0NjgxMjk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468129'),
('c13d2ec47b63f5db3c7a93c2315f7286a2365f57', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTThUTlA3ekRONjZlcGNKT2JJcG14RUZQWjA2WWV2NEZiQlBNSVhNayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyMjM7czoxOiJjIjtpOjE0Nzk0NjYyMjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466223'),
('c18e96ec26a45b062ca7e09521556510f3d7dea0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2ZabU1WOXZ2TUJEQkJRVm8xdkl6bld4Mm52V203Y3hxN1g4Tkx5ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjE2MztzOjE6ImMiO2k6MTQ3OTQ2NjE2MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466163'),
('c193ee77040596430dac36cf2a1e7731d1e09eb4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiODVKUHUzMnhESUtna3RRQUx6a2JlWGpLMW9JbGtsNXpmN1hjN095ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjI1MztzOjE6ImMiO2k6MTQ3OTQ2NjI1MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466253'),
('c1bbc8e08c0a332c3d7d1de8a21e71a6d6f7a337', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR25DeUdCZGgyb0xhSDVvd3FGbEpaQTFEcDlhc1Z4S3NxaDhlRm5tRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDc7czoxOiJjIjtpOjE0Nzk0NjU3MDc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465707'),
('c21f7134150819e421e00f6d77e247262cd89438', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnBLa1pBd0ZDN2pNSjhiZm5Xc1JOcVNkSEJnVE1FaXhmeVZHSWtxdCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTY7czoxOiJjIjtpOjE0Nzk0NjY0MTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466416'),
('c31772b581b1ff260aa41233c620c538e89b5b67', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3lJb2RBdkFDbUVEVkdGdEFycUFLSnRoMHozM3EwM05YU1dTSTZlViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTk4MjtzOjE6ImMiO2k6MTQ3OTQ2NTk4MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465982'),
('c328c574d2dad52b8d1b6f78c5de62aad95dc875', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYjlWT3FwQVdtQkliUnhKVGk5ZGZxWmdFWnlQR1cyQUpsTGdvVm1nMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTg7czoxOiJjIjtpOjE0Nzk0Njc1MTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467518'),
('c38b256c73b2c09152bf77b016af5974d0e40d8f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNW5kdU50b2xsQndxMHJUN2dMZFpaeU9wbURqdkFHdENMaVZUZTJKSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTI7czoxOiJjIjtpOjE0Nzk0NjUzNTI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465352'),
('c3a5661399fda7f0beb584bd2cd87454ecb593ea', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTgyM3huUzEzbHQ5ZkJDZ3RGWmViM1JMTERhbDE1TTN0akJ4UEJlQyI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNTU6Imh0dHA6Ly9kZW1vei5vbmxpbmUvZWhyL3B1YmxpYy9hcGkvZ2V0X2Ryb3Bkb3duZGF0YT90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakl6TENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTmpNeE1qTXNJbVY0Y0NJNk1UUTNPVGN5TWpNeU15d2libUptSWpveE5EYzVORFl6TVRJekxDSnFkR2tpT2lKaFpXRTBPR05tT0RZNU16UmlPVEEwT1RCbE1qaGpaRGczTVRZNFltUXpOaUo5LjJpelhxSzBjX01rSHZlOEZCSU1JRTBFRW9LM1pLVk16M2gzTE4wTWxGZ0UiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NDA3MTtzOjE6ImMiO2k6MTQ3OTQ2MzEyMztzOjE6ImwiO3M6MToiMCI7fX0=', '1479464071'),
('c45f0ab6f15f0b763ea764615afd30a7cbc1379e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMkZrQ0ZxNm0wQ0dRMENaeTFzTFlybmVkQ0s2OXY0TmJ3MURwWDNJNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjM3MTtzOjE6ImMiO2k6MTQ3OTQ2NjM3MTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466371'),
('c472babe8eeaad631463f8970e8c3cefd62d71c1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNEFXeGVRZGhJSGpWZkV3QUlXa0FCYjF3ZHVQSVcxcHZRUUlSbUFIRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzc7czoxOiJjIjtpOjE0Nzk0NjcyMzc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467237'),
('c4a68e43e38ae985bc2716de3f3abd91f6dab6ec', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXU2QVgzVjFOalJwSnRrd2tXNGlWeEpTUUxrUmhpcFdjdjlFUDFiOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNTg7czoxOiJjIjtpOjE0Nzk0NjgzNTg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468358'),
('c66035d9fe57c345866b9de0f40fc56f4042805d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMXpkU3pkVmdBOHBZZWVzOU1rdUJHVjJjaVZKeHBoYWtKS0gxYWt2TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjQ7czoxOiJjIjtpOjE0Nzk0NjU2MjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465624'),
('c6fc9d8c411ffc61182eeaf38d8e657f221b206e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiazdTVzB5aU1kdkJ3RGNxZVBKd2NrR2FqQUxUeXNMSW93cGZleXNxOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYzNzI7czoxOiJjIjtpOjE0Nzk0NjYzNzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466372'),
('c784bde2c0cb41a0985506183c36f2cd45fb5927', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidktXQnFzQnhiSlhvU0JVTXpIdG5RV3d3d1p0dVUyMHpqaHlqejBEQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTc7czoxOiJjIjtpOjE0Nzk0NjY0MTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466417'),
('c798c2a64bdb47b689776a172ee022e1900ada04', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSGJ1cmUyekRDSUZjamdPMlBhM2h3Z3M1VVlvN2l3VUVLeHVha3RtQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJekxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME1URXpOelFzSW1WNGNDSTZNVFEzT1RZM01EVTNOQ3dpYm1KbUlqb3hORGM1TkRFeE16YzBMQ0pxZEdraU9pSmpOMkZrTmpabE16QTJPVEprT1RWall6WXpNemhrTTJSaE4yTTJZV1EzWWlKOS51ZXFrcjFvUVludmFNTTVCX1NtRHRqel9RdGUwRFUzRW80NHl4VlhmQ0IwIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Nzc1NjQ7czoxOiJjIjtpOjE0Nzk0Nzc1NjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479477564'),
('c7bcc58c5d37c30285d5f6cece1d61a7f6ad5050', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSmhmOHFuNkZFcjVVSDdrMTR3VHI2Y0JxR1dsMmp4Tm5jU3dLR1ZIcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTM7czoxOiJjIjtpOjE0Nzk0Njc0NTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467453'),
('c876cdf2991d839d12fa6e5b9c9c7ff2c788ff60', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVzlLejdWNlhRQXZ0SEFhMXg4eWRJQURyejVJQnJmcmtLR29ENmZpRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzc7czoxOiJjIjtpOjE0Nzk0NjcyMzc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467237'),
('c8e1dac11d9446019cbbb1a1a8a287e0ae53c7b0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlYycktzYVRYbTNtZFBoaTNaYlpRT0hNYklNOVJMRnVHVlRaVTAwayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTQyNTtzOjE6ImMiO2k6MTQ3OTQ2NTQyNTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465425'),
('c980e4e27a433574ef6f05adb497b8ca02f05cda', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY203Q1JpV3JaVWdSR2VJRmlHRXlIOE9CYmxLWUlwTWVlVEQyczh2cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjM7czoxOiJjIjtpOjE0Nzk0NjYxNjM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466163'),
('ca1a90435b471fddc2c95a4a1b96215ae6788a43', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQVdLa0xlNW1ZZzNnQW5nUUFpRmt0blZSbXMwNW9PODhPTVh6c1NDMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzY7czoxOiJjIjtpOjE0Nzk0NjcyMzY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467236'),
('ca3200e16f21a3c40aa82b339600ea40ff6f33f9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUmg0NHNmZnhnN0M4d2sxSFlRTHlsc2pQc0ZQUjZGZlZDZjRsdUs4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTQ7czoxOiJjIjtpOjE0Nzk0NjYyNTQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466254'),
('ca5e07fb5fc845713bc4444201cf31cd17ade04f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiak1mQ2w1eGZZTHRvNGpjcmoxTU5oVzdoZHBpZldra1psWHliUFZPeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzIzNjtzOjE6ImMiO2k6MTQ3OTQ2NzIzNjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467236'),
('cade2576573254d84abf67525616b292e23f9ce4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDdtbDlrNGJEWkFkWkVhRzlOaERiRnNxUnQ2RUV6eWxrOUZWb0ZERSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzMzI7czoxOiJjIjtpOjE0Nzk0NjgzMzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468332'),
('cb6cc317c67b468f00b4eab262f85853f0b38f49', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGthbVVhWUtuNUF4NURzMWpLT0xrbEo4WXhNRnFJTmhDSGM2VXF4OSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgzNTc7czoxOiJjIjtpOjE0Nzk0NjgzNTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468357'),
('cc56995f5ab2e560c6a58ad35b563935c9ec1c78', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ05uaUNjZ3BpeFJtV3JxZHNNSUpiaVhSbmFncU1mbnB6S3k1cTFwNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODM7czoxOiJjIjtpOjE0Nzk0NjUwODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465083'),
('cc8620f9804576a438756845002253146dbfd0f6', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY0FwR21qdFU3ak1waGNtY0ZJc3FuZldPZ0psbHFXc1lyYkFPWXdOVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODI7czoxOiJjIjtpOjE0Nzk0NjUwODI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465082'),
('cce24ce0ad00cc70d8a0df5cdec75d624155489e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic0VabzJOZk9LSU5rYjN6V29MY0NZZ0VBRkhLT3p3VnN1a2c1SG9nTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyODM7czoxOiJjIjtpOjE0Nzk0NjgyODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468283'),
('cdf8bf2b6430190eac3ff064b937a33ea0e28f7b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidlZDNmdNblhoNUpxdW9vZVQzS0VVVUxMZ1duMEVBUUZqWDNVT2J2WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTU7czoxOiJjIjtpOjE0Nzk0NjYyNTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466255'),
('cf02e49b5967c49177717fa35977a040cceb8355', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXpjbE40ZU9mYkt5THprV0NqWEpUMjdHbEI3RDNQNHpzSUtlN2JhbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDk7czoxOiJjIjtpOjE0Nzk0NjU3MDk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465709'),
('d02ede96ac8a6d0525db3c3aae053919e496f245', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNHk2NlZkOXJkV3lYeXQ5aFdlMTlPU1F3bFRlV0hiSjVrN1ZUbWlOVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTAzNDtzOjE6ImMiO2k6MTQ3OTQ2NTAzNDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465034'),
('d0b780b6a68022c53903510ac6db106c1df5134e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicUhjVlBUbVNlNkNEcVM3OUNLYllOOFBDY1Uzb2hkeXJTWk9ycjZibiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjQxNTtzOjE6ImMiO2k6MTQ3OTQ2NjQxNTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466415'),
('d1ac5d5e7d2b4a8d216a1d16f5e3d8a0f80f4f02', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSkN0VXc5SDQ2TmVmeGo5RGhYT2pUdHpWM3MxNDlOTTlSN1FuZHB5RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODY7czoxOiJjIjtpOjE0Nzk0NjUwODY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465086'),
('d1d32b168a1c3b5cda8f79f00c3474bd90fb77fb', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOVFuVGFCYWRRckd2Qkh0Z29pZU1SODNuSVJCbzRDck5EQXFIRUxrOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTc7czoxOiJjIjtpOjE0Nzk0NjcxOTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467197'),
('d22a2c05a6a9143fc14e22daf0d5031ba56b97a1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieDViTmxvWWY0Q1Jyb3RSS0MxUTR4TnVSbE9EeFphb3dWZTVoclhLYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzQ7czoxOiJjIjtpOjE0Nzk0NjgyMzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468234'),
('d2746437d57230489acd4c84246195caabb31aff', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTzRoekhscXMzZHJrSzZPS1FsT2Y3aU5lUEVqNFpISGxYQmxJZXBXRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzUxODtzOjE6ImMiO2k6MTQ3OTQ2NzUxODtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467518'),
('d383ab310b27ed9527bb554ed06029cf2a6b3221', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0VlTHhOeURZVFZpYUgyVjJ5MG5CU2RHVmd2cnZpUG5EU0V3RFdociI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MjI7czoxOiJjIjtpOjE0Nzk0Njc1MjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467522'),
('d54822947f94f36e47ffdaff025e486a0e553514', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWDdQTGlRelpVNkJvMmdjU25rY1VWRThLYlE0Y2tQZ2JMYjFRN3U0RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjc7czoxOiJjIjtpOjE0Nzk0NjgxMjc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468127'),
('d680300543171bee3f79a9a8a96a2c18ed0fb964', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVNCd0RKM3lWMm0wZ0NVTEdWQVVHa2tjaXNnRG9lQlkyYjQ4Y1hwaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcyMzc7czoxOiJjIjtpOjE0Nzk0NjcyMzc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467237'),
('d68ebdd8a3d8b53a3f3bb13beea081682af3ce79', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFp2WDY2WHBiQThXR3R1eFpENWh1UWx5cTh4QWxzQ1VLaE5CblVPUiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODM7czoxOiJjIjtpOjE0Nzk0NjU5ODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465983'),
('d846926d13dde54b40813043976b11d9878d259d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmZDRmRCUkI1YTdYSXVxVFphb2k4SzJCdGxQRHdsM25wNzRpYjk1TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzI7czoxOiJjIjtpOjE0Nzk0Njc3NzI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467772'),
('d9bbda9d37d65281cd624813b46642ea1397ec29', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczE3cnR2eEIzbWdmdHRQWjR4UHRmaUNGTllnYlZIZFRLazhrdlhINSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY1NzA3O3M6MToiYyI7aToxNDc5NDY1NzA3O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479465707'),
('da4cf4b6e53e84356ed7693dcdfe28e799df0891', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOFJZamUzd1VOSWg5aEtRTzVqT0pEYmtGbFFZWUU3ZHhUcjZEQmk5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyMzM7czoxOiJjIjtpOjE0Nzk0NjgyMzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468233');
INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('daaf779564b736de00c0c9bd80554c7566efcce5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGZjRGN4NzcxOHR3bzNwYWc0R01zTERpQzZjeXZtV2R5S0pHZWdTUCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU2MjI7czoxOiJjIjtpOjE0Nzk0NjU2MjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465622'),
('db90dcaf5f235bd502f3e9fc0d441d8716e2491f', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib29VSU9mM3psbzZweGdLOFRyaFdRT1pEWEY2UzgzQXVsVDZIWGF4aCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MTk7czoxOiJjIjtpOjE0Nzk0Njc1MTk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467519'),
('dbac54fab0cba1ca85a129d5bb250d3a4398becb', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaU5DeVRPZ29YQUxRSGZKdEo5M0ZtTWo4Y09JNmpybGxUQkZ2THpURCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjU7czoxOiJjIjtpOjE0Nzk0NjYxNjU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466165'),
('dbb09df701a1797fe4062b20c6b015325d3f987f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWZSVGJEbEphTjVLb2NxOTllcTRiRlR2eWg1MUs3VmVpRXRBQW0yWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYwNzQ7czoxOiJjIjtpOjE0Nzk0NjYwNzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466074'),
('dbe1a9b1fda0055ce27c5b2d60b20b14d60cf295', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHZ4Yk9Mbk5IVjY5ZkV2Q2YyYnpra2daTjkxb1F4S1BTbFFVbkFPMSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MzM7czoxOiJjIjtpOjE0Nzk0Njc1MzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467533'),
('dc6bf38330b7851fb2bf171860bea49524ba30eb', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibGh4dVNZbGEwNThMVDIzV3pUWVBWZEFVbmRRdGViN3ZSUjc3QzRVTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODg7czoxOiJjIjtpOjE0Nzk0NjU1ODg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465588'),
('dcecd7b6749c7b4ce4d2a51730eacce8b5843a7d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibUI5UndNb21zdUwzbVdvblpkOUNjQW00M1M4NkszYURuaHFrcFlIRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU5ODU7czoxOiJjIjtpOjE0Nzk0NjU5ODU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465985'),
('ddf63141d96794f31a6a66f2f1a617e3bcd4cf3e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWnNHWGUyR3hYUDN6QmxvZGJ0SnBLRFhBbHhlbXRINVZRYlM5aG9KRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzM2MTtzOjE6ImMiO2k6MTQ3OTQ2NzM2MTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467361'),
('dedc1d354ece62d3eeef2233b3da2aba39435e9e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUDFiVnZqemJUck82aXM4TmNDSXlCUklzUWw3RmM0N3JBNU90ZzlhTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyNDY7czoxOiJjIjtpOjE0Nzk0NjgyNDY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468246'),
('dee6d381edbcd97a37b52c58076646f942fc5e94', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVm5RNU5hSmJnNVpxR0J3UldRdkNXaHlUY3VFanpJeXI0MGJkU1M3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MDg7czoxOiJjIjtpOjE0Nzk0NjU3MDg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465708'),
('dee7e9e618ac336f962c5340aba359fdeae221f0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0Z2TUlNSTdWd2R2eVlneDJaTTMxSXk4YzhZR0lCNHdRSTNiV3JJTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTM7czoxOiJjIjtpOjE0Nzk0NjQ5OTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464993'),
('df4f47865fcee87b773f9179a1249f989b3030ac', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOWhJYUpNelVZOUlaZ3hEZlVxZDZ1UU84dVBBMFZnc3hjTno5bE1ZZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2Njg2NjtzOjE6ImMiO2k6MTQ3OTQ2Njg2NjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466866'),
('df74a1218092ed88f27732120685b4506dc95ec8', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUzhLblhNTkZQQlRCOHBEQXJhVUZQWDNLS21DNFpSNlV0UUFFeTl6ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2MTYzO3M6MToiYyI7aToxNDc5NDY2MTYzO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466163'),
('dfacdabf5957e89fab84cb1466b21e6f1e0b483e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTnhiNmFjdTlzRzRqUlMxdVRJb2ZkemxSMU1JZTE4N3h4dG1idHdYaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTU7czoxOiJjIjtpOjE0Nzk0NjQ5OTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464995'),
('dfbf25d682febf602e549fed44a8a6be60e184cb', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTktNejM5bDZKOGtCWjBWT2IxRDNScFFVNUZDNWtqMkYxSDdOUDZFZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTYyMDtzOjE6ImMiO2k6MTQ3OTQ2NTYyMDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465620'),
('dfd8a71e666c576b6ec3254bd2aa1f3fa24a8c92', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2lLa1RETGdqd3BZbk9Rd29jTklnbTc1aGlQMjNOdDBWVnBlSnhKciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjczNjI7czoxOiJjIjtpOjE0Nzk0NjczNjI7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467362'),
('e10f40b0b2292be49bc6a3444a9156bb1fa62eab', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicklQUktuU3pUbHpXaFRoY2diandvRXk0VFUyN2VMdzA2S2xaZWJDVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY3MzYxO3M6MToiYyI7aToxNDc5NDY3MzYxO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479467361'),
('e12909438ec7e5d0266eba9ef6a25dfd2e97d413', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRnhrc25weXMyeVRuZmpJY0NuUVB4N0J6YXVnUjJNZzBXQ2ZVUlVJQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NzQ1MjtzOjE6ImMiO2k6MTQ3OTQ2NzQ1MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479467452'),
('e13e0c9f3985dc8c635379f148d4d342c702f736', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclRhejNqOGFvc0lLamdGYUhxbzNncGhObWk0amtzSDRVTExoWWpoTCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgyNDU7czoxOiJjIjtpOjE0Nzk0NjgyNDU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468245'),
('e1cb81cc4907b720dab39d1ed54a9f0b710ad59e', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWk5SSzRoU24zNTZHak9jZ3JtZnkzamJMVmFENGxHT0dTYWRBdUh3SSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjcxOTc7czoxOiJjIjtpOjE0Nzk0NjcxOTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467197'),
('e2bc9823b9619bf26d22acb1a85427e2d9051960', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY2tieDNNdkxYanlyRlk5eTUycVhZM1p3S3pWZGVoUGZFWUh5QXRCSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMjg7czoxOiJjIjtpOjE0Nzk0NjgxMjg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468128'),
('e30eae6e5a035a04a3cc2912721c45be87e825e5', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoianN1ZVVyUFBMcklxUGQ2aDJTaVQ0VU9SSmt0RHpjVVB3dndvWllhcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc1MzQ7czoxOiJjIjtpOjE0Nzk0Njc1MzQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467534'),
('e47a055814838b82cff014ef89cc8c88d66456ea', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidUZEZ2NQMFFEV2pDa2tGNW9ZcTg3Ymk0eGNhSEtIYk93MklwemZvdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTY7czoxOiJjIjtpOjE0Nzk0NjY0MTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466416'),
('e500458e094540e87b66e1457312eee555e4a09a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUlBETUViSW16N0ZRY3RnS0lJaWJlY2FaMkd2NHNCb2FEV0pscG1XUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY3NzcyO3M6MToiYyI7aToxNDc5NDY3NzcyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479467772'),
('e514f2749ff4ff88063e37af8444f9a67d23d436', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVphZzFuUzF4TXkwSDZkTVZCdER3WkQ1TFZYZWJKTmJGWnJQa0tKQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY4MzMyO3M6MToiYyI7aToxNDc5NDY4MzMyO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479468332'),
('e64b51b1ac0e3359acd094752d5a99d2d2df0236', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS1F6OGl3ZzJqdG5CVzVNMklTb3ZHSE9xQnlCUEJDeWNNVFk1cW1IeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYyNTM7czoxOiJjIjtpOjE0Nzk0NjYyNTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466253'),
('e64cbf13091b67dfd967a96d174b0939c987e1b9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVFZTVR0Z2lhUFFQQW9SU1kxMVoxOG5EaEt3bnRWUThvYzk2V2xiNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTY7czoxOiJjIjtpOjE0Nzk0NjY0MTY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466416'),
('e65fbfec1f9b570910f94df1c8132da6f496bd06', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQUM2dmRWQzhyUm9nZ011cTFsa3drOHJFSzh4M0YyUUF4Z0Zxb004eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzg7czoxOiJjIjtpOjE0Nzk0NjUwMzg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465038'),
('e6a042b377fbd1fb41937c5208026b9c4643b996', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmdDbGNSQnF2VG1jSVZZY1Y3VzhxNXdqenQ3cmpiM1E1U1MxZXBmUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTU7czoxOiJjIjtpOjE0Nzk0NjY0MTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466415'),
('e6b00738d6028577b0ba024d018b1a99cad8cee4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYk5jcDNDWkxNN0E1S0xkWlp3dUpralZVMlRFOXZXS2g2VkNWbFNxSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODY7czoxOiJjIjtpOjE0Nzk0NjU1ODY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465586'),
('e77a21a94aef8e6bf34f979c53c9ab59ba92ad91', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmNPRmRsOU5oWnprRFgxN3RmMkJ6MWR0bzFZUEJzaHVlbEpQTzY4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0MTc7czoxOiJjIjtpOjE0Nzk0NjY0MTc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466417'),
('e79357f9302104656fb34e15e538b91fb4a3247d', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY21sdjFHbWppb0Rla2o1UVl0c3hqYWl2c3dVR0xCZnlFUHRyMXJjZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTY0NTtzOjE6ImMiO2k6MTQ3OTQ2NTY0NTtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465645'),
('e7f39e53e7499040abe6a28c62e5ddd6b7b839a0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRTlvOU1ZZDFXUldXZnVNYTZqbDRqM0FwbXhQUFVQbENneG9NQkdFYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ5OTM7czoxOiJjIjtpOjE0Nzk0NjQ5OTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464993'),
('e7fb2a1b1bd145948424920197bd375d8fba8753', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUtablFHZngwZEhmOVhaZkVXZWxFWVRIMDVEajd5WmxKRXhWRlJFbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU3MTE7czoxOiJjIjtpOjE0Nzk0NjU3MTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465711'),
('e91db721db624f4132432137c631ec776a3a474f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaWtxU0wxWjJQeG5DOWNWMFFNaVhxSHhBNU1UcFp6R2t2OEJZRzJ4OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTM7czoxOiJjIjtpOjE0Nzk0Njc0NTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467453'),
('e970d5f63a80b58784ca53abe70b8be433a8a7e1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib1BUSmhiVzRySW05ZjRuVzFycVpiTWRBNHZWMDVzN2xJc0o5TXJReSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzUyOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kaWFnbm9zaXM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc0NTU7czoxOiJjIjtpOjE0Nzk0Njc0NTU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467455'),
('ea70dcd82d4bace8105657c8b94704b49272c0b5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGxjOGxEVG1LSjNlQTlrbGRNMTZjUzUyaGxnbzdxVmpweEp1bmFXWCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUzNTM7czoxOiJjIjtpOjE0Nzk0NjUzNTM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465353'),
('eac8a8137f197df558c94a47f83e810c53d3cc40', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWFpGWkFOYjF2Y2Z2eHRyTW4zam1QQ2kyTVEwaE1jOVhLbkc0RkF4aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjQ7czoxOiJjIjtpOjE0Nzk0NjYxNjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466164'),
('eafcef96942218ce3b535aa149e4290964e4bd8f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ2YzcURYR2NOeENmbmFsSVpGdHJ6MXUycEdEeWpSOUlKWHV5WVB6SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzM7czoxOiJjIjtpOjE0Nzk0Njc3NzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467773'),
('eb0a5f1e652e7646d5e3fa2858b232779f7118a6', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWlRBblNqcHd4RElYQjFiVXZOdjFsZ3NiT1Z5SVBjeUlqWWllQmpuayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY0NjE7czoxOiJjIjtpOjE0Nzk0NjY0NjE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466461'),
('eb917ef4499086448f920d6165f3bef02d2ff137', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibkZuSm1Sb2JsUUtwcVFQZjhkb25HN2FzcDZzTnB2elBJN2Y1V2RzViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTU4MztzOjE6ImMiO2k6MTQ3OTQ2NTU4MztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465583'),
('ec19c5cb76f070e4ba8c7a3fb051643e01f50e41', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieUlieUozTGVRSVBTT2ZpSGJsalpnMm5xWkNFb1NFOHdGVlFTSHZ4VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjY4Njc7czoxOiJjIjtpOjE0Nzk0NjY4Njc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466867'),
('ecac0a4d31ac9019e0220c36170df12931db545b', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1M3NEVXbEQxQndFYkN1MmVOMnJSdlF3bGpvWUVwbHc0SmMzOGZsSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY4MTI3O3M6MToiYyI7aToxNDc5NDY4MTI3O3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479468127'),
('ee9501b9cda713ccd79e17b2d82ff2603e7c39b0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUxyWWVneTdlcVhOYUtVbFo3Z0lqM1dsWTlOTHJQeFo0RkZxQ2o0ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2MzcxO3M6MToiYyI7aToxNDc5NDY2MzcxO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466371'),
('eed4210946bdaff632beb57f0bd4f47506f5bae1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUm5PbWdYMnJISXRGWk5QdzRBTDlsNnlTZTZweFczQnNMT1VERHR3MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0Mjc7czoxOiJjIjtpOjE0Nzk0NjU0Mjc7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465427'),
('eee8e5b6865bafd92c7d4d0b536a95544e8c46cf', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSXFSOWdrZUZ5dXZncFd1Y09oeXVSYnR0c25NR1RIMUJIemZmdUEyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjYxNjQ7czoxOiJjIjtpOjE0Nzk0NjYxNjQ7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479466164'),
('ef0b28b81845be54be170cf710a22631c58086ff', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT2xJYnNJQnZGNXAyVkZ3bFp6amVybHJYbFc5eDZQUzdicnlrUUg1bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wYXRpZW50P3BhdGllbnRfaWQ9MDAwMDE0OSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTM1MjtzOjE6ImMiO2k6MTQ3OTQ2NTM1MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465352'),
('f0a80b191cbe9cefd620cea8847bd5443d92660c', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDBwSUVOanhmRmtGSjBMZnpsT21EWDVxVzBidThYeUtHQVJ3cHA3dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NjQ2MDtzOjE6ImMiO2k6MTQ3OTQ2NjQ2MDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479466460'),
('f10577dec9f0589b2860acb35ca14eb29734c2f7', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0gzOVBmR0RUMW1KSUV2YXdZR2Jmc2V3ZTNXM2RadlVTV3Nta1J4NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDAwOiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXM/Y2F0ZWdvcnlfaWQ9NCZsaW1pdD0wJm9mZnNldD0xMCZ0ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzY7czoxOiJjIjtpOjE0Nzk0NjUwMzY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465036'),
('f287946a895ea6596cbc3e1b352ca12557006058', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTnIyRENzRGJXeTl2WE9EeTFITnljT3JsYjg1YjhLd09qZHlER3IzdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9sYWJfdGVzdHM/bGFiPTImdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODM7czoxOiJjIjtpOjE0Nzk0NjUwODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465083'),
('f2d0cb3a0572b5e3edfcb854dc801a94a7a4ddf9', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2l5TkVWT3VHNTBoUkxQTFc2Skh6aUthbE1LZGhSZFVhbm5xMW1LRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc5OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF90ZW1wbGF0ZXNfY2F0ZWdvcmllcz90ZW1wbGF0ZV90eXBlPTEmdG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODM7czoxOiJjIjtpOjE0Nzk0NjU1ODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465583'),
('f34c2b2f849fc64700874f60ba32bf3a6e40a6d1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnJDczFqb0xvQ1h2bU9IN1A3ejBBakh4REw0UVI5d0pTTmtnY2RvdSI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjQ3OTE7czoxOiJjIjtpOjE0Nzk0NjQ3OTE7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479464791'),
('f35c242576b20bf38a6cad627c3412d1c0c65762', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXEyZ3RqZnBScXF4M1B0ajlLUnZ0Sm1QMGtJYlZ1aERMZzJVZXVXayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwMzU7czoxOiJjIjtpOjE0Nzk0NjUwMzU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465035'),
('f395ce7ac6ba72f081c5a76f7d1cbbac9573c4a6', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR090eDBYZHl4ZWRIQ2diU1pCeFBUSURPTFBaTmRNdGJsYndlUXpLYyI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjgxMzk7czoxOiJjIjtpOjE0Nzk0NjgxMzk7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479468139'),
('f3ac46cf246a2010f30d33a9adbdbb378aacfa14', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDBwa1BObHplWmE4M2g0M3V2Mkp0VHRtcGxockwyU2xoUXBwd3h1WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2ODEyNztzOjE6ImMiO2k6MTQ3OTQ2ODEyNztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479468127'),
('f3f6a76006d8470ff3aaac1a192b27109456d004', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2lxNEFEMXhIWGJPNmhTcmVLd1gwRVNNZnlGY2pnNElhdW5QeUxsQiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODM7czoxOiJjIjtpOjE0Nzk0NjUwODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465083'),
('f4e7516fcf1c0b8230ba400acca5e23029b71104', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUVJsRVZ4cUFSSHlZMURqc0tEV1BMbGV2TnNYMDdkQ29Da0NRQmxFWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9kcm9wZG93bmRhdGE/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU1ODU7czoxOiJjIjtpOjE0Nzk0NjU1ODU7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465585'),
('f62430dcdd0af1968229b56a5794877b3f1a70f0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWVZendJZFBXdXJhN1c4RXZVOEJzVkNjWFRGcnQ3bnl5NkEwMzNQdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjU0MjY7czoxOiJjIjtpOjE0Nzk0NjU0MjY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465426'),
('f77f6e9e4b32fa18601238d9a842ae99188e016e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidm1teXp6U2dDUVRqQTJER0s3VU04Wm1pYXdWcnJMWXM1THB2aTZLdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NDc5MDtzOjE6ImMiO2k6MTQ3OTQ2NDc5MDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479464790'),
('f8cbb9e4ce9356bc2abedccb206a5c6bfefd80b9', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUVla1Y3cDN6WnRjdkVpMjU0YjgxRzY3N1p4ajB1YnJHbUJuc2NvRCI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0Njc3NzM7czoxOiJjIjtpOjE0Nzk0Njc3NzM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479467773'),
('f95ea6b0524c9ceed46124db7badb802bb3a88b6', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3lxM2dLTjBCTFBMWGgxZkVPVndvdDl2QzJnTE16SXY2R2JuZE5UbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9hbGxfcGF0aWVudHM/dG9rZW49ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SnpkV0lpT2pJMkxDSnBjM01pT2lKb2RIUndPbHd2WEM5a1pXMXZlaTV2Ym14cGJtVmNMMlZvY2x3dmNIVmliR2xqWEM5aGNHbGNMM1Z6WlhKZmJHOW5hVzRpTENKcFlYUWlPakUwTnprME5UVTBOemtzSW1WNGNDSTZNVFEzT1RjeE5EWTNPU3dpYm1KbUlqb3hORGM1TkRVMU5EYzVMQ0pxZEdraU9pSTNNbUZqTkRWak9EUXdOakptTVRWaE56VTJNR1ZrWW1NNFpHWXpPR1UxWWlKOS5KZkRYYXFVSHZuYllEQmZ1LXlZNEdnbjNKR29nU2lfaHlQemdiRS1vVkxBIjt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0Nzk0NjUwODM7czoxOiJjIjtpOjE0Nzk0NjUwODM7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1479465083'),
('f9d5b5eafe29b01ae3f06d40089cbc73e47ef33f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUm83c3V5c09kYUttbmZleGRyUGJJNW44UkVEWlp2aUlxblA1dDkzYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY1OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9wcmVzY3JpcHRpb25fbWVkaWNpbmVzP3Rva2VuPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSklVekkxTmlKOS5leUp6ZFdJaU9qSTJMQ0pwYzNNaU9pSm9kSFJ3T2x3dlhDOWtaVzF2ZWk1dmJteHBibVZjTDJWb2Nsd3ZjSFZpYkdsalhDOWhjR2xjTDNWelpYSmZiRzluYVc0aUxDSnBZWFFpT2pFME56azBOVFUwTnprc0ltVjRjQ0k2TVRRM09UY3hORFkzT1N3aWJtSm1Jam94TkRjNU5EVTFORGM1TENKcWRHa2lPaUkzTW1Gak5EVmpPRFF3TmpKbU1UVmhOelUyTUdWa1ltTTRaR1l6T0dVMVlpSjkuSmZEWGFxVUh2bmJZREJmdS15WTRHZ24zSkdvZ1NpX2h5UHpnYkUtb1ZMQSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDc5NDY2MTAwO3M6MToiYyI7aToxNDc5NDY2MTAwO3M6MToibCI7czoxOiIwIjt9czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', '1479466100'),
('fdaa76d2e539966ab1a727814ef087cf6fdfe34f', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWdObzRHV0p1MU4xUXl3Q0MwTWVyM21HUGlmVG5EcjNYRFd4bzJKaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTM1MjtzOjE6ImMiO2k6MTQ3OTQ2NTM1MjtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465352');
INSERT INTO `sessions` (`id`, `payload`, `last_activity`) VALUES
('fef4c4bb0084cb0effd67d1dc10619d4b596e59e', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGpzQ1B4R3hqVG5GYkEydEJRNjZJY1pPMlVLZ0w3VTRGV0Z1bU83RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU3OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2dldF9tZWRpY2luZV91bml0cz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NTcwNztzOjE6ImMiO2k6MTQ3OTQ2NTcwNztzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479465707'),
('ff49f7560d55e6d3932c47a4fea148b1bfa1359a', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTjBUS0plbWpGVWk4NTJiZ2tQeU92dVp5RUJGT0dMOXpydDhJeDRSVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ4OiJodHRwOi8vZGVtb3oub25saW5lL2Voci9wdWJsaWMvYXBpL2FsbF93YXJkcz90b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakkyTENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBOemswTlRVME56a3NJbVY0Y0NJNk1UUTNPVGN4TkRZM09Td2libUptSWpveE5EYzVORFUxTkRjNUxDSnFkR2tpT2lJM01tRmpORFZqT0RRd05qSm1NVFZoTnpVMk1HVmtZbU00WkdZek9HVTFZaUo5LkpmRFhhcVVIdm5iWURCZnUteVk0R2duM0pHb2dTaV9oeVB6Z2JFLW9WTEEiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ3OTQ2NDc5MDtzOjE6ImMiO2k6MTQ3OTQ2NDc5MDtzOjE6ImwiO3M6MToiMCI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1479464790');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `status`) VALUES
(1, 1, 'Abia', 1),
(2, 1, 'Adamawa', 1),
(3, 1, 'Akwa Ibom', 1),
(4, 1, 'Anambra', 1),
(5, 1, 'Bauchi', 1),
(6, 1, 'Bayelsa', 1),
(7, 1, 'Benue', 1),
(8, 1, 'Borno', 1),
(9, 1, 'Cross River', 1),
(10, 1, 'Delta', 1),
(11, 1, 'Ebonyi', 1),
(12, 1, 'Edo', 1),
(13, 1, 'Ekiti', 1),
(14, 1, 'Enugu', 1),
(15, 1, 'FCT|1', 1),
(16, 1, 'Gombe', 1),
(17, 1, 'Imo', 1),
(18, 1, 'Jigawa', 1),
(19, 1, 'Kaduna', 1),
(20, 1, 'Kano', 1),
(21, 1, 'Katsina', 1),
(22, 1, 'Kebbi', 1),
(23, 1, 'Kogi', 1),
(24, 1, 'Kwara', 1),
(25, 1, 'Lagos', 1),
(26, 1, 'Nasarawa', 1),
(27, 1, 'Niger', 1),
(28, 1, 'Ogun', 1),
(29, 1, 'Ondo', 1),
(30, 1, 'Osun', 1),
(31, 1, 'Oyo', 1),
(32, 1, 'Plateau', 1),
(33, 1, 'Rivers', 1),
(34, 1, 'Sokoto', 1),
(35, 1, 'Taraba', 1),
(36, 1, 'Yobe', 1),
(37, 1, 'Zamfara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(50) NOT NULL,
  `product_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `dept_id` int(50) DEFAULT NULL,
  `supplier_id` int(50) DEFAULT NULL,
  `manufacturer_id` int(50) DEFAULT NULL,
  `pharmacy_id` int(50) NOT NULL,
  `received_date` date NOT NULL,
  `batch_no` bigint(20) NOT NULL,
  `ref_no` bigint(20) NOT NULL,
  `expiry` date NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `order_quantity` int(50) DEFAULT NULL,
  `cost_per_item` bigint(20) NOT NULL,
  `pack` varchar(50) NOT NULL,
  `stock_status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `product_id`, `dept_id`, `supplier_id`, `manufacturer_id`, `pharmacy_id`, `received_date`, `batch_no`, `ref_no`, `expiry`, `quantity`, `order_quantity`, `cost_per_item`, `pack`, `stock_status`, `created_at`, `updated_at`, `status`) VALUES
(1, 000001, 0, 0, 2, 1, '2016-10-02', 0, 23521, '2016-10-02', 500, 5000, 3, 'pack', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 000001, 1, 0, 2, 3, '2016-10-02', 235, 523, '2016-10-02', 500, 0, 250, 'Pack 3', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 000002, 0, 0, 3, 4, '2016-09-26', 122, 54211, '2016-09-27', 500, 100000000, 52, 'pack', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 000003, 0, 0, 2, 1, '2016-10-04', 0, 2122, '2016-10-02', 200, 1000, 25, 'pack', 'active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 000004, 1, 1, 1, 1, '2016-11-14', 20210, 1089898, '2016-11-30', 15, 100, 25, 'new', 'active', '2016-11-14 00:00:00', '2016-11-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `strength`
--

CREATE TABLE `strength` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strength`
--

INSERT INTO `strength` (`id`, `name`, `status`) VALUES
(1, 'cap(s)', 1),
(2, 'day(s)', 1),
(3, 'dose(s)', 1),
(4, 'drop(s)', 1),
(5, 'each', 1),
(6, 'g/kg', 1),
(7, 'gram(s)', 1),
(8, 'gram/m2', 1),
(9, 'gum', 1),
(10, 'hour(s)', 1),
(11, 'inch(es)', 1),
(12, 'inhalation', 1),
(13, 'international unit(s)', 1),
(14, 'international units/kg', 1),
(15, 'international units/m2', 1),
(16, 'kit', 1),
(17, 'liter(s)', 1),
(18, 'lozenge', 1),
(19, 'mcg/hr', 1),
(20, 'mcg/kg', 1),
(21, 'mcg/m2', 1),
(22, 'megabecquerel(s)', 1),
(23, 'mEq/kg', 1),
(24, 'mg', 1),
(25, 'mg/24h', 1),
(26, 'mg/hr', 1),
(27, 'mg/kg', 1),
(28, 'mg/ml', 1),
(29, 'mg/kg/day', 1),
(30, 'mg/m2', 1),
(31, 'mg/m2/day', 1),
(32, 'microcurie', 1),
(33, 'microgram(s)', 1),
(34, 'millicurie', 1),
(35, 'milliequivalent(s)', 1),
(36, 'milligram(s)', 1),
(37, 'milliliter(s)', 1),
(38, 'millimole(s)', 1),
(39, 'million unit(s)', 1),
(40, 'minute(s)', 1),
(41, 'mL/kg', 1),
(42, 'mL/m2', 1),
(43, 'mmol/kg', 1),
(44, 'month(s)', 1),
(45, 'nanogram(s)', 1),
(46, 'ng/kg', 1),
(47, 'ounce(s)', 1),
(48, 'packet(s)', 1),
(49, 'parts per million', 1),
(50, 'patch', 1),
(51, 'protein nitrogen unit', 1),
(52, 'puff(s)', 1),
(53, 'pump(s)', 1),
(54, 'scoop(s)', 1),
(55, 'spray(s)', 1),
(56, 'square centimeter', 1),
(57, 'suppository(ies)', 1),
(58, 'tab(s)', 1),
(59, 'unit(s)', 1),
(60, 'units/kg&quot', 1),
(61, 'units/kg/day', 1),
(62, 'units/m2', 1),
(63, 'week(s)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address_1` varchar(50) NOT NULL,
  `address_2` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `work_phone` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `post_code` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact_person`, `city`, `state`, `country`, `address_1`, `address_2`, `email`, `work_phone`, `mobile`, `website`, `post_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'testing', 'testing', '1', '1', '1', 'testing', 'testing', 'testing@testing.com', 'testing', 'testing', 'testing', 'testing', 0, '2016-10-11 14:14:25', '0000-00-00 00:00:00'),
(2, 'a', 'a', '1', '1', '1', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 0, '2016-10-13 10:34:38', '0000-00-00 00:00:00'),
(3, 'PALMWORLD NIG L', 'Nathan', 'Select City', 'Select State', '2', 'Office # 456', '10th street', 'nathan@palmworld.com', '566555556', '45451664446', 'www.palmworld.com', '5222', 1, '2016-10-13 11:06:39', '0000-00-00 00:00:00'),
(4, 'FMJ', 'TOLU', 'lagos mainland', '25', '97', 'surulere', '-', 'T@yahoo.com', '0806578906', '-', '-', '10001', 1, '2016-10-25 13:00:05', '0000-00-00 00:00:00'),
(5, 'globals', 'TOLU', 'lagos mainland', '25', '97', 'surulere', '-', 'T@yahoo.com', '0806578906', '-', '-', '10001', 1, '2016-10-25 13:00:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `name`, `rate`, `created_at`, `updated_at`, `status`) VALUES
(1, 'GST', '90%', '2016-08-05 14:32:42', '2016-10-17 12:29:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `template` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `category_id`, `description`, `template`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Pediatrics', 4, 'Diagnosis for children', '{"fields":[{"type":"text","name":"ChiefComplain","displayName":"Chief complain","validation":{"messages":{}},"$_displayProperties":false},{"type":"selectlist","name":"Diagnosis","displayName":"Diagnosis","options":[{"value":"1","text":"Option 1"},{"value":"2","text":"Option 2"},{"value":"3","text":"Option 3"}],"value":"1","$_isDragging":false,"$_displayProperties":false},{"type":"number","name":"field6878","validation":{"maxlength":15,"messages":{}},"displayName":"Number"},{"type":"email","name":"field6875","displayName":"Email","validation":{"messages":{}},"$_isDragging":false},{"type":"textarea","name":"field8318","displayName":"Textarea","validation":{"messages":{}}}]}', '2016-10-03 13:59:20', '2016-11-18 09:49:09', 0),
(2, 'Blood test report', 5, 'complete blood culture', '{"fields":[{"type":"text","name":"RBC","displayName":"RBC count","validation":{"messages":{}},"$_displayProperties":true},{"type":"textarea","name":"RBCnotes","displayName":"notes","validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-07 11:39:02', '0000-00-00 00:00:00', 1),
(3, 'Dermatology Report', 6, 'Skin treatment', '{"fields":[{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"Complain","displayName":"Chief Complaint","validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"field8306","displayName":"Textarea","validation":{"messages":{}}},{"type":"number","name":"field8308","validation":{"maxlength":15,"messages":{}},"displayName":"Number"},{"type":"email","name":"field8310","displayName":"Email","validation":{"messages":{}}},{"type":"text","name":"field8312","displayName":"Textbox","validation":{"messages":{}}}]}', '2016-10-07 11:46:17', '2016-10-10 13:28:23', 0),
(4, 'RBC & WBC', 5, 'counts', '{"fields":[{"type":"text","name":"Count","displayName":"Count","validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-07 11:47:04', '0000-00-00 00:00:00', 1),
(5, 'Training Form', 4, 'Sample form for training', '{"fields":[{"type":"textarea","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true},{"type":"textarea","name":"rttrr","displayName":"Review of System","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Review of Systems"},{"type":"textarea","name":"field2111","displayName":"Notes","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-08 12:55:19', '2016-10-10 13:28:26', 0),
(6, 'Training Form', 4, 'Sample form for training', '{"fields":[{"type":"textarea","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true},{"type":"textarea","name":"rttrr","displayName":"Review of System","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Review of Systems"},{"type":"textarea","name":"field2111","displayName":"Notes","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-08 12:55:20', '2016-10-08 17:20:41', 0),
(7, 'Training Form', 4, 'Sample form for training', '{"fields":[{"type":"textarea","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true},{"type":"textarea","name":"rttrr","displayName":"Review of System","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Review of Systems"},{"type":"textarea","name":"field2111","displayName":"Notes","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-08 12:55:21', '2016-10-08 17:20:38', 0),
(8, 'Training Form', 4, 'Sample form for training', '{"fields":[{"type":"textarea","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true},{"type":"textarea","name":"rttrr","displayName":"Review of System","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Review of Systems"},{"type":"textarea","name":"field2111","displayName":"Notes","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-08 12:55:26', '2016-10-08 17:20:34', 0),
(9, 'Training Form', 4, 'Sample form for training', '{"fields":[{"type":"textarea","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true},{"type":"textarea","name":"rttrr","displayName":"Review of System","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Review of Systems"},{"type":"textarea","name":"field2111","displayName":"Notes","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-08 12:55:29', '2016-10-08 17:20:27', 0),
(10, 'Training Form', 4, 'Sample form for training', '{"fields":[{"type":"textarea","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true},{"type":"textarea","name":"rttrr","displayName":"Review of System","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Review of Systems"},{"type":"textarea","name":"field2111","displayName":"Notes","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-08 12:55:37', '2016-10-08 17:20:30', 0),
(11, 'Malaria', 4, 'for all malaria', '{"fields":[{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":false},{"type":"email","name":"field6075","displayName":"Email","validation":{"messages":{}}},{"type":"number","name":"field6078","validation":{"maxlength":15,"messages":{}},"displayName":"Number"},{"type":"textarea","name":"field6081","displayName":"Textarea","validation":{"messages":{}}}]}', '2016-10-10 15:03:54', '2016-11-17 14:40:45', 0),
(12, 'Fever', 6, 'For fever', '{"fields":[{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":false,"placeholder":"Enter diagnosis"},{"type":"text","name":"Complaint","displayName":"Chief Complaint","validation":{"messages":{}},"$_isDragging":false,"$_displayProperties":false,"placeholder":"Enter complain"},{"type":"email","name":"field6075","displayName":"Email","validation":{"messages":{},"pattern":"^([a-z0-9_\\\\.-]+)@([\\\\da-z\\\\.-]+)\\\\.([a-z\\\\.]{2,6})$"},"$_displayProperties":false,"placeholder":"Enter email","$_redraw":false},{"type":"number","name":"field6078","validation":{"maxlength":15,"messages":{}},"displayName":"Number","$_displayProperties":false,"placeholder":"Enter number"},{"type":"textarea","name":"field6081","displayName":"Details","validation":{"messages":{}},"$_displayProperties":false,"placeholder":""}]}', '2016-10-10 15:04:28', '2016-11-17 14:40:40', 0),
(13, 'General Out-patient Treatment', 4, 'Documentation for recording General Out-Patient Treatment', '{"fields":[{"type":"textarea","name":"field8238","displayName":"Provisional Diagnosis","validation":{"messages":{}},"$_displayProperties":false,"$_isDragging":false},{"type":"textarea","name":"field3697","displayName":"Complaints","validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"field8240","displayName":"Examination","validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"field3700","displayName":"History of Present Complaints","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"field3706","displayName":"Drug History","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"field3712","displayName":"Past Medical History","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"field3709","displayName":"Family History","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"field3703","displayName":"Social History","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true,"$_isDragging":false}]}', '2016-10-11 00:35:08', '2016-11-17 12:01:29', 1),
(14, 'Ilorin Test Template', 5, 'for collecting Lab Test result', '{"fields":[{"type":"selectlist","name":"field1518","displayName":"Sample Type","options":[{"value":"1","text":"Blood"},{"value":"2","text":"Urine"},{"value":"3","text":"Stoool"}],"value":"1","$_displayProperties":true},{"type":"text","name":"field1510","displayName":"PH Value","validation":{"messages":{}},"$_displayProperties":true},{"type":"text","name":"field1513","displayName":"Acidity","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-20 07:28:00', '0000-00-00 00:00:00', 1),
(15, 'Blood Group', 5, 'Blood Group', '{"fields":[{"type":"text","displayName":"Blood Group","validation":{"messages":{}},"$_displayProperties":true,"value":"0","tooltip":"anti sera"}]}', '2016-10-20 16:19:56', '0000-00-00 00:00:00', 1),
(16, 'Blood Group', 5, 'Blood Group', '{"fields":[{"type":"text","displayName":"Blood Group","validation":{"messages":{}},"$_displayProperties":true,"value":"0","tooltip":"anti sera"}]}', '2016-10-20 16:19:56', '0000-00-00 00:00:00', 1),
(17, 'Heamatology Request Form', 5, 'DRAFT', '{"fields":[{"type":"textarea","name":"DIFFERENTIAL","displayName":"WHITE BLOOD CELL DIFFERENTIAL","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"","value":"BLAST -\\nPROMYELOCYTE -\\nMYELOCYTE -\\nMETAMYELOCYTE -\\nNUET(50-75%) -\\nLYMPH(25-40%) -\\nMONO(2-10%) -\\nEOSIN(1-6%) -\\nBASO(0-1%) -"},{"type":"textarea","name":"RCI","displayName":"RED BLOOD CELL INDICES","validation":{"messages":{}},"$_displayProperties":true,"placeholder":"","value":"POLYCHROMASIA-\\nANISOCYTOSIS-\\nPOIKILOCYTOSIS-\\nMICROCYTOSIS-\\nMACROCYTOSIS-\\nHYPOCHROMASIA-\\nTARGET CELLS-\\nSICKLE CELLS-\\nNUCLEATED RED CELLS-\\nPLATELETS(On Film)"},{"type":"text","name":"RETIC","displayName":"RETIC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"RETICULOCYTE","value":"0.5-1.5%"},{"type":"text","name":"HB","displayName":"HB","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"HAEMOGLOBIN","value":"12.5-18.5G/DL"},{"type":"text","name":"PLT","displayName":"PLT","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"PLATELETS","value":"150000-400000M/L"},{"type":"text","name":"RBC","displayName":"RBC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"RED BLOOD CELL COUNT","value":"5-7m"},{"type":"text","name":"WBC","displayName":"WBC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"WHITE BLOOD CELL COUNT","value":"3-10G/L"},{"type":"text","name":"PCV","displayName":"PCV","validation":{"messages":{}},"$_displayProperties":true,"tooltip":"CAPILLARY TUBE","value":"0-100%"}]}', '2016-10-20 16:52:12', '0000-00-00 00:00:00', 1),
(18, 'Heamatology Request Form', 5, 'DRAFT', '{"fields":[{"type":"textarea","name":"DIFFERENTIAL","displayName":"WHITE BLOOD CELL DIFFERENTIAL","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"","value":"BLAST -\\nPROMYELOCYTE -\\nMYELOCYTE -\\nMETAMYELOCYTE -\\nNUET(50-75%) -\\nLYMPH(25-40%) -\\nMONO(2-10%) -\\nEOSIN(1-6%) -\\nBASO(0-1%) -"},{"type":"textarea","name":"RCI","displayName":"RED BLOOD CELL INDICES","validation":{"messages":{}},"$_displayProperties":true,"placeholder":"","value":"POLYCHROMASIA-\\nANISOCYTOSIS-\\nPOIKILOCYTOSIS-\\nMICROCYTOSIS-\\nMACROCYTOSIS-\\nHYPOCHROMASIA-\\nTARGET CELLS-\\nSICKLE CELLS-\\nNUCLEATED RED CELLS-\\nPLATELETS(On Film)"},{"type":"text","name":"RETIC","displayName":"RETIC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"RETICULOCYTE","value":"0.5-1.5%"},{"type":"text","name":"HB","displayName":"HB","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"HAEMOGLOBIN","value":"12.5-18.5G/DL"},{"type":"text","name":"PLT","displayName":"PLT","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"PLATELETS","value":"150000-400000M/L"},{"type":"text","name":"RBC","displayName":"RBC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"RED BLOOD CELL COUNT","value":"5-7m"},{"type":"text","name":"WBC","displayName":"WBC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"WHITE BLOOD CELL COUNT","value":"3-10G/L"},{"type":"text","name":"PCV","displayName":"PCV","validation":{"messages":{}},"$_displayProperties":true,"tooltip":"CAPILLARY TUBE","value":"0-100%"}]}', '2016-10-20 16:52:12', '0000-00-00 00:00:00', 1),
(19, 'Heamatology Request Form', 5, 'DRAFT', '{"fields":[{"type":"textarea","name":"DIFFERENTIAL","displayName":"WHITE BLOOD CELL DIFFERENTIAL","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"","value":"BLAST -\\nPROMYELOCYTE -\\nMYELOCYTE -\\nMETAMYELOCYTE -\\nNUET(50-75%) -\\nLYMPH(25-40%) -\\nMONO(2-10%) -\\nEOSIN(1-6%) -\\nBASO(0-1%) -"},{"type":"textarea","name":"RCI","displayName":"RED BLOOD CELL INDICES","validation":{"messages":{}},"$_displayProperties":true,"placeholder":"","value":"POLYCHROMASIA-\\nANISOCYTOSIS-\\nPOIKILOCYTOSIS-\\nMICROCYTOSIS-\\nMACROCYTOSIS-\\nHYPOCHROMASIA-\\nTARGET CELLS-\\nSICKLE CELLS-\\nNUCLEATED RED CELLS-\\nPLATELETS(On Film)"},{"type":"text","name":"RETIC","displayName":"RETIC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"RETICULOCYTE","value":"0.5-1.5%"},{"type":"text","name":"HB","displayName":"HB","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"HAEMOGLOBIN","value":"12.5-18.5G/DL"},{"type":"text","name":"PLT","displayName":"PLT","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"PLATELETS","value":"150000-400000M/L"},{"type":"text","name":"RBC","displayName":"RBC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"RED BLOOD CELL COUNT","value":"5-7m"},{"type":"text","name":"WBC","displayName":"WBC","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"placeholder":"WHITE BLOOD CELL COUNT","value":"3-10G/L"},{"type":"text","name":"PCV","displayName":"PCV","validation":{"messages":{}},"$_displayProperties":true,"tooltip":"CAPILLARY TUBE","value":"0-100%"}]}', '2016-10-20 16:52:13', '0000-00-00 00:00:00', 1),
(20, 'chemical Pathology form', 5, 'draft', '{"fields":[{"type":"text","name":"Calcium","displayName":"Calcium","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"0.25-2.45MMol/L"},{"type":"text","name":"Urate","displayName":"Urate","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"0.2-0-45MMol/L"},{"type":"text","name":"Orseatinine","displayName":"Orseatinine","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"53-106(MMol/L)"},{"type":"text","name":"Urea","displayName":"Urea","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"2.5-6.5"},{"type":"text","name":"HcO3","displayName":"HcO3","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"21-28"},{"type":"text","name":"Potassium","displayName":"Potassium","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"2.9-6.0"},{"type":"text","name":"Sodium","displayName":"Sodium","validation":{"messages":{}},"$_displayProperties":true,"value":"1.25-1.45MMol/L"}]}', '2016-10-20 16:53:15', '0000-00-00 00:00:00', 1),
(21, 'chemical Pathology form', 5, 'draft', '{"fields":[{"type":"text","name":"Calcium","displayName":"Calcium","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"0.25-2.45MMol/L"},{"type":"text","name":"Urate","displayName":"Urate","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"0.2-0-45MMol/L"},{"type":"text","name":"Orseatinine","displayName":"Orseatinine","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"53-106(MMol/L)"},{"type":"text","name":"Urea","displayName":"Urea","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"2.5-6.5"},{"type":"text","name":"HcO3","displayName":"HcO3","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"21-28"},{"type":"text","name":"Potassium","displayName":"Potassium","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true,"value":"2.9-6.0"},{"type":"text","name":"Sodium","displayName":"Sodium","validation":{"messages":{}},"$_displayProperties":true,"value":"1.25-1.45MMol/L"}]}', '2016-10-20 16:53:16', '0000-00-00 00:00:00', 1),
(22, 'Diagnosis report', 4, 'none', '{"fields":[{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":false,"placeholder":"Enter diagnosis"},{"type":"textarea","name":"field7065","displayName":"Details","validation":{"messages":{}},"$_displayProperties":false,"placeholder":"Enter details"}]}', '2016-10-21 08:58:00', '2016-11-17 14:40:22', 1),
(23, 'Report #1', 5, 'none', '{"fields":[{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":false,"placeholder":"Enter diagnosis"},{"type":"textarea","name":"field7065","displayName":"Details","validation":{"messages":{}},"$_displayProperties":false,"placeholder":"Enter details"}]}', '2016-10-21 09:04:03', '0000-00-00 00:00:00', 1),
(24, 'Template 1', 4, 'none', '{"fields":[{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":false,"placeholder":"Enter diagnosis"},{"type":"textarea","name":"Details","displayName":"Details","validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Enter details"}]}', '2016-10-21 11:18:52', '2016-11-17 14:39:58', 0),
(25, 'Template #1', 4, 'none', '{"fields":[{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":true,"placeholder":"Enter Diagnosis"}]}', '2016-10-21 11:40:23', '2016-11-17 14:39:43', 0),
(26, 'Ultralsound / Scan Form', 8, 'From is used to collect information of the patients scanning result', '{"fields":[{"type":"text","name":"Time_of_scan","displayName":"Time of Scan","validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"Detail_report","displayName":"Detailed Report","validation":{"messages":{}},"$_displayProperties":false},{"type":"number","name":"Weight","validation":{"maxlength":15,"messages":{}},"displayName":"Patient Weight (kg)","$_displayProperties":false}]}', '2016-10-22 10:54:44', '0000-00-00 00:00:00', 1),
(27, 'Surgical Report Form', 4, 'Surgical Progress and details', '{"fields":[{"type":"text","name":"bodysection","displayName":"Body Section for Surgery","validation":{"messages":{}},"$_displayProperties":false},{"type":"textarea","name":"surgeryreport","displayName":"Detail Surgical Report","validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"Surgeonsname","displayName":"Surgeons Name","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false}]}', '2016-10-22 16:03:22', '0000-00-00 00:00:00', 1),
(28, 'Full blood culure', 5, 'All blood requirements', '{"fields":[{"type":"text","name":"field2111","displayName":"HB","validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field2114","displayName":"Glucose","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false,"placeholder":""},{"type":"textarea","name":"field2117","displayName":"Details","validation":{"messages":{}},"$_displayProperties":false,"placeholder":""}]}', '2016-10-24 15:51:23', '0000-00-00 00:00:00', 1),
(29, 'Pediatric diagnosis', 9, 'none', '{"fields":[{"type":"text","name":"field2111","displayName":"HB","validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field2114","displayName":"Glucose","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false,"placeholder":""},{"type":"textarea","name":"field2117","displayName":"Details","validation":{"messages":{}},"$_displayProperties":false,"placeholder":""}]}', '2016-10-24 15:52:15', '0000-00-00 00:00:00', 1),
(30, 'testing', 5, 'testing', '{"fields":[{"type":"text","name":"field3668","displayName":"Textbox","validation":{"messages":{}}}]}', '2016-10-24 15:54:51', '0000-00-00 00:00:00', 1),
(31, 'testing', 5, 'testing', '{"fields":[{"type":"text","name":"field2421","displayName":"Textbox","validation":{"messages":{}}}]}', '2016-10-24 15:55:30', '0000-00-00 00:00:00', 1),
(32, 'asd', 5, 'asd', '{"fields":[{"type":"text","name":"field2421","displayName":"Textbox","validation":{"messages":{}}}]}', '2016-10-24 15:58:02', '0000-00-00 00:00:00', 1),
(33, 'Urine Analysis', 10, 'analyzing  urine', '{"fields":[{"type":"text","name":"colour","displayName":"Colour","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"number","name":"glucose_level","validation":{"maxlength":15,"messages":{}},"displayName":"Glucose Level","$_isDragging":false,"$_displayProperties":false},{"type":"number","name":"glucose_value","validation":{"maxlength":15,"messages":{}},"displayName":"glucose-value","$_isDragging":false,"$_displayProperties":false},{"type":"number","name":"ketones_value","validation":{"maxlength":15,"messages":{}},"displayName":"ketonesr","$_isDragging":false,"$_displayProperties":false},{"type":"number","name":"bilirubin_value","validation":{"maxlength":15,"messages":{}},"displayName":"bilirubin","$_isDragging":false,"$_displayProperties":false},{"type":"selectlist","name":"ph","displayName":"PHVALUE","options":[{"value":"1","text":"5"},{"value":"2","text":"6"},{"value":"3","text":"7"},{"value":"Option 1","text":"8"},{"value":"Option 2","text":"9"},{"value":"Option 3","text":"10"}],"value":"1","$_displayProperties":true}]}', '2016-10-25 15:59:30', '0000-00-00 00:00:00', 1),
(34, 'Serology Test Result Template', 6, 'This template is for submitting Serology Test Result', '{"fields":[{"type":"text","name":"field4830","displayName":"VDRL","validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4860","displayName":"H Pylori","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4857","displayName":"Rheumatoid Factor","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4833","displayName":"Hbsag","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4854","displayName":"HCV","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4851","displayName":"HAV","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4848","displayName":"AFB Serology","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4845","displayName":"Mantoux","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4842","displayName":"Chlamydia","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4836","displayName":"Other","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4839","displayName":"HBV Profile Result - HBSAG","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4863","displayName":"HBV Profile Result - HBSAB","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4866","displayName":"HBV Profile Result - HBEAG","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4869","displayName":"HBV Profile Result - HBEAB","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"field4872","displayName":"HBV Profile Result - HBCAB","$_isDragging":false,"validation":{"messages":{}},"$_displayProperties":true}]}', '2016-10-27 08:09:02', '0000-00-00 00:00:00', 1),
(35, '', 0, '', '{"fields":[]}', '2016-11-08 14:39:27', '2016-11-17 14:40:09', 0),
(36, 'Diagnosis Test', 4, 'Test', '{"fields":[{"type":"text","name":"field8960","displayName":"Patient Name","validation":{"messages":{}},"$_displayProperties":false},{"type":"email","name":"field8963","displayName":"Email","validation":{"messages":{}}},{"type":"number","name":"field8966","validation":{"maxlength":15,"messages":{}},"displayName":"Number"},{"type":"text","name":"Diagnosis","displayName":"Diagnosis","validation":{"messages":{}},"$_displayProperties":false},{"type":"text","name":"Complaint","displayName":"Chief Complaint","validation":{"messages":{}},"$_displayProperties":false}]}', '2016-11-16 08:45:54', '2016-11-17 14:39:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `template_categories`
--

CREATE TABLE `template_categories` (
  `id` int(11) NOT NULL,
  `template_type` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_categories`
--

INSERT INTO `template_categories` (`id`, `template_type`, `name`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'asdaaaa', 'asd', '2016-10-03 12:09:38', '2016-10-03 12:09:48', 0),
(2, 2, 'assaassadfdsadfas', 'sdsddsf', '2016-10-03 12:14:15', '2016-10-03 12:14:23', 0),
(3, 1, 'sadfsadsdasaddas', 'sad', '2016-10-03 12:14:49', '2016-10-03 12:15:00', 0),
(4, 1, 'Clinical Documentation', 'Reporting', '2016-10-03 13:57:30', '2016-10-04 09:57:18', 1),
(5, 2, 'Blood tests', 'All blood tests', '2016-10-03 14:25:25', '0000-00-00 00:00:00', 1),
(6, 1, 'Laboratory Templates', 'For reporting lab results', '2016-10-04 09:57:54', '2016-10-07 09:14:25', 1),
(7, 1, 'Laboratory Templates', 'For reporting lab results', '2016-10-04 09:57:54', '2016-10-04 09:58:04', 0),
(8, 1, 'Radiology Template', 'Radiology reporting template', '2016-10-04 09:58:27', '0000-00-00 00:00:00', 1),
(9, 2, 'Pediatrics', 'None', '2016-10-21 09:03:45', '2016-10-24 15:50:00', 1),
(10, 2, 'Chemical Pathology', 'carry test and analysis of body fluids e.g. fasting blood sugar', '2016-10-25 15:27:10', '0000-00-00 00:00:00', 1),
(11, 2, 'Chemical Pathology', 'Carrying out test and analysis of body fluids e.g Fasting blood sugar', '2016-10-25 15:29:46', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `template_types`
--

CREATE TABLE `template_types` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_types`
--

INSERT INTO `template_types` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Clinical Notes', 'This is the template type for Clinical Notes', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Lab Orders', 'This is the template type for Lab Orders ! ', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `telephone_number` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_status` enum('active','inactive','block','deleted') DEFAULT 'active',
  `role_id` int(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `first_name`, `last_name`, `telephone_number`, `password`, `user_status`, `role_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'owais@hotmail.com', 'owais', 'owais', 'owais', '123', '81dc9bdb52d04dc20036dbd8313ed055', 'active', 3, '2016-05-12 14:47:37', '2016-10-27 17:25:09', 1),
(20, 'muzammil@aplos.com', 'Muzammil Ahmed', '', '', '', '202cb962ac59075b964b07152d234b70', 'active', 1, '2016-05-27 06:13:01', '2016-10-21 08:38:51', 0),
(21, 'demo@aplos.com', 'Demo', 'Demo', 'Demo', '123', '62cc2d8b4bf2d8728120d052163a77df', 'active', 1, '2016-09-30 09:23:22', '2016-10-27 16:32:26', 1),
(22, 'owais@gmail.com', 'owais', '', '', '', '81dc9bdb52d04dc20036dbd8313ed055', 'active', 1, '2016-09-30 09:11:14', '2016-10-21 08:39:55', 0),
(23, 'admin@openng.com', 'admin', 'admin', 'admin', '123', '202cb962ac59075b964b07152d234b70', 'active', 1, '0000-00-00 00:00:00', '2016-10-27 16:32:35', 1),
(24, 'tesitng', 'testing1111', 'tesitng', 'tesitng', '11', '77eae7aaebf39fd0c8bef84e58b37cfd', 'active', 1, '2016-10-21 08:36:01', '2016-10-21 08:38:44', 0),
(25, 'allen@ehr.com', 'FrontDesk', 'Allen', 'Grant', '54646446', '77eae7aaebf39fd0c8bef84e58b37cfd', 'active', 1, '2016-10-21 08:40:24', '0000-00-00 00:00:00', 1),
(26, 'admin2@ehr.com', 'ehr admin', 'second ', 'admin', '02118797121', '77eae7aaebf39fd0c8bef84e58b37cfd', 'active', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(27, 'faryalanwar@aplosinnovations.com', 'FaryalAnwar', 'Faryal', 'Anwar', '3457776', '77eae7aaebf39fd0c8bef84e58b37cfd', 'active', 5, '2016-11-03 10:16:53', '0000-00-00 00:00:00', 1),
(28, 'tunde@openng.com', 'tunde@openng.com', 'Tunde', 'Ibikunle', '08036297210', '77eae7aaebf39fd0c8bef84e58b37cfd', 'active', 6, '2016-11-03 17:40:43', '0000-00-00 00:00:00', 1),
(29, 'bunmi@openng.com', 'abunmi', 'bunmi', 'aregbe', '08399938933', '77eae7aaebf39fd0c8bef84e58b37cfd', 'active', 6, '2016-11-05 07:31:33', '0000-00-00 00:00:00', 1),
(30, 'demo@openng.com', 'demo', 'demo', 'demo', '922992992929', '77eae7aaebf39fd0c8bef84e58b37cfd', 'active', 6, '2016-11-05 08:35:31', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `followup_parent_id` int(11) NOT NULL,
  `department_id` varchar(45) DEFAULT NULL,
  `encounter_class` varchar(45) DEFAULT NULL,
  `encounter_type` varchar(45) DEFAULT NULL,
  `whom_to_see` int(45) NOT NULL,
  `decscribe_whom_to_see` varchar(30) DEFAULT NULL,
  `reason_of_visit` text NOT NULL,
  `visit_status` enum('queue','deleted','checkout','triage','physician') NOT NULL DEFAULT 'queue',
  `room` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `patient_id`, `followup_parent_id`, `department_id`, `encounter_class`, `encounter_type`, `whom_to_see`, `decscribe_whom_to_see`, `reason_of_visit`, `visit_status`, `room`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 0, '2', '', 'Surgical procedure', 2, NULL, 'NA', 'checkout', 0, '2016-10-17 17:45:23', '2016-11-10 16:23:29', 0),
(2, 2, 0, '2', '', 'Followup visit', 2, NULL, 'NA', 'checkout', 0, '2016-10-18 11:20:18', '2016-11-04 18:42:11', 0),
(3, 3, 0, '2', '', 'Surgical procedure', 2, NULL, 'NA', 'physician', 0, '2016-10-18 18:02:41', '2016-11-16 09:15:26', 0),
(4, 4, 0, '2', '', 'Followup visit', 2, NULL, 'NA', 'checkout', 0, '2016-10-20 06:58:39', '2016-11-17 16:08:57', 0),
(5, 2, 0, '2', '', 'Surgical procedure', 2, NULL, 'none', 'checkout', 0, '2016-10-20 07:18:36', '2016-11-04 18:42:11', 0),
(6, 7, 0, '3', '', 'Consultation', 1, NULL, 'NA', 'physician', 0, '2016-10-20 07:52:26', '2016-10-21 13:15:20', 0),
(7, 4, 0, '6', '', 'Followup visit', 3, 'none', 'none', 'queue', 0, '2016-10-21 09:18:35', '2016-11-12 19:16:52', 0),
(8, 4, 0, '2', '', 'Rehabilitation', 2, NULL, 'regular visit', 'physician', 0, '2016-10-21 12:28:06', '2016-11-12 19:16:52', 0),
(9, 7, 0, '2', '', 'Surgical procedure', 1, NULL, 'none', 'checkout', 0, '2016-10-21 13:15:20', '2016-10-21 13:32:35', 1),
(10, 1, 0, '2', '', 'Followup visit', 2, NULL, 'consultation', 'checkout', 0, '2016-10-21 14:06:44', '2016-11-07 15:48:15', 0),
(11, 2, 0, '8', '', 'Consultation', 3, NULL, 'Complains on headache and cold', 'checkout', 0, '2016-10-21 14:34:46', '2016-11-04 18:42:11', 0),
(12, 8, 0, '8', '', 'Consultation', 3, NULL, 'headaches and cold', 'checkout', 0, '2016-10-21 14:39:42', '2016-11-05 06:37:12', 1),
(13, 5, 0, '5', '', 'Followup visit', 2, NULL, 'Checkup after tooth extraction', 'checkout', 0, '2016-10-21 14:40:50', '2016-11-05 06:37:05', 1),
(14, 13, 0, '8', '', 'Consultation', 1, NULL, 'headache and fever', 'checkout', 0, '2016-10-22 12:33:17', '2016-10-22 13:16:34', 1),
(15, 17, 0, '2', '', 'Consultation', 1, NULL, 'SYSTEMIC HYPERTENSION', 'checkout', 0, '2016-10-22 12:38:16', '2016-11-06 04:48:58', 0),
(16, 12, 0, '1', '', 'Consultation', 3, NULL, 'eye discharge', 'checkout', 0, '2016-10-22 12:43:31', '2016-11-05 06:36:59', 1),
(17, 11, 0, '8', '', 'Consultation', 2, NULL, 'constant headache and cold', 'checkout', 0, '2016-10-22 15:37:11', '2016-11-18 08:24:19', 0),
(18, 15, 0, '2', '', 'Consultation', 2, NULL, '', 'checkout', 0, '2016-10-24 12:27:43', '2016-10-24 14:30:35', 1),
(19, 4, 0, '8', 'Outpatient', 'Followup visit', 2, NULL, '', 'physician', 0, '2016-10-24 21:01:24', '2016-11-12 19:16:52', 0),
(20, 3, 0, '6', '', 'Followup visit', 2, NULL, 'NA', 'checkout', 0, '2016-10-25 13:44:22', '2016-11-16 09:15:26', 0),
(21, 19, 0, '8', '', 'Consultation', 3, NULL, 'stomach pain', 'checkout', 0, '2016-10-25 17:42:38', '2016-10-26 11:53:33', 0),
(22, 27, 0, '1', '', 'Followup visit', 1, NULL, 'to complain of drug used', 'checkout', 0, '2016-10-26 11:52:12', '2016-11-05 06:36:53', 1),
(23, 19, 0, '1', '', 'Followup visit', 2, NULL, 'for treatment', 'checkout', 0, '2016-10-26 11:53:33', '2016-11-05 06:36:06', 1),
(24, 42, 0, '8', '', 'Consultation', 3, NULL, 'headache', 'checkout', 0, '2016-10-26 12:01:40', '2016-11-05 06:35:58', 1),
(25, 36, 0, '1', '', 'Followup visit', 1, NULL, 'ITCHING OF LIFT EYE', 'checkout', 0, '2016-10-26 12:01:56', '2016-11-03 20:03:33', 1),
(26, 30, 0, '8', '', 'Consultation', 2, NULL, 'malaria', 'checkout', 0, '2016-10-26 12:01:57', '2016-10-27 07:54:31', 1),
(27, 35, 0, '8', '', 'Consultation', 1, NULL, 'Follow up', 'checkout', 0, '2016-10-26 12:02:44', '2016-11-05 06:36:40', 1),
(28, 28, 0, '9', '', 'Followup visit', 3, NULL, 'HTN AND DM', 'queue', 0, '2016-10-26 12:02:57', '2016-10-26 12:38:05', 0),
(29, 40, 0, '5', '', 'Consultation', 2, NULL, 'TOOTH EACH', 'checkout', 0, '2016-10-26 12:04:50', '2016-11-05 06:35:35', 1),
(30, 33, 0, '8', '', 'Consultation', 2, NULL, 'FEVER', 'checkout', 0, '2016-10-26 12:05:36', '2016-11-05 06:36:35', 1),
(31, 26, 0, '8', '', 'Consultation', 1, NULL, 'Malaria', 'checkout', 0, '2016-10-26 12:06:32', '2016-11-05 06:35:53', 1),
(32, 3, 0, '8', '', 'Consultation', 2, NULL, '', 'checkout', 0, '2016-10-26 12:15:02', '2016-11-16 09:15:26', 0),
(33, 2, 0, '8', '', 'Consultation', 2, NULL, 'check up', 'triage', 0, '2016-10-26 12:22:22', '2016-11-04 18:42:11', 0),
(34, 45, 0, '2', '', 'Followup visit', 3, NULL, 'CARDIO', 'checkout', 0, '2016-10-26 12:27:51', '2016-11-02 14:37:13', 0),
(35, 28, 0, '1', '', 'Surgical procedure', 2, NULL, 'RCH', 'checkout', 0, '2016-10-26 12:38:05', '2016-11-05 06:36:13', 1),
(36, 37, 0, '8', '', 'Consultation', 3, NULL, 'headache', 'checkout', 0, '2016-10-26 12:38:43', '2016-10-26 12:58:41', 1),
(37, 34, 0, '5', '', 'Consultation', 3, NULL, 'Swollen gum', 'checkout', 0, '2016-10-26 12:38:45', '2016-11-08 09:45:45', 0),
(38, 49, 0, '1', '', 'Consultation', 2, NULL, 'Reddish', 'checkout', 0, '2016-10-26 12:47:58', '2016-11-05 06:36:46', 1),
(39, 29, 0, '8', '', 'Consultation', 3, NULL, 'checkup', 'checkout', 0, '2016-10-26 12:48:27', '2016-11-14 12:48:01', 0),
(40, 41, 0, '23', '', 'Consultation', 2, NULL, 'fixing of artificial tooth', 'checkout', 0, '2016-10-26 12:52:26', '2016-10-27 11:11:20', 0),
(41, 43, 0, '1', '', 'Followup visit', 2, NULL, 'follow up', 'checkout', 0, '2016-10-26 12:58:18', '2016-11-05 06:36:30', 1),
(42, 47, 0, '6', '', 'Followup visit', 3, NULL, 'ANTENATAL CARE', 'checkout', 0, '2016-10-26 13:39:48', '2016-11-05 06:36:23', 1),
(43, 41, 0, '8', '', 'Consultation', 1, NULL, 'NA', 'checkout', 0, '2016-10-27 11:11:20', '2016-11-16 08:58:12', 1),
(44, 45, 0, '1', '', 'Surgical procedure', 3, NULL, 'none', 'checkout', 3, '2016-11-02 14:37:13', '2016-11-17 15:15:32', 1),
(45, 1, 0, '2', '', 'Surgical procedure', 2, NULL, 'New', 'physician', 0, '2016-11-02 16:53:51', '2016-11-07 15:48:15', 0),
(46, 59, 0, '8', '', 'Consultation', 1, NULL, 'NA', 'physician', 0, '2016-11-04 09:31:50', '2016-11-04 18:51:20', 0),
(47, 1, 0, '4', '', 'Consultation', 2, '', '', 'queue', 0, '2016-11-04 14:31:27', '2016-11-07 15:48:15', 0),
(48, 1, 0, '4', '', 'Surgical procedure', 1, '', '', 'queue', 0, '2016-11-04 14:36:18', '2016-11-07 15:48:15', 0),
(49, 1, 0, '4', '', 'Surgical procedure', 2, '', '', 'queue', 0, '2016-11-04 14:44:43', '2016-11-07 15:48:15', 0),
(50, 1, 0, '4', '', 'Consultation', 1, '', '', 'queue', 0, '2016-11-04 14:45:48', '2016-11-07 15:48:15', 0),
(51, 1, 0, '5', '', 'Surgical procedure', 1, '', '', 'checkout', 0, '2016-11-04 14:47:45', '2016-11-17 16:11:29', 0),
(52, 2, 0, '8', '', 'Followup visit', 2, NULL, 'NA', 'checkout', 2, '2016-11-04 18:42:11', '2016-11-16 10:46:03', 1),
(53, 59, 0, '6', '', 'Consultation', 1, NULL, 'NSA', 'checkout', 0, '2016-11-04 18:51:20', '2016-11-05 06:37:36', 1),
(54, 63, 0, '8', '', 'Consultation', 3, NULL, '', 'checkout', 0, '2016-11-05 07:27:10', '2016-11-07 12:36:59', 1),
(55, 17, 0, '7', '', 'Followup visit', 2, NULL, 'check up', 'checkout', 0, '2016-11-06 04:48:58', '2016-11-07 12:35:47', 1),
(56, 21, 0, '5', '', 'Consultation', 2, NULL, 'new lab test', 'checkout', 0, '2016-11-07 15:45:33', '2016-11-09 08:36:04', 1),
(57, 1, 0, '20', '', 'Surgical procedure', 2, NULL, 'New Visit', 'checkout', 0, '2016-11-07 15:48:15', '2016-11-17 16:13:51', 1),
(58, 34, 0, '27', '', 'Consultation', 1, NULL, 'NA', 'checkout', 0, '2016-11-08 08:31:35', '2016-11-08 09:45:45', 0),
(59, 34, 0, '6', '', 'Consultation', 1, NULL, '', 'checkout', 0, '2016-11-08 09:45:45', '2016-11-10 16:31:20', 1),
(60, 4, 0, '6', '', 'Surgical procedure', 2, NULL, '', 'checkout', 0, '2016-11-12 19:16:52', '2016-11-16 08:50:03', 1),
(61, 29, 0, '5', '', 'Surgical procedure', 2, NULL, 'New prescription', 'checkout', 0, '2016-11-14 12:48:01', '2016-11-16 08:39:19', 1),
(62, 3, 0, '5', '', 'Surgical procedure', 0, NULL, '', 'checkout', 3, '2016-11-16 09:15:26', '2016-11-17 11:33:28', 1),
(63, 136, 0, '7', '', 'Surgical procedure', 0, NULL, '', 'queue', 0, '2016-11-16 09:22:55', '2016-11-16 09:25:17', 0),
(64, 160, 0, '5', '', 'Surgical procedure', 0, NULL, '', 'checkout', 2, '2016-11-16 11:30:42', '2016-11-17 10:25:48', 1),
(65, 148, 0, '6', '', 'Consultation', 0, NULL, '', 'checkout', 0, '2016-11-16 11:42:53', '2016-11-16 12:20:06', 1),
(66, 149, 0, '7', '', 'Surgical procedure', 0, NULL, '', 'checkout', 0, '2016-11-16 13:08:48', '2016-11-17 15:06:30', 1),
(67, 161, 0, '8', '', 'Consultation', 0, NULL, '', 'checkout', 2, '2016-11-17 11:49:11', '2016-11-17 12:17:40', 1),
(68, 61, 0, '5', '', 'Consultation', 0, NULL, '', 'checkout', 0, '2016-11-17 15:20:29', '2016-11-17 15:58:45', 1),
(69, 60, 0, '6', '', 'Surgical procedure', 0, NULL, '', 'checkout', 0, '2016-11-17 15:20:50', '2016-11-17 16:14:32', 1),
(70, 97, 0, '5', '', 'Consultation', 0, NULL, '', 'checkout', 0, '2016-11-17 16:15:49', '2016-11-17 16:16:02', 1),
(71, 85, 0, '4', '', 'Consultation', 0, NULL, '', 'checkout', 0, '2016-11-17 16:17:55', '2016-11-17 16:21:31', 1),
(72, 86, 0, '8', '', 'Surgical procedure', 0, NULL, '', 'physician', 0, '2016-11-18 08:11:51', '2016-11-18 08:13:22', 1),
(73, 11, 0, '23', '', 'Surgical procedure', 3, 'Removal of tooth', 'Removal of tooth', 'checkout', 0, '2016-11-18 08:24:19', '2016-11-18 08:25:42', 1),
(74, 163, 0, '22', '', 'Surgical procedure', 3, 'Tooth cleaning', 'Tooth cleaning', 'checkout', 0, '2016-11-18 08:46:06', '2016-11-18 11:09:40', 1),
(75, 164, 0, '22', '', 'Consultation', 0, NULL, '', 'queue', 0, '2016-11-18 08:56:10', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `number_of_beds` int(10) NOT NULL,
  `available_beds` int(11) NOT NULL,
  `number_of_beds_closed` int(11) NOT NULL,
  `number_of_beds_occupied` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `department_id`, `name`, `number_of_beds`, `available_beds`, `number_of_beds_closed`, `number_of_beds_occupied`, `description`, `created_at`, `updated_at`, `status`) VALUES
(001, 4, 'CASUALTY WARD', 30, 24, 0, 6, 'Accident and Emergency', '2016-10-24 15:45:09', '2016-11-17 16:13:51', 1),
(002, 27, 'Women Ward', 20, 14, 1, 5, 'This is a women ward', '2016-10-25 01:33:59', '2016-11-17 16:16:02', 1),
(003, 27, 'General Ward', 15, 15, 0, 0, 'NA', '2016-10-25 01:39:58', '2016-10-25 01:41:01', 0),
(004, 27, 'GENERAL WARD', 15, 15, 0, 0, 'This is a ward for general patients', '2016-10-25 01:41:35', '2016-11-18 08:25:42', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_problems`
--
ALTER TABLE `active_problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_category`
--
ALTER TABLE `billing_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_codes`
--
ALTER TABLE `billing_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consulting_doctor`
--
ALTER TABLE `consulting_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contexts`
--
ALTER TABLE `contexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `context_methods`
--
ALTER TABLE `context_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dose_form`
--
ALTER TABLE `dose_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encounter_class`
--
ALTER TABLE `encounter_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encounter_type`
--
ALTER TABLE `encounter_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_history`
--
ALTER TABLE `family_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_categories`
--
ALTER TABLE `field_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frequency`
--
ALTER TABLE `frequency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hmo`
--
ALTER TABLE `hmo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_plan`
--
ALTER TABLE `hospital_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intake`
--
ALTER TABLE `intake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_categories`
--
ALTER TABLE `inventory_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_consumption`
--
ALTER TABLE `inventory_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_products`
--
ALTER TABLE `inventory_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investigation_type`
--
ALTER TABLE `investigation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_orders`
--
ALTER TABLE `lab_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_order_cancelation`
--
ALTER TABLE `lab_order_cancelation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_order_tests`
--
ALTER TABLE `lab_order_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_goverment_area`
--
ALTER TABLE `local_goverment_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maritial_status`
--
ALTER TABLE `maritial_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_inventory`
--
ALTER TABLE `medicine_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_units`
--
ALTER TABLE `medicine_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_investigation_billing_code`
--
ALTER TABLE `new_investigation_billing_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NHIS_BASIC`
--
ALTER TABLE `NHIS_BASIC`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `NHIS_DATA`
--
ALTER TABLE `NHIS_DATA`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients_admitted`
--
ALTER TABLE `patients_admitted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_address`
--
ALTER TABLE `patient_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_allergies`
--
ALTER TABLE `patient_allergies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_checkout`
--
ALTER TABLE `patient_checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_clinical_notes`
--
ALTER TABLE `patient_clinical_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_dependants`
--
ALTER TABLE `patient_dependants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_employers`
--
ALTER TABLE `patient_employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_followup`
--
ALTER TABLE `patient_followup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_immunizations`
--
ALTER TABLE `patient_immunizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_insurance`
--
ALTER TABLE `patient_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_kin`
--
ALTER TABLE `patient_kin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_lab_test_values`
--
ALTER TABLE `patient_lab_test_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_prescription`
--
ALTER TABLE `patient_prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_prescription_medicine`
--
ALTER TABLE `patient_prescription_medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_procedures`
--
ALTER TABLE `patient_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_referels`
--
ALTER TABLE `patient_referels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_vitals`
--
ALTER TABLE `patient_vitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription_notes`
--
ALTER TABLE `prescription_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procedure_types`
--
ALTER TABLE `procedure_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radiology_template`
--
ALTER TABLE `radiology_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retainership`
--
ALTER TABLE `retainership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_rights`
--
ALTER TABLE `role_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_selected`
--
ALTER TABLE `route_selected`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strength`
--
ALTER TABLE `strength`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_categories`
--
ALTER TABLE `template_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_types`
--
ALTER TABLE `template_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_problems`
--
ALTER TABLE `active_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `billing_category`
--
ALTER TABLE `billing_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `billing_codes`
--
ALTER TABLE `billing_codes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `consulting_doctor`
--
ALTER TABLE `consulting_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contexts`
--
ALTER TABLE `contexts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `context_methods`
--
ALTER TABLE `context_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1464;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dose_form`
--
ALTER TABLE `dose_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `encounter_class`
--
ALTER TABLE `encounter_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `encounter_type`
--
ALTER TABLE `encounter_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `family_history`
--
ALTER TABLE `family_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `field_categories`
--
ALTER TABLE `field_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `frequency`
--
ALTER TABLE `frequency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `hmo`
--
ALTER TABLE `hmo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hospital_plan`
--
ALTER TABLE `hospital_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `intake`
--
ALTER TABLE `intake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inventory_categories`
--
ALTER TABLE `inventory_categories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `inventory_consumption`
--
ALTER TABLE `inventory_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory_products`
--
ALTER TABLE `inventory_products`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `investigation_type`
--
ALTER TABLE `investigation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `lab_orders`
--
ALTER TABLE `lab_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `lab_order_cancelation`
--
ALTER TABLE `lab_order_cancelation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lab_order_tests`
--
ALTER TABLE `lab_order_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `lab_tests`
--
ALTER TABLE `lab_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `local_goverment_area`
--
ALTER TABLE `local_goverment_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `maritial_status`
--
ALTER TABLE `maritial_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine_inventory`
--
ALTER TABLE `medicine_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medicine_units`
--
ALTER TABLE `medicine_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `new_investigation_billing_code`
--
ALTER TABLE `new_investigation_billing_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `NHIS_BASIC`
--
ALTER TABLE `NHIS_BASIC`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `NHIS_DATA`
--
ALTER TABLE `NHIS_DATA`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT for table `patients_admitted`
--
ALTER TABLE `patients_admitted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `patient_address`
--
ALTER TABLE `patient_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `patient_allergies`
--
ALTER TABLE `patient_allergies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_checkout`
--
ALTER TABLE `patient_checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `patient_clinical_notes`
--
ALTER TABLE `patient_clinical_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `patient_dependants`
--
ALTER TABLE `patient_dependants`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `patient_employers`
--
ALTER TABLE `patient_employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `patient_followup`
--
ALTER TABLE `patient_followup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_immunizations`
--
ALTER TABLE `patient_immunizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patient_insurance`
--
ALTER TABLE `patient_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_kin`
--
ALTER TABLE `patient_kin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `patient_lab_test_values`
--
ALTER TABLE `patient_lab_test_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `patient_prescription`
--
ALTER TABLE `patient_prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `patient_prescription_medicine`
--
ALTER TABLE `patient_prescription_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `patient_procedures`
--
ALTER TABLE `patient_procedures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_referels`
--
ALTER TABLE `patient_referels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `patient_vitals`
--
ALTER TABLE `patient_vitals`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `plan_details`
--
ALTER TABLE `plan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `prescription_notes`
--
ALTER TABLE `prescription_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `procedure_types`
--
ALTER TABLE `procedure_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radiology_template`
--
ALTER TABLE `radiology_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `retainership`
--
ALTER TABLE `retainership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `role_rights`
--
ALTER TABLE `role_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;
--
-- AUTO_INCREMENT for table `route_selected`
--
ALTER TABLE `route_selected`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `strength`
--
ALTER TABLE `strength`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `template_categories`
--
ALTER TABLE `template_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `template_types`
--
ALTER TABLE `template_types`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
