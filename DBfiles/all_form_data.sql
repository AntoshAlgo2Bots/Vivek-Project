-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 09:43 AM
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
-- Database: `all_form_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_details_tbl`
--

CREATE TABLE `address_details_tbl` (
  `customer_id` int(100) NOT NULL,
  `site_code` varchar(100) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_description` varchar(100) NOT NULL,
  `add_line1` varchar(100) NOT NULL,
  `add_line2` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_preson_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_person_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banking_details_tbl`
--

CREATE TABLE `banking_details_tbl` (
  `customer_id` int(100) NOT NULL,
  `site_code` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `branch_no` varchar(100) NOT NULL,
  `branch_type` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `bank_no` varchar(100) NOT NULL,
  `bank_type` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `ifsc_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_banking_details`
--

CREATE TABLE `company_banking_details` (
  `account_id` int(10) UNSIGNED NOT NULL,
  `main_company_id` int(11) NOT NULL,
  `sub_company_id` int(11) NOT NULL,
  `bank_name` varchar(45) NOT NULL,
  `bank_account_number` int(11) NOT NULL,
  `bank_ifsc_code` varchar(45) NOT NULL,
  `bank_branch_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `company_banking_details`
--

INSERT INTO `company_banking_details` (`account_id`, `main_company_id`, `sub_company_id`, `bank_name`, `bank_account_number`, `bank_ifsc_code`, `bank_branch_name`) VALUES
(1, 1, 0, 'hdfc', 84930, 'NDEJD993D', 'sagar pur'),
(2, 1, 1, 'yes bank', 73829, 'NUID78', 'Palam'),
(3, 1, 2, 'capital one', 47384, 'HD8UEH78', 'janak puri'),
(4, 1, 3, 'chase bank', 98998, '9JRJ49I', 'PALAM'),
(5, 2, 4, 'karnataka bank', 34343, 'SJIE390E', 'UTTAM NAGAR'),
(6, 2, 5, 'hdfc', 3434984, 'JDWIDJ990', 'Noida'),
(7, 2, 0, 'sbi', 90850, 'JFM4IIJ4', 'Sadh nagar'),
(15, 10, 0, 'HDFC', 7878, 'NDIOWJ90', 'sagar pr'),
(16, 11, 0, 'SBI', 8768, 'SDHSDH898', 'SAGAR PUR'),
(17, 11, 6, 'fake bank', 67888, 'JSJS8900', 'palam'),
(18, 12, 0, 'yes bank', 7392, 'ABC33', 'JANAK PURI'),
(19, 12, 8, 'yes', 7392, 'ABC33', 'JANAK'),
(20, 12, 9, 'yes', 7392, 'ABC33', 'JANAK'),
(21, 12, 10, 'yes', 7392, 'ABC33', 'JANAK'),
(22, 13, 0, 'hdfc bank', 732898, 'BCA123', 'Gurgao'),
(23, 13, 11, 'hdfc', 732898, 'BCA123', 'Gurgao'),
(24, 13, 12, 'hdfc', 732898, 'BCA123', 'Gurgao'),
(25, 14, 0, 'HDFSC', 67887, 'ABC123', 'Gurago'),
(26, 14, 13, 'HDFSC', 67887, 'ABC123', 'Gurago'),
(27, 14, 14, 'HDFSC', 67887, 'ABC123', 'Gurago');

-- --------------------------------------------------------

--
-- Table structure for table `company_header_level_details`
--

CREATE TABLE `company_header_level_details` (
  `company_id` int(11) NOT NULL,
  `name_of_company` varchar(45) NOT NULL,
  `company_address` varchar(45) NOT NULL,
  `company_pan_card` varchar(45) DEFAULT NULL,
  `company_email` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `company_header_level_details`
--

INSERT INTO `company_header_level_details` (`company_id`, `name_of_company`, `company_address`, `company_pan_card`, `company_email`) VALUES
(1, 'desire pvt ltd', 'palam', NULL, NULL),
(2, 'dams', 'okhla', NULL, NULL),
(6, 'manish', 'djfwi', NULL, NULL),
(8, 'example comonay', 'jaipur', NULL, NULL),
(9, 'one', 'delhi', NULL, NULL),
(10, 'abc', 'delhi', NULL, NULL),
(11, 'another', 'okhla', NULL, NULL),
(12, 'shoes pvt ltd', 'bahadur garh', NULL, NULL),
(13, 'puma pvt ltd', 'gurgapo', NULL, NULL),
(14, 'zara  ', 'gurgao', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `create_bom_header_level`
--

CREATE TABLE `create_bom_header_level` (
  `record_number` int(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `revision` varchar(100) NOT NULL,
  `percantage` varchar(100) NOT NULL,
  `products` varchar(100) NOT NULL,
  `organisation_mapping` varchar(100) NOT NULL,
  `upload_image` varchar(100) NOT NULL,
  `ware_house_location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `create_bom_header_level`
--

INSERT INTO `create_bom_header_level` (`record_number`, `item_name`, `revision`, `percantage`, `products`, `organisation_mapping`, `upload_image`, `ware_house_location`) VALUES
(1, 'adfs', 'asd', 'dsf', 'dasfv', 'adsf', 'dasf', 'dsaf');

-- --------------------------------------------------------

--
-- Table structure for table `create_bom_line_level`
--

CREATE TABLE `create_bom_line_level` (
  `record_number` int(100) NOT NULL,
  `process_seq` varchar(100) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `percantage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `create_bom_line_level`
--

INSERT INTO `create_bom_line_level` (`record_number`, `process_seq`, `item_code`, `item_name`, `qty`, `percantage`) VALUES
(1, 'ASZ', 'fdsfb', 'sdf', 'dfsb', 'fds');

-- --------------------------------------------------------

--
-- Table structure for table `create_query_form`
--

CREATE TABLE `create_query_form` (
  `record_no` int(11) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_lead` varchar(45) DEFAULT NULL,
  `contact_person_details` varchar(45) DEFAULT NULL,
  `lead_source` varchar(45) DEFAULT NULL,
  `lead_type` varchar(45) DEFAULT NULL,
  `assigned_to` varchar(45) DEFAULT NULL,
  `query_received_date` varchar(45) DEFAULT NULL,
  `query_start_date` varchar(45) DEFAULT NULL,
  `query_end_date` varchar(45) DEFAULT NULL,
  `follow_up` varchar(45) DEFAULT NULL,
  `re_query` varchar(45) DEFAULT NULL,
  `re_query_closure_date` varchar(45) DEFAULT NULL,
  `re_query_end_date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OPEN',
  `followup_reminder_frequency` int(11) DEFAULT 5,
  `no_of_times` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `create_query_form`
--

INSERT INTO `create_query_form` (`record_no`, `created_by`, `created_lead`, `contact_person_details`, `lead_source`, `lead_type`, `assigned_to`, `query_received_date`, `query_start_date`, `query_end_date`, `follow_up`, `re_query`, `re_query_closure_date`, `re_query_end_date`, `status`, `followup_reminder_frequency`, `no_of_times`) VALUES
(1, '1', '1', '1', 'Email', 'Dealer', '123', '2024-09-03', '2024-09-20', '2024-09-04', '121', 'Yes', '2024-09-06', '2024-09-16', 'CLOSE', 10, NULL),
(2, '101', '101', '1010', 'Email', 'Dealer', '101', '2024-09-17', '2024-09-25', '2024-09-16', '101', 'Yes', '', '', 'INPROCESS', 10, NULL),
(3, '101', '101', '1010', 'Direct-other', 'Distributor', '101', '2024-09-25', '2024-09-19', '2024-09-17', '101', 'Yes', '2024-09-27', '2024-09-18', 'CLOSE', 10, NULL),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', 'OPEN', 10, NULL),
(5, 'example', 'jk', 'jk', 'Choose Lead', 'Choose Lead Type', 'jk', '2026-12-13', '2026-12-15', '2026-11-13', 'kojih', 'Yes', '2026-10-14', '2025-10-14', 'CLOSE', 10, NULL),
(6, 'example', 'jk', 'jk', 'Choose Lead', 'Choose Lead Type', 'jk', '2026-12-13', '2026-12-15', '2026-11-13', 'kojih', 'Yes', '2026-10-14', '2025-10-14', 'CLOSE', 10, NULL),
(7, 'YG', 'g', 'ygy', 'Email', 'Distributor', 'yg', '2025-10-15', '2026-11-16', '2025-12-14', 'ug', 'Choose one', '2026-11-15', '2026-11-15', NULL, 1, '1'),
(8, 'jfkdjfl', 'jfklql', 'jkl', 'Email', 'Distributor', 'rfm`', '2023-11-30', '2023-11-30', '2024-10-29', 'foloe ', 'Yes', '2025-12-04', '2024-02-09', 'OPEN', 5, NULL),
(9, '', '', '', '', '', '', '', '', '', '', '', '', '', 'OPEN', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_line_label_details`
--

CREATE TABLE `customer_line_label_details` (
  `sub_company_id` int(11) NOT NULL,
  `main_company_id` int(11) NOT NULL,
  `company_address` varchar(45) NOT NULL,
  `companny_name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `GST_number` varchar(45) DEFAULT NULL,
  `company_email` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `customer_line_label_details`
--

INSERT INTO `customer_line_label_details` (`sub_company_id`, `main_company_id`, `company_address`, `companny_name`, `category`, `GST_number`, `company_email`) VALUES
(8, 12, 'jaipur', 'shoes pvt ltd', 'printer', NULL, NULL),
(9, 12, 'okhla', 'shoes pvt ltd', 'printer', NULL, NULL),
(10, 12, 'gurgao', 'shoes pvt ltd', 'cooler', NULL, NULL),
(11, 13, 'okhla', 'puma pvt ltd', 'shoes', NULL, NULL),
(12, 13, 'noida', 'puma pvt ltd', 'thirt', NULL, NULL),
(13, 14, 'noida', 'zara  ', 'tshirt', NULL, NULL),
(14, 14, 'okhla', 'zara  ', 'jeans', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_txn_book`
--

CREATE TABLE `daily_txn_book` (
  `transaction_no` int(11) NOT NULL,
  `transaction_date` varchar(45) DEFAULT NULL,
  `amount_type` varchar(45) DEFAULT NULL,
  `credit_amt` varchar(45) DEFAULT NULL,
  `debit_amt` varchar(45) DEFAULT NULL,
  `particuler_to` varchar(45) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `main_head` varchar(45) DEFAULT NULL,
  `sub_head` varchar(45) DEFAULT NULL,
  `bill_cheque_no` varchar(45) DEFAULT NULL,
  `invoice_date` varchar(45) DEFAULT NULL,
  `invoice_no` varchar(45) DEFAULT NULL,
  `gst_no` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `form_status` varchar(45) NOT NULL DEFAULT 'SAVE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `daily_txn_book`
--

INSERT INTO `daily_txn_book` (`transaction_no`, `transaction_date`, `amount_type`, `credit_amt`, `debit_amt`, `particuler_to`, `site`, `main_head`, `sub_head`, `bill_cheque_no`, `invoice_date`, `invoice_no`, `gst_no`, `remarks`, `form_status`) VALUES
(13, '2024-09-12', 'Credit', '101', '', 'Fuel', 'Fuel', 'cash_received', 'staff_welfare', '101', '2024-09-12', '101', '101', 'abc', 'SAVE'),
(14, '2024-09-13', 'Debit', '', '2000', 'Fuel', 'Fuel', 'hkb', 'col_hkb', '102', '2024-09-24', '102', '102', 'abc', 'SAVE'),
(16, '2024-09-12', 'Debit', '', '10000', 'Fuel', 'Fuel', 'donation', 'staff_welfare', '1212', '2024-09-05', '101', '101', 'abc', 'SAVE'),
(17, '', '', '', '', '', '', '', '', '', '', '', '', '', 'SAVE'),
(18, '2025-01-02', 'Debit', '', '', 'kjhv', 'delhi', 'Select one', 'Select one', '5', '2024-02-01', '00999', '099009', 'Success', 'SAVE'),
(19, '2025-01-02', 'Debit', '', '', 'kjhv', 'delhi', 'Select one', 'Select one', '5', '2024-02-01', '00999', '099009', 'Success', 'SAVE'),
(20, '2025-01-02', 'Debit', '', '', 'kjhv', 'delhi', 'Select one', 'Select one', '5', '2024-02-01', '00999', '099009', 'Success', 'SAVE'),
(21, '2025-01-02', 'Debit', '', '', 'kjhv', 'delhi', 'Select one', 'Select one', '5', '2024-02-01', '00999', '099009', 'Success', 'SAVE'),
(22, '2026-11-30', 'Credit', '', '', 'dejio', '', 'office_running', 'ip_ajadpur', '12', '2027-10-31', '001', '12', '90i', 'SAVE');

-- --------------------------------------------------------

--
-- Table structure for table `drop_lookup_info_category_header`
--

CREATE TABLE `drop_lookup_info_category_header` (
  `header_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `drop_lookup_info_category_header`
--

INSERT INTO `drop_lookup_info_category_header` (`header_id`, `name`) VALUES
(1, 'department'),
(2, 'Requisition_Type'),
(3, 'Category');

-- --------------------------------------------------------

--
-- Table structure for table `drop_lookup_info_category_line`
--

CREATE TABLE `drop_lookup_info_category_line` (
  `line_id` int(11) NOT NULL,
  `header_id` int(11) NOT NULL,
  `sub_line_name` varchar(100) NOT NULL,
  `discription` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `drop_lookup_info_category_line`
--

INSERT INTO `drop_lookup_info_category_line` (`line_id`, `header_id`, `sub_line_name`, `discription`, `start_date`, `end_date`) VALUES
(1, 1, 'HR', 'hr department', '2024-08-02', '2024-08-10'),
(2, 1, 'Legal', 'legal department', '2024-08-02', '2024-08-10'),
(3, 1, 'FInance', 'finance department', '2024-08-02', '2024-08-10'),
(4, 2, 'IR', 'Inetrnal Requisition', NULL, NULL),
(5, 2, 'PR', 'Purchase Requisition', NULL, NULL),
(6, 3, 'RAW', 'RAW', NULL, NULL),
(7, 3, 'FG', 'Finish Good', NULL, NULL),
(8, 3, 'ACC', 'Accessories', NULL, NULL),
(9, 3, 'CHAN', 'Chandler', NULL, NULL),
(10, 3, 'Light', 'Light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `electrical_catinfo`
--

CREATE TABLE `electrical_catinfo` (
  `S.No` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  `sub_category` varchar(45) DEFAULT NULL,
  `Item_code` varchar(300) DEFAULT NULL,
  `short_description` varchar(45) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `Watt` varchar(45) DEFAULT NULL,
  `Colour` varchar(45) DEFAULT NULL,
  `Shape` varchar(45) DEFAULT NULL,
  `Brand` varchar(45) DEFAULT NULL,
  `Light_output_Colour` varchar(50) DEFAULT NULL,
  `Vendor` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `Length` varchar(45) DEFAULT NULL,
  `Material` varchar(45) DEFAULT NULL,
  `WireType` varchar(45) DEFAULT NULL,
  `In_Builtswitch` varchar(45) DEFAULT NULL,
  `Pintop` varchar(45) DEFAULT NULL,
  `Holdertype` varchar(45) DEFAULT NULL,
  `Discount` varchar(45) DEFAULT NULL,
  `Images` varchar(45) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'PENDING',
  `cut` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `electrical_catinfo`
--

INSERT INTO `electrical_catinfo` (`S.No`, `category_name`, `sub_category`, `Item_code`, `short_description`, `Size`, `Watt`, `Colour`, `Shape`, `Brand`, `Light_output_Colour`, `Vendor`, `Description`, `Price`, `Length`, `Material`, `WireType`, `In_Builtswitch`, `Pintop`, `Holdertype`, `Discount`, `Images`, `cat_id`, `status`, `cut`) VALUES
(1, '1', '1', 'WHIT-ALUM-GLOS-ROUN-SHAR-23-BREA-HEIG-WEIG-UP-BD-STYL-NOOF-VEND-DISC-IMG-TEST-', '', '', '', 'white', 'round', '', '', 'VENDORE', 'DISCRIPTNOP', '', '23', 'Aluminum', '', '', '', '', '', '', NULL, NULL, NULL),
(2, '1', '3', 'ALUM-CUT-----SIZE-----', '', 'size', '', '', '', '', '', '', '', '', '', 'Aluminum', '', '', '', '', '', '', NULL, NULL, NULL),
(3, '1', '3', 'MA-CU-FE------DE-IM-WI-', '', '', '', '', '', '', '', '', '', '', '', 'material ', 'wireType', '', '', '', '', 'imahe', NULL, NULL, NULL),
(4, '1', '3', 'MA-CU-FE------DE-IM-WI-', '', '', '', '', '', '', '', '', '', '', '', 'material ', 'wireType', '', '', '', '', 'imahe', NULL, NULL, NULL),
(5, '1', '1', '-----------------SH-20--', 'short discription', '', '200watt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL),
(6, '1', '1', '-----------------SH-20-20-', 'short discription', '', '200watt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL),
(7, '1', '1', '-----------------SH--JI-', 'short discription', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'jio', '', NULL, NULL, NULL),
(8, '1', '3', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL),
(9, '1', '1', 'BL-CU-VE-DI-IM-SH-20-DI-SG-SI-BR-', 'short discript', 'sice', '200wtt', 'black', 'sga[e', 'brand', '', 'vendor', 'discrition', '', '', '', '', '', '', '', 'discotun', '', NULL, NULL, NULL),
(10, '1', '1', 'BL-CU-VE-DI-IM-SH-20-DI-SG-SI-BR-', 'short discript', 'sice', '200wtt', 'black', 'sga[e', 'brand', '', 'vendor', 'discrition', '', '', '', '', '', '', '', 'discotun', '', NULL, NULL, NULL),
(11, '1', '1', 'BL-DI-------SI---', '', 'size', '', 'blacni', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL),
(12, '1', '1', 'BL-DI-------SI---', '', 'size', '', 'blacni', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL),
(13, '1', '2', '98-BL-BR-CE-LO-IM-SH-MA-HO-PR-DI-', 'shoert', '98fe', '', 'blak', '', 'brandy', '', '', 'long ', 'price', '', 'matieril', '', '', '', 'holder', 'discoouhnt', 'images1', NULL, NULL, NULL),
(14, '1', '1', 'FE-JK-JK-JK-JK-J-KJ-JK-JK-JK-JK-JK-', 'jk', 'jk', 'jk', 'felwk', 'kjk', 'jkjk', 'jk', 'jk', 'jk', '', '', '', '', '', '', '', 'j', 'jk', NULL, 'PENDING', NULL),
(15, '1', '3', '------WI--------', '', '', '', '', '', '', '', '', '', '', '', '', 'wireType', '', '', '', '', '', NULL, 'PENDING', NULL),
(16, '1', '1', 'VU-VE-SH---------', 'shote', '', '', '', '', '', '', 'vene', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(17, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(18, '1', '1', 'WH------------', '', '', '', 'WHITE', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(19, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(20, '1', '1', 'CU-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(21, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(22, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(23, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(24, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(25, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(26, '1', '1', 'CU-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(27, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(28, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(29, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(30, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(31, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(32, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(33, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(34, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(35, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(36, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(37, '1', '1', '-----------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(38, '1', '1', 'FE-HI-H-IU--------', 'h', '', 'iu', 'yellow', '', '', '', 'hiu', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(39, '1', '1', 'FE-HI-H-IU--------', 'h', '', 'iu', 'skyblue', '', '', '', 'hiu', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(40, '1', '1', 'FE-HI-H-IU--------', 'h', '', 'iu', 'blue', '', '', '', 'hiu', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(41, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(42, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(43, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'PENDING', NULL),
(44, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(45, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(46, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(47, '1', '1', '-----------', '', '', '', 'offwhite', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(48, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(49, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(50, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(51, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(52, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(53, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(54, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(55, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(56, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(57, '1', '1', '-----------', '', '', '', 'yellow', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(58, '1', '1', '-----------', '', '', '', 'black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(59, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(60, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(61, '1', '1', '-----------', '', '', '', 'silver', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(62, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(63, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(64, '1', '1', '-----------', '', '', '', 'white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(65, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(66, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(67, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(68, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(69, '1', '1', 'CU-VE-OR-WA-DI-SH-SI-BR-IM-LO-LI-', 'ortDescription', 'size', 'Watt', 'skyblue', 'shape', 'brand', 'ligh out[', 'VENDER', 'long', '', '', '', '', '', '', '', 'discount', 'images', NULL, '', NULL),
(70, '1', '1', 'FJ-JI-IJ-IJ-IJ-IJ-IJ-IJ-IJ-IJ-J-', 'ij', 'ijj', 'ij', 'red', 'ij', 'ij', 'j', 'ji', 'ij', '', '', '', '', '', '', '', 'ij', 'ij', NULL, '', NULL),
(71, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(72, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(73, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(74, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(75, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(76, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(77, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(78, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(79, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(80, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(81, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(82, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(83, '1', '3', '--------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(84, '1', '1', '-----------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(85, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(86, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(87, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(88, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(89, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(90, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(91, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(92, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(93, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(94, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(95, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(96, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(97, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(98, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(99, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(100, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(101, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(102, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(103, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(104, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(105, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(106, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(107, '1', '1', '------------', '', '', '', 'black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(108, '1', '1', '------------', '', '', '', 'black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(109, '1', '1', '------------', '', '', '', 'black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(110, '1', '1', '------------', '', '', '', 'black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(111, '1', '1', '------------', '', '', '', 'black', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(112, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(113, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(114, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(115, '1', '3', '---------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', NULL),
(116, '1', '3', '---------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(117, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(118, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(119, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(120, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(121, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(122, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(123, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(124, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(125, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(126, '1', '2', '------------', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(127, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(128, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(129, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(130, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(131, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(132, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(133, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(134, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(135, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(136, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(137, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(138, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(139, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(140, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(141, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(142, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(143, '1', '1', '-DI-AB-BU-40-5-------', 'Bulb 40 watt red', '', '40', 'black', '', '', '', 'ABC', '', '', '', '', '', '', '', '', '5', '', NULL, 'Save', NULL),
(144, 'SELECT CATEGORY', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(145, 'SELECT CATEGORY', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(146, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(147, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(148, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(149, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(150, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(151, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(152, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(153, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(154, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(155, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(156, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(157, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(158, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(159, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(160, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(161, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(162, 'SELECT CATEGORY', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(163, 'SELECT CATEGORY', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(164, 'SELECT CATEGORY', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(165, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(166, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(167, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(168, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(169, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(170, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(171, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(172, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(173, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(174, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(175, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(176, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(177, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(178, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(179, '1', '1', 'C:------------', '', '', '', 'offwhite', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(180, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '1723532531', NULL, 'SAVE', NULL),
(181, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '1723532866_Screenshot (60).png', NULL, 'SAVE', NULL),
(182, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '1723533540_Screenshot 2024-08-10 142907.png', NULL, 'SUBMIT', NULL),
(183, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(184, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(185, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(186, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SUBMIT', NULL),
(187, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(188, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(189, '1', '1', 'C:------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '1723535712_Screenshot (60).png', NULL, 'SAVE', NULL),
(190, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(191, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'SAVE', NULL),
(192, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(193, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(194, '1', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(195, '1', '1', 'C:-CU-VE-SH-20-20-SH-12-BR-FJ-JF-I-', 'SHort', '12inch', '200', 'black', 'shape', 'BRAND', 'i', 'Vendor', 'jfo', '', '', '', '', '', '', '', '200%', '1723536284_Screenshot (59).png', NULL, 'APPROOVED', NULL),
(196, '1', '1', '------------', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Save', NULL),
(197, '1', '1', 'C:-CU-VE-SH-U-H-H-JH-HJ-JH-HJ-HJ-', 'short', 'jhjhj', 'u', 'offwhite', 'h', 'hj', 'hjh', 'Vendore', 'hj', '', '', '', '', '', '', '', 'h', '1723536492_Screenshot (60).png', NULL, 'SAVE', NULL),
(198, '6', '4', 'C:-DF-HU-IH-H-UH-UH-UH-HU-HU-HU-HU-', 'hu', 'huih', 'ih', 'h', '', 'uhuh', 'uhu', '', 'hu', '', '', '', '', '', '', '', '', '1723551297_Screenshot (56).png', NULL, 'SAVE', NULL),
(199, '7', '5', 'C:-I-II-JI-JI-JI-JI-JI-IJ-IJ-I-JI-IJ-I-JI-JI-JI-JI-JI-JI-JI-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1723552091_Screenshot (57).png', NULL, 'SAVE', NULL),
(200, '7', '5', 'C:-I-II-JI-JI-JI-JI-JI-IJ-IJ-I-JI-IJ-I-JI-JI-JI-JI-JI-JI-JI-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1723552094_Screenshot (57).png', NULL, 'SAVE', NULL),
(201, '7', '5', 'C:-UG-T-J9-TT-T-T-TT-T-EX-TT-T-TT-T-T-T-TT-EX-EX-EX-T-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1723552926_Screenshot (60).png', NULL, 'SAVE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees_information`
--

CREATE TABLE `employees_information` (
  `id` int(11) NOT NULL,
  `joiner_info` varchar(45) DEFAULT NULL,
  `serial_no` varchar(45) DEFAULT NULL,
  `emp_name` varchar(45) DEFAULT NULL,
  `emp_dob` varchar(45) DEFAULT NULL,
  `emp_department` varchar(45) DEFAULT NULL,
  `emp_mobile_no` varchar(45) DEFAULT NULL,
  `emp_address` varchar(45) DEFAULT NULL,
  `emp_email` varchar(45) DEFAULT NULL,
  `emp_pan_card` varchar(45) DEFAULT NULL,
  `emp_image` varchar(45) DEFAULT NULL,
  `organization_name` varchar(45) DEFAULT NULL,
  `deputed_location` varchar(45) DEFAULT NULL,
  `last_ctc` varchar(45) DEFAULT NULL,
  `current_ctc` varchar(45) DEFAULT NULL,
  `tentative_date` varchar(45) DEFAULT NULL,
  `exact_date` varchar(45) DEFAULT NULL,
  `notice_period` varchar(45) DEFAULT NULL,
  `notice_served` varchar(45) DEFAULT NULL,
  `job_role` varchar(45) DEFAULT NULL,
  `job_description` varchar(45) DEFAULT NULL,
  `date_of_anniversary` varchar(45) DEFAULT NULL,
  `offer_letter_date` varchar(45) DEFAULT NULL,
  `offer_letter_file` varchar(45) DEFAULT NULL,
  `date_of_leaving` varchar(45) DEFAULT NULL,
  `date_of_leaving_file` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `employee_head`
--

CREATE TABLE `employee_head` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `mobile_number` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `pan_card` varchar(45) DEFAULT NULL,
  `image_path` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` varchar(400) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `employee_head`
--

INSERT INTO `employee_head` (`id`, `name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`, `created_by`, `created_date`, `updated_by`) VALUES
(1, 'name', 'DOB', 'deoa', 'MONITL', 'Aaddre', 'email', 'pan', 'imgpath', 'created by ', 'created date', 'updated_by'),
(2, 'hello', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'hello', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'name', 'DOB', 'DEOPS', 'KJK', 'ADDRESemail', 'email', 'pan', 'imgpath', 'created ', 'created daet', NULL),
(5, 'bjk', '', 'bjk', '', 'b', 'kdok', '', 'Image path', 'admin', 'fmire', NULL),
(6, 'nmnais', '', 'on', '', 'on', 'kdok', 'no', 'Image path', 'admin', 'fmire', NULL),
(7, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(8, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(9, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(10, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(11, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(12, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(13, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(14, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', 'INSERT INTO `for_office`.`employee_head` (`name`, `dob`, `department`, `mobile_number`, `address`, `email_address`, `pan_card`, `image_path`,`created_by`,`created_date`) \r\n        VALUES (?, ?,?, ?, ?, ?,?, ? ,?,?)', NULL),
(15, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', '2024-09-04 10:04:48', NULL),
(16, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', '2024-09-04 10:04:49', NULL),
(17, 'manish', '2026-03-02', 'hr', '2024-02-02', 'address', 'enail', 'pan', 'Image path', 'admin', '2024-09-04 10:33:34', NULL),
(18, 'ji', '', 'j', '', 'ij', 'ij', 'ij', 'Image path', 'admin', '2024-09-04 10:34:13', NULL),
(19, 'ji', '', 'j', '', 'ij', 'ij', 'ij', 'Image path', 'admin', '2024-09-04 10:35:26', NULL),
(20, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:35:49', NULL),
(21, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:35:58', NULL),
(22, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:36:27', NULL),
(23, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:36:48', NULL),
(24, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:37:07', NULL),
(25, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:44:52', NULL),
(26, 'manish', '2024-03-02', 'hr', '909090', 'sf', 'jlkj@mf.xpm', 'nfokn', 'Image path', 'admin', '2024-09-04 10:45:31', NULL),
(27, 'manish', '2026-04-03', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:47:06', NULL),
(28, 'gu', '', 'gu', '', 'ug', 'ug', 'ug', 'Image path', 'admin', '2024-09-04 10:47:36', NULL),
(29, 'gu', '', 'gu', '', 'ug', 'ug', 'ug', 'Image path', 'admin', '2024-09-04 10:49:07', NULL),
(30, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:49:14', NULL),
(31, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:49:36', NULL),
(32, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:08', NULL),
(33, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:10', NULL),
(34, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:11', NULL),
(35, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:11', NULL),
(36, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:11', NULL),
(37, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:12', NULL),
(38, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:23', NULL),
(39, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:37', NULL),
(40, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:38', NULL),
(41, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:38', NULL),
(42, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:39', NULL),
(43, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:50:56', NULL),
(44, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:51:29', NULL),
(45, 'i', '', 'iub', '', 'uibuib', 'ui', 'biuuiui', 'Image path', 'admin', '2024-09-04 10:52:04', NULL),
(46, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:52:08', NULL),
(47, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:52:11', NULL),
(48, '', '', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 10:54:50', NULL),
(49, 'manish', '2025-02-02', '', '', '', '', '', 'Image path', 'admin', '2024-09-04 11:08:59', NULL),
(50, 'jojj', '2024-09-18', 'jioj', '99329839', 'ioj', 'oij', 'oi', 'Image path', 'admin', '2024-09-04 11:10:27', NULL),
(51, 'xyz', '2015-02-22', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'xyz@gmail.com', 'guk009302', 'Image path', 'rg1', '2024-09-04 11:21:25', NULL),
(52, 'xyz', '2015-02-22', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'xyz@gmail.com', 'guk009302', 'Image path', 'rg1', '2024-09-04 11:22:04', NULL),
(53, 'xyz', '2015-02-22', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'xyz@gmail.com', 'guk009302', 'Image path', 'rg1', '2024-09-04 11:23:29', NULL),
(54, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 11:26:37', NULL),
(55, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 11:28:49', NULL),
(56, 'n', '2024-09-10', 'un', '8989', 'pm', 'o', 'n', 'Image path', 'admin', '2024-09-04 11:32:14', NULL),
(57, 'n', '2024-09-10', 'un', '8989', 'pm', 'o', 'n', 'Image path', 'admin', '2024-09-04 11:32:27', NULL),
(58, 'ni', '0098-09-09', '9', '89', '89', '87', '8', 'Image path', 'admin', '2024-09-04 11:32:47', NULL),
(59, 'i', '2024-09-12', 'n', '98', 'in', 'in', 'in', 'Image path', 'admin', '2024-09-04 11:33:41', NULL),
(60, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'ankh7236', 'Image path', 'rg1', '2024-09-04 11:34:10', NULL),
(61, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'ankh7236', 'Image path', 'rg1', '2024-09-04 11:34:23', NULL),
(62, 'TGUJH', '2024-09-12', 'ERTFY', '98', 'RFY', '5YTH', '567', 'Image path', 'admin', '2024-09-04 11:35:31', NULL),
(63, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'ankh7236', 'Image path', 'rg1', '2024-09-04 11:35:40', NULL),
(64, 'io', '2024-01-01', 'oi', '98', 'on', 'oin', 'oin', 'Image path', 'admin', '2024-09-04 11:39:35', NULL),
(65, 'io', '2024-01-01', 'oi', '98', 'on', 'oin', 'oin', 'Image path', 'admin', '2024-09-04 11:39:55', NULL),
(66, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'ankh7236', 'Image path', 'rg1', '2024-09-04 11:40:49', NULL),
(67, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 11:41:06', NULL),
(68, 'ion', '2024-09-12', 'io', '4', 'n', 'io', 'nio', 'Image path', 'admin', '2024-09-04 11:41:47', NULL),
(69, 'in', '2026-02-01', 'nio', '9876', 'nio', 'nio', 'nion', 'Image path', 'admin', '2024-09-04 11:43:58', NULL),
(70, 'in', '2026-02-01', 'nio', '9876', 'nio', 'nio', 'nion', 'Image path', 'admin', '2024-09-04 11:44:44', NULL),
(71, 'nn', '2025-02-01', 'oin', '3', 'oin', 'ion', 'i', 'Image path', 'admin', '2024-09-04 11:45:23', NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, './employee/Screenshot (2).png', 'admin', '2024-09-04 11:47:23', NULL),
(73, 'in', '2024-09-11', 'nion', '898', 'oin', 'ion', 'ion', 'Image path', 'admin', '2024-09-04 11:50:14', NULL),
(74, 'in', '2024-09-11', 'nion', '898', 'oin', 'ion', 'ion', 'Image path', 'admin', '2024-09-04 12:00:07', NULL),
(75, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 12:00:12', NULL),
(76, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 12:00:29', NULL),
(77, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 12:04:30', NULL),
(78, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 12:04:49', NULL),
(79, 'Ank', '2024-09-11', 'Sales', '9876543210', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', NULL, '2024-09-04 15:07:57', NULL),
(80, 'Ank', '2024-09-04', 'Sales', '987654321', 'house no -198,  Rama nagar', 'kh', 'guk009302', 'Image path', 'rg1', '2024-09-04 16:15:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_info_line`
--

CREATE TABLE `employee_info_line` (
  `id` int(11) NOT NULL,
  `joiner_new_old` varchar(45) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `old_organization_name` varchar(45) DEFAULT NULL,
  `deputed_to_location` varchar(45) DEFAULT NULL,
  `last_ctc` varchar(45) DEFAULT NULL,
  `current_ctc` varchar(45) DEFAULT NULL,
  `temp` varchar(45) DEFAULT NULL,
  `tentative_date_of_joining` varchar(45) DEFAULT NULL,
  `exact_date_of_joining` date DEFAULT NULL,
  `notice_period` varchar(45) DEFAULT NULL,
  `notice_served` varchar(45) DEFAULT NULL,
  `job_role` varchar(45) DEFAULT NULL,
  `job_description` varchar(45) DEFAULT NULL,
  `date_anniversary` varchar(45) DEFAULT NULL,
  `offer_later_release_date` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `offer_letter_path` varchar(45) DEFAULT NULL,
  `leave_letter_path` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `employee_info_line`
--

INSERT INTO `employee_info_line` (`id`, `joiner_new_old`, `employee_id`, `name`, `old_organization_name`, `deputed_to_location`, `last_ctc`, `current_ctc`, `temp`, `tentative_date_of_joining`, `exact_date_of_joining`, `notice_period`, `notice_served`, `job_role`, `job_description`, `date_anniversary`, `offer_later_release_date`, `date_of_leaving`, `offer_letter_path`, `leave_letter_path`) VALUES
(1, NULL, '24', '', '', '', '', '', NULL, '2024-10-04', '2024-10-02', '', '', '', '', '', '2024-10-12', '2024-09-13', '', ''),
(2, NULL, '25', '', '', '', '', '', NULL, '2024-10-04', '2024-10-02', '', '', '', '', '', '2024-10-12', '2024-09-13', '', ''),
(3, NULL, '26', 'manish', 'nu', 'nu', 'nu', 'nu', NULL, '2024-09-03', '2024-09-11', 'nu', 'nu', 'nu', 'nu', '2024-09-13', '2024-09-21', '2024-09-20', '', ''),
(4, NULL, '28', 'gu', 'gug', '', 'hu', 'giu', NULL, '2024-02-02', '2025-01-03', 'm', 'nbujy', 'gy', 'gy', '2024-02-01', '2024-03-01', '2025-12-02', '', ''),
(5, NULL, '29', 'gu', 'gug', '', 'hu', 'giu', NULL, '2024-02-02', '2025-01-03', 'm', 'nbujy', 'gy', 'gy', '2024-02-01', '2024-03-01', '2025-12-02', '', ''),
(6, NULL, '31', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(7, NULL, '32', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(8, NULL, '33', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(9, NULL, '34', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(10, NULL, '35', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(11, NULL, '36', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(12, NULL, '37', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(13, NULL, '38', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(14, NULL, '39', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(15, NULL, '40', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(16, NULL, '41', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(17, NULL, '42', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(18, NULL, '43', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(19, NULL, '44', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(20, NULL, '45', 'i', 'ub', 'j', 'ihuv', 'yt', NULL, '2024-10-02', '2024-09-25', 'v', 'u', '', 'vuv', '2024-10-01', '2024-10-02', '2024-09-20', '', ''),
(21, NULL, '50', 'jojj', 'oij', 'oij', 'oij', 'ioj', NULL, '2024-09-12', '2024-09-11', 'ioj', 'iojo', 'ijio', 'jio', '2024-09-12', '2024-09-19', '2024-10-11', 'Screenshot (1).png', 'Screenshot (1).png'),
(22, NULL, '51', 'xyz', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-17', '2024-09-09', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-25', '2024-09-25', '2024-09-26', 'new_so1.png', 'new_so.png'),
(23, NULL, '52', 'xyz', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-17', '2024-09-09', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-25', '2024-09-25', '2024-09-26', 'new_so1.png', 'new_so.png'),
(24, NULL, '53', 'xyz', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-17', '2024-09-09', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-25', '2024-09-25', '2024-09-26', 'image (1).png', 'image (1).png'),
(25, NULL, '54', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(26, NULL, '55', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(27, NULL, '56', 'n', 'nmi', 'ni', 'n', 'ii', NULL, '2024-09-10', '2024-09-11', 'oin', 'on', 'on', 'oinion', '2024-09-13', '2024-01-01', '2024-09-13', 'Screenshot 2024-08-28 132551.png', 'Screenshot 2024-08-28 132600.png'),
(28, NULL, '57', 'n', 'nmi', 'ni', 'n', 'ii', NULL, '2024-09-10', '2024-09-11', 'oin', 'on', 'on', 'oinion', '2024-09-13', '2024-01-01', '2024-09-13', 'Screenshot 2024-08-28 132551.png', 'Screenshot 2024-08-28 132600.png'),
(29, NULL, '58', 'ni', '7878', '87', '78', '8778', NULL, '2024-07-08', '2024-07-08', '7', '7887', '87', 'oinion', '2024-09-13', '2024-01-01', '2024-09-13', '', ''),
(30, NULL, '59', 'i', 'mo', 'mo', 'mop', 'mpom', NULL, '2024-09-18', '2024-09-24', 'jii', 'i', 'ini', 'ko', '2024-09-25', '2024-09-21', '2024-09-21', 'Screenshot (1).png', 'Screenshot (1).png'),
(31, NULL, '60', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', 'new_so1.png', 'create_Supplier.html'),
(32, NULL, '61', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', 'new_so1.png', 'create_Supplier.html'),
(33, NULL, '62', 'TGUJH', 'mo', 'mo', 'mop', 'mpom', NULL, '2024-09-18', '2024-09-24', 'jii', 'i', 'ini', 'ko', '2024-09-25', '2024-09-21', '2024-09-21', '', ''),
(34, NULL, '63', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', 'new_so1.png', 'create_Supplier.html'),
(35, NULL, '64', 'io', 'n', 'ion', 'ion', 'ion', NULL, '2024-01-01', '2025-02-01', 'mjio', 'ij', 'n', 'ion', '2024-09-23', '2025-02-01', '2024-12-26', 'Screenshot 2024-08-28 132600.png', 'Screenshot 2024-08-28 132600.png'),
(36, NULL, '65', 'io', 'n', 'ion', 'ion', 'ion', NULL, '2024-01-01', '2025-02-01', 'mjio', 'ij', 'n', 'ion', '2024-09-23', '2025-02-01', '2024-12-26', 'Screenshot 2024-08-28 132600.png', 'Screenshot 2024-08-28 132600.png'),
(37, NULL, '66', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', 'new_so1.png', 'create_Supplier.html'),
(38, NULL, '67', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(39, NULL, '68', 'ion', ' n', 'in', 'ion', 'ion', NULL, '2025-02-02', '2024-01-01', 'on', 'oin', 'ioio', 'noi', '2026-01-01', '2024-09-26', '2024-09-26', 'Screenshot 2024-08-28 132600.png', 'Screenshot (3).png'),
(40, NULL, '69', 'in', 'ion', 'ion', 'n', 'ion', NULL, '2026-02-02', '2026-03-02', 'ion', 'io', 'ionoi', 'noi', '2028-01-02', '2025-03-03', '2027-04-02', 'Screenshot (3).png', 'Screenshot (2).png'),
(41, NULL, '70', 'in', 'ion', 'ion', 'n', 'ion', NULL, '2026-02-02', '2026-03-02', 'ion', 'io', 'ionoi', 'noi', '2028-01-02', '2025-03-03', '2027-04-02', 'Screenshot (3).png', 'Screenshot (2).png'),
(42, NULL, '71', 'nn', 'nion', 'ion', 'oin', 'in', NULL, '2024-09-04', '2025-01-01', 'on', 'n', 'in', 'oinn', '2024-01-01', '2023-01-02', '2025-02-02', 'Screenshot 2024-08-28 132435.png', 'Screenshot (3).png'),
(43, NULL, '73', 'in', 'm', 'm', 'im', 'om', NULL, '2025-03-02', '2024-03-02', 'mm', 'oim', 'oi', 'mio', '2024-01-02', '2025-02-03', '2025-01-02', 'Screenshot 2024-08-28 132600.png', 'Screenshot 2024-08-28 132600.png'),
(44, NULL, '74', 'in', 'm', 'm', 'im', 'om', NULL, '2025-03-02', '2024-03-02', 'mm', 'oim', 'oi', 'mio', '2024-01-02', '2025-02-03', '2025-01-02', 'Screenshot 2024-08-28 132600.png', 'Screenshot 2024-08-28 132600.png'),
(45, NULL, '75', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(46, NULL, '76', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(47, NULL, '77', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(48, NULL, '78', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(49, NULL, '79', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', '', ''),
(50, NULL, '80', 'Ank', 'Algo2bots', 'ghar', '1000', '2000', NULL, '2024-09-04', '2024-09-04', '1 months', 'no', 'Fronted Development', 'lorem ipsum', '2024-09-04', '2024-09-04', '2024-09-04', 'new_so.png', 'new_so1.png');

-- --------------------------------------------------------

--
-- Table structure for table `expenses_gl`
--

CREATE TABLE `expenses_gl` (
  `S_NO` int(11) NOT NULL,
  `GL_code` varchar(45) DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `fields_lookup`
--

CREATE TABLE `fields_lookup` (
  `id` int(11) NOT NULL,
  `attr_id` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `start _date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `fields_lookup`
--

INSERT INTO `fields_lookup` (`id`, `attr_id`, `description`, `start _date`, `end_date`) VALUES
(11, '74', 'transparent', NULL, NULL),
(12, '74', 'white', NULL, NULL),
(13, '74', 'off-white', NULL, NULL),
(14, '74', 'yellow', NULL, NULL),
(15, '75', 'round', NULL, NULL),
(16, '75', 'candle', NULL, NULL),
(17, '145', 'Osram', NULL, NULL),
(18, '145', 'wipro', NULL, NULL),
(19, '75', 'pygmy', NULL, NULL),
(20, '77', 'E-14', '', NULL),
(21, '77', 'E-27', NULL, NULL),
(22, '77', 'GU-10', NULL, NULL),
(23, '144', 'Dimmable', NULL, NULL),
(24, '144', 'Non dimmable', NULL, NULL),
(25, '46', 'black', NULL, NULL),
(26, '46', 'White', NULL, NULL),
(27, '95', 'E-14', NULL, NULL),
(28, '95', 'E-27', NULL, NULL),
(29, '95', 'GU-10', NULL, NULL),
(30, '94', 'Metal', NULL, NULL),
(31, '94', 'plastic', NULL, NULL),
(32, '156', 'Top', NULL, NULL),
(35, '156', 'Bottom', NULL, NULL),
(36, '156', 'Both', NULL, NULL),
(37, '156', 'None', NULL, NULL),
(38, '400', 'Other', NULL, NULL),
(39, '400', 'Circle', NULL, NULL),
(40, '158', 'KG', NULL, NULL),
(41, '158', 'Each', NULL, NULL),
(42, '154', 'Single ply', NULL, NULL),
(43, '154', 'Double Ply', NULL, NULL),
(44, '154', 'Triple ply', NULL, NULL),
(45, '68', 'killi cut', NULL, NULL),
(46, '68', 'Diamond cut', NULL, NULL),
(47, '68', 'Honeycomb', NULL, NULL),
(48, '68', 'Chatai cut', NULL, NULL),
(49, '68', 'Overlong cut', NULL, NULL),
(50, '68', 'Rice cut', NULL, NULL),
(51, '68', 'Deep diamond cut', NULL, NULL),
(52, '68', 'Badam star cut', NULL, NULL),
(53, '68', 'Fali cut', NULL, NULL),
(54, '68', 'Leaf amber', NULL, NULL),
(55, '68', 'Facet Cut', NULL, NULL),
(56, '68', 'Star cut', NULL, NULL),
(57, '68', 'Furl cut', NULL, NULL),
(58, '68', 'Square gula cut', NULL, NULL),
(59, '68', 'Eye cut', NULL, NULL),
(60, '68', 'Lehar cut', NULL, NULL),
(61, '68', 'Triangle cut', NULL, NULL),
(62, '68', 'Flower cut', NULL, NULL),
(63, '66', 'Lavender', NULL, NULL),
(64, '66', 'Purple', NULL, NULL),
(65, '66', 'Grey', NULL, NULL),
(66, '66', 'Red', NULL, NULL),
(67, '66', 'Frosted', NULL, NULL),
(68, '66', 'Clear', NULL, NULL),
(69, '66', 'Green', NULL, NULL),
(70, '66', 'Yellow', NULL, NULL),
(71, '66', 'Blue', NULL, NULL),
(72, '76', '3 watt', NULL, NULL),
(73, '76', '4 watt', NULL, NULL),
(74, '76', '4.5 watt', NULL, NULL),
(75, '76', '13 watt', NULL, NULL),
(76, '76', '15 watt', NULL, NULL),
(77, '76', '23 watt', NULL, NULL),
(78, '76', '25 watt', NULL, NULL),
(79, '76', '40 watt', NULL, NULL),
(80, '76', '50 watt', NULL, NULL),
(81, '76', '60 watt', NULL, NULL),
(82, '146', 'KG', NULL, NULL),
(83, '146', 'Each', NULL, NULL),
(84, '56', 'Red', NULL, NULL),
(85, '56', 'Blue', NULL, NULL),
(86, '56', 'White', NULL, NULL),
(87, '56', 'Yellow', NULL, NULL),
(88, '56', 'black', NULL, NULL),
(89, '56', 'Green', NULL, NULL),
(90, '56', 'Grey', NULL, NULL),
(91, '73', 'Copper', NULL, NULL),
(92, '73', 'Aluminium', NULL, NULL),
(93, '58', '0.5 mm', NULL, NULL),
(94, '58', '0.75 mm', NULL, NULL),
(95, '58', '1 mm', NULL, NULL),
(96, '58', '2.5 mm', NULL, NULL),
(97, '58', '4 mm', NULL, NULL),
(98, '58', '6 mm', NULL, NULL),
(99, '58', '10 mm', NULL, NULL),
(100, '58', '16 mm', NULL, NULL),
(101, '81', 'Single-core', NULL, NULL),
(102, '81', '2-Core', NULL, NULL),
(103, '81', '4-Taar', NULL, NULL),
(104, '81', '4- Pair', NULL, NULL),
(107, '87', 'On / Off one way switch', NULL, NULL),
(108, '87', 'Foot padel switch', NULL, NULL),
(109, '88', '2 Pintop', NULL, NULL),
(110, '88', '3 Pintop', NULL, NULL),
(111, '93', 'KG ', NULL, NULL),
(112, '93', 'Each', NULL, NULL),
(113, '164', 'Lavender', NULL, NULL),
(114, '164', 'Purple', NULL, NULL),
(115, '164', 'Grey', NULL, NULL),
(116, '164', 'Red', NULL, NULL),
(117, '164', 'Frosted', NULL, NULL),
(118, '164', 'Clear', NULL, NULL),
(119, '164', 'Green', NULL, NULL),
(120, '164', 'Yellow', NULL, NULL),
(121, '164', 'Blue', NULL, NULL),
(122, '165', 'killi cut', NULL, NULL),
(123, '165', 'Diamond cut', NULL, NULL),
(124, '165', 'Honeycomb cut', NULL, NULL),
(125, '165', 'Overlong cut', NULL, NULL),
(126, '165', 'Rice cut', NULL, NULL),
(127, '165', 'Star Cut', NULL, NULL),
(128, '165', 'Flower cut', NULL, NULL),
(129, '171', 'Single ply', NULL, NULL),
(130, '171', 'Double Ply', NULL, NULL),
(131, '171', 'Triple ply', NULL, NULL),
(132, '401', 'Top ', NULL, NULL),
(133, '401', 'Bottom', NULL, NULL),
(134, '401', 'Both', NULL, NULL),
(135, '401', 'None', NULL, NULL),
(136, '180', 'Circle', NULL, NULL),
(137, '180', 'Other', NULL, NULL),
(138, '172', 'Top', NULL, NULL),
(139, '172', 'Bottom', NULL, NULL),
(140, '172', 'Both', NULL, NULL),
(141, '172', 'None', NULL, NULL),
(142, '174', 'KG', NULL, NULL),
(143, '174', 'Each', NULL, NULL),
(144, '199', 'Lavender', NULL, NULL),
(145, '199', 'Purple', NULL, NULL),
(146, '199', 'Grey', NULL, NULL),
(147, '199', 'Red', NULL, NULL),
(148, '199', 'Frosted', NULL, NULL),
(149, '199', 'Clear', NULL, NULL),
(150, '199', 'Green', NULL, NULL),
(151, '199', 'Yellow', NULL, NULL),
(152, '199', 'Blue', NULL, NULL),
(155, '200', 'killi cut', NULL, NULL),
(156, '200', 'Diamond cut', NULL, NULL),
(157, '200', 'Honeycomb cut', NULL, NULL),
(158, '200', 'Fali cut ', NULL, NULL),
(159, '200', 'Star Cut', NULL, NULL),
(160, '200', 'Eye cut', NULL, NULL),
(161, '210', 'KG', NULL, NULL),
(162, '210', 'Each', NULL, NULL),
(163, '207', 'Single ply ', NULL, NULL),
(164, '207', 'Double Ply', NULL, NULL),
(165, '207', 'Triple Ply', NULL, NULL),
(166, '208', 'Top', NULL, NULL),
(167, '208', 'Bottom', NULL, NULL),
(168, '208', 'Both', NULL, NULL),
(169, '208', 'None', NULL, NULL),
(170, '403', 'Other', NULL, NULL),
(171, '403', 'Circle', NULL, NULL),
(172, '182', 'Lavender', NULL, NULL),
(173, '182', 'Purple', NULL, NULL),
(174, '182', 'Grey', NULL, NULL),
(175, '182', 'Red', NULL, NULL),
(176, '182', 'Frosted', NULL, NULL),
(177, '182', 'Clear', NULL, NULL),
(178, '182', 'Green', NULL, NULL),
(179, '182', 'Yellow', NULL, NULL),
(180, '182', 'Blue', NULL, NULL),
(181, '249', 'Lavender', NULL, NULL),
(182, '249', 'Purple', NULL, NULL),
(183, '249', 'Grey', NULL, NULL),
(184, '249', 'Red', NULL, NULL),
(185, '249', 'Frosted', NULL, NULL),
(186, '249', 'Clear', NULL, NULL),
(187, '249', 'Green', NULL, NULL),
(188, '249', 'Yellow', NULL, NULL),
(189, '249', 'Blue', NULL, NULL),
(190, '250', 'killi cut', NULL, NULL),
(191, '250', 'Diamond cut', NULL, NULL),
(192, '250', 'Honeycomb cut', NULL, NULL),
(193, '250', 'Fali cut', NULL, NULL),
(194, '250', 'Leaf cut', NULL, NULL),
(195, '250', 'Facet cut', NULL, NULL),
(196, '250', 'Star cut', NULL, NULL),
(197, '250', 'Furl cut', NULL, NULL),
(198, '250', 'Square gula cut', NULL, NULL),
(199, '250', 'Eye cut', NULL, NULL),
(200, '250', 'Lehar cut', NULL, NULL),
(201, '250', 'Triangle cut', NULL, NULL),
(202, '250', 'Flower cut', NULL, NULL),
(203, '405', 'Other ', NULL, NULL),
(204, '405', 'Circle', NULL, NULL),
(205, '257', 'Single ply', NULL, NULL),
(206, '257', 'Double ply', NULL, NULL),
(207, '257', 'Triple ply', NULL, NULL),
(208, '260', 'KG', '', NULL),
(209, '260', 'Each', NULL, NULL),
(210, '258', 'Top', NULL, NULL),
(211, '258', 'Bottom', NULL, NULL),
(212, '258', 'Both', NULL, NULL),
(213, '258', 'None', NULL, NULL),
(214, '183', 'killi cut', NULL, NULL),
(215, '183', 'Diamond cut', NULL, NULL),
(216, '183', 'Honeycomb cut', NULL, NULL),
(217, '183', 'chatai cut', NULL, NULL),
(218, '183', 'Overlong cut', NULL, NULL),
(219, '183', 'Rice cut', NULL, NULL),
(220, '183', 'Star cut', NULL, NULL),
(221, '183', 'Traingle cut', NULL, NULL),
(222, '183', 'Flower cut', NULL, NULL),
(223, '183', 'Lehar cut', NULL, NULL),
(224, '189', 'Single ply', NULL, NULL),
(225, '189', 'Double ply', NULL, NULL),
(226, '189', 'Triple ply', NULL, NULL),
(227, '190', 'Top', NULL, NULL),
(228, '190', 'Bottom', NULL, NULL),
(229, '190', 'Both', NULL, NULL),
(230, '190', 'None', NULL, NULL),
(232, '192', 'KG', NULL, NULL),
(233, '192', 'Each', NULL, NULL),
(234, '406', 'Other', NULL, NULL),
(235, '406', 'Circle', NULL, NULL),
(236, '292', 'Box pleated', NULL, NULL),
(237, '292', 'Empire', NULL, NULL),
(238, '292', 'Cone', NULL, NULL),
(239, '292', 'Tapered Drum', NULL, NULL),
(240, '292', 'Drum', NULL, NULL),
(241, '292', 'Dome', NULL, NULL),
(242, '292', 'Bell', NULL, NULL),
(243, '296', 'Silk', NULL, NULL),
(244, '296', 'coton', NULL, NULL),
(245, '298', 'Top', NULL, NULL),
(246, '298', 'Bottom', NULL, NULL),
(247, '298', 'Both', NULL, NULL),
(248, '298', 'none', NULL, NULL),
(249, '301', 'E-14', NULL, NULL),
(250, '301', 'E-27', NULL, NULL),
(251, '302', 'Galler from Top', NULL, NULL),
(252, '302', 'Gallery from Bottom', NULL, NULL),
(253, '305', 'Soft', NULL, NULL),
(254, '305', 'Hard', NULL, NULL),
(255, '306', 'Lining Yes', NULL, NULL),
(256, '306', 'Lining No', NULL, NULL),
(257, '408', 'Powder coating', NULL, NULL),
(258, '408', 'paint', NULL, NULL),
(259, '410', 'Each', NULL, NULL),
(260, '353', 'Meter', NULL, NULL),
(261, '353', 'each', NULL, NULL),
(262, '360', 'meter', NULL, NULL),
(263, '360', 'each', NULL, NULL),
(264, '367', 'meter', NULL, NULL),
(265, '367', 'each', NULL, NULL),
(266, '374', 'meter', NULL, NULL),
(267, '374', 'each', NULL, NULL),
(268, '285', 'White', NULL, NULL),
(269, '285', 'Black', NULL, NULL),
(270, '285', 'blue', NULL, NULL),
(271, '285', 'green', NULL, NULL),
(272, '285', 'pink', NULL, NULL),
(273, '285', 'red', NULL, NULL),
(274, '97', 'Each', NULL, NULL),
(275, '97', 'Other', NULL, NULL),
(313, '27', 'transparent', NULL, NULL),
(314, '27', 'white', NULL, NULL),
(315, '27', 'off-white', NULL, NULL),
(316, '27', 'yellow', NULL, NULL),
(317, '27', 'Silver', NULL, NULL),
(326, '446', 'new', NULL, NULL),
(327, '447', '1', NULL, NULL),
(328, '447', 'shape', NULL, NULL),
(329, '458', 'KG', NULL, NULL),
(330, '458', 'Gram', NULL, NULL),
(331, '78', 'plastic', NULL, NULL),
(332, '78', 'Bakelite', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gate_entry_form`
--

CREATE TABLE `gate_entry_form` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(45) DEFAULT NULL,
  `no_of_boxes` int(11) DEFAULT NULL,
  `fireght_charges` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `recieving_datetime` varchar(45) DEFAULT NULL,
  `mode_of_transport` varchar(45) DEFAULT NULL,
  `vehicle_number` varchar(45) DEFAULT NULL,
  `recieved_by` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `po_number` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `gate_entry_form`
--

INSERT INTO `gate_entry_form` (`id`, `invoice_number`, `no_of_boxes`, `fireght_charges`, `weight`, `recieving_datetime`, `mode_of_transport`, `vehicle_number`, `recieved_by`, `remarks`, `po_number`, `created_by`) VALUES
(1, 'jlk', NULL, NULL, '89', NULL, NULL, '89', NULL, '8989', 'jfdkl', NULL),
(2, 'onvoice', NULL, NULL, '22', NULL, NULL, 'FLRANDO', NULL, 'dd', 'jfkls', NULL),
(3, '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', NULL),
(4, 'hu', NULL, NULL, '', NULL, NULL, 'huh', NULL, '', 'hu', NULL),
(5, '', NULL, NULL, 'jdwi', NULL, NULL, '', NULL, '', '', NULL),
(6, 'hjdjh', NULL, NULL, 'hj', NULL, NULL, 'kj', NULL, 'hj', 'g', NULL),
(7, 'hjdjh', NULL, NULL, 'hj', NULL, NULL, 'kj', NULL, 'hj', 'g', NULL),
(8, 'hjdjh', NULL, 'hello', 'hj', '2024-08-28 12:32:26', NULL, 'kj', NULL, 'hj', 'g', NULL),
(9, 'hjdjh', 0, 'hello', 'hj', '2024-08-28 12:32:55', NULL, 'kj', NULL, 'hj', 'g', NULL),
(10, 'INVOICE ', 0, 'hello', 'jl', '2024-08-28 12:33:46', NULL, 'kfsjl', NULL, 'remaarks', 'po9949', NULL),
(11, 'ygygygy', 0, 'hello', 'jj', '2024-08-28 12:34:27', NULL, 'jhj', NULL, 'mn', 'gtygyg', NULL),
(12, 'ygygygy', 0, 'hello', 'jj', '2024-08-28 12:35:02', 'Trucj', 'jhj', 'jj', 'mn', 'gtygyg', NULL),
(13, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:35:57', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(14, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:37:05', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(15, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:37:13', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(16, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:39:34', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(17, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:40:21', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(18, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:41:33', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(19, NULL, NULL, 'hello', NULL, '2024-08-28 12:41:40', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:41:56', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(21, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:50:20', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(22, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:51:05', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(23, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:51:20', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(24, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:51:29', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(25, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:51:43', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(26, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:52:10', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(27, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:52:27', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(28, 'invoice number', 200, 'hello', 'weight', '2024-08-28 12:52:41', 'truck', 'vehicle nuber', 'Balbeer ', 'Recieved by Balbeer', 'po ', NULL),
(29, 'hu', 0, 'hello', 'uh', '2024-08-28 12:54:46', 'u', 'huh', 'uh', 'u', 'hu', NULL),
(30, 'ohj', 0, 'hello', 'ih', '2024-08-28 12:55:16', 'hji', 'hi', 'hi', 'hi', 'jiojoi', NULL),
(31, 'ohj', 0, 'hello', 'ih', '2024-08-28 12:57:13', 'hji', 'hi', 'hi', 'hi', 'jiojoi', NULL),
(32, 'ohj', 0, 'hello', 'ih', '2024-08-28 12:58:03', 'hji', 'hi', 'hi', 'hi', 'jiojoi', NULL),
(33, 'ohj', 0, 'hello', 'ih', '2024-08-28 12:58:06', 'hji', 'hi', 'hi', 'hi', 'jiojoi', NULL),
(34, 'ohj', 0, 'hello', 'ih', '2024-08-28 12:58:08', 'hji', 'hi', 'hi', 'hi', 'jiojoi', NULL),
(35, 'u', 0, 'hello', 'bub', '2024-08-28 12:58:25', 'u', 'bub', 'uibiu', 'jio', 'yui', NULL),
(36, 'u', 0, 'hello', 'bub', '2024-08-28 12:58:35', 'u', 'bub', 'uibiu', 'jio', 'yui', NULL),
(37, '', 0, 'hello', '', '2024-08-28 13:01:08', '', '', '', '', '', NULL),
(38, '', 0, 'hello', '', '2024-08-28 13:02:47', '', '', '', '', '', NULL),
(39, '', 0, 'hello', '', '2024-08-28 13:04:01', '', '', '', '', '', NULL),
(40, '', 0, 'hello', '', '2024-08-28 13:04:32', '', '', '', '', '', NULL),
(41, '', 0, 'hello', '', '2024-08-28 13:04:39', '', '', '', '', '', NULL),
(42, '', 0, 'hello', '', '2024-08-28 13:05:08', '', '', '', '', '', NULL),
(43, '', 0, 'hello', '', '2024-08-28 13:05:15', '', '', '', '', '', NULL),
(44, '', 0, 'hello', '', '2024-08-28 13:05:49', '', '', '', '', '', NULL),
(45, 'yu', 0, 'hello', 'uyu', '2024-08-28 20:45:04', 'yu', 'yu', 'yu', 'yuy', '7t', NULL),
(46, 'yu', 0, 'hello', 'uyu', '2024-08-28 20:46:34', 'yu', 'yu', 'yu', 'yuy', '7t', NULL),
(47, '', 0, 'hello', '', '2024-08-28 20:47:26', '', '', '', '', '', NULL),
(48, 'gy', 0, 'hello', 'yg', '2024-08-28 20:47:41', 'gy', 'gyg', 'yg', 'yg', 'gy', NULL),
(49, 'gy', 0, 'hello', 'yg', '2024-08-28 20:48:44', 'gy', 'gyg', 'yg', 'yg', 'gy', NULL),
(50, 'gy', 0, 'hello', 'yg', '2024-08-28 20:48:48', 'gy', 'gyg', 'yg', 'yg', 'gy', NULL),
(51, 'gy', 0, 'hello', 'yg', '2024-08-28 20:48:50', 'gy', 'gyg', 'yg', 'yg', 'gy', NULL),
(52, 'gy', 0, 'hello', 'yg', '2024-08-28 20:49:24', 'gy', 'gyg', 'yg', 'yg', 'gy', NULL),
(53, 'gy', 0, 'hello', 'yg', '2024-08-28 20:49:55', 'gy', 'gyg', 'yg', 'yg', 'gy', NULL),
(54, 'gy', 0, 'hello', 'yg', '2024-08-28 20:50:07', 'gy', 'gyg', 'yg', 'yg', 'gy', NULL),
(55, 'jnj', 0, 'hello', 'j', '2024-08-28 20:52:00', 'nj', 'njnjn', 'njnj', 'nnjnJN', 'jnjn', NULL),
(56, 'jnj', 0, 'hello', 'j', '2024-08-28 20:53:46', 'nj', 'njnjn', 'njnj', 'nnjnJN', 'jnjn', NULL),
(57, 'huh', 0, 'hello', 'uh', '2024-08-28 20:55:52', 'u', 'hu', 'u', 'hu', 'hu', NULL),
(58, 'huh', 0, 'hello', 'uh', '2024-08-28 20:55:54', 'u', 'hu', 'u', 'hu', 'hu', NULL),
(59, 'huh', 0, 'hello', 'uh', '2024-08-28 20:55:57', 'u', 'hu', 'u', 'hu', 'hu', NULL),
(60, 'huh', 0, 'hello', 'uh', '2024-08-28 20:56:34', 'u', 'hu', 'u', 'hu', 'hu', NULL),
(61, 'huh', 0, 'hello', 'uh', '2024-08-28 20:56:56', 'u', 'hu', 'u', 'hu', 'hu', NULL),
(62, 'gu', 0, 'hello', 'ug', '2024-08-31 07:29:44', 'gg', 'ug', 'guard', 'g', 'guhgug', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grn_goods_receipt`
--

CREATE TABLE `grn_goods_receipt` (
  `inventory_id` int(11) NOT NULL,
  `item_id` varchar(50) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `item_discription` varchar(45) DEFAULT NULL,
  `warehouse_location` varchar(45) DEFAULT NULL,
  `warehouse_code` varchar(45) DEFAULT NULL,
  `receiving_item` varchar(45) DEFAULT NULL,
  `purchase_order_id` varchar(45) DEFAULT NULL,
  `purchase_order_date` varchar(50) DEFAULT NULL,
  `purchase_order_line` varchar(45) DEFAULT NULL,
  `received_quantity` varchar(50) DEFAULT NULL,
  `recevied_date` varchar(50) DEFAULT NULL,
  `receiving_time` varchar(45) DEFAULT NULL,
  `finished` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `dimension` varchar(45) DEFAULT NULL,
  `box_no` varchar(50) DEFAULT NULL,
  `box_detail` varchar(45) DEFAULT NULL,
  `checked_by` varchar(45) DEFAULT NULL,
  `approved` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `serial_number_to` varchar(50) DEFAULT NULL,
  `serial_number_from` varchar(50) DEFAULT NULL,
  `vendor_name` varchar(45) DEFAULT NULL,
  `mode_of_transport` varchar(45) DEFAULT NULL,
  `vehical_detail` varchar(45) DEFAULT NULL,
  `invoice_num` varchar(50) DEFAULT NULL,
  `invoice_date` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `grn_goods_receipt`
--

INSERT INTO `grn_goods_receipt` (`inventory_id`, `item_id`, `item_code`, `item_discription`, `warehouse_location`, `warehouse_code`, `receiving_item`, `purchase_order_id`, `purchase_order_date`, `purchase_order_line`, `received_quantity`, `recevied_date`, `receiving_time`, `finished`, `weight`, `dimension`, `box_no`, `box_detail`, `checked_by`, `approved`, `remarks`, `serial_number_to`, `serial_number_from`, `vendor_name`, `mode_of_transport`, `vehical_detail`, `invoice_num`, `invoice_date`, `amount`) VALUES
(2, '7878787878', '78', '78', '78', '78', '787', '87', '87', '87', '87', '87', '87', '87', 'weight', '78', '78', '78', '78', '78', '78', '8', '78', '78', '7878', '788', '78', '78', '87'),
(3, 'item_id', 'item_code', 'item_discription', 'warehouse_location', 'warehouse_code', 'receiving_item', 'purchase_order_id', 'purchase_order_date', 'purchase_order_line', 'received_quantity', 'recevied_date', 'receiving_time', 'finished', 'weight', 'dimension', 'box_no', 'box_detail', 'checked_by', 'approved', 'remarks', 'serial_number_to', 'serial_number_from', 'vendor_name', 'mode_of_transport', 'vehical_detail', 'invoice_num', 'invoice_date', 'amount'),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '543', '999', 'item', 'rack 1', '0033', 'iter', '', 'jkjk', 'jkjk', 'jk', '', '', 'jk', 'jk', '', 'jkjkjk', 'jkjk', 'jk', 'jkjkjk', 'jkjk', '777878', '7878', 'jk', '87', '8787', '8787', '0787-08-08', '87878787'),
(15, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `grn_goods_receipt_header`
--

CREATE TABLE `grn_goods_receipt_header` (
  `id` int(11) NOT NULL,
  `warehouse_location` varchar(45) DEFAULT NULL,
  `warehouse_code` varchar(45) DEFAULT NULL,
  `purchase_order_id` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `vendor_name` varchar(45) DEFAULT NULL,
  `mode_of_transport` varchar(45) DEFAULT NULL,
  `vehical_detail` varchar(45) DEFAULT NULL,
  `invoice_num` varchar(50) DEFAULT NULL,
  `sub_inventory` varchar(45) DEFAULT NULL,
  `grn_goods_receipt_headercol` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `grn_goods_receipt_header`
--

INSERT INTO `grn_goods_receipt_header` (`id`, `warehouse_location`, `warehouse_code`, `purchase_order_id`, `remarks`, `vendor_name`, `mode_of_transport`, `vehical_detail`, `invoice_num`, `sub_inventory`, `grn_goods_receipt_headercol`) VALUES
(1, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(2, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(3, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(4, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(5, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(6, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(7, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(9, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(10, NULL, '1', '479', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(11, NULL, '1', '479', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(12, NULL, '1', '479', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(13, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(14, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(15, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(16, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(17, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(18, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(19, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(20, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(21, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(22, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(23, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(24, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(25, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(26, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(27, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(28, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(29, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(30, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(31, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(32, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(33, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(34, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(35, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(36, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(37, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(38, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(39, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(40, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(41, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(42, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(43, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(44, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(45, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(46, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(47, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(48, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(49, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(50, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(51, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(52, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(53, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(54, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(55, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(56, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(57, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(58, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(59, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(60, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(61, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(62, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(63, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(64, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(65, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(66, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(67, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(68, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(69, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(70, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(71, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(72, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(73, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(74, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(75, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(76, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(77, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(78, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(79, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(80, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(81, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(82, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(83, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(84, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(85, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(86, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(87, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(88, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(89, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(90, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(91, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(92, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(93, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(94, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(95, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(96, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(97, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(98, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(99, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(100, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(101, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(102, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(103, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(104, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(105, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(106, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(107, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(108, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(109, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(110, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(111, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(112, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(113, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(114, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(115, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(116, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(117, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(118, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(119, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(120, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(121, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(122, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(123, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(124, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(125, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(126, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(127, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(128, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(129, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(130, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(131, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(132, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(133, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(134, NULL, '1', '579', NULL, 'vendore ', NULL, NULL, NULL, NULL, NULL),
(135, NULL, '1', '579', NULL, 'vendore ', NULL, NULL, NULL, NULL, NULL),
(136, NULL, '1', '580', NULL, 'ni', NULL, NULL, NULL, NULL, NULL),
(137, NULL, '1', '580', NULL, 'ni', NULL, NULL, NULL, NULL, NULL),
(138, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(139, NULL, '1', '580', NULL, 'ni', NULL, NULL, NULL, NULL, NULL),
(140, NULL, '1', '580', NULL, 'ni', NULL, NULL, NULL, NULL, NULL),
(141, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(142, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(143, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(144, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(145, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL),
(146, NULL, '1', '583', NULL, 'nio', NULL, NULL, NULL, NULL, NULL),
(147, NULL, '1', '584', NULL, 'noi', NULL, NULL, NULL, NULL, NULL),
(148, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(149, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(150, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(151, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(152, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(153, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(154, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(155, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(156, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(157, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(158, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(159, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(160, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(161, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(162, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(163, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(164, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(165, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(166, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(167, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(168, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(169, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(170, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(171, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(172, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(173, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(174, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(175, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(176, NULL, '1', '500', NULL, 'i', NULL, NULL, NULL, NULL, NULL),
(177, NULL, '1', '580', NULL, 'ni', NULL, NULL, NULL, NULL, NULL),
(178, NULL, '1', '580', NULL, 'ni', NULL, NULL, NULL, NULL, NULL),
(179, NULL, '1', '580', NULL, 'ni', NULL, NULL, NULL, NULL, NULL),
(180, NULL, '1', '584', NULL, 'noi', NULL, NULL, NULL, NULL, NULL),
(181, NULL, '1', '584', NULL, 'noi', NULL, NULL, NULL, NULL, NULL),
(182, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(183, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(184, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(185, NULL, '1', '583', NULL, 'nio', NULL, NULL, NULL, NULL, NULL),
(186, NULL, '1', '583', NULL, 'nio', NULL, NULL, NULL, NULL, NULL),
(187, NULL, '1', '583', NULL, 'nio', NULL, NULL, NULL, NULL, NULL),
(188, NULL, '1', '584', NULL, 'noi', NULL, NULL, NULL, NULL, NULL),
(189, NULL, '1', '584', NULL, 'noi', NULL, NULL, NULL, NULL, NULL),
(190, NULL, '1', '585', NULL, 'Vendire name', NULL, NULL, NULL, NULL, NULL),
(191, NULL, '1', '478', NULL, 'vendore name', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grn_line_items`
--

CREATE TABLE `grn_line_items` (
  `id` int(11) NOT NULL,
  `grn_head_id` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT current_timestamp(),
  `po_line_id` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `po_number` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `grn_line_items`
--

INSERT INTO `grn_line_items` (`id`, `grn_head_id`, `item_code`, `created_by`, `updated_by`, `create_time`, `update_time`, `po_line_id`, `price`, `po_number`) VALUES
(1, '1', 'item coe', 'user', 'user2', '2024-09-07 07:01:23', '2024-09-07 07:01:23', NULL, NULL, NULL),
(2, '32', 'item 1', 'admin', 'admin', '2024-09-07 09:55:57', '2024-09-07 09:55:57', '182', NULL, NULL),
(3, '32', 'item 1', 'admin', 'admin', '2024-09-07 10:05:49', '2024-09-07 10:05:49', '182', NULL, NULL),
(4, '32', 'item 1', 'admin', 'admin', '2024-09-07 10:07:06', '2024-09-07 10:07:06', '182', NULL, NULL),
(5, '33', 'item 1', 'admin', 'admin', '2024-09-07 10:08:36', '2024-09-07 10:08:36', '182', NULL, NULL),
(6, '33', 'item 1', 'admin', 'admin', '2024-09-07 10:08:54', '2024-09-07 10:08:54', '182', NULL, NULL),
(7, '33', 'item 1', 'admin', 'admin', '2024-09-07 10:09:21', '2024-09-07 10:09:21', '182', NULL, NULL),
(8, '33', 'item 1', 'admin', 'admin', '2024-09-07 10:09:49', '2024-09-07 10:09:49', '182', NULL, NULL),
(9, '34', 'item 1', 'admin', 'admin', '2024-09-07 10:10:41', '2024-09-07 10:10:41', '182', NULL, NULL),
(10, '35', 'item 1', 'admin', 'admin', '2024-09-07 10:11:00', '2024-09-07 10:11:00', '182', NULL, NULL),
(11, '36', 'item 1', 'admin', 'admin', '2024-09-07 10:12:40', '2024-09-07 10:12:40', '182', NULL, NULL),
(12, '37', 'item 1', 'admin', 'admin', '2024-09-07 10:19:58', '2024-09-07 10:19:58', '182', NULL, NULL),
(13, '37', 'item 1', 'admin', 'admin', '2024-09-07 10:20:36', '2024-09-07 10:20:36', '182', NULL, NULL),
(14, '', 'item 1', 'admin', 'admin', '2024-09-07 10:20:59', '2024-09-07 10:20:59', '182', NULL, NULL),
(15, '', 'item 1', 'admin', 'admin', '2024-09-07 10:21:14', '2024-09-07 10:21:14', '182', NULL, NULL),
(16, '38', 'item 1', 'admin', 'admin', '2024-09-07 10:21:43', '2024-09-07 10:21:43', '182', NULL, NULL),
(17, '39', 'item 1', 'admin', 'admin', '2024-09-07 10:22:54', '2024-09-07 10:22:54', '182', NULL, NULL),
(18, '40', 'item 1', 'admin', 'admin', '2024-09-07 10:23:40', '2024-09-07 10:23:40', '182', NULL, NULL),
(19, '', 'item 1', 'admin', 'admin', '2024-09-07 10:26:59', '2024-09-07 10:26:59', '182', NULL, NULL),
(20, '41', 'item 1', 'admin', 'admin', '2024-09-07 10:28:04', '2024-09-07 10:28:04', '182', NULL, NULL),
(21, '41', 'item 1', 'admin', 'admin', '2024-09-07 10:29:36', '2024-09-07 10:29:36', '182', NULL, NULL),
(22, '42', 'item 1', 'admin', 'admin', '2024-09-07 11:02:17', '2024-09-07 11:02:17', '182', NULL, NULL),
(23, '43', 'item 1', 'admin', 'admin', '2024-09-07 11:04:34', '2024-09-07 11:04:34', '182', NULL, NULL),
(24, '51', 'item 1', 'admin', 'admin', '2024-09-07 11:27:10', '2024-09-07 11:27:10', '182', NULL, NULL),
(25, '52', 'item 1', 'admin', 'admin', '2024-09-07 11:48:37', '2024-09-07 11:48:37', '182', NULL, NULL),
(26, '', 'item 1', 'admin', 'admin', '2024-09-07 11:54:40', '2024-09-07 11:54:40', '182', NULL, NULL),
(27, '', 'item 1', 'admin', 'admin', '2024-09-07 11:56:32', '2024-09-07 11:56:32', '182', NULL, NULL),
(28, '', 'item 1', 'admin', 'admin', '2024-09-07 11:56:46', '2024-09-07 11:56:46', '182', NULL, NULL),
(29, '53', 'item 1', 'admin', 'admin', '2024-09-07 11:58:00', '2024-09-07 11:58:00', '182', NULL, NULL),
(30, '', 'item 1', 'admin', 'admin', '2024-09-07 11:58:19', '2024-09-07 11:58:19', '182', NULL, NULL),
(31, '', 'item 1', 'admin', 'admin', '2024-09-07 11:58:44', '2024-09-07 11:58:44', '182', NULL, NULL),
(32, '', 'item 1', 'admin', 'admin', '2024-09-07 11:59:07', '2024-09-07 11:59:07', '182', NULL, NULL),
(33, '54', 'item 1', 'admin', 'admin', '2024-09-07 11:59:21', '2024-09-07 11:59:21', '182', NULL, NULL),
(34, '', 'item 1', 'admin', 'admin', '2024-09-07 12:01:32', '2024-09-07 12:01:32', '182', NULL, NULL),
(35, '55', 'item 2', NULL, NULL, '2024-09-07 12:05:39', '2024-09-07 12:05:39', '183', NULL, NULL),
(36, '55', 'item 2', NULL, NULL, '2024-09-07 12:05:51', '2024-09-07 12:05:51', '183', NULL, NULL),
(37, '55', 'item 2', NULL, NULL, '2024-09-07 12:05:52', '2024-09-07 12:05:52', '183', NULL, NULL),
(38, '56', 'item 1', NULL, NULL, '2024-09-07 12:06:12', '2024-09-07 12:06:12', '182', NULL, NULL),
(39, '', 'item 1', NULL, NULL, '2024-09-07 12:07:43', '2024-09-07 12:07:43', '182', NULL, NULL),
(40, '', 'item 1', 'admin', 'admin', '2024-09-07 12:08:46', '2024-09-07 12:08:46', '182', NULL, NULL),
(41, '57', 'item 1', 'admin', 'admin', '2024-09-07 12:09:10', '2024-09-07 12:09:10', '182', NULL, NULL),
(42, '', 'item 1', NULL, NULL, '2024-09-07 12:09:43', '2024-09-07 12:09:43', '182', NULL, NULL),
(43, '', 'item 1', 'admin', 'admin', '2024-09-07 12:10:09', '2024-09-07 12:10:09', '182', NULL, NULL),
(44, '', 'item 1', 'admin', 'admin', '2024-09-07 12:11:23', '2024-09-07 12:11:23', '182', NULL, NULL),
(45, '', 'item 1', 'admin', 'admin', '2024-09-07 12:11:52', '2024-09-07 12:11:52', '182', NULL, NULL),
(46, '', 'item 1', 'admin', 'admin', '2024-09-07 12:26:40', '2024-09-07 12:26:40', '182', NULL, NULL),
(47, '', 'item 1', 'rg1', 'rg1', '2024-09-07 12:27:20', '2024-09-07 12:27:20', '182', NULL, NULL),
(48, '', 'item 1', 'admin', 'admin', '2024-09-07 12:28:11', '2024-09-07 12:28:11', '182', NULL, NULL),
(49, '', 'item 1', 'admin', 'admin', '2024-09-07 12:28:39', '2024-09-07 12:28:39', '182', NULL, NULL),
(50, '', 'item 1', 'admin', 'admin', '2024-09-07 12:29:04', '2024-09-07 12:29:04', '182', NULL, NULL),
(51, '', 'item 1', 'admin', 'admin', '2024-09-07 12:29:22', '2024-09-07 12:29:22', '182', NULL, NULL),
(52, '', 'item 1', 'admin', 'admin', '2024-09-07 12:29:35', '2024-09-07 12:29:35', '182', NULL, NULL),
(53, '', 'item 1', 'admin', 'admin', '2024-09-07 12:39:26', '2024-09-07 12:39:26', '182', NULL, NULL),
(54, '', 'item 1', 'admin', 'admin', '2024-09-07 12:40:32', '2024-09-07 12:40:32', '182', NULL, NULL),
(55, '59', 'item 1', 'admin', 'admin', '2024-09-07 12:41:49', '2024-09-07 12:41:49', '182', NULL, NULL),
(56, '', 'item 1', 'admin', 'admin', '2024-09-07 12:42:19', '2024-09-07 12:42:19', '182', NULL, NULL),
(57, '', 'item 1', 'admin', 'admin', '2024-09-07 12:43:32', '2024-09-07 12:43:32', '182', NULL, NULL),
(58, '', 'item 1', 'admin', 'admin', '2024-09-07 12:44:00', '2024-09-07 12:44:00', '182', NULL, NULL),
(59, '', 'item 1', 'admin', 'admin', '2024-09-07 12:50:55', '2024-09-07 12:50:55', '182', NULL, NULL),
(60, '', 'item 1', 'admin', 'admin', '2024-09-07 12:51:40', '2024-09-07 12:51:40', '182', NULL, NULL),
(61, '', 'item 1', 'admin', 'admin', '2024-09-07 12:52:24', '2024-09-07 12:52:24', '182', NULL, NULL),
(62, '', 'item 1', 'admin', 'admin', '2024-09-07 12:52:56', '2024-09-07 12:52:56', '182', NULL, NULL),
(63, '', 'item 1', 'admin', 'admin', '2024-09-07 12:54:42', '2024-09-07 12:54:42', '182', NULL, NULL),
(64, '', 'item 1', 'admin', 'admin', '2024-09-07 12:56:44', '2024-09-07 12:56:44', '182', NULL, NULL),
(65, '60', 'item 1', 'admin', 'admin', '2024-09-07 13:09:17', '2024-09-07 13:09:17', '182', NULL, NULL),
(66, '61', 'item 1', 'admin', 'admin', '2024-09-07 13:13:40', '2024-09-07 13:13:40', '182', NULL, NULL),
(67, '', 'item 1', 'admin', 'admin', '2024-09-07 13:16:01', '2024-09-07 13:16:01', '182', NULL, NULL),
(68, '', 'item 1', 'admin', 'admin', '2024-09-07 13:16:50', '2024-09-07 13:16:50', '182', NULL, NULL),
(69, '', 'item 1', 'admin', 'admin', '2024-09-07 13:18:09', '2024-09-07 13:18:09', '182', NULL, NULL),
(70, '', 'item 1', 'admin', 'admin', '2024-09-07 13:33:18', '2024-09-07 13:33:18', '182', NULL, NULL),
(71, '62', 'item 1', 'admin', 'admin', '2024-09-07 13:34:27', '2024-09-07 13:34:27', '182', NULL, NULL),
(72, '63', 'item 1', 'admin', 'admin', '2024-09-07 13:34:49', '2024-09-07 13:34:49', '182', NULL, NULL),
(73, '64', 'item 1', 'admin', 'admin', '2024-09-07 13:48:54', '2024-09-07 13:48:54', '182', NULL, NULL),
(74, '65', 'item 1', NULL, NULL, '2024-09-07 13:50:04', '2024-09-07 13:50:04', '182', NULL, NULL),
(75, '', 'item 1', 'rg1', 'rg1', '2024-09-07 13:50:47', '2024-09-07 13:50:47', '182', NULL, NULL),
(76, '', 'item 1', 'rg1', 'rg1', '2024-09-07 13:51:53', '2024-09-07 13:51:53', '182', NULL, NULL),
(77, '66', 'item 1', 'rg1', 'rg1', '2024-09-07 14:01:44', '2024-09-07 14:01:44', '182', NULL, NULL),
(78, '66', 'item 1', 'rg1', 'rg1', '2024-09-07 14:06:33', '2024-09-07 14:06:33', '182', NULL, NULL),
(79, '66', 'item 1', 'rg1', 'rg1', '2024-09-07 14:06:42', '2024-09-07 14:06:42', '182', NULL, NULL),
(80, '67', 'item 1', 'rg1', 'rg1', '2024-09-07 14:07:47', '2024-09-07 14:07:47', '182', NULL, NULL),
(81, '67', 'item 1', 'rg1', 'rg1', '2024-09-07 14:07:51', '2024-09-07 14:07:51', '182', NULL, NULL),
(82, '68', 'item 1', 'rg1', 'rg1', '2024-09-07 14:09:01', '2024-09-07 14:09:01', '182', NULL, NULL),
(83, '68', 'item 1', 'rg1', 'rg1', '2024-09-07 14:09:05', '2024-09-07 14:09:05', '182', NULL, NULL),
(84, '68', 'item 1', 'rg1', 'rg1', '2024-09-07 14:14:43', '2024-09-07 14:14:43', '182', NULL, NULL),
(85, '68', 'item 1', 'rg1', 'rg1', '2024-09-07 14:14:52', '2024-09-07 14:14:52', '182', NULL, NULL),
(86, '69', 'item 1', 'rg1', 'rg1', '2024-09-07 14:15:27', '2024-09-07 14:15:27', '182', NULL, NULL),
(87, '69', 'item 1', 'rg1', 'rg1', '2024-09-07 14:15:43', '2024-09-07 14:15:43', '182', NULL, NULL),
(88, '70', 'item 1', 'rg1', 'rg1', '2024-09-07 14:18:22', '2024-09-07 14:18:22', '182', NULL, NULL),
(89, '70', 'item 1', 'rg1', 'rg1', '2024-09-07 14:18:57', '2024-09-07 14:18:57', '182', NULL, NULL),
(90, '71', 'item 1', 'rg1', 'rg1', '2024-09-07 14:19:27', '2024-09-07 14:19:27', '182', NULL, NULL),
(91, '71', 'item 1', 'rg1', 'rg1', '2024-09-07 14:20:25', '2024-09-07 14:20:25', '182', NULL, NULL),
(92, '72', 'item 1', 'rg1', 'rg1', '2024-09-07 14:23:12', '2024-09-07 14:23:12', '182', NULL, NULL),
(93, '76', 'item 1', 'rg1', 'rg1', '2024-09-07 14:26:34', '2024-09-07 14:26:34', '182', NULL, NULL),
(94, '77', 'item 1', 'rg1', 'rg1', '2024-09-07 14:28:12', '2024-09-07 14:28:12', '182', NULL, NULL),
(95, '78', 'item 1', 'rg1', 'rg1', '2024-09-07 14:29:29', '2024-09-07 14:29:29', '182', NULL, NULL),
(96, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:30:13', '2024-09-07 14:30:13', '182', NULL, NULL),
(97, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:30:42', '2024-09-07 14:30:42', 'undefined', NULL, NULL),
(98, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:30:49', '2024-09-07 14:30:49', 'undefined', NULL, NULL),
(99, '', 'item 3', 'rg1', 'rg1', '2024-09-07 14:32:05', '2024-09-07 14:32:05', '184', NULL, NULL),
(100, '', 'item 3', 'rg1', 'rg1', '2024-09-07 14:32:45', '2024-09-07 14:32:45', '184', NULL, NULL),
(101, '', 'item 3', 'rg1', 'rg1', '2024-09-07 14:33:12', '2024-09-07 14:33:12', '184', NULL, NULL),
(102, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:34:33', '2024-09-07 14:34:33', '182', NULL, NULL),
(103, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:35:19', '2024-09-07 14:35:19', 'undefined', NULL, NULL),
(104, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:36:02', '2024-09-07 14:36:02', '182', NULL, NULL),
(105, '79', 'item 1', 'rg1', 'rg1', '2024-09-07 14:36:21', '2024-09-07 14:36:21', '182', NULL, NULL),
(106, '79', 'item 1', 'rg1', 'rg1', '2024-09-07 14:38:29', '2024-09-07 14:38:29', '182', NULL, NULL),
(107, '79', 'item 1', 'rg1', 'rg1', '2024-09-07 14:39:18', '2024-09-07 14:39:18', '182', NULL, NULL),
(108, '79', 'item 1', 'rg1', 'rg1', '2024-09-07 14:39:24', '2024-09-07 14:39:24', '182', NULL, NULL),
(109, '80', 'item 1', 'rg1', 'rg1', '2024-09-07 14:40:33', '2024-09-07 14:40:33', '182', NULL, NULL),
(110, '81', 'item 1', 'rg1', 'rg1', '2024-09-07 14:40:52', '2024-09-07 14:40:52', '182', NULL, NULL),
(111, '82', 'item 1', 'rg1', 'rg1', '2024-09-07 14:41:46', '2024-09-07 14:41:46', '182', NULL, NULL),
(112, '83', 'item 1', 'rg1', 'rg1', '2024-09-07 14:42:33', '2024-09-07 14:42:33', '182', NULL, NULL),
(113, '84', 'item 1', 'rg1', 'rg1', '2024-09-07 14:43:12', '2024-09-07 14:43:12', '182', NULL, NULL),
(114, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:45:49', '2024-09-07 14:45:49', '182', NULL, NULL),
(115, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:46:03', '2024-09-07 14:46:03', '182', NULL, NULL),
(116, '86', 'item 1', 'rg1', 'rg1', '2024-09-07 14:47:02', '2024-09-07 14:47:02', '182', NULL, NULL),
(117, '86', 'item 1', 'rg1', 'rg1', '2024-09-07 14:47:17', '2024-09-07 14:47:17', '182', NULL, NULL),
(118, '87', 'item 1', 'rg1', 'rg1', '2024-09-07 14:47:55', '2024-09-07 14:47:55', '182', NULL, NULL),
(119, '87', 'item 1', 'rg1', 'rg1', '2024-09-07 14:48:09', '2024-09-07 14:48:09', '182', NULL, NULL),
(120, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:50:13', '2024-09-07 14:50:13', '182', NULL, NULL),
(121, '', 'item 1', 'rg1', 'rg1', '2024-09-07 14:50:16', '2024-09-07 14:50:16', '182', NULL, NULL),
(122, '88', 'item 1', 'rg1', 'rg1', '2024-09-07 14:52:03', '2024-09-07 14:52:03', '182', NULL, NULL),
(123, '89', 'item 1', 'rg1', 'rg1', '2024-09-07 14:52:29', '2024-09-07 14:52:29', '182', NULL, NULL),
(124, '89', 'item 1', 'rg1', 'rg1', '2024-09-07 14:52:40', '2024-09-07 14:52:40', '182', NULL, NULL),
(125, '90', 'item 1', 'rg1', 'rg1', '2024-09-07 14:53:37', '2024-09-07 14:53:37', '182', NULL, NULL),
(126, '90', 'item 1', 'rg1', 'rg1', '2024-09-07 14:54:05', '2024-09-07 14:54:05', '182', NULL, NULL),
(127, '91', 'item 1', 'rg1', 'rg1', '2024-09-07 14:56:55', '2024-09-07 14:56:55', '182', NULL, NULL),
(128, '91', 'item 1', 'rg1', 'rg1', '2024-09-07 14:57:01', '2024-09-07 14:57:01', '182', NULL, NULL),
(129, '91', 'item 1', 'rg1', 'rg1', '2024-09-07 14:59:42', '2024-09-07 14:59:42', '182', NULL, NULL),
(130, '91', 'item 1', 'rg1', 'rg1', '2024-09-07 14:59:52', '2024-09-07 14:59:52', '182', NULL, NULL),
(131, '91', 'item 1', 'rg1', 'rg1', '2024-09-07 15:01:22', '2024-09-07 15:01:22', '182', NULL, NULL),
(132, '93', 'item 1', 'rg1', 'rg1', '2024-09-07 15:09:43', '2024-09-07 15:09:43', '182', NULL, NULL),
(133, '93', 'item 1', 'rg1', 'rg1', '2024-09-07 15:10:05', '2024-09-07 15:10:05', '182', NULL, NULL),
(134, '93', 'item 1', 'rg1', 'rg1', '2024-09-07 15:10:18', '2024-09-07 15:10:18', '182', NULL, NULL),
(135, '', 'item 1', 'rg1', 'rg1', '2024-09-07 15:12:24', '2024-09-07 15:12:24', '182', NULL, NULL),
(136, '', 'item 1', 'rg1', 'rg1', '2024-09-07 15:12:33', '2024-09-07 15:12:33', '182', NULL, NULL),
(137, '94', 'item 1', 'rg1', 'rg1', '2024-09-07 15:13:32', '2024-09-07 15:13:32', '182', NULL, NULL),
(138, '95', 'item 1', 'rg1', 'rg1', '2024-09-07 15:15:18', '2024-09-07 15:15:18', '182', NULL, NULL),
(139, '95', 'item 1', 'rg1', 'rg1', '2024-09-07 15:15:29', '2024-09-07 15:15:29', '182', NULL, NULL),
(140, '95', 'item 1', 'rg1', 'rg1', '2024-09-07 15:17:02', '2024-09-07 15:17:02', '182', NULL, NULL),
(141, '96', 'item 1', 'rg1', 'rg1', '2024-09-07 15:22:03', '2024-09-07 15:22:03', '182', NULL, NULL),
(142, '96', 'item 1', 'rg1', 'rg1', '2024-09-07 15:22:32', '2024-09-07 15:22:32', '182', NULL, NULL),
(143, '96', 'item 1', 'rg1', 'rg1', '2024-09-07 15:22:46', '2024-09-07 15:22:46', '182', NULL, NULL),
(144, '96', 'item 1', 'rg1', 'rg1', '2024-09-07 15:23:19', '2024-09-07 15:23:19', '182', NULL, NULL),
(145, '97', 'item 1', 'rg1', 'rg1', '2024-09-07 15:26:11', '2024-09-07 15:26:11', '182', NULL, NULL),
(146, '98', 'item 1', 'rg1', 'rg1', '2024-09-07 15:28:54', '2024-09-07 15:28:54', '182', NULL, NULL),
(147, '99', 'item 1', 'rg1', 'rg1', '2024-09-07 15:36:59', '2024-09-07 15:36:59', '182', NULL, NULL),
(148, '99', 'item 1', 'rg1', 'rg1', '2024-09-07 15:37:08', '2024-09-07 15:37:08', '182', NULL, NULL),
(149, '100', 'item 1', 'rg1', 'rg1', '2024-09-07 15:39:16', '2024-09-07 15:39:16', '182', NULL, NULL),
(150, '100', 'item 1', 'rg1', 'rg1', '2024-09-07 15:39:25', '2024-09-07 15:39:25', '182', NULL, NULL),
(151, '100', 'item 1', 'rg1', 'rg1', '2024-09-07 15:39:55', '2024-09-07 15:39:55', '182', NULL, NULL),
(152, '100', 'item 1', 'rg1', 'rg1', '2024-09-07 15:40:06', '2024-09-07 15:40:06', '182', NULL, NULL),
(153, '100', 'item 1', 'rg1', 'rg1', '2024-09-07 15:41:20', '2024-09-07 15:41:20', '182', NULL, NULL),
(154, '100', 'item 1', 'rg1', 'rg1', '2024-09-07 15:41:36', '2024-09-07 15:41:36', '182', NULL, NULL),
(155, '101', 'item 1', 'rg1', 'rg1', '2024-09-07 15:44:31', '2024-09-07 15:44:31', '182', NULL, NULL),
(156, '102', 'item 1', 'rg1', 'rg1', '2024-09-07 15:45:34', '2024-09-07 15:45:34', '182', NULL, NULL),
(157, '103', 'item 1', 'rg1', 'rg1', '2024-09-07 15:45:58', '2024-09-07 15:45:58', '182', NULL, NULL),
(158, '103', 'item 1', 'rg1', 'rg1', '2024-09-07 15:46:07', '2024-09-07 15:46:07', '182', NULL, NULL),
(159, '', 'item 1', 'rg1', 'rg1', '2024-09-07 15:47:45', '2024-09-07 15:47:45', '182', NULL, NULL),
(160, '105', 'item 1', 'rg1', 'rg1', '2024-09-07 15:49:26', '2024-09-07 15:49:26', '182', NULL, NULL),
(161, '105', 'item 1', 'rg1', 'rg1', '2024-09-07 15:49:41', '2024-09-07 15:49:41', '182', NULL, NULL),
(162, '106', 'item 1', 'rg1', 'rg1', '2024-09-07 15:50:36', '2024-09-07 15:50:36', '182', NULL, NULL),
(163, '107', 'item 1', 'rg1', 'rg1', '2024-09-07 15:52:03', '2024-09-07 15:52:03', '182', NULL, NULL),
(164, '110', 'item 1', 'rg1', 'rg1', '2024-09-07 15:57:15', '2024-09-07 15:57:15', '182', NULL, NULL),
(165, '110', 'item 1', 'rg1', 'rg1', '2024-09-07 15:57:35', '2024-09-07 15:57:35', '182', NULL, NULL),
(166, '113', 'item 1', 'admin', 'admin', '2024-09-08 06:30:09', '2024-09-08 06:30:09', '182', NULL, NULL),
(167, '113', 'item 1', 'admin', 'admin', '2024-09-08 06:30:33', '2024-09-08 06:30:33', '182', NULL, NULL),
(168, '114', 'item 1', 'admin', 'admin', '2024-09-08 06:31:05', '2024-09-08 06:31:05', '182', NULL, NULL),
(169, '115', 'item 1', 'admin', 'admin', '2024-09-08 06:33:24', '2024-09-08 06:33:24', '182', NULL, NULL),
(170, '115', 'item 1', 'admin', 'admin', '2024-09-08 06:34:09', '2024-09-08 06:34:09', '182', NULL, NULL),
(171, '116', 'item 1', 'admin', 'admin', '2024-09-08 06:35:08', '2024-09-08 06:35:08', '182', NULL, NULL),
(172, '116', 'item 1', 'admin', 'admin', '2024-09-08 06:35:17', '2024-09-08 06:35:17', '182', NULL, NULL),
(173, '116', 'item 1', 'admin', 'admin', '2024-09-08 06:35:27', '2024-09-08 06:35:27', '182', NULL, NULL),
(174, '117', 'item 1', 'admin', 'admin', '2024-09-08 06:36:42', '2024-09-08 06:36:42', '182', NULL, NULL),
(175, '117', 'item 1', 'admin', 'admin', '2024-09-08 06:36:48', '2024-09-08 06:36:48', '182', NULL, NULL),
(176, '117', 'item 1', 'admin', 'admin', '2024-09-08 06:36:58', '2024-09-08 06:36:58', '182', NULL, NULL),
(177, '118', 'item 1', 'admin', 'admin', '2024-09-08 06:39:39', '2024-09-08 06:39:39', '182', NULL, NULL),
(178, '119', 'item 1', 'admin', 'admin', '2024-09-08 06:40:09', '2024-09-08 06:40:09', '182', NULL, NULL),
(179, '120', 'item 1', 'admin', 'admin', '2024-09-08 06:40:50', '2024-09-08 06:40:50', '182', NULL, NULL),
(180, '120', 'item 1', 'admin', 'admin', '2024-09-08 06:40:57', '2024-09-08 06:40:57', '182', NULL, NULL),
(181, '120', 'item 1', 'admin', 'admin', '2024-09-08 06:42:20', '2024-09-08 06:42:20', '182', NULL, NULL),
(182, '120', 'item 1', 'admin', 'admin', '2024-09-08 06:42:32', '2024-09-08 06:42:32', '182', NULL, NULL),
(183, '', 'first', 'rg1', 'rg1', '2024-09-08 13:23:10', '2024-09-08 13:23:10', '237', NULL, NULL),
(184, '', 'first', 'rg1', 'rg1', '2024-09-08 13:23:25', '2024-09-08 13:23:25', '237', NULL, NULL),
(185, '', 'first', 'rg1', 'rg1', '2024-09-08 13:23:30', '2024-09-08 13:23:30', '237', NULL, NULL),
(186, '', 'first', 'rg1', 'rg1', '2024-09-08 13:25:34', '2024-09-08 13:25:34', '237', NULL, NULL),
(187, '133', 'item 1', 'admin', 'admin', '2024-09-08 14:12:57', '2024-09-08 14:12:57', '182', NULL, NULL),
(188, '140', 'miipjdoi', 'admin', 'admin', '2024-09-10 10:58:50', '2024-09-10 10:58:50', '330', NULL, NULL),
(189, '144', 'item 2', 'admin', 'admin', '2024-09-10 13:56:37', '2024-09-10 13:56:37', '183', NULL, NULL),
(190, '145', 'item 1', 'admin', 'admin', '2024-09-10 13:58:30', '2024-09-10 13:58:30', '182', NULL, NULL),
(191, '147', 'fjoefjio', 'admin', 'admin', '2024-09-10 14:26:52', '2024-09-10 14:26:52', '336', NULL, NULL),
(192, '147', 'fjoefjio', 'admin', 'admin', '2024-09-10 14:27:11', '2024-09-10 14:27:11', '336', NULL, NULL),
(193, '147', 'fjoefjio', 'admin', 'admin', '2024-09-10 14:27:28', '2024-09-10 14:27:28', '336', NULL, NULL),
(194, '147', 'fjoefjio', 'admin', 'admin', '2024-09-10 14:28:56', '2024-09-10 14:28:56', '336', NULL, NULL),
(195, '147', 'fjoefjio', 'admin', 'admin', '2024-09-10 14:33:45', '2024-09-10 14:33:45', '336', NULL, NULL),
(196, '147', 'fjoefjio', 'admin', 'admin', '2024-09-10 14:34:26', '2024-09-10 14:34:26', '336', NULL, NULL),
(197, '147', 'fjoefjio', 'admin', 'admin', '2024-09-10 14:35:10', '2024-09-10 14:35:10', '336', NULL, NULL),
(198, '148', 'first', 'admin', 'admin', '2024-09-11 04:56:20', '2024-09-11 04:56:20', '237', NULL, NULL),
(199, '148', 'first', 'admin', 'admin', '2024-09-11 04:56:25', '2024-09-11 04:56:25', '237', NULL, NULL),
(200, '148', 'first', 'admin', 'admin', '2024-09-11 04:56:37', '2024-09-11 04:56:37', '237', NULL, NULL),
(201, '149', 'item 1 ', 'admin', 'admin', '2024-09-11 05:03:01', '2024-09-11 05:03:01', '340', NULL, NULL),
(202, '149', 'item 1 ', 'admin', 'admin', '2024-09-11 05:03:32', '2024-09-11 05:03:32', '340', NULL, NULL),
(203, '153', 'tecod', 'rg1', 'rg1', '2024-09-12 12:21:33', '2024-09-12 12:21:33', '238', NULL, NULL),
(204, '153', 'tecod', 'rg1', 'rg1', '2024-09-12 12:21:42', '2024-09-12 12:21:42', '238', NULL, NULL),
(205, '153', 'tecod', 'rg1', 'rg1', '2024-09-12 12:22:02', '2024-09-12 12:22:02', '238', NULL, NULL),
(206, '153', 'THIRD', 'rg1', 'rg1', '2024-09-12 12:22:27', '2024-09-12 12:22:27', '239', NULL, NULL),
(207, '153', 'THIRD', 'rg1', 'rg1', '2024-09-12 12:22:34', '2024-09-12 12:22:34', '239', NULL, NULL),
(208, '153', 'THIRD', 'rg1', 'rg1', '2024-09-12 12:22:43', '2024-09-12 12:22:43', '239', NULL, NULL),
(209, '154', 'first', 'rg1', 'rg1', '2024-09-12 12:26:23', '2024-09-12 12:26:23', '237', NULL, NULL),
(210, '154', 'first', 'rg1', 'rg1', '2024-09-12 12:26:30', '2024-09-12 12:26:30', '237', NULL, NULL),
(211, '154', 'first', 'rg1', 'rg1', '2024-09-12 12:26:35', '2024-09-12 12:26:35', '237', NULL, NULL),
(212, '154', 'first', 'rg1', 'rg1', '2024-09-12 12:30:19', '2024-09-12 12:30:19', '237', NULL, NULL),
(213, '154', 'first', 'rg1', 'rg1', '2024-09-12 12:33:31', '2024-09-12 12:33:31', '237', NULL, NULL),
(214, '154', 'first', 'rg1', 'rg1', '2024-09-12 12:36:51', '2024-09-12 12:36:51', '237', NULL, NULL),
(215, '155', 'tecod', 'rg1', 'rg1', '2024-09-12 12:37:32', '2024-09-12 12:37:32', '238', NULL, NULL),
(216, '155', 'tecod', 'rg1', 'rg1', '2024-09-12 12:37:40', '2024-09-12 12:37:40', '238', NULL, NULL),
(217, '155', 'tecod', 'rg1', 'rg1', '2024-09-12 12:37:47', '2024-09-12 12:37:47', '238', NULL, NULL),
(218, '155', 'tecod', 'rg1', 'rg1', '2024-09-12 12:38:28', '2024-09-12 12:38:28', '238', NULL, NULL),
(219, '157', 'first', 'admin', 'admin', '2024-09-12 12:41:14', '2024-09-12 12:41:14', '237', NULL, NULL),
(220, '157', 'first', 'admin', 'admin', '2024-09-12 12:41:21', '2024-09-12 12:41:21', '237', NULL, NULL),
(221, '157', 'first', 'admin', 'admin', '2024-09-12 12:41:28', '2024-09-12 12:41:28', '237', NULL, NULL),
(222, '158', 'first', 'rg1', 'rg1', '2024-09-12 12:49:38', '2024-09-12 12:49:38', '237', NULL, NULL),
(223, '159', 'first', 'rg1', 'rg1', '2024-09-12 12:53:29', '2024-09-12 12:53:29', '237', NULL, NULL),
(224, '160', 'first', 'admin', 'admin', '2024-09-12 12:56:29', '2024-09-12 12:56:29', '237', NULL, NULL),
(225, '160', 'first', 'admin', 'admin', '2024-09-12 12:59:01', '2024-09-12 12:59:01', '237', NULL, '500'),
(226, '160', 'first', 'admin', 'admin', '2024-09-12 12:59:35', '2024-09-12 12:59:35', '237', NULL, NULL),
(227, '160', 'first', 'admin', 'admin', '2024-09-12 12:59:59', '2024-09-12 12:59:59', '237', NULL, NULL),
(228, '161', 'first', 'admin', 'admin', '2024-09-12 13:01:44', '2024-09-12 13:01:44', '237', NULL, '500'),
(229, '162', 'THIRD', 'admin', 'admin', '2024-09-12 13:02:27', '2024-09-12 13:02:27', '239', NULL, '500'),
(230, '162', 'THIRD', 'admin', 'admin', '2024-09-12 13:02:49', '2024-09-12 13:02:49', '239', NULL, NULL),
(231, '162', 'THIRD', 'admin', 'admin', '2024-09-12 13:11:23', '2024-09-12 13:11:23', '239', NULL, NULL),
(232, '162', 'THIRD', 'admin', 'admin', '2024-09-12 13:11:33', '2024-09-12 13:11:33', '239', NULL, NULL),
(233, '162', 'first', 'admin', 'admin', '2024-09-12 13:11:53', '2024-09-12 13:11:53', '237', NULL, '500'),
(234, '163', 'item 1 ', 'admin', 'admin', '2024-09-12 13:18:59', '2024-09-12 13:18:59', '340', NULL, '585'),
(235, '163', 'item 1 ', 'admin', 'admin', '2024-09-12 13:20:10', '2024-09-12 13:20:10', '340', NULL, NULL),
(236, '163', 'item 1 ', 'admin', 'admin', '2024-09-12 13:21:12', '2024-09-12 13:21:12', '340', NULL, NULL),
(237, '163', 'item 1 ', 'admin', 'admin', '2024-09-12 13:26:04', '2024-09-12 13:26:04', '340', NULL, NULL),
(238, '164', 'item 1 ', 'admin', 'admin', '2024-09-12 13:28:07', '2024-09-12 13:28:07', '340', NULL, '585'),
(239, '165', 'item 1 ', 'admin', 'admin', '2024-09-12 13:36:05', '2024-09-12 13:36:05', '340', NULL, '585'),
(240, '165', 'item 1 ', 'admin', 'admin', '2024-09-12 13:36:10', '2024-09-12 13:36:10', '340', NULL, NULL),
(241, '165', 'item 1 ', 'admin', 'admin', '2024-09-12 13:41:50', '2024-09-12 13:41:50', '340', NULL, NULL),
(242, '165', 'item 1 ', 'admin', 'admin', '2024-09-12 13:43:35', '2024-09-12 13:43:35', '340', NULL, NULL),
(243, '165', 'item 1 ', 'admin', 'admin', '2024-09-12 13:47:31', '2024-09-12 13:47:31', '340', NULL, NULL),
(244, '166', 'item 1 ', 'admin', 'admin', '2024-09-12 13:51:48', '2024-09-12 13:51:48', '340', NULL, '585'),
(245, '167', 'item 1 ', 'admin', 'admin', '2024-09-12 13:54:59', '2024-09-12 13:54:59', '340', NULL, '585'),
(246, '168', 'item 1 ', 'admin', 'admin', '2024-09-12 13:55:55', '2024-09-12 13:55:55', '340', NULL, '585'),
(247, '169', 'first', 'admin', 'admin', '2024-09-12 13:58:02', '2024-09-12 13:58:02', '237', NULL, '500'),
(248, '170', 'first', 'admin', 'admin', '2024-09-12 13:59:44', '2024-09-12 13:59:44', '237', NULL, '500'),
(249, '170', 'first', 'admin', 'admin', '2024-09-12 13:59:53', '2024-09-12 13:59:53', '237', NULL, NULL),
(250, '171', 'first', 'admin', 'admin', '2024-09-12 14:02:02', '2024-09-12 14:02:02', '237', NULL, '500'),
(251, '171', 'first', 'admin', 'admin', '2024-09-12 14:02:22', '2024-09-12 14:02:22', '250', NULL, NULL),
(252, '171', 'first', 'admin', 'admin', '2024-09-12 14:02:45', '2024-09-12 14:02:45', '250', NULL, NULL),
(253, '171', 'first', 'admin', 'admin', '2024-09-12 14:04:00', '2024-09-12 14:04:00', '237', NULL, NULL),
(254, '171', 'first', 'admin', 'admin', '2024-09-12 14:05:31', '2024-09-12 14:05:31', '237', NULL, NULL),
(255, '171', 'first', 'admin', 'admin', '2024-09-12 14:07:10', '2024-09-12 14:07:10', '237', NULL, NULL),
(256, '171', 'first', 'admin', 'admin', '2024-09-12 14:08:35', '2024-09-12 14:08:35', '237', NULL, NULL),
(257, '172', 'first', 'admin', 'admin', '2024-09-12 14:14:53', '2024-09-12 14:14:53', '237', NULL, '500'),
(258, '173', 'first', 'admin', 'admin', '2024-09-12 14:17:53', '2024-09-12 14:17:53', '237', NULL, '500'),
(259, '174', 'first', 'admin', 'admin', '2024-09-12 14:23:24', '2024-09-12 14:23:24', '237', NULL, '500'),
(260, '175', 'first', 'admin', 'admin', '2024-09-12 14:26:44', '2024-09-12 14:26:44', '237', NULL, '500'),
(261, '176', 'first', 'admin', 'admin', '2024-09-12 14:30:46', '2024-09-12 14:30:46', '237', NULL, '500'),
(262, '177', 'miipjdoi', 'admin', 'admin', '2024-09-12 14:42:39', '2024-09-12 14:42:39', '330', NULL, '580'),
(263, '178', 'n', 'admin', 'admin', '2024-09-12 14:45:05', '2024-09-12 14:45:05', '331', NULL, '580'),
(264, '179', 'n', 'admin', 'admin', '2024-09-12 14:47:26', '2024-09-12 14:47:26', '331', NULL, '580'),
(265, '180', 'fjoefjio', 'admin', 'admin', '2024-09-12 20:15:04', '2024-09-12 20:15:04', '336', NULL, '584'),
(266, '180', 'item 2', 'admin', 'admin', '2024-09-12 20:18:37', '2024-09-12 20:18:37', '337', NULL, '584'),
(267, '', 'item 1 ', 'admin', 'admin', '2024-09-14 04:56:37', '2024-09-14 04:56:37', '340', NULL, '585'),
(268, '182', 'item 1 ', 'rg1', 'rg1', '2024-09-14 09:56:56', '2024-09-14 09:56:56', '340', NULL, '585'),
(269, '182', 'item 2 ', 'rg1', 'rg1', '2024-09-14 10:52:10', '2024-09-14 10:52:10', '341', NULL, '585'),
(270, '183', 'item 1 ', 'admin', 'admin', '2024-09-14 11:30:14', '2024-09-14 11:30:14', '340', NULL, '585'),
(271, '185', 'abc item 1', 'admin', 'admin', '2024-09-14 11:44:34', '2024-09-14 11:44:34', '334', NULL, '583'),
(272, '188', 'ji', 'admin', 'admin', '2024-09-14 11:48:04', '2024-09-14 11:48:04', '339', NULL, '584'),
(273, '189', 'm', 'admin', 'admin', '2024-09-28 04:49:17', '2024-09-28 04:49:17', '338', NULL, '584'),
(274, '190', 'item 2 ', 'admin', 'admin', '2024-09-28 04:52:10', '2024-09-28 04:52:10', '341', NULL, '585'),
(275, '191', 'item 1', 'admin', 'admin', '2024-09-28 05:26:29', '2024-09-28 05:26:29', '182', NULL, '478');

-- --------------------------------------------------------

--
-- Table structure for table `grn_sub_line_status`
--

CREATE TABLE `grn_sub_line_status` (
  `id` int(11) NOT NULL,
  `grn_head_id` varchar(45) DEFAULT NULL,
  `grn_line_id` varchar(45) DEFAULT NULL,
  `recQty` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `createdDate` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `last_balance` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `grn_sub_line_status`
--

INSERT INTO `grn_sub_line_status` (`id`, `grn_head_id`, `grn_line_id`, `recQty`, `status`, `createdBy`, `createdDate`, `updatedBy`, `remarks`, `item_code`, `price`, `last_balance`) VALUES
(1, '42', '22', '0', 'received', 'admin', '2024-09-07 13:02:17', NULL, NULL, 'item 1', NULL, NULL),
(2, '43', '23', '0', 'received', 'admin', '2024-09-07 13:04:34', NULL, NULL, 'item 1', NULL, NULL),
(3, '51', '24', '0', 'received', 'admin', '2024-09-07 13:27:10', NULL, NULL, 'item 1', NULL, NULL),
(4, '52', '25', '0', 'received', 'admin', '2024-09-07 13:48:37', NULL, NULL, 'item 1', NULL, NULL),
(5, '', '26', '0', 'received', 'admin', '2024-09-07 13:54:40', NULL, NULL, 'item 1', NULL, NULL),
(6, '', '27', '0', 'received', 'admin', '2024-09-07 13:56:32', NULL, NULL, 'item 1', NULL, NULL),
(7, '', '28', '0', 'received', 'admin', '2024-09-07 13:56:46', NULL, NULL, 'item 1', NULL, NULL),
(8, '53', '29', '0', 'received', 'admin', '2024-09-07 13:58:00', NULL, NULL, 'item 1', NULL, NULL),
(9, '', '30', '0', 'received', 'admin', '2024-09-07 13:58:19', NULL, NULL, 'item 1', NULL, NULL),
(10, '', '31', '0', 'received', 'admin', '2024-09-07 13:58:44', NULL, NULL, 'item 1', NULL, NULL),
(11, '', '32', '0', 'received', 'admin', '2024-09-07 13:59:07', NULL, NULL, 'item 1', NULL, NULL),
(12, '54', '33', '0', 'received', 'admin', '2024-09-07 13:59:21', NULL, NULL, 'item 1', NULL, NULL),
(13, '', '34', '0', 'received', 'admin', '2024-09-07 14:01:32', NULL, NULL, 'item 1', NULL, NULL),
(14, '55', '35', '0', 'received', NULL, '2024-09-07 14:05:39', NULL, NULL, 'item 2', NULL, NULL),
(15, '55', '36', '0', 'received', NULL, '2024-09-07 14:05:51', NULL, NULL, 'item 2', NULL, NULL),
(16, '55', '37', '0', 'received', NULL, '2024-09-07 14:05:52', NULL, NULL, 'item 2', NULL, NULL),
(17, '56', '38', '0', 'received', NULL, '2024-09-07 14:06:12', NULL, NULL, 'item 1', NULL, NULL),
(18, '', '39', '0', 'received', NULL, '2024-09-07 14:07:43', NULL, NULL, 'item 1', NULL, NULL),
(19, '', '40', '0', 'received', 'admin', '2024-09-07 14:08:46', NULL, NULL, 'item 1', NULL, NULL),
(20, '57', '41', '0', 'received', 'admin', '2024-09-07 14:09:10', NULL, NULL, 'item 1', NULL, NULL),
(21, '', '42', '0', 'received', NULL, '2024-09-07 14:09:43', NULL, NULL, 'item 1', NULL, NULL),
(22, '', '43', '0', 'received', 'admin', '2024-09-07 14:10:09', NULL, NULL, 'item 1', NULL, NULL),
(23, '', '44', '0', 'received', 'admin', '2024-09-07 14:11:23', NULL, NULL, 'item 1', NULL, NULL),
(24, '', '45', '0', 'received', 'admin', '2024-09-07 14:11:52', NULL, NULL, 'item 1', NULL, NULL),
(25, '', '46', '0', 'received', 'admin', '2024-09-07 14:26:40', NULL, NULL, 'item 1', NULL, NULL),
(26, '', '47', '0', 'received', 'rg1', '2024-09-07 14:27:20', NULL, NULL, 'item 1', NULL, NULL),
(27, '', '48', '0', 'received', 'admin', '2024-09-07 14:28:11', NULL, NULL, 'item 1', NULL, NULL),
(28, '', '49', '0', 'received', 'admin', '2024-09-07 14:28:39', NULL, NULL, 'item 1', NULL, NULL),
(29, '', '50', '0', 'received', 'admin', '2024-09-07 14:29:04', NULL, NULL, 'item 1', NULL, NULL),
(30, '', '51', '0', 'received', 'admin', '2024-09-07 14:29:22', NULL, NULL, 'item 1', NULL, NULL),
(31, '', '52', '0', 'received', 'admin', '2024-09-07 14:29:35', NULL, NULL, 'item 1', NULL, NULL),
(32, '', '53', '0', 'received', 'admin', '2024-09-07 14:39:26', NULL, NULL, 'item 1', NULL, NULL),
(33, '', '54', '0', 'received', 'admin', '2024-09-07 14:40:32', NULL, NULL, 'item 1', NULL, NULL),
(34, '59', '55', '0', 'received', 'admin', '2024-09-07 14:41:49', NULL, NULL, 'item 1', NULL, NULL),
(35, '', '56', '0', 'received', 'admin', '2024-09-07 14:42:19', NULL, NULL, 'item 1', NULL, NULL),
(36, '', '57', '0', 'received', 'admin', '2024-09-07 14:43:32', NULL, NULL, 'item 1', NULL, NULL),
(37, '', '58', '0', 'received', 'admin', '2024-09-07 14:44:00', NULL, NULL, 'item 1', NULL, NULL),
(38, '', '59', '0', 'received', 'admin', '2024-09-07 14:50:55', NULL, NULL, 'item 1', NULL, NULL),
(39, '', '60', '0', 'received', 'admin', '2024-09-07 14:51:40', NULL, NULL, 'item 1', NULL, NULL),
(40, '', '61', '0', 'received', 'admin', '2024-09-07 14:52:24', NULL, NULL, 'item 1', NULL, NULL),
(41, '', '62', '0', 'received', 'admin', '2024-09-07 14:52:56', NULL, NULL, 'item 1', NULL, NULL),
(42, '', '63', '0', 'received', 'admin', '2024-09-07 14:54:42', NULL, NULL, 'item 1', NULL, NULL),
(43, '', '64', '0', 'received', 'admin', '2024-09-07 14:56:44', NULL, NULL, 'item 1', NULL, NULL),
(44, '60', '65', '0', 'received', 'admin', '2024-09-07 15:09:17', NULL, NULL, 'item 1', NULL, NULL),
(45, '61', '66', '0', 'received', 'admin', '2024-09-07 15:13:40', NULL, NULL, 'item 1', NULL, NULL),
(46, '', '67', '0', 'received', 'admin', '2024-09-07 15:16:01', NULL, NULL, 'item 1', NULL, NULL),
(47, '', '68', '0', 'received', 'admin', '2024-09-07 15:16:50', NULL, NULL, 'item 1', NULL, NULL),
(48, '', '69', '0', 'received', 'admin', '2024-09-07 15:18:09', NULL, NULL, 'item 1', NULL, NULL),
(49, '', '70', '0', 'received', 'admin', '2024-09-07 15:33:18', NULL, NULL, 'item 1', NULL, NULL),
(50, '62', '71', '0', 'received', 'admin', '2024-09-07 15:34:27', NULL, NULL, 'item 1', NULL, NULL),
(51, '63', '72', '0', 'received', 'admin', '2024-09-07 15:34:49', NULL, NULL, 'item 1', NULL, NULL),
(52, '64', '73', '0', 'received', 'admin', '2024-09-07 15:48:54', NULL, NULL, 'item 1', NULL, NULL),
(53, '65', '74', '0', 'received', NULL, '2024-09-07 15:50:04', NULL, NULL, 'item 1', NULL, NULL),
(54, '', '75', '0', 'received', 'rg1', '2024-09-07 15:50:47', NULL, NULL, 'item 1', NULL, NULL),
(55, '', '76', '0', 'received', 'rg1', '2024-09-07 15:51:53', NULL, NULL, 'item 1', NULL, NULL),
(56, '66', '77', '0', 'received', 'rg1', '2024-09-07 16:01:44', NULL, NULL, 'item 1', NULL, NULL),
(57, '66', '78', '0', 'Accepted', 'rg1', '2024-09-07 16:06:33', NULL, NULL, 'item 1', NULL, NULL),
(58, '66', '79', '0', 'Accepted', 'rg1', '2024-09-07 16:06:42', NULL, NULL, 'item 1', NULL, NULL),
(59, '67', '80', '0', 'received', 'rg1', '2024-09-07 16:07:47', NULL, NULL, 'item 1', NULL, NULL),
(60, '67', '81', '0', 'Accepted', 'rg1', '2024-09-07 16:07:51', NULL, NULL, 'item 1', NULL, NULL),
(61, '68', '82', '0', 'received', 'rg1', '2024-09-07 16:09:01', NULL, NULL, 'item 1', NULL, NULL),
(62, '68', '83', '0', 'Accepted', 'rg1', '2024-09-07 16:09:05', NULL, NULL, 'item 1', NULL, NULL),
(63, '68', '84', '', 'Accepted', 'rg1', '2024-09-07 16:14:43', NULL, NULL, 'item 1', NULL, NULL),
(64, '68', '85', '10', 'Accepted', 'rg1', '2024-09-07 16:14:52', NULL, NULL, 'item 1', NULL, NULL),
(65, '69', '86', '0', 'received', 'rg1', '2024-09-07 16:15:27', NULL, NULL, 'item 1', NULL, NULL),
(66, '69', '87', '100', 'Accepted', 'rg1', '2024-09-07 16:15:43', NULL, NULL, 'item 1', NULL, NULL),
(67, '70', '88', '0', 'received', 'rg1', '2024-09-07 16:18:22', NULL, NULL, 'item 1', NULL, NULL),
(68, '70', '89', '100', 'Accepted', 'rg1', '2024-09-07 16:18:57', NULL, NULL, 'item 1', NULL, NULL),
(69, '71', '90', '0', 'received', 'rg1', '2024-09-07 16:19:27', NULL, NULL, 'item 1', NULL, NULL),
(70, '71', '91', '10', 'Accepted', 'rg1', '2024-09-07 16:20:25', NULL, NULL, 'item 1', NULL, NULL),
(71, '72', '92', '0', 'received', 'rg1', '2024-09-07 16:23:12', NULL, NULL, 'item 1', NULL, NULL),
(72, '76', '93', '0', 'received', 'rg1', '2024-09-07 16:26:34', NULL, NULL, 'item 1', NULL, NULL),
(73, '77', '94', '0', 'received', 'rg1', '2024-09-07 16:28:12', NULL, NULL, 'item 1', NULL, NULL),
(74, '78', '95', '', 'received', 'rg1', '2024-09-07 16:29:29', NULL, NULL, 'item 1', NULL, NULL),
(75, '', '96', '100', 'received', 'rg1', '2024-09-07 16:30:13', NULL, NULL, 'item 1', NULL, NULL),
(76, '', '97', '100', 'Accepted', 'rg1', '2024-09-07 16:30:42', NULL, NULL, 'item 1', NULL, NULL),
(77, '', '98', '100', 'Accepted', 'rg1', '2024-09-07 16:30:49', NULL, NULL, 'item 1', NULL, NULL),
(78, '', '99', '', 'received', 'rg1', '2024-09-07 16:32:05', NULL, NULL, 'item 3', NULL, NULL),
(79, '', '100', '200', 'received', 'rg1', '2024-09-07 16:32:45', NULL, NULL, 'item 3', NULL, NULL),
(80, '', '101', '200', 'received', 'rg1', '2024-09-07 16:33:12', NULL, NULL, 'item 3', NULL, NULL),
(81, '', '102', '', 'received', 'rg1', '2024-09-07 16:34:33', NULL, NULL, 'item 1', NULL, NULL),
(82, '', '103', '100', 'Accepted', 'rg1', '2024-09-07 16:35:19', NULL, NULL, 'item 1', NULL, NULL),
(83, '', '104', '', 'received', 'rg1', '2024-09-07 16:36:02', NULL, NULL, 'item 1', NULL, NULL),
(84, '79', '105', '100', 'received', 'rg1', '2024-09-07 16:36:21', NULL, NULL, 'item 1', NULL, NULL),
(85, '79', '106', '100', 'received', 'rg1', '2024-09-07 16:38:29', NULL, NULL, 'item 1', NULL, NULL),
(86, '79', '107', '100', 'received', 'rg1', '2024-09-07 16:39:18', NULL, NULL, 'item 1', NULL, NULL),
(87, '79', '108', '', 'Accepted', 'rg1', '2024-09-07 16:39:24', NULL, NULL, 'item 1', NULL, NULL),
(88, '80', '109', '', 'received', 'rg1', '2024-09-07 16:40:33', NULL, NULL, 'item 1', NULL, NULL),
(89, '81', '110', '100', 'received', 'rg1', '2024-09-07 16:40:52', NULL, NULL, 'item 1', NULL, NULL),
(90, '82', '111', '100', 'received', 'rg1', '2024-09-07 16:41:46', NULL, NULL, 'item 1', NULL, NULL),
(91, '83', '112', '', 'received', 'rg1', '2024-09-07 16:42:33', NULL, NULL, 'item 1', NULL, NULL),
(92, '84', '113', '100', 'received', 'rg1', '2024-09-07 16:43:12', NULL, NULL, 'item 1', NULL, NULL),
(93, '', '114', '100', 'received', 'rg1', '2024-09-07 16:45:49', NULL, NULL, 'item 1', NULL, NULL),
(94, '', '115', '50', 'received', 'rg1', '2024-09-07 16:46:03', NULL, NULL, 'item 1', NULL, NULL),
(95, '86', '116', '50', 'received', 'rg1', '2024-09-07 16:47:02', NULL, NULL, 'item 1', NULL, NULL),
(96, '86', '117', '', 'Accepted', 'rg1', '2024-09-07 16:47:17', NULL, NULL, 'item 1', NULL, NULL),
(97, '87', '118', '50', 'received', 'rg1', '2024-09-07 16:47:55', NULL, NULL, 'item 1', NULL, NULL),
(98, '87', '119', '10', 'Accepted', 'rg1', '2024-09-07 16:48:09', NULL, NULL, 'item 1', NULL, NULL),
(99, '', '120', '', 'received', 'rg1', '2024-09-07 16:50:13', NULL, NULL, 'item 1', NULL, NULL),
(100, '', '121', '', 'Accepted', 'rg1', '2024-09-07 16:50:16', NULL, NULL, 'item 1', NULL, NULL),
(101, '88', '122', '', 'received', 'rg1', '2024-09-07 16:52:03', NULL, NULL, 'item 1', NULL, NULL),
(102, '89', '123', '50', 'received', 'rg1', '2024-09-07 16:52:29', NULL, NULL, 'item 1', NULL, NULL),
(103, '89', '124', '10', 'Accepted', 'rg1', '2024-09-07 16:52:40', NULL, NULL, 'item 1', NULL, NULL),
(104, '90', '125', '50', 'received', 'rg1', '2024-09-07 16:53:37', NULL, NULL, 'item 1', NULL, NULL),
(105, '90', '126', '', 'Accepted', 'rg1', '2024-09-07 16:54:05', NULL, NULL, 'item 1', NULL, NULL),
(106, '91', '127', '10', 'received', 'rg1', '2024-09-07 16:56:55', NULL, NULL, 'item 1', NULL, NULL),
(107, '91', '128', '', 'Accepted', 'rg1', '2024-09-07 16:57:01', NULL, NULL, 'item 1', NULL, NULL),
(108, '91', '129', '10', 'received', 'rg1', '2024-09-07 16:59:42', NULL, NULL, 'item 1', NULL, NULL),
(109, '91', '130', '10', 'Accepted', 'rg1', '2024-09-07 16:59:52', NULL, NULL, 'item 1', NULL, NULL),
(110, '91', '131', '10', 'Accepted', 'rg1', '2024-09-07 17:01:22', NULL, NULL, 'item 1', NULL, NULL),
(111, '93', '132', '10', 'received', 'rg1', '2024-09-07 17:09:43', NULL, NULL, 'item 1', NULL, NULL),
(112, '93', '133', '10', 'Accepted', 'rg1', '2024-09-07 17:10:05', NULL, NULL, 'item 1', NULL, NULL),
(113, '93', '134', '10', 'Rejected', 'rg1', '2024-09-07 17:10:18', NULL, NULL, 'item 1', NULL, NULL),
(114, '', '135', '10', 'received', 'rg1', '2024-09-07 17:12:24', NULL, NULL, 'item 1', NULL, NULL),
(115, '', '136', '10', 'Accepted', 'rg1', '2024-09-07 17:12:33', NULL, NULL, 'item 1', NULL, NULL),
(116, '94', '137', '10', 'received', 'rg1', '2024-09-07 17:13:32', NULL, NULL, 'item 1', NULL, NULL),
(117, '95', '138', '50', 'received', 'rg1', '2024-09-07 17:15:18', NULL, NULL, 'item 1', NULL, NULL),
(118, '95', '139', '50', 'Accepted', 'rg1', '2024-09-07 17:15:29', NULL, NULL, 'item 1', NULL, NULL),
(119, '95', '140', '2', 'Rejected', 'rg1', '2024-09-07 17:17:02', NULL, NULL, 'item 1', NULL, NULL),
(120, '96', '141', '100', 'received', 'rg1', '2024-09-07 17:22:03', NULL, NULL, 'item 1', NULL, NULL),
(121, '96', '142', '10', 'received', 'rg1', '2024-09-07 17:22:32', NULL, NULL, 'item 1', NULL, NULL),
(122, '96', '143', '10', 'Accepted', 'rg1', '2024-09-07 17:22:46', NULL, NULL, 'item 1', NULL, NULL),
(123, '96', '144', '10', 'Rejected', 'rg1', '2024-09-07 17:23:19', NULL, NULL, 'item 1', NULL, NULL),
(124, '97', '145', '10', 'received', 'rg1', '2024-09-07 17:26:11', NULL, NULL, 'item 1', NULL, NULL),
(125, '98', '146', '10', 'received', 'rg1', '2024-09-07 17:28:54', NULL, NULL, 'item 1', NULL, NULL),
(126, '99', '147', '10', 'received', 'rg1', '2024-09-07 17:36:59', NULL, NULL, 'item 1', NULL, NULL),
(127, '99', '148', '10', 'Accepted', 'rg1', '2024-09-07 17:37:08', NULL, NULL, 'item 1', NULL, NULL),
(128, '100', '149', '10', 'received', 'rg1', '2024-09-07 17:39:16', NULL, NULL, 'item 1', NULL, NULL),
(129, '100', '150', '10', 'Accepted', 'rg1', '2024-09-07 17:39:25', NULL, NULL, 'item 1', NULL, NULL),
(130, '100', '151', '10', 'received', 'rg1', '2024-09-07 17:39:55', NULL, NULL, 'item 1', NULL, NULL),
(131, '100', '152', '10', 'Accepted', 'rg1', '2024-09-07 17:40:06', NULL, NULL, 'item 1', NULL, NULL),
(132, '100', '153', '10', 'received', 'rg1', '2024-09-07 17:41:20', NULL, NULL, 'item 1', NULL, NULL),
(133, '100', '154', '10', 'Accepted', 'rg1', '2024-09-07 17:41:36', NULL, NULL, 'item 1', NULL, NULL),
(134, '101', '155', '100', 'received', 'rg1', '2024-09-07 17:44:31', NULL, NULL, 'item 1', NULL, NULL),
(135, '102', '156', '1000', 'Accepted', 'rg1', '2024-09-07 17:45:34', NULL, NULL, 'item 1', NULL, NULL),
(136, '103', '157', '100', 'received', 'rg1', '2024-09-07 17:45:58', NULL, NULL, 'item 1', NULL, NULL),
(137, '103', '158', '10', 'Accepted', 'rg1', '2024-09-07 17:46:07', NULL, NULL, 'item 1', NULL, NULL),
(138, '', '159', '10', 'received', 'rg1', '2024-09-07 17:47:45', NULL, NULL, 'item 1', NULL, NULL),
(139, '105', '160', '100', 'received', 'rg1', '2024-09-07 17:49:26', NULL, NULL, 'item 1', NULL, NULL),
(140, '105', '161', '10000', 'Accepted', 'rg1', '2024-09-07 17:49:41', NULL, NULL, 'item 1', NULL, NULL),
(141, '106', '162', '100', 'received', 'rg1', '2024-09-07 17:50:36', NULL, NULL, 'item 1', NULL, NULL),
(142, '107', '163', '100', 'received', 'rg1', '2024-09-07 17:52:03', NULL, NULL, 'item 1', NULL, NULL),
(143, '110', '164', '10', 'received', 'rg1', '2024-09-07 17:57:15', NULL, NULL, 'item 1', NULL, NULL),
(144, '110', '165', '10', 'Rejected', 'rg1', '2024-09-07 17:57:35', NULL, NULL, 'item 1', NULL, NULL),
(145, '113', '166', '1', 'received', 'admin', '2024-09-08 08:30:09', NULL, NULL, 'item 1', NULL, NULL),
(146, '113', '167', '1', 'Accepted', 'admin', '2024-09-08 08:30:33', NULL, NULL, 'item 1', NULL, NULL),
(147, '114', '168', '100', 'received', 'admin', '2024-09-08 08:31:05', NULL, NULL, 'item 1', NULL, NULL),
(148, '115', '169', '10', 'received', 'admin', '2024-09-08 08:33:24', NULL, NULL, 'item 1', NULL, NULL),
(149, '115', '170', '1', 'Accepted', 'admin', '2024-09-08 08:34:09', NULL, NULL, 'item 1', NULL, NULL),
(150, '116', '171', '100', 'received', 'admin', '2024-09-08 08:35:08', NULL, NULL, 'item 1', NULL, NULL),
(151, '116', '172', '100', 'Accepted', 'admin', '2024-09-08 08:35:17', NULL, NULL, 'item 1', NULL, NULL),
(152, '116', '173', '10', 'Accepted', 'admin', '2024-09-08 08:35:27', NULL, NULL, 'item 1', NULL, NULL),
(153, '117', '174', '10', 'received', 'admin', '2024-09-08 08:36:42', NULL, NULL, 'item 1', NULL, NULL),
(154, '117', '175', '10', 'Accepted', 'admin', '2024-09-08 08:36:48', NULL, NULL, 'item 1', NULL, NULL),
(155, '117', '176', '10', 'Rejected', 'admin', '2024-09-08 08:36:58', NULL, NULL, 'item 1', NULL, NULL),
(156, '118', '177', '1', 'received', 'admin', '2024-09-08 08:39:39', NULL, NULL, 'item 1', NULL, NULL),
(157, '119', '178', '100', 'received', 'admin', '2024-09-08 08:40:09', NULL, NULL, 'item 1', NULL, NULL),
(158, '120', '179', '100', 'received', 'admin', '2024-09-08 08:40:50', NULL, NULL, 'item 1', NULL, NULL),
(159, '120', '180', '100', 'Delivered', 'admin', '2024-09-08 08:40:57', NULL, NULL, 'item 1', NULL, NULL),
(160, '120', '181', '100', 'received', 'admin', '2024-09-08 08:42:20', NULL, NULL, 'item 1', NULL, NULL),
(161, '120', '182', '10', 'Delivered', 'admin', '2024-09-08 08:42:32', NULL, NULL, 'item 1', NULL, NULL),
(162, '', '183', '100', 'received', 'rg1', '2024-09-08 15:23:10', NULL, NULL, 'first', NULL, NULL),
(163, '', '184', '10', 'Accepted', 'rg1', '2024-09-08 15:23:25', NULL, NULL, 'first', NULL, NULL),
(164, '', '185', '10', 'Accepted', 'rg1', '2024-09-08 15:23:30', NULL, NULL, 'first', NULL, NULL),
(165, '', '186', '10', 'received', 'rg1', '2024-09-08 15:25:34', NULL, NULL, 'first', NULL, NULL),
(166, '133', '187', '100', 'received', 'admin', '2024-09-08 16:12:57', NULL, NULL, 'item 1', NULL, NULL),
(167, '140', '188', '5', 'received', 'admin', '2024-09-10 12:58:50', NULL, NULL, 'miipjdoi', NULL, NULL),
(168, '144', '189', '100', 'received', 'admin', '2024-09-10 15:56:37', NULL, NULL, 'item 2', NULL, NULL),
(169, '145', '190', '100', 'received', 'admin', '2024-09-10 15:58:30', NULL, NULL, 'item 1', NULL, NULL),
(170, '147', '191', '10', 'received', 'admin', '2024-09-10 16:26:52', NULL, NULL, 'fjoefjio', NULL, NULL),
(171, '147', '192', '10', 'Accepted', 'admin', '2024-09-10 16:27:11', NULL, NULL, 'fjoefjio', NULL, NULL),
(172, '147', '193', '10', 'Delivered', 'admin', '2024-09-10 16:27:28', NULL, NULL, 'fjoefjio', NULL, NULL),
(173, '147', '194', '10', 'Delivered', 'admin', '2024-09-10 16:28:56', NULL, NULL, 'fjoefjio', NULL, NULL),
(174, '147', '195', '10', 'Delivered', 'admin', '2024-09-10 16:33:45', NULL, NULL, 'fjoefjio', NULL, NULL),
(175, '147', '196', '10', 'Delivered', 'admin', '2024-09-10 16:34:26', NULL, NULL, 'fjoefjio', NULL, NULL),
(176, '147', '197', '10', 'Delivered', 'admin', '2024-09-10 16:35:10', NULL, NULL, 'fjoefjio', NULL, NULL),
(177, '148', '198', '100', 'received', 'admin', '2024-09-11 06:56:20', NULL, NULL, 'first', NULL, NULL),
(178, '148', '199', '100', 'Accepted', 'admin', '2024-09-11 06:56:25', NULL, NULL, 'first', NULL, NULL),
(179, '148', '200', '100', 'Delivered', 'admin', '2024-09-11 06:56:37', NULL, NULL, 'first', NULL, NULL),
(180, '149', '201', '100', 'received', 'admin', '2024-09-11 07:03:01', NULL, NULL, 'item 1 ', NULL, NULL),
(181, '149', '202', '100', 'Accepted', 'admin', '2024-09-11 07:03:32', NULL, NULL, 'item 1 ', NULL, NULL),
(182, '153', '203', '100', 'received', 'rg1', '2024-09-12 14:21:33', NULL, NULL, 'tecod', NULL, NULL),
(183, '153', '204', '100', 'Accepted', 'rg1', '2024-09-12 14:21:42', NULL, NULL, 'tecod', NULL, NULL),
(184, '153', '205', '100', 'Delivered', 'rg1', '2024-09-12 14:22:02', NULL, NULL, 'tecod', NULL, NULL),
(185, '153', '206', '100', 'received', 'rg1', '2024-09-12 14:22:27', NULL, NULL, 'THIRD', NULL, NULL),
(186, '153', '207', '100', 'Accepted', 'rg1', '2024-09-12 14:22:34', NULL, NULL, 'THIRD', NULL, NULL),
(187, '153', '208', '100', 'Delivered', 'rg1', '2024-09-12 14:22:43', NULL, NULL, 'THIRD', NULL, NULL),
(188, '154', '209', '100', 'received', 'rg1', '2024-09-12 14:26:23', NULL, NULL, 'first', NULL, NULL),
(189, '154', '210', '100', 'Accepted', 'rg1', '2024-09-12 14:26:30', NULL, NULL, 'first', NULL, NULL),
(190, '154', '211', '100', 'Delivered', 'rg1', '2024-09-12 14:26:35', NULL, NULL, 'first', NULL, NULL),
(191, '154', '212', '100', 'Delivered', 'rg1', '2024-09-12 14:30:19', NULL, NULL, 'first', NULL, NULL),
(192, '154', '213', '100', 'Delivered', 'rg1', '2024-09-12 14:33:31', NULL, NULL, 'first', NULL, NULL),
(193, '154', '214', '100', 'Delivered', 'rg1', '2024-09-12 14:36:51', NULL, NULL, 'first', NULL, NULL),
(194, '155', '215', '100', 'received', 'rg1', '2024-09-12 14:37:32', NULL, NULL, 'tecod', NULL, NULL),
(195, '155', '216', '100', 'Accepted', 'rg1', '2024-09-12 14:37:40', NULL, NULL, 'tecod', NULL, NULL),
(196, '155', '217', '100', 'Delivered', 'rg1', '2024-09-12 14:37:47', NULL, NULL, 'tecod', NULL, NULL),
(197, '155', '218', '100', 'Delivered', 'rg1', '2024-09-12 14:38:28', NULL, NULL, 'tecod', NULL, NULL),
(198, '157', '219', '50', 'received', 'admin', '2024-09-12 14:41:14', NULL, NULL, 'first', NULL, NULL),
(199, '157', '220', '50', 'Accepted', 'admin', '2024-09-12 14:41:21', NULL, NULL, 'first', NULL, NULL),
(200, '157', '221', '50', 'Delivered', 'admin', '2024-09-12 14:41:28', NULL, NULL, 'first', NULL, NULL),
(201, '158', '222', '50', 'received', 'rg1', '2024-09-12 14:49:38', NULL, NULL, 'first', NULL, NULL),
(202, '159', '223', '50', 'received', 'rg1', '2024-09-12 14:53:29', NULL, NULL, 'first', NULL, NULL),
(203, '160', '224', '50', 'received', 'admin', '2024-09-12 14:56:29', NULL, NULL, 'first', NULL, NULL),
(204, '160', '225', '50', 'received', 'admin', '2024-09-12 14:59:01', NULL, NULL, 'first', NULL, NULL),
(205, '160', '226', '10', 'Accepted', 'admin', '2024-09-12 14:59:35', NULL, NULL, 'first', NULL, NULL),
(206, '160', '227', '10', 'Delivered', 'admin', '2024-09-12 14:59:59', NULL, NULL, 'first', NULL, NULL),
(207, '161', '228', '100', 'received', 'admin', '2024-09-12 15:01:44', NULL, NULL, 'first', NULL, NULL),
(208, '162', '229', '50', 'received', 'admin', '2024-09-12 15:02:27', NULL, NULL, 'THIRD', NULL, NULL),
(209, '162', '230', '10', 'Accepted', 'admin', '2024-09-12 15:02:49', NULL, NULL, 'THIRD', NULL, NULL),
(210, '162', '232', '10', 'Accepted', 'admin', '2024-09-12 15:11:33', NULL, NULL, 'THIRD', NULL, NULL),
(211, '162', '233', '1', 'received', 'admin', '2024-09-12 15:11:53', NULL, NULL, 'first', NULL, NULL),
(212, '163', '234', '50', 'received', 'admin', '2024-09-12 15:18:59', NULL, NULL, 'item 1 ', NULL, NULL),
(213, '163', '235', '50', 'Accepted', 'admin', '2024-09-12 15:20:10', NULL, NULL, 'item 1 ', NULL, NULL),
(214, '163', '236', '50', 'Accepted', 'admin', '2024-09-12 15:21:12', NULL, NULL, 'item 1 ', NULL, NULL),
(215, '163', '237', '10', 'Rejected', 'admin', '2024-09-12 15:26:04', NULL, NULL, 'item 1 ', NULL, NULL),
(216, '164', '238', '100', 'received', 'admin', '2024-09-12 15:28:07', NULL, NULL, 'item 1 ', NULL, NULL),
(217, '164', '0', '100', 'Accepted', 'admin', '2024-09-12 15:28:21', NULL, NULL, 'item 1 ', NULL, NULL),
(218, '165', '239', '100', 'received', 'admin', '2024-09-12 15:36:05', NULL, NULL, 'item 1 ', NULL, NULL),
(219, '165', '240', '100', 'Accepted', 'admin', '2024-09-12 15:36:10', NULL, NULL, 'item 1 ', NULL, NULL),
(220, '165', '241', '100', 'Accepted', 'admin', '2024-09-12 15:41:50', NULL, NULL, 'item 1 ', NULL, NULL),
(221, '165', '242', '100', 'Accepted', 'admin', '2024-09-12 15:43:35', NULL, NULL, 'item 1 ', NULL, NULL),
(222, '165', '243', '100', 'Accepted', 'admin', '2024-09-12 15:47:31', NULL, NULL, 'item 1 ', NULL, NULL),
(223, '166', '244', '100', 'received', 'admin', '2024-09-12 15:51:48', NULL, NULL, 'item 1 ', NULL, NULL),
(224, '167', '245', '100', 'received', 'admin', '2024-09-12 15:54:59', NULL, NULL, 'item 1 ', NULL, NULL),
(225, '168', '246', '100', 'received', 'admin', '2024-09-12 15:55:55', NULL, NULL, 'item 1 ', NULL, NULL),
(226, '169', '247', '500', 'received', 'admin', '2024-09-12 15:58:02', NULL, NULL, 'first', NULL, NULL),
(227, '170', '248', '10', 'received', 'admin', '2024-09-12 15:59:44', NULL, NULL, 'first', NULL, NULL),
(228, '170', '249', '10', 'Accepted', 'admin', '2024-09-12 15:59:53', NULL, NULL, 'first', NULL, NULL),
(229, '171', '250', '100', 'received', 'admin', '2024-09-12 16:02:02', NULL, NULL, 'first', NULL, NULL),
(230, '171', '251', '100', 'Accepted', 'admin', '2024-09-12 16:02:22', NULL, NULL, 'first', NULL, NULL),
(231, '171', '252', '100', 'Accepted', 'admin', '2024-09-12 16:02:45', NULL, NULL, 'first', NULL, NULL),
(232, '171', '100', '100', 'Accepted', 'admin', '2024-09-12 16:04:00', NULL, NULL, 'first', NULL, NULL),
(233, '171', '100', '100', 'Accepted', 'admin', '2024-09-12 16:05:31', NULL, NULL, 'first', NULL, NULL),
(234, '171', '100', '100', 'Accepted', 'admin', '2024-09-12 16:07:10', NULL, NULL, 'first', NULL, NULL),
(235, '171', '250', '100', 'Accepted', 'admin', '2024-09-12 16:08:35', NULL, NULL, 'first', NULL, NULL),
(236, '171', '250', '100', 'Accepted', 'admin', '2024-09-12 16:11:03', NULL, NULL, 'first', NULL, NULL),
(237, '171', '250', '100', 'Accepted', 'admin', '2024-09-12 16:12:12', NULL, NULL, 'first', NULL, NULL),
(238, '172', '257', '100', 'received', 'admin', '2024-09-12 16:14:53', NULL, NULL, 'first', NULL, NULL),
(239, '172', '257', '100', 'Accepted', 'admin', '2024-09-12 16:15:12', NULL, NULL, 'first', NULL, NULL),
(240, '173', '258', '10', 'received', 'admin', '2024-09-12 16:17:53', NULL, NULL, 'first', NULL, NULL),
(241, '173', '258', '10', 'Accepted', 'admin', '2024-09-12 16:18:25', NULL, NULL, 'first', NULL, NULL),
(242, '173', '258', '10', 'Rejected', 'admin', '2024-09-12 16:19:16', NULL, NULL, 'first', NULL, NULL),
(243, '174', '259', '100', 'received', 'admin', '2024-09-12 16:23:24', NULL, NULL, 'first', NULL, NULL),
(244, '174', '259', '100', 'Accepted', 'admin', '2024-09-12 16:23:46', NULL, NULL, 'first', NULL, NULL),
(245, '174', '259', '100', 'Rejected', 'admin', '2024-09-12 16:24:31', NULL, NULL, 'first', NULL, NULL),
(246, '175', '260', '100', 'received', 'admin', '2024-09-12 16:26:44', NULL, NULL, 'first', NULL, NULL),
(247, '175', '260', '100', 'Accepted', 'admin', '2024-09-12 16:27:04', NULL, NULL, 'first', NULL, NULL),
(248, '175', '260', '45', 'Rejected', 'admin', '2024-09-12 16:27:26', NULL, NULL, 'first', NULL, NULL),
(249, '176', '261', '500', 'received', 'admin', '2024-09-12 16:30:46', NULL, NULL, 'first', NULL, NULL),
(250, '176', '261', '100', 'Accepted', 'admin', '2024-09-12 16:30:54', NULL, NULL, 'first', NULL, NULL),
(251, '176', '261', '100', 'Rejected', 'admin', '2024-09-12 16:31:02', NULL, NULL, 'first', NULL, NULL),
(252, '177', '262', '10', 'received', 'admin', '2024-09-12 16:42:39', NULL, NULL, 'miipjdoi', NULL, NULL),
(253, '177', '262', '10', 'Accepted', 'admin', '2024-09-12 16:42:54', NULL, NULL, 'miipjdoi', NULL, NULL),
(254, '177', '262', '10', 'Rejected', 'admin', '2024-09-12 16:43:38', NULL, NULL, 'miipjdoi', NULL, NULL),
(255, '177', '262', '10', 'Rejected', 'admin', '2024-09-12 16:44:02', NULL, NULL, 'miipjdoi', NULL, NULL),
(256, '178', '263', '10', 'received', 'admin', '2024-09-12 16:45:05', NULL, NULL, 'n', NULL, NULL),
(257, '178', '263', '10', 'Accepted', 'admin', '2024-09-12 16:45:10', NULL, NULL, 'n', NULL, NULL),
(258, '178', '263', '10', 'Rejected', 'admin', '2024-09-12 16:45:18', NULL, NULL, 'n', NULL, NULL),
(259, '179', '264', '10', 'received', 'admin', '2024-09-12 16:47:26', NULL, NULL, 'n', NULL, NULL),
(260, '179', '264', '10', 'Accepted', 'admin', '2024-09-12 16:47:33', NULL, NULL, 'n', NULL, NULL),
(261, '179', '264', '10', 'Rejected', 'admin', '2024-09-12 16:47:38', NULL, NULL, 'n', NULL, NULL),
(262, '180', '265', '10', 'received', 'admin', '2024-09-12 22:15:04', NULL, NULL, 'fjoefjio', NULL, NULL),
(263, '180', '265', '10', 'Accepted', 'admin', '2024-09-12 22:17:08', NULL, NULL, 'fjoefjio', NULL, NULL),
(264, '180', '265', '10', 'Delivered', 'admin', '2024-09-12 22:17:25', NULL, NULL, 'fjoefjio', NULL, NULL),
(265, '180', '266', '10', 'received', 'admin', '2024-09-12 22:18:37', NULL, NULL, 'item 2', NULL, NULL),
(266, '180', '266', '10', 'Accepted', 'admin', '2024-09-12 22:18:47', NULL, NULL, 'item 2', NULL, NULL),
(267, '180', '266', '10', 'Delivered', 'admin', '2024-09-12 22:18:53', NULL, NULL, 'item 2', NULL, NULL),
(268, '', '267', '100', 'received', 'admin', '2024-09-14 06:56:37', NULL, NULL, 'item 1 ', NULL, NULL),
(269, '', '267', '100', 'Accepted', 'admin', '2024-09-14 06:56:44', NULL, NULL, 'item 1 ', NULL, NULL),
(270, '', '267', '100', 'Delivered', 'admin', '2024-09-14 06:56:52', NULL, NULL, 'item 1 ', NULL, NULL),
(271, '182', '268', '100', 'received', 'rg1', '2024-09-14 11:56:56', NULL, NULL, 'item 1 ', NULL, NULL),
(272, '182', '269', '50', 'received', 'rg1', '2024-09-14 12:52:10', NULL, NULL, 'item 2 ', NULL, NULL),
(273, '182', '269', '50', 'Accepted', 'rg1', '2024-09-14 12:52:21', NULL, NULL, 'item 2 ', NULL, NULL),
(274, '', NULL, '100', 'Delivered', 'rg1', '2024-09-14 13:28:32', NULL, NULL, 'item 1 ', NULL, NULL),
(275, '', NULL, '100', 'Delivered', 'rg1', '2024-09-14 13:28:33', NULL, NULL, 'item 1 ', NULL, NULL),
(276, '', NULL, '100', 'Delivered', 'rg1', '2024-09-14 13:28:33', NULL, NULL, 'item 1 ', NULL, NULL),
(277, '', NULL, '100', 'Accepted', 'rg1', '2024-09-14 13:29:17', NULL, NULL, 'item 1 ', NULL, NULL),
(278, '183', '270', '10', 'received', 'admin', '2024-09-14 13:30:14', NULL, NULL, 'item 1 ', NULL, NULL),
(279, '183', '270', '10', 'Accepted', 'admin', '2024-09-14 13:30:22', NULL, NULL, 'item 1 ', NULL, NULL),
(280, '', '234', '100', 'Accepted', 'rg1', '2024-09-14 13:37:37', NULL, NULL, 'item 1 ', NULL, NULL),
(281, '185', '271', '100', 'received', 'admin', '2024-09-14 13:44:34', NULL, NULL, 'abc item 1', NULL, NULL),
(282, '185', '271', '100', 'Accepted', 'admin', '2024-09-14 13:44:41', NULL, NULL, 'abc item 1', NULL, NULL),
(283, '188', '272', '100', 'received', 'admin', '2024-09-14 13:48:04', NULL, NULL, 'ji', NULL, NULL),
(284, '188', '272', '100', 'Accepted', 'admin', '2024-09-14 13:48:12', NULL, NULL, 'ji', NULL, NULL),
(285, '', '272', '100', 'Delivered', 'rg1', '2024-09-14 13:49:32', NULL, NULL, '584', NULL, NULL),
(286, '189', '273', '10', 'received', 'admin', '2024-09-28 06:49:17', NULL, NULL, 'm', NULL, NULL),
(287, '189', '273', '10', 'Accepted', 'admin', '2024-09-28 06:49:31', NULL, NULL, 'm', NULL, NULL),
(288, '189', '273', '10', 'Delivered', 'admin', '2024-09-28 06:49:40', NULL, NULL, 'm', NULL, NULL),
(289, '189', '273', '10', 'Delivered', 'admin', '2024-09-28 06:51:24', NULL, NULL, 'm', NULL, NULL),
(290, '190', '274', '100', 'received', 'admin', '2024-09-28 06:52:10', NULL, NULL, 'item 2 ', NULL, NULL),
(291, '190', '274', '100', 'Accepted', 'admin', '2024-09-28 06:52:18', NULL, NULL, 'item 2 ', NULL, NULL),
(292, '190', '274', '100', 'Delivered', 'admin', '2024-09-28 06:52:27', NULL, NULL, 'item 2 ', NULL, NULL),
(293, '190', '274', '100', 'Delivered', 'admin', '2024-09-28 06:57:06', NULL, NULL, 'item 2 ', NULL, NULL),
(294, '190', '274', '100', 'Delivered', 'admin', '2024-09-28 06:57:27', NULL, NULL, 'item 2 ', NULL, NULL),
(295, '190', '274', '100', 'Delivered', 'admin', '2024-09-28 06:58:43', NULL, NULL, 'item 2 ', NULL, NULL),
(296, '190', '274', '100', 'Delivered', 'admin', '2024-09-28 07:00:31', NULL, NULL, 'item 2 ', NULL, NULL),
(297, '191', '275', '10', 'received', 'admin', '2024-09-28 07:26:29', NULL, NULL, 'item 1', NULL, NULL),
(298, '191', '275', '10', 'Accepted', 'admin', '2024-09-28 07:26:51', NULL, NULL, 'item 1', NULL, NULL),
(299, '191', '275', '10', 'Delivered', 'admin', '2024-09-28 07:27:00', NULL, NULL, 'item 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `itemattribute`
--

CREATE TABLE `itemattribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `item_code` int(11) DEFAULT NULL,
  `attribute_value` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `itemattribute`
--

INSERT INTO `itemattribute` (`id`, `attribute_id`, `item_code`, `attribute_value`) VALUES
(1, 62, 51, 'bulb'),
(2, 63, 51, 'compone'),
(3, 64, 51, ''),
(4, 65, 51, ''),
(5, 66, 51, ''),
(6, 67, 51, ''),
(7, 68, 51, ''),
(8, 69, 51, ''),
(9, 70, 51, 'vendor'),
(10, 71, 51, 'description'),
(11, 72, 51, ''),
(12, 62, 52, 'bulb'),
(13, 63, 52, 'compone'),
(14, 64, 52, ''),
(15, 65, 52, ''),
(16, 66, 52, ''),
(17, 67, 52, ''),
(18, 68, 52, ''),
(19, 69, 52, ''),
(20, 70, 52, 'vendor'),
(21, 71, 52, 'description'),
(22, 72, 52, ''),
(23, 1, 53, ''),
(24, 2, 53, ''),
(25, 16, 53, ''),
(26, 17, 53, ''),
(27, 18, 53, ''),
(28, 19, 53, ''),
(29, 20, 53, ''),
(30, 21, 53, ''),
(31, 22, 53, ''),
(32, 23, 53, ''),
(33, 24, 53, ''),
(34, 25, 53, ''),
(35, 26, 53, ''),
(36, 27, 53, ''),
(37, 28, 53, ''),
(38, 29, 53, ''),
(39, 61, 53, ''),
(40, 1, 54, ''),
(41, 2, 54, ''),
(42, 16, 54, ''),
(43, 17, 54, ''),
(44, 18, 54, ''),
(45, 19, 54, ''),
(46, 20, 54, ''),
(47, 21, 54, ''),
(48, 22, 54, ''),
(49, 23, 54, ''),
(50, 24, 54, ''),
(51, 25, 54, ''),
(52, 26, 54, ''),
(53, 27, 54, ''),
(54, 28, 54, ''),
(55, 29, 54, ''),
(56, 61, 54, ''),
(57, 1, 55, ''),
(58, 2, 55, ''),
(59, 16, 55, ''),
(60, 17, 55, ''),
(61, 18, 55, ''),
(62, 19, 55, ''),
(63, 20, 55, ''),
(64, 21, 55, ''),
(65, 22, 55, ''),
(66, 23, 55, ''),
(67, 24, 55, ''),
(68, 25, 55, ''),
(69, 26, 55, ''),
(70, 27, 55, ''),
(71, 28, 55, ''),
(72, 29, 55, ''),
(73, 61, 55, ''),
(74, 1, 56, ''),
(75, 2, 56, ''),
(76, 16, 56, ''),
(77, 17, 56, ''),
(78, 18, 56, ''),
(79, 19, 56, ''),
(80, 20, 56, ''),
(81, 21, 56, ''),
(82, 22, 56, ''),
(83, 23, 56, ''),
(84, 24, 56, ''),
(85, 25, 56, ''),
(86, 26, 56, ''),
(87, 27, 56, ''),
(88, 28, 56, ''),
(89, 29, 56, ''),
(90, 61, 56, ''),
(91, 1, 57, ''),
(92, 2, 57, ''),
(93, 16, 57, ''),
(94, 17, 57, ''),
(95, 18, 57, ''),
(96, 19, 57, ''),
(97, 20, 57, ''),
(98, 21, 57, ''),
(99, 22, 57, ''),
(100, 23, 57, ''),
(101, 24, 57, ''),
(102, 25, 57, ''),
(103, 26, 57, ''),
(104, 27, 57, ''),
(105, 28, 57, ''),
(106, 29, 57, ''),
(107, 61, 57, ''),
(108, 1, 58, ''),
(109, 2, 58, ''),
(110, 16, 58, ''),
(111, 17, 58, ''),
(112, 18, 58, ''),
(113, 19, 58, ''),
(114, 20, 58, ''),
(115, 21, 58, ''),
(116, 22, 58, ''),
(117, 23, 58, ''),
(118, 24, 58, ''),
(119, 25, 58, ''),
(120, 26, 58, ''),
(121, 27, 58, ''),
(122, 28, 58, ''),
(123, 29, 58, ''),
(124, 61, 58, ''),
(125, 1, 59, ''),
(126, 2, 59, ''),
(127, 16, 59, ''),
(128, 17, 59, ''),
(129, 18, 59, ''),
(130, 19, 59, ''),
(131, 20, 59, ''),
(132, 21, 59, ''),
(133, 22, 59, ''),
(134, 23, 59, ''),
(135, 24, 59, ''),
(136, 25, 59, ''),
(137, 26, 59, ''),
(138, 27, 59, ''),
(139, 28, 59, ''),
(140, 29, 59, ''),
(141, 61, 59, ''),
(142, 1, 60, ''),
(143, 2, 60, ''),
(144, 16, 60, ''),
(145, 17, 60, ''),
(146, 18, 60, ''),
(147, 19, 60, ''),
(148, 20, 60, ''),
(149, 21, 60, ''),
(150, 22, 60, ''),
(151, 23, 60, ''),
(152, 24, 60, ''),
(153, 25, 60, ''),
(154, 26, 60, ''),
(155, 27, 60, ''),
(156, 28, 60, ''),
(157, 29, 60, ''),
(158, 61, 60, ''),
(159, 1, 61, ''),
(160, 2, 61, ''),
(161, 16, 61, ''),
(162, 17, 61, ''),
(163, 18, 61, ''),
(164, 19, 61, ''),
(165, 20, 61, ''),
(166, 21, 61, ''),
(167, 22, 61, ''),
(168, 23, 61, ''),
(169, 24, 61, ''),
(170, 25, 61, ''),
(171, 26, 61, ''),
(172, 27, 61, ''),
(173, 28, 61, ''),
(174, 29, 61, ''),
(175, 61, 61, ''),
(176, 1, 62, ''),
(177, 2, 62, ''),
(178, 16, 62, ''),
(179, 17, 62, ''),
(180, 18, 62, ''),
(181, 19, 62, ''),
(182, 20, 62, ''),
(183, 21, 62, ''),
(184, 22, 62, ''),
(185, 23, 62, ''),
(186, 24, 62, ''),
(187, 25, 62, ''),
(188, 26, 62, ''),
(189, 27, 62, ''),
(190, 28, 62, ''),
(191, 29, 62, ''),
(192, 61, 62, ''),
(193, 41, 63, 'iou'),
(194, 42, 63, ''),
(195, 43, 63, ''),
(196, 44, 63, ''),
(197, 45, 63, ''),
(198, 46, 63, ''),
(199, 47, 63, ''),
(200, 48, 63, ''),
(201, 49, 63, ''),
(202, 50, 63, ''),
(203, 41, 64, 'components'),
(204, 42, 64, '78'),
(205, 43, 64, '78'),
(206, 44, 64, 'black'),
(207, 45, 64, 'sjdkwo'),
(208, 46, 64, 'SIO'),
(209, 47, 64, ''),
(210, 48, 64, ''),
(211, 49, 64, ''),
(212, 50, 64, ''),
(213, 1, 65, 'fo4pfi'),
(214, 2, 65, 'pjpo'),
(215, 16, 65, 'jo'),
(216, 17, 65, 'jo'),
(217, 18, 65, 'j'),
(218, 19, 65, 'oj'),
(219, 20, 65, 'oj'),
(220, 21, 65, 'oj'),
(221, 22, 65, 'oj'),
(222, 23, 65, 'oj'),
(223, 24, 65, 'oj'),
(224, 25, 65, 'oj'),
(225, 26, 65, 'oj'),
(226, 27, 65, 'o'),
(227, 28, 65, 'oj'),
(228, 29, 65, 'oj'),
(229, 61, 65, 'oj'),
(230, 1, 66, 'fo4pfi'),
(231, 2, 66, 'pjpo'),
(232, 16, 66, 'jo'),
(233, 17, 66, 'jo'),
(234, 18, 66, 'j'),
(235, 19, 66, 'oj'),
(236, 20, 66, 'oj'),
(237, 21, 66, 'oj'),
(238, 22, 66, 'oj'),
(239, 23, 66, 'oj'),
(240, 24, 66, 'oj'),
(241, 25, 66, 'oj'),
(242, 26, 66, 'oj'),
(243, 27, 66, 'o'),
(244, 28, 66, 'oj'),
(245, 29, 66, 'oj'),
(246, 61, 66, 'oj'),
(247, 1, 67, 'fo4pfi'),
(248, 2, 67, 'pjpo'),
(249, 16, 67, 'jo'),
(250, 17, 67, 'jo'),
(251, 18, 67, 'j'),
(252, 19, 67, 'oj'),
(253, 20, 67, 'oj'),
(254, 21, 67, 'oj'),
(255, 22, 67, 'oj'),
(256, 23, 67, 'oj'),
(257, 24, 67, 'oj'),
(258, 25, 67, 'oj'),
(259, 26, 67, 'oj'),
(260, 27, 67, 'o'),
(261, 28, 67, 'oj'),
(262, 29, 67, 'oj'),
(263, 61, 67, 'oj'),
(264, 1, 68, ''),
(265, 2, 68, ''),
(266, 16, 68, ''),
(267, 17, 68, ''),
(268, 18, 68, ''),
(269, 19, 68, ''),
(270, 20, 68, ''),
(271, 21, 68, ''),
(272, 22, 68, ''),
(273, 23, 68, ''),
(274, 24, 68, ''),
(275, 25, 68, ''),
(276, 26, 68, ''),
(277, 27, 68, ''),
(278, 28, 68, ''),
(279, 29, 68, ''),
(280, 61, 68, ''),
(281, 51, 69, ''),
(282, 52, 69, ''),
(283, 53, 69, ''),
(284, 54, 69, ''),
(285, 55, 69, ''),
(286, 56, 69, ''),
(287, 57, 69, ''),
(288, 58, 69, ''),
(289, 59, 69, ''),
(290, 60, 69, ''),
(291, 51, 70, ''),
(292, 52, 70, ''),
(293, 53, 70, ''),
(294, 54, 70, ''),
(295, 55, 70, ''),
(296, 56, 70, ''),
(297, 57, 70, ''),
(298, 58, 70, ''),
(299, 59, 70, ''),
(300, 60, 70, '');

-- --------------------------------------------------------

--
-- Table structure for table `itemmaster`
--

CREATE TABLE `itemmaster` (
  `S_No` int(11) NOT NULL,
  `item_code` varchar(200) NOT NULL,
  `Item_Category` varchar(100) DEFAULT NULL,
  `Item_Name` varchar(255) DEFAULT NULL,
  `sub_category` varchar(100) DEFAULT NULL,
  `Item_Type` varchar(100) DEFAULT NULL,
  `si_unit` varchar(50) DEFAULT NULL,
  `Material` varchar(100) DEFAULT NULL,
  `Design` varchar(100) DEFAULT NULL,
  `Finish_type` varchar(100) DEFAULT NULL,
  `Half_Full_Thread` varchar(50) DEFAULT NULL,
  `Holder_Thread` varchar(50) DEFAULT NULL,
  `Holder_type` varchar(100) DEFAULT NULL,
  `Thread` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `Light_Output_colour` varchar(50) DEFAULT NULL,
  `Colour` varchar(50) DEFAULT NULL,
  `Cut` varchar(50) DEFAULT NULL,
  `Height` varchar(50) DEFAULT NULL,
  `Length` varchar(50) DEFAULT NULL,
  `Breadth` varchar(50) DEFAULT NULL,
  `Upper_Dia` varchar(50) DEFAULT NULL,
  `Bottom_Dia` varchar(50) DEFAULT NULL,
  `Centre_Hole_dia` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `watt` varchar(50) DEFAULT NULL,
  `Shape` varchar(100) DEFAULT NULL,
  `Side_Hole_dia` varchar(50) DEFAULT NULL,
  `Top_hole_dia` varchar(50) DEFAULT NULL,
  `No_of_ply` varchar(50) DEFAULT NULL,
  `Style` varchar(100) DEFAULT NULL,
  `Thickness` varchar(50) DEFAULT NULL,
  `Weight` varchar(50) DEFAULT NULL,
  `Depth` varchar(50) DEFAULT NULL,
  `Bottom_hole_dia` varchar(50) DEFAULT NULL,
  `Bottom_hole` varchar(100) DEFAULT NULL,
  `Core` varchar(100) DEFAULT NULL,
  `Inner_Outer_thread` varchar(50) DEFAULT NULL,
  `Upper_thread` varchar(50) DEFAULT NULL,
  `Lower_thread` varchar(50) DEFAULT NULL,
  `Thread_length` varchar(50) DEFAULT NULL,
  `Indian_Imported` varchar(50) DEFAULT NULL,
  `In_built_switch` varchar(50) DEFAULT NULL,
  `Wire_type` varchar(100) DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `attribute1` varchar(50) DEFAULT NULL,
  `attribute2` varchar(45) DEFAULT NULL,
  `attribute3` varchar(100) DEFAULT NULL,
  `itemmastercol` varchar(45) DEFAULT NULL,
  `imagePath` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `itemmaster`
--

INSERT INTO `itemmaster` (`S_No`, `item_code`, `Item_Category`, `Item_Name`, `sub_category`, `Item_Type`, `si_unit`, `Material`, `Design`, `Finish_type`, `Half_Full_Thread`, `Holder_Thread`, `Holder_type`, `Thread`, `Brand`, `Light_Output_colour`, `Colour`, `Cut`, `Height`, `Length`, `Breadth`, `Upper_Dia`, `Bottom_Dia`, `Centre_Hole_dia`, `Size`, `watt`, `Shape`, `Side_Hole_dia`, `Top_hole_dia`, `No_of_ply`, `Style`, `Thickness`, `Weight`, `Depth`, `Bottom_hole_dia`, `Bottom_hole`, `Core`, `Inner_Outer_thread`, `Upper_thread`, `Lower_thread`, `Thread_length`, `Indian_Imported`, `In_built_switch`, `Wire_type`, `vendor`, `attribute1`, `attribute2`, `attribute3`, `itemmastercol`, `imagePath`) VALUES
(1, 'abc', 'electric', 'bulb', 'electric', 'electric', '1', 'desret sand', 'round', 'glassy', 'no', '1', 'plastic', '1', 'surya', 'yellow', 'white', 'ys', '10.00', '20.00', '40.00', '12.30', '20.40', '43.40', 'large', '200.00', 'rounde', '29.12', '5.00', '12', 'sharp', '1.50', '200.00', '12.00', '10.50', '10', 'plastic', 'ys', 'upper thread ', 'lower thred', '10.00', 'yes ', 'no', 'fiber', 'east delhi vendore', NULL, NULL, NULL, NULL, NULL),
(2, 'itemabc2', 'utencile', 'fry pan ', 'utencil', 'utencil', '10', 'iron', 'round', 'non stick', NULL, NULL, NULL, NULL, 'example brand', NULL, NULL, NULL, '5.00', '12.00', '25.00', '25.05', '12.24', '4.30', 'medium', NULL, 'round', NULL, NULL, NULL, 'round', '2.00', '400.00', '32.00', '32.00', '23', 'non stick', NULL, NULL, NULL, NULL, 'no', NULL, NULL, 'east delhi vendor', NULL, NULL, NULL, NULL, NULL),
(3, 'WHIT-ALUM-GLOS-ROUN-SHAR-23-BREA-HEIG-WEIG-UP-BD-STYL-NOOF-VEND-DISC-IMG-TEST-', 'Electrical', '', 'Bulb', '', '0', 'Aluminum', '', '', '', '', '', '', '', '', 'white', '', '', '23', '', '', '', '', '', '', 'round', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'VENDORE', NULL, NULL, NULL, NULL, ''),
(4, 'MA-CU-FE------DE-IM-WI-', 'Electrical', '', 'Wire', '', '0', 'material ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'wireType', '', NULL, NULL, NULL, NULL, 'imahe'),
(5, 'MA-CU-FE------DE-IM-WI-', 'Electrical', '', 'Wire', '', '0', 'material ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'wireType', '', NULL, NULL, NULL, NULL, 'imahe'),
(6, '-----------------SH-20-20-', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '200watt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(7, 'CU-VE-OR-WA-DI-SH-SI-BR-IM-LO-LI-', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', 'brand', 'ligh out[', 'skyblue', '', '', '', '', '', '', '', 'size', 'Watt', 'shape', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'VENDER', NULL, NULL, NULL, NULL, 'images'),
(8, '-----------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(9, '-----------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(10, 'CU-VE-OR-WA-DI-SH-SI-BR-IM-LO-LI-', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', 'brand', 'ligh out[', 'skyblue', '', '', '', '', '', '', '', 'size', 'Watt', 'shape', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'VENDER', NULL, NULL, NULL, NULL, 'images'),
(11, '------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(12, '------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(13, '------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(14, '------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(15, '------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(16, '------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(17, 'WHIT-ALUM-GLOS-ROUN-SHAR-23-BREA-HEIG-WEIG-UP-BD-STYL-NOOF-VEND-DISC-IMG-TEST-', 'Electrical', '', 'Bulb', '', '0', 'Aluminum', '', '', '', '', '', '', '', '', 'white', '', '', '23', '', '', '', '', '', '', 'round', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'VENDORE', NULL, NULL, NULL, NULL, ''),
(18, 'ALUM-CUT-----SIZE-----', 'Electrical', '', 'Wire', '', '0', 'Aluminum', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'size', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(19, 'MA-CU-FE------DE-IM-WI-', 'Electrical', '', 'Wire', '', '0', 'material ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'wireType', '', NULL, NULL, NULL, NULL, 'imahe'),
(20, 'MA-CU-FE------DE-IM-WI-', 'Electrical', '', 'Wire', '', '0', 'material ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'wireType', '', NULL, NULL, NULL, NULL, 'imahe'),
(21, 'MA-CU-FE------DE-IM-WI-', 'Electrical', '', 'Wire', '', '0', 'material ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'wireType', '', NULL, NULL, NULL, NULL, 'imahe'),
(22, 'WHIT-ALUM-GLOS-ROUN-SHAR-23-BREA-HEIG-WEIG-UP-BD-STYL-NOOF-VEND-DISC-IMG-TEST-', 'Electrical', '', 'Bulb', '', '0', 'Aluminum', '', '', '', '', '', '', '', '', 'white', '', '', '23', '', '', '', '', '', '', 'round', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'VENDORE', NULL, NULL, NULL, NULL, ''),
(23, 'C:------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(24, 'C:------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(25, 'C:------------', 'Electrical', '', 'Bulb', '', '0', '', '', '', '', '', '', '', '', '', 'red', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `itemmastercategory`
--

CREATE TABLE `itemmastercategory` (
  `categoryId` int(11) NOT NULL,
  `catagory_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `itemmastercategory`
--

INSERT INTO `itemmastercategory` (`categoryId`, `catagory_name`) VALUES
(1, 'Electrical'),
(6, 'Glass'),
(7, 'Metal'),
(8, 'Statioery'),
(9, 'Shades'),
(10, 'Acrylic_Shades'),
(11, 'Crystal'),
(12, 'Packaging'),
(15, 'new'),
(16, ''),
(22, ''),
(23, '');

-- --------------------------------------------------------

--
-- Table structure for table `itemmasterheader`
--

CREATE TABLE `itemmasterheader` (
  `itemid` int(11) NOT NULL,
  `item_code` varchar(1000) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `subcatid` int(11) NOT NULL,
  `status` varchar(45) DEFAULT 'SAVE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `itemmasterheader`
--

INSERT INTO `itemmasterheader` (`itemid`, `item_code`, `categoryId`, `item_name`, `price`, `subcatid`, `status`) VALUES
(1, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(2, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(3, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(4, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(5, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(6, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(7, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(8, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(9, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(10, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(11, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(12, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(13, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(14, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(15, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(16, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(17, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(18, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(19, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(20, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(21, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(22, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(23, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(24, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(25, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(26, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(27, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(28, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(29, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(30, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(31, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(32, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(33, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(34, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(35, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(36, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(37, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(38, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(39, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(40, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(41, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(42, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(43, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(44, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(45, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(46, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(47, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(48, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(49, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(50, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(51, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(52, 'itemMasterItemcCodeGen', 1, NULL, NULL, 4, 'SAVE'),
(53, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(54, 'itemMasterItemcCodeGen', 1, NULL, NULL, 1, 'SAVE'),
(63, 'IO', 1, NULL, NULL, 2, 'SAVE'),
(64, 'CO7878BLSJSI', 1, NULL, NULL, 2, 'SAVE'),
(65, 'FO4P-PJPO-JO-JO-J-OJ-OJ-OJ-OJ-OJ-OJ-OJ-OJ-O-OJ-OJ-OJ-', 1, NULL, NULL, 1, 'SAVE'),
(66, 'FO4P-PJPO-JO-JO-J-OJ-OJ-OJ-OJ-OJ-OJ-OJ-OJ-O-OJ-OJ-OJ-', 1, NULL, NULL, 1, 'SAVE'),
(67, 'FO4P-PJPO-JO-JO-J-OJ-OJ-OJ-OJ-OJ-OJ-OJ-OJ-O-OJ-OJ-OJ-', 1, NULL, NULL, 1, 'SAVE'),
(68, '-----------------', 1, NULL, NULL, 1, 'SAVE'),
(69, '----------', 1, NULL, NULL, 3, 'SAVE'),
(70, '----------', 1, NULL, NULL, 3, 'SAVE'),
(71, '-----------------', 1, NULL, NULL, 1, 'SAVE'),
(72, 'BLAC-GQ----------------', 1, NULL, NULL, 1, 'SAVE'),
(73, 'BLAC-GQ----------------', 1, NULL, NULL, 1, 'SAVE'),
(74, 'BLAC-GQ----------------', 1, NULL, NULL, 1, 'SAVE'),
(75, 'BLAC-GQ----------------', 1, NULL, NULL, 1, 'SAVE'),
(76, 'BLAC-GQ----------------', 1, NULL, NULL, 1, 'SAVE');

-- --------------------------------------------------------

--
-- Table structure for table `item_master_main`
--

CREATE TABLE `item_master_main` (
  `S_No` int(11) NOT NULL,
  `item_code` varchar(200) DEFAULT NULL,
  `Item_Category` varchar(45) DEFAULT NULL,
  `Short_Description` varchar(45) DEFAULT NULL,
  `sub_category` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `SI_unit` varchar(45) DEFAULT NULL,
  `Material` varchar(45) DEFAULT NULL,
  `Design` varchar(45) DEFAULT NULL,
  `item_type` varchar(45) DEFAULT NULL,
  `Half_Full_Thread` varchar(45) DEFAULT NULL,
  `Holder_Thread` varchar(45) DEFAULT NULL,
  `Holder_type` varchar(45) DEFAULT NULL,
  `Thread` varchar(45) DEFAULT NULL,
  `Brand` varchar(45) DEFAULT NULL,
  `Light_Output_colour` varchar(45) DEFAULT NULL,
  `Colour` varchar(45) DEFAULT NULL,
  `Cut` varchar(45) DEFAULT NULL,
  `Height` varchar(45) DEFAULT NULL,
  `Length` varchar(45) DEFAULT NULL,
  `Breadth` varchar(45) DEFAULT NULL,
  `Upper_Dia` varchar(50) DEFAULT NULL,
  `Bottom_Dia` varchar(45) DEFAULT NULL,
  `Centre_Hole_dia` varchar(45) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `Watt` varchar(45) DEFAULT NULL,
  `Shape` varchar(45) DEFAULT NULL,
  `Side_Hole_dia` varchar(45) DEFAULT NULL,
  `Top_hole_dia` varchar(45) DEFAULT NULL,
  `No_of_ply` varchar(45) DEFAULT NULL,
  `Style` varchar(45) DEFAULT NULL,
  `Thickness` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `Depth` varchar(45) DEFAULT NULL,
  `Bottom_hole_dia` varchar(45) DEFAULT NULL,
  `Bottom_hole` varchar(45) DEFAULT NULL,
  `Core` varchar(45) DEFAULT NULL,
  `Inner_Outer_thread` varchar(45) DEFAULT NULL,
  `Upper_thread` varchar(45) DEFAULT NULL,
  `Lower_thread` varchar(45) DEFAULT NULL,
  `Thread_length` varchar(45) DEFAULT NULL,
  `Indian_Imported` varchar(45) DEFAULT NULL,
  `In_built_switch` varchar(45) DEFAULT NULL,
  `Wire_type` varchar(45) DEFAULT NULL,
  `Vendor` varchar(45) DEFAULT NULL,
  `standard_npd` varchar(45) DEFAULT NULL,
  `attribute2` varchar(45) DEFAULT NULL,
  `attribute3` varchar(45) DEFAULT NULL,
  `itemmastercol` varchar(45) DEFAULT NULL,
  `imagePath` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `departement` varchar(45) DEFAULT NULL,
  `updatedDate` varchar(45) DEFAULT NULL,
  `Long_Description` varchar(450) DEFAULT NULL,
  `Pintop` varchar(45) DEFAULT NULL,
  `Discount` varchar(45) DEFAULT NULL,
  `itemStatus` varchar(45) DEFAULT NULL,
  `createdDate` varchar(45) DEFAULT NULL,
  `fabric` varchar(45) DEFAULT NULL,
  `fabric_colour` varchar(45) DEFAULT NULL,
  `piping` varchar(45) DEFAULT NULL,
  `piping_color` varchar(45) DEFAULT NULL,
  `acrylic_sheet` varchar(45) DEFAULT NULL,
  `gallery_heght` varchar(45) DEFAULT NULL,
  `sheet` varchar(45) DEFAULT NULL,
  `sheet_color` varchar(45) DEFAULT NULL,
  `powder_coating` varchar(45) DEFAULT NULL,
  `subCatId` varchar(45) DEFAULT NULL,
  `colour_temparature` varchar(45) DEFAULT NULL,
  `Dimmable` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Collar` varchar(45) DEFAULT NULL,
  `Diameter` varchar(45) DEFAULT NULL,
  `Socket` varchar(45) DEFAULT NULL,
  `Ink_type` varchar(45) DEFAULT NULL,
  `Transparent` varchar(45) DEFAULT NULL,
  `piping_length` varchar(45) DEFAULT NULL,
  `Lining` varchar(45) DEFAULT NULL,
  `Lining_colour` varchar(45) DEFAULT NULL,
  `gallery` varchar(45) DEFAULT NULL,
  `Gallery_type` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `item_master_main`
--

INSERT INTO `item_master_main` (`S_No`, `item_code`, `Item_Category`, `Short_Description`, `sub_category`, `Price`, `SI_unit`, `Material`, `Design`, `item_type`, `Half_Full_Thread`, `Holder_Thread`, `Holder_type`, `Thread`, `Brand`, `Light_Output_colour`, `Colour`, `Cut`, `Height`, `Length`, `Breadth`, `Upper_Dia`, `Bottom_Dia`, `Centre_Hole_dia`, `Size`, `Watt`, `Shape`, `Side_Hole_dia`, `Top_hole_dia`, `No_of_ply`, `Style`, `Thickness`, `Weight`, `Depth`, `Bottom_hole_dia`, `Bottom_hole`, `Core`, `Inner_Outer_thread`, `Upper_thread`, `Lower_thread`, `Thread_length`, `Indian_Imported`, `In_built_switch`, `Wire_type`, `Vendor`, `standard_npd`, `attribute2`, `attribute3`, `itemmastercol`, `imagePath`, `createdBy`, `updatedBy`, `departement`, `updatedDate`, `Long_Description`, `Pintop`, `Discount`, `itemStatus`, `createdDate`, `fabric`, `fabric_colour`, `piping`, `piping_color`, `acrylic_sheet`, `gallery_heght`, `sheet`, `sheet_color`, `powder_coating`, `subCatId`, `colour_temparature`, `Dimmable`, `Location`, `Collar`, `Diameter`, `Socket`, `Ink_type`, `Transparent`, `piping_length`, `Lining`, `Lining_colour`, `gallery`, `Gallery_type`) VALUES
(349, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Wipro', 'Yellow', 'White', '', '2', '', '1.5', '', '', '', '', '40 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724235140_Screenshot 2024-08-20 114403.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '2400 k ', 'Dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(358, 'EL-2-1-FU-EA-WH-XY-25-3-RA', '1', 'Short_Description', NULL, '250', 'each', 'Plastic', '', '', '', '', '', '', 'Futurekart', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724238131_Screenshot 2024-08-21 162930.png', 'admin', NULL, 'departement', NULL, 'white holder', '', '3', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(359, 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', '1', 'Short_Description', NULL, 'HJ', 'select', 'rgr', '', '', '', '', '', '', 'select', 'White', 'White', '', 'rgrg', '', 'r', '', '', '', '', '3 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'JHJ', '', '', '', NULL, '1724237059_Screenshot 2024-08-20 192616.png', 'admin', NULL, 'departement', NULL, 'jNJJJHjhJhjHJhjHJH', '', 'HJ', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', 'rgr', 'select', 'HJ', '', NULL, 'GU-10', '', '', '', '', '', '', ''),
(361, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239074_Screenshot 2024-08-21 151905.png', 'rg3', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(362, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(363, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239074_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(364, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(365, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(366, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(367, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(368, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(369, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(370, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(371, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(372, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(373, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(374, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(375, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'Short_Description', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'admin', NULL, 'departement', NULL, 'yellow round bulb', '', '2', '', '24-08-21', '', '', '', '', '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(383, 'EL-2-1-OS-EA-WH-HO-30-3-RA', '1', '', NULL, '300', 'each', 'Metal', '', '', '', '', '', '', 'osram', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'holders supplier', '', '', '', NULL, '1724239428_Screenshot 2024-08-21 163934.png', 'admin', NULL, 'departement', NULL, 'white holder', '', '3', 'SUBMIT', '24-08-21', '', '', '', '', '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'GU-10', '', '', '', '', '', '', ''),
(387, 'EL-2-1-WI-EA-WH-XY-25-3-RA', '1', '', NULL, '250', 'each', 'Plastic', '', '', '', '', '', '', 'wipro', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724238639_Screenshot 2024-08-21 163934.png', 'admin', NULL, 'departement', NULL, 'white holder', '', '3', 'inRunning', '24-08-21', '', '', '', '', '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(398, 'EL-2-1-WI-EA-WH-XY-25-3-RA', '1', 'Short_Description', NULL, '250', 'each', 'Plastic', '', '', '', '', '', '', 'wipro', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724238639_Screenshot 2024-08-21 163934.png', 'admin', NULL, 'departement', NULL, 'white holder', '', '3', 'inRunning', '24-08-21', '', '', '', '', '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(403, 'GL-8-2-2-1.-BL-CL-XY-45-56', '6', 'Short_Description', NULL, '4500', 'Each', '', '', '', '', '', '', '', 'blissful', '', 'Clear', 'Star Cut', '8', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Single ply', '', '', '1.5 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724240818_Screenshot 2024-08-21 171242.png', 'admin', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-08-21', '', '', '', '', '', '', NULL, '', '', '6', '', '', 'rack 5 warehouse', 'Bottom', NULL, '', '', '', '', '', '', '', ''),
(404, 'GL-U6-U-6U-U6-U6-U-6-U6-6', '6', 'Short_Description', NULL, 'u6', 'select', '', '', '', '', '', '', '', 'u6', '', 'select', 'select', 'u6u6', 'u', '6u6', '', '', '', '', '', 'select', '', '', 'Triple ply', '', '', 'u6', '', '', NULL, '', '', '', '', '', '', '', '', '6', '', '', '', NULL, '1724241894_Screenshot 2024-08-18 185706.png', 'admin', NULL, 'departement', NULL, 'u', '', '6', 'inRunning', '24-08-21', '', '', '', '', '', '', NULL, '', '', '6', '', '', 'u6u6uu6u', 'Bottom', NULL, '', '', '', '', '', '', '', ''),
(405, 'EL-HU-UH-UH-UH-UH-UH-UH-UH-UH', '1', 'BULB-HUH-UH-UH-UH-UH', NULL, 'uh', 'select', 'huh', '', '', '', '', '', '', 'select', 'Transparent', 'Transparent', '', 'uh', '', 'uh', '', '', '', '', '3 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'uh', '', '', '', NULL, '1724357311_Screenshot (61).png', 'admin', NULL, 'departement', NULL, 'uh', '', 'uh', 'inRunning', '24-08-22', '', '', '', '', '', '', NULL, '', '', '1', 'uh', 'select', 'uh', '', NULL, 'E-14', '', '', '', '', '', '', ''),
(406, 'EL-DE-12-76-JI-ON-JA-10-10-DE', '1', 'BULB-DELH-12-767-JI-ONG', NULL, '100', 'KG', 'Delhi', '', '', '', '', '', '', 'Wipro', 'select', 'select', '', '12', '', '767', '', '', '', '', 'select', 'select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'jaipur', '', '', '', NULL, '1724267037_Screenshot 2024-08-18 185706.png', 'admin', NULL, 'departement', NULL, 'ong', '', '10', 'inRunning', '24-08-25', '', '', '', '', '', '', NULL, '', '', '1', 'ji', 'Dimmable', 'Delhi', '', NULL, 'select', '', '', '', '', '', '', ''),
(407, 'EL-U6-HJ-UJ-JH-HJ-HJ-JH-JH-JH', '1', 'BULB-U6U-HJH-UJH-JHJ-HJ', NULL, 'jh', 'KG', 'u6u', '', '', '', '', '', '', 'Osram', 'Off-white', 'White', '', 'hjh', '', 'ujh', '', '', '', '', '4 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'hjhh', '', '', '', NULL, '1724316781_Screenshot (60).png', 'admin', NULL, 'departement', NULL, 'hj', '', 'jh', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '1', 'jhj', 'Non dimmable', 'jhj', '', NULL, 'E-27', '', '', '', '', '', '', ''),
(408, 'EL-Y6-6Y-6Y-Y6-6Y-Y6-6Y-6Y-Y', '1', 'HOLDER-Y6Y-6Y-6Y6Y-Y6Y-6Y', NULL, '6y6', 'y6y', 'Metal', '', '', '', '', '', '', '6y6yy6y6', '', 'White', '', '', 'y6y', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'y6y', '', '', '', NULL, '1724316802_Screenshot (61).png', 'admin', NULL, 'departement', NULL, '6y', '', '6y', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '2', '', '', 'y', '', NULL, 'E-14', '', '', '', '', '', '', ''),
(409, 'EL-20-ST-ME-GR-ST-30-1.-RA', '1', 'WIRE-20 -STUR-METE-GREE-STUR', NULL, '300', 'meters', 'Copper', '', '', '', '', '', '', 'sturlite', '', 'Green', '', '', '20 ', '', '', '', '', '0.75 mm', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'On / Off one way switch', 'Single-core', 'sturlite', '', '', '', NULL, '1724239724_Screenshot 2024-08-21 165522.png', 'admin', NULL, 'departement', NULL, 'green 1.5 inches wire', '2 Pintop', '1.5', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '3', '', '', 'rack 5 warehouse', '', NULL, '', '', '', '', '', '', '', ''),
(410, 'EL-30-ST-ME-GR-ST-30-1.-RA', '1', 'WIRE-30-STUR-METE-GREE-STUR', NULL, '300', 'meters', 'Copper', '', '', '', '', '', '', 'sturlite', '', 'Black', '', '', '30', '', '', '', '', '0.5 mm', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'On / Off one way switch', '2-Core', 'sturlite', '', '', '', NULL, '1724239831_Screenshot 2024-08-21 165533.png', 'admin', NULL, 'departement', NULL, 'green 1.5 inches wire', '3 Pintop', '1.5', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '3', '', '', 'rack 5 warehouse', '', NULL, '', '', '', '', '', '', '', ''),
(411, 'GL-12-5-3-2.-XY-CL-XY-90-23', '6', 'URN-12-5-3-2.5-XYZ', NULL, '9000', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Star cut', '12', '', '', '', '', '', '', '', 'Circle', '', '', 'Single ply', '', '', '2.5', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724240395_Screenshot 2024-08-21 170234.png', 'admin', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '239', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '4', '', '', 'rack 7 warehouse', 'Both', NULL, '', '', '', '', '', '', '', ''),
(412, 'GL-12-4.-3-2.-XY-CL-XY-98-13', '6', 'URN-12-4.5-3-2.5 -XYZ', NULL, '9800', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Frosted', 'Honeycomb', '12', '', '', '', '', '', '', '', 'Circle', '', '', 'Double Ply', '', '', '2.5 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724240498_Screenshot 2024-08-21 170313.png', 'admin', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '139', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '4', '', '', 'rack 7 warehouse', 'Both', NULL, '', '', '', '', '', '', '', ''),
(413, 'GL-Y6-6Y-Y6-MI-Y6-Y6-Y6-Y6-Y6', '6', 'URN-Y6Y-6Y6Y-Y6-MIMI-Y6Y', NULL, 'y6y6', 'KG', '', '', '', '', '', '', '', 'y6y', '', 'Purple', 'Lehar cut', 'y6y', '', '', '', '', '', '', '', 'Circle', '', '', 'Double Ply', '', '', 'mimi', '', '', NULL, '', '', '', '', '', '', '', '', 'y6y', '', '', '', NULL, '1724316829_Screenshot (61).png', 'admin', NULL, 'departement', NULL, 'y6y6', '', 'y6', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '4', '', '', 'y6y6y6', 'Bottom', NULL, '', '', '', '', '', '', '', ''),
(414, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Eye cut', '6', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Single ply ', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724242839_Screenshot 2024-08-21 171812.png', 'admin', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'Both', NULL, '', '', '', '', '', '', '', ''),
(415, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Eye cut', '6', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Triple Ply', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724242910_Screenshot 2024-08-21 173609.png', 'admin', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'Bottom', NULL, '', '', '', '', '', '', '', ''),
(416, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Honeycomb cut', '6', '2', '2', '', '', '', '', '', 'Other', '', '', 'Double Ply', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724242964_Screenshot 2024-08-21 173716.png', 'admin', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'None', NULL, '', '', '', '', '', '', '', ''),
(417, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Frosted', 'Fali cut ', '6', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Double Ply', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724243067_Screenshot 2024-08-21 173502.png', 'admin', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'Both', NULL, '', '', '', '', '', '', '', ''),
(418, 'ST-0-A--JK-EA-WH-JK-20-2.-OF', '8', 'STAIONERY-0-A-4-JK E-EACH-WHIT', NULL, '200', 'each bundle', '', '', '', '', '', '', '', 'jk easy', '', 'White', '', '', '', '', '', '', '', 'A-4', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'jk easy ', '', '', '', NULL, '1724243723_Screenshot 2024-08-21 175906.png', 'admin', NULL, 'departement', NULL, 'white sheets for printing', '', '2.5', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '10', '', '', 'office', '', NULL, '', '0', '', '', '', '', '', ''),
(419, 'ST-BA----HA-EA-HA-HA-10-0-OF', '8', 'STAIONERY-BALL----HAUS-EACH-HAUS', NULL, '10 ', 'each', '', '', '', '', '', '', '', 'hauser', '', 'Blue', '', '', '', '', '', '', '', '--', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'hauser ltd.', '', '', '', NULL, '1724243447_Screenshot 2024-08-21 175725.png', 'admin', NULL, 'departement', NULL, 'hauser blue pens ', '', '0', 'inRunning', '24-09-01', '', '', '', '', '', '', NULL, '', '', '10', '', '', 'office ', '', NULL, '', 'ball', '', '', '', '', '', ''),
(420, 'EL-20-ST-ME-GR-ST-30-1.-RA', '1', 'WIRE-20 -STUR-METE-GREE-STUR', NULL, '300', 'meters', 'Copper', '', '', '', '', '', '', 'sturlite', '', 'Green', '', '', '20 ', '', '', '', '', '0.75 mm', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'On / Off one way switch', 'Single-core', 'sturlite', '', '', '', NULL, '1724239724_Screenshot 2024-08-21 165522.png', 'admin', NULL, 'departement', NULL, 'green 1.5 inches wire', '2 Pintop', '1.5', 'Approve', '24-09-05', '', '', '', '', '', '', NULL, '', '', '3', '', '', 'rack 5 warehouse', '', NULL, '', '', '', '', '', '', '', ''),
(421, 'GL-2-6-T-BV-JF-YU-UY-YU-YU', '6', 'URN-2-6-T-BVCJ-JFTY', NULL, 'yug', 'select', '', '', 'finish_good', '', '', '', '', 'jfty', '', 'Clear', 'Chatai cut', '2', '', '', '', '', '', '', '', 'Circle', '', '', 'Double Ply', '', '', 'bvcjhbjbhhj', '', '', NULL, '', '', '', '', '', '', '', '', 'uyg', '', '', '', NULL, '1725540170_Screenshot 2024-08-21 170313.png', 'admin', NULL, 'departement', NULL, 'yug', '', 'yug', 'Approve', '24-09-05', '', '', '', '', '', '', NULL, '', '', '4', '', '', 'ug', 'Both', NULL, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `item_master_temp`
--

CREATE TABLE `item_master_temp` (
  `S_No` int(11) NOT NULL,
  `item_code` varchar(200) DEFAULT NULL,
  `Item_Category` varchar(45) DEFAULT NULL,
  `Short_Description` varchar(45) DEFAULT NULL,
  `sub_category` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `SI_unit` varchar(45) DEFAULT NULL,
  `Material` varchar(45) DEFAULT NULL,
  `Design` varchar(45) DEFAULT NULL,
  `item_type` varchar(45) DEFAULT NULL,
  `Half_Full_Thread` varchar(45) DEFAULT NULL,
  `Holder_Thread` varchar(45) DEFAULT NULL,
  `Holder_type` varchar(45) DEFAULT NULL,
  `Thread` varchar(45) DEFAULT NULL,
  `Brand` varchar(45) DEFAULT NULL,
  `Light_Output_colour` varchar(45) DEFAULT NULL,
  `Colour` varchar(45) DEFAULT NULL,
  `Cut` varchar(45) DEFAULT NULL,
  `Height` varchar(45) DEFAULT NULL,
  `Length` varchar(45) DEFAULT NULL,
  `Breadth` varchar(45) DEFAULT NULL,
  `Upper_Dia` varchar(50) DEFAULT NULL,
  `Bottom_Dia` varchar(45) DEFAULT NULL,
  `Centre_Hole_dia` varchar(45) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `Watt` varchar(45) DEFAULT NULL,
  `Shape` varchar(45) DEFAULT NULL,
  `Side_Hole_dia` varchar(45) DEFAULT NULL,
  `Top_hole_dia` varchar(45) DEFAULT NULL,
  `No_of_ply` varchar(45) DEFAULT NULL,
  `Style` varchar(45) DEFAULT NULL,
  `Thickness` varchar(45) DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `Depth` varchar(45) DEFAULT NULL,
  `Bottom_hole_dia` varchar(45) DEFAULT NULL,
  `Bottom_hole` varchar(45) DEFAULT NULL,
  `Core` varchar(45) DEFAULT NULL,
  `Inner_Outer_thread` varchar(45) DEFAULT NULL,
  `Upper_thread` varchar(45) DEFAULT NULL,
  `Lower_thread` varchar(45) DEFAULT NULL,
  `Thread_length` varchar(45) DEFAULT NULL,
  `Indian_Imported` varchar(45) DEFAULT NULL,
  `In_built_switch` varchar(45) DEFAULT NULL,
  `Wire_type` varchar(45) DEFAULT NULL,
  `Vendor` varchar(45) DEFAULT NULL,
  `attribute1` varchar(45) DEFAULT NULL,
  `attribute2` varchar(45) DEFAULT NULL,
  `attribute3` varchar(45) DEFAULT NULL,
  `itemmastercol` varchar(45) DEFAULT NULL,
  `imagePath` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `departement` varchar(45) DEFAULT NULL,
  `updatedDate` varchar(45) DEFAULT NULL,
  `Long_Description` varchar(450) DEFAULT NULL,
  `Pintop` varchar(45) DEFAULT NULL,
  `Discount` varchar(45) DEFAULT NULL,
  `itemStatus` varchar(45) DEFAULT NULL,
  `createdDate` varchar(45) DEFAULT NULL,
  `fabric` varchar(45) DEFAULT NULL,
  `fabric_colour` varchar(45) DEFAULT NULL,
  `piping` varchar(45) DEFAULT NULL,
  `piping_color` varchar(45) DEFAULT NULL,
  `piping_length` varchar(45) DEFAULT NULL,
  `acrylic_sheet` varchar(45) DEFAULT NULL,
  `gallery_heght` varchar(45) DEFAULT NULL,
  `sheet` varchar(45) DEFAULT NULL,
  `sheet_color` varchar(45) DEFAULT NULL,
  `Frame` varchar(45) DEFAULT NULL,
  `subCatId` varchar(45) DEFAULT NULL,
  `colour_temparature` varchar(45) DEFAULT NULL,
  `Dimmable` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Collar` varchar(45) DEFAULT NULL,
  `Diameter` varchar(45) DEFAULT NULL,
  `Socket` varchar(45) DEFAULT NULL,
  `Ink_type` varchar(45) DEFAULT NULL,
  `Transparent` varchar(45) DEFAULT NULL,
  `Lining_colour` varchar(45) DEFAULT NULL,
  `Lining` varchar(45) DEFAULT NULL,
  `Gallery_type` varchar(45) DEFAULT NULL,
  `gallery` varchar(45) DEFAULT NULL,
  `Finish_type` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `item_master_temp`
--

INSERT INTO `item_master_temp` (`S_No`, `item_code`, `Item_Category`, `Short_Description`, `sub_category`, `Price`, `SI_unit`, `Material`, `Design`, `item_type`, `Half_Full_Thread`, `Holder_Thread`, `Holder_type`, `Thread`, `Brand`, `Light_Output_colour`, `Colour`, `Cut`, `Height`, `Length`, `Breadth`, `Upper_Dia`, `Bottom_Dia`, `Centre_Hole_dia`, `Size`, `Watt`, `Shape`, `Side_Hole_dia`, `Top_hole_dia`, `No_of_ply`, `Style`, `Thickness`, `Weight`, `Depth`, `Bottom_hole_dia`, `Bottom_hole`, `Core`, `Inner_Outer_thread`, `Upper_thread`, `Lower_thread`, `Thread_length`, `Indian_Imported`, `In_built_switch`, `Wire_type`, `Vendor`, `attribute1`, `attribute2`, `attribute3`, `itemmastercol`, `imagePath`, `createdBy`, `updatedBy`, `departement`, `updatedDate`, `Long_Description`, `Pintop`, `Discount`, `itemStatus`, `createdDate`, `fabric`, `fabric_colour`, `piping`, `piping_color`, `piping_length`, `acrylic_sheet`, `gallery_heght`, `sheet`, `sheet_color`, `Frame`, `subCatId`, `colour_temparature`, `Dimmable`, `Location`, `Collar`, `Diameter`, `Socket`, `Ink_type`, `Transparent`, `Lining_colour`, `Lining`, `Gallery_type`, `gallery`, `Finish_type`) VALUES
(346, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Wipro', 'Yellow', 'Yellow', '', '2', '', '1.5', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724234595_Screenshot 2024-08-21 151905.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'Dimmable', 'rack 2 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(347, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Osram', 'White', 'White', '', '2', '', '1.5', '', '', '', '', '40 watt', 'Pygmy', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724234783_Screenshot 2024-08-20 114403.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'Dimmable', 'rack 2 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(348, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Osram', 'White', 'White', '', '2', '', '1.5', '', '', '', '', '40 watt', 'Pygmy', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724234797_Screenshot 2024-08-20 114403.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'Dimmable', 'rack 2 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(349, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'select', 'Glass', '', '', '', '', '', '', 'select', 'Yellow', 'Yellow', '', '2', '', '1.5', '', '', '', '', '50 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724234878_Screenshot 2024-08-21 151905.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'select', 'rack 1 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(350, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'select', 'Glass', '', '', '', '', '', '', 'select', 'Yellow', 'Yellow', '', '2', '', '1.5', '', '', '', '', '50 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724235048_Screenshot 2024-08-14 181751.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'select', 'rack 1 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(351, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Wipro', 'Yellow', 'White', '', '2', '', '1.5', '', '', '', '', '40 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724235135_Screenshot 2024-08-20 114403.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'Dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(352, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Wipro', 'Yellow', 'White', '', '2', '', '1.5', '', '', '', '', '40 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724235140_Screenshot 2024-08-20 114403.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'Dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(353, 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', '1', 'BULB-RGR-RGRG-R-RGR-JNJJ', NULL, 'HJ', 'select', 'rgr', '', '', '', '', '', '', 'select', 'White', 'White', '', 'rgrg', '', 'r', '', '', '', '', '3 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'JHJ', '', '', '', NULL, '1724237059_Screenshot 2024-08-20 192616.png', 'admin', NULL, 'departement', NULL, 'jNJJJHjhJhjHJhjHJH', '', 'HJ', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'rgr', 'select', 'HJ', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(354, 'EL-2-1-FU-EA-WH-XY-25-3-RA', '1', 'HOLDER-2-1-FUTU-EACH-WHIT', NULL, '250', 'each', 'Plastic', '', '', '', '', '', '', 'Futurekart', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724238131_Screenshot 2024-08-21 162930.png', 'admin', NULL, 'departement', NULL, 'white holder', '', '3', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(355, 'EL-2-1-WI-EA-WH-XY-25-3-RA', '1', 'HOLDER-2-1-WIPR-EACH-WHIT', NULL, '250', 'each', 'Plastic', '', '', '', '', '', '', 'wipro', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724238639_Screenshot 2024-08-21 163934.png', 'rg1', NULL, 'departement', NULL, 'white holder', '', '3', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(356, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Osram', 'White', 'White', '', '2', '', '1.5', '', '', '', '', '15 watt', 'Pygmy', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724238887_Screenshot 2024-08-21 163934.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'select', '', '', NULL, NULL, NULL, NULL, NULL),
(357, 'EL-GL-2-1.-24-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1.5-2400-YELL', NULL, '30', 'Each', 'Glass', '', '', '', '', '', '', 'Wipro', 'White', 'Off-white', '', '2', '', '1.5', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724238937_Screenshot 2024-08-07 134307.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '2400 k ', 'Dimmable', 'rack 1 first floor', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(358, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1-1500-YELL', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239074_Screenshot 2024-08-21 151905.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(359, 'EL-GL-2-1-15-YE-XY-30-2-RA', '1', 'BULB-GLAS-2-1-1500-YELL', NULL, '30', 'Each', 'glass', '', '', '', '', '', '', 'Osram', 'Transparent', 'Off-white', '', '2', '', '1', '', '', '', '', '40 watt', 'Round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724239199_Screenshot 2024-08-21 151905.png', 'rg1', NULL, 'departement', NULL, 'yellow round bulb', '', '2', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '1500 k ', 'Non dimmable', 'rack 1 first floor', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(360, 'EL-2-1-OS-EA-WH-HO-30-3-RA', '1', 'HOLDER-2-1-OSRA-EACH-WHIT', NULL, '300', 'each', 'Metal', '', '', '', '', '', '', 'osram', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'holders supplier', '', '', '', NULL, '1724239428_Screenshot 2024-08-21 163934.png', 'rg1', NULL, 'departement', NULL, 'white holder', '', '3', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(361, 'EL-2-1-OS-EA-WH-HO-30-3-RA', '1', 'HOLDER-2-1-OSRA-EACH-WHIT', NULL, '300', 'each', 'Metal', '', '', '', '', '', '', 'osram', '', 'White', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'holders supplier', '', '', '', NULL, '1724239475_Screenshot 2024-08-21 163934.png', 'rg1', NULL, 'departement', NULL, 'white holder', '', '3', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', 'rack 4 ', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(362, 'EL-20-ST-ME-GR-ST-30-1.-RA', '1', 'WIRE-20 -STUR-METE-GREE-STUR', NULL, '300', 'meters', 'Copper', '', '', '', '', '', '', 'sturlite', '', 'Green', '', '', '20 ', '', '', '', '', '0.75 mm', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'On / Off one way switch', 'Single-core', 'sturlite', '', '', '', NULL, '1724239724_Screenshot 2024-08-21 165522.png', 'rg1', NULL, 'departement', NULL, 'green 1.5 inches wire', '2 Pintop', '1.5', 'Approve', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '3', '', '', 'rack 5 warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(363, 'EL-30-ST-ME-GR-ST-30-1.-RA', '1', 'WIRE-30-STUR-METE-GREE-STUR', NULL, '300', 'meters', 'Copper', '', '', '', '', '', '', 'sturlite', '', 'Black', '', '', '30', '', '', '', '', '0.5 mm', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'On / Off one way switch', '2-Core', 'sturlite', '', '', '', NULL, '1724239831_Screenshot 2024-08-21 165533.png', 'rg1', NULL, 'departement', NULL, 'green 1.5 inches wire', '3 Pintop', '1.5', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '3', '', '', 'rack 5 warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(364, 'GL-12-5-3-2.-XY-CL-XY-90-23', '6', 'URN-12-5-3-2.5-XYZ', NULL, '9000', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Star cut', '12', '', '', '5', '3', '', '', '', 'Circle', '', '', 'Single ply', '', '', '2.5', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724240395_Screenshot 2024-08-21 170234.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '239', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'rack 7 warehouse', 'Both', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(365, 'GL-12-4.-3-2.-XY-CL-XY-98-13', '6', 'URN-12-4.5-3-2.5 -XYZ', NULL, '9800', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Frosted', 'Honeycomb', '12', '', '', '4.5', '3', '', '', '', 'Circle', '', '', 'Double Ply', '', '', '2.5 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724240498_Screenshot 2024-08-21 170313.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '139', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'rack 7 warehouse', 'Both', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(366, 'GL-8-2-2-1.-BL-CL-XY-45-56', '6', 'PIPE-8-2-2-1.5 -BLIS', NULL, '4500', 'Each', '', '', '', '', '', '', '', 'blissful', '', 'Clear', 'Star Cut', '8', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Single ply', '', '', '1.5 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724240818_Screenshot 2024-08-21 171242.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '6', '', '', 'rack 5 warehouse', 'Bottom', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(367, 'GL-4-4-3-1.-XY-CL-XY-54-56', '6', 'SHADE-4-4-3-1.25-XYZ', NULL, '5476', 'select', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Overlong cut', '4', '4', '3', '', '', '', '', '', 'Circle', '', '', 'Double ply', '', '', '1.25 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724241002_Screenshot 2024-08-21 171902.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'SUBMIT', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '7', '', '', 'rack 5 warehouse', 'Bottom', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(368, 'GL-4-4-3-3.-XY-CL-XY-54-56', '6', 'SHADE-4-4-3-3.25-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Red', 'Star cut', '4', '4', '3', '', '', '', '', '', 'Circle', '', '', 'Single ply', '', '', '3.25 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724241459_Screenshot 2024-08-21 171812.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'SUBMIT', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '7', '', '', 'rack 5 warehouse', 'None', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(369, 'GL-U6-U-6U-U6-U6-U-6-U6-6', '6', 'PIPE-U6U6-U-6U6-U6-U6', NULL, 'u6', 'select', '', '', '', '', '', '', '', 'u6', '', 'select', 'select', 'u6u6', 'u', '6u6', '', '', '', '', '', 'select', '', '', 'Triple ply', '', '', 'u6', '', '', NULL, '', '', '', '', '', '', '', '', '6', '', '', '', NULL, '1724241894_Screenshot 2024-08-18 185706.png', 'admin', NULL, 'departement', NULL, 'u', '', '6', 'Reject', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '6', '', '', 'u6u6uu6u', 'Bottom', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(370, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'PIPE-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Frosted', 'Flower cut', '6', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Single ply', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724242592_Screenshot 2024-08-21 171242.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'Reject', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '6', '', '', 'rack 5 warehouse', 'None', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(371, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Eye cut', '6', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Single ply ', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724242839_Screenshot 2024-08-21 171812.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'Both', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(372, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Eye cut', '6', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Triple Ply', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724242910_Screenshot 2024-08-21 173609.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'Bottom', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(373, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Clear', 'Honeycomb cut', '6', '2', '2', '', '', '', '', '', 'Other', '', '', 'Double Ply', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724242964_Screenshot 2024-08-21 173716.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'None', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(374, 'GL-6-2-2-1.-XY-CL-XY-54-56', '6', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, '5476', 'Each', '', '', '', '', '', '', '', 'xyz', '', 'Frosted', 'Fali cut ', '6', '2', '2', '', '', '', '', '', 'Circle', '', '', 'Double Ply', '', '', '1.45 kg', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724243067_Screenshot 2024-08-21 173502.png', 'rg1', NULL, 'departement', NULL, 'clear glass with collar at top of brass 1.5 inches', '', '56', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '8', '', '', 'rack 5 warehouse', 'Both', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(375, 'ST-BA----HA-EA-HA-HA-10-0-OF', '8', 'STAIONERY-BALL----HAUS-EACH-HAUS', NULL, '10 ', 'each', '', '', '', '', '', '', '', 'hauser', '', 'Blue', '', '', '', '', '', '', '', '--', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'hauser ltd.', '', '', '', NULL, '1724243447_Screenshot 2024-08-21 175725.png', 'rg1', NULL, 'departement', NULL, 'hauser blue pens ', '', '0', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '10', '', '', 'office ', '', NULL, '', 'ball', '', NULL, NULL, NULL, NULL, NULL),
(376, 'ST-0-A--CL-EA-NO-CL-30-2-OF', '8', 'STAIONERY-0-A-5-CLAS-EACH-NOTE', NULL, '30', 'each', '', '', '', '', '', '', '', 'classmate', '', 'White', '', '', '', '', '', '', '', 'a-5', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'classmate', '', '', '', NULL, '1724243618_Screenshot 2024-08-21 175804.png', 'rg1', NULL, 'departement', NULL, 'notepads for employees', '', '2', 'Reject', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '10', '', '', 'office', '', NULL, '', '0', '', NULL, NULL, NULL, NULL, NULL),
(377, 'ST-0-A--JK-EA-WH-JK-20-2.-OF', '8', 'STAIONERY-0-A-4-JK E-EACH-WHIT', NULL, '200', 'each bundle', '', '', '', '', '', '', '', 'jk easy', '', 'White', '', '', '', '', '', '', '', 'A-4', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'jk easy ', '', '', '', NULL, '1724243723_Screenshot 2024-08-21 175906.png', 'rg1', NULL, 'departement', NULL, 'white sheets for printing', '', '2.5', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '10', '', '', 'office', '', NULL, '', '0', '', NULL, NULL, NULL, NULL, NULL),
(378, 'SH-5-4-4-GR-GR-1-2.-5 -GR', '9', 'SHADES-5-4-4-GREE-GREE', NULL, '300', 'Each', '', '', '', '', '', '', '', 'xyz', '', '', '', '5', '', '', '4', '4', '', '', '', 'circle', '', '', '', 'Tapered Drum', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724244267_Screenshot 2024-08-21 180759.png', 'rg1', NULL, 'departement', NULL, 'tapered drum shade ', '', '2', 'SUBMIT', '24-08-21', 'Coton', 'green ', 'Bottom', 'green', NULL, '5 inches', '2.5', NULL, '', 'Powder coating', '11', '', '', 'warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(379, 'SH-5-4-4-GR-GR-1-2.-5 -GR', '9', 'SHADES-5-4-4-GREE-GREE', NULL, '300', 'select', '', '', '', '', '', '', '', 'xyz', '', '', '', '5', '', '', '4', '4', '', '', '', 'circle', '', '', '', 'Empire', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724244314_Screenshot 2024-08-21 181016.png', 'rg1', NULL, 'departement', NULL, 'tapered drum shade ', '', '2', 'SUBMIT', '24-08-21', 'Silk', 'green ', 'Bottom', 'green', NULL, '5 inches', '2.5', NULL, '', 'Powder coating', '11', '', '', 'warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(380, 'SH-5-4-4-GR-GR-1-2.-5 -GR', '9', 'SHADES-5-4-4-GREE-GREE', NULL, '300', 'select', '', '', '', '', '', '', '', 'xyz', '', '', '', '5', '', '', '4', '4', '', '', '', 'circle', '', '', '', 'Box pleated', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724244353_Screenshot 2024-08-21 180818.png', 'rg1', NULL, 'departement', NULL, 'tapered drum shade ', '', '2', 'SUBMIT', '24-08-21', 'Coton', 'green ', 'Both', 'green', NULL, '5 inches', '2.5', NULL, '', 'Paint', '11', '', '', 'warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(381, 'PA-20---15-XY-BU-XY-29-2-WA', '12', 'BUBBLE WRAP-200 ---15 M-XYZ-BUBB', NULL, '290', 'Meter', '', '', '', '', '', '', '', 'xyz', '', '', '', '15 meter', '200 meter', '-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724244864_Screenshot 2024-08-21 181704.png', 'rg1', NULL, 'departement', NULL, 'bubble wrap', '', '2', 'SUBMIT', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '14', '', '', 'warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(382, 'PA-20---15-XY-BU-XY-29-2-WA', '12', 'SHRINK WRAP-200 ---15 M-XYZ-BUBB', NULL, '290', 'Meter', '', '', '', '', '', '', '', 'xyz', '', '', '', '15 meter', '200 meter', '-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724244915_Screenshot 2024-08-21 181737.png', 'rg1', NULL, 'departement', NULL, 'bubble wrap', '', '2', 'SUBMIT', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '15', '', '', 'warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(383, 'PA-20---15-7-XY-BU-XY-29-2', '12', 'CORRUGATED BOXES-200 ---15 M-7-XYZ', NULL, '290', 'Each', '', '', '', '', '', '', '', 'xyz', '', '', '', '15 meter', '200 meter', '-', '', '', '', '', '', '', '', '', '7', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724244952_Screenshot 2024-08-21 181758.png', 'rg1', NULL, 'departement', NULL, 'bubble wrap', '', '2', 'SUBMIT', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '16', '', '', 'warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(384, 'PA-20---15-7-XY-BU-XY-29-2', '12', 'WOODEN CRATING-200 ---15 M-7-XYZ', NULL, '290', 'Meter', '', '', '', '', '', '', '', 'xyz', '', '', '', '15 meter', '200 meter', '-', '', '', '', '', '', '', '', '', '7', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'xyz', '', '', '', NULL, '1724245065_Screenshot 2024-08-21 181858.png', 'rg1', NULL, 'departement', NULL, 'bubble wrap', '', '2', 'SUBMIT', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '17', '', '', 'warehouse', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(385, 'EL-DE-12-76-JI-ON-JA-10-10-DE', '1', 'BULB-DELH-12-767-JI-ONG', NULL, '100', 'KG', 'Delhi', '', '', '', '', '', '', 'Wipro', 'select', 'select', '', '12', '', '767', '', '', '', '', 'select', 'select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'jaipur', '', '', '', NULL, '1724267037_Screenshot 2024-08-18 185706.png', 'admin', NULL, 'departement', NULL, 'ong', '', '10', 'inRunning', '24-08-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'ji', 'Dimmable', 'Delhi', '', NULL, 'select', '', '', NULL, NULL, NULL, NULL, NULL),
(386, 'EL-U6-HJ-UJ-JH-HJ-HJ-JH-JH-JH', '1', 'BULB-U6U-HJH-UJH-JHJ-HJ', NULL, 'jh', 'KG', 'u6u', '', '', '', '', '', '', 'Osram', 'Off-white', 'White', '', 'hjh', '', 'ujh', '', '', '', '', '4 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'hjhh', '', '', '', NULL, '1724316781_Screenshot (60).png', 'admin', NULL, 'departement', NULL, 'hj', '', 'jh', 'inRunning', '24-08-22', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'jhj', 'Non dimmable', 'jhj', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(387, 'EL-Y6-6Y-6Y-Y6-6Y-Y6-6Y-6Y-Y', '1', 'HOLDER-Y6Y-6Y-6Y6Y-Y6Y-6Y', NULL, '6y6', 'y6y', 'Metal', '', '', '', '', '', '', '6y6yy6y6', '', 'White', '', '', 'y6y', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'y6y', '', '', '', NULL, '1724316802_Screenshot (61).png', 'admin', NULL, 'departement', NULL, '6y', '', '6y', 'inRunning', '24-08-22', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', 'y', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(388, 'GL-Y6-6Y-Y6-MI-Y6-Y6-Y6-Y6-Y6', '6', 'URN-Y6Y-6Y6Y-Y6-MIMI-Y6Y', NULL, 'y6y6', 'KG', '', '', '', '', '', '', '', 'y6y', '', 'Purple', 'Lehar cut', 'y6y', '', '', '6y6y6', 'y6', '', '', '', 'Circle', '', '', 'Double Ply', '', '', 'mimi', '', '', NULL, '', '', '', '', '', '', '', '', 'y6y', '', '', '', NULL, '1724316829_Screenshot (61).png', 'admin', NULL, 'departement', NULL, 'y6y6', '', 'y6', 'inRunning', '24-08-22', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'y6y6y6', 'Bottom', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(389, 'EL-HU-UH-UH-UH-UH-UH-UH-UH-UH', '1', 'BULB-HUH-UH-UH-UH-UH', NULL, 'uh', 'select', 'huh', '', '', '', '', '', '', 'select', 'Transparent', 'Transparent', '', 'uh', '', 'uh', '', '', '', '', '3 watt', 'Candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'uh', '', '', '', NULL, '1724357311_Screenshot (61).png', 'admin', NULL, 'departement', NULL, 'uh', '', 'uh', 'inRunning', '24-08-22', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'uh', 'select', 'uh', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(390, 'EL-N-NU-U-U-UB-UB-UB-UB-U', '1', 'BULB-N-NU-U-U-UB', NULL, 'ub', 'select', 'n', '', '', '', '', '', '', 'select', 'White', 'White', '', 'nu', '', 'u', '', '', '', '', 'select', 'select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'ub', '', '', '', NULL, '1725538674_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'ub', '', 'ub', 'SAVE', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'u', 'select', 'u', '', NULL, 'select', '', '', NULL, NULL, NULL, NULL, NULL),
(391, 'EL-J-IJ-JI-JI-IJ-IJ-J-IJ-IJ', '1', 'BULB-J-IJI-JI-JI-IJIJ', NULL, 'j', 'select', 'j', '', '', '', '', '', '', 'select', 'select', 'select', '', 'iji', '', 'ji', '', '', '', '', 'select', 'select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'iji', '', '', '', NULL, '1725539093_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'ijij', '', 'ij', 'SUBMIT', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'ji', 'select', 'ij', '', NULL, 'select', '', '', NULL, NULL, NULL, NULL, NULL),
(392, 'GL-JI-I-IJ-IJ-I-JI-JI-JI-JI', '6', 'URN-JIJI-I-IJ-IJIJ-I', NULL, 'ji', 'select', '', '', '', '', '', '', '', 'i', '', 'select', 'select', 'jiji', 'i', 'ij', '', '', '', '', '', 'select', '', '', 'select', '', '', 'ijijij', '', '', NULL, '', '', '', '', '', '', '', '', 'ji', '', '', '', NULL, '1725539289_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'ji', '', 'ji', 'SAVE', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'ji', 'select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(393, 'GL-JI-I-IJ-IJ-I-JI-JI-JI-JI', '6', 'URN-JIJI-I-IJ-IJIJ-I', NULL, 'ji', 'select', '', '', '', '', '', '', '', 'i', '', 'select', 'select', 'jiji', 'i', 'ij', '', '', '', '', '', 'select', '', '', 'select', '', '', 'ijijij', '', '', NULL, '', '', '', '', '', '', '', '', 'ji', '', '', '', NULL, '1725539354_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'ji', '', 'ji', 'SAVE', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'ji', 'select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(394, 'GL-JI-I-IJ-IJ-I-JI-JI-JI-JI', '6', 'URN-JIJI-I-IJ-IJIJ-I', NULL, 'ji', 'select', '', '', '', '', '', '', '', 'i', '', 'select', 'select', 'jiji', 'i', 'ij', '', '', '', '', '', 'select', '', '', 'select', '', '', 'ijijij', '', '', NULL, '', '', '', '', '', '', '', '', 'ji', '', '', '', NULL, '1725539450_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'ji', '', 'ji', 'SAVE', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'ji', 'select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(395, 'GL-JI-I-IJ-IJ-I-JI-JI-JI-JI', '6', 'URN-JIJI-I-IJ-IJIJ-I', NULL, 'ji', 'select', '', '', '', '', '', '', '', 'i', '', 'select', 'select', 'jiji', 'i', 'ij', '', '', '', '', '', 'select', '', '', 'select', '', '', 'ijijij', '', '', NULL, '', '', '', '', '', '', '', '', 'ji', '', '', '', NULL, '1725539599_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'ji', '', 'ji', 'SAVE', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'ji', 'select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(396, 'GL-JI-I-IJ-IJ-I-JI-JI-JI-JI', '6', 'URN-JIJI-I-IJ-IJIJ-I', NULL, 'ji', 'select', '', '', 'finish_good', '', '', '', '', 'i', '', 'select', 'select', 'jiji', 'i', 'ij', '', '', '', '', '', 'select', '', '', 'select', '', '', 'ijijij', '', '', NULL, '', '', '', '', '', '', '', '', 'ji', '', '', '', NULL, '1725539627_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'ji', '', 'ji', 'SAVE', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'ji', 'select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(397, 'EL-KM-M-OM-OM-OM-OM-MO-OM', '1', 'HOLDER-KMO-M-OM-OM-OM', NULL, 'omomo', 'Other', 'Metal', '', 'row_item', '', '', '', '', 'om', '', 'White', '', '', 'kmo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'om', '', '', '', NULL, '1725539690_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'om', '', 'mom', 'SAVE', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', 'om', '', NULL, 'select', '', '', NULL, NULL, NULL, NULL, NULL),
(398, 'GL-2-6-T-BV-JF-YU-UY-YU-YU', '6', 'URN-2-6-T-BVCJ-JFTY', NULL, 'yug', 'select', '', '', 'finish_good', '', '', '', '', 'jfty', '', 'Clear', 'Chatai cut', '2', '', '', '6', 't', '', '', '', 'Circle', '', '', 'Double Ply', '', '', 'bvcjhbjbhhj', '', '', NULL, '', '', '', '', '', '', '', '', 'uyg', '', '', '', NULL, '1725540170_Screenshot 2024-08-21 170313.png', 'admin', NULL, 'departement', NULL, 'yug', '', 'yug', 'Approve', '24-09-05', '', '', '', '', NULL, '', '', NULL, '', '', '4', '', '', 'ug', 'Both', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(399, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, 'departement', NULL, '', '', '', '', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(400, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, 'departement', NULL, '', '', '', '', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(401, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, 'departement', NULL, '', '', '', '', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(402, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', '', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(403, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', '', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(404, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(405, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(406, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(407, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(408, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(409, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(410, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(411, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(412, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(413, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(414, '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(415, '', '', '', NULL, '100', 'Each', 'mateiral', '', '', '', '', '', '', 'Osram', 'off-white', 'transparent', '', 'fef', '', 'ff', '', '', '', '', '13 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendore', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'long description ', '', 'discount', 'SUBMIT', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', 'fref', 'Dimmable', 'location', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(416, '', '', '', NULL, '100', 'Each', 'mateiral', '', '', '', '', '', '', 'Osram', 'off-white', 'transparent', '', 'fef', '', 'ff', '', '', '', '', '13 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendore', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'long description ', '', 'discount', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', 'fref', 'Dimmable', 'location', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(417, '', '', '', NULL, 'l', 'Select', 'Select', '', '', '', '', '', '', 'jj', '', 'black', '', '', 'jglkejlk', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'jlj', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'k', '', 'jlj', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', 'lj', '', NULL, 'Select', '', '', NULL, NULL, NULL, NULL, NULL),
(418, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', 'Select', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', 'Select', '', '', NULL, 'Select', '', '', NULL, NULL, NULL, NULL, NULL),
(419, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', 'Osram', 'transparent', 'transparent', '', '', '', '', '', '', '', '', '4.5 watt', 'round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', 'Dimmable', '', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(420, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', 'Select', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', 'Select', '', '', NULL, 'Select', '', '', NULL, NULL, NULL, NULL, NULL),
(421, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', 'Select', 'Select', 'transparent', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', 'Select', '', '', NULL, 'Select', '', '', NULL, NULL, NULL, NULL, NULL),
(422, '', '', '', NULL, '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, 'Select', '', '', NULL, NULL, NULL, NULL, NULL),
(423, '', '', '', NULL, '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', '', '', '', '', '', '', '', 'Select', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', 'Select', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(424, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', '', '', 'Select', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', 'Select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(425, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', '', '', 'Select', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', 'Select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(426, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', '', '', 'Select', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', 'Select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(427, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', '', '', 'Select', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '', '', '', '', 'Select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(428, '', '', '', NULL, '', 'Select', '', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', '', '', 'Select', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '6', '', '', '', 'Select', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(429, '', '', '', NULL, '100', 'KG', 'material', '', '', '', '', '', '', 'Osram', 'white', 'white', '', 'height', '', 'breadth', '', '', '', '', '50 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendore', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'long ', '', 'discount', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'color temprature', 'Dimmable', 'location', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(430, 'El----El-Bu----', 'Electrical', '', NULL, '', 'Select', '', '', '', '', '', '', '', 'Select', 'Select', 'Select', '', '', '', '', '', '', '', '', 'Select', 'Select', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '', 'Select', '', '', NULL, 'Select', '', '', NULL, NULL, NULL, NULL, NULL),
(431, 'El----El-Ho----', 'Electrical', '', NULL, '', 'Select', 'Select', '', '', '', '', '', '', '', '', 'White', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '2', '', '', '', '', NULL, 'Select', '', '', NULL, NULL, NULL, NULL, NULL),
(432, 'El-----El-Bu---', 'Electrical', '[object Object]-----Elec', NULL, 'price', 'KG', 'dwd', '', '', '', '', '', '', 'Osram', 'transparent', 'white', '', 'fef', '', 'fefq', '', '', '', '', '3 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vrndorew', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'long', '', 'disc', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'colr', 'Dimmable', 'lofw', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(433, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, 'midfun', 'KG', '', '', '', '', '', '', '', 'wipro', 'off-white', 'transparent', '', 'mfienw', '', 'n', '', '', '', '', '4 watt', 'round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'mfieon', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'nfiun', '', 'ui', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'uin', 'Dimmable', 'biu', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(434, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, 'dmioen', 'Each', '', '', '', '', '', '', '', 'Osram', 'white', 'off-white', '', 'fef', '', 'l,omoini', '', '', '', '', '3 watt', 'round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'mnuinui', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'iubi', '', 'mniofenuMIOFEJNI', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'un', 'Non dimmable', 'DUIE', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(435, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, '.dpeq', 'KG', 'kido', '', '', '', '', '', '', 'Osram', 'white', 'off-white', '', '898', '', 'mfwi', '', '', '', '', '25 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendore', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'mdkm', '', 'meiofwfn', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'ndeiufbiu', 'Non dimmable', 'mfoiepmf', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(436, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, 'mprive', 'KG', 'l,om', '', '', '', '', '', '', 'wipro', 'transparent', 'white', '', 'height', '', 'mflwk', '', '', '', '', '4 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendotrw', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'lonkg', '', 'mfekow', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'mokn', 'Dimmable', 'mofine', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(437, 'El-43-Bu---El-Bu---', 'Electrical', 'Bulb-436-Bulb---Elec', NULL, 'mprive', 'KG', 'l,om', '', 'Finish Goods', '', '', '', '', 'wipro', 'transparent', 'white', '', 'height', '', 'mflwk', '', '', '', '', '4 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendotrw', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'lonkg', '', 'mfekow', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'mokn', 'Dimmable', 'mofine', '', NULL, 'GU-10', '', '', NULL, NULL, NULL, NULL, NULL),
(438, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, 'DELKQFM', 'Each', 'nuwinq', '', '', '', '', '', '', 'wipro', 'transparent', 'white', '', 'fef', '', 'NOIDFEN', '', '', '', '', '3 watt', 'round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'FELKF', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'MDKEJQ', '', 'FFQEJEQF', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'FLEKMO', 'Non dimmable', 'MIONFDQ', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(439, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, 'YUBDUBDYBDUBDYU', 'Select', 'CE IU', '', '', '', '', '', '', 'Select', 'off-white', 'yellow', '', 'MPODMIO', '', 'NUI', '', '', '', '', '3 watt', 'candle', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'D', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'UD', '', 'BDUY', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'BNDBUDYUBDYUBDUD', 'Select', 'BYUB', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(440, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, 'prie', 'KG', '', '', '', '', '', '', '', 'Osram', 'transparent', 'white', '', 'height', '', 'breadth', '', '', '', '', '3 watt', 'pygmy', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendore', '', '', '', NULL, '', 'admin', NULL, 'departement', NULL, 'lonkg', '', 'discounf', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'color ', 'Dimmable', 'locaton', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `item_master_temp` (`S_No`, `item_code`, `Item_Category`, `Short_Description`, `sub_category`, `Price`, `SI_unit`, `Material`, `Design`, `item_type`, `Half_Full_Thread`, `Holder_Thread`, `Holder_type`, `Thread`, `Brand`, `Light_Output_colour`, `Colour`, `Cut`, `Height`, `Length`, `Breadth`, `Upper_Dia`, `Bottom_Dia`, `Centre_Hole_dia`, `Size`, `Watt`, `Shape`, `Side_Hole_dia`, `Top_hole_dia`, `No_of_ply`, `Style`, `Thickness`, `Weight`, `Depth`, `Bottom_hole_dia`, `Bottom_hole`, `Core`, `Inner_Outer_thread`, `Upper_thread`, `Lower_thread`, `Thread_length`, `Indian_Imported`, `In_built_switch`, `Wire_type`, `Vendor`, `attribute1`, `attribute2`, `attribute3`, `itemmastercol`, `imagePath`, `createdBy`, `updatedBy`, `departement`, `updatedDate`, `Long_Description`, `Pintop`, `Discount`, `itemStatus`, `createdDate`, `fabric`, `fabric_colour`, `piping`, `piping_color`, `piping_length`, `acrylic_sheet`, `gallery_heght`, `sheet`, `sheet_color`, `Frame`, `subCatId`, `colour_temparature`, `Dimmable`, `Location`, `Collar`, `Diameter`, `Socket`, `Ink_type`, `Transparent`, `Lining_colour`, `Lining`, `Gallery_type`, `gallery`, `Finish_type`) VALUES
(441, 'El-44-Bu---El-Bu---', 'Electrical', 'Bulb-440-Bulb---Elec', NULL, 'prie', 'KG', '', '', '', '', '', '', '', 'Osram', 'transparent', 'white', '', 'height', '', 'breadth', '', '', '', '', '3 watt', 'pygmy', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'vendore', '', '', '', NULL, '1726917886_Screenshot 2024-09-19 173310.png', 'admin', NULL, 'departement', NULL, 'lonkg', '', 'discounf', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', 'color ', 'Dimmable', 'locaton', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(442, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, '10000', 'Each', 'soft', '', '', '', '', '', '', 'wipro', 'white', 'transparent', '', '1010', '', '231', '', '', '', '', '40 watt', 'round', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 'karan', '', '', '', NULL, '1726919269_search_po.png', 'admin', NULL, 'departement', NULL, 'asdfghjkl;', '', '1200', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '1', '27', 'Dimmable', 'india', '', NULL, 'E-27', '', '', NULL, NULL, NULL, NULL, NULL),
(443, 'El-----El-Wi---', 'Electrical', 'Wire-----Elec', NULL, '200', 'KG ', 'Copper', '', '', '', '', '', '', 'brand', '', 'Blue', '', '', 'kl', '', '', '', '', '0.5 mm', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'On / Off one way switch', 'Single-core', 'vendore', '', '', '', NULL, '1726921583_Screenshot (1).png', 'rg1', NULL, 'departement', NULL, 'lonkg', '2 Pintop', 'duscounf', 'SAVE', '24-09-21', '', '', '', '', NULL, '', '', NULL, '', '', '3', '', '', 'rack-1', '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL),
(444, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, '', 'KG', 'plastic', '', '', '', '', '', '', 'Osram', 'transparent', 'transparent', '1', '4', '', '', '', '', '', '', '3 watt', 'round', '0', '', '', '', '10', '', '', '10', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1727014974_Screenshot (1).png', 'admin', NULL, 'departement', NULL, 'kdjksjdksjdkj', '', '', 'SAVE', '24-09-22', '', '', '', '', NULL, '', '', NULL, '', '', '1', '', 'Dimmable', '', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL),
(445, 'El-----El-Bu---', 'Electrical', 'Bulb-----Elec', NULL, '', 'KG', 'plastic', '', '', '', '', '', '', 'Osram', 'transparent', 'off-white', '1', '', '', '', '', '', '', '', '3 watt', 'round', '20', '', '', '', '10', '', '', '10', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, '1727015265_Screenshot (1).png', 'admin', NULL, 'departement', NULL, '', '', '', 'SAVE', '24-09-22', '', '', '', '', NULL, '', '', NULL, '', '', '1', '', 'Dimmable', '', '', NULL, 'E-14', '', '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lead_details_header_form`
--

CREATE TABLE `lead_details_header_form` (
  `record_no` int(11) NOT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `form_status` varchar(45) NOT NULL DEFAULT 'SAVE',
  `lead_source` varchar(45) DEFAULT NULL,
  `ref_By` varchar(45) DEFAULT NULL,
  `ref_phone_no` varchar(45) DEFAULT NULL,
  `lead_type` varchar(45) DEFAULT NULL,
  `contact_person_name` varchar(45) DEFAULT NULL,
  `contact_person_phone_no` varchar(45) DEFAULT NULL,
  `contact_person_email` varchar(45) DEFAULT NULL,
  `contact_person_address` varchar(45) DEFAULT NULL,
  `lead_received_date` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `lead_details_header_form`
--

INSERT INTO `lead_details_header_form` (`record_no`, `created_by`, `created_date`, `form_status`, `lead_source`, `ref_By`, `ref_phone_no`, `lead_type`, `contact_person_name`, `contact_person_phone_no`, `contact_person_email`, `contact_person_address`, `lead_received_date`) VALUES
(1, '', '2024-09-15 14:21:50', '', '', '', '', '', '', '', '', '', ''),
(2, '', '2024-09-15 14:26:22', '', '', '', '', '', '', '', '', '', ''),
(3, '', '2024-09-15 14:26:39', '', '', '', '', '', '', '', '', '', ''),
(4, '', '2024-09-15 14:27:40', '', '', '', '', '', '', '', '', '', ''),
(5, '', '2024-09-15 14:28:04', '', '', '', '', '', '', '', '', '', ''),
(6, '', '2024-09-15 14:29:06', '', 'Email', '', '', 'Dealer', 'awd', 'asd', 'asdasd', 'asd', '2024-09-11'),
(7, '', '2024-09-15 14:32:06', '', 'Direct-other', '', '', 'Retailer', 'sd', 'asd', 'asd', 'ad', '2024-09-09'),
(8, '', '2024-09-15 14:33:00', '', 'Email', '', '', 'Distributor', 'zs', 'as', 'asas', 'as', '2024-09-25'),
(9, '', '2024-09-15 14:34:38', '', 'Direct-other', '', '', 'Distributor', 'asdf', 'kjxchkjsd', 'asdasd', 'asd', '2024-09-24'),
(10, '', '2024-09-15 14:36:32', '', 'Direct-other', '', '', 'Distributor', 'asdfg', 'sdfg', 'asdf', 'sdf', '2024-09-27'),
(11, '', '2024-09-15 14:38:01', '', 'References', 'sdfgh', 'sdfg', 'Dealer', 'sdf', 'sdf', 'sdfg', 'sdf', '2024-09-26'),
(12, '', '2024-09-15 14:38:11', '', 'References', 'sdfgh', 'sdfg', 'Dealer', 'sdf', 'sdf', 'sdfg', 'sdf', '2024-09-26'),
(13, '', '2024-09-15 14:39:13', '', 'References', 'sdfgh', 'sdfg', 'Dealer', 'sdf', 'sdf', 'sdfg', 'sdf', '2024-09-26'),
(14, '', '2024-09-15 14:39:33', '', 'Direct-other', 'asd', 'asdf', 'Retailer', 'sd', 'sdf', 'd', 'fdf', '2024-10-03'),
(15, '', '2024-09-15 14:41:00', '', 'References', 'sdf', 'sdfg', 'Retailer', 'asdf', 'asdf', 'asdf', 'asdf', '2024-10-02'),
(16, '', '2024-09-15 14:42:54', '', '', '', '', '', '', '', '', '', ''),
(17, '', '2024-09-15 14:43:32', '', 'Direct-other', 'asdf', 'asd', 'Retailer', 'asdf', 'asd', 'asdf', 'asdf', '2024-09-26'),
(18, '', '2024-09-15 14:45:24', '', 'Direct-other', 'QWERT', 'QWER', 'Distributor', 'QWE', 'QWEq', 'weqw', 'e', '2024-10-09'),
(19, '', '2024-09-15 14:55:43', 'SAVE', 'Direct_other', 'asd', 'asdf', 'Distributor', 'asdf', 'asd', 'asd', 'asd', '2024-09-25'),
(20, '', '2024-09-15 14:57:25', 'SAVE', 'Email', 'asdf', 'asdf', 'Retailer', 'asd', 'asd', 'asd', 'asd', '2024-09-18'),
(21, '', '2024-09-15 15:02:18', 'SAVE', 'References', 'asd', 'asdf', 'Distributor', 'asdf', 'asd', 'asd', 'asd', '2024-09-27'),
(22, 'LTESTUSER1', '2024-09-15 15:04:02', 'SAVE', 'References', 'asd', 'asdf', 'Distributor', 'asdf', 'asd', 'asd', 'asd', '2024-09-27'),
(23, 'admin', '2024-09-15 17:54:55', 'SAVE', 'References', 'jhu', 'ih', 'Choose Lead Type', 'uihi', 'uhiuhuihiuh', 'ih', 'hi', '2024-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `address_1` varchar(45) DEFAULT NULL,
  `address_2` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `shipTO` varchar(45) DEFAULT NULL,
  `billTo` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `address_1`, `address_2`, `area`, `landmark`, `state`, `pincode`, `shipTO`, `billTo`, `created_date`, `created_by`) VALUES
(1, 'wz-12', NULL, 'south', NULL, 'delhi', '110046', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `move_order_item_header`
--

CREATE TABLE `move_order_item_header` (
  `id` int(11) NOT NULL,
  `so_number` varchar(45) DEFAULT NULL,
  `transaction_type` varchar(45) DEFAULT NULL,
  `move_order_type` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `source_invetory` varchar(45) DEFAULT NULL,
  `destination_inv` varchar(45) DEFAULT NULL,
  `date_require_sub_inventory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `update_date` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `move_order_item_header`
--

INSERT INTO `move_order_item_header` (`id`, `so_number`, `transaction_type`, `move_order_type`, `description`, `location`, `source_invetory`, `destination_inv`, `date_require_sub_inventory`, `status`, `created_by`, `created_date`, `updated_by`, `update_date`) VALUES
(1, 'so number', 'transaction type', 'move order ', 'descritopn', 'location', 'source inve', 'destination', 'date re', 'satus', 'created ', 'created date', NULL, NULL),
(2, 'so number', 'transaction type', 'move order ', 'descritopn', 'location', 'source inve', 'destination', 'date re', 'satus', 'created ', 'created date', NULL, NULL),
(3, 'so numberer', 'transaction type', '', 'description', 'location', NULL, 'destination', '2026-01-03', 'admin', 'admin', '2024-09-29 14:13:49', NULL, NULL),
(4, 'so numberer', 'transaction type', '', 'description', 'location', 'SOURCE', 'destination', '2026-01-03', 'admin', 'admin', '2024-09-29 14:17:', NULL, NULL),
(5, 'so numberer', 'transaction type', '', 'description', 'location', 'SOURCE', 'destination', '2026-01-03', 'admin', 'admin', '2024-09-29 14:17:', NULL, NULL),
(6, '392', 'transaction type', '', 'description', 'location', 'SOURCE', 'destination', '2026-01-03', 'admin', 'admin', '2024-09-29 14:18:', NULL, NULL),
(7, '', '', '', '', '', '', '', '', 'admin', 'admin', '2024-09-29 14:43:', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `move_order_line`
--

CREATE TABLE `move_order_line` (
  `id` int(11) NOT NULL,
  `move_order` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `itema_name` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `so_quantity` varchar(45) DEFAULT NULL,
  `on_hand` varchar(45) DEFAULT NULL,
  `mo_from_store` varchar(45) DEFAULT NULL,
  `issue_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `process_seq` varchar(45) DEFAULT NULL,
  `transaction_type` varchar(45) DEFAULT NULL,
  `date_required` varchar(45) DEFAULT NULL,
  `uom` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='		' ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `move_order_report_tbl`
--

CREATE TABLE `move_order_report_tbl` (
  `record_id` int(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `move_order_type` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `source_sub_inventory` varchar(100) NOT NULL,
  `destination_sub_inventory` varchar(100) NOT NULL,
  `date_required_subinv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `move_order_report_tbl`
--

INSERT INTO `move_order_report_tbl` (`record_id`, `description`, `status`, `move_order_type`, `transaction_type`, `location`, `source_sub_inventory`, `destination_sub_inventory`, `date_required_subinv`) VALUES
(1, 'sdvfb', 'dasf', 'asdvfb', 'asdsvfb', 'svdsfb', 'sdv', 'sadv', 'asd'),
(2, 'sdvf', 'csdv', 'scdv', 'cdv', 'cdv', 'scdv', 'scdvxc', 'cdv');

-- --------------------------------------------------------

--
-- Table structure for table `mtl_inventory_transactions`
--

CREATE TABLE `mtl_inventory_transactions` (
  `id` int(11) NOT NULL,
  `form_tranx_id` varchar(45) DEFAULT NULL,
  `sub_inventory_name` varchar(45) DEFAULT NULL,
  `sub_inventory_id` varchar(45) DEFAULT NULL,
  `location_id` varchar(45) DEFAULT NULL,
  `item_qty` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `mtl_inventory_transactionscol` varchar(45) DEFAULT NULL,
  `mtl_inventory_transactionscol1` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mtl_inventory_transactions`
--

INSERT INTO `mtl_inventory_transactions` (`id`, `form_tranx_id`, `sub_inventory_name`, `sub_inventory_id`, `location_id`, `item_qty`, `item_code`, `created_date`, `created_by`, `updated_date`, `updated_by`, `mtl_inventory_transactionscol`, `mtl_inventory_transactionscol1`) VALUES
(1, 'GRN', 'STORE', '1', '1', '100', 'EL-2-1-FU-EA-WH-XY-25-3-RA', '27-09-2024', 'admin', NULL, NULL, NULL, NULL),
(2, NULL, 'DAMAGED', '7', '1', '100', 'EL-2-1-FU-EA-WH-XY-25-3-RA', '27-09-2024', 'admin', NULL, NULL, NULL, NULL),
(3, 'GRN', 'STORE', '1', '1', '10', 'm', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'GRN', 'STORE', '1', '1', '10', 'm', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'GRN', 'STORE', '1', '1', '100', 'item 2 ', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'GRN', 'STORE', '1', '1', '100', 'item 2 ', '2024-09-28 07:00:31', 'admin', NULL, NULL, NULL, NULL),
(7, 'GRN', 'STORE', '1', '1', '10', 'item 1', '2024-09-28 07:27:00', 'admin', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mtl_sub_inventory`
--

CREATE TABLE `mtl_sub_inventory` (
  `id` int(11) NOT NULL,
  `sub_inventory_code` varchar(50) DEFAULT NULL,
  `sub_inventory_name` varchar(45) DEFAULT NULL,
  `active_warehouse_code` varchar(45) DEFAULT NULL,
  `start_date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mtl_sub_inventory`
--

INSERT INTO `mtl_sub_inventory` (`id`, `sub_inventory_code`, `sub_inventory_name`, `active_warehouse_code`, `start_date`, `end_date`, `created_date`, `created_by`, `updated_date`, `updated_by`, `location`) VALUES
(1, 'DLW-WH', 'store', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(2, 'DLW-WH', 'assembly', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(3, 'DLW-WH', 'disamentel', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(4, 'DLW-WH', 'packaging', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(5, 'DLW-WH', 'gateexit', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(6, 'DLW-WH', 'refurbishement', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(7, 'DLW-WH', 'Damage', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(8, 'DLW-WH', 'RTV', 'DLW-WH', NULL, NULL, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `organization_details_tbl`
--

CREATE TABLE `organization_details_tbl` (
  `customer_id` int(100) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `organigation_type` varchar(100) NOT NULL,
  `gst_number` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_type` varchar(100) NOT NULL,
  `sub_cutomer` varchar(100) NOT NULL,
  `customer_status` varchar(100) NOT NULL,
  `starting_date` varchar(100) NOT NULL,
  `ending_date` varchar(100) NOT NULL,
  `contact_person_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_person_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_status_table`
--

CREATE TABLE `project_status_table` (
  `id` int(11) NOT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `so_head_id` int(11) DEFAULT NULL,
  `so_line_id` int(11) DEFAULT NULL,
  `drawing_qty` int(11) DEFAULT NULL,
  `sample_qty` int(11) DEFAULT NULL,
  `issue_item_qty` int(11) DEFAULT NULL,
  `assemble_item_qty` int(11) DEFAULT NULL,
  `quality_check` int(11) DEFAULT NULL,
  `disamental_qty` int(11) DEFAULT NULL,
  `packaging_qty` int(11) DEFAULT NULL,
  `gate_exit` int(11) DEFAULT NULL,
  `installtion_qty` int(11) DEFAULT NULL,
  `created_date` varchar(50) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_header`
--

CREATE TABLE `purchase_order_header` (
  `PO_number` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `vendore_code` varchar(45) DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `supplier_site_code` varchar(45) DEFAULT NULL,
  `payment_term` varchar(45) DEFAULT NULL,
  `bill_to_location` varchar(45) DEFAULT NULL,
  `shipTo` varchar(45) DEFAULT NULL,
  `tax` varchar(45) DEFAULT NULL,
  `hsn_code` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'inProcess',
  `createdBy` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `remarks_nots` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `purchase_order_header`
--

INSERT INTO `purchase_order_header` (`PO_number`, `id`, `vendore_code`, `supplier_name`, `supplier_site_code`, `payment_term`, `bill_to_location`, `shipTo`, `tax`, `hsn_code`, `status`, `createdBy`, `created_date`, `updated_by`, `updated_date`, `remarks_nots`) VALUES
(1, NULL, '112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', NULL, NULL, 'admin', '2024-09-05 00:26:46', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'user', NULL, 'admin', '2024-09-05 00:26:46', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '', 'admin', '2024-09-05 00:26:46', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', NULL, '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'admin', '2024-08-25', 'admin', '2024-09-05 00:26:46', NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-25', NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', 'admin', '2024-08-25', 'admin', '2024-09-05 00:27:18', NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-25', NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-25', NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-25', NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-25', NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-25', NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-25', NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25', NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:10:43am', NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:10:51am', NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:13:02', NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:13:28', NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:18:28', NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:24:10', NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:25:31', NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:36:04', NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:36:16', NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:36:24', NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:36:32', NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:36:38', NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:46:23', NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:46:46', NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:47:04', NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:48:41', NULL, NULL, NULL),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:49:21', NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:50:48', NULL, NULL, NULL),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:53:08', NULL, NULL, NULL),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:56:39', NULL, NULL, NULL),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 09:58:53', NULL, NULL, NULL),
(69, NULL, NULL, 'vendore name', 'vendore site', NULL, 'bill to', 'ship to', NULL, NULL, 'in complete', 'admin', '2024-08-25 09:59:03', NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 10:06:18', NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 10:07:27', NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 10:10:40', NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 10:13:02', NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 10:16:32', NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 10:17:06', NULL, NULL, NULL),
(76, NULL, NULL, 'Vendor', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 10:17:38', NULL, NULL, NULL),
(77, NULL, NULL, 'Vendor', 'vendor_site', NULL, 'delhi', 'delhi', NULL, NULL, 'in complete', 'admin', '2024-08-25 10:18:14', NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 10:29:51', NULL, NULL, NULL),
(79, NULL, NULL, 'dwdwd', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 10:29:53', NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:01:02', NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:01:43', NULL, NULL, NULL),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:02:39', NULL, NULL, NULL),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:08:26', NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:10:42', NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:11:57', NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:12:28', NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:13:17', NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:13:30', NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:14:42', NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:16:25', NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:18:17', NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:19:06', NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:19:39', NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:22:38', NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:23:35', NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:23:48', NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:24:54', NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:25:38', NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:32:14', NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:32:43', NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:33:12', NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 11:35:54', NULL, NULL, NULL),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:23:43', NULL, NULL, NULL),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:25:05', NULL, NULL, NULL),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:30:33', NULL, NULL, NULL),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:31:14', NULL, NULL, NULL),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:32:58', NULL, NULL, NULL),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:33:04', NULL, NULL, NULL),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:34:04', NULL, NULL, NULL),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:38:03', NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:39:28', NULL, NULL, NULL),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:41:33', NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:41:45', NULL, NULL, NULL),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:42:08', NULL, NULL, NULL),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:44:11', NULL, NULL, NULL),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:46:27', NULL, NULL, NULL),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:46:43', NULL, NULL, NULL),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:46:58', NULL, NULL, NULL),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:52:24', NULL, NULL, NULL),
(120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:52:54', NULL, NULL, NULL),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:53:14', NULL, NULL, NULL),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:54:04', NULL, NULL, NULL),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:54:09', NULL, NULL, NULL),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 12:55:59', NULL, NULL, NULL),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 01:23:13', NULL, NULL, NULL),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 01:24:08', NULL, NULL, NULL),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 01:53:56', NULL, NULL, NULL),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 01:54:10', NULL, NULL, NULL),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 02:00:55', NULL, NULL, NULL),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 02:01:57', NULL, NULL, NULL),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 02:03:32', NULL, NULL, NULL),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 02:03:52', NULL, NULL, NULL),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 02:04:57', NULL, NULL, NULL),
(134, NULL, NULL, NULL, 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:05:33', NULL, NULL, NULL),
(135, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:07:49', NULL, NULL, NULL),
(136, NULL, NULL, '102', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:08:54', NULL, NULL, NULL),
(137, NULL, NULL, '101', 'vendor_site', NULL, 'jiiojoi', 'dijoejd', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:09:16', NULL, NULL, NULL),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 02:17:21', NULL, NULL, NULL),
(139, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:23:55', NULL, NULL, NULL),
(140, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:24:23', NULL, NULL, NULL),
(141, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:24:36', NULL, NULL, NULL),
(142, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:25:00', NULL, NULL, NULL),
(143, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:31:31', NULL, NULL, NULL),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 02:33:12', NULL, NULL, NULL),
(145, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 02:35:34', NULL, NULL, NULL),
(146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 05:08:54', NULL, NULL, NULL),
(147, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 05:09:35', NULL, NULL, NULL),
(148, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 05:10:35', NULL, NULL, NULL),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 05:11:50', NULL, NULL, NULL),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 05:11:59', NULL, NULL, NULL),
(151, NULL, NULL, '101', 'vendor_site', NULL, '', '', NULL, NULL, 'in complete', 'admin', '2024-08-25 05:13:53', NULL, NULL, NULL),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:05:06', NULL, NULL, NULL),
(153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:05:12', NULL, NULL, NULL),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:05:23', NULL, NULL, NULL),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:05:30', NULL, NULL, NULL),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:07:31', NULL, NULL, NULL),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:10:18', NULL, NULL, NULL),
(158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:51:56', NULL, NULL, NULL),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:52:45', NULL, NULL, NULL),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:53:58', NULL, NULL, NULL),
(161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:55:20', NULL, NULL, NULL),
(162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:56:28', NULL, NULL, NULL),
(163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:57:11', NULL, NULL, NULL),
(164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:57:59', NULL, NULL, NULL),
(165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 07:59:32', NULL, NULL, NULL),
(166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:01:25', NULL, NULL, NULL),
(167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:02:08', NULL, NULL, NULL),
(168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:02:28', NULL, NULL, NULL),
(169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:03:23', NULL, NULL, NULL),
(170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:03:37', NULL, NULL, NULL),
(171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:04:56', NULL, NULL, NULL),
(172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:07:38', NULL, NULL, NULL),
(173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:10:48', NULL, NULL, NULL),
(174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:12:40', NULL, NULL, NULL),
(175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:13:00', NULL, NULL, NULL),
(176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:13:58', NULL, NULL, NULL),
(177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:14:05', NULL, NULL, NULL),
(178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:15:10', NULL, NULL, NULL),
(179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:15:19', NULL, NULL, NULL),
(180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:15:29', NULL, NULL, NULL),
(181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:16:43', NULL, NULL, NULL),
(182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:16:53', NULL, NULL, NULL),
(183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-25 08:16:58', NULL, NULL, NULL),
(184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 06:46:42', NULL, NULL, NULL),
(185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 06:56:45', NULL, NULL, NULL),
(186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 06:56:54', NULL, NULL, NULL),
(187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 06:57:24', NULL, NULL, NULL),
(188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:00:36', NULL, NULL, NULL),
(189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:01:48', NULL, NULL, NULL),
(190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:01:59', NULL, NULL, NULL),
(191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:02:04', NULL, NULL, NULL),
(192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:02:37', NULL, NULL, NULL),
(193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:03:15', NULL, NULL, NULL),
(194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:03:40', NULL, NULL, NULL),
(195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:05:20', NULL, NULL, NULL),
(196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:05:52', NULL, NULL, NULL),
(197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:06:58', NULL, NULL, NULL),
(198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:07:02', NULL, NULL, NULL),
(199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:07:04', NULL, NULL, NULL),
(200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:07:53', NULL, NULL, NULL),
(201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:08:47', NULL, NULL, NULL),
(202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:09:07', NULL, NULL, NULL),
(203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:09:19', NULL, NULL, NULL),
(204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:09:27', NULL, NULL, NULL),
(205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:11:47', NULL, NULL, NULL),
(206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:12:11', NULL, NULL, NULL),
(207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:13:28', NULL, NULL, NULL),
(208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:14:29', NULL, NULL, NULL),
(209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:17:13', NULL, NULL, NULL),
(210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:18:37', NULL, NULL, NULL),
(211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:18:37', NULL, NULL, NULL),
(212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:20:40', NULL, NULL, NULL),
(213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:21:20', NULL, NULL, NULL),
(214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:26:49', NULL, NULL, NULL),
(215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:26:52', NULL, NULL, NULL),
(216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:28:31', NULL, NULL, NULL),
(217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:34:33', NULL, NULL, NULL),
(218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:34:42', NULL, NULL, NULL),
(219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:34:58', NULL, NULL, NULL),
(220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:35:05', NULL, NULL, NULL),
(221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:35:29', NULL, NULL, NULL),
(222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:35:33', NULL, NULL, NULL),
(223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:35:38', NULL, NULL, NULL),
(224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:37:18', NULL, NULL, NULL),
(225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:37:51', NULL, NULL, NULL),
(226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:38:44', NULL, NULL, NULL),
(227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:39:58', NULL, NULL, NULL),
(228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:41:06', NULL, NULL, NULL),
(229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:42:05', NULL, NULL, NULL),
(230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:43:34', NULL, NULL, NULL),
(231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:44:06', NULL, NULL, NULL),
(232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:45:07', NULL, NULL, NULL),
(233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:47:19', NULL, NULL, NULL),
(234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:47:59', NULL, NULL, NULL),
(235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:55:34', NULL, NULL, NULL),
(236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:57:23', NULL, NULL, NULL),
(237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:57:59', NULL, NULL, NULL),
(238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:58:59', NULL, NULL, NULL),
(239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 07:59:35', NULL, NULL, NULL),
(240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:00:19', NULL, NULL, NULL),
(241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:01:20', NULL, NULL, NULL),
(242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:02:01', NULL, NULL, NULL),
(243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:03:28', NULL, NULL, NULL),
(244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:03:42', NULL, NULL, NULL),
(245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:04:42', NULL, NULL, NULL),
(246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:05:12', NULL, NULL, NULL),
(247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:05:34', NULL, NULL, NULL),
(248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:06:21', NULL, NULL, NULL),
(249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:08:01', NULL, NULL, NULL),
(250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:09:33', NULL, NULL, NULL),
(251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:12:03', NULL, NULL, NULL),
(252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:18:16', NULL, NULL, NULL),
(253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:21:49', NULL, NULL, NULL),
(254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:22:43', NULL, NULL, NULL),
(255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:22:54', NULL, NULL, NULL),
(256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:26:22', NULL, NULL, NULL),
(257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:32:31', NULL, NULL, NULL),
(258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:35:21', NULL, NULL, NULL),
(259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:44:11', NULL, NULL, NULL),
(260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:53:02', NULL, NULL, NULL),
(261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 08:59:24', NULL, NULL, NULL),
(262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:02:24', NULL, NULL, NULL),
(263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:04:14', NULL, NULL, NULL),
(264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:04:41', NULL, NULL, NULL),
(265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:05:20', NULL, NULL, NULL),
(266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:06:34', NULL, NULL, NULL),
(267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:11:33', NULL, NULL, NULL),
(268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:12:24', NULL, NULL, NULL),
(269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:13:21', NULL, NULL, NULL),
(270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:16:24', NULL, NULL, NULL),
(271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:18:29', NULL, NULL, NULL),
(272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:21:17', NULL, NULL, NULL),
(273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:22:07', NULL, NULL, NULL),
(274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:22:15', NULL, NULL, NULL),
(275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:23:26', NULL, NULL, NULL),
(276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:24:13', NULL, NULL, NULL),
(277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:28:10', NULL, NULL, NULL),
(278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:37:12', NULL, NULL, NULL),
(279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:37:19', NULL, NULL, NULL),
(280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:38:11', NULL, NULL, NULL),
(281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:38:16', NULL, NULL, NULL),
(282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:39:15', NULL, NULL, NULL),
(283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:39:20', NULL, NULL, NULL),
(284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:39:42', NULL, NULL, NULL),
(285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:39:50', NULL, NULL, NULL),
(286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:40:10', NULL, NULL, NULL),
(287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:40:14', NULL, NULL, NULL),
(288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:40:16', NULL, NULL, NULL),
(289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:40:22', NULL, NULL, NULL),
(290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 09:40:54', NULL, NULL, NULL),
(291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:00:49', NULL, NULL, NULL),
(292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:01:19', NULL, NULL, NULL),
(293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:01:24', NULL, NULL, NULL),
(294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:03:12', NULL, NULL, NULL),
(295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:04:37', NULL, NULL, NULL),
(296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:04:43', NULL, NULL, NULL),
(297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:04:47', NULL, NULL, NULL),
(298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:05:06', NULL, NULL, NULL),
(299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:05:20', NULL, NULL, NULL),
(300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:06:04', NULL, NULL, NULL),
(301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:09:32', NULL, NULL, NULL),
(302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:09:47', NULL, NULL, NULL),
(303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:10:01', NULL, NULL, NULL),
(304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:10:10', NULL, NULL, NULL),
(305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:10:54', NULL, NULL, NULL),
(306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:11:03', NULL, NULL, NULL),
(307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:11:13', NULL, NULL, NULL),
(308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:11:48', NULL, NULL, NULL),
(309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:11:58', NULL, NULL, NULL),
(310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:12:05', NULL, NULL, NULL),
(311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:15:49', NULL, NULL, NULL),
(312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:16:52', NULL, NULL, NULL),
(313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:17:02', NULL, NULL, NULL),
(314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:17:06', NULL, NULL, NULL),
(315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:18:50', NULL, NULL, NULL),
(316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:19:15', NULL, NULL, NULL),
(317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:19:20', NULL, NULL, NULL),
(318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:22:08', NULL, NULL, NULL),
(319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:22:15', NULL, NULL, NULL),
(320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:22:44', NULL, NULL, NULL),
(321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:25:03', NULL, NULL, NULL),
(322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:25:18', NULL, NULL, NULL),
(323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:25:36', NULL, NULL, NULL),
(324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:25:54', NULL, NULL, NULL),
(325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:26:00', NULL, NULL, NULL),
(326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:26:16', NULL, NULL, NULL),
(327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:49:49', NULL, NULL, NULL),
(328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:51:10', NULL, NULL, NULL),
(329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:51:39', NULL, NULL, NULL),
(330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:51:41', NULL, NULL, NULL),
(331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 10:52:07', NULL, NULL, NULL),
(332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:01:18', NULL, NULL, NULL),
(333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:01:55', NULL, NULL, NULL),
(334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:04:33', NULL, NULL, NULL),
(335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:05:06', NULL, NULL, NULL),
(336, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:06:43', NULL, NULL, NULL),
(337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:08:00', NULL, NULL, NULL),
(338, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:08:50', NULL, NULL, NULL),
(339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:08:54', NULL, NULL, NULL),
(340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:09:43', NULL, NULL, NULL),
(341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:10:40', NULL, NULL, NULL),
(342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:11:13', NULL, NULL, NULL),
(343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:11:17', NULL, NULL, NULL),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:11:21', NULL, NULL, NULL),
(345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:12:18', NULL, NULL, NULL),
(346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:13:52', NULL, NULL, NULL),
(347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:14:32', NULL, NULL, NULL),
(348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:20:23', NULL, NULL, NULL),
(349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:21:04', NULL, NULL, NULL),
(350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:21:12', NULL, NULL, NULL),
(351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:21:36', NULL, NULL, NULL),
(352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:22:47', NULL, NULL, NULL),
(353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:14', NULL, NULL, NULL),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:18', NULL, NULL, NULL),
(355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:21', NULL, NULL, NULL),
(356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:23', NULL, NULL, NULL),
(357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:26', NULL, NULL, NULL),
(358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:44', NULL, NULL, NULL),
(359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:49', NULL, NULL, NULL),
(360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:23:53', NULL, NULL, NULL),
(361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:25:09', NULL, NULL, NULL),
(362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:25:12', NULL, NULL, NULL),
(363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:31:21', NULL, NULL, NULL),
(364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:34:48', NULL, NULL, NULL),
(365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:34:58', NULL, NULL, NULL),
(366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:35:42', NULL, NULL, NULL),
(367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:36:01', NULL, NULL, NULL),
(368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:36:56', NULL, NULL, NULL),
(369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:37:42', NULL, NULL, NULL),
(370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:37:51', NULL, NULL, NULL),
(371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:38:45', NULL, NULL, NULL),
(372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:44:07', NULL, NULL, NULL),
(373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:45:17', NULL, NULL, NULL),
(374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:45:30', NULL, NULL, NULL),
(375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:45:33', NULL, NULL, NULL),
(376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:45:39', NULL, NULL, NULL),
(377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:46:04', NULL, NULL, NULL),
(378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 11:46:18', NULL, NULL, NULL),
(379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'user_admin', '2024-08-26 12:42:16', NULL, NULL, NULL),
(380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 12:51:54', NULL, NULL, NULL),
(381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 02:02:11', NULL, NULL, NULL),
(382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 02:58:56', NULL, NULL, NULL),
(383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 03:17:29', NULL, NULL, NULL),
(384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-26 03:18:22', NULL, NULL, NULL),
(385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-28 07:32:05', NULL, NULL, NULL),
(386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-28 07:54:08', NULL, NULL, NULL),
(387, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'rg1', '2024-08-29 01:20:44', NULL, NULL, NULL),
(388, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-29 01:52:15', NULL, NULL, NULL),
(389, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'in complete', 'admin', '2024-08-31 10:23:15', NULL, NULL, NULL),
(390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', '', '2024-08-31 18:27:45', NULL, NULL, NULL),
(391, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:28:03', NULL, NULL, NULL),
(392, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:28:04', NULL, NULL, NULL),
(393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:28:04', NULL, NULL, NULL),
(394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:28:04', NULL, NULL, NULL),
(395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:28:04', NULL, NULL, NULL),
(396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:30:05', NULL, NULL, NULL),
(397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:30:05', NULL, NULL, NULL),
(398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:30:05', NULL, NULL, NULL),
(399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:30:06', NULL, NULL, NULL),
(400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:30:06', NULL, NULL, NULL),
(401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:30:58', NULL, NULL, NULL);
INSERT INTO `purchase_order_header` (`PO_number`, `id`, `vendore_code`, `supplier_name`, `supplier_site_code`, `payment_term`, `bill_to_location`, `shipTo`, `tax`, `hsn_code`, `status`, `createdBy`, `created_date`, `updated_by`, `updated_date`, `remarks_nots`) VALUES
(402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:30:59', NULL, NULL, NULL),
(403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:32:05', NULL, NULL, NULL),
(404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:32:50', NULL, NULL, NULL),
(405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:35:14', NULL, NULL, NULL),
(406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:35:44', NULL, NULL, NULL),
(407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:35:44', NULL, NULL, NULL),
(408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:35:44', NULL, NULL, NULL),
(409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:35:44', NULL, NULL, NULL),
(410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:37:07', NULL, NULL, NULL),
(411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:37:46', NULL, NULL, NULL),
(412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:37:48', NULL, NULL, NULL),
(413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:38:02', NULL, NULL, NULL),
(414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:39:10', NULL, NULL, NULL),
(415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:39:17', NULL, NULL, NULL),
(416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:39:18', NULL, NULL, NULL),
(417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:39:18', NULL, NULL, NULL),
(418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:39:19', NULL, NULL, NULL),
(419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 18:39:19', NULL, NULL, NULL),
(420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 19:06:47', NULL, NULL, NULL),
(421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 19:07:31', NULL, NULL, NULL),
(422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 19:07:35', NULL, NULL, NULL),
(423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 20:47:16', NULL, NULL, NULL),
(424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:51', NULL, NULL, NULL),
(425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:52', NULL, NULL, NULL),
(426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:52', NULL, NULL, NULL),
(427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:52', NULL, NULL, NULL),
(428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:56', NULL, NULL, NULL),
(429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:57', NULL, NULL, NULL),
(430, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:57', NULL, NULL, NULL),
(431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:34:57', NULL, NULL, NULL),
(432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:35:10', NULL, NULL, NULL),
(433, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:35:30', NULL, NULL, NULL),
(434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:38:20', NULL, NULL, NULL),
(435, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:38:20', NULL, NULL, NULL),
(436, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:38:21', NULL, NULL, NULL),
(437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:38:31', NULL, NULL, NULL),
(438, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:39:36', NULL, NULL, NULL),
(439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:00', NULL, NULL, NULL),
(440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:01', NULL, NULL, NULL),
(441, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:01', NULL, NULL, NULL),
(442, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:11', NULL, NULL, NULL),
(443, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:18', NULL, NULL, NULL),
(444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:19', NULL, NULL, NULL),
(445, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:21', NULL, NULL, NULL),
(446, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:33', NULL, NULL, NULL),
(447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:37', NULL, NULL, NULL),
(448, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:44', NULL, NULL, NULL),
(449, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:44', NULL, NULL, NULL),
(450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:40:48', NULL, NULL, NULL),
(451, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:41:22', NULL, NULL, NULL),
(452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:41:22', NULL, NULL, NULL),
(453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:41:22', NULL, NULL, NULL),
(454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:41:27', NULL, NULL, NULL),
(455, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:41:42', NULL, NULL, NULL),
(456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:41:51', NULL, NULL, NULL),
(457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:41:52', NULL, NULL, NULL),
(458, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-08-31 21:42:27', NULL, NULL, NULL),
(459, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:32:06', NULL, NULL, NULL),
(460, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:32:09', NULL, NULL, NULL),
(461, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:32:37', NULL, NULL, NULL),
(462, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:32:39', NULL, NULL, NULL),
(463, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:32:46', NULL, NULL, NULL),
(464, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:33:18', NULL, NULL, NULL),
(465, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:33:19', NULL, NULL, NULL),
(466, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:33:19', NULL, NULL, NULL),
(467, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:33:19', NULL, NULL, NULL),
(468, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:33:19', NULL, NULL, NULL),
(469, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:34:13', NULL, NULL, NULL),
(470, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:34:14', NULL, NULL, NULL),
(471, NULL, '', '', '', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:34:14', NULL, NULL, NULL),
(472, NULL, 'j', 'kj', 'kjk', '4', '', '', NULL, NULL, 'inProcess', 'admin', '2024-08-31 22:34:39', NULL, NULL, NULL),
(473, NULL, 'Vendor code', 'delhi', 'site code', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:29:32', NULL, NULL, NULL),
(474, NULL, 'Vendor code', 'delhi', 'site code', '', '', '', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:30:56', NULL, NULL, NULL),
(475, NULL, 'hu', 'huhu', 'hu', 'hu', 'hu', 'hu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:39:35', NULL, NULL, NULL),
(476, NULL, 'hu', 'huhu', 'hu', 'hu', 'hu', 'hu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:40:36', NULL, NULL, NULL),
(477, NULL, 'hu', 'huhu', 'hu', 'hu', 'hu', 'hu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:42:36', NULL, NULL, NULL),
(478, NULL, 'vendore code', 'vendore name', 'site code', 'paytm', 'bill location', 'ship location ', NULL, NULL, 'Approved', 'admin', '2024-09-01 06:49:03', 'admin', '2024-09-07 07:43:34', NULL),
(479, NULL, 'vendore code', 'vendore name', 'site code', 'paytm', 'bill top', 'ship to ', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:51:51', NULL, NULL, NULL),
(480, NULL, 'vendore code', 'vendore name', 'site code', 'paytm', 'bill top', 'ship to ', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:52:25', NULL, NULL, NULL),
(481, NULL, 'un', 'u', 'bu', 'ub', 'ub', 'ub', NULL, NULL, 'inProcess', 'admin', '2024-09-01 06:53:26', NULL, NULL, NULL),
(482, NULL, 'bu', 'bub', 'b', 'bu', 'bu', 'u', NULL, NULL, 'inProcess', 'admin', '2024-09-01 07:06:01', NULL, NULL, NULL),
(483, NULL, 'chj', 'gj', 'g', 'b', 'g', 'gj', NULL, NULL, 'inProcess', 'admin', '2024-09-01 07:14:44', NULL, NULL, NULL),
(484, NULL, '123', 'Ms Nidhi ', '123', 'Online ', 'yuftf', 'jhgedyu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 07:20:05', NULL, NULL, NULL),
(485, NULL, 'Vendor code', 'name', 'site ', 'l', 'kn', 'nkln', NULL, NULL, 'inProcess', 'admin', '2024-09-01 07:25:43', NULL, NULL, NULL),
(486, NULL, 'j', 'i', 'in', 'ini', 'n', 'ninn', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:00:19', NULL, NULL, NULL),
(487, NULL, 'j', 'i', 'in', 'ini', 'n', 'ninn', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:01:36', NULL, NULL, NULL),
(488, NULL, 'fdsff', 'sf', 's', 'f', 'sf', 'sf', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:03:24', NULL, NULL, NULL),
(489, NULL, 'fdsff', 'sf', 's', 'f', 'sf', 'sf', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:04:51', NULL, NULL, NULL),
(490, NULL, 'fdsff', 'sf', 's', 'f', 'sf', 'sf', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:04:51', NULL, NULL, NULL),
(491, NULL, 'hub', 'u', 'uub', 'u', 'bb', 'bu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:05:48', NULL, NULL, NULL),
(492, NULL, 'hub', 'u', 'uub', 'u', 'bb', 'bu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:06:45', NULL, NULL, NULL),
(493, NULL, 'hub', 'u', 'uub', 'u', 'bb', 'bu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:06:48', NULL, NULL, NULL),
(494, NULL, 'bu', 'bub', 'ub', 'u', 'ub', 'ub', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:10:48', NULL, NULL, NULL),
(495, NULL, 'bu', 'bub', 'ub', 'u', 'ub', 'ub', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:12:57', NULL, NULL, NULL),
(496, NULL, 'bu', 'bub', 'ub', 'u', 'ub', 'ub', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:13:12', NULL, NULL, NULL),
(497, NULL, 'bu', 'bub', 'ub', 'u', 'ub', 'ub', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:13:33', NULL, NULL, NULL),
(498, NULL, 'bu', 'bub', 'ub', 'u', 'ub', 'ub', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:14:59', NULL, NULL, NULL),
(499, NULL, 'h', 'u', 'uub', 'ub', 'ub', 'b', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:15:22', NULL, NULL, NULL),
(500, NULL, 'vendor', 'i', 'i', 'n', 'ii', 'nn', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:23:45', NULL, NULL, NULL),
(501, NULL, 'vendor', 'i', 'i', 'n', 'ii', 'nn', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:29:18', NULL, NULL, NULL),
(502, NULL, 'vendor', 'i', 'i', 'n', 'ii', 'nn', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:29:58', NULL, NULL, NULL),
(503, NULL, 'ni', 'n', 'ni', 'n', 'ni', 'ni', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:32:58', NULL, NULL, NULL),
(504, NULL, 'vend0', 'jfio', 'ij', 'ij', 'ij', 'ij', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:33:43', NULL, NULL, NULL),
(505, NULL, 'i', 'n', 'in', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:35:09', NULL, NULL, NULL),
(506, NULL, 'huhuhuhuhuhuhuhuh', 'uu', 'hu', 'hu', 'h', 'hu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 08:55:45', NULL, NULL, NULL),
(507, NULL, 'huhuhuhuhuhuhuhuh', 'uu', 'hu', 'hu', 'h', 'hu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:01:06', NULL, NULL, NULL),
(508, NULL, 'ni', 'nn', 'in', 'ni', 'inini', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:01:46', NULL, NULL, NULL),
(509, NULL, 'ni', 'nn', 'in', 'ni', 'inini', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:03:00', NULL, NULL, NULL),
(510, NULL, 'ihni', 'ni', 'ni', 'ni', 'ni', 'inini', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:03:05', NULL, NULL, NULL),
(511, NULL, 'nun', 'un', 'un', 'nu', 'u', 'un', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:04:37', NULL, NULL, NULL),
(512, NULL, 'nini', 'ni', 'ni', 'ni', 'ni', 'ni', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:06:20', NULL, NULL, NULL),
(513, NULL, 'nini', 'ni', 'ni', 'ni', 'ni', 'ni', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:20:37', NULL, NULL, NULL),
(514, NULL, 'njn', 'n', 'jnj', 'n', 'njn', 'nj', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:21:08', NULL, NULL, NULL),
(515, NULL, 'hi', 'i', 'ihh', '', 'ih', 'h', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:37:53', NULL, NULL, NULL),
(516, NULL, 'jni', 'ninn', 'inin', 'ni', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:46:29', NULL, NULL, NULL),
(517, NULL, 'h', 'iuh', 'iuh', 'hi', 'hi', 'hi', NULL, NULL, 'inProcess', 'admin', '2024-09-01 09:49:58', NULL, NULL, NULL),
(518, NULL, 'new', 'jo', 'j', 'ni', 'jj', 'hdiw', NULL, NULL, 'inProcess', 'admin', '2024-09-01 10:18:20', NULL, NULL, NULL),
(519, NULL, 'njn', 'jj', 'nj', 'ji', 'njn', 'nj', NULL, NULL, 'inProcess', 'admin', '2024-09-01 10:27:23', NULL, NULL, NULL),
(520, NULL, 'Vendore code', 'vendpre name', 'vendore site code', 'jo', 'jo', 'shoe', NULL, NULL, 'inProcess', 'admin', '2024-09-01 10:32:57', NULL, NULL, NULL),
(521, NULL, 'sds', 'mnm', 'nmnn', 'mnmn', 'nmn', 'mnmnm', NULL, NULL, 'inProcess', 'admin', '2024-09-01 10:44:31', NULL, NULL, NULL),
(522, NULL, 'Vendore code', 'vendpre name', 'vendore site code', 'jo', 'jo', 'shoe', NULL, NULL, 'inProcess', 'admin', '2024-09-01 10:53:36', NULL, NULL, NULL),
(523, NULL, 'hiu', 'u', 'huh', 'uh', 'huh', 'hu', NULL, NULL, 'inProcess', 'admin', '2024-09-01 10:57:06', NULL, NULL, NULL),
(524, NULL, 'j', 'i', 'ji', 'k', 'jk', 'jk', NULL, NULL, 'inProcess', 'admin', '2024-09-01 10:58:13', NULL, NULL, NULL),
(525, NULL, 'ji', 'ji', 'j', 'ji', 'ji', 'ji', NULL, NULL, 'inProcess', 'admin', '2024-09-01 11:16:47', NULL, NULL, NULL),
(526, NULL, 'ji', 'ji', 'j', 'ji', 'ji', 'ji', NULL, NULL, 'inProcess', 'admin', '2024-09-01 11:17:31', NULL, NULL, NULL),
(527, NULL, 'ji', 'ji', 'j', 'ji', 'ji', 'ji', NULL, NULL, 'Reject', 'admin', '2024-09-01 11:17:31', 'admin', '2024-09-08 07:42:21', NULL),
(528, NULL, 'ji', 'ji', 'j', 'ji', 'ji', 'ji', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:17:31', 'admin', '2024-09-05 11:53:32', NULL),
(529, NULL, 'ji', 'ji', 'j', 'ji', 'ji', 'ji', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:18:17', 'admin', '2024-09-05 11:53:32', NULL),
(530, NULL, 'jiji', 'ji', 'jij', 'j', 'ij', 'ij', NULL, NULL, 'Reject', 'admin', '2024-09-01 11:18:34', 'admin', '2024-09-05 11:53:38', NULL),
(531, NULL, 'jiji', 'ji', 'jij', 'j', 'ij', 'ij', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:19:06', 'admin', '2024-09-05 11:53:32', NULL),
(532, NULL, 'ni', 'ni', 'ni', '', 'hi', 'i', NULL, NULL, 'Reject', 'admin', '2024-09-01 11:20:42', 'admin', '2024-09-05 00:09:27', NULL),
(533, NULL, 'h', 'h', 'hu', 'hu', 'uh', 'uh', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:21:48', 'admin', '2024-09-05 00:09:11', NULL),
(534, NULL, 'h', 'h', 'hu', 'hu', 'uh', 'uh', NULL, NULL, 'Reject', 'admin', '2024-09-01 11:22:39', 'admin', '2024-09-05 00:08:58', NULL),
(535, NULL, 'sds', 'mnm', 'nmnn', 'mnmn', 'nmn', 'mnmnm', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:23:28', 'admin', '2024-09-05 00:26:15', NULL),
(536, NULL, 'sds', 'mnm', 'nmnn', 'mnmn', 'nmn', 'mnmnm', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:26:00', 'admin', '2024-09-05 00:26:15', NULL),
(537, NULL, 'sds', 'mnm', 'nmnn', 'mnmn', 'nmn', 'mnmnm', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:26:10', 'admin', '2024-09-05 00:26:15', NULL),
(538, NULL, 'sds', 'mnm', 'nmnn', 'mnmn', 'nmn', 'mnmnm', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:26:57', 'admin', '2024-09-05 00:26:15', NULL),
(539, NULL, '123', 'Ms Nidhi ', '123', 'Online ', 'yuftf', 'jhgedyu', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:27:52', 'admin', '2024-09-05 00:26:15', NULL),
(540, NULL, '123', 'Ms Nidhi ', '123', 'eg', 'bd', 'jhgedyu', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:28:29', 'admin', '2024-09-05 00:26:15', NULL),
(541, NULL, '123', 'Ms Nidhi ', '123', 'trhy', 'th', 'fhtr', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:29:23', 'admin', '2024-09-05 00:26:15', NULL),
(542, NULL, '123', 'Ms Nidhi ', '123', 'Online ', 'yuftf', 'jhgedyu', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:29:46', 'admin', '2024-09-05 00:25:27', NULL),
(543, NULL, '123', 'Ms Nidhi ', '123', 'tft', 'tyf', 'fhtr', NULL, NULL, 'Approved', 'admin', '2024-09-01 11:59:11', 'admin', '2024-09-05 00:25:27', NULL),
(544, NULL, 'ni', 'i', 'n', 'ni', 'ni', 'ninn', NULL, NULL, 'Approved', 'admin', '2024-09-01 12:05:33', 'admin', '2024-09-05 00:25:27', NULL),
(545, NULL, 'ni', 'hu', 'nn', 'i', 'i', 'i', NULL, NULL, 'Approved', 'admin', '2024-09-01 12:06:16', 'admin', '2024-09-05 00:25:27', NULL),
(546, NULL, '123', 'Ms Nidhi ', '123', 'tft', 'tyf', 'fhtr', NULL, NULL, 'Approved', 'admin', '2024-09-01 12:06:33', 'admin', '2024-09-05 00:25:27', NULL),
(547, NULL, 'ji1hih1h`hihii', 'ih', 'ii', 'i', 'i', 'ih', NULL, NULL, 'Approved', 'admin', '2024-09-01 13:17:56', 'admin', '2024-09-05 00:25:27', NULL),
(548, NULL, ' hb', 'yvy', 'vyu', 'vuy', 'v', 'vuy', NULL, NULL, 'Approved', 'admin', '2024-09-02 05:54:15', 'admin', '2024-09-05 05:36:29', NULL),
(549, NULL, 'nnu', 'nu', 'nu', 'nu', 'u', 'nn', NULL, NULL, 'Reject', 'admin', '2024-09-02 13:27:09', 'admin', '2024-09-05 05:36:07', NULL),
(550, NULL, 'hgHGhghGhghG', 'HG', 'HG', 'H', 'GH', 'HGH', NULL, NULL, 'Reject', 'admin', '2024-09-03 10:35:44', 'admin', '2024-09-05 11:52:31', NULL),
(551, NULL, 'new', 'deho', '990', 'payment term', 'bill tpo', 'shiptp', NULL, NULL, 'Approved', 'admin', '2024-09-04 13:50:07', 'admin', '2024-09-05 11:52:21', NULL),
(552, NULL, 'vendor code', 'supplier name', 'site code', 'payment term', 'bill to', 'ship to', 'tx', 'hsn code', 'Approved', 'admin', NULL, 'admin', '2024-09-05 11:52:21', NULL),
(553, NULL, '001', 'vendor', 'example site cosde', '', 'bill to', 'ship to', NULL, NULL, 'Approved', 'admin', '2024-09-07 07:33:27', 'admin', '2024-09-08 07:42:06', NULL),
(554, NULL, 'nmi', 'i', 'min', 'i', 'nin', 'nini', NULL, NULL, 'inProcess', 'admin', '2024-09-08 07:43:06', NULL, NULL, NULL),
(555, NULL, 'nmi', 'i', 'min', 'i', 'nin', 'nini', NULL, NULL, 'inProcess', 'admin', '2024-09-08 07:43:54', NULL, NULL, NULL),
(556, NULL, 'ni', 'noi', 'nio', 'ion', 'oiionon', 'oin', NULL, NULL, 'inProcess', 'admin', '2024-09-08 07:44:10', NULL, NULL, NULL),
(557, NULL, 'ni', 'noi', 'nio', 'ion', 'oiionon', 'oin', NULL, NULL, 'inProcess', 'admin', '2024-09-08 07:45:09', NULL, NULL, NULL),
(558, NULL, 'mn', 'i', 'oim', 'noi', 'io', 'ion', NULL, NULL, 'inProcess', 'admin', '2024-09-08 13:20:46', NULL, NULL, NULL),
(559, NULL, 'nhio', 'j', 'hh', 'h', 'u', 'h', NULL, NULL, 'inProcess', 'admin', '2024-09-08 13:32:55', NULL, NULL, NULL),
(560, NULL, 'nion', 'ion', 'oini', 'n', 'noi', 'oi', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:13:34', NULL, NULL, NULL),
(561, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:15:21', NULL, NULL, NULL),
(562, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:15:35', NULL, NULL, NULL),
(563, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:15:35', NULL, NULL, NULL),
(564, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:15:35', NULL, NULL, NULL),
(565, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:15:35', NULL, NULL, NULL),
(566, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:15:36', NULL, NULL, NULL),
(567, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:16:08', NULL, NULL, NULL),
(568, NULL, 'nion', 'oin', 'oin', 'oin', 'oinon', 'oin', NULL, NULL, 'inProcess', 'rg1', '2024-09-08 15:16:10', NULL, NULL, NULL),
(569, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:16:35', NULL, NULL, NULL),
(570, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:17:37', NULL, NULL, NULL),
(571, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:17:38', NULL, NULL, NULL),
(572, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:17:38', NULL, NULL, NULL),
(573, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:18:10', NULL, NULL, NULL),
(574, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:18:10', NULL, NULL, NULL),
(575, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:18:10', NULL, NULL, NULL),
(576, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:18:11', NULL, NULL, NULL),
(577, NULL, 'n', 'i', 'iun', 'in', 'in', 'in', NULL, NULL, 'inProcess', 'admin', '2024-09-08 15:18:11', NULL, NULL, NULL),
(578, NULL, 'vendore code', 'vendore name', 'site code', 'totam', 'bill top', 'ship', NULL, NULL, 'inProcess', 'rg1', '2024-09-10 12:31:59', NULL, NULL, NULL),
(579, NULL, 'vendore', 'vendore ', 'sir', 'lk', 'lkjkl', 'jfsklj', NULL, NULL, 'inProcess', 'rg1', '2024-09-10 12:35:23', NULL, NULL, NULL),
(580, NULL, 'i', 'ni', 'ni', 'i', 'nin', 'ni', NULL, NULL, 'inProcess', 'rg1', '2024-09-10 12:41:29', NULL, NULL, NULL),
(581, NULL, 'i', 'ni', 'ni', 'i', 'nin', 'ni', NULL, NULL, 'inProcess', 'rg1', '2024-09-10 12:42:35', NULL, NULL, NULL),
(582, NULL, 'i', 'ni', 'ni', 'oin', 'nin', 'no', NULL, NULL, 'Approved', 'rg1', '2024-09-10 12:42:38', 'admin', '2024-09-10 12:50:09', NULL),
(583, NULL, ' jk', 'nio', 'nio', 'oin', 'nio', 'nio', NULL, NULL, 'inProcess', 'admin', '2024-09-10 16:13:56', NULL, NULL, NULL),
(584, NULL, 'nio', 'noi', 'nio', 'ono', 'oin', 'ion', NULL, NULL, 'Approved', 'admin', '2024-09-10 16:17:16', 'admin', '2024-09-12 22:02:22', NULL),
(585, NULL, 'Vendore code', 'Vendire name', 'vendore site  code', 'Paytm', 'bill gugao', 'ship delhi', NULL, NULL, 'Approved', 'admin', '2024-09-11 07:00:49', 'admin', '2024-09-12 15:14:47', NULL),
(586, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inProcess', 'admin', '2024-09-28 07:22:53', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_line`
--

CREATE TABLE `purchase_order_line` (
  `id` int(11) NOT NULL,
  `po_number` varchar(45) DEFAULT NULL,
  `item_code` varchar(405) DEFAULT NULL,
  `item_shortdiscription` varchar(45) DEFAULT NULL,
  `unit_price` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `total_price` varchar(45) DEFAULT NULL,
  `need_by_date` varchar(45) DEFAULT NULL,
  `quantity_recevied` varchar(45) DEFAULT NULL,
  `balance` varchar(45) DEFAULT NULL,
  `reqiuisition_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `purchase_order_line`
--

INSERT INTO `purchase_order_line` (`id`, `po_number`, `item_code`, `item_shortdiscription`, `unit_price`, `quantity`, `total_price`, `need_by_date`, `quantity_recevied`, `balance`, `reqiuisition_id`, `status`) VALUES
(1, '12', 'abc item', 'short', 'price', 'quan', 'totak', 'ned', 'qua', NULL, NULL, NULL),
(2, '139', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(3, '140', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(4, '141', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(5, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(6, 'po', 'aa', 'shir', 'nnoir', 'q', 'total', 'needbydata', 'qarecievd', NULL, NULL, NULL),
(7, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(8, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(9, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '2024-08-13', '', NULL, NULL, NULL),
(10, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '2024-08-13', '', NULL, NULL, NULL),
(11, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '2024-08-13', '', NULL, NULL, NULL),
(12, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '2024-08-13', '', NULL, NULL, NULL),
(13, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '2024-08-13', '', NULL, NULL, NULL),
(14, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '2024-08-13', '', NULL, NULL, NULL),
(15, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '2024-08-13', '', NULL, NULL, NULL),
(16, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(17, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(18, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(19, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(20, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(21, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(22, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(23, '142', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(24, '143', 'lao', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(25, '143', 'dtest', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(26, '145', 'kol', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(27, '147', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(28, '148', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(29, '148', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(30, '151', 'ss', 'null', 'null', '', 'null', '', '', NULL, NULL, NULL),
(31, '151', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(32, '151', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(33, '151', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(34, '151', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(35, '258', 'item1', 'shirt', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(36, '258', 'come', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(37, '258', 'hello', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(38, '259', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(39, '259', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(40, '259', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(41, '259', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(42, '259', 'for test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(43, '259', 'second test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(44, '259', 'for test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(45, '259', 'second test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(46, '259', 'for test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(47, '259', 'second test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(48, '259', 'for test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(49, '259', 'second test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(50, '259', 'for test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(51, '259', 'second test', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(52, '259', 'for test', 'Short_Description', '3829', '', '200', '', '', NULL, NULL, NULL),
(53, '259', 'second test', 'Short_Description', 'null', '', '545', '', '', NULL, NULL, NULL),
(54, '259', 'for test', 'Short_Description', '3829', '', '200', '2024-08-20', '', NULL, NULL, NULL),
(55, '259', 'second test', 'Short_Description', 'null', '', '545', '2024-08-07', '', NULL, NULL, NULL),
(56, '259', 'for test', 'Short_Description', '3829', '', '200', '2024-08-20', '', NULL, NULL, NULL),
(57, '259', 'second test', 'Short_Description', 'null', '', '545', '2024-08-07', '', NULL, NULL, NULL),
(58, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(59, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(60, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(61, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(62, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(63, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(64, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(65, '260', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(66, '261', 'EL-2-1-FU-EA-WH-XY-25-3-RA', 'Short_Description', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(67, '262', 'ojio', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(68, '263', 'ojio', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(69, '264', 'joi', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(70, '265', 'jln', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(71, '265', 'jln', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(72, '266', 'kl', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(73, '266', 'jln', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(74, '267', 'nk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(75, '267', 'nk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(76, '268', 'jio', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(77, '268', 'jio', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(78, '269', 'CUp', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(79, '269', 'hdfej', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(80, '269', 'BB', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(81, '270', 'fe', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(82, '270', 'jijdei', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(83, '271', 'huhu', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(84, '271', 'huhu', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(85, '271', 'kjkj', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(86, '272', 'huhu', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(87, '272', 'huhu', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(88, '272', 'kjkj', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(89, '274', 'GL-8-2-2-1.-BL-CL-XY-45-56', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(90, '279', 'CUp', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(91, '279', 'hdfej', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(92, '279', 'BB', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(93, '281', 'CUp', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(94, '281', 'hdfej', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(95, '283', 'bvvb', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(96, '289', 'CUp', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(97, '289', 'hdfej', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(98, '289', 'BB', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(99, '299', 'a', 'null', 'null', '', 'null', '', '', NULL, NULL, NULL),
(100, '301', 'EL-2-1-FU-EA-WH-XY-25-3-RA', 'Short_Descriptionjyrt6r', 'null', '', 'null', '', '', NULL, NULL, NULL),
(101, '302', 'ss', 'null', 'null', '', 'null', '', '', NULL, NULL, NULL),
(102, '302', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(103, '303', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(104, '305', 'iuofhjio', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(105, '306', 'EL-HU-UH-UH-UH-UH-UH-UH-UH-UH', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(106, '308', 'ojio', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(107, '309', 'ojio', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(108, '311', 'ihu1', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(109, '312', 'EL-HU-UH-UH-UH-UH-UH-UH-UH-UH', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(110, '315', 'fdoep', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(111, '315', 'fdoep', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(112, '317', 'ihu1', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(113, '319', 'bvvb', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(114, '320', 'vuop', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(115, '325', 'kk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(116, '328', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(117, '330', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(118, '334', 'EL-2-1-FU-EA-WH-XY-25-3-RA', 'Short_Descriptionjyrt6r', 'null', '', 'null', '', '', NULL, NULL, NULL),
(119, '335', 'u89j', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(120, '335', '/', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(121, '336', 'new', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(122, '336', 'new', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(123, '337', 'jijij', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(124, '337', 'hiuh', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(125, '340', 'huhu', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(126, '340', 'huhu', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(127, '341', 'jkjk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(128, '341', 'jkjk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(129, '345', 'Ba', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(130, '345', 'copy', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(131, '345', 'Ba', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(132, '345', 'copy', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(133, '346', '/', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(134, '346', 'hiuh', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(135, '347', 'dmwk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(136, '347', 'dmwk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(137, '348', 'kjkj', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(138, '348', 'kjkj', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(139, '350', 'kjkj', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(140, '350', 'kjkj', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(141, '351', 'kgnl', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(142, '351', 'kgnl', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(143, '352', 'hfdioef', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(144, '352', 'jijij', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(145, '357', 'dmwk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(146, '357', 'dmwk', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(147, '360', 'new', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(148, '360', 'huhu', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(149, '362', 'bulb', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(150, '362', 'bulb', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(151, '367', 'joi', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(152, '367', 'joi', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(153, '377', 'CUp', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(154, '377', 'hdfej', 'null', '20000', '', 'total', '2024-08-25', '', NULL, NULL, NULL),
(155, '380', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(156, '380', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(157, '382', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(158, '386', 'EL-GL-2-1.-24-YE-XY-30-2-RA', 'Short_Description', 'null', '', 'null', '', '', NULL, NULL, NULL),
(159, '388', 'new', 'shirt', '100', '', 'null', '2025-02-02', '', NULL, NULL, NULL),
(160, '1', 'feub', 'ubu', 'bu', 'bu', '7', '2024-01-04', NULL, NULL, NULL, NULL),
(161, '1', 'new item code', 'item name', '10', '10', '7', '2026-03-08', NULL, NULL, NULL, NULL),
(162, '1', 'new item code', 'item name', '10', '10', '7', '2026-03-08', NULL, NULL, NULL, NULL),
(163, '1', 'new item code', 'secoed ', '88', '89', '7', '2025-01-01', NULL, NULL, NULL, NULL),
(164, '1', 'new item code', 'item name', '10', '10', '7', '2026-03-08', NULL, NULL, NULL, NULL),
(165, '1', 'new item code', 'item name', '10', '10', '7', '2026-03-08', NULL, NULL, NULL, NULL),
(166, '1', 'new item code', 'item name', '10', '10', '7', '2026-03-08', NULL, NULL, NULL, NULL),
(167, '1', 'new item code', 'secoed ', '88', '89', '7', '2025-01-01', NULL, NULL, NULL, NULL),
(168, NULL, 'fneui', 'buubb', 'bu', 'bu', '7', '', NULL, NULL, NULL, NULL),
(169, '402', 'h', 'uh', 'u', 'u', '7', '', NULL, NULL, NULL, NULL),
(170, '402', 'h', 'uh', 'u', 'u', '7', '', NULL, NULL, NULL, NULL),
(171, '402', 'n', 'uib', 'b', 'ub', '7', '', NULL, NULL, NULL, NULL),
(172, '402', 'ubu9dehuidgegduiedyefdyuf', 'ytd', 'td', 'd', '7', '', NULL, NULL, NULL, NULL),
(173, '403', '1', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(174, '403', '2', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(175, '403', '3', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(176, '404', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(177, '405', 'dfe8hu', 'hfdefih', 'ihih', 'ih', '7', '', NULL, NULL, NULL, NULL),
(178, '405', 'ih', 'ih', 'ihi', 'hi', '7', '', NULL, NULL, NULL, NULL),
(179, '409', 'goi', 'jiojo', 'ji', 'jo', '7', '', NULL, NULL, NULL, NULL),
(180, '409', 'hj', 'hh', 'hu', 'hu', '7', '', NULL, NULL, NULL, NULL),
(181, '409', 'hu', 'huhu', 'u', 'huh', '7', '', NULL, NULL, NULL, NULL),
(182, '478', 'item 1', 'item 1 short', '100', '100', '10000', '', NULL, '90', '200', NULL),
(183, '478', 'item 2', 'item 2 short', '100', '100', '10000', '', NULL, '100', '200', NULL),
(184, '478', 'item 3', 'item 3 short', '100', '100', '10000', '', NULL, '100', '200', NULL),
(185, '478', 'item 4', 'item 4 short', '100', '100', '10000', '', NULL, '100', '200', NULL),
(186, '479', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(187, '479', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(188, '480', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(189, '481', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(190, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(191, '483', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(192, '483', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(193, '483', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(194, '484', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(195, '484', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(196, '485', 'g', 'gh', 'gh', 'gh', '7', '', NULL, NULL, NULL, NULL),
(197, '485', 'g', 'g', 'g', 'g', '7', '', NULL, NULL, NULL, NULL),
(198, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(199, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(200, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(201, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(202, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(203, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(204, '', 'item code', 'item sgort', 'unit price', 'quantuty', 'total', 'need by date', '', NULL, NULL, NULL),
(205, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(206, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(207, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(208, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(209, '486', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(210, '486', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(211, '486', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(212, '487', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(213, '488', '', '', '', '', '7', '', NULL, '0', NULL, NULL),
(214, '488', '', '', '', '', '7', '', NULL, '0', NULL, NULL),
(215, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(216, '491', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(217, '491', '', '', '', '', '7', '', NULL, '0', NULL, NULL),
(218, '491', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(219, '493', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(220, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(221, '494', 'h', 'u', 'bu', '', '7', '', NULL, NULL, NULL, NULL),
(222, '494', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(223, '494', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(224, '495', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(225, '496', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(226, '497', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(227, '498', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(228, '499', 'b', 'ubu', 'bu', 'bu', '7', '', NULL, NULL, NULL, NULL),
(229, '499', 'bu', 'bu', 'bu', 'bub', '7', '', NULL, NULL, NULL, NULL),
(230, '499', 'u', 'bub', 'ub', 'ub', '7', '', NULL, NULL, NULL, NULL),
(231, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(232, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(233, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(234, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(235, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(236, '', 'item ', 'item', 'unbit price', 'mioew', '7', '2024-01-01', NULL, NULL, NULL, NULL),
(237, '500', 'first', 'item', '50', 'qty', '7', '', '100', '40', NULL, NULL),
(238, '500', 'tecod', 'second', '150', 'secod', '7', '2024-02-02', '100', '0', NULL, NULL),
(239, '500', 'THIRD', 'itemnmae', '109', 'hgnwio', '7', '', '100', '100', NULL, NULL),
(240, '501', 'fdneu', 'uib', 'ubi', 'ubiu', '7', '', NULL, NULL, NULL, NULL),
(241, '502', 'nb', 'ui', 'uu', 'bu', '7', '', NULL, NULL, NULL, NULL),
(242, '', 'n', 'in', 'ini', 'ni', '7', '', NULL, NULL, NULL, NULL),
(243, '503', 'i', 'n', 'in', 'in', '7', '', NULL, NULL, NULL, NULL),
(244, '504', '89898898989898998', '989', '89', '89', '7', '', NULL, NULL, NULL, NULL),
(245, '504', 'ni', '89', '8', '98', '7', '', NULL, NULL, NULL, NULL),
(246, '504', '98', '98', '9', '8', '7', '', NULL, NULL, NULL, NULL),
(247, '504', '89898898989898998', '989', '89', '89', '7', '', NULL, NULL, NULL, NULL),
(248, '504', 'ni', '89', '8', '98', '7', '', NULL, NULL, NULL, NULL),
(249, '504', '98', '98', '9', '8', '7', '', NULL, NULL, NULL, NULL),
(250, '504', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(251, '505', 'kfwk', 'kn', 'n', 'n', '7', '', NULL, NULL, NULL, NULL),
(252, '505', 'knk', 'nk', 'nk', 'nk', '7', '', NULL, NULL, NULL, NULL),
(253, '', 'h', 'iuh', 'h', 'i', '7', '', NULL, NULL, NULL, NULL),
(254, '506', 'nuduwdub', 'bub', 'ub', 'u', '7', '', NULL, NULL, NULL, NULL),
(255, '507', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(256, '', 'jh8h', '8h', '8h', '8h', '7', '', NULL, NULL, NULL, NULL),
(257, '508', 'ni', 'nin', 'in', 'ini', '7', '', NULL, NULL, NULL, NULL),
(258, '510', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(259, '511', 'nju', 'nu', 'nu', 'unu', '7', '', NULL, NULL, NULL, NULL),
(260, '', 'ni', 'nin', 'in', 'i', '7', '', NULL, NULL, NULL, NULL),
(261, '512', 'one', 'nin', 'in', 'ini', '7', '', NULL, NULL, NULL, NULL),
(262, '512', 'two', 'n', 'n', 'n', '7', '', NULL, NULL, NULL, NULL),
(263, '513', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(264, '514', 'one', 'in', 'oi', 'i', '7', '', NULL, NULL, NULL, NULL),
(265, '', 'new one', 'ubub', 'ub', 'ub', '7', '', NULL, NULL, NULL, NULL),
(266, '', 'uubub', 'ubub', 'ub', 'ub', '7', '', NULL, NULL, NULL, NULL),
(267, '', 'uubub', 'ubub', 'ub', 'ub', '7', '', NULL, NULL, NULL, NULL),
(268, '515', 'one', 'jh', 'jk', 'hkjhjk', '7', '', NULL, NULL, NULL, NULL),
(269, '515', 'jiji', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(270, '515', 'second', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(271, '516', 'ioefjiof', 'n', 'i', 'ni', '7', '', NULL, NULL, NULL, NULL),
(272, '516', 'fjfio', 'jned', '', '', '7', '', NULL, NULL, NULL, NULL),
(273, '', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(274, '517', 'one', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(275, '517', 'tgre', 'three', '', '', '7', '', NULL, NULL, NULL, NULL),
(276, '518', 'one', 'hoi', 'hio', 'hoi', '7', '', NULL, NULL, NULL, NULL),
(277, '518', 'fef', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(278, '518', 'threr', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(279, '519', 'i', 'ni', 'ni', 'ni', '7', '2024-09-10', NULL, NULL, NULL, NULL),
(280, '519', 'jiodi', 'i', '', 'nio', '7', '2024-01-31', NULL, NULL, NULL, NULL),
(281, '520', '1234', 'ioni', 'oi', 'oni', '7', '', NULL, NULL, NULL, NULL),
(282, '520', 'seco', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(283, '520', 'three', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(284, '520', '11111', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(285, '520', 'item', 'item nma', 'nunit', '100', '7', '2024-12-02', NULL, NULL, NULL, NULL),
(286, '521', 'dddd', '22222', 'lmkl', 'mlm', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(287, '521', 'aaa', 'kjk', 'jk', 'jkjk', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(288, '521', 'bbb', 'kj', 'kjk', 'jk', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(289, '521', 'cccc', 'ffdfm', 'mk', 'mkjm', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(290, '521', 'eeee', 'fdfd', 'df', 'df', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(291, '521', 'ffff', 'hgh', 'ghgh', 'ghgh', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(292, '521', 'ggg', 'kjkj', 'kjkj', 'kjkjk', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(293, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(294, '535', 'aa', 'mm', '13', '2', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(295, '535', 'bb', 'fsdf', '10', '33', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(296, '535', 'ccc', 'sdf', '25', '1', '7', '2024-12-31', NULL, NULL, NULL, NULL),
(297, '538', 'aaa', 'jhjh', '1', '5', '1', '2024-12-31', NULL, NULL, NULL, NULL),
(298, '538', 'dsd', '', '4', '2', '4', '2024-12-31', NULL, NULL, NULL, NULL),
(299, '538', 'aaa', 'jhjh', '1', '5', '1', '2024-12-31', NULL, NULL, NULL, NULL),
(300, '538', 'dsd', '', '4', '2', '4', '2024-12-31', NULL, NULL, NULL, NULL),
(301, '540', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(302, '540', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(303, '547', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(304, '547', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(305, '549', 'first', 'huh', '', '', '7', '', NULL, NULL, NULL, NULL),
(306, '549', 'second', 'nu', '', '', '7', '', NULL, NULL, NULL, NULL),
(307, '549', 'third', 'nu', '', '', '7', '', NULL, NULL, NULL, NULL),
(308, '549', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(309, '550', 'one', 'hu', '', '', '7', '', NULL, NULL, NULL, NULL),
(310, '550', 'two', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(311, '550', '', '', '', '', '7', '', NULL, NULL, NULL, NULL),
(312, '551', 'jo', 'jj', '1', '41', '1', '', NULL, NULL, NULL, NULL),
(313, '551', 'iyrm', 'joiwio', '', '', '', '', NULL, NULL, NULL, NULL),
(314, '551', 'nio', 'nio', '', '', '', '', NULL, NULL, NULL, NULL),
(315, '551', 'io', 'io', '', '', '', '', NULL, NULL, NULL, NULL),
(316, '551', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(317, '553', 'example item code', 'example', '100', '100', '7', '2026-01-03', NULL, NULL, NULL, NULL),
(318, '553', 'example 2', 'example 2 ', '10', '1', '7', '2025-02-01', NULL, NULL, NULL, NULL),
(319, '553', 'example item code', 'example', '100', '100', '100', '2026-01-03', NULL, NULL, NULL, NULL),
(320, '553', 'example 2', 'example 2 ', '10', '1', '10', '2025-02-01', NULL, NULL, NULL, NULL),
(321, '557', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(322, '558', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(323, '558', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(324, '559', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(325, '560', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(326, '560', '', '', '', '', '', '', NULL, NULL, NULL, NULL),
(327, '578', 'item code', 'item code', '100', '10', '100', '', NULL, NULL, NULL, NULL),
(328, '579', 'item 1 ', 'item name', '29', '100', '7', '2024-01-01', NULL, NULL, NULL, NULL),
(329, '579', 'item 2 ', 'item 3 name', '10', '199', '7', '2025-02-02', NULL, NULL, NULL, NULL),
(330, '580', 'miipjdoi', 'nion', '5', '5', '25', '', NULL, '5', NULL, NULL),
(331, '580', 'n', 'no', '10', '10', '100', '', NULL, '10', NULL, NULL),
(332, '582', 'n', 'ion', '19', '19', '19', '2025-01-02', NULL, NULL, NULL, NULL),
(333, '582', 'i', 'io', '10', '10', '10', '2024-01-02', NULL, NULL, NULL, NULL),
(334, '583', 'abc item 1', 'item name', '100', '10', '1000', '2024-01-02', NULL, NULL, NULL, NULL),
(335, '583', 'bcd item 2', 'sencond item', '10', '10', '100', '2025-02-01', NULL, NULL, NULL, NULL),
(336, '584', 'fjoefjio', 'jo', '10', '10', '100', '2024-09-10', NULL, '0', NULL, NULL),
(337, '584', 'item 2', 'second iy4m ', '89', '10', '890', '2024-09-17', NULL, '0', NULL, NULL),
(338, '584', 'm', 'om', '10', '10', '100', '', NULL, '-10', NULL, NULL),
(339, '584', 'ji', 'ji', '200', '200', '40000', '2026-01-02', NULL, '100', NULL, NULL),
(340, '585', 'item 1 ', 'item 1 name', '99', '100', '9900', '2025-01-02', NULL, '0', NULL, NULL),
(341, '585', 'item 2 ', 'item 2 name', '99', '100', '9900', '2024-01-01', NULL, '-400', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requireattributeforcatname`
--

CREATE TABLE `requireattributeforcatname` (
  `attr_id` int(11) NOT NULL,
  `SubcatId` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `default_value` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `placeholder` varchar(45) DEFAULT NULL,
  `dropdown` varchar(45) DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `requireattributeforcatname`
--

INSERT INTO `requireattributeforcatname` (`attr_id`, `SubcatId`, `name`, `default_value`, `type`, `placeholder`, `dropdown`) VALUES
(27, 1, 'Colour', NULL, 'txt', NULL, 'yes'),
(46, 2, 'Colour', NULL, 'txt', NULL, 'yes'),
(48, 2, 'Length', NULL, 'txt', NULL, 'no'),
(56, 3, 'Colour', NULL, 'txt', NULL, 'yes'),
(57, 3, 'Length', NULL, 'txt', NULL, 'no'),
(58, 3, 'Size', NULL, 'txt', NULL, 'yes'),
(66, 4, 'Colour', NULL, NULL, NULL, 'yes'),
(68, 4, 'Cut', NULL, NULL, NULL, 'yes'),
(70, 4, 'Height', NULL, NULL, NULL, 'no'),
(73, 3, 'Material', NULL, NULL, NULL, 'yes'),
(74, 1, 'Light_Output_Colour', NULL, 'txt', NULL, 'yes'),
(75, 1, 'Shape', NULL, NULL, NULL, 'yes'),
(76, 1, 'Watt', NULL, 'txt', NULL, 'yes'),
(77, 1, 'Socket', NULL, NULL, NULL, 'yes'),
(78, 1, 'Material', NULL, NULL, NULL, 'yes'),
(79, 1, 'Height', NULL, 'txt', NULL, 'no'),
(81, 3, 'Wire_type', NULL, NULL, NULL, 'yes'),
(82, 2, 'Diameter', NULL, NULL, NULL, 'no'),
(83, 4, 'Length', NULL, NULL, NULL, 'no'),
(87, 3, 'In_built_switch', NULL, NULL, NULL, 'yes'),
(88, 3, 'Pintop', NULL, NULL, NULL, 'yes'),
(92, 3, 'Brand', NULL, 'txt', NULL, 'no'),
(93, 3, 'SI_unit', NULL, NULL, NULL, 'yes'),
(94, 2, 'Material', NULL, NULL, NULL, 'yes'),
(95, 2, 'Socket', NULL, NULL, NULL, 'yes'),
(96, 2, 'Brand', NULL, 'txt', NULL, 'no'),
(97, 2, 'SI_unit', NULL, NULL, NULL, 'yes'),
(98, 1, 'Breadth', NULL, NULL, NULL, 'no'),
(143, 1, 'Colour_Temparature', NULL, NULL, NULL, 'no'),
(144, 1, 'Dimmable', NULL, NULL, NULL, 'yes'),
(145, 1, 'Brand', NULL, 'txt', NULL, 'yes'),
(146, 1, 'SI_unit', NULL, NULL, NULL, 'yes'),
(147, 2, 'Long_Description', NULL, NULL, NULL, 'no'),
(148, 2, 'Vendor', NULL, NULL, NULL, 'no'),
(149, 4, 'Breadth', NULL, NULL, NULL, 'no'),
(153, 4, 'Weight', NULL, NULL, NULL, 'no'),
(154, 4, 'No_of_ply', NULL, NULL, NULL, 'yes'),
(156, 4, 'Collar', NULL, NULL, NULL, 'yes'),
(157, 4, 'Brand', NULL, NULL, NULL, 'no'),
(158, 4, 'SI_unit', NULL, NULL, NULL, 'yes'),
(160, 4, 'Long_Description', NULL, NULL, NULL, 'no'),
(161, 4, 'Vendor', NULL, NULL, NULL, 'no'),
(162, 4, 'Price', NULL, NULL, NULL, 'no'),
(163, 4, 'Discount', NULL, 'txt', NULL, 'no'),
(164, 6, 'Colour', NULL, NULL, NULL, 'yes'),
(165, 6, 'Cut', NULL, NULL, NULL, 'yes'),
(166, 6, 'Height', NULL, NULL, NULL, 'no'),
(167, 6, 'Length', NULL, NULL, NULL, 'no'),
(168, 6, 'Breadth', NULL, NULL, NULL, 'no'),
(169, 6, 'Weight', NULL, NULL, NULL, 'no'),
(171, 6, 'No_of_ply', NULL, NULL, NULL, 'yes'),
(172, 6, 'Collar', NULL, NULL, NULL, 'yes'),
(173, 6, 'Brand', NULL, NULL, NULL, 'no'),
(174, 6, 'SI_unit', NULL, NULL, NULL, 'yes'),
(175, 6, 'Long_Description', NULL, NULL, NULL, 'no'),
(176, 6, 'Vendor', NULL, NULL, NULL, 'no'),
(177, 6, 'Price', NULL, NULL, NULL, 'no'),
(178, 6, 'Discount', NULL, NULL, NULL, 'no'),
(179, 6, 'Location', NULL, NULL, NULL, 'no'),
(180, 6, 'Shape', NULL, 'txt', NULL, 'yes'),
(182, 7, 'Colour', NULL, NULL, NULL, 'yes'),
(183, 7, 'Cut', NULL, NULL, NULL, 'yes'),
(184, 7, 'Height', NULL, NULL, NULL, 'no'),
(185, 7, 'Length', NULL, NULL, NULL, 'no'),
(186, 7, 'Breadth', NULL, NULL, NULL, 'no'),
(187, 7, 'Weight', NULL, NULL, NULL, 'no'),
(189, 7, 'No_of_ply', NULL, NULL, NULL, 'yes'),
(190, 7, 'Collar', NULL, NULL, NULL, 'yes'),
(191, 7, 'Brand', NULL, NULL, NULL, 'no'),
(192, 7, 'SI_unit', NULL, NULL, NULL, 'yes'),
(193, 7, 'Long_Description', NULL, NULL, NULL, 'no'),
(195, 7, 'Vendor', NULL, NULL, NULL, 'no'),
(196, 7, 'Price', NULL, NULL, NULL, 'no'),
(197, 7, 'Discount', NULL, NULL, NULL, 'no'),
(198, 7, 'Location', NULL, 'txt', NULL, 'no'),
(199, 8, 'Colour', NULL, NULL, NULL, 'yes'),
(200, 8, 'Cut', NULL, NULL, NULL, 'yes'),
(201, 8, 'Height', NULL, NULL, NULL, 'no'),
(202, 8, 'Length', NULL, NULL, NULL, 'no'),
(204, 8, 'Breadth', NULL, NULL, NULL, 'no'),
(206, 8, 'Weight', NULL, NULL, NULL, 'no'),
(207, 8, 'No_of_ply', NULL, NULL, NULL, 'yes'),
(208, 8, 'Collar', NULL, NULL, NULL, 'yes'),
(209, 8, 'Brand', NULL, NULL, NULL, 'no'),
(210, 8, 'SI_unit', NULL, NULL, NULL, 'yes'),
(212, 8, 'Long_Description', NULL, NULL, NULL, 'no'),
(213, 8, 'Vendor', NULL, NULL, NULL, 'no'),
(214, 8, 'Price', NULL, NULL, NULL, 'no'),
(215, 8, 'Discount', NULL, 'txt', NULL, 'no'),
(249, 9, 'Colour', NULL, NULL, NULL, 'yes'),
(250, 9, 'Cut', NULL, NULL, NULL, 'yes'),
(251, 9, 'Height', NULL, NULL, NULL, 'no'),
(252, 9, 'Length', NULL, NULL, NULL, 'no'),
(254, 9, 'Breadth', NULL, NULL, NULL, 'no'),
(256, 9, 'Weight', NULL, NULL, NULL, 'no'),
(257, 9, 'No_of_ply', NULL, NULL, NULL, 'yes'),
(258, 9, 'Collar', NULL, NULL, NULL, 'yes'),
(259, 9, 'Brand', NULL, NULL, NULL, 'no'),
(260, 9, 'SI_unit', NULL, NULL, NULL, 'yes'),
(262, 9, 'Long_Description', NULL, NULL, NULL, 'no'),
(263, 9, 'Vendor', NULL, NULL, NULL, 'no'),
(264, 9, 'Price', NULL, NULL, NULL, 'no'),
(265, 9, 'Discount', NULL, 'txt', NULL, 'no'),
(267, 5, 'Short_Description', NULL, NULL, NULL, 'no'),
(268, 5, 'Material', NULL, NULL, NULL, 'no'),
(270, 5, 'Thread', NULL, NULL, NULL, 'no'),
(271, 5, 'Breadth', NULL, NULL, NULL, 'no'),
(272, 5, 'Upper_Dia', NULL, NULL, NULL, 'no'),
(273, 5, 'Bottom_Dia', NULL, NULL, NULL, 'no'),
(274, 5, 'Centre_Hole_dia', NULL, NULL, NULL, 'no'),
(275, 5, 'Shape', NULL, NULL, NULL, 'no'),
(276, 5, 'Inner_Outer_thread', NULL, NULL, NULL, 'no'),
(277, 5, 'Upper_thread', NULL, NULL, NULL, 'no'),
(278, 5, 'Lower_thread', NULL, NULL, NULL, 'no'),
(279, 5, 'Thread_length', NULL, NULL, NULL, 'no'),
(280, 5, 'Vendor', NULL, NULL, NULL, 'no'),
(281, 5, 'Price', NULL, 'txt', NULL, 'no'),
(282, 5, 'Discount', NULL, NULL, NULL, 'no'),
(283, 5, 'Long_Description', NULL, NULL, NULL, 'no'),
(285, 10, 'Colour', NULL, NULL, NULL, 'yes'),
(286, 10, 'Ink_type', NULL, NULL, NULL, 'no'),
(287, 10, 'Size', NULL, NULL, NULL, 'no'),
(288, 10, 'Brand', NULL, 'txt', NULL, 'no'),
(289, 10, 'SI_unit', NULL, NULL, NULL, 'no'),
(290, 10, 'Long_Description', NULL, NULL, NULL, 'no'),
(292, 11, 'Style', NULL, NULL, NULL, 'yes'),
(293, 11, 'Height', NULL, NULL, NULL, 'no'),
(294, 11, 'Upper_Dia', NULL, NULL, NULL, 'no'),
(295, 11, 'Bottom_Dia', NULL, NULL, NULL, 'no'),
(296, 11, 'fabric', NULL, NULL, NULL, 'yes'),
(297, 11, 'fabric_colour', NULL, NULL, NULL, 'no'),
(298, 11, 'piping', NULL, NULL, NULL, 'yes'),
(299, 11, 'piping_color', NULL, NULL, NULL, 'no '),
(300, 11, 'piping_length', NULL, NULL, NULL, 'no'),
(301, 11, 'Gallery_type', NULL, NULL, NULL, 'yes'),
(302, 11, 'gallery', NULL, NULL, NULL, 'yes'),
(303, 11, 'gallery_height', NULL, NULL, NULL, 'no'),
(304, 11, 'acrylic_sheet', NULL, NULL, NULL, 'no'),
(305, 11, 'sheet', NULL, NULL, NULL, 'yes'),
(306, 11, 'Lining', NULL, NULL, NULL, 'yes'),
(307, 12, 'Short_Description', NULL, NULL, NULL, 'no'),
(308, 12, 'Colour', NULL, NULL, NULL, 'no'),
(309, 12, 'Size', NULL, NULL, NULL, 'no'),
(310, 12, 'Shape', NULL, NULL, NULL, 'no'),
(311, 12, 'Centre_Hole_dia', NULL, NULL, NULL, 'no'),
(312, 12, 'Transparent', NULL, NULL, NULL, 'no'),
(313, 12, 'Vendor', NULL, NULL, NULL, 'no'),
(314, 12, 'Long_Description', NULL, NULL, NULL, 'no'),
(331, 13, 'Short_Description', NULL, NULL, NULL, 'no'),
(332, 13, 'Colour', NULL, NULL, NULL, 'no'),
(333, 13, 'Material', NULL, NULL, NULL, 'no'),
(334, 13, 'Finish_type', NULL, NULL, NULL, 'no'),
(335, 13, 'Shape', NULL, NULL, NULL, 'no'),
(336, 13, 'Cut', NULL, NULL, NULL, 'no'),
(337, 13, 'Height', NULL, NULL, NULL, 'no'),
(338, 13, 'Weight', NULL, NULL, NULL, 'no'),
(339, 13, 'Upper_Dia', NULL, NULL, NULL, 'no'),
(340, 13, 'Bottom_Dia', NULL, NULL, NULL, 'no'),
(341, 13, 'Style', NULL, NULL, NULL, 'no'),
(342, 13, 'No_of_ply', NULL, NULL, NULL, 'no'),
(343, 13, 'Vendor', NULL, NULL, NULL, 'no'),
(344, 13, 'Long_Description', NULL, NULL, NULL, 'no'),
(345, 13, 'Price', NULL, 'txt', NULL, 'no'),
(346, 13, 'Discount', NULL, NULL, NULL, 'no'),
(348, 14, 'Length', NULL, NULL, NULL, 'no'),
(349, 14, 'Breadth', NULL, NULL, NULL, 'no'),
(350, 14, 'Height', NULL, NULL, NULL, 'no'),
(352, 14, 'Brand', NULL, NULL, NULL, 'no'),
(353, 14, 'SI_unit', NULL, NULL, NULL, 'yes'),
(355, 15, 'Length', NULL, NULL, NULL, 'no'),
(356, 15, 'Breadth', NULL, NULL, NULL, 'no'),
(357, 15, 'Height', NULL, NULL, NULL, 'no'),
(359, 15, 'Brand', NULL, NULL, NULL, 'no'),
(360, 15, 'SI_unit', NULL, NULL, NULL, 'yes'),
(362, 16, 'Length', NULL, NULL, NULL, 'no'),
(363, 16, 'Breadth', NULL, NULL, NULL, 'no'),
(364, 16, 'Height', NULL, NULL, NULL, 'no'),
(365, 16, 'No_of_ply', NULL, NULL, NULL, 'no'),
(366, 16, 'Brand', NULL, NULL, NULL, 'no'),
(367, 16, 'SI_unit', NULL, NULL, NULL, 'yes'),
(369, 17, 'Length', NULL, NULL, NULL, 'no'),
(370, 17, 'Breadth', NULL, NULL, NULL, 'no'),
(371, 17, 'Height', NULL, NULL, NULL, 'no'),
(372, 17, 'No_of_ply', NULL, NULL, NULL, 'no'),
(373, 17, 'Brand', NULL, NULL, NULL, 'no'),
(374, 17, 'SI_unit', NULL, NULL, NULL, 'yes'),
(375, 18, 'Short_Description', NULL, NULL, NULL, 'no'),
(376, 18, 'Length', NULL, NULL, NULL, 'no'),
(377, 18, 'Breadth', NULL, NULL, NULL, 'no'),
(378, 18, 'Height', NULL, NULL, NULL, 'no'),
(379, 18, 'No_of_ply', NULL, NULL, NULL, 'no'),
(380, 18, 'Vendor', NULL, NULL, NULL, 'no'),
(381, 18, 'Long_Description', NULL, NULL, NULL, 'no'),
(382, 1, 'Long_Description', NULL, NULL, NULL, 'no'),
(383, 1, 'Vendor', NULL, NULL, NULL, 'no'),
(384, 1, 'Price', NULL, NULL, NULL, 'no'),
(385, 1, 'Discount', NULL, NULL, NULL, 'no'),
(386, 1, 'Location', NULL, NULL, NULL, 'no'),
(387, 2, 'Price', NULL, NULL, NULL, 'no'),
(388, 2, 'Discount', NULL, NULL, NULL, 'no'),
(389, 2, 'Location', NULL, NULL, NULL, 'no'),
(390, 3, 'Long_Description', NULL, NULL, NULL, 'no'),
(391, 3, 'Vendor', NULL, NULL, NULL, 'no'),
(392, 3, 'Price', NULL, NULL, NULL, 'no'),
(393, 3, 'Discount', NULL, NULL, NULL, 'no'),
(394, 3, 'Location', NULL, NULL, NULL, 'no'),
(395, 4, 'Location', NULL, NULL, NULL, 'no'),
(400, 4, 'Shape', NULL, NULL, NULL, 'yes'),
(402, 8, 'Location', NULL, NULL, NULL, 'no'),
(403, 8, 'Shape', NULL, NULL, NULL, 'yes'),
(404, 9, 'Location', NULL, NULL, NULL, 'no'),
(405, 9, 'Shape', NULL, NULL, NULL, 'yes'),
(406, 7, 'Shape', NULL, NULL, NULL, 'yes'),
(407, 11, 'Lining_colour', NULL, NULL, NULL, 'no'),
(408, 11, 'Frame', NULL, NULL, NULL, 'yes'),
(409, 11, 'Brand', NULL, NULL, NULL, 'no'),
(410, 11, 'SI_unit', NULL, NULL, NULL, 'yes'),
(411, 11, 'Long_Description', NULL, NULL, NULL, 'no'),
(412, 11, 'Vendor', NULL, NULL, NULL, 'no'),
(413, 11, 'Price', NULL, NULL, NULL, 'no'),
(414, 11, 'Discount', NULL, NULL, NULL, 'no'),
(415, 11, 'Location', NULL, NULL, NULL, 'no'),
(416, 11, 'Shape', NULL, NULL, NULL, 'no'),
(422, 14, 'Long_Description', NULL, NULL, NULL, 'no'),
(423, 14, 'Vendor', NULL, NULL, NULL, 'no'),
(424, 14, 'Price', NULL, NULL, NULL, 'no'),
(425, 14, 'Discount', NULL, NULL, NULL, 'no'),
(426, 14, 'Location', NULL, NULL, NULL, 'no'),
(427, 15, 'Long_Description', NULL, NULL, NULL, 'no'),
(428, 15, 'Vendor', NULL, NULL, NULL, 'no'),
(429, 15, 'Price', NULL, NULL, NULL, 'no'),
(430, 15, 'Discount', NULL, NULL, NULL, 'no'),
(431, 15, 'Location', NULL, NULL, NULL, 'no'),
(432, 16, 'Long_Description', NULL, NULL, NULL, 'no'),
(433, 16, 'Vendor', NULL, NULL, NULL, 'no'),
(434, 16, 'Price', NULL, NULL, NULL, 'no'),
(435, 16, 'Discount', NULL, NULL, NULL, 'no'),
(436, 16, 'Location', NULL, NULL, NULL, 'no'),
(437, 17, 'Long_Description', NULL, NULL, NULL, 'no'),
(438, 17, 'Vendor', NULL, NULL, NULL, 'no'),
(439, 17, 'Price', NULL, NULL, NULL, 'no'),
(440, 17, 'Discount', NULL, NULL, NULL, 'no'),
(441, 17, 'Location', NULL, NULL, NULL, 'no'),
(442, 10, 'Vendor', NULL, NULL, NULL, 'no'),
(443, 10, 'Price', NULL, NULL, NULL, 'no'),
(444, 10, 'Discount', NULL, NULL, NULL, 'no'),
(445, 10, 'Location', NULL, NULL, NULL, 'no'),
(447, 1, 'Cut', NULL, NULL, NULL, 'yes'),
(448, 1, 'Thickness', NULL, NULL, NULL, 'no'),
(449, 1, 'Side_Hole_dia', NULL, NULL, NULL, 'no'),
(450, 20, 'name', NULL, NULL, NULL, 'no'),
(451, 22, 'name', NULL, NULL, NULL, 'no'),
(452, 23, 'name', NULL, NULL, NULL, 'no'),
(453, 24, 'name', NULL, NULL, NULL, 'no'),
(454, 24, 'seconed', NULL, NULL, NULL, 'no'),
(455, 25, 'name', NULL, NULL, NULL, 'no'),
(456, 26, 'name', NULL, NULL, NULL, 'no'),
(457, 27, 'name', NULL, NULL, NULL, 'no'),
(458, 27, 'SI_unit', NULL, NULL, NULL, 'yes'),
(459, 28, 'name', NULL, NULL, NULL, 'no'),
(460, 29, 'name', NULL, NULL, NULL, 'no'),
(461, 30, 'name', NULL, NULL, NULL, 'no'),
(462, 31, 'name', NULL, NULL, NULL, 'no'),
(463, 32, 'name', NULL, NULL, NULL, 'no'),
(464, 34, 'name', NULL, NULL, NULL, 'no'),
(465, 35, 'name', NULL, NULL, NULL, 'no'),
(466, 36, 'name', NULL, NULL, NULL, 'no'),
(467, 37, 'name', NULL, NULL, NULL, 'no'),
(468, 38, 'name', NULL, NULL, NULL, 'no'),
(469, 39, 'name', NULL, NULL, NULL, 'no'),
(470, 40, 'name', NULL, NULL, NULL, 'no'),
(471, 41, 'name', NULL, NULL, NULL, 'no'),
(472, 42, 'name', NULL, NULL, NULL, 'no'),
(473, 43, 'name', NULL, NULL, NULL, 'no'),
(474, 44, 'name', NULL, NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `require_atts`
--

CREATE TABLE `require_atts` (
  `attr_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `default_value` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `placeholder` varchar(45) DEFAULT NULL,
  `dropdown` varchar(45) DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `require_atts`
--

INSERT INTO `require_atts` (`attr_id`, `name`, `default_value`, `type`, `placeholder`, `dropdown`) VALUES
(446, 'Short_Description', NULL, NULL, NULL, 'no'),
(447, 'Price', NULL, NULL, NULL, 'no'),
(448, 'SI_unit', NULL, NULL, NULL, 'no'),
(449, 'Material', NULL, NULL, NULL, 'no'),
(450, 'Design', NULL, NULL, NULL, 'no'),
(451, 'finish_type', NULL, NULL, NULL, 'no'),
(452, 'Half_Full_Thread', NULL, NULL, NULL, 'no'),
(453, 'Holder_Thread', NULL, NULL, NULL, 'no'),
(454, 'Holder_type', NULL, NULL, NULL, 'no'),
(455, 'Thread', NULL, NULL, NULL, 'no'),
(456, 'Brand', NULL, NULL, NULL, 'no'),
(457, 'Light_Output_Colour', NULL, NULL, NULL, 'no'),
(458, 'Colour', NULL, NULL, NULL, 'no'),
(459, 'Cut', NULL, NULL, NULL, 'no'),
(460, 'Height', NULL, NULL, NULL, 'no'),
(461, 'Length', NULL, NULL, NULL, 'no'),
(462, 'Breadth', NULL, NULL, NULL, 'no'),
(463, 'Upper_Dia', NULL, NULL, NULL, 'no'),
(464, 'Bottom_Dia', NULL, NULL, NULL, 'no'),
(465, 'Centre_Hole_dia', NULL, NULL, NULL, 'no'),
(466, 'Size', NULL, NULL, NULL, 'no'),
(467, 'Watt', NULL, NULL, NULL, 'no'),
(468, 'Shape', NULL, NULL, NULL, 'no'),
(469, 'Side_Hole_dia', NULL, NULL, NULL, 'no'),
(470, 'Top_hole_dia', NULL, NULL, NULL, 'no'),
(471, 'No_of_ply', NULL, NULL, NULL, 'no'),
(472, 'Style', NULL, NULL, NULL, 'no'),
(473, 'Thickness', NULL, NULL, NULL, 'no'),
(474, 'Weight', NULL, NULL, NULL, 'no'),
(475, 'Depth', NULL, NULL, NULL, 'no'),
(476, 'Thickness', NULL, NULL, NULL, 'no'),
(477, 'Weight', NULL, NULL, NULL, 'no'),
(478, 'Depth', NULL, NULL, NULL, 'no'),
(479, 'Thickness', NULL, NULL, NULL, 'no'),
(480, 'Core', NULL, NULL, NULL, 'no'),
(481, 'Inner_Outer_thread', NULL, NULL, NULL, 'no'),
(482, 'Upper_thread', NULL, NULL, NULL, 'no'),
(483, 'Lower_thread', NULL, NULL, NULL, 'no'),
(484, 'Thread_length', NULL, NULL, NULL, 'no'),
(485, 'Indian_Imported', NULL, NULL, NULL, 'no'),
(486, 'In_built_switch', NULL, NULL, NULL, 'no'),
(487, 'Wire_type', NULL, NULL, NULL, 'no'),
(488, 'Vendor', NULL, NULL, NULL, 'no'),
(489, 'Long_Description', NULL, NULL, NULL, 'no'),
(490, 'Discount', NULL, NULL, NULL, 'no'),
(491, 'fabric', NULL, NULL, NULL, 'no'),
(492, 'piping', NULL, NULL, NULL, 'no'),
(493, 'piping_color', NULL, NULL, NULL, 'no'),
(494, 'acrylic_sheet', NULL, NULL, NULL, 'no'),
(495, 'gallery_height', NULL, NULL, NULL, 'no'),
(496, 'sheet', NULL, NULL, NULL, 'no'),
(497, 'sheet', NULL, NULL, NULL, 'no'),
(498, 'sheet_color', NULL, NULL, NULL, 'no'),
(499, 'Frame', NULL, NULL, NULL, 'no'),
(500, 'fabric_colour', NULL, NULL, NULL, 'no'),
(501, 'Colour_Temparature', NULL, NULL, NULL, 'no'),
(502, 'Dimmable', NULL, NULL, NULL, 'no'),
(503, 'Location', NULL, NULL, NULL, 'no'),
(504, 'Diameter', NULL, NULL, NULL, 'no'),
(505, 'Collar', NULL, NULL, NULL, 'no'),
(506, 'Socket', NULL, NULL, NULL, 'no'),
(507, 'Ink_type', NULL, NULL, NULL, 'no'),
(508, 'Transparent', NULL, NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `requisition_request_form`
--

CREATE TABLE `requisition_request_form` (
  `record_number` int(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` varchar(100) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `requisition_type` varchar(100) NOT NULL,
  `so_number` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `user_remarks` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date_hand_hover` varchar(100) NOT NULL,
  `handover_over_by` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `final_remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requisition_request_form`
--

INSERT INTO `requisition_request_form` (`record_number`, `created_by`, `created_date`, `department_name`, `requisition_type`, `so_number`, `item_name`, `item_code`, `quantity`, `user_remarks`, `price`, `date_hand_hover`, `handover_over_by`, `status`, `final_remarks`) VALUES
(1, 'dssdsdf', '2024-10-11', 'asdv', 'sdfbn123', '1', 'bulb', 'EL-GL-2-1.-24-YE-XY-30-2-RA', '10', 'sdf', '1200', '2024-10-02', 'fsg', 'cscc', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `requisition_table`
--

CREATE TABLE `requisition_table` (
  `S_no` int(11) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `requisition_type` varchar(50) DEFAULT NULL,
  `requisition_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_code` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `user_remarks` varchar(200) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `date_hand_hover` date DEFAULT NULL,
  `handover_over_by` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `final_remarks` varchar(200) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `shortDiscription` varchar(45) DEFAULT NULL,
  `total_price` varchar(45) DEFAULT NULL,
  `po_status` varchar(45) DEFAULT NULL,
  `po_number` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `requisition_table`
--

INSERT INTO `requisition_table` (`S_no`, `created_by`, `created_date`, `department_name`, `department_id`, `requisition_type`, `requisition_id`, `project_id`, `item_name`, `item_code`, `quantity`, `user_remarks`, `price`, `date_hand_hover`, `handover_over_by`, `status`, `final_remarks`, `record_id`, `updatedBy`, `updated_date`, `shortDiscription`, `total_price`, `po_status`, `po_number`) VALUES
(1, 'system', '2024-08-02', 'HR', 1, 'IR', 1, 1, 'box', 1, 10, 'cancledsdwdw', 20000, '2024-08-25', '', 'CANCEL', 'UPDATE', 1, 'system', '2024-08-06', NULL, 'total', 'GEN', NULL),
(2, 'system', '2024-08-02', 'HR', 1, 'internal store', 2, 2, 'bulb', 2, 20, 'urgenttttttttttttttttttttttt', 20000, '2024-08-25', 'store keeper', 'CANCEL', '', 1, 'system', '2024-08-06', NULL, 'total', 'GEN', 362),
(3, 'sytem', '2024-08-02', 'HR', 1, 'IR', 3, 2, 'bulb', 2, 10, 'need', 20000, '2024-08-25', 'store', 'CANCEL', 'need', 1, 'system', '2024-08-06', NULL, 'total', 'GEN', 362),
(4, 'System', '2024-08-02', 'SCH', 1, '', 198, NULL, 'BULB', 1, 1, 'data are canceled', 20000, '2024-08-25', '', 'PENDING', 'data', NULL, 'system', '2024-08-06', NULL, 'total', NULL, NULL),
(5, 'System', '2024-08-02', 'SCH', 1, 'IR', 199, NULL, 'BULB', 1, 1, '', 20000, '2024-08-25', 'store', 'CLOSE', '', NULL, 'system', '2024-08-06', NULL, 'total', NULL, NULL),
(6, 'System', '2024-08-02', 'SCH', 1, 'IR', 200, NULL, 'BULB', 1, 1, '', 20000, '2024-08-25', 'kkjk', 'CLOSE', 'kjkjk', NULL, 'system', '2024-08-06', NULL, 'total', NULL, NULL),
(7, 'System', '2024-08-02', 'SCH', 1, NULL, 201, NULL, 'BULB', 1, 1, '', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'system', '2024-08-06', NULL, 'total', NULL, NULL),
(8, 'System', '2024-08-02', 'SCH', 1, NULL, 202, NULL, 'BULB', 1, 1, '', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'system', '2024-08-06', NULL, 'total', NULL, NULL),
(9, 'System', '2024-08-02', 'SCH', 1, NULL, 203, NULL, 'BULB', 1, 1, '', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'system', '2024-08-06', NULL, 'total', NULL, NULL),
(10, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 206, NULL, 'cable', 1, 10, 'need to be night', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(11, 'adminRequisition', '2024-08-03', 'hr', 1, NULL, 207, NULL, 'fibre cable', 1, 21, 'need', 20000, '2024-08-25', NULL, '', NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(12, 'adminRequisition', '2024-08-03', 'hr', 1, NULL, 207, NULL, 'fibre cable', 1, 21, 'need', 20000, '2024-08-25', NULL, '', NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(13, 'adminRequisition', '2024-08-03', 'SCH', 1, NULL, 207, NULL, 'cup', 1, 22, 'need', 20000, '2024-08-25', NULL, '', NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(14, 'adminRequisition', '2024-08-03', 'IT', 1, NULL, 207, 4, 'copper cable', 1, 100, 'need cooper cable', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(15, 'adminRequisition', '2024-08-03', 'IT', 1, NULL, 207, 4, 'copper cable', 1, 100, 'need cooper cable', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(16, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 207, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(17, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 212, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(18, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 213, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(19, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 213, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(20, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 213, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(21, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 213, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(22, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 213, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(23, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 218, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(24, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, 1, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, NULL, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(25, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, NULL, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, 'PENDING', NULL, 1, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(26, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, NULL, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, 213, 'adminRequisition', '2024-08-06', NULL, 'total', 'GEN', 351),
(27, 'adminRequisition', '2024-08-03', 'HR', 1, NULL, NULL, 6, 'kgnl', 1, 21, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, 213, 'adminRequisition', '2024-08-06', NULL, 'total', 'GEN', 351),
(28, 'adminRequisition', '2024-08-03', 'IT', 1, NULL, NULL, 88, 'Ba', 1, 100, 'need urget', 20000, '2024-08-25', NULL, NULL, NULL, 213, 'adminRequisition', '2024-08-06', NULL, 'total', 'GEN', 345),
(29, 'adminRequisition', '2024-08-03', 'department', 1, NULL, NULL, 99, 'copy', 1, 10, 'cop', 20000, '2024-08-25', NULL, 'CANCEL', NULL, 213, 'adminRequisition', '2024-08-06', NULL, 'total', 'GEN', 345),
(30, 'adminRequisition', '2024-08-05', 'HR', 1, NULL, NULL, 9, 'cup', 1, 10, 'de', 20000, '2024-08-25', NULL, NULL, NULL, 234, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(31, 'adminRequisition', '2024-08-05', 'NEW DT', 1, NULL, NULL, 9, 'NUSD`', 1, 1278, 'kdk', 20000, '2024-08-25', NULL, NULL, NULL, 235, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(32, 'adminRequisition', '2024-08-06', '', 1, NULL, NULL, 12, 'cable', 1, 29, 'need get', 20000, '2024-08-25', NULL, NULL, NULL, 236, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(33, 'admin', '2024-08-06', '', 1, NULL, NULL, 2, 'bud', 1, 78, 'need', 20000, '2024-08-25', NULL, NULL, NULL, 237, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(34, 'admin', '2024-08-06', '', 1, NULL, NULL, 32, 'fmke', 1, 38, 'need', 20000, '2024-08-25', NULL, NULL, NULL, 238, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(35, 'admin', '2024-08-06', '', 1, NULL, NULL, 43, 'kdfoef', 1, 43, 'ifjeiofjo', 20000, '2024-08-25', NULL, NULL, NULL, 243, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(36, 'admin', '2024-08-06', '', 1, NULL, NULL, 8439, 'jido', 1, 9789, '89879', 20000, '2024-08-25', NULL, NULL, NULL, 244, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(37, 'admin', '2024-08-06', '', 1, NULL, NULL, 6767, 'klhkj', 789, 6767, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(38, 'admin', '2024-08-06', '', 1, NULL, NULL, 6767, 'klhkj', 789, 6767, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(39, 'admin', '2024-08-06', '', 1, NULL, NULL, 6767, 'klhkj', 789, 6767, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(40, 'admin', '2024-08-06', '', 1, NULL, NULL, 6767, 'klhkj', 789, 6767, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(41, 'admin', '2024-08-06', '', 1, NULL, NULL, 6767, 'klhkj', 789, 6767, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(42, 'admin', '2024-08-06', '', 1, NULL, NULL, 6767, 'new item 14', 789, 6767, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 336),
(43, 'admin', '2024-08-06', '', 1, NULL, NULL, 767, 'new name', 10, 78, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 336),
(44, 'admin', '2024-08-06', '', 1, NULL, NULL, 767, 'new name', 10, 78, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 360),
(45, 'admin', '2024-08-06', '', 1, NULL, NULL, 432, 'dmwk', 10, 32, 'rf4ff', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 357),
(46, 'admin', '2024-08-06', '', 1, NULL, NULL, 432, 'dmwk', 10, 32, 'rf4ff', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 357),
(47, 'admin', '2024-08-06', '', 1, NULL, NULL, 432, 'dmwk', 10, 32, 'rf4ff', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 347),
(48, 'admin', '2024-08-06', '', 1, NULL, NULL, 432, 'dmwk', 10, 32, 'rf4ff', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 347),
(49, 'admin', '2024-08-06', '', 1, NULL, NULL, 2, 'u89j', 10, 8, 'u9', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 335),
(50, 'admin', '2024-08-06', '', 1, NULL, NULL, 2, '', 10, 1, '', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 335),
(51, 'admin', '2024-08-06', '', 1, NULL, NULL, 2, '', 10, 1, '', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 346),
(52, 'admin', '2024-08-06', '', 1, NULL, NULL, 2, 'hfdioef', 10, 1, 'fefemfor', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 352),
(53, 'admin', '2024-08-06', '', 1, NULL, NULL, 2, 'jijij', 10, 7, 'ikjo', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 352),
(54, 'admin', '2024-08-06', '', 1, NULL, NULL, 2, 'jijij', 10, 7, 'ikjo', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 337),
(55, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'jkjk', 10, 67, 'i', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 341),
(56, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'jkjk', 10, 67, 'i', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 341),
(57, 'admin', '2024-08-06', '', 1, NULL, NULL, 343, 'hiuh', 10, 878, 'nk', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 337),
(58, 'admin', '2024-08-06', '', 1, NULL, NULL, 343, 'hiuh', 10, 878, 'nk', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 346),
(59, 'admin', '2024-08-06', '', 1, NULL, NULL, 898, 'huhu', 10, 6, 'de', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 360),
(60, 'admin', '2024-08-06', '', 1, NULL, NULL, 898, 'huhu', 10, 6, 'de', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 340),
(61, 'admin', '2024-08-06', '', 1, NULL, NULL, 898, 'huhu', 10, 6, '', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 340),
(62, 'admin', '2024-08-06', '', 1, NULL, NULL, 878, 'kjkj', 10, 7, 'cd', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 348),
(63, 'admin', '2024-08-06', '', 1, NULL, NULL, 878, 'kjkj', 10, 7, '', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 348),
(64, 'admin', '2024-08-06', '', 1, NULL, NULL, 878, 'kjkj', 10, 7, '', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 350),
(65, 'admin', '2024-08-06', '', 1, NULL, NULL, 878, 'kjkj', 10, 7, '', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', 'GEN', 350),
(66, 'admin', '2024-08-06', '', 1, NULL, NULL, 878, 'kjkj', 10, 6, '', 20000, '2024-08-25', NULL, NULL, NULL, 1, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(67, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'kk', 10, 7, 'hihi', 20000, '2024-08-25', NULL, NULL, NULL, 7, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(68, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'kk', 10, 7, 'hihi', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', 'GEN', 325),
(69, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'kk', 10, 7, 'hihi', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(70, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'kk', 10, 7, 'hihi', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(71, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'knk', 10, 67, 'nk', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(72, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'mk', 10, 78, 'ji', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(73, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'mk', 10, 78, 'ji', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(74, 'admin', '2024-08-06', '', 1, NULL, NULL, 67, 'mk', 10, 78, 'ji', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(75, 'admin', '2024-08-06', '', 1, NULL, NULL, 48, 'dkop', 10, 67, 'mjijio', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(76, 'admin', '2024-08-06', '', 1, NULL, NULL, 48, 'dkop', 10, 67, 'mjijio', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(77, 'admin', '2024-08-06', '', 1, NULL, NULL, 54, 'jio', 10, 6, 'ji', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(78, 'admin', '2024-08-06', '', 1, NULL, NULL, 54, 'jio', 10, 6, 'ji', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(79, 'admin', '2024-08-06', '', 1, NULL, NULL, 43, 'mn', 10, 67, 'jo', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(80, 'admin', '2024-08-06', '', 1, NULL, NULL, 43, 'mn', 10, 67, 'jo', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(81, 'admin', '2024-08-06', '', 1, NULL, NULL, 867, 'mknjb', 10, 2, 'jio', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(82, 'admin', '2024-08-06', '', 1, NULL, NULL, 12, 'fe', 10, 7, 'ojo', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(83, 'admin', '2024-08-06', '', 1, NULL, NULL, 12, 'fe', 10, 7, 'ojo', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(84, 'admin', '2024-08-07', '', 1, NULL, NULL, 32, 'jijdei', 10, 43, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(85, 'admin', '2024-08-07', '', 1, NULL, NULL, 32, 'jijdei', 10, 43, 'need till night', 20000, '2024-08-25', NULL, NULL, NULL, 265, 'admin', '2024-08-06', NULL, 'total', NULL, NULL),
(86, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 78, 'mkm', 10, 78, ',lp', 20000, '2024-08-25', NULL, NULL, NULL, 268, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(87, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 78, 'mkm', 10, 78, 'dede', 20000, '2024-08-25', NULL, NULL, NULL, 268, 'adminRequisition', '2024-08-06', NULL, 'total', NULL, NULL),
(88, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 32, 'CUp', 10, 342, 'fmeopf', 20000, '2024-08-25', NULL, NULL, NULL, 269, 'adminRequisition', '2024-08-06', NULL, 'total', 'GEN', 377),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, '2024-08-25', NULL, NULL, NULL, NULL, NULL, '2024-08-06', NULL, 'total', NULL, NULL),
(90, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 34348, 'hdfej', 10, 65, 'hdw', 20000, '2024-08-25', NULL, NULL, NULL, 269, NULL, NULL, NULL, 'total', 'GEN', 377),
(91, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 4343, 'BB', 10, 67, 'e3e', 20000, '2024-08-25', NULL, NULL, NULL, 269, NULL, NULL, NULL, 'total', NULL, NULL),
(92, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 90, 'Lp', 10, 3, 'de', 20000, '2024-08-25', NULL, NULL, NULL, 269, NULL, NULL, NULL, 'total', NULL, NULL),
(93, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 67, 'jk', 10, 67, 'j', 20000, '2024-08-25', NULL, NULL, NULL, 269, NULL, NULL, NULL, 'total', NULL, NULL),
(94, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 67, 'jk', 10, 67, 'j', 20000, '2024-08-25', NULL, NULL, NULL, 269, NULL, NULL, NULL, 'total', NULL, NULL),
(95, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 3728, 'kok', 10, 79, 'kdoe', 20000, '2024-08-25', NULL, NULL, NULL, 269, NULL, NULL, NULL, 'total', NULL, NULL),
(96, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 243, 'dwj', 10, 2, 'dwkdj', 20000, '2024-08-25', NULL, NULL, NULL, 269, NULL, NULL, NULL, 'total', NULL, NULL),
(97, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 6, 'jijo', 1, 3, 'need to be after noon', 20000, '2024-08-25', NULL, NULL, NULL, 270, NULL, NULL, NULL, 'total', NULL, NULL),
(98, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 6, 'jijo', 1, 3, 'need to be after noon', 20000, '2024-08-25', NULL, NULL, NULL, 270, NULL, NULL, NULL, 'total', NULL, NULL),
(99, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 767, 'vuop', 10, 67, 'need roight', 20000, '2024-08-25', NULL, NULL, NULL, 271, NULL, NULL, NULL, 'total', 'GEN', 320),
(100, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 67, 'lao', 1, 67, 'udh', 20000, '2024-08-25', NULL, NULL, NULL, 271, NULL, NULL, NULL, 'total', NULL, NULL),
(101, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 67, 'lao', 1, 67, 'udh', 20000, '2024-08-25', NULL, NULL, NULL, 271, NULL, NULL, NULL, 'total', NULL, NULL),
(102, 'rg1', '2024-08-07', '', 1, NULL, NULL, 34, 'bvvb', 1, 3, 'fgf', 20000, '2024-08-25', NULL, NULL, NULL, 272, NULL, NULL, NULL, 'total', 'GEN', 319),
(103, 'rg1', '2024-08-07', '', 1, NULL, NULL, 34, 'bvvb', 1, 3, 'fgf', 20000, '2024-08-25', NULL, NULL, NULL, 272, NULL, NULL, NULL, 'total', NULL, NULL),
(104, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 78, 'kol', 10, 67, 'oo', 20000, '2024-08-25', NULL, NULL, NULL, 273, NULL, NULL, NULL, 'total', NULL, NULL),
(105, 'rg1', '2024-08-07', '', 1, NULL, NULL, 12, 'jio', 10, 56, 'jio', 20000, '2024-08-25', NULL, NULL, NULL, 274, NULL, NULL, NULL, 'total', NULL, NULL),
(106, 'rg1', '2024-08-07', '', 1, NULL, NULL, 12, 'jio', 10, 56, 'jio', 20000, '2024-08-25', NULL, NULL, NULL, 274, NULL, NULL, NULL, 'total', NULL, NULL),
(107, 'rg1', '2024-08-07', '', 1, NULL, NULL, 12, 'jio', 1, 5, 'sdsds', 20000, '2024-08-25', NULL, NULL, NULL, 274, NULL, NULL, NULL, 'total', NULL, NULL),
(108, 'rg1', '2024-08-07', '', 1, NULL, NULL, 12, 'jio', 1, 5, 'sdsds', 20000, '2024-08-25', NULL, NULL, NULL, 274, NULL, NULL, NULL, 'total', NULL, NULL),
(109, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 43, 'hio', 1, 67, 'huu', 20000, '2024-08-25', NULL, NULL, NULL, 273, NULL, NULL, NULL, 'total', NULL, NULL),
(110, 'adminRequisition', '2024-08-07', '', 1, NULL, NULL, 43, 'hio', 1, 67, 'huu', 20000, '2024-08-25', NULL, NULL, NULL, 273, NULL, NULL, NULL, 'total', NULL, NULL),
(111, 'adminRequisition', '2024-08-07', 'HR', 1, NULL, NULL, 67, 'laptopn', 1, 21, 'jhio', 20000, '2024-08-25', NULL, NULL, NULL, 277, NULL, NULL, NULL, 'total', NULL, NULL),
(112, 'adminRequisition', '2024-08-07', 'HR', 1, NULL, NULL, 67, 'laptopn', 1, 21, 'jhio', 20000, '2024-08-25', NULL, NULL, NULL, 277, NULL, NULL, NULL, 'total', NULL, NULL),
(113, 'rg1', '2024-08-07', '', 1, NULL, NULL, 1, 'ughg', 10, 2, 'ughg', 20000, '2024-08-25', NULL, NULL, NULL, 276, NULL, NULL, NULL, 'total', NULL, NULL),
(114, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 1, 'ughg', 1, 2, 'kjkj', 20000, '2024-08-25', NULL, NULL, NULL, 276, NULL, NULL, NULL, 'total', NULL, NULL),
(115, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 1, 'ughg', 1, 2, 'kjkj', 20000, '2024-08-25', NULL, NULL, NULL, 276, NULL, NULL, NULL, 'total', NULL, NULL),
(116, 'adminRequisition', '2024-08-07', 'HR', 1, NULL, NULL, 32, 'OPPO', 1, 67, 'hioi', 20000, '2024-08-25', NULL, NULL, NULL, 278, NULL, NULL, NULL, 'total', NULL, NULL),
(117, 'adminRequisition', '2024-08-07', 'HR', 1, NULL, NULL, 32, 'OPPO', 1, 67, 'hioi', 20000, '2024-08-25', NULL, NULL, NULL, 278, NULL, NULL, NULL, 'total', NULL, NULL),
(118, 'adminRequisition', '2024-08-07', 'HR', 1, NULL, NULL, 56, 'nk', 1, 67, 'ji', 20000, '2024-08-25', NULL, NULL, NULL, 280, NULL, NULL, NULL, 'total', NULL, NULL),
(119, 'adminRequisition', '2024-08-07', 'HR', 1, NULL, NULL, 56, 'nk', 1, 67, 'ji', 20000, '2024-08-25', NULL, NULL, NULL, 280, NULL, NULL, NULL, 'total', NULL, NULL),
(120, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 12, 'mnkjk', 1, 1, 'kjkjk', 20000, '2024-08-25', NULL, NULL, NULL, 281, NULL, NULL, NULL, 'total', NULL, NULL),
(121, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 12, 'mnkjk', 1, 1, 'hjvghffdfcancel', 20000, '2024-08-25', NULL, 'CANCEL', NULL, 281, NULL, NULL, NULL, 'total', NULL, NULL),
(122, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 677, 'jlk', 1, 76, 'hi', 20000, '2024-08-25', NULL, NULL, NULL, 283, NULL, NULL, NULL, 'total', NULL, NULL),
(123, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 677, 'jlk', 1, 76, 'hi', 20000, '2024-08-25', NULL, NULL, NULL, 283, NULL, NULL, NULL, 'total', NULL, NULL),
(124, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 56, 'hu', 1, 67, 'jio', 20000, '2024-08-25', NULL, NULL, NULL, 284, NULL, NULL, NULL, 'total', NULL, NULL),
(125, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 56, 'hu', 1, 67, 'jio', 20000, '2024-08-25', NULL, NULL, NULL, 284, NULL, NULL, NULL, 'total', NULL, NULL),
(126, 'rg1', '2024-08-07', 'hr', 1, NULL, NULL, 78, 'joi', 10, 78, 'joi', 20000, '2024-08-25', NULL, NULL, NULL, 285, NULL, NULL, NULL, 'total', 'GEN', 367),
(127, 'rg1', '2024-08-07', 'hr', 1, NULL, NULL, 78, 'joi', 10, 78, 'joi', 20000, '2024-08-25', NULL, NULL, NULL, 285, NULL, NULL, NULL, 'total', 'GEN', 367),
(128, 'rg1', '2024-08-07', 'hr', 1, NULL, NULL, 78, 'joi', 10, 78, 'joi', 20000, '2024-08-25', NULL, NULL, NULL, 285, NULL, NULL, NULL, 'total', NULL, NULL),
(129, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 43, 'hj', 1, 78, 'jil', 20000, '2024-08-25', NULL, NULL, NULL, 286, NULL, NULL, NULL, 'total', NULL, NULL),
(130, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 43, 'hj', 1, 78, 'jil', 20000, '2024-08-25', NULL, NULL, NULL, 286, NULL, NULL, NULL, 'total', NULL, NULL),
(131, 'rg1', '2024-08-07', 'hr', 1, NULL, NULL, 678, 'kl', 10, 67, 'jio', 20000, '2024-08-25', NULL, NULL, NULL, 287, NULL, NULL, NULL, 'total', NULL, NULL),
(132, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 67, 'jln', 1, 67, 'kjkl', 20000, '2024-08-25', NULL, NULL, NULL, 287, NULL, NULL, NULL, 'total', NULL, NULL),
(133, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 67, 'jln', 1, 67, 'kjkl', 20000, '2024-08-25', NULL, NULL, NULL, 287, NULL, NULL, NULL, 'total', NULL, NULL),
(134, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 0, 'fdoep', 1, 678, 'kojp', 20000, '2024-08-25', NULL, NULL, NULL, 288, NULL, NULL, NULL, 'total', 'GEN', 315),
(135, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 0, 'fdoep', 1, 678, 'kojp', 20000, '2024-08-25', NULL, NULL, NULL, 288, NULL, NULL, NULL, 'total', 'GEN', 315),
(136, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 0, 'ojio', 1, 67, 'hk', 20000, '2024-08-25', NULL, NULL, NULL, 289, NULL, NULL, NULL, 'total', 'GEN', NULL),
(137, 'rg1', '2024-08-07', 'HR', 1, NULL, NULL, 0, 'ojio', 1, 67, 'hk', 20000, '2024-08-25', NULL, NULL, NULL, 289, NULL, NULL, NULL, 'total', 'GEN', NULL),
(138, 'admin', '2024-08-19', 'HR', 1, NULL, NULL, 0, 'hjjj', 1, 7678, 'need to be night', 20000, '2024-08-25', NULL, NULL, NULL, 293, NULL, NULL, NULL, 'total', NULL, NULL),
(139, 'admin', '2024-08-19', 'HR', 1, NULL, NULL, 0, 'hjjj', 1, 7678, 'need to be night', 20000, '2024-08-25', NULL, NULL, NULL, 293, NULL, NULL, NULL, 'total', NULL, NULL),
(140, 'rg1', '2024-08-19', 'HR', 1, NULL, NULL, 0, 'ihu1', 1, 56, 'need to be urgrn', 20000, '2024-08-25', NULL, NULL, NULL, 294, NULL, NULL, NULL, 'total', 'GEN', 311),
(141, 'rg1', '2024-08-19', 'HR', 1, NULL, NULL, 0, 'ihu1', 1, 56, 'need to be urgrn', 20000, '2024-08-25', NULL, NULL, NULL, 294, NULL, NULL, NULL, 'total', 'GEN', 317),
(142, 'admin', '2024-08-20', 'hr', 1, NULL, NULL, 87, 'iuofhjio', 10, 90879, 'r3r3', 20000, '2024-08-25', NULL, NULL, NULL, 298, NULL, NULL, NULL, 'total', 'GEN', NULL),
(143, 'admin', '2024-08-22', 'HR', 1, NULL, NULL, 0, 'EL-HU-UH-UH-UH-UH-UH-UH-UH-UH', 1, 34, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, 307, NULL, NULL, NULL, 'total', 'GEN', NULL),
(144, 'admin', '2024-08-22', 'HR', 1, NULL, NULL, 0, 'EL-HU-UH-UH-UH-UH-UH-UH-UH-UH', 1, 34, 'dfmdl', 20000, '2024-08-25', NULL, NULL, NULL, 307, NULL, NULL, NULL, 'total', 'GEN', 312),
(145, 'admin', '2024-08-22', 'HR', 1, NULL, NULL, 0, 'EL-2-1-FU-EA-WH-XY-25-3-RA', 1, 0, 'MKMK', 20000, '2024-08-25', NULL, NULL, NULL, 308, NULL, NULL, 'Short_Description', 'total', NULL, NULL),
(146, 'admin', '2024-08-22', 'HR', 1, NULL, NULL, 0, 'EL-2-1-FU-EA-WH-XY-25-3-RA', 1, 0, 'MKMK', 20000, '2024-08-25', NULL, NULL, NULL, 308, NULL, NULL, 'Short_Description', 'total', NULL, NULL),
(147, 'admin', '2024-08-24', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 3, 'jugubj', 20000, '2024-08-25', NULL, NULL, NULL, 316, NULL, NULL, 'Short_Description', 'total', NULL, NULL),
(148, 'admin', '2024-08-24', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 3, 'jugubj', 20000, '2024-08-25', NULL, NULL, NULL, 316, NULL, NULL, 'Short_Description', 'total', NULL, NULL),
(149, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-2-1-OS-EA-WH-HO-30-3-RA', 1, 89, 'need to be urgent', NULL, NULL, NULL, NULL, NULL, 317, NULL, NULL, 'need', NULL, NULL, NULL),
(150, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-2-1-OS-EA-WH-HO-30-3-RA', 1, 89, 'need to be urgent', NULL, NULL, NULL, NULL, NULL, 317, NULL, NULL, 'need', NULL, NULL, NULL),
(151, 'admin', '2024-08-25', 'hr', 1, NULL, NULL, 3, 'ss', 10, 78, 'jjk', NULL, NULL, NULL, NULL, NULL, 323, NULL, NULL, NULL, NULL, 'GEN', NULL),
(152, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 67, 'jugubj', NULL, NULL, NULL, NULL, NULL, 323, NULL, NULL, 'Short_Description', NULL, 'GEN', NULL),
(153, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 67, 'jugubj', NULL, NULL, NULL, NULL, NULL, 323, NULL, NULL, 'Short_Description', NULL, 'GEN', NULL),
(154, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 100, 'need urgent', NULL, NULL, NULL, NULL, NULL, 324, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(155, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 100, 'need urgent', NULL, NULL, NULL, NULL, NULL, 324, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(156, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 1, 12, 'jugubj', NULL, NULL, NULL, NULL, NULL, 325, NULL, NULL, 'Short_Description', NULL, 'GEN', 380),
(157, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 1, 12, 'jugubj', NULL, NULL, NULL, NULL, NULL, 325, NULL, NULL, 'Short_Description', NULL, 'GEN', 380),
(158, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 2, '78', NULL, NULL, NULL, NULL, NULL, 326, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(159, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 2, '78', NULL, NULL, NULL, NULL, NULL, 326, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(160, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 1, 'j', NULL, NULL, NULL, NULL, NULL, 322, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(161, 'admin', '2024-08-25', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 1, 'j', NULL, NULL, NULL, NULL, NULL, 322, NULL, NULL, 'Short_Description', NULL, 'GEN', NULL),
(162, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 234, 'EL-2-1-FU-EA-WH-XY-25-3-RA', 1, 1, 'jhfy', NULL, NULL, NULL, NULL, NULL, 330, NULL, NULL, 'Short_Descriptionjyrt6r', NULL, 'GEN', NULL),
(163, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 234, 'EL-2-1-FU-EA-WH-XY-25-3-RA', 1, 1, 'jhfy', NULL, NULL, NULL, NULL, NULL, 330, NULL, NULL, 'Short_Descriptionjyrt6r', NULL, 'GEN', 334),
(164, 'admin', '2024-08-26', 'hr', 1, NULL, NULL, 566, 'a', 10, 6, 'hfy', NULL, NULL, NULL, NULL, NULL, 331, NULL, NULL, NULL, NULL, 'GEN', 0),
(165, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 566, 'a', 1, 6, 'jhfy', NULL, NULL, NULL, NULL, NULL, 331, NULL, NULL, 'jhgwyerfe', NULL, 'GEN', NULL),
(166, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 566, 'a', 1, 6, 'jhfy', NULL, NULL, NULL, NULL, NULL, 331, NULL, NULL, 'jhgwyerfe', NULL, 'GEN', NULL),
(167, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 2324, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 2, 'jhgcyu', NULL, NULL, NULL, NULL, NULL, 332, NULL, NULL, 'Short_Description', NULL, 'GEN', 328),
(168, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 2324, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 2, 'jhgcyu', NULL, NULL, NULL, NULL, NULL, 332, NULL, NULL, 'Short_Description', NULL, 'GEN', 330),
(169, 'user_admin', '2024-08-26', 'HR', 1, NULL, NULL, 678, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 1, 'urgent needed', NULL, NULL, NULL, NULL, NULL, 334, NULL, NULL, 'electrical equipment', NULL, NULL, NULL),
(170, 'user_admin', '2024-08-26', 'HR', 1, NULL, NULL, 678, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 1, 'urgent needed', NULL, NULL, NULL, NULL, NULL, 334, NULL, NULL, 'electrical equipment', NULL, NULL, NULL),
(171, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 213, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 1, 'Urgent', NULL, NULL, NULL, NULL, NULL, 335, NULL, NULL, 'This will be auto generated. ', NULL, NULL, NULL),
(172, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 213, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 1, 'Urgent', NULL, NULL, NULL, NULL, NULL, 335, NULL, NULL, 'This will be auto generated. ', NULL, NULL, NULL),
(173, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 275, 'EL-DE-12-76-JI-ON-JA-10-10-DE', 1, 2, 'urgent needed', NULL, NULL, NULL, NULL, NULL, 336, NULL, NULL, 'BULB-DELH-12-767-JI-ONG', NULL, NULL, NULL),
(174, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 275, 'EL-DE-12-76-JI-ON-JA-10-10-DE', 1, 2, 'urgent needed', NULL, NULL, NULL, NULL, NULL, 336, NULL, NULL, 'BULB-DELH-12-767-JI-ONG', NULL, NULL, NULL),
(175, 'admin', '2024-08-26', 'hr', 1, NULL, NULL, 0, 'gl%', 10, 3, 'hjhjhj', NULL, NULL, NULL, NULL, NULL, 337, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'admin', '2024-08-26', 'hr', 1, NULL, NULL, 0, 'gl%', 10, 3, 'hjhjhj', NULL, NULL, NULL, NULL, NULL, 337, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 0, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 3, 'kjjk', NULL, NULL, NULL, NULL, NULL, 337, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(178, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 0, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 3, 'kjjk', NULL, NULL, NULL, NULL, NULL, 337, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(179, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 242, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 34, 'urgent needed', NULL, NULL, NULL, NULL, NULL, 338, NULL, NULL, 'Short_Description', NULL, 'GEN', 382),
(180, 'admin', '2024-08-26', 'HR', 1, NULL, NULL, 242, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 34, 'urgent needed', NULL, NULL, NULL, NULL, NULL, 338, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(181, 'admin', '2024-08-28', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 8, 'jkl', NULL, NULL, NULL, NULL, NULL, 341, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(182, 'admin', '2024-08-28', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 8, 'jkl', NULL, NULL, NULL, NULL, NULL, 341, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(183, 'admin', '2024-08-28', 'HR', 1, NULL, NULL, 0, 'GL-8-2-2-1.-BL-CL-XY-45-56', 1, 4, 'werty', NULL, NULL, NULL, NULL, NULL, 343, NULL, NULL, 'Short_Description', NULL, NULL, NULL),
(184, 'admin', '2024-08-28', 'HR', 1, NULL, NULL, 0, 'EL-GL-2-1.-24-YE-XY-30-2-RA', 1, 81, 'ma', NULL, NULL, NULL, NULL, NULL, 344, NULL, NULL, 'Short_Description', NULL, 'GEN', 386),
(185, 'admin', '2024-08-29', 'HR', 1, 'IR', NULL, 100, 'new item', 1, 234, 'kj', 100, '2025-02-02', 'Guard', 'PENDING', 'fe', 349, NULL, NULL, 'shirt', NULL, 'GEN', 388);

-- --------------------------------------------------------

--
-- Table structure for table `requisition_table_header`
--

CREATE TABLE `requisition_table_header` (
  `record_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'PENDING',
  `created_by` varchar(45) NOT NULL,
  `created_date` date NOT NULL,
  `updated_by` varchar(45) NOT NULL,
  `updated_date` date NOT NULL,
  `recordStatus` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `requisition_table_header`
--

INSERT INTO `requisition_table_header` (`record_id`, `status`, `created_by`, `created_date`, `updated_by`, `updated_date`, `recordStatus`) VALUES
(1, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', 'inProcess'),
(2, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(3, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(4, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(5, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(6, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(7, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(8, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(9, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(10, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(11, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(12, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(13, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(14, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(15, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(16, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(17, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(18, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(19, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(20, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(21, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(22, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(23, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(24, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(25, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(26, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(27, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(28, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(29, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(30, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(31, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(32, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(33, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(34, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(35, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(36, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(37, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(38, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(39, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(40, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(41, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(42, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(43, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(44, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(45, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(46, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(47, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(48, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(49, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(50, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(51, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(52, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(53, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(54, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(55, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(56, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(57, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(58, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(59, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(60, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(61, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(62, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(63, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(64, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(65, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(66, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(67, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(68, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(69, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(70, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(71, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(72, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(73, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(74, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(75, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(76, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(77, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(78, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(79, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(80, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(81, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(82, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(83, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(84, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(85, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(86, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(87, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(88, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(89, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(90, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(91, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(92, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(93, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(94, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(95, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(96, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(97, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(98, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(99, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(100, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(101, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(102, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(103, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(104, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(105, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(106, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(107, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(108, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(109, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(110, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(111, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(112, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(113, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(114, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(115, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(116, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(117, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(118, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(119, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(120, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(121, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(122, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(123, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(124, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(125, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(126, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(127, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(128, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(129, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(130, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(131, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(132, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(133, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(134, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(135, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(136, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(137, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(138, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(139, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(140, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(141, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(142, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(143, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(144, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(145, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(146, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(147, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(148, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(149, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(150, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(151, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(152, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(153, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(154, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(155, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(156, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(157, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(158, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(159, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(160, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(161, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(162, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(163, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(164, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(165, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(166, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(167, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(168, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(169, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(170, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(171, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(172, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(173, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(174, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(175, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(176, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(177, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(178, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(179, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(180, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(181, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(182, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(183, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(184, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(185, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(186, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(187, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(188, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(189, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(190, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(191, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(192, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(193, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(194, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(195, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(196, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(197, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(198, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(199, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(200, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(201, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(202, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(203, 'PENDING', 'user_1', '2024-08-02', 'user1', '2024-08-02', NULL),
(204, 'PENDING', 'user_1', '2024-08-03', 'user1', '2024-08-03', NULL),
(205, 'PENDING', 'user_1', '2024-08-03', 'user1', '2024-08-03', NULL),
(206, 'PENDING', 'user_1', '2024-08-03', 'user1', '2024-08-03', NULL),
(207, 'PENDING', 'user_1', '2024-08-03', 'user1', '2024-08-03', NULL),
(208, 'PENDING', 'user_1', '2024-08-03', 'user1', '2024-08-03', NULL),
(209, 'PENDING', 'user_1', '2024-08-03', 'user1', '2024-08-03', NULL),
(210, 'PENDING', 'user_1', '2024-08-03', 'user1', '2024-08-03', NULL),
(211, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(212, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(213, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(214, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(215, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(216, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(217, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(218, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(219, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(220, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(221, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(222, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(223, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(224, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(225, 'PENDING', 'adminRequisition', '2024-08-03', 'user1', '2024-08-03', NULL),
(226, 'PENDING', '', '2024-08-05', 'user1', '2024-08-05', NULL),
(227, 'PENDING', '', '2024-08-05', 'user1', '2024-08-05', NULL),
(228, 'PENDING', '', '2024-08-05', 'user1', '2024-08-05', NULL),
(229, 'PENDING', 'adminRequisition', '2024-08-05', 'user1', '2024-08-05', NULL),
(230, 'PENDING', 'adminRequisition', '2024-08-05', 'user1', '2024-08-05', NULL),
(231, 'PENDING', 'adminRequisition', '2024-08-05', 'user1', '2024-08-05', NULL),
(232, 'PENDING', 'adminRequisition', '2024-08-05', 'user1', '2024-08-05', NULL),
(233, 'PENDING', 'adminRequisition', '2024-08-05', 'user1', '2024-08-05', NULL),
(234, 'PENDING', 'adminRequisition', '2024-08-05', 'user1', '2024-08-05', NULL),
(235, 'PENDING', 'adminRequisition', '2024-08-05', 'user1', '2024-08-05', NULL),
(236, 'PENDING', 'adminRequisition', '2024-08-06', 'user1', '2024-08-06', NULL),
(237, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(238, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(239, 'PENDING', '', '2024-08-06', 'user1', '2024-08-06', NULL),
(240, 'PENDING', 'adminRequisition', '2024-08-06', 'user1', '2024-08-06', NULL),
(241, 'PENDING', 'adminRequisition', '2024-08-06', 'user1', '2024-08-06', NULL),
(242, 'PENDING', 'adminRequisition', '2024-08-06', 'user1', '2024-08-06', NULL),
(243, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(244, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(245, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(246, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(247, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(248, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(249, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(250, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(251, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(252, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(253, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(254, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(255, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(256, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(257, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(258, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(259, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(260, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(261, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(262, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(263, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(264, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(265, 'PENDING', 'admin', '2024-08-06', 'user1', '2024-08-06', NULL),
(266, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', NULL),
(267, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', NULL),
(268, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', NULL),
(269, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(270, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(271, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(272, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(273, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(274, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(275, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', NULL),
(276, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(277, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(278, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(279, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'draft'),
(280, 'PENDING', 'adminRequisition', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(281, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(282, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', NULL),
(283, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(284, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(285, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', NULL),
(286, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(287, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(288, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(289, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', 'inProcess'),
(290, 'PENDING', 'rg1', '2024-08-07', 'user1', '2024-08-07', NULL),
(291, 'PENDING', 'admin', '2024-08-12', 'user1', '2024-08-12', NULL),
(292, 'PENDING', 'admin', '2024-08-18', 'user1', '2024-08-18', NULL),
(293, 'PENDING', 'admin', '2024-08-19', 'user1', '2024-08-19', 'inProcess'),
(294, 'PENDING', 'rg1', '2024-08-19', 'user1', '2024-08-19', 'inProcess'),
(295, 'PENDING', 'rg1', '2024-08-19', 'user1', '2024-08-19', NULL),
(296, 'PENDING', 'admin', '2024-08-20', 'user1', '2024-08-20', NULL),
(297, 'PENDING', 'admin', '2024-08-20', 'user1', '2024-08-20', NULL),
(298, 'PENDING', 'admin', '2024-08-20', 'user1', '2024-08-20', NULL),
(299, 'PENDING', 'rg1', '2024-08-21', 'user1', '2024-08-21', NULL),
(300, 'PENDING', 'admin', '2024-08-21', 'user1', '2024-08-21', NULL),
(301, 'PENDING', 'admin', '2024-08-21', 'user1', '2024-08-21', NULL),
(302, 'PENDING', 'admin', '2024-08-22', 'user1', '2024-08-22', NULL),
(303, 'PENDING', 'admin', '2024-08-22', 'user1', '2024-08-22', NULL),
(304, 'PENDING', 'admin', '2024-08-22', 'user1', '2024-08-22', NULL),
(305, 'PENDING', 'admin', '2024-08-22', 'user1', '2024-08-22', NULL),
(306, 'PENDING', 'admin', '2024-08-22', 'user1', '2024-08-22', NULL),
(307, 'PENDING', 'admin', '2024-08-22', 'user1', '2024-08-22', 'inProcess'),
(308, 'PENDING', 'admin', '2024-08-22', 'user1', '2024-08-22', 'inProcess'),
(309, 'PENDING', 'admin', '2024-08-23', 'user1', '2024-08-23', NULL),
(310, 'PENDING', 'admin', '2024-08-23', 'user1', '2024-08-23', NULL),
(311, 'PENDING', 'admin', '2024-08-24', 'user1', '2024-08-24', NULL),
(312, 'PENDING', 'admin', '2024-08-24', 'user1', '2024-08-24', NULL),
(313, 'PENDING', 'admin', '2024-08-24', 'user1', '2024-08-24', NULL),
(314, 'PENDING', 'admin', '2024-08-24', 'user1', '2024-08-24', NULL),
(315, 'PENDING', 'admin', '2024-08-24', 'user1', '2024-08-24', NULL),
(316, 'PENDING', 'admin', '2024-08-24', 'user1', '2024-08-24', 'inProcess'),
(317, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(318, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(319, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(320, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'draft'),
(321, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'draft'),
(322, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(323, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(324, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(325, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(326, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'inProcess'),
(327, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', 'draft'),
(328, 'PENDING', 'admin', '2024-08-25', 'user1', '2024-08-25', NULL),
(329, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', NULL),
(330, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(331, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(332, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(333, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', NULL),
(334, 'PENDING', 'user_admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(335, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(336, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(337, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(338, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', 'inProcess'),
(339, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', NULL),
(340, 'PENDING', 'admin', '2024-08-26', 'user1', '2024-08-26', NULL),
(341, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', 'inProcess'),
(342, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', NULL),
(343, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', 'inProcess'),
(344, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', 'inProcess'),
(345, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', 'draft'),
(346, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', NULL),
(347, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', NULL),
(348, 'PENDING', 'admin', '2024-08-28', 'user1', '2024-08-28', NULL),
(349, 'PENDING', 'admin', '2024-08-29', 'user1', '2024-08-29', 'inProcess'),
(350, 'PENDING', 'rg1', '2024-08-29', 'user1', '2024-08-29', NULL),
(351, 'PENDING', 'admin', '2024-08-31', 'user1', '2024-08-31', NULL),
(352, 'PENDING', 'admin', '2024-09-01', 'user1', '2024-09-01', NULL),
(353, 'PENDING', 'admin', '2024-09-01', 'user1', '2024-09-01', NULL),
(354, 'PENDING', 'admin', '2024-09-01', 'user1', '2024-09-01', NULL),
(355, 'PENDING', 'admin', '2024-09-01', 'user1', '2024-09-01', NULL),
(356, 'PENDING', 'admin', '2024-09-01', 'user1', '2024-09-01', NULL),
(357, 'PENDING', 'admin', '2024-09-04', 'user1', '2024-09-04', NULL),
(358, 'PENDING', 'admin', '2024-09-04', 'user1', '2024-09-04', NULL),
(359, 'PENDING', 'admin', '2024-09-05', 'user1', '2024-09-05', NULL),
(360, 'PENDING', 'admin', '2024-09-05', 'user1', '2024-09-05', NULL),
(361, 'PENDING', 'admin', '2024-09-07', 'user1', '2024-09-07', NULL),
(362, 'PENDING', 'admin', '2024-09-07', 'user1', '2024-09-07', NULL),
(363, 'PENDING', 'rg1', '2024-09-10', 'user1', '2024-09-10', NULL),
(364, 'PENDING', 'admin', '2024-09-22', 'user1', '2024-09-22', NULL),
(365, 'PENDING', 'admin', '2024-09-25', 'user1', '2024-09-25', NULL),
(366, 'PENDING', 'admin', '2024-09-25', 'user1', '2024-09-25', NULL),
(367, 'PENDING', 'admin', '2024-09-29', 'user1', '2024-09-29', NULL),
(368, 'PENDING', 'admin', '2024-09-29', 'user1', '2024-09-29', NULL),
(369, 'PENDING', 'admin', '2024-09-29', 'user1', '2024-09-29', NULL),
(370, 'PENDING', 'admin', '2024-09-29', 'user1', '2024-09-29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saleorder_sub_line`
--

CREATE TABLE `saleorder_sub_line` (
  `id` int(11) NOT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `attribute` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `sales_oreder_report`
--

CREATE TABLE `sales_oreder_report` (
  `s_no` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `installation` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `tentative` varchar(100) NOT NULL,
  `perform` varchar(100) NOT NULL,
  `quotation` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_header`
--

CREATE TABLE `sale_order_header` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `user_address` varchar(45) DEFAULT NULL,
  `user_phone_number` bigint(20) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `installation_is_required` varchar(45) DEFAULT NULL,
  `installation_need_by_date` date DEFAULT NULL,
  `tntative_installation` varchar(45) DEFAULT NULL,
  `perform_invoice` varchar(45) DEFAULT NULL,
  `quotation_shared_date` date DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT 'inProcess',
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `sale_order_header`
--

INSERT INTO `sale_order_header` (`id`, `username`, `user_address`, `user_phone_number`, `user_email`, `installation_is_required`, `installation_need_by_date`, `tntative_installation`, `perform_invoice`, `quotation_shared_date`, `remarks`, `status`, `created_by`, `created_date`) VALUES
(1, '', '', 9, '', '', '2024-09-19', '', '', '2024-09-04', '', NULL, 'inProcess', NULL),
(2, 'hello user', '', 90090, '', 'yes', '2024-03-01', 'yes', '0999', '2025-04-02', 'SO order creation', NULL, 'inProcess', NULL),
(3, 'hello user', '', 90090, '', 'yes', '2024-03-01', 'yes', '0999', '2025-04-02', 'SO order creation', NULL, 'inProcess', NULL),
(4, 'hello user', '', 90090, '', 'yes', '2024-03-01', 'yes', '0999', '2025-04-02', 'SO order creation', NULL, 'inProcess', NULL),
(5, 'hello user', '', 90090, '', 'yes', '2024-03-01', 'yes', '0999', '2025-04-02', 'SO order creation', NULL, 'admin', '2024-09-14 17:03:12'),
(6, '', '', 0, '', '', '2024-10-03', '', '', '2024-09-26', '', NULL, 'admin', '2024-09-14 17:32:43'),
(7, 'ni', '', 98, '', '', '2024-09-19', 'yes', 'ko', '2026-11-17', '', NULL, 'admin', '2024-09-15 22:38:59'),
(8, 'ni', '', 98, '', '', '2024-09-19', 'yes', 'ko', '2026-11-17', '', NULL, 'admin', '2024-09-15 22:41:44'),
(9, '89', '', 898, '', '', '2026-03-02', 'yes', '987', '2025-02-02', 'lkj', NULL, 'admin', '2024-09-15 22:43:04'),
(10, '89', '', 898, '', '', '2026-03-02', 'yes', '987', '2025-02-02', 'lkj', NULL, 'admin', '2024-09-15 22:43:14'),
(11, 'njkjk', '', 9, '', 'yes', '2025-01-24', 'yes', 'jklfji', '2024-09-10', 'need by ', NULL, 'admin', '2024-09-25 14:12:36'),
(12, 'tem', '', 0, '', '', '2024-09-27', '', '', '2024-09-14', '', NULL, 'admin', '2024-09-25 14:33:56'),
(13, 'tem', '', 0, '', '', '2024-09-27', '', '', '2024-09-14', '', NULL, 'admin', '2024-09-25 14:34:33'),
(14, 'tem', '', 0, '', '', '2024-09-27', '', '', '2024-09-14', '', NULL, 'admin', '2024-09-25 14:35:07'),
(15, 'tem', '', 0, '', '', '2024-09-27', '', '', '2024-09-14', '', NULL, 'admin', '2024-09-25 14:35:37'),
(16, '', '', 0, '', '', '2024-09-19', '', '', '2024-09-15', '', NULL, 'admin', '2024-09-25 14:40:02'),
(17, '', '', 0, '', '', '2024-09-19', '', '', '2024-09-15', '', NULL, 'admin', '2024-09-25 14:43:04'),
(18, '', '', 0, '', '', '2024-09-12', '', '', '2026-05-01', '', NULL, 'admin', '2024-09-25 14:46:08'),
(19, 'jdklfajl', '', 9403090, '', 'fjekj', '2025-02-02', 'yes', '9048ujd3d', '2025-02-03', 'thi item need directly', NULL, 'admin', '2024-09-25 14:52:09'),
(20, 'jdklfajl', '', 9403090, '', 'fjekj', '2025-02-02', 'yes', '9048ujd3d', '2025-02-03', 'thi item need directly', NULL, 'admin', '2024-09-25 14:52:32'),
(21, 'manish', '', 89080, '', 'yes its need installaion', '2025-01-02', 'jdihfe', '899', '2025-05-02', 'This item is creatd and created directly', NULL, 'admin', '2024-09-25 14:53:48'),
(22, 'manish', '', 89080, '', 'yes its need installaion', '2025-01-02', 'jdihfe', '899', '2025-05-02', 'This item is creatd and created directly', NULL, 'admin', '2024-09-25 14:54:11'),
(23, '', '', 0, '', '', '2024-09-18', '', '', '2024-09-11', '', NULL, 'admin', '2024-09-25 15:04:23'),
(24, '', '', 0, '', '', '2024-09-18', '', '', '2024-09-11', '', NULL, 'admin', '2024-09-25 15:04:40'),
(25, '', '', 0, '', '', '2024-09-18', '', '', '2024-09-11', '', NULL, 'admin', '2024-09-25 15:05:44'),
(26, '', '', 0, '', '', '2024-09-18', '', '', '2024-09-11', '', NULL, 'admin', '2024-09-25 15:05:46'),
(27, '', '', 0, '', '', '2024-09-18', '', '', '2024-09-11', '', NULL, 'admin', '2024-09-25 15:06:31'),
(28, '', '', 0, '', '', '2024-09-18', '', '', '2024-09-11', '', NULL, 'admin', '2024-09-25 15:07:48'),
(29, 'ioio', '', 0, '', 'yea', '2026-12-31', 'yr', 'nfijwenfi', '2027-12-02', 'iun', NULL, 'admin', '2024-09-28 11:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_items_lines`
--

CREATE TABLE `sale_order_items_lines` (
  `id` int(11) NOT NULL,
  `so_number` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `shipping_address` varchar(200) DEFAULT NULL,
  `item_image_path` varchar(45) DEFAULT NULL,
  `item_type` varchar(45) DEFAULT NULL,
  `finish_head_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `sale_order_items_lines`
--

INSERT INTO `sale_order_items_lines` (`id`, `so_number`, `item_code`, `item_name`, `qty`, `rate`, `total`, `shipping_address`, `item_image_path`, `item_type`, `finish_head_id`, `status`, `update_by`, `updated_date`, `created_by`, `created_date`) VALUES
(1, '1', 'itemco', 'hhjhj', 1, 1, 100, 'h', 'jhjhjh', 'hjhjhj', NULL, '', NULL, NULL, 'crey', 'jk'),
(2, '15', 'SELECT thias', 'chanler', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(3, '15', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(4, '15', 'null', 'ji', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(5, '15', 'null', 'ji', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(6, '16', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 10, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(7, '16', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', 25, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(8, '16', 'GL-6-2-2-1.-XY-CL-XY-54-56', 'SAMADHAN-6-2-2-1.45-XYZ', 25, 5476, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(9, '16', 'GL-6-2-2-1.-XY-CL-XY-54-56', 'SAMADHAN-6-2-2-1.45-XYZ', 44, 5476, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(10, '17', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(11, '17', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(12, '17', 'GL-6-2-2-1.-XY-CL-XY-54-56', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, 5476, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(13, '17', 'GL-6-2-2-1.-XY-CL-XY-54-56', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, 5476, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(14, '18', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(15, '18', 'SELECT thias', 'chanler', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(16, '18', 'null', 'ji', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(17, '18', 'ST-BA----HA-EA-HA-HA-10-0-OF', 'STAIONERY-BALL----HAUS-EACH-HAUS', NULL, 10, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(18, '18', 'GL-6-2-2-1.-XY-CL-XY-54-56', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, 5476, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(19, '18', 'GL-6-2-2-1.-XY-CL-XY-54-56', 'SAMADHAN-6-2-2-1.45-XYZ', NULL, 5476, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(20, '20', NULL, NULL, NULL, 0, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(21, '20', NULL, NULL, NULL, 0, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(22, '20', NULL, NULL, NULL, 0, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(23, '22', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(24, '22', 'SELECT thias', 'chanler', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(25, '22', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', 'EL-RG-RG-R-RG-JN-JH-HJ-HJ-HJ', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(26, '22', 'null', 'ji', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(27, '22', 'null', 'ji', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(28, '22', 'null', 'nj', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-02'),
(29, '23', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(30, '23', 'EL-GL-2-1-15-YE-XY-30-2-RA', 'Short_Description', NULL, 30, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(31, '24', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', 'img', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(32, '24', 'EL-GL-2-1-15-YE-XY-30-2-RA', 'Short_Description', NULL, 30, 0, 'shippingaddress', 'img', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(33, '25', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', '', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(34, '25', 'EL-GL-2-1-15-YE-XY-30-2-RA', 'Short_Description', NULL, 30, 0, 'shippingaddress', '', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(35, '26', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', '', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(36, '26', 'EL-GL-2-1-15-YE-XY-30-2-RA', 'Short_Description', NULL, 30, 0, 'shippingaddress', '', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(37, '27', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', 10, 100, 0, 'shippingaddress', '', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(38, '27', 'EL-GL-2-1-15-YE-XY-30-2-RA', 'Short_Description', 10, 30, 0, 'shippingaddress', '', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(39, '28', 'EL-2-1-OS-EA-WH-HO-30-3-RA', 'item name', NULL, 100, 0, 'shippingaddress', '', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(40, '28', 'EL-GL-2-1-15-YE-XY-30-2-RA', 'Short_Description', NULL, 30, 0, 'shippingaddress', '', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-03'),
(41, '29', 'EL-20-ST-ME-GR-ST-30-1.-RA', 'EL-20-ST-ME-GR-ST-30-1.-RA', NULL, 0, 0, 'shippingaddress', '', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-11'),
(42, '29', 'EL-20-ST-ME-GR-ST-30-1.-RA', 'EL-20-ST-ME-GR-ST-30-1.-RA', NULL, 0, 0, 'shippingaddress', '', 'finish_good', NULL, NULL, NULL, NULL, 'admin', '24-09-11'),
(43, '29', 'GL-2-6-T-BV-JF-YU-UY-YU-YU', 'URN-2-6-T-BVCJ-JFTY', NULL, 0, 0, 'shippingaddress', '1725540170_Screenshot 2024-08-21 170313.png', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-11'),
(44, '29', 'EL-20-ST-ME-GR-ST-30-1.-RA', 'WIRE-20 -STUR-METE-GREE-STUR', NULL, 300, 0, 'shippingaddress', '1724239724_Screenshot 2024-08-21 165522.png', 'row_item', NULL, NULL, NULL, NULL, 'admin', '24-09-11'),
(45, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_table`
--

CREATE TABLE `sale_order_table` (
  `project_number` int(11) NOT NULL,
  `User_name` varchar(45) DEFAULT NULL,
  `user_address` varchar(45) DEFAULT NULL,
  `user_phone_number` bigint(20) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `item_required` varchar(45) DEFAULT NULL,
  `item_shape` varchar(45) DEFAULT NULL,
  `item_size` varchar(45) DEFAULT NULL,
  `item_height` varchar(45) DEFAULT NULL,
  `item_finish` varchar(45) DEFAULT NULL,
  `installation_is_required` varchar(45) DEFAULT NULL,
  `installatio_need_by_date` date DEFAULT NULL,
  `query_recieved` varchar(45) DEFAULT NULL,
  `query_start_date` date DEFAULT NULL,
  `query_updated_date` date DEFAULT NULL,
  `query_created_by` varchar(45) DEFAULT NULL,
  `query_updated_by` varchar(45) DEFAULT NULL,
  `quotaion_shared_date` date DEFAULT NULL,
  `re_query` varchar(45) DEFAULT NULL,
  `re_query_closure_date` date DEFAULT NULL,
  `followup` varchar(45) DEFAULT NULL,
  `query_end_date` date DEFAULT NULL,
  `project_status` varchar(45) DEFAULT NULL,
  `tentative_installation` varchar(45) DEFAULT NULL,
  `installation_date` date DEFAULT NULL,
  `item_type` varchar(45) DEFAULT NULL,
  `shop_drawing_start_date` varchar(45) DEFAULT NULL,
  `shop_drawing_approved` varchar(45) DEFAULT NULL,
  `sample_approval_start_date` date DEFAULT NULL,
  `sample_approval_date` date DEFAULT NULL,
  `perfomance_invoice` varchar(45) DEFAULT NULL,
  `assemble_start_date` date DEFAULT NULL,
  `assemble_compition_date` date DEFAULT NULL,
  `dismantal_start_date` date DEFAULT NULL,
  `disamental_complition_date` date DEFAULT NULL,
  `packed_start_date` date DEFAULT NULL,
  `packed_completion_date` date DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `sale_order_table`
--

INSERT INTO `sale_order_table` (`project_number`, `User_name`, `user_address`, `user_phone_number`, `user_email`, `item_required`, `item_shape`, `item_size`, `item_height`, `item_finish`, `installation_is_required`, `installatio_need_by_date`, `query_recieved`, `query_start_date`, `query_updated_date`, `query_created_by`, `query_updated_by`, `quotaion_shared_date`, `re_query`, `re_query_closure_date`, `followup`, `query_end_date`, `project_status`, `tentative_installation`, `installation_date`, `item_type`, `shop_drawing_start_date`, `shop_drawing_approved`, `sample_approval_start_date`, `sample_approval_date`, `perfomance_invoice`, `assemble_start_date`, `assemble_compition_date`, `dismantal_start_date`, `disamental_complition_date`, `packed_start_date`, `packed_completion_date`, `remarks`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'manish', 'delhi', 4783, 'manish@gmil.com', '12', '12', '12', '120', 'yes', 'n', '2022-11-30', 'yes', '2026-03-29', '2024-08-01', 'SYSTEM', 'SYSTEM', '2024-01-02', 'last monday', '2024-02-03', 'followup', '2025-01-02', 'pending', 'yes', '2024-03-01', 'goods', '2024-01-01', 'pending', '2025-02-02', '2024-02-01', 'dmko', '2024-01-01', '2024-02-02', '2025-02-02', '2024-01-03', '2024-01-01', '2024-01-01', 'remarks', 'system', '2024-08-01', 'system', '2024-08-01'),
(2, 'manish', 'delhi', 4783, 'manish@gmil.com', '12', '12', '12', '120', 'yes', 'n', '2022-11-30', 'yes', '2026-03-29', '2024-08-01', 'SYSTEM', 'SYSTEM', '2024-01-02', 'last monday', '2024-02-03', 'followup', '2025-01-02', 'pending', 'yes', '2024-03-01', 'goods', '2024-01-01', 'pending', '2025-02-02', '2024-02-01', 'dmko', '2024-01-01', '2024-02-02', '2025-02-02', '2024-01-03', '2024-01-01', '2024-01-01', 'remarks', 'system', '2024-08-01', 'system', '2024-08-01'),
(3, 'john ', '221street california', 948349, 'john@gmail.com', 'wood', 'round', 'large', '10ft', 'glossy', 'yes', '2024-01-02', 'yes', '2024-01-01', '2024-08-01', 'SYSTEM', 'SYSTEM', '2025-03-03', 'received', '2025-03-02', 'followup', '2025-03-03', 'pending', 'yes', '2025-02-04', 'furniture', '2024-03-03', 'YES', '2026-03-03', '2026-03-03', 'invoice', '2025-03-03', '2025-02-04', '2025-01-01', '2024-01-01', '2024-02-01', '2025-01-06', 'remarks', 'system', '2024-08-01', 'system', '2024-08-01'),
(4, 'sagar', 'kailashpuri', 748378, 'sagar@gmail.com', 'wood', 'sharp', 'small', '20ft', 'glossy', 'yes', '2024-02-02', 'no', '2024-08-01', '2024-08-01', 'SYSTEM', 'SYSTEM', '2024-08-01', 'last monday', '2024-08-01', 'no follow up', '2026-03-02', 'Success', 'noi', '2025-03-02', 'utencil', '2025-03-02', 'yes', '2026-02-01', '2024-02-01', 'invoive001', '2024-08-01', '2024-08-01', '2024-08-01', '2024-08-01', '2024-08-01', '2024-08-01', 'work pending', 'system', '2024-08-01', 'system', '2024-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `stroes_issusr_cretion_form`
--

CREATE TABLE `stroes_issusr_cretion_form` (
  `record_number` int(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` varchar(100) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `requisition_type` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `user_remarks` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date_hand_hover` varchar(100) NOT NULL,
  `handover_over_by` varchar(100) NOT NULL,
  `req_status` varchar(100) NOT NULL,
  `final_remarks` varchar(100) NOT NULL,
  `po_status` varchar(100) NOT NULL,
  `po_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `subCatId` int(11) NOT NULL,
  `catId` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`subCatId`, `catId`, `name`) VALUES
(1, 1, 'Bulb'),
(2, 1, 'Holder'),
(3, 1, 'Wire'),
(4, 6, 'Urn'),
(5, 7, 'base'),
(6, 6, 'Pipe'),
(7, 6, 'Shade'),
(8, 6, 'Samadhan'),
(9, 6, 'Balls'),
(10, 8, 'Staionery'),
(11, 9, 'Shades'),
(12, 10, 'Acrylic_diffuser'),
(13, 11, 'Crystal'),
(14, 12, 'Bubble wrap'),
(15, 12, 'Shrink wrap'),
(16, 12, 'Corrugated boxes'),
(17, 12, 'Wooden crating'),
(18, 12, 'Tapes'),
(19, 1, 'test categoru'),
(20, 1, 'test categoru'),
(21, 1, 'new yegeuyebfjehfe4'),
(22, 1, 'new third'),
(23, 1, 'new'),
(24, 1, 'new cat is '),
(25, 6, 'glasstest'),
(26, 1, 'newtests'),
(28, 1, 'abcs'),
(29, 1, 'dfghj'),
(30, 12, 'Test pakaging'),
(31, 6, 'newndkjendjefef'),
(32, 1, 'keoif'),
(33, NULL, NULL),
(34, 19, 'newtest'),
(35, 7, 'deniof'),
(36, 7, 'deniof'),
(37, 1, 'deionf'),
(38, 9, ''),
(39, 1, ''),
(40, 1, ''),
(44, 6, 'Ele abc glas');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_details_header`
--

CREATE TABLE `supplier_details_header` (
  `vendor_id` int(11) NOT NULL,
  `vendor_code` int(11) DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `msme_status` varchar(45) DEFAULT NULL,
  `pan` varchar(45) DEFAULT NULL,
  `attribute` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `supplier_details_header`
--

INSERT INTO `supplier_details_header` (`vendor_id`, `vendor_code`, `supplier_name`, `msme_status`, `pan`, `attribute`) VALUES
(1, 100, 'ABC ', NULL, NULL, NULL),
(2, 101, 'AAA', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_site_detail_line`
--

CREATE TABLE `supplier_site_detail_line` (
  `vendor_line_id` int(11) NOT NULL,
  `vendor_id` varchar(45) DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `site_name` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `supplier_address` varchar(45) DEFAULT NULL,
  `supplier_category` varchar(45) DEFAULT NULL,
  `supplier_sub_category` varchar(45) DEFAULT NULL,
  `GSTIN number` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `supplier_site_detail_line`
--

INSERT INTO `supplier_site_detail_line` (`vendor_line_id`, `vendor_id`, `supplier_name`, `site_name`, `created_date`, `created_by`, `updated_date`, `updated_by`, `supplier_address`, `supplier_category`, `supplier_sub_category`, `GSTIN number`) VALUES
(1, '1', 'ABC', 'S1', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1', 'ABC', 'S2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1', 'ABC', 'S3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '1', 'ABC', 'S4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2', 'AAA', 'B1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2', 'AAA', 'B2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2', 'AAA', 'B3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timestamps`
--

CREATE TABLE `timestamps` (
  `id` varchar(45) DEFAULT NULL,
  `grn_po_line_id` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(45) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_book_tbl`
--

CREATE TABLE `transaction_book_tbl` (
  `transaction_nor` int(100) NOT NULL,
  `transaction_date` varchar(100) NOT NULL,
  `amount_type` varchar(100) NOT NULL,
  `credit_amount` varchar(100) NOT NULL,
  `debit_amount` varchar(100) NOT NULL,
  `particulers_given_to` varchar(100) NOT NULL,
  `site` varchar(100) NOT NULL,
  `main_head` varchar(100) NOT NULL,
  `sub_head` varchar(100) NOT NULL,
  `bill_cheque_no` varchar(100) NOT NULL,
  `invoice_date` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `gst_no` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `name` varchar(50) DEFAULT NULL,
  `fullName` varchar(50) DEFAULT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`name`, `fullName`, `phone_number`, `country`) VALUES
('manish', 'manish kdr', 24834989, 'IND');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phoneNumber` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_birth` date NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_account_number` varchar(50) NOT NULL,
  `bank_IFSC_code` varchar(50) NOT NULL,
  `bank_branch_name` varchar(50) NOT NULL,
  `Year` int(11) NOT NULL,
  `pan_card_required` varchar(10) DEFAULT NULL,
  `adhaar_number` bigint(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `membership` varchar(50) NOT NULL,
  `name_of_company` varchar(50) NOT NULL,
  `address_line_2` varchar(100) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `area` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `total_amount_due` int(11) DEFAULT NULL,
  `total_amount_received` int(11) DEFAULT NULL,
  `membership_renewed` varchar(10) DEFAULT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `fullname`, `user_email`, `user_phoneNumber`, `age`, `gender`, `address_line_1`, `username`, `password`, `date_birth`, `bank_name`, `bank_account_number`, `bank_IFSC_code`, `bank_branch_name`, `Year`, `pan_card_required`, `adhaar_number`, `category`, `membership`, `name_of_company`, `address_line_2`, `landmark`, `area`, `pincode`, `total_amount_due`, `total_amount_received`, `membership_renewed`, `user_type`) VALUES
(1, 'james', 'example@example.com', 7483748, 20, 'male', 'delhi', 'manish', 'jfeo', '2003-12-12', 'bank', 'branch_name', '32404398905', 'IDJIDND8D', 2024, 'no', 89898, 'genral', 'no', 'company_name', 'delhi-2', 'palam', 'palam', 110045, 2332, 323, 'no', 'sum_user'),
(2, 'John', 'john.doe@example.com', 1234567890, 30, 'Male', '123', 'johndoe', 'password123', '1993-07-21', 'Bank', '1234567890123456', 'EXAMPLE1234', 'Example', 2023, 'YES', 123456789012, 'General', 'Gold', 'Example', 'Suite', 'Near', 'Example', 123456, 1000, 500, 'no', 'RegularYes'),
(3, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'j', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(4, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'j', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(5, 'sagar', 'sagar@gmail.com', 97837384, 19, 'male', 'rz 26a kailash puri', 'sagar79', 'sagar@123', '2003-12-13', 'bank of india', '9843908', 'IJF9J09U0', 'Sagar pur', 2005, 'ODKODJ4', 7478350, 'GENRAL', 'PREMEIUM', 'Constech', 'kailash puri palam', 'near by railway station', 'soth west delhi', 110045, 3782, 47389, 'Yes', 'normal user'),
(6, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(7, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(8, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(9, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(10, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(11, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(12, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(13, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(14, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(15, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(16, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(17, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(18, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(19, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(20, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(21, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(22, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(23, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(24, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(25, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 2004, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(26, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(27, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(28, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(29, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', '', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(30, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', '', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(31, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', '', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(32, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(33, 'manish', 'dj@diw.com', 787878, 7, 'jkm', ' joi', 'sio', 'swq', '2003-12-12', 'ub', 'ubj', 'kjb', 'kub', 20043, 'k', 2323, 'jb', 'kjb', 'j', '$hi', 'hui', 'uib', 232, 3232, 3232, 'no', 'jkb'),
(34, 'james', 'james@gmailc.om', 434839480, 34, 'male', ' dwodl4', 'james79', 'ifenq39r', '2005-03-04', 'bankofameria', '443', '43ew', 'sagar put', 4344, '4ed3', 434390, 'genrel', 'gold', 'example comonay', '$dwmw3', 'delhi', 'palam', 110044, 3232, 324, 'no', 'normal user'),
(35, 'james', 'james@gmailc.om', 434839480, 34, 'male', ' dwodl4', 'james79', 'ifenq39r', '2005-03-04', 'bankofameria', '443', '43ew', 'sagar put', 4344, '4ed3', 434390, 'genrel', 'gold', 'example comonay', '$dwmw3', 'delhi', 'palam', 110044, 3232, 324, 'no', 'normal user'),
(36, ' kcoe', 'aman@gmail.com', 9876545678, 20, 'male', 'rz', 'aman79', 'aman@123', '2005-07-07', 'Bank', '8294082409', 'NXSKNIED89', 'Sagar', 2024, 'SJD90DWPKO', 875589742468, 'GENRAL', 'GOLD', 'Gold', 'palam', 'kailash', 'palam', 110046, 3434, 344, 'no', 'normal'),
(37, 'aman', 'aman@gmail.com', 9876545678, 20, 'male', ' rz kailash puri', 'aman79', 'aman@123', '2005-07-07', 'Bank of Asiya', '8294082409', 'NXSKNIED89', 'Sagar Pur', 2024, 'SJD90DWPKO', 875589742468, 'GENRAL', 'GOLD', 'Gold company', '$palam', 'kailash puri', 'palam', 110046, 3434, 344, 'no', 'normal user');

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

CREATE TABLE `user_management` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `updataed_by` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date DEFAULT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `person_id` int(11) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `customer` varchar(45) DEFAULT NULL,
  `supplier` varchar(45) DEFAULT NULL,
  `days` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`user_id`, `user_name`, `updataed_by`, `createdBy`, `created_date`, `updated_date`, `mobile_number`, `email_id`, `person_id`, `password`, `start_date`, `end_date`, `role`, `description`, `customer`, `supplier`, `days`) VALUES
(1, 'rg1', 'system', 'syetem', '2024-07-24', '2024-08-26', 7382783, 'example.com', 2, 'rg1@123', '2000-12-02', '2000-12-12', 'requisitionGen', NULL, NULL, NULL, NULL),
(2, 'rg2', 'admin', 'admin', '2024-07-04', '2024-08-06', 84934809, 'example@.com', 1, 'rg2@123', '2000-12-12', '2004-12-12', 'storeIssuer', NULL, NULL, NULL, NULL),
(3, 'rg3', 'system', 'system', '2024-07-24', '2024-08-26', 938493, 'admin@admin.com', 1, 'rg3@123', '2024-07-24', '2024-12-12', 'manager', NULL, NULL, NULL, NULL),
(4, 'admin_read', 'system', 'system', '2024-07-24', '2024-07-24', 938493, 'admin_read@admin.com', 1, 'admin@123', '2024-07-24', '2024-12-12', 'readOnly', NULL, NULL, NULL, NULL),
(5, 'admin_write', 'system', 'system', '2024-07-24', '2024-07-24', 938493, 'admin_write@admin.com', 1, 'admin@123', '2024-07-24', '2024-12-12', 'writeOnly', NULL, NULL, NULL, NULL),
(6, 'admin_modify', 'system', 'system', '2024-07-24', '2024-07-26', 938493, 'admin_modify@admin.com', 1, 'admin@1234', '2024-07-24', '2024-12-12', 'modify', NULL, NULL, NULL, NULL),
(7, 'user_admin', 'system', 'system', '2024-08-09', '2024-08-26', 798788, 'admin@example.com', 3, 'admin@123', '2024-08-09', '2024-08-09', 'admin', NULL, NULL, NULL, NULL),
(8, 'rg4', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 45784, 'admin1@admin.com', 12, 'rg4@123', '2024-12-31', '2024-12-12', 'requisitionGen', NULL, NULL, NULL, NULL),
(9, 'admin_9', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 78, '78', 1, 'admin@123', '2024-01-01', '2024-07-07', 'normal', NULL, NULL, NULL, NULL),
(10, 'admin10', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 788, 'exampk@dw.co', 12, 'admin@123', '2024-11-02', '2024-07-07', 'admn', NULL, NULL, NULL, NULL),
(11, 'admin11', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 898, 'admin@13', 56, '124', '2022-11-01', '2024-07-07', 'modify', NULL, NULL, NULL, NULL),
(12, 'admin_12', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 73289, 'admin1@admin.com', 32, 'admin@1234', '2024-01-01', '2024-07-07', 'admin', NULL, NULL, NULL, NULL),
(13, 'admin13', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 73289, 'admin1@admin.com', 12, 'admin@123', '2024-12-01', '2024-07-07', 'normal', NULL, NULL, NULL, NULL),
(14, 'user14', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 73289, '78', 2, 'admin@123', '2025-10-02', '2000-12-12', 'normal_user', NULL, NULL, NULL, NULL),
(15, 'usre15', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 45784, '78', 12, 'admin@123', '2026-01-02', '2024-12-12', 'normal_user', NULL, NULL, NULL, NULL),
(16, 'admin', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 898, 'admin@13', 32, 'admin@123', '2024-01-01', '2000-12-12', 'admin', NULL, NULL, NULL, NULL),
(17, 'admin17', ' sysgtem', 'system', '2024-07-07', '2024-07-29', 45784, '78', 12, 'ad', '2025-02-03', '2000-12-12', 'normal', NULL, NULL, NULL, NULL),
(18, 'admin18', ' sysgtem', 'system', '2024-07-29', '2024-07-29', 1234, 'example@gmail.com', 21, 'admin@12', '2024-02-01', '2024-01-01', 'normal', NULL, NULL, NULL, NULL),
(19, 'admin19', ' system', 'system', '2024-07-29', '2024-07-29', 1233, 'exampk@dw.co', 12, 'admin@1234', '2025-01-01', '2025-02-01', 'normal', NULL, NULL, NULL, NULL),
(20, 'adminRequisition', 'system', 'system', '2024-08-03', '2024-08-03', 74349, 'adminRequisition@gmail.com', 1, 'admin@123', '2025-08-03', '2025-08-03', 'admin', NULL, NULL, NULL, NULL),
(21, 'storeManager', 'system', 'system', '2024-08-03', '2024-08-03', 74349, 'storeManager@gmail.com', 23, 'admin@123', '2025-08-03', '2025-08-03', 'storemanager', NULL, NULL, NULL, NULL),
(22, 'L&S 2', ' System ', 'System ', '2024-08-26', '2024-08-26', 9876543210, 'gfedty@gmail.com', 1, 'L&S@123', '2024-08-26', '2024-08-26', 'Store Manager', NULL, NULL, NULL, NULL),
(24, 'LTESTUSER1', 'SYSTEM', 'SYSTEM', '2024-08-26', '2024-08-26', 9876543210, 'LTESTUSER1@LTESTUSER1.com', 1, 'LTESTUSER1@123', '2024-08-26', '2024-08-26', 'leadGenTest', NULL, NULL, NULL, NULL),
(25, 'hello', NULL, 'admin', '2024-09-14', NULL, 99, 'hello@123', 99, 'hello@123', '2024-09-04', '2024-09-05', NULL, '', '', '', ''),
(26, 'hello123', NULL, 'admin', '2024-09-14', NULL, 99, 'hello@123', 99, 'hello@123', '2024-09-04', '2024-09-05', NULL, '', '', '', ''),
(27, 'hello1232', NULL, 'admin', '2024-09-14', NULL, 99, 'hello@123', 99, 'hello@123', '2024-09-04', '2024-09-05', NULL, '', '', '', ''),
(28, 'hello1232ee', NULL, 'admin', '2024-09-14', NULL, 99, 'hello@123', 99, 'hello@123', '2024-09-04', '2024-09-05', NULL, '', '', '', ''),
(29, 'dd', NULL, 'admin', '2024-09-14', NULL, 99, 'hello@123', 99, 'hello@123', '2024-09-04', '2024-09-05', NULL, '', '', '', ''),
(30, 'FMSS.AD', 'admin', 'admin', '2024-09-14', NULL, 99, 'FMSS.AD@FMSS.AD.com', 99, 'FMSS.AD@123', '2024-09-04', '2024-09-05', 'txnFormAccess', NULL, NULL, NULL, NULL),
(31, 'FMSS.US', 'admin', 'admin', '2024-09-14', NULL, 99, 'FMSS.US@FMSS.AD.com', 99, 'FMSS.US@123', '2024-09-04', '2024-09-05', 'txnFormAccess', NULL, NULL, NULL, NULL),
(32, 'user_manager', 'admin', 'admin', '2024-09-14', NULL, 99, 'user_manager@1234', 99, 'user_manager@1234', '2024-09-04', '2024-09-05', 'storemanager', NULL, NULL, NULL, NULL),
(33, 'user_regular', 'admiin', 'admin', '2024-09-14', NULL, 99, 'user_manager@1234', 99, 'user_regular@123', '2024-09-04', '2024-09-05', 'normal_user', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_deatails`
--

CREATE TABLE `warehouse_deatails` (
  `id` int(11) NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `organaization_code` varchar(45) DEFAULT NULL,
  `organization_name` varchar(45) DEFAULT NULL,
  `start_date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `warehouse_deatails`
--

INSERT INTO `warehouse_deatails` (`id`, `location`, `organaization_code`, `organization_name`, `start_date`, `end_date`, `created_by`, `created_date`, `updated_date`, `updated_by`, `status`) VALUES
(1, '1', 'DEL', 'DELHI-WAREHOUSE-NAME', NULL, NULL, NULL, NULL, NULL, NULL, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_details_tbl`
--
ALTER TABLE `address_details_tbl`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `banking_details_tbl`
--
ALTER TABLE `banking_details_tbl`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `company_banking_details`
--
ALTER TABLE `company_banking_details`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `account_id_UNIQUE` (`account_id`);

--
-- Indexes for table `company_header_level_details`
--
ALTER TABLE `company_header_level_details`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `company_id_UNIQUE` (`company_id`);

--
-- Indexes for table `create_bom_header_level`
--
ALTER TABLE `create_bom_header_level`
  ADD PRIMARY KEY (`record_number`);

--
-- Indexes for table `create_bom_line_level`
--
ALTER TABLE `create_bom_line_level`
  ADD PRIMARY KEY (`record_number`);

--
-- Indexes for table `create_query_form`
--
ALTER TABLE `create_query_form`
  ADD PRIMARY KEY (`record_no`);

--
-- Indexes for table `customer_line_label_details`
--
ALTER TABLE `customer_line_label_details`
  ADD PRIMARY KEY (`sub_company_id`),
  ADD UNIQUE KEY `sub_company_id_UNIQUE` (`sub_company_id`);

--
-- Indexes for table `daily_txn_book`
--
ALTER TABLE `daily_txn_book`
  ADD PRIMARY KEY (`transaction_no`);

--
-- Indexes for table `drop_lookup_info_category_header`
--
ALTER TABLE `drop_lookup_info_category_header`
  ADD PRIMARY KEY (`header_id`);

--
-- Indexes for table `drop_lookup_info_category_line`
--
ALTER TABLE `drop_lookup_info_category_line`
  ADD PRIMARY KEY (`line_id`);

--
-- Indexes for table `electrical_catinfo`
--
ALTER TABLE `electrical_catinfo`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `employees_information`
--
ALTER TABLE `employees_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_head`
--
ALTER TABLE `employee_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_info_line`
--
ALTER TABLE `employee_info_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses_gl`
--
ALTER TABLE `expenses_gl`
  ADD PRIMARY KEY (`S_NO`);

--
-- Indexes for table `fields_lookup`
--
ALTER TABLE `fields_lookup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gate_entry_form`
--
ALTER TABLE `gate_entry_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grn_goods_receipt`
--
ALTER TABLE `grn_goods_receipt`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `grn_goods_receipt_header`
--
ALTER TABLE `grn_goods_receipt_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grn_line_items`
--
ALTER TABLE `grn_line_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `grn_sub_line_status`
--
ALTER TABLE `grn_sub_line_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemattribute`
--
ALTER TABLE `itemattribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemmaster`
--
ALTER TABLE `itemmaster`
  ADD PRIMARY KEY (`S_No`);

--
-- Indexes for table `itemmastercategory`
--
ALTER TABLE `itemmastercategory`
  ADD PRIMARY KEY (`categoryId`),
  ADD UNIQUE KEY `itemMasterCategorycol_UNIQUE` (`categoryId`);

--
-- Indexes for table `itemmasterheader`
--
ALTER TABLE `itemmasterheader`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `item_master_main`
--
ALTER TABLE `item_master_main`
  ADD PRIMARY KEY (`S_No`);

--
-- Indexes for table `item_master_temp`
--
ALTER TABLE `item_master_temp`
  ADD PRIMARY KEY (`S_No`);

--
-- Indexes for table `lead_details_header_form`
--
ALTER TABLE `lead_details_header_form`
  ADD PRIMARY KEY (`record_no`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `move_order_item_header`
--
ALTER TABLE `move_order_item_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `move_order_line`
--
ALTER TABLE `move_order_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `move_order_report_tbl`
--
ALTER TABLE `move_order_report_tbl`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `mtl_inventory_transactions`
--
ALTER TABLE `mtl_inventory_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtl_sub_inventory`
--
ALTER TABLE `mtl_sub_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_details_tbl`
--
ALTER TABLE `organization_details_tbl`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `project_status_table`
--
ALTER TABLE `project_status_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_header`
--
ALTER TABLE `purchase_order_header`
  ADD PRIMARY KEY (`PO_number`),
  ADD UNIQUE KEY `PO_number_UNIQUE` (`PO_number`);

--
-- Indexes for table `purchase_order_line`
--
ALTER TABLE `purchase_order_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requireattributeforcatname`
--
ALTER TABLE `requireattributeforcatname`
  ADD PRIMARY KEY (`attr_id`);

--
-- Indexes for table `require_atts`
--
ALTER TABLE `require_atts`
  ADD PRIMARY KEY (`attr_id`);

--
-- Indexes for table `requisition_request_form`
--
ALTER TABLE `requisition_request_form`
  ADD PRIMARY KEY (`record_number`);

--
-- Indexes for table `requisition_table`
--
ALTER TABLE `requisition_table`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `requisition_table_header`
--
ALTER TABLE `requisition_table_header`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `saleorder_sub_line`
--
ALTER TABLE `saleorder_sub_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_oreder_report`
--
ALTER TABLE `sales_oreder_report`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sale_order_header`
--
ALTER TABLE `sale_order_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_order_items_lines`
--
ALTER TABLE `sale_order_items_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_order_table`
--
ALTER TABLE `sale_order_table`
  ADD PRIMARY KEY (`project_number`),
  ADD UNIQUE KEY `project_number_UNIQUE` (`project_number`);

--
-- Indexes for table `stroes_issusr_cretion_form`
--
ALTER TABLE `stroes_issusr_cretion_form`
  ADD PRIMARY KEY (`record_number`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`subCatId`);

--
-- Indexes for table `supplier_details_header`
--
ALTER TABLE `supplier_details_header`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `supplier_site_detail_line`
--
ALTER TABLE `supplier_site_detail_line`
  ADD PRIMARY KEY (`vendor_line_id`);

--
-- Indexes for table `transaction_book_tbl`
--
ALTER TABLE `transaction_book_tbl`
  ADD PRIMARY KEY (`transaction_nor`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_management`
--
ALTER TABLE `user_management`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  ADD UNIQUE KEY `user_name_UNIQUE` (`user_name`);

--
-- Indexes for table `warehouse_deatails`
--
ALTER TABLE `warehouse_deatails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_details_tbl`
--
ALTER TABLE `address_details_tbl`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banking_details_tbl`
--
ALTER TABLE `banking_details_tbl`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_banking_details`
--
ALTER TABLE `company_banking_details`
  MODIFY `account_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `company_header_level_details`
--
ALTER TABLE `company_header_level_details`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `create_bom_header_level`
--
ALTER TABLE `create_bom_header_level`
  MODIFY `record_number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create_bom_line_level`
--
ALTER TABLE `create_bom_line_level`
  MODIFY `record_number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create_query_form`
--
ALTER TABLE `create_query_form`
  MODIFY `record_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_line_label_details`
--
ALTER TABLE `customer_line_label_details`
  MODIFY `sub_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `daily_txn_book`
--
ALTER TABLE `daily_txn_book`
  MODIFY `transaction_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `drop_lookup_info_category_header`
--
ALTER TABLE `drop_lookup_info_category_header`
  MODIFY `header_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drop_lookup_info_category_line`
--
ALTER TABLE `drop_lookup_info_category_line`
  MODIFY `line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `electrical_catinfo`
--
ALTER TABLE `electrical_catinfo`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `employees_information`
--
ALTER TABLE `employees_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_head`
--
ALTER TABLE `employee_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `employee_info_line`
--
ALTER TABLE `employee_info_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `expenses_gl`
--
ALTER TABLE `expenses_gl`
  MODIFY `S_NO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields_lookup`
--
ALTER TABLE `fields_lookup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `gate_entry_form`
--
ALTER TABLE `gate_entry_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `grn_goods_receipt`
--
ALTER TABLE `grn_goods_receipt`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `grn_goods_receipt_header`
--
ALTER TABLE `grn_goods_receipt_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `grn_line_items`
--
ALTER TABLE `grn_line_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `grn_sub_line_status`
--
ALTER TABLE `grn_sub_line_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `itemattribute`
--
ALTER TABLE `itemattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `itemmaster`
--
ALTER TABLE `itemmaster`
  MODIFY `S_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `itemmastercategory`
--
ALTER TABLE `itemmastercategory`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `itemmasterheader`
--
ALTER TABLE `itemmasterheader`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `item_master_main`
--
ALTER TABLE `item_master_main`
  MODIFY `S_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `item_master_temp`
--
ALTER TABLE `item_master_temp`
  MODIFY `S_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT for table `lead_details_header_form`
--
ALTER TABLE `lead_details_header_form`
  MODIFY `record_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `move_order_item_header`
--
ALTER TABLE `move_order_item_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `move_order_report_tbl`
--
ALTER TABLE `move_order_report_tbl`
  MODIFY `record_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mtl_inventory_transactions`
--
ALTER TABLE `mtl_inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mtl_sub_inventory`
--
ALTER TABLE `mtl_sub_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `organization_details_tbl`
--
ALTER TABLE `organization_details_tbl`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_status_table`
--
ALTER TABLE `project_status_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_header`
--
ALTER TABLE `purchase_order_header`
  MODIFY `PO_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `purchase_order_line`
--
ALTER TABLE `purchase_order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `requireattributeforcatname`
--
ALTER TABLE `requireattributeforcatname`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `require_atts`
--
ALTER TABLE `require_atts`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `requisition_request_form`
--
ALTER TABLE `requisition_request_form`
  MODIFY `record_number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requisition_table`
--
ALTER TABLE `requisition_table`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `requisition_table_header`
--
ALTER TABLE `requisition_table_header`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `saleorder_sub_line`
--
ALTER TABLE `saleorder_sub_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_oreder_report`
--
ALTER TABLE `sales_oreder_report`
  MODIFY `s_no` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_order_header`
--
ALTER TABLE `sale_order_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sale_order_items_lines`
--
ALTER TABLE `sale_order_items_lines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sale_order_table`
--
ALTER TABLE `sale_order_table`
  MODIFY `project_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stroes_issusr_cretion_form`
--
ALTER TABLE `stroes_issusr_cretion_form`
  MODIFY `record_number` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `subCatId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `supplier_details_header`
--
ALTER TABLE `supplier_details_header`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_site_detail_line`
--
ALTER TABLE `supplier_site_detail_line`
  MODIFY `vendor_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction_book_tbl`
--
ALTER TABLE `transaction_book_tbl`
  MODIFY `transaction_nor` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_management`
--
ALTER TABLE `user_management`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `warehouse_deatails`
--
ALTER TABLE `warehouse_deatails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
