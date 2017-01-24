-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 29, 2016 at 02:52 PM
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
(1, 0, 'David Westley', 0, 'paid', 'new_patient', '2016-11-23 10:15:42', '0000-00-00 00:00:00', '', 1),
(2, 1, '', 1, 'pending', 'encounter', '2016-11-23 10:21:02', '0000-00-00 00:00:00', '', 1),
(3, 0, 'Ebuka John Ubendu', 0, 'paid', 'new_patient', '2016-11-24 06:17:24', '0000-00-00 00:00:00', '', 1),
(4, 2, '', 2, 'pending', 'encounter', '2016-11-24 06:30:08', '0000-00-00 00:00:00', '', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `billing_terms`
--

CREATE TABLE `billing_terms` (
  `id` int(10) NOT NULL,
  `plan_id` int(20) NOT NULL,
  `discount` int(50) NOT NULL,
  `item` enum('products','services','labs','pharmacy_prescription') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_terms`
--

INSERT INTO `billing_terms` (`id`, `plan_id`, `discount`, `item`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 100, 'products', '2016-11-22 11:29:30', '2016-11-22 09:23:24', 1),
(2, 2, 100, 'services', '2016-11-22 00:00:00', '2016-11-22 00:00:00', 1),
(3, 2, 90, 'pharmacy_prescription', '2016-11-22 00:00:00', '2016-11-22 00:00:00', 1),
(4, 2, 100, 'labs', '2016-11-22 00:00:00', '2016-11-22 00:00:00', 1);

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
(1, 'Clinical Chemistry', 'CHEM', 'Clinical Chemistry', '2016-11-24 16:34:57', '2016-11-24 16:37:19', 0),
(2, 'Clinical Chemistry', 'Chem4', 'Clinical Chemistry Laboratory is where common specimens tested in clinical chemistry are blood and urine. Many different tests exist to test for almost any type of chemical component in blood or urine. Components may include blood glucose, electrolytes, enzymes, hormones, lipids (fats), other metabolic substances, and proteins.', '2016-11-25 00:35:44', '2016-11-25 01:00:08', 1),
(3, 'Hematology', 'Haem5', 'This laboratory  provides routine and urgent automated blood counting and morphological profiling, coagulation screening, transfusion (blood grouping, antibody screening and blood/blood product provision), specialist haemostasis and haemoglobinopathy investigations.', '2016-11-25 00:39:58', '0000-00-00 00:00:00', 1),
(4, 'Medical Microbiology', 'MC6', 'Medical Microbiology Laboratory has extensive experience developing, conducting, and interpreting tests for patients with viral, bacterial, fungal, and parasitic infections, and for those prone to infections, such as cancer etc', '2016-11-25 00:45:02', '0000-00-00 00:00:00', 1);

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
(1, 'Fasting Blood Sugar', 'Chem4/001', 1, '500.00', 'Clinical Chemistry', '', '2016-11-24 16:35:35', '2016-11-24 16:37:14', 0),
(2, 'Fasting Blood Sugar', 'Chem4/001', 2, '500.00', 'The fasting blood glucose test is the test most commonly used to diagnose diabetes. It measures blood glucose levels after a period of fasting, usually at least eight hours without food or liquid (except water).', '', '2016-11-25 01:05:07', '0000-00-00 00:00:00', 1),
(3, 'Random Blood Sugar', 'Chem4/002', 2, '500.00', 'N/A', '', '2016-11-25 01:11:13', '0000-00-00 00:00:00', 1),
(4, 'Glucose Tolerance Test', 'Chem4/003', 2, '2500.00', 'A glucose tolerance test is used to help diagnose gestational diabetes and type 2 diabetes', '', '2016-11-25 01:13:05', '0000-00-00 00:00:00', 1),
(5, 'Potassium', 'Chem4/004', 2, '500.00', 'N/A', '', '2016-11-25 01:13:59', '0000-00-00 00:00:00', 1),
(6, 'Sodium', 'Chem4/005', 2, '500.00', 'N/A', '', '2016-11-25 01:15:25', '0000-00-00 00:00:00', 1),
(7, 'Chloride', 'Chem4/006', 2, '500.00', 'N/A', '', '2016-11-25 01:16:09', '0000-00-00 00:00:00', 1),
(8, 'Bicarbonate', 'Chem4/007', 2, '500.00', 'N/A', '', '2016-11-25 01:17:32', '0000-00-00 00:00:00', 1),
(9, 'Urea', 'Chem4/008', 2, '500.00', 'N/A', '', '2016-11-25 01:18:18', '0000-00-00 00:00:00', 1),
(10, 'Creatinine', 'Chem4/009', 2, '500.00', 'A creatinine blood test measures the level of creatinine in the blood', '', '2016-11-25 01:23:16', '0000-00-00 00:00:00', 1),
(11, 'SGOT', 'Chem4/010', 2, '500.00', 'N/A', '', '2016-11-25 01:24:16', '0000-00-00 00:00:00', 1),
(12, 'SGPT', 'Chem4/011', 2, '500.00', 'N/A', '', '2016-11-25 01:25:04', '0000-00-00 00:00:00', 1),
(13, 'Alkaline phosphatise', 'Chem4/012', 2, '500.00', 'N/A', '', '2016-11-25 01:25:59', '0000-00-00 00:00:00', 1),
(14, 'Total Bilirubin', 'Chem4/013', 2, '500.00', 'N/A', '', '2016-11-25 01:27:12', '0000-00-00 00:00:00', 1),
(15, 'Direct Bilirubin', 'Chem4/014', 2, '500.00', 'N/A', '', '2016-11-25 01:28:19', '0000-00-00 00:00:00', 1),
(16, 'Uric Acid', 'Chem4/015', 2, '500.00', 'N/A', '', '2016-11-25 01:29:27', '0000-00-00 00:00:00', 1),
(17, 'Total  Protein', 'Chem4/016', 2, '500.00', 'N/A', '', '2016-11-25 01:31:02', '0000-00-00 00:00:00', 1),
(18, 'Albumin', 'Chem4/017', 2, '500.00', 'N/A', '', '2016-11-25 01:32:33', '0000-00-00 00:00:00', 1),
(19, 'Calcium', 'Chem4/018', 2, '500.00', 'N/A', '', '2016-11-25 01:33:49', '0000-00-00 00:00:00', 1),
(20, 'Cholesterol', 'Chem4/019', 2, '500.00', 'N/A', '', '2016-11-25 01:34:37', '0000-00-00 00:00:00', 1),
(21, 'Triglycerides', 'Chem4/020', 2, '500.00', 'N/A', '', '2016-11-25 01:35:22', '0000-00-00 00:00:00', 1),
(22, 'Low density Lipoprotein', 'Chem4/021', 2, '500.00', 'N/A', '', '2016-11-25 01:36:50', '0000-00-00 00:00:00', 1),
(23, 'High density Lipoprotein', 'Chem4/022', 2, '500.00', 'N/A', '', '2016-11-25 05:56:57', '0000-00-00 00:00:00', 1),
(24, 'High density Lipoprotein', 'Chem4/022', 2, '500.00', 'N/A', '', '2016-11-25 05:56:58', '0000-00-00 00:00:00', 1),
(25, 'High density Lipoprotein', 'Chem4/022', 2, '500.00', 'N/A', '', '2016-11-25 05:57:00', '0000-00-00 00:00:00', 1),
(26, 'Very low density Lipoprotein', 'Chem4/023', 2, '500.00', 'N/A', '', '2016-11-25 05:57:32', '0000-00-00 00:00:00', 1),
(27, 'Alfa Feto Protein', 'Chem4/024', 2, '5000.00', 'N/A', '', '2016-11-25 05:58:47', '0000-00-00 00:00:00', 1),
(28, 'Urinalysis', 'Chem4/025', 2, '500.00', 'N/A', '', '2016-11-25 05:59:28', '0000-00-00 00:00:00', 1),
(29, 'TSH', 'Chem4/026', 2, '3000.00', 'N/A', '', '2016-11-25 06:00:20', '0000-00-00 00:00:00', 1),
(30, 'T3', 'Chem4/027', 2, '3000.00', 'N/A', '', '2016-11-25 06:01:05', '0000-00-00 00:00:00', 1),
(31, 'T4', 'Chem4/028', 2, '3000.00', 'N/A', '', '2016-11-25 06:01:30', '0000-00-00 00:00:00', 1),
(32, 'LH', 'Chem4/029', 2, '3000.00', 'N/A', '', '2016-11-25 06:02:29', '0000-00-00 00:00:00', 1),
(33, 'FSH', 'Chem4/030', 2, '3000.00', 'N/A', '', '2016-11-25 06:02:55', '0000-00-00 00:00:00', 1),
(34, 'Testosterone', 'Chem4/031', 2, '3000.00', 'N/A', '', '2016-11-25 06:04:03', '0000-00-00 00:00:00', 1),
(35, 'Prolactin', 'Chem4/032', 2, '3000.00', 'N/A', '', '2016-11-25 06:04:36', '0000-00-00 00:00:00', 1),
(36, 'Estrogen', 'Chem4/033', 2, '3000.00', 'N/A', '', '2016-11-25 06:05:23', '0000-00-00 00:00:00', 1),
(37, 'Progesterone', 'Chem4/034', 2, '3000.00', 'N/A', '', '2016-11-25 06:06:03', '0000-00-00 00:00:00', 1),
(38, 'PSA', 'Chem4/035', 2, '3000.00', 'N/A', '', '2016-11-25 06:06:51', '0000-00-00 00:00:00', 1),
(39, 'HbA1c', 'Chem4/036', 2, '3000.00', 'N/A', '', '2016-11-25 06:07:20', '0000-00-00 00:00:00', 1),
(40, 'CSF Protein', 'Chem4/037', 2, '500.00', 'N/A', '', '2016-11-25 06:08:06', '0000-00-00 00:00:00', 1),
(41, 'CSF Glucose', 'Chem4/038', 2, '500.00', 'N/A', '', '2016-11-25 06:08:41', '0000-00-00 00:00:00', 1),
(42, 'Packed cell volume', 'Haem5/001', 3, '500.00', 'N/A', '', '2016-11-28 21:17:27', '0000-00-00 00:00:00', 1),
(43, 'Full blood count', 'Haem5/002', 3, '1200.00', 'N/A', '', '2016-11-28 21:18:59', '0000-00-00 00:00:00', 1),
(44, 'Red cell indices', 'Haem5/003', 3, '1200.00', 'N/A', '', '2016-11-28 21:20:58', '0000-00-00 00:00:00', 1),
(45, 'ESR', 'Haem5/004', 3, '500.00', 'N/A', '', '2016-11-28 21:22:15', '0000-00-00 00:00:00', 1),
(46, 'Blood group', 'Haem5/005', 3, '500.00', 'N/A', '', '2016-11-28 21:23:11', '0000-00-00 00:00:00', 1),
(47, 'Hb Genotype', 'Haem5/006', 3, '700.00', 'N/A', '', '2016-11-28 21:23:42', '0000-00-00 00:00:00', 1),
(48, 'Coomb’s Test(Direct)', 'Haem5/007', 3, '800.00', 'N/A', '', '2016-11-28 21:26:30', '0000-00-00 00:00:00', 1),
(49, 'Indirect Coomb’s Test', 'Haem5/008', 3, '800.00', 'N/A', '', '2016-11-28 21:29:33', '0000-00-00 00:00:00', 1),
(50, 'Platelet count', 'Haem5/009', 3, '1200.00', 'N/A', '', '2016-11-28 21:36:30', '0000-00-00 00:00:00', 1),
(51, 'Clotting Time', 'Haem5/010', 3, '500.00', 'N/A', '', '2016-11-28 21:39:13', '0000-00-00 00:00:00', 1),
(52, 'Bleeding Time', 'Haem5/011', 3, '500.00', 'N/A', '', '2016-11-28 21:39:57', '0000-00-00 00:00:00', 1),
(53, 'Prothrombin Time(PT)', 'Haem5/012', 3, '1700.00', 'N/A', '', '2016-11-28 21:41:43', '0000-00-00 00:00:00', 1),
(54, 'PTTK', 'Haem5/013', 3, '1700.00', 'N/A', '', '2016-11-28 21:43:51', '0000-00-00 00:00:00', 1),
(55, 'Fibrinogen', 'Haem5/014', 3, '1700.00', 'N/A', '', '2016-11-28 21:45:05', '0000-00-00 00:00:00', 1),
(56, 'Cross-matching', 'Haem5/015', 3, '0.00', 'N/A', '', '2016-11-28 21:46:35', '0000-00-00 00:00:00', 1),
(57, 'Screening  for Donor', 'Haem5/016', 3, '6500.00', 'N/A', '', '2016-11-28 21:48:13', '0000-00-00 00:00:00', 1),
(58, 'HIV P24 antigen', 'Haem5/017', 3, '3000.00', 'N/A', '', '2016-11-28 21:49:27', '0000-00-00 00:00:00', 1),
(59, 'Sickling Test', 'Haem5/018', 3, '500.00', 'N/A', '', '2016-11-29 02:08:22', '0000-00-00 00:00:00', 1),
(60, 'CD4 Count', 'Haem5/019', 3, '0.00', 'N/A', '', '2016-11-29 02:09:30', '0000-00-00 00:00:00', 1),
(61, 'Retics', 'Haem5/020', 3, '1000.00', 'N/A', '', '2016-11-29 02:10:48', '0000-00-00 00:00:00', 1),
(62, 'Stool MCS', 'MC6/001', 4, '800.00', 'N/A', '', '2016-11-29 02:15:36', '0000-00-00 00:00:00', 1),
(63, 'Urine MCS', 'MC6/002', 4, '800.00', 'N/A', '', '2016-11-29 02:16:43', '0000-00-00 00:00:00', 1),
(64, 'Semen MCS', 'MC6/003', 4, '1000.00', 'N/A', '', '2016-11-29 02:18:40', '0000-00-00 00:00:00', 1),
(65, 'Semen Analysis', 'MC6/004', 4, '1000.00', 'N/A', '', '2016-11-29 02:20:09', '0000-00-00 00:00:00', 1),
(66, 'CSF MCS', 'MC6/005', 4, '800.00', 'N/A', '', '2016-11-29 02:20:59', '0000-00-00 00:00:00', 1),
(67, 'HVS', 'MC6/006', 4, '800.00', 'N/A', '', '2016-11-29 02:23:11', '0000-00-00 00:00:00', 1),
(68, 'Urethral Swab MCS', 'MC6/007', 4, '800.00', 'N/A', '', '2016-11-29 02:23:44', '0000-00-00 00:00:00', 1),
(69, 'Aspirate/Pus/Wound', 'MC6/008', 4, '800.00', 'N/A', '', '2016-11-29 02:24:33', '0000-00-00 00:00:00', 1),
(70, 'Ear Swab', 'MC6/009', 4, '800.00', 'N/A', '', '2016-11-29 02:25:23', '0000-00-00 00:00:00', 1),
(71, 'Eye Swab', 'MC6/010', 4, '800.00', 'N/A', '', '2016-11-29 02:26:16', '0000-00-00 00:00:00', 1),
(72, 'Throat Swab', 'MC6/011', 4, '800.00', 'N/A', '', '2016-11-29 02:32:04', '0000-00-00 00:00:00', 1),
(73, 'Widal', 'MC6/012', 4, '500.00', 'N/A', '', '2016-11-29 02:32:57', '0000-00-00 00:00:00', 1),
(74, 'VDRL', 'MC6/013', 4, '500.00', 'N/A', '', '2016-11-29 02:33:56', '0000-00-00 00:00:00', 1),
(75, 'Occult Blood Test', 'MC6/014', 4, '500.00', 'N/A', '', '2016-11-29 02:34:38', '0000-00-00 00:00:00', 1),
(76, 'Serum AFB', 'MC6/015', 4, '1000.00', 'N/A', '', '2016-11-29 02:35:38', '0000-00-00 00:00:00', 1),
(77, 'Blood Culture', 'MC6/016', 4, '2000.00', 'N/A', '', '2016-11-29 02:36:37', '0000-00-00 00:00:00', 1),
(78, 'Mantoux', 'MC6/017', 4, '1500.00', 'N/A', '', '2016-11-29 02:37:31', '0000-00-00 00:00:00', 1),
(79, 'Stool Microscopy', 'MC6/018', 4, '500.00', 'N/A', '', '2016-11-29 02:38:06', '0000-00-00 00:00:00', 1),
(80, 'Urine Microscopy', 'MC6/019', 4, '500.00', 'N/A', '', '2016-11-29 02:38:56', '0000-00-00 00:00:00', 1),
(81, 'Skin snip', 'MC6/020', 4, '500.00', 'N/A', '', '2016-11-29 02:39:44', '0000-00-00 00:00:00', 1),
(82, 'Malaria Parasite(MP)', 'MC6/021', 4, '500.00', 'N/A', '', '2016-11-29 02:40:21', '0000-00-00 00:00:00', 1),
(83, 'H.Pylori', 'MC6/022', 4, '1500.00', 'N/A', '', '2016-11-29 02:41:21', '0000-00-00 00:00:00', 1),
(84, 'Rheumatoid factor', 'MC6/023', 4, '2000.00', 'N/A', '', '2016-11-29 02:42:13', '0000-00-00 00:00:00', 1),
(85, 'ECS MCS', 'MC6/024', 4, '1500.00', 'N/A', '', '2016-11-29 02:42:54', '0000-00-00 00:00:00', 1),
(86, 'Hepatitis B', 'MC6/025', 4, '500.00', 'N/A', '', '2016-11-29 02:43:45', '0000-00-00 00:00:00', 1),
(87, 'Hepatitis C', 'MC6/026', 4, '500.00', 'Tests used to diagnose hepatitis C infection', '', '2016-11-29 02:46:26', '0000-00-00 00:00:00', 1),
(88, 'Hep. core Antigen', 'MC6/027', 4, '3000.00', 'N/A', '', '2016-11-29 02:47:20', '0000-00-00 00:00:00', 1),
(89, 'Hep.Envelop Antigen', 'MC6/028', 4, '3000.00', 'N/A', '', '2016-11-29 02:48:03', '0000-00-00 00:00:00', 1),
(90, 'Hepatitis B Pofile', 'MC6/029', 4, '3000.00', 'N/A', '', '2016-11-29 02:48:42', '0000-00-00 00:00:00', 1);

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
(1, 'David', '', 'Westley', '08-02-1989', 1, '27 years', '', '', 1, 1, '', '', '', '', '', '', '', '', '1', 'NA6366363', '2', '3', '', 0, 97, 0, 1, '2016-11-23 10:18:17', '2016-11-23 10:18:36', '1'),
(2, 'Ebuka', 'John', 'Ubendu', '17-09-1991', 1, '25 years', '12208372001479964388.jpg', 'passpt2.jpg', 1, 1, 'Chukwuma', 'Benard', 'Ubendu', 'Ifeoma', 'Christy', 'Ubendu', '', '', '4', 'ABU00012', '4', '70', 'Ibo', 3, 97, 1, 1, '2016-11-24 06:18:28', '2016-11-24 06:28:40', '1');

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
(1, 1, 'contact', '', '234', '234908877737', '', '', '', 0, 97, NULL, '', '2016-11-23 10:18:23', '0000-00-00 00:00:00', 1),
(2, 2, 'contact', '', '234', '234080652534', 'No 10 Waff Road', 'By NMS Army Barracks', 'Zaria', 19, 97, 365, '820008', '2016-11-24 06:23:31', '0000-00-00 00:00:00', 1);

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
(1, 2, 'Blessed Obinno computers Nigeria Limited', '', '08035674322', '', 'No. 10 Waff Road', 'By NMS Barracks', 'Zaria', '19', '97', '2016-11-24 06:28:29', '0000-00-00 00:00:00', 1);

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
(1, 2, 'Blessed', 'Chinedu', 'Ubendu', '4', '', '', '08035674322', '', 'No. 10 Waff Road', 'By NMS Barracks', 'Zaria', '', '97', '820008', '2016-11-24 06:26:36', '0000-00-00 00:00:00', 1);

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
(1, 1, 1, 0, 0, 'in progress', 1, '2016-11-23 14:43:13', '0000-00-00 00:00:00', 1);

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
(1, 2, 2, '34', '23', '36.', '24.', '30.', '-1.11', '19.03', '55.', '170.', 'Patient is looking pale', '2016-11-24 06:31:22', 1);

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
(1, 'GOPD Pharmacy', 'NA', 'Abuja', 15, '', '15, Conakry Street,Off Herbert Macaulay Way', 'Zone 3, Wuse,', 'ph@wusedistricthospital.com', '08082828822', '900281', 1, '2016-11-23 10:38:48', '2016-11-29 06:33:19');

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
(6, 'Super Administrator', '2016-11-03 15:30:12', '2016-11-24 16:36:35', 1),
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
(793, 1, 11, 0, 1, 0, 1, 1, '2016-11-10 00:00:00', '2016-11-04 00:00:00', 1),
(831, 6, 1, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(832, 6, 2, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(833, 6, 3, 0, 1, 0, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(834, 6, 4, 0, 1, 0, 0, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(835, 6, 5, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(836, 6, 6, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(837, 6, 7, 1, 1, 1, 1, 2, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(838, 6, 7, 1, 1, 1, 1, 3, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(839, 6, 7, 1, 1, 1, 1, 4, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(840, 6, 7, 1, 1, 1, 1, 24, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(841, 6, 9, 1, 1, 1, 1, 2, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(842, 6, 9, 1, 1, 1, 1, 3, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(843, 6, 9, 1, 1, 1, 1, 4, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(844, 6, 9, 1, 1, 1, 1, 24, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(845, 6, 11, 0, 1, 0, 1, 2, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(846, 6, 11, 0, 1, 0, 1, 3, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(847, 6, 11, 0, 1, 0, 1, 4, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(848, 6, 11, 0, 1, 0, 1, 24, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(849, 6, 12, 0, 0, 0, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(850, 6, 13, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(851, 6, 14, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(852, 6, 15, 0, 1, 0, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(853, 6, 16, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(854, 6, 17, 1, 0, 0, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(855, 6, 18, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(856, 6, 21, 0, 0, 0, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(857, 6, 22, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(858, 6, 23, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(859, 6, 24, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(860, 6, 25, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(861, 6, 26, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(862, 6, 27, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(863, 6, 28, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(864, 6, 29, 0, 1, 0, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(865, 6, 30, 1, 1, 1, 1, 0, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(866, 6, 31, 1, 1, 1, 1, 1, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(867, 6, 31, 1, 1, 1, 1, 2, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1),
(868, 6, 7, 1, 1, 1, 1, 1, '2016-11-24 16:36:35', '0000-00-00 00:00:00', 1);

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
('17837e984e812e9c91fd57eb68c5fbf12d90ffe3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnpiTmhraHdUQkRrNEMzNzNtUWpjT3JBRmdGekxTVnNqalBlMkppdCI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjE6Imh0dHA6Ly9kZW1vei5vbmxpbmUvZWhyL3B1YmxpYy9hcGkvZ2V0X2NpdGllcz9zdGF0ZV9pZD0xNSZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakk1TENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBPREF6T0RRM01URXNJbVY0Y0NJNk1UUTRNRFkwTXpreE1Td2libUptSWpveE5EZ3dNemcwTnpFeExDSnFkR2tpT2lJMFlXTTRNekJsTlRGa09UVXhPRFEwWW1ZMU1qVTVZV0l5TldNelpXVXpNU0o5LmVvVy1EOEFuTlVZcGtwVGRPMGsxbjdoS3VKN1FtcGdsVVdJMGxNaUsyMzAiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ4MDM4Njk4NjtzOjE6ImMiO2k6MTQ4MDM4MTcwMjtzOjE6ImwiO3M6MToiMCI7fX0=', '1480386986'),
('1dfb92fe34ccc1a9b9405bcbb07e80c1e3cc7cea', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQTBFTHZTZEZ6cXhYM1JmOTVaS2kxcDhsUW16TzJJbXpyWkYxOWxOeSI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNzM6Imh0dHA6Ly9kZW1vei5vbmxpbmUvZWhyL3B1YmxpYy9hcGkvZ2V0X2ludmVudG9yeV9jYXRlZ29yeT9ncm91cD1EcnVncyZ0b2tlbj1leUowZVhBaU9pSktWMVFpTENKaGJHY2lPaUpJVXpJMU5pSjkuZXlKemRXSWlPakk1TENKcGMzTWlPaUpvZEhSd09sd3ZYQzlrWlcxdmVpNXZibXhwYm1WY0wyVm9jbHd2Y0hWaWJHbGpYQzloY0dsY0wzVnpaWEpmYkc5bmFXNGlMQ0pwWVhRaU9qRTBPREF6T0RRM01URXNJbVY0Y0NJNk1UUTRNRFkwTXpreE1Td2libUptSWpveE5EZ3dNemcwTnpFeExDSnFkR2tpT2lJMFlXTTRNekJsTlRGa09UVXhPRFEwWW1ZMU1qVTVZV0l5TldNelpXVXpNU0o5LmVvVy1EOEFuTlVZcGtwVGRPMGsxbjdoS3VKN1FtcGdsVVdJMGxNaUsyMzAiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ4MDM5Nzc1MztzOjE6ImMiO2k6MTQ4MDM5NzMwNTtzOjE6ImwiO3M6MToiMCI7fX0=', '1480397753');

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
(1, 2, 'Laboratory Templates', 'Templates for laboratory  to report lab tests', '2016-11-23 11:50:48', '0000-00-00 00:00:00', 1),
(2, 1, 'sadf', 'sdfa', '2016-11-24 14:10:40', '2016-11-24 14:10:45', 0),
(3, 1, 'Clinical Documentation Template', 'Clinical Documentation Template', '2016-11-24 16:20:26', '0000-00-00 00:00:00', 1);

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
(1, 1, 0, '8', '', 'Followup visit', 0, NULL, '', 'physician', 0, '2016-11-23 10:21:02', '2016-11-23 14:43:13', 1),
(2, 2, 0, '8', '', 'Consultation', 0, NULL, '', 'triage', 0, '2016-11-24 06:30:08', '2016-11-24 06:31:22', 1);

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
-- Indexes for table `billing_terms`
--
ALTER TABLE `billing_terms`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `billing_category`
--
ALTER TABLE `billing_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing_codes`
--
ALTER TABLE `billing_codes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing_terms`
--
ALTER TABLE `billing_terms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory_consumption`
--
ALTER TABLE `inventory_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory_products`
--
ALTER TABLE `inventory_products`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `investigation_type`
--
ALTER TABLE `investigation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lab_orders`
--
ALTER TABLE `lab_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lab_order_cancelation`
--
ALTER TABLE `lab_order_cancelation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lab_order_tests`
--
ALTER TABLE `lab_order_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lab_tests`
--
ALTER TABLE `lab_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patients_admitted`
--
ALTER TABLE `patients_admitted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_address`
--
ALTER TABLE `patient_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patient_allergies`
--
ALTER TABLE `patient_allergies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_checkout`
--
ALTER TABLE `patient_checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_clinical_notes`
--
ALTER TABLE `patient_clinical_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_dependants`
--
ALTER TABLE `patient_dependants`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_employers`
--
ALTER TABLE `patient_employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patient_followup`
--
ALTER TABLE `patient_followup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_immunizations`
--
ALTER TABLE `patient_immunizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_insurance`
--
ALTER TABLE `patient_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_kin`
--
ALTER TABLE `patient_kin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patient_lab_test_values`
--
ALTER TABLE `patient_lab_test_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_prescription`
--
ALTER TABLE `patient_prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `patient_prescription_medicine`
--
ALTER TABLE `patient_prescription_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_procedures`
--
ALTER TABLE `patient_procedures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_referels`
--
ALTER TABLE `patient_referels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patient_vitals`
--
ALTER TABLE `patient_vitals`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `plan_details`
--
ALTER TABLE `plan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `prescription_notes`
--
ALTER TABLE `prescription_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;
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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `template_categories`
--
ALTER TABLE `template_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
