-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2025 at 05:36 PM
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
-- Database: `hotel_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `action_description` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`log_id`, `user_id`, `role_id`, `action_description`, `timestamp`, `ip_address`) VALUES
(1, 10, 1, 'User logged in', '2025-06-26 20:15:15', NULL),
(2, 10, 1, 'Dashboard viewed', '2025-06-26 20:15:15', NULL),
(3, 10, 1, 'Dashboard viewed', '2025-06-26 20:22:36', NULL),
(4, 10, 1, 'Dashboard viewed', '2025-06-26 20:23:26', NULL),
(5, 10, 1, 'Dashboard viewed', '2025-06-26 20:24:06', NULL),
(6, 10, 1, 'Dashboard viewed', '2025-06-26 20:28:58', NULL),
(7, 10, 1, 'Viewed Room Availability', '2025-06-26 20:28:59', NULL),
(8, 10, 1, 'Dashboard viewed', '2025-06-26 20:30:14', NULL),
(9, 10, 1, 'Viewed Room Availability', '2025-06-26 20:30:15', NULL),
(10, 10, 1, 'Viewed Room Availability', '2025-06-26 20:31:31', NULL),
(11, 10, 1, 'Dashboard viewed', '2025-06-26 20:31:42', NULL),
(12, 10, 1, 'Viewed Room Availability', '2025-06-26 20:31:51', NULL),
(13, 10, 1, 'Viewed Room Availability', '2025-06-26 20:34:43', NULL),
(14, 10, 1, 'Viewed Room Availability', '2025-06-26 20:34:46', NULL),
(15, 10, 1, 'Viewed Room Availability', '2025-06-26 20:34:46', NULL),
(16, 10, 1, 'Viewed Room Availability', '2025-06-26 20:34:46', NULL),
(17, 10, 1, 'Viewed Room Availability', '2025-06-26 20:34:47', NULL),
(18, 10, 1, 'Dashboard viewed', '2025-06-26 20:34:49', NULL),
(19, 10, 1, 'Viewed Room Availability', '2025-06-26 20:35:05', NULL),
(20, 10, 1, 'Viewed Room Availability', '2025-06-26 20:35:09', NULL),
(21, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:51', NULL),
(22, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:55', NULL),
(23, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:55', NULL),
(24, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:55', NULL),
(25, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:55', NULL),
(26, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:55', NULL),
(27, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:55', NULL),
(28, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:56', NULL),
(29, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:56', NULL),
(30, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:56', NULL),
(31, 10, 1, 'Viewed Room Availability', '2025-06-26 20:38:56', NULL),
(32, 10, 1, 'Dashboard viewed', '2025-06-26 20:38:57', NULL),
(33, 10, 1, 'Booked Room ID: 3 from 2025-06-27 to 2025-06-30', '2025-06-26 20:39:42', NULL),
(34, 10, 1, 'Dashboard viewed', '2025-06-26 20:40:13', NULL),
(35, 10, 1, 'Dashboard viewed', '2025-06-26 20:40:52', NULL),
(36, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:23', NULL),
(37, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:23', NULL),
(38, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:23', NULL),
(39, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:24', NULL),
(40, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:24', NULL),
(41, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:24', NULL),
(42, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:24', NULL),
(43, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:24', NULL),
(44, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:25', NULL),
(45, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:25', NULL),
(46, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:26', NULL),
(47, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:26', NULL),
(48, 10, 1, 'Dashboard viewed', '2025-06-26 20:44:26', NULL),
(49, 10, 1, 'Viewed Booked Rooms', '2025-06-26 20:44:31', NULL),
(50, 10, 1, 'Viewed Booked Rooms', '2025-06-26 20:50:29', NULL),
(51, 10, 1, 'Viewed Booked Rooms', '2025-06-26 20:50:30', NULL),
(52, 10, 1, 'Viewed Booked Rooms', '2025-06-26 20:50:30', NULL),
(53, 10, 1, 'Viewed Booked Rooms', '2025-06-26 20:50:30', NULL),
(54, 10, 1, 'Viewed Booked Rooms', '2025-06-26 20:50:34', NULL),
(55, 10, 1, 'Viewed Room Availability', '2025-06-26 20:50:36', NULL),
(56, 10, 1, 'Dashboard viewed', '2025-06-26 20:50:36', NULL),
(57, 10, 1, 'Dashboard viewed', '2025-06-26 20:50:42', NULL),
(58, 10, 1, 'User logged out', '2025-06-26 20:50:47', NULL),
(59, 10, 1, 'User logged in', '2025-06-26 20:51:29', NULL),
(60, 10, 1, 'Dashboard viewed', '2025-06-26 20:51:29', NULL),
(61, 10, 1, 'Viewed Check In Guest page', '2025-06-26 20:51:35', NULL),
(62, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 20:51:39', NULL),
(63, 10, 1, 'Viewed Booked Rooms', '2025-06-26 20:51:53', NULL),
(64, 10, 1, 'Dashboard viewed', '2025-06-26 20:51:58', NULL),
(65, 10, 1, 'Viewed Billing History page', '2025-06-26 20:52:00', NULL),
(66, 10, 1, 'User logged out', '2025-06-26 20:52:12', NULL),
(67, 10, 1, 'User logged in', '2025-06-26 20:53:35', NULL),
(68, 10, 1, 'Dashboard viewed', '2025-06-26 20:53:35', NULL),
(69, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 20:53:39', NULL),
(70, 10, 1, 'Dashboard viewed', '2025-06-26 20:53:48', NULL),
(71, 10, 1, 'Dashboard viewed', '2025-06-26 20:54:21', NULL),
(72, 10, 1, 'Dashboard viewed', '2025-06-26 21:11:25', NULL),
(73, 10, 1, 'Dashboard viewed', '2025-06-26 21:11:26', NULL),
(74, 10, 1, 'Dashboard viewed', '2025-06-26 21:11:26', NULL),
(75, 10, 1, 'Viewed Activity Log page', '2025-06-26 21:11:30', NULL),
(76, 10, 1, 'Dashboard viewed', '2025-06-26 21:11:33', NULL),
(77, 10, 1, 'Dashboard viewed', '2025-06-26 21:14:29', NULL),
(78, 10, 1, 'Dashboard viewed', '2025-06-26 21:15:21', NULL),
(79, 10, 1, 'Dashboard viewed', '2025-06-26 21:17:31', NULL),
(80, 10, 1, 'Dashboard viewed', '2025-06-26 21:18:03', NULL),
(81, 10, 1, 'Dashboard viewed', '2025-06-26 21:18:09', NULL),
(82, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:18:25', NULL),
(83, 10, 1, 'Viewed Manage Bookings page', '2025-06-26 21:18:26', NULL),
(84, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:18:27', NULL),
(85, 10, 1, 'Viewed Billing History page', '2025-06-26 21:18:28', NULL),
(86, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:18:29', NULL),
(87, 10, 1, 'Updated price for Room ID: 1 to 500', '2025-06-26 21:19:06', NULL),
(88, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:19:06', NULL),
(89, 10, 1, 'Updated price for Room ID: 2 to 80.00', '2025-06-26 21:19:08', NULL),
(90, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:19:08', NULL),
(91, 10, 1, 'Updated price for Room ID: 2 to 1500', '2025-06-26 21:19:18', NULL),
(92, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:19:18', NULL),
(93, 10, 1, 'Updated price for Room ID: 3 to 5000', '2025-06-26 21:19:28', NULL),
(94, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:19:28', NULL),
(95, 10, 1, 'Updated price for Room ID: 4 to 500', '2025-06-26 21:19:34', NULL),
(96, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:19:34', NULL),
(97, 10, 1, 'Viewed Billing History page', '2025-06-26 21:19:39', NULL),
(98, 10, 1, 'Dashboard viewed', '2025-06-26 21:19:48', NULL),
(99, 10, 1, 'Dashboard viewed', '2025-06-26 21:30:42', NULL),
(100, 10, 1, 'Dashboard viewed', '2025-06-26 21:30:47', NULL),
(101, 10, 1, 'Viewed Billing History page', '2025-06-26 21:32:15', NULL),
(102, 10, 1, 'Dashboard viewed', '2025-06-26 21:33:08', NULL),
(103, 10, 1, 'Viewed Billing History page', '2025-06-26 21:33:21', NULL),
(104, 10, 1, 'Dashboard viewed', '2025-06-26 21:33:24', NULL),
(105, 10, 1, 'Viewed Room Availability', '2025-06-26 21:33:31', NULL),
(106, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:33:36', NULL),
(107, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:33:38', NULL),
(108, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:33:39', NULL),
(109, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:33:40', NULL),
(110, 10, 1, 'Viewed Manage Bookings page', '2025-06-26 21:33:41', NULL),
(111, 10, 1, 'Viewed Room Availability', '2025-06-26 21:33:42', NULL),
(112, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:33:43', NULL),
(113, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:33:44', NULL),
(114, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:33:44', NULL),
(115, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:33:56', NULL),
(116, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:33:56', NULL),
(117, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:33:57', NULL),
(118, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:33:57', NULL),
(119, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:33:58', NULL),
(120, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:33:58', NULL),
(121, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:33:59', NULL),
(122, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:33:59', NULL),
(123, 10, 1, 'Viewed Manage Bookings page', '2025-06-26 21:34:00', NULL),
(124, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:34:00', NULL),
(125, 10, 1, 'Viewed Billing History page', '2025-06-26 21:34:01', NULL),
(126, 10, 1, 'Viewed Billing History page', '2025-06-26 21:34:02', NULL),
(127, 10, 1, 'Viewed Activity Log page', '2025-06-26 21:34:02', NULL),
(128, 10, 1, 'Viewed Room Availability', '2025-06-26 21:34:11', NULL),
(129, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:34:12', NULL),
(130, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:34:12', NULL),
(131, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:34:13', NULL),
(132, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:34:13', NULL),
(133, 10, 1, 'Viewed Manage Bookings page', '2025-06-26 21:34:14', NULL),
(134, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:34:14', NULL),
(135, 10, 1, 'Viewed Billing History page', '2025-06-26 21:34:15', NULL),
(136, 10, 1, 'Viewed Billing History page', '2025-06-26 21:34:16', NULL),
(137, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:34:16', NULL),
(138, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:34:18', NULL),
(139, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:34:19', NULL),
(140, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:34:19', NULL),
(141, 10, 1, 'Dashboard viewed', '2025-06-26 21:34:23', NULL),
(142, 10, 1, 'Dashboard viewed', '2025-06-26 21:34:24', NULL),
(143, 10, 1, 'Dashboard viewed', '2025-06-26 21:36:13', NULL),
(144, 10, 1, 'Dashboard viewed', '2025-06-26 21:36:14', NULL),
(145, 10, 1, 'Dashboard viewed', '2025-06-26 21:36:18', NULL),
(146, 10, 1, 'Dashboard viewed', '2025-06-26 21:36:18', NULL),
(147, 10, 1, 'Dashboard viewed', '2025-06-26 21:36:21', NULL),
(148, 10, 1, 'Dashboard viewed', '2025-06-26 21:36:22', NULL),
(149, 10, 1, 'Viewed Room Availability', '2025-06-26 21:39:55', NULL),
(150, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:39:56', NULL),
(151, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:39:57', NULL),
(152, 10, 1, 'Viewed Check Out Guest page', '2025-06-26 21:39:58', NULL),
(153, 10, 1, 'Viewed Manage Bookings page', '2025-06-26 21:39:58', NULL),
(154, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:39:59', NULL),
(155, 10, 1, 'Viewed Room Availability', '2025-06-26 21:39:59', NULL),
(156, 10, 1, 'Dashboard viewed', '2025-06-26 21:40:02', NULL),
(157, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:40:10', NULL),
(158, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:40:12', NULL),
(159, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:40:28', NULL),
(160, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:40:29', NULL),
(161, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:42:35', NULL),
(162, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:42:36', NULL),
(163, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:42:37', NULL),
(164, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:42:38', NULL),
(165, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:33', NULL),
(166, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:34', NULL),
(167, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:35', NULL),
(168, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:36', NULL),
(169, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:37', NULL),
(170, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:37', NULL),
(171, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:42', NULL),
(172, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:43', NULL),
(173, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:43', NULL),
(174, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:43:51', NULL),
(175, 10, 1, 'Dashboard viewed', '2025-06-26 21:43:52', NULL),
(176, 10, 1, 'Dashboard viewed', '2025-06-26 21:43:54', NULL),
(177, 10, 1, 'Dashboard viewed', '2025-06-26 21:43:55', NULL),
(178, 10, 1, 'Dashboard viewed', '2025-06-26 21:43:55', NULL),
(179, 10, 1, 'Dashboard viewed', '2025-06-26 21:44:05', NULL),
(180, 10, 1, 'Dashboard viewed', '2025-06-26 21:44:06', NULL),
(181, 10, 1, 'Dashboard viewed', '2025-06-26 21:44:13', NULL),
(182, 10, 1, 'Viewed Room Availability', '2025-06-26 21:44:16', NULL),
(183, 10, 1, 'Viewed Cancel Booking page', '2025-06-26 21:44:18', NULL),
(184, 10, 1, 'Viewed Check In Guest page', '2025-06-26 21:44:18', NULL),
(185, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:44:19', NULL),
(186, 10, 1, 'Viewed Booked Rooms', '2025-06-26 21:44:20', NULL),
(187, 10, 1, 'Dashboard viewed', '2025-06-26 21:45:53', NULL),
(188, 10, 1, 'Dashboard viewed', '2025-06-26 21:45:54', NULL),
(189, 10, 1, 'Dashboard viewed', '2025-06-26 21:52:54', NULL),
(190, 10, 1, 'Dashboard viewed', '2025-06-26 21:52:56', NULL),
(191, 10, 1, 'Access System Settings page viewed', '2025-06-26 21:53:00', NULL),
(192, 10, 1, 'Manage Room Inventory page viewed', '2025-06-26 21:53:03', NULL),
(193, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 21:53:08', NULL),
(194, 10, 1, 'Dashboard viewed', '2025-06-26 21:53:15', NULL),
(195, 10, 1, 'Handle Complaints page viewed', '2025-06-26 21:53:19', NULL),
(196, 10, 1, 'Viewed Billing History page', '2025-06-26 21:53:21', NULL),
(197, 10, 1, 'Viewed Activity Log page', '2025-06-26 21:53:22', NULL),
(198, 10, 1, 'Dashboard viewed', '2025-06-26 21:53:24', NULL),
(199, 10, 1, 'Edit Customer Profile page viewed', '2025-06-26 21:53:27', NULL),
(200, 10, 1, 'Dashboard viewed', '2025-06-26 21:53:32', NULL),
(201, 10, 1, 'View Customer Profile page viewed', '2025-06-26 21:53:36', NULL),
(202, 10, 1, 'Dashboard viewed', '2025-06-26 21:55:34', NULL),
(203, 10, 1, 'Dashboard viewed', '2025-06-26 21:55:36', NULL),
(204, 10, 1, 'Dashboard viewed', '2025-06-26 21:55:37', NULL),
(205, 10, 1, 'Dashboard viewed', '2025-06-26 21:55:37', NULL),
(206, 10, 1, 'Viewed Activity Log page', '2025-06-26 21:58:00', NULL),
(207, 10, 1, 'Dashboard viewed', '2025-06-26 21:58:25', NULL),
(208, 10, 1, 'Dashboard viewed', '2025-06-26 22:12:02', NULL),
(209, 10, 1, 'Viewed Room Availability', '2025-06-26 22:12:38', NULL),
(210, 10, 1, 'Viewed Manage Room Prices page', '2025-06-26 22:12:50', NULL),
(211, 10, 1, 'Dashboard viewed', '2025-06-26 22:13:10', NULL),
(212, 10, 1, 'Dashboard viewed', '2025-06-26 22:13:27', NULL),
(213, 10, 1, 'Dashboard viewed', '2025-06-26 22:13:40', NULL),
(214, 10, 1, 'Dashboard viewed', '2025-06-26 22:13:45', NULL),
(215, 10, 1, 'Dashboard viewed', '2025-06-26 22:15:01', NULL),
(216, 10, 1, 'Dashboard viewed', '2025-06-26 22:21:06', NULL),
(217, 10, 1, 'Dashboard viewed', '2025-06-26 22:21:16', NULL),
(218, 10, 1, 'Dashboard viewed', '2025-06-26 22:21:42', NULL),
(219, 10, 1, 'Post Announcement page viewed', '2025-06-26 22:22:07', NULL),
(220, 10, 1, 'Viewed Billing History page', '2025-06-26 22:22:19', NULL),
(221, 10, 1, 'Viewed Manage Bookings page', '2025-06-26 22:22:23', NULL),
(222, 10, 1, 'Viewed Activity Log page', '2025-06-26 22:25:56', NULL),
(223, 10, 1, 'Viewed Activity Log page', '2025-06-26 22:32:41', NULL),
(224, 10, 1, 'Viewed Activity Log page', '2025-06-26 22:34:28', NULL),
(225, 10, 1, 'Dashboard viewed', '2025-06-26 22:35:19', NULL),
(226, 10, 1, 'User  logged out', '2025-06-26 22:35:51', NULL),
(227, 4, 7, 'User kim@gmail.com logged in', '2025-06-26 22:36:07', NULL),
(228, 4, 7, 'Dashboard viewed', '2025-06-26 22:36:07', NULL),
(229, 4, 7, 'Viewed Activity Log page', '2025-06-26 22:37:22', NULL),
(230, 4, 7, 'User kim@gmail.com logged out', '2025-06-26 22:37:38', NULL),
(231, 10, 1, 'User ad@gmail.com logged in', '2025-06-26 22:40:20', NULL),
(232, 10, 1, 'Dashboard viewed', '2025-06-26 22:40:20', NULL),
(233, 10, 1, 'Dashboard viewed', '2025-06-26 22:44:27', NULL),
(234, 10, 1, 'Dashboard viewed', '2025-06-26 22:44:28', NULL),
(235, 10, 1, 'Viewed Activity Log page', '2025-06-26 22:44:34', NULL),
(236, 10, 1, 'Dashboard viewed', '2025-06-26 22:47:10', NULL),
(237, 10, 1, 'Generate Reports page viewed', '2025-06-26 22:52:53', NULL),
(238, 10, 1, 'User ad@gmail.com logged out', '2025-06-26 22:53:07', NULL),
(239, 10, 1, 'User ad@gmail.com logged in', '2025-06-27 22:17:48', NULL),
(240, 10, 1, 'Dashboard viewed', '2025-06-27 22:17:48', NULL),
(241, 10, 1, 'Viewed Activity Log page', '2025-06-27 22:18:01', NULL),
(242, 10, 1, 'Viewed Activity Log page', '2025-06-27 22:19:59', NULL),
(243, 10, 1, 'Viewed Activity Log page', '2025-06-27 22:20:15', NULL),
(244, 10, 1, 'Viewed Activity Log page', '2025-06-27 22:23:24', NULL),
(245, 10, 1, 'Viewed Activity Log page', '2025-06-27 22:25:48', NULL),
(246, 10, 1, 'Dashboard viewed', '2025-06-27 22:31:36', NULL),
(247, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:31:49', NULL),
(248, 10, 1, 'User ad@gmail.com checked in Guest for Booking ID: 1 (Room ID: 3)', '2025-06-27 22:31:55', NULL),
(249, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:31:55', NULL),
(250, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:32:00', NULL),
(251, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:32:02', NULL),
(252, 10, 1, 'Viewed Check Out Guest page', '2025-06-27 22:32:02', NULL),
(253, 10, 1, 'Viewed Check Out Guest page', '2025-06-27 22:32:04', NULL),
(254, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:32:05', NULL),
(255, 10, 1, 'Dashboard viewed', '2025-06-27 22:32:05', NULL),
(256, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:32:11', NULL),
(257, 10, 1, 'Dashboard viewed', '2025-06-27 22:32:13', NULL),
(258, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:32:24', NULL),
(259, 10, 1, 'Viewed Check Out Guest page', '2025-06-27 22:32:25', NULL),
(260, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:32:25', NULL),
(261, 10, 1, 'Dashboard viewed', '2025-06-27 22:32:34', NULL),
(262, 10, 1, 'Post Announcement page viewed', '2025-06-27 22:34:34', NULL),
(263, 10, 1, 'Dashboard viewed', '2025-06-27 22:34:40', NULL),
(264, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:43:48', '::1'),
(265, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:43:50', '::1'),
(266, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:43:50', '::1'),
(267, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:43:51', '::1'),
(268, 10, 1, 'Viewed Check In Guest page', '2025-06-27 22:43:54', '::1'),
(269, 10, 1, 'Dashboard viewed', '2025-06-27 22:44:05', '::1'),
(270, 10, 1, 'Dashboard viewed', '2025-06-27 22:44:07', '::1'),
(271, 10, 1, 'Dashboard viewed', '2025-06-27 22:44:08', '::1'),
(272, 10, 1, 'Dashboard viewed', '2025-06-27 22:44:08', '::1'),
(273, 10, 1, 'Dashboard viewed', '2025-06-27 22:44:18', '::1'),
(274, 10, 1, 'User ad@gmail.com cancelled Booking ID: 1', '2025-06-27 22:53:25', '::1'),
(275, 10, 1, 'Dashboard viewed', '2025-06-27 22:53:27', '::1'),
(276, 10, 1, 'User ad@gmail.com logged out', '2025-06-27 22:53:46', '::1'),
(277, 4, 7, 'User kim@gmail.com logged in', '2025-06-27 22:53:59', '::1'),
(278, 4, 7, 'Dashboard viewed', '2025-06-27 22:54:00', '::1'),
(279, 4, 7, 'Viewed Check In Guest page', '2025-06-27 22:54:50', '::1'),
(280, 4, 7, 'Viewed Check In Guest page', '2025-06-27 22:55:06', '::1'),
(281, 4, 7, 'Viewed Check Out Guest page', '2025-06-27 22:55:08', '::1'),
(282, 4, 7, 'Viewed Check Out Guest page', '2025-06-27 22:56:17', '::1'),
(283, 4, 7, 'Viewed Manage Bookings page', '2025-06-27 22:56:20', '::1'),
(284, 4, 7, 'Viewed Check In Guest page', '2025-06-27 22:56:28', '::1'),
(285, 4, 7, 'User kim@gmail.com logged out', '2025-06-27 22:56:41', '::1'),
(286, 10, 1, 'User ad@gmail.com logged in', '2025-06-27 22:56:52', '::1'),
(287, 10, 1, 'Dashboard viewed', '2025-06-27 22:56:52', '::1'),
(288, 10, 1, 'Viewed Check In Guest page', '2025-06-27 23:06:31', '::1'),
(289, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:34', '::1'),
(290, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:35', '::1'),
(291, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:35', '::1'),
(292, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:35', '::1'),
(293, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:36', '::1'),
(294, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:36', '::1'),
(295, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:37', '::1'),
(296, 10, 1, 'Dashboard viewed', '2025-06-27 23:06:37', '::1'),
(297, 10, 1, 'User ad@gmail.com booked Room ID: 3 from 2025-03-07 to 2025-05-07', '2025-06-27 23:09:02', '::1'),
(298, 10, 1, 'Viewed Check In Guest page', '2025-06-27 23:09:19', '::1'),
(299, 10, 1, 'Viewed Check Out Guest page', '2025-06-27 23:09:26', '::1'),
(300, 10, 1, 'Viewed Check In Guest page', '2025-06-27 23:09:29', '::1'),
(301, 10, 1, 'User ad@gmail.com checked in Guest for Booking ID: 2 (Room ID: 3)', '2025-06-27 23:09:36', '::1'),
(302, 10, 1, 'Viewed Check In Guest page', '2025-06-27 23:09:36', '::1'),
(303, 10, 1, 'Viewed Check In Guest page', '2025-06-27 23:09:41', '::1'),
(304, 10, 1, 'Viewed Manage Bookings page', '2025-06-27 23:09:48', '::1'),
(305, 10, 1, 'Post Announcement page viewed', '2025-06-27 23:10:03', '::1'),
(306, 10, 1, 'User admin posted a new announcement: sdadas', '2025-06-27 23:18:41', '::1'),
(307, 10, 1, 'User ad@gmail.com logged out', '2025-06-27 23:20:38', '::1'),
(308, 10, 1, 'User ad@gmail.com logged in', '2025-06-27 23:20:49', '::1'),
(309, 10, 1, 'Dashboard viewed', '2025-06-27 23:20:49', '::1'),
(310, 10, 1, 'User admin updated user: royceton (roycee@gmail.com)', '2025-06-27 23:21:16', '::1'),
(311, 10, 1, 'User ad@gmail.com logged out', '2025-06-27 23:21:30', '::1'),
(312, 2, 11, 'User roycee@gmail.com logged in', '2025-06-27 23:21:38', '::1'),
(313, 2, 11, 'Dashboard viewed', '2025-06-27 23:21:38', '::1'),
(314, 2, 11, 'User roycee@gmail.com logged out', '2025-06-27 23:22:05', '::1'),
(315, 10, 1, 'User ad@gmail.com logged in', '2025-06-27 23:22:22', '::1'),
(316, 10, 1, 'Dashboard viewed', '2025-06-27 23:22:22', '::1'),
(317, 10, 1, 'Viewed Check In Guest page', '2025-06-27 23:28:14', '::1'),
(318, 10, 1, 'Viewed Check In Guest page', '2025-06-27 23:28:24', '::1'),
(319, 10, 1, 'Viewed Check Out Guest page', '2025-06-27 23:28:25', '::1'),
(320, 10, 1, 'Viewed Manage Bookings page', '2025-06-27 23:28:29', '::1'),
(321, 10, 1, 'User ad@gmail.com logged out', '2025-06-27 23:28:42', '::1'),
(322, 4, 7, 'User kim@gmail.com logged in', '2025-06-27 23:28:49', '::1'),
(323, 4, 7, 'Dashboard viewed', '2025-06-27 23:28:49', '::1'),
(324, 4, 7, 'User kim@gmail.com logged out', '2025-06-27 23:29:03', '::1'),
(325, 2, 11, 'User roycee@gmail.com logged in', '2025-06-27 23:29:09', '::1'),
(326, 2, 11, 'Dashboard viewed', '2025-06-27 23:29:09', '::1'),
(327, 2, 11, 'User roycee@gmail.com logged out', '2025-06-27 23:29:22', '::1'),
(328, 10, 1, 'User ad@gmail.com logged in', '2025-06-27 23:31:11', '::1'),
(329, 10, 1, 'Dashboard viewed', '2025-06-27 23:31:11', '::1'),
(330, 10, 1, 'User ad@gmail.com logged out', '2025-06-27 23:31:37', '::1'),
(331, 2, 11, 'User roycee@gmail.com logged in', '2025-06-27 23:31:42', '::1'),
(332, 2, 11, 'Dashboard viewed', '2025-06-27 23:31:42', '::1'),
(333, 2, 11, 'User roycee@gmail.com booked Room ID: 2 from 2025-06-29 to 2025-07-02', '2025-06-27 23:32:55', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `user_id`, `title`, `content`, `created_at`) VALUES
(1, 10, 'sdadas', 'adasdadadasd', '2025-06-27 15:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `num_guests` int(11) NOT NULL,
  `booking_date` datetime DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'Confirmed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `room_id`, `check_in_date`, `check_out_date`, `num_guests`, `booking_date`, `status`) VALUES
(2, 10, 3, '2025-03-07', '2025-05-07', 10, '2025-06-27 23:09:02', 'Confirmed'),
(3, 2, 2, '2025-06-29', '2025-07-02', 2, '2025-06-27 23:32:55', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `permission_name`) VALUES
(16, 'Approve discounts'),
(5, 'Assign room'),
(4, 'Cancel booking'),
(6, 'Check-in guest'),
(7, 'Check-out guest'),
(2, 'Create new booking'),
(12, 'Edit room details'),
(9, 'Generate bill/invoice'),
(18, 'Manage user accounts'),
(3, 'Modify booking'),
(10, 'Process payment'),
(13, 'Report maintenance issue'),
(20, 'Schedule events'),
(15, 'Schedule housekeeping'),
(1, 'View all bookings'),
(17, 'View audit logs'),
(11, 'View guest details'),
(14, 'View maintenance logs'),
(8, 'View room availability'),
(19, 'View sales reports');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Hotel Manager'),
(3, 'Front Desk Staff'),
(4, 'Housekeeping Staff'),
(5, 'Customer/Guest'),
(6, 'Accountant'),
(7, 'Maintenance Staff'),
(8, 'Event Coordinator'),
(9, 'Security Officer'),
(10, 'System Auditor'),
(11, 'HR Manager'),
(12, 'Marketing Manager'),
(13, 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_number` varchar(50) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'available',
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_number`, `room_type`, `status`, `price`) VALUES
(1, '101', 'Single', 'Available', 500.00),
(2, '102', 'Double', 'Available', 1500.00),
(3, '201', 'Suite', 'occupied', 5000.00),
(4, '202', 'Single', 'Available', 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `role_id`) VALUES
(1, 'aljuninato', 'inatoaljun@gmail.com', '$2y$10$X3pjoUM1S1O2vZDBiSkPEOyyTHB/YV/RyzfWdZwqc.BeNPAh3CJZ.', 1),
(2, 'royceton', 'roycee@gmail.com', '$2y$10$4jGvsXFoMJSbpduFnOnXlOoFX73J7vWHogGZRVW5v.VwnEnHr4wR.', 11),
(4, 'james', 'kim@gmail.com', '$2y$10$4dWi8dmpNWZduKwP0v.DUuPZlI5BwoNOm1Sd.7oCq96ilHG25gDMu', 7),
(10, 'admin', 'ad@gmail.com', '$2y$10$9og7A6sIMuW5jVk62uXItuP58Wgz.LLA3pJ0JnpMXSnccx0Ztn40K', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `permission_name` (`permission_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `room_number` (`room_number`),
  ADD UNIQUE KEY `room_number_unique` (`room_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
