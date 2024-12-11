-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 08:57 AM
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
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `local_address` varchar(255) NOT NULL,
  `residential_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `pin_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `local_address`, `residential_address`, `created_at`, `updated_at`, `state`, `city`, `pin_code`) VALUES
(1, 2, 'gfshgd shdgjhgf sjdj', 'ghdf vgh jhjsd', '2024-11-24 03:44:08', '2024-11-24 03:44:08', 26, 210, 234345),
(2, 3, 'dg fjdhfj euryhuei', 'cghvjfd euryioe ljkbf', '2024-11-24 03:48:54', '2024-11-24 03:48:54', 9, 77, 345454),
(3, 4, 'hghd weuyuw hhjgb', 'bvchjsd ewtyur powehkj', '2024-11-24 03:52:00', '2024-11-24 03:52:00', 15, 127, 454657),
(4, 5, 'hdgf jhej', 'bvdv eyu iwhej', '2024-11-24 03:54:49', '2024-11-24 03:54:49', 16, 132, 345455);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `cities` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `cities`, `created_at`, `updated_at`) VALUES
(1, 1, 'Visakhapatnam', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(2, 1, 'Vijayawada', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(3, 1, 'Guntur', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(4, 1, 'Nellore', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(5, 1, 'Kurnool', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(6, 1, 'Kakinada', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(7, 1, 'Rajahmundry', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(8, 1, 'Tirupati', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(9, 1, 'Kadapa', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(10, 1, 'Anantapur', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(11, 2, 'Itanagar', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(12, 2, 'Naharlagun', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(13, 2, 'Pasighat', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(14, 2, 'Roing', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(15, 2, 'Tezu', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(16, 2, 'Namsai', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(17, 2, 'Ziro', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(18, 2, 'Bomdila', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(19, 3, 'Guwahati', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(20, 3, 'Dibrugarh', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(21, 3, 'Jorhat', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(22, 3, 'Silchar', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(23, 3, 'Nagaon', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(24, 3, 'Tezpur', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(25, 3, 'Tinsukia', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(26, 3, 'Sivasagar', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(27, 3, 'Kokrajhar', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(28, 3, 'Bongaigaon', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(29, 4, 'Patna', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(30, 4, 'Gaya', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(31, 4, 'Bhagalpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(32, 4, 'Muzaffarpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(33, 4, 'Darbhanga', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(34, 4, 'Arrah', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(35, 4, 'Bihar Sharif', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(36, 4, 'Chapra', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(37, 4, 'Purnia', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(38, 4, 'Motihari', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(39, 5, 'Raipur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(40, 5, 'Bilaspur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(41, 5, 'Bhilai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(42, 5, 'Korba', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(43, 5, 'Durg', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(44, 5, 'Raigarh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(45, 5, 'Ambikapur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(46, 5, 'Rajnandgaon', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(47, 6, 'Panaji', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(48, 6, 'Vasco da Gama', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(49, 6, 'Margao', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(50, 6, 'Mapusa', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(51, 6, 'Ponda', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(52, 6, 'Mormugao', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(53, 6, 'Curchorem', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(54, 6, 'Sanquelim', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(55, 7, 'Ahmedabad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(56, 7, 'Surat', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(57, 7, 'Vadodara', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(58, 7, 'Rajkot', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(59, 7, 'Bhavnagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(60, 7, 'Jamnagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(61, 7, 'Junagadh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(62, 7, 'Anand', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(63, 7, 'Gandhinagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(64, 7, 'Bharuch', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(65, 8, 'Chandigarh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(66, 8, 'Faridabad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(67, 8, 'Gurgaon', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(68, 8, 'Hisar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(69, 8, 'Rohtak', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(70, 8, 'Panipat', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(71, 8, 'Ambala', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(72, 8, 'Yamunanagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(73, 9, 'Shimla', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(74, 9, 'Manali', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(75, 9, 'Dharamshala', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(76, 9, 'Solan', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(77, 9, 'Kullu', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(78, 9, 'Mandi', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(79, 9, 'Palampur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(80, 9, 'Nahan', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(81, 10, 'Ranchi', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(82, 10, 'Jamshedpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(83, 10, 'Dhanbad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(84, 10, 'Bokaro Steel City', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(85, 10, 'Deoghar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(86, 10, 'Hazaribagh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(87, 10, 'Giridih', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(88, 10, 'Ramgarh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(89, 11, 'Bangalore', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(90, 11, 'Mysuru', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(91, 11, 'Hubli', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(92, 11, 'Mangalore', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(93, 11, 'Belgaum', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(94, 11, 'Gulbarga', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(95, 11, 'Davanagere', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(96, 11, 'Bellary', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(97, 11, 'Bijapur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(98, 11, 'Shimoga', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(99, 12, 'Thiruvananthapuram', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(100, 12, 'Kochi', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(101, 12, 'Kozhikode', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(102, 12, 'Thrissur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(103, 12, 'Kollam', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(104, 12, 'Palakkad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(105, 12, 'Alappuzha', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(106, 12, 'Kannur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(107, 13, 'Bhopal', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(108, 13, 'Indore', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(109, 13, 'Jabalpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(110, 13, 'Gwalior', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(111, 13, 'Ujjain', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(112, 13, 'Sagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(113, 13, 'Dewas', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(114, 13, 'Satna', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(115, 14, 'Mumbai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(116, 14, 'Pune', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(117, 14, 'Nagpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(118, 14, 'Thane', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(119, 14, 'Nashik', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(120, 14, 'Kalyan-Dombivli', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(121, 14, 'Vasai-Virar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(122, 14, 'Aurangabad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(123, 14, 'Solapur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(124, 14, 'Navi Mumbai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(125, 15, 'Imphal', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(126, 15, 'Thoubal', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(127, 15, 'Kakching', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(128, 15, 'Churachandpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(129, 15, 'Bishnupur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(130, 15, 'Senapati', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(131, 15, 'Ukhrul', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(132, 16, 'Shillong', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(133, 16, 'Tura', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(134, 16, 'Jowai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(135, 16, 'Nongstoin', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(136, 16, 'Williamnagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(137, 16, 'Baghmara', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(138, 16, 'Resubelpara', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(139, 17, 'Aizawl', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(140, 17, 'Lunglei', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(141, 17, 'Saiha', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(142, 17, 'Champhai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(143, 17, 'Serchhip', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(144, 17, 'Kolasib', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(145, 17, 'Lawngtlai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(146, 18, 'Kohima', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(147, 18, 'Dimapur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(148, 18, 'Mokokchung', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(149, 18, 'Tuensang', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(150, 18, 'Wokha', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(151, 18, 'Zunheboto', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(152, 18, 'Mon', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(153, 18, 'Phek', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(154, 19, 'Bhubaneswar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(155, 19, 'Cuttack', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(156, 19, 'Rourkela', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(157, 19, 'Sambalpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(158, 19, 'Puri', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(159, 19, 'Brahmapur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(160, 19, 'Jharsuguda', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(161, 19, 'Bhadrak', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(162, 20, 'Chandigarh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(163, 20, 'Ludhiana', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(164, 20, 'Amritsar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(165, 20, 'Jalandhar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(166, 20, 'Patiala', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(167, 20, 'Bathinda', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(168, 20, 'Hoshiarpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(169, 20, 'Mohali', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(170, 21, 'Jaipur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(171, 21, 'Jodhpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(172, 21, 'Udaipur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(173, 21, 'Kota', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(174, 21, 'Ajmer', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(175, 21, 'Bikaner', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(176, 21, 'Alwar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(177, 21, 'Sikar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(178, 22, 'Gangtok', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(179, 22, 'Namchi', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(180, 22, 'Mangan', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(181, 22, 'Geyzing', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(182, 22, 'Singtam', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(183, 22, 'Jorethang', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(184, 22, 'Rangpo', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(185, 22, 'Ravangla', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(186, 23, 'Chennai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(187, 23, 'Coimbatore', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(188, 23, 'Madurai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(189, 23, 'Tiruchirappalli', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(190, 23, 'Salem', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(191, 23, 'Tirunelveli', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(192, 23, 'Vellore', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(193, 23, 'Tiruppur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(194, 24, 'Hyderabad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(195, 24, 'Warangal', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(196, 24, 'Nizamabad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(197, 24, 'Karimnagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(198, 24, 'Ramagundam', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(199, 24, 'Khammam', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(200, 24, 'Mahbubnagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(201, 24, 'Nalgonda', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(202, 25, 'Agartala', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(203, 25, 'Udaipur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(204, 25, 'Dharmanagar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(205, 25, 'Belonia', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(206, 25, 'Kailashahar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(207, 25, 'Ambassa', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(208, 25, 'Khowai', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(209, 25, 'Sonamura', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(210, 26, 'Lucknow', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(211, 26, 'Kanpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(212, 26, 'Agra', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(213, 26, 'Meerut', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(214, 26, 'Varanasi', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(215, 26, 'Allahabad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(216, 26, 'Ghaziabad', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(217, 26, 'Noida', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(218, 27, 'Dehradun', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(219, 27, 'Haridwar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(220, 27, 'Roorkee', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(221, 27, 'Haldwani', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(222, 27, 'Rudrapur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(223, 27, 'Kashipur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(224, 27, 'Rishikesh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(225, 28, 'Kolkata', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(226, 28, 'Howrah', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(227, 28, 'Durgapur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(228, 28, 'Asansol', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(229, 28, 'Siliguri', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(230, 28, 'Bardhaman', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(231, 28, 'Malda', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(232, 28, 'Kharagpur', '2024-11-24 03:41:28', '2024-11-24 03:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `developer_id` longtext NOT NULL,
  `assignable_id` bigint(20) UNSIGNED NOT NULL,
  `assignable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `project_id`, `developer_id`, `assignable_id`, `assignable_type`, `created_at`, `updated_at`) VALUES
(1, 1, '4,3,5', 1, 'App\\Models\\Project', '2024-11-24 03:56:27', '2024-11-24 03:56:27'),
(2, 2, '4,5', 2, 'App\\Models\\Project', '2024-11-24 03:56:58', '2024-11-24 03:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `historable_id` bigint(20) UNSIGNED NOT NULL,
  `historable_type` varchar(255) NOT NULL,
  `change_type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `historable_id`, `historable_type`, `change_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\Models\\User', 'CREATE', 'preeti user created successfully.', '2024-11-24 03:44:08', '2024-11-24 03:44:08'),
(2, 3, 'App\\Models\\User', 'CREATE', 'mannu user created successfully.', '2024-11-24 03:48:54', '2024-11-24 03:48:54'),
(3, 4, 'App\\Models\\User', 'CREATE', 'dfff user created successfully.', '2024-11-24 03:51:58', '2024-11-24 03:51:58'),
(4, 5, 'App\\Models\\User', 'CREATE', 'juni user created successfully.', '2024-11-24 03:54:49', '2024-11-24 03:54:49'),
(5, 1, 'App\\Models\\Project', 'CREATE', '1 Project created successfully.', '2024-11-24 03:56:26', '2024-11-24 03:56:26'),
(6, 2, 'App\\Models\\Project', 'CREATE', '2 Project created successfully.', '2024-11-24 03:56:58', '2024-11-24 03:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `text_caes` varchar(255) NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `requested_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `to_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'requested',
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_071936_add_user_role_to_users_table', 1),
(6, '2023_11_20_103157_create_projects_table', 1),
(7, '2023_11_23_050425_update_start_date_and_end_date_in_projects_table', 2),
(8, '2023_11_23_094301_add__contact_no_to_users_table', 2),
(9, '2023_11_24_072109_developers', 2),
(10, '2023_11_27_072856_create_tasks_table', 2),
(11, '2023_12_04_061451_create_salaries_table', 2),
(12, '2023_12_05_133220_add_label_to_tasks_table', 2),
(13, '2023_12_11_095135_create_images_table', 2),
(14, '2023_12_12_070421_add_started_at_to_tasks_table', 2),
(15, '2023_12_13_054327_add_profile_to_users_table', 2),
(16, '2023_12_13_074134_create_leaves_table', 2),
(17, '2023_12_14_112027_add_soft_delete_to_users_table', 2),
(18, '2023_12_18_061607_add_file_to_leaves_table', 2),
(19, '2023_12_19_125305_add_subject_to_leaves_table', 2),
(20, '2023_12_20_053721_change__leaves_requested_date_column_type', 2),
(21, '2023_12_26_084932_create_histories_table', 2),
(22, '2023_12_28_070150_create_addresses_table', 2),
(23, '2023_12_28_072538_add_gender_to_users_table', 3),
(24, '2023_12_28_093831_add_estimated_time_to_tasks_table', 4),
(25, '2024_01_03_090155_create_states_table', 4),
(26, '2024_01_03_090311_create_cities_table', 4),
(27, '2024_01_03_103511_add_state_to_addresses_table', 4),
(28, '2024_01_03_115322_add_title_to_images_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `project_manager` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `start_date`, `project_manager`, `created_at`, `updated_at`) VALUES
(1, 'basic crud', 'basic crud with full functinlity', '2024-11-24', 'mannu', '2024-11-24 03:56:26', '2024-11-24 03:56:26'),
(2, 'admin updation', 'admin section update', '2024-11-29', 'mannu', '2024-11-24 03:56:58', '2024-11-24 03:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `basic_salary` double(8,2) NOT NULL,
  `house_rent` double(8,2) NOT NULL,
  `leave_travel_allowance` double(8,2) NOT NULL,
  `medical_and_Conveyance` double(8,2) NOT NULL,
  `statutory_bonus` double(8,2) NOT NULL,
  `tax_deducted_at_source` double(8,2) NOT NULL,
  `provided_fund` double(8,2) NOT NULL,
  `gross_salary` double(8,2) NOT NULL,
  `net_salary` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `user_id`, `basic_salary`, `house_rent`, `leave_travel_allowance`, `medical_and_Conveyance`, `statutory_bonus`, `tax_deducted_at_source`, `provided_fund`, `gross_salary`, `net_salary`, `created_at`, `updated_at`) VALUES
(1, 2, 2300.00, 1500.00, 2345.00, 2345.00, 455.00, 22.00, 565.00, 9510.00, 7418.00, '2024-11-24 03:45:49', '2024-11-24 03:45:49'),
(2, 3, 45000.00, 2000.00, 2300.00, 3000.00, 4500.00, 23.00, 2343.00, 59143.00, 45541.00, '2024-11-24 03:49:32', '2024-11-24 03:49:32'),
(3, 4, 35000.00, 3000.00, 2500.00, 2400.00, 2300.00, 30.00, 2499.00, 47699.00, 33390.00, '2024-11-24 03:52:32', '2024-11-24 03:52:32'),
(4, 5, 30000.00, 1200.00, 2500.00, 3000.00, 2500.00, 21.00, 2999.00, 42199.00, 33338.00, '2024-11-24 03:55:39', '2024-11-24 03:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(2, 'Arunachal Pradesh', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(3, 'Assam', '2024-11-24 03:41:27', '2024-11-24 03:41:27'),
(4, 'Bihar', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(5, 'Chhattisgarh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(6, 'Goa', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(7, 'Gujarat', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(8, 'Haryana', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(9, 'Himachal Pradesh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(10, 'Jharkhand', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(11, 'Karnataka', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(12, 'Kerala', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(13, 'Madhya Pradesh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(14, 'Maharashtra', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(15, 'Manipur', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(16, 'Meghalaya', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(17, 'Mizoram', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(18, 'Nagaland', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(19, 'Odisha', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(20, 'Punjab', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(21, 'Rajasthan', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(22, 'Sikkim', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(23, 'Tamil Nadu', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(24, 'Telangana', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(25, 'Tripura', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(26, 'Uttar Pradesh', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(27, 'Uttarakhand', '2024-11-24 03:41:28', '2024-11-24 03:41:28'),
(28, 'West Bengal', '2024-11-24 03:41:28', '2024-11-24 03:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `project_id` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL,
  `development_hours` double NOT NULL DEFAULT 0,
  `started` datetime DEFAULT NULL,
  `debugging_hours` double(10,2) NOT NULL DEFAULT 0.00,
  `is_debugging` int(11) NOT NULL DEFAULT 0,
  `estimated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `alt_phone_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_role`, `remember_token`, `created_at`, `updated_at`, `contact_no`, `profile`, `deleted_at`, `gender`, `dob`, `alt_phone_no`) VALUES
(1, 'Preeti Singh', 'preeti@1122', NULL, '$2y$10$JxTucEHDiTWQJbVT2lhaf.7myhU7qSL6DvaSIZlFpfN9XKSXLoJ2y', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00', ''),
(2, 'preeti', 'ajgd@12gmail.com', NULL, '$2y$12$6Fv/MeHZXKNvkBBp7riagOacm6UyRfyYpTORYFiFZyRz94eiFfnRO', 'hr manager', NULL, '2024-11-24 03:44:08', '2024-11-24 03:44:08', '2334546546', 'profile/6742ee601ae7b_1732439648_Aadharr vid virtual Preeti.png2.png', NULL, 'female', '1993-07-08', '355656788'),
(3, 'mannu', 'manuu@123', NULL, '$2y$12$W/HkaXCjS6g9i2QN37JY1O4j/rms4HcQvV5beZt02wS6XT4jaf6Ne', 'project manager', NULL, '2024-11-24 03:48:54', '2024-11-24 03:48:54', '3454657567', NULL, NULL, 'female', '1996-07-11', '2343454567'),
(4, 'dfff', 'erf34@d.dsm', NULL, '$2y$12$8734MoPgZYNHH2Of./t.qOGHev8z5576QS/yk2pGIQgbM1jL3LxFO', 'senior developer', NULL, '2024-11-24 03:51:58', '2024-11-24 03:52:00', '2343534546', 'profile/6742f036bf11d_1732440118_Addarinfo for open .png4.png', NULL, 'female', '2002-08-09', '6456455345'),
(5, 'juni', 'juni23@hj.com', NULL, '$2y$12$gJMtwOuYsFoAgznT5LuHBuUZZgyX9HUWC8DTy/4pEFBAvUhvwSGyy', 'junior developer', NULL, '2024-11-24 03:54:49', '2024-11-24 03:54:49', '2334546768', NULL, NULL, 'male', '2011-02-26', '4565676789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_user_id_foreign` (`user_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
