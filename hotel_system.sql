-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2025 at 07:28 PM
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
(333, 2, 11, 'User roycee@gmail.com booked Room ID: 2 from 2025-06-29 to 2025-07-02', '2025-06-27 23:32:55', '::1'),
(334, 2, 11, 'Dashboard viewed', '2025-06-27 23:45:35', '::1'),
(335, 2, 11, 'Dashboard viewed', '2025-06-27 23:45:36', '::1'),
(336, 2, 11, 'Dashboard viewed', '2025-06-27 23:45:36', '::1'),
(337, 2, 11, 'Dashboard viewed', '2025-06-27 23:45:36', '::1'),
(338, 2, 11, 'Viewed Manage Promotions & Discounts Page', '2025-06-28 00:12:26', '::1'),
(339, 2, 11, 'Dashboard viewed', '2025-06-28 00:12:35', '::1'),
(340, 2, 11, 'Viewed Edit Customer Profile Page', '2025-06-28 00:14:48', '::1'),
(341, 2, 11, 'Dashboard viewed', '2025-06-28 00:15:47', '::1'),
(342, 2, 11, 'Dashboard viewed', '2025-06-28 00:17:42', '::1'),
(343, 2, 11, 'Viewed Edit Customer Profile Page', '2025-06-28 00:17:47', '::1'),
(344, 2, 11, 'Viewed Check In Guest page', '2025-06-28 00:18:11', '::1'),
(345, 2, 11, 'Viewed Check Out Guest page', '2025-06-28 00:18:13', '::1'),
(346, 2, 11, 'Viewed Check In Guest page', '2025-06-28 00:18:17', '::1'),
(347, 2, 11, 'Viewed Check Out Guest page', '2025-06-28 00:18:20', '::1'),
(348, 2, 11, 'Viewed Check In Guest page', '2025-06-28 00:18:38', '::1'),
(349, 2, 11, 'Viewed Check In Guest page', '2025-06-28 00:23:25', '::1'),
(350, 2, 11, 'Viewed Check Out Guest page', '2025-06-28 00:23:27', '::1'),
(351, 2, 11, 'Viewed Manage Room Inventory', '2025-06-28 00:23:30', '::1'),
(352, 2, 11, 'Viewed Manage Room Inventory', '2025-06-28 00:32:10', '::1'),
(353, 2, 11, 'Dashboard viewed', '2025-06-28 00:32:12', '::1'),
(354, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 21:17:26', '::1'),
(355, 10, 1, 'Dashboard viewed', '2025-07-02 21:17:26', '::1'),
(356, 10, 1, 'Viewed User Management Page', '2025-07-02 21:17:35', '::1'),
(357, 10, 1, 'Viewed Room Availability', '2025-07-02 21:18:11', '::1'),
(358, 10, 1, 'Viewed Booked Rooms', '2025-07-02 21:19:44', '::1'),
(359, 10, 1, 'Viewed Booked Rooms', '2025-07-02 21:20:22', '::1'),
(360, 10, 1, 'Viewed Check In Guest page', '2025-07-02 21:20:30', '::1'),
(361, 10, 1, 'Viewed Check Out Guest page', '2025-07-02 21:20:32', '::1'),
(362, 10, 1, 'Viewed Manage Bookings page', '2025-07-02 21:20:35', '::1'),
(363, 10, 1, 'Viewed Manage Room Inventory', '2025-07-02 21:20:45', '::1'),
(364, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 21:21:53', '::1'),
(365, 10, 1, 'Viewed Manage Room Inventory', '2025-07-02 21:25:40', '::1'),
(366, 10, 1, 'Viewed Edit Customer Profile Page', '2025-07-02 21:26:00', '::1'),
(367, 10, 1, 'Viewed Handle Complaints Page', '2025-07-02 21:27:20', '::1'),
(368, 10, 1, 'Viewed Manage Promotions & Discounts Page', '2025-07-02 21:27:27', '::1'),
(369, 10, 1, 'Dashboard viewed', '2025-07-02 21:27:36', '::1'),
(370, 10, 1, 'Viewed User Management Page', '2025-07-02 21:32:13', '::1'),
(371, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 21:32:27', '::1'),
(372, 2, 11, 'User roycee@gmail.com logged in', '2025-07-02 21:32:31', '::1'),
(373, 2, 11, 'Dashboard viewed', '2025-07-02 21:32:31', '::1'),
(374, 2, 11, 'Viewed User Management Page', '2025-07-02 21:32:34', '::1'),
(375, 2, 11, 'User roycee@gmail.com logged out', '2025-07-02 21:32:45', '::1'),
(376, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 21:32:50', '::1'),
(377, 10, 1, 'Dashboard viewed', '2025-07-02 21:32:50', '::1'),
(378, 10, 1, 'Viewed Booked Rooms', '2025-07-02 21:33:09', '::1'),
(379, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 21:35:03', '::1'),
(380, 10, 1, 'Viewed User Management Page', '2025-07-02 21:35:13', '::1'),
(381, 10, 1, 'Viewed User Management Page', '2025-07-02 21:36:08', '::1'),
(382, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 21:36:21', '::1'),
(383, 4, 7, 'User kim@gmail.com logged in', '2025-07-02 21:36:27', '::1'),
(384, 4, 7, 'Dashboard viewed', '2025-07-02 21:36:27', '::1'),
(385, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:36:31', '::1'),
(386, 4, 7, 'Viewed Handle Complaints Page', '2025-07-02 21:36:36', '::1'),
(387, 4, 7, 'Viewed Room Availability', '2025-07-02 21:36:42', '::1'),
(388, 4, 7, 'Dashboard viewed', '2025-07-02 21:36:50', '::1'),
(389, 4, 7, 'Viewed Room Availability', '2025-07-02 21:36:52', '::1'),
(390, 4, 7, 'User kim@gmail.com logged out', '2025-07-02 21:40:13', '::1'),
(391, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 21:40:19', '::1'),
(392, 10, 1, 'Dashboard viewed', '2025-07-02 21:40:19', '::1'),
(393, 10, 1, 'Viewed Check In Guest page', '2025-07-02 21:40:23', '::1'),
(394, 10, 1, 'Viewed Booked Rooms', '2025-07-02 21:40:27', '::1'),
(395, 10, 1, 'Viewed Room Availability', '2025-07-02 21:40:31', '::1'),
(396, 10, 1, 'Viewed Check In Guest page', '2025-07-02 21:40:34', '::1'),
(397, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 21:48:33', '::1'),
(398, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 21:48:46', '::1'),
(399, 4, 7, 'User kim@gmail.com logged in', '2025-07-02 21:48:51', '::1'),
(400, 4, 7, 'Dashboard viewed', '2025-07-02 21:48:51', '::1'),
(401, 4, 7, 'Viewed Room Availability', '2025-07-02 21:48:55', '::1'),
(402, 4, 7, 'Dashboard viewed', '2025-07-02 21:50:47', '::1'),
(403, 4, 7, 'Dashboard viewed', '2025-07-02 21:50:48', '::1'),
(404, 4, 7, 'Dashboard viewed', '2025-07-02 21:50:48', '::1'),
(405, 4, 7, 'Viewed Room Availability', '2025-07-02 21:50:49', '::1'),
(406, 4, 7, 'Dashboard viewed', '2025-07-02 21:50:51', '::1'),
(407, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:50:52', '::1'),
(408, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:51:03', '::1'),
(409, 4, 7, 'Dashboard viewed', '2025-07-02 21:52:21', '::1'),
(410, 4, 7, 'Dashboard viewed', '2025-07-02 21:52:21', '::1'),
(411, 4, 7, 'Dashboard viewed', '2025-07-02 21:52:21', '::1'),
(412, 4, 7, 'Dashboard viewed', '2025-07-02 21:52:21', '::1'),
(413, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:52:26', '::1'),
(414, 4, 7, 'Viewed Handle Complaints Page', '2025-07-02 21:52:30', '::1'),
(415, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:53:43', '::1'),
(416, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:53:44', '::1'),
(417, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:55:14', '::1'),
(418, 4, 7, 'Viewed Room Availability', '2025-07-02 21:55:15', '::1'),
(419, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:55:16', '::1'),
(420, 4, 7, 'Dashboard viewed', '2025-07-02 21:55:24', '::1'),
(421, 4, 7, 'Dashboard viewed', '2025-07-02 21:55:32', '::1'),
(422, 4, 7, 'Viewed Room Availability', '2025-07-02 21:55:34', '::1'),
(423, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 21:55:34', '::1'),
(424, 4, 7, 'Viewed Announcements Page', '2025-07-02 21:58:22', '::1'),
(425, 4, 7, 'Viewed Handle Complaints Page', '2025-07-02 21:58:23', '::1'),
(426, 4, 7, 'Viewed Announcements Page', '2025-07-02 21:58:24', '::1'),
(427, 4, 7, 'Viewed Handle Complaints Page', '2025-07-02 21:58:27', '::1'),
(428, 4, 7, 'Viewed Manage Room Inventory', '2025-07-02 22:05:37', '::1'),
(429, 4, 7, 'Dashboard viewed', '2025-07-02 22:06:47', '::1'),
(430, 4, 7, 'User kim@gmail.com logged out', '2025-07-02 22:06:51', '::1'),
(431, 2, 11, 'User roycee@gmail.com logged in', '2025-07-02 22:06:56', '::1'),
(432, 2, 11, 'Dashboard viewed', '2025-07-02 22:06:56', '::1'),
(433, 2, 11, 'Viewed User Management Page', '2025-07-02 22:07:56', '::1'),
(434, 2, 11, 'Dashboard viewed', '2025-07-02 22:13:19', '::1'),
(435, 2, 11, 'Dashboard viewed', '2025-07-02 22:13:20', '::1'),
(436, 2, 11, 'Dashboard viewed', '2025-07-02 22:13:20', '::1'),
(437, 2, 11, 'Dashboard viewed', '2025-07-02 22:13:20', '::1'),
(438, 2, 11, 'Dashboard viewed', '2025-07-02 22:13:20', '::1'),
(439, 2, 11, 'Viewed Manage Hotel Staff Page', '2025-07-02 22:13:21', '::1'),
(440, 2, 11, 'Viewed Post Announcement Page', '2025-07-02 22:13:22', '::1'),
(441, 2, 11, 'Viewed Announcements Page', '2025-07-02 22:13:23', '::1'),
(442, 2, 11, 'Viewed Activity Log Page', '2025-07-02 22:13:23', '::1'),
(443, 2, 11, 'Viewed User Management Page', '2025-07-02 22:13:28', '::1'),
(444, 2, 11, 'User royceton added new user: aljun (aljun@gmail.com)', '2025-07-02 22:14:00', '::1'),
(445, 2, 11, 'Viewed User Management Page', '2025-07-02 22:14:00', '::1'),
(446, 2, 11, 'User roycee@gmail.com logged out', '2025-07-02 22:14:12', '::1'),
(447, 12, 13, 'User aljun@gmail.com logged in', '2025-07-02 22:14:18', '::1'),
(448, 12, 13, 'Dashboard viewed', '2025-07-02 22:14:18', '::1'),
(449, 12, 13, 'User aljun@gmail.com logged out', '2025-07-02 22:14:54', '::1'),
(450, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 22:14:59', '::1'),
(451, 10, 1, 'Dashboard viewed', '2025-07-02 22:14:59', '::1'),
(452, 10, 1, 'Viewed User Management Page', '2025-07-02 22:15:01', '::1'),
(453, 10, 1, 'User admin updated user: aljun (aljun@gmail.com)', '2025-07-02 22:15:10', '::1'),
(454, 10, 1, 'Viewed User Management Page', '2025-07-02 22:15:10', '::1'),
(455, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 22:15:18', '::1'),
(456, 12, 3, 'User aljun@gmail.com logged in', '2025-07-02 22:15:25', '::1'),
(457, 12, 3, 'Dashboard viewed', '2025-07-02 22:15:25', '::1'),
(458, 12, 3, 'Dashboard viewed', '2025-07-02 22:19:57', '::1'),
(459, 12, 3, 'Dashboard viewed', '2025-07-02 22:19:57', '::1'),
(460, 12, 3, 'Dashboard viewed', '2025-07-02 22:19:57', '::1'),
(461, 12, 3, 'Dashboard viewed', '2025-07-02 22:19:57', '::1'),
(462, 12, 3, 'Viewed Book Room Page', '2025-07-02 22:19:58', '::1'),
(463, 12, 3, 'Viewed Booked Rooms', '2025-07-02 22:19:59', '::1'),
(464, 12, 3, 'Viewed Customer Profile Page for User ID: 12', '2025-07-02 22:21:49', '::1'),
(465, 12, 3, 'Viewed Announcements Page', '2025-07-02 22:22:02', '::1'),
(466, 12, 3, 'Viewed Edit Customer Profile Page', '2025-07-02 22:22:04', '::1'),
(467, 12, 3, 'Viewed Customer Profile Page for User ID: 12', '2025-07-02 22:22:17', '::1'),
(468, 12, 3, 'Viewed Edit Customer Profile Page', '2025-07-02 22:22:18', '::1'),
(469, 12, 3, 'Viewed Edit Customer Profile Page', '2025-07-02 22:22:33', '::1'),
(470, 12, 3, 'Viewed Edit Customer Profile Page for User ID: 12', '2025-07-02 22:23:22', '::1'),
(471, 12, 3, 'User aljun@gmail.com logged out', '2025-07-02 22:23:38', '::1'),
(472, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 22:23:47', '::1'),
(473, 10, 1, 'Dashboard viewed', '2025-07-02 22:23:47', '::1'),
(474, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 22:23:50', '::1'),
(475, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 22:24:45', '::1'),
(476, 10, 1, 'Viewed Manage Hotel Staff Page', '2025-07-02 22:24:53', '::1'),
(477, 10, 1, 'Viewed Customer Profile Page for User ID: 10', '2025-07-02 22:25:12', '::1'),
(478, 10, 1, 'Viewed Edit Customer Profile Page for User ID: 10', '2025-07-02 22:25:14', '::1'),
(479, 10, 1, 'Viewed Manage Promotions & Discounts Page', '2025-07-02 22:25:17', '::1'),
(480, 10, 1, 'Viewed Manage Hotel Staff Page', '2025-07-02 22:25:29', '::1'),
(481, 10, 1, 'Viewed Manage Promotions & Discounts Page', '2025-07-02 22:25:51', '::1'),
(482, 10, 1, 'Viewed Manage Promotions/Discounts Page', '2025-07-02 22:28:19', '::1'),
(483, 10, 1, 'Viewed Manage Promotions/Discounts Page', '2025-07-02 22:28:52', '::1'),
(484, 10, 1, 'Viewed Handle Complaints Page', '2025-07-02 22:28:59', '::1'),
(485, 10, 1, 'Viewed Handle Complaints Page', '2025-07-02 22:29:55', '::1'),
(486, 10, 1, 'Viewed Access System Settings Page', '2025-07-02 22:31:08', '::1'),
(487, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 22:31:18', '::1'),
(488, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 22:31:25', '::1'),
(489, 10, 1, 'Dashboard viewed', '2025-07-02 22:31:25', '::1'),
(490, 10, 1, 'Viewed User Management Page', '2025-07-02 22:31:36', '::1'),
(491, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 22:33:36', '::1'),
(492, 13, 5, 'New Customer/Guest registered: julian@gmail.com', '2025-07-02 22:38:42', '::1'),
(493, 13, 5, 'User julian@gmail.com logged in', '2025-07-02 22:38:50', '::1'),
(494, 13, 5, 'Dashboard viewed', '2025-07-02 22:38:50', '::1'),
(495, 13, 5, 'Viewed Room Availability', '2025-07-02 22:38:52', '::1'),
(496, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:38:55', '::1'),
(497, 13, 5, 'Viewed Announcements Page', '2025-07-02 22:38:58', '::1'),
(498, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:39:00', '::1'),
(499, 13, 5, 'Viewed Announcements Page', '2025-07-02 22:39:00', '::1'),
(500, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:39:04', '::1'),
(501, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:51:58', '::1'),
(502, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:51:59', '::1'),
(503, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:51:59', '::1'),
(504, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:51:59', '::1'),
(505, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:00', '::1'),
(506, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:20', '::1'),
(507, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:20', '::1'),
(508, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:21', '::1'),
(509, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:21', '::1'),
(510, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:21', '::1'),
(511, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:21', '::1'),
(512, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:21', '::1'),
(513, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:22', '::1'),
(514, 13, 5, 'Viewed Manage Room Inventory', '2025-07-02 22:52:22', '::1'),
(515, 13, 5, 'Dashboard viewed', '2025-07-02 22:52:40', '::1'),
(516, 13, 5, 'Dashboard viewed', '2025-07-02 22:52:42', '::1'),
(517, 13, 5, 'Dashboard viewed', '2025-07-02 22:52:42', '::1'),
(518, 13, 5, 'Dashboard viewed', '2025-07-02 22:59:11', '::1'),
(519, 13, 5, 'Dashboard viewed', '2025-07-02 22:59:12', '::1'),
(520, 13, 5, 'Dashboard viewed', '2025-07-02 22:59:12', '::1'),
(521, 13, 5, 'Dashboard viewed', '2025-07-02 22:59:12', '::1'),
(522, 13, 5, 'Dashboard viewed', '2025-07-02 22:59:12', '::1'),
(523, 13, 5, 'User julian@gmail.com logged out', '2025-07-02 22:59:18', '::1'),
(524, 13, 5, 'User julian@gmail.com logged in', '2025-07-02 22:59:29', '::1'),
(525, 13, 5, 'Dashboard viewed', '2025-07-02 22:59:29', '::1'),
(526, 13, 5, 'Dashboard viewed', '2025-07-02 23:10:24', '::1'),
(527, 13, 5, 'Dashboard viewed', '2025-07-02 23:10:25', '::1'),
(528, 13, 5, 'Dashboard viewed', '2025-07-02 23:10:25', '::1'),
(529, 13, 5, 'User julian@gmail.com logged out', '2025-07-02 23:10:27', '::1'),
(530, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 23:10:31', '::1'),
(531, 10, 1, 'Dashboard viewed', '2025-07-02 23:10:31', '::1'),
(532, 10, 1, 'User admin added new user: julian (Julian2@gmail.com)', '2025-07-02 23:11:11', '::1'),
(533, 10, 1, 'Viewed User Management Page', '2025-07-02 23:11:11', '::1'),
(534, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 23:11:15', '::1'),
(535, 14, 5, 'User Julian2@gmail.com logged in', '2025-07-02 23:11:22', '::1'),
(536, 14, 5, 'Dashboard viewed', '2025-07-02 23:11:22', '::1'),
(537, 14, 5, 'Dashboard viewed', '2025-07-02 23:14:17', '::1'),
(538, 14, 5, 'Dashboard viewed', '2025-07-02 23:27:11', '::1'),
(539, 14, 5, 'Dashboard viewed', '2025-07-02 23:27:12', '::1'),
(540, 14, 5, 'Dashboard viewed', '2025-07-02 23:27:12', '::1'),
(541, 14, 5, 'User Julian2@gmail.com logged out', '2025-07-02 23:27:13', '::1'),
(542, 14, 5, 'User Julian2@gmail.com logged in', '2025-07-02 23:27:20', '::1'),
(543, 14, 5, 'Dashboard viewed', '2025-07-02 23:27:20', '::1'),
(544, 14, 5, 'User Julian2@gmail.com logged out', '2025-07-02 23:27:40', '::1'),
(545, 12, 3, 'User aljun@gmail.com logged in', '2025-07-02 23:27:52', '::1'),
(546, 12, 3, 'Dashboard viewed', '2025-07-02 23:27:53', '::1'),
(547, 12, 3, 'User aljun@gmail.com logged out', '2025-07-02 23:32:24', '::1'),
(548, 13, 5, 'User julian@gmail.com logged in', '2025-07-02 23:32:30', '::1'),
(549, 13, 5, 'Dashboard viewed', '2025-07-02 23:32:30', '::1'),
(550, 13, 5, 'Dashboard viewed', '2025-07-02 23:32:33', '::1'),
(551, 13, 5, 'Dashboard viewed', '2025-07-02 23:32:33', '::1'),
(552, 13, 5, 'Dashboard viewed', '2025-07-02 23:32:33', '::1'),
(553, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:41', '::1'),
(554, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:42', '::1'),
(555, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:42', '::1'),
(556, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:42', '::1'),
(557, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:43', '::1'),
(558, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:43', '::1'),
(559, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:43', '::1'),
(560, 13, 5, 'Dashboard viewed', '2025-07-02 23:40:43', '::1'),
(561, 13, 5, 'User julian@gmail.com logged out', '2025-07-02 23:40:45', '::1'),
(562, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 23:40:49', '::1'),
(563, 10, 1, 'Dashboard viewed', '2025-07-02 23:40:49', '::1'),
(564, 10, 1, 'Viewed Booked Rooms', '2025-07-02 23:40:54', '::1'),
(565, 10, 1, 'Viewed Check In Guest page', '2025-07-02 23:40:57', '::1'),
(566, 10, 1, 'User ad@gmail.com checked in Guest for Booking ID: 3 (Room ID: 2)', '2025-07-02 23:41:03', '::1'),
(567, 10, 1, 'Viewed Check In Guest page', '2025-07-02 23:41:03', '::1'),
(568, 10, 1, 'Viewed Booked Rooms', '2025-07-02 23:41:09', '::1'),
(569, 10, 1, 'Viewed Check Out Guest page', '2025-07-02 23:41:13', '::1'),
(570, 10, 1, 'User ad@gmail.com checked out Guest for Booking ID: 3 (Room ID: 2)', '2025-07-02 23:41:28', '::1'),
(571, 10, 1, 'Viewed Check Out Guest page', '2025-07-02 23:41:28', '::1'),
(572, 10, 1, 'Viewed Cancel Booking Page', '2025-07-02 23:41:32', '::1'),
(573, 10, 1, 'Viewed Manage Room Inventory', '2025-07-02 23:41:46', '::1'),
(574, 10, 1, 'Viewed Billing History Page', '2025-07-02 23:44:48', '::1'),
(575, 10, 1, 'Viewed Check In Guest page', '2025-07-02 23:45:06', '::1'),
(576, 10, 1, 'Viewed Check Out Guest page', '2025-07-02 23:45:08', '::1'),
(577, 10, 1, 'User ad@gmail.com checked out Guest for Booking ID: 2 (Room ID: 3)', '2025-07-02 23:45:12', '::1'),
(578, 10, 1, 'Viewed Check Out Guest page', '2025-07-02 23:45:12', '::1'),
(579, 10, 1, 'Viewed Check In Guest page', '2025-07-02 23:45:16', '::1'),
(580, 10, 1, 'User ad@gmail.com checked in Guest for Booking ID: 2 (Room ID: 3)', '2025-07-02 23:45:25', '::1'),
(581, 10, 1, 'Viewed Check In Guest page', '2025-07-02 23:45:25', '::1'),
(582, 10, 1, 'Viewed Check Out Guest page', '2025-07-02 23:45:27', '::1'),
(583, 10, 1, 'User ad@gmail.com checked out Guest for Booking ID: 2 (Room ID: 3)', '2025-07-02 23:45:29', '::1'),
(584, 10, 1, 'Viewed Check Out Guest page', '2025-07-02 23:45:29', '::1'),
(585, 10, 1, 'Viewed Check In Guest page', '2025-07-02 23:45:31', '::1'),
(586, 10, 1, 'Viewed Booked Rooms', '2025-07-02 23:45:41', '::1'),
(587, 10, 1, 'Viewed Book Room Page', '2025-07-02 23:45:51', '::1'),
(588, 10, 1, 'Viewed Room Availability', '2025-07-02 23:46:45', '::1'),
(589, 10, 1, 'Viewed Book Room Page', '2025-07-02 23:47:02', '::1'),
(590, 10, 1, 'Viewed Room Availability', '2025-07-02 23:47:08', '::1'),
(591, 10, 1, 'Viewed Room Availability', '2025-07-02 23:50:46', '::1'),
(592, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 23:51:01', '::1'),
(593, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 23:51:36', '::1'),
(594, 10, 1, 'Generated report: daily_occupancy from 2025-07-04 to 2025-07-07', '2025-07-02 23:51:36', '::1'),
(595, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 23:51:49', '::1'),
(596, 10, 1, 'Generated report: monthly_bookings from 2025-07-04 to 2025-07-07', '2025-07-02 23:51:49', '::1'),
(597, 10, 1, 'Viewed Generate Reports Page', '2025-07-02 23:51:56', '::1'),
(598, 10, 1, 'Generated report: guest_demographics from 2025-07-04 to 2025-07-07', '2025-07-02 23:51:56', '::1'),
(599, 10, 1, 'Viewed Manage Hotel Staff Page', '2025-07-02 23:52:01', '::1'),
(600, 10, 1, 'Viewed Handle Complaints Page', '2025-07-02 23:52:08', '::1'),
(601, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 23:52:13', '::1'),
(602, 14, 5, 'User Julian2@gmail.com logged in', '2025-07-02 23:52:30', '::1'),
(603, 14, 5, 'Dashboard viewed', '2025-07-02 23:52:30', '::1'),
(604, 14, 5, 'Dashboard viewed', '2025-07-02 23:53:58', '::1'),
(605, 14, 5, 'Dashboard viewed', '2025-07-02 23:53:59', '::1'),
(606, 14, 5, 'Dashboard viewed', '2025-07-02 23:53:59', '::1'),
(607, 14, 5, 'Dashboard viewed', '2025-07-02 23:53:59', '::1'),
(608, 14, 5, 'Viewed Room Availability', '2025-07-02 23:54:16', '::1'),
(609, 14, 5, 'Viewed Manage Room Inventory', '2025-07-02 23:54:19', '::1'),
(610, 14, 5, 'Viewed Room Availability', '2025-07-02 23:54:20', '::1'),
(611, 14, 5, 'Viewed Announcements Page', '2025-07-02 23:54:23', '::1'),
(612, 14, 5, 'Viewed Room Availability', '2025-07-02 23:54:24', '::1'),
(613, 14, 5, 'User Julian2@gmail.com logged out', '2025-07-02 23:55:41', '::1'),
(614, 10, 1, 'User ad@gmail.com logged in', '2025-07-02 23:55:47', '::1'),
(615, 10, 1, 'Dashboard viewed', '2025-07-02 23:55:47', '::1'),
(616, 10, 1, 'Viewed Room Availability', '2025-07-02 23:56:34', '::1'),
(617, 10, 1, 'User ad@gmail.com logged out', '2025-07-02 23:56:59', '::1'),
(618, 2, 11, 'User roycee@gmail.com logged in', '2025-07-02 23:57:04', '::1'),
(619, 2, 11, 'Dashboard viewed', '2025-07-02 23:57:05', '::1'),
(620, 2, 11, 'User roycee@gmail.com logged out', '2025-07-02 23:57:51', '::1'),
(621, 14, 5, 'User Julian2@gmail.com logged in', '2025-07-03 00:02:20', '::1'),
(622, 14, 5, 'Dashboard viewed', '2025-07-03 00:02:20', '::1'),
(623, 14, 5, 'Dashboard viewed', '2025-07-03 00:02:21', '::1'),
(624, 14, 5, 'Dashboard viewed', '2025-07-03 00:02:22', '::1'),
(625, 14, 5, 'Dashboard viewed', '2025-07-03 00:02:22', '::1'),
(626, 14, 5, 'Dashboard viewed', '2025-07-03 00:02:22', '::1'),
(627, 14, 5, 'Dashboard viewed', '2025-07-03 00:07:32', '::1'),
(628, 14, 5, 'User Julian2@gmail.com logged out', '2025-07-03 00:08:10', '::1'),
(629, 10, 1, 'User ad@gmail.com logged in', '2025-07-03 00:08:17', '::1'),
(630, 10, 1, 'Dashboard viewed', '2025-07-03 00:08:17', '::1'),
(631, 10, 1, 'Dashboard viewed', '2025-07-03 00:08:22', '::1'),
(632, 10, 1, 'Dashboard viewed', '2025-07-03 00:08:23', '::1'),
(633, 10, 1, 'Dashboard viewed', '2025-07-03 00:08:23', '::1'),
(634, 10, 1, 'Dashboard viewed', '2025-07-03 00:08:23', '::1'),
(635, 10, 1, 'Dashboard viewed', '2025-07-03 00:08:23', '::1'),
(636, 10, 1, 'Viewed Generate Reports Page', '2025-07-03 00:08:28', '::1'),
(637, 10, 1, 'Viewed Billing History Page', '2025-07-03 00:08:30', '::1'),
(638, 10, 1, 'Dashboard viewed', '2025-07-03 00:08:35', '::1'),
(639, 10, 1, 'Dashboard viewed', '2025-07-03 00:15:18', '::1'),
(640, 10, 1, 'Dashboard viewed', '2025-07-03 00:15:18', '::1'),
(641, 10, 1, 'Dashboard viewed', '2025-07-03 00:15:18', '::1'),
(642, 10, 1, 'Viewed Book Room Page', '2025-07-03 00:15:24', '::1'),
(643, 10, 1, 'Viewed Room Availability', '2025-07-03 00:15:24', '::1'),
(644, 10, 1, 'User ad@gmail.com logged out', '2025-07-03 00:15:26', '::1'),
(645, 14, 5, 'User Julian2@gmail.com logged in', '2025-07-03 00:15:41', '::1'),
(646, 14, 5, 'Dashboard viewed', '2025-07-03 00:15:41', '::1'),
(647, 14, 5, 'User Julian2@gmail.com logged out', '2025-07-03 00:19:35', '::1'),
(648, 10, 1, 'User ad@gmail.com logged in', '2025-07-03 00:19:42', '::1'),
(649, 10, 1, 'Dashboard viewed', '2025-07-03 00:19:42', '::1'),
(650, 10, 1, 'User admin added new user: kaiden (kaiden@gmail.com)', '2025-07-03 00:20:08', '::1'),
(651, 10, 1, 'Viewed User Management Page', '2025-07-03 00:20:08', '::1'),
(652, 10, 1, 'Viewed User Management Page', '2025-07-03 00:20:11', '::1'),
(653, 10, 1, 'Viewed User Management Page', '2025-07-03 00:20:16', '::1'),
(654, 10, 1, 'User ad@gmail.com logged out', '2025-07-03 00:20:24', '::1'),
(655, 15, 2, 'User kaiden@gmail.com logged in', '2025-07-03 00:20:30', '::1'),
(656, 15, 2, 'Dashboard viewed', '2025-07-03 00:20:30', '::1'),
(657, 15, 2, 'User kaiden@gmail.com logged out', '2025-07-03 00:28:55', '::1'),
(658, 14, 5, 'User Julian2@gmail.com logged in', '2025-07-03 00:29:00', '::1'),
(659, 14, 5, 'Dashboard viewed', '2025-07-03 00:29:00', '::1'),
(660, 14, 5, 'Viewed Room Availability', '2025-07-03 00:29:04', '::1'),
(661, 14, 5, 'Viewed Book Room Page', '2025-07-03 00:29:09', '::1'),
(662, 14, 5, 'Viewed Manage Room Inventory', '2025-07-03 00:29:14', '::1'),
(663, 14, 5, 'Viewed Room Availability', '2025-07-03 00:29:16', '::1'),
(664, 14, 5, 'Dashboard viewed', '2025-07-03 00:29:16', '::1'),
(665, 14, 5, 'Dashboard viewed', '2025-07-03 00:29:17', '::1'),
(666, 10, 1, 'User ad@gmail.com logged in', '2025-07-06 23:37:05', '::1'),
(667, 10, 1, 'Dashboard viewed', '2025-07-06 23:37:05', '::1'),
(668, 10, 1, 'Dashboard viewed', '2025-07-06 23:37:10', '::1'),
(669, 10, 1, 'Dashboard viewed', '2025-07-06 23:37:13', '::1'),
(670, 10, 1, 'Dashboard viewed', '2025-07-06 23:37:27', '::1'),
(671, 10, 1, 'Dashboard viewed', '2025-07-06 23:37:28', '::1'),
(672, 10, 1, 'Dashboard viewed', '2025-07-06 23:37:28', '::1'),
(673, 10, 1, 'Dashboard viewed', '2025-07-06 23:39:00', '::1'),
(674, 10, 1, 'Dashboard viewed', '2025-07-06 23:39:16', '::1'),
(675, 10, 1, 'Dashboard viewed', '2025-07-06 23:39:43', '::1'),
(676, 10, 1, 'Dashboard viewed', '2025-07-06 23:39:44', '::1'),
(677, 10, 1, 'Dashboard viewed', '2025-07-06 23:39:45', '::1'),
(678, 10, 1, 'Dashboard viewed', '2025-07-06 23:39:45', '::1'),
(679, 10, 1, 'Dashboard viewed', '2025-07-06 23:39:59', '::1'),
(680, 10, 1, 'Dashboard viewed', '2025-07-06 23:40:03', '::1'),
(681, 10, 1, 'Dashboard viewed', '2025-07-06 23:40:04', '::1'),
(682, 10, 1, 'Dashboard viewed', '2025-07-06 23:40:04', '::1'),
(683, 10, 1, 'Dashboard viewed', '2025-07-06 23:40:11', '::1'),
(684, 10, 1, 'Dashboard viewed', '2025-07-06 23:40:13', '::1'),
(685, 10, 1, 'Viewed Check Out Guest page', '2025-07-06 23:40:15', '::1'),
(686, 10, 1, 'Dashboard viewed', '2025-07-06 23:41:04', '::1'),
(687, 10, 1, 'Dashboard viewed', '2025-07-06 23:41:04', '::1'),
(688, 10, 1, 'Dashboard viewed', '2025-07-06 23:41:04', '::1'),
(689, 10, 1, 'Viewed Announcements Page', '2025-07-06 23:41:06', '::1'),
(690, 10, 1, 'Dashboard viewed', '2025-07-06 23:41:43', '::1'),
(691, 10, 1, 'Dashboard viewed', '2025-07-06 23:41:46', '::1'),
(692, 10, 1, 'Viewed Booked Rooms', '2025-07-06 23:41:48', '::1'),
(693, 10, 1, 'Dashboard viewed', '2025-07-06 23:46:42', '::1'),
(694, 10, 1, 'Dashboard viewed', '2025-07-06 23:46:43', '::1'),
(695, 10, 1, 'Viewed Room Availability', '2025-07-06 23:46:45', '::1'),
(696, 10, 1, 'User ad@gmail.com logged in', '2025-07-06 23:53:10', '::1'),
(697, 10, 1, 'Dashboard viewed', '2025-07-06 23:53:10', '::1'),
(698, 10, 1, 'Viewed Book Room Page', '2025-07-06 23:53:13', '::1'),
(699, 10, 1, 'User ad@gmail.com logged in', '2025-07-06 23:56:52', '::1'),
(700, 10, 1, 'Dashboard viewed', '2025-07-06 23:56:52', '::1'),
(701, 10, 1, 'Viewed Manage Bookings page', '2025-07-06 23:59:55', '::1'),
(702, 10, 1, 'User ad@gmail.com updated price for Room ID: 20 to 2000', '2025-07-07 00:00:57', '::1'),
(703, 10, 1, 'User ad@gmail.com updated price for Room ID: 21 to 2000', '2025-07-07 00:01:03', '::1'),
(704, 10, 1, 'User ad@gmail.com updated price for Room ID: 22 to 5000', '2025-07-07 00:01:09', '::1'),
(705, 10, 1, 'User ad@gmail.com updated price for Room ID: 32 to 1500', '2025-07-07 00:01:17', '::1'),
(706, 10, 1, 'User ad@gmail.com updated price for Room ID: 23 to 1500', '2025-07-07 00:01:23', '::1'),
(707, 10, 1, 'User ad@gmail.com updated price for Room ID: 24 to 2000', '2025-07-07 00:01:28', '::1'),
(708, 10, 1, 'User ad@gmail.com updated price for Room ID: 25 to 5000', '2025-07-07 00:01:33', '::1'),
(709, 10, 1, 'User ad@gmail.com updated price for Room ID: 26 to 1500', '2025-07-07 00:01:38', '::1'),
(710, 10, 1, 'User ad@gmail.com updated price for Room ID: 27 to 2000', '2025-07-07 00:01:42', '::1'),
(711, 10, 1, 'User ad@gmail.com updated price for Room ID: 28 to 5000', '2025-07-07 00:01:48', '::1'),
(712, 10, 1, 'User ad@gmail.com updated price for Room ID: 29 to 1500', '2025-07-07 00:01:53', '::1');
INSERT INTO `activity_log` (`log_id`, `user_id`, `role_id`, `action_description`, `timestamp`, `ip_address`) VALUES
(713, 10, 1, 'User ad@gmail.com updated price for Room ID: 30 to 2000', '2025-07-07 00:02:00', '::1'),
(714, 10, 1, 'User ad@gmail.com updated price for Room ID: 31 to 5000', '2025-07-07 00:02:04', '::1'),
(715, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 00:06:38', '::1'),
(716, 14, 5, 'User Julian2@gmail.com logged in', '2025-07-07 00:06:55', '::1'),
(717, 14, 5, 'Dashboard viewed', '2025-07-07 00:06:55', '::1'),
(718, 14, 5, 'Dashboard viewed', '2025-07-07 00:07:01', '::1'),
(719, 14, 5, 'User Julian2@gmail.com logged out', '2025-07-07 00:07:03', '::1'),
(720, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 00:07:12', '::1'),
(721, 10, 1, 'Dashboard viewed', '2025-07-07 00:07:12', '::1'),
(722, 10, 1, 'Dashboard viewed', '2025-07-07 00:12:04', '::1'),
(723, 10, 1, 'Dashboard viewed', '2025-07-07 00:13:47', '::1'),
(724, 10, 1, 'Dashboard viewed', '2025-07-07 00:13:47', '::1'),
(725, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 00:13:53', '::1'),
(726, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 00:14:00', '::1'),
(727, 2, 11, 'Dashboard viewed', '2025-07-07 00:14:00', '::1'),
(728, 2, 11, 'Dashboard viewed', '2025-07-07 00:14:35', '::1'),
(729, 2, 11, 'Dashboard viewed', '2025-07-07 00:14:35', '::1'),
(730, 2, 11, 'Dashboard viewed', '2025-07-07 00:14:36', '::1'),
(731, 2, 11, 'Dashboard viewed', '2025-07-07 00:15:35', '::1'),
(732, 2, 11, 'Dashboard viewed', '2025-07-07 00:16:11', '::1'),
(733, 2, 11, 'Dashboard viewed', '2025-07-07 00:16:11', '::1'),
(734, 2, 11, 'Dashboard viewed', '2025-07-07 00:16:11', '::1'),
(735, 2, 11, 'User roycee@gmail.com logged out', '2025-07-07 00:27:56', '::1'),
(736, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 00:28:01', '::1'),
(737, 2, 11, 'Dashboard viewed', '2025-07-07 00:28:01', '::1'),
(738, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 00:28:07', '::1'),
(739, 2, 11, 'Dashboard viewed', '2025-07-07 00:28:07', '::1'),
(740, 2, 11, 'User roycee@gmail.com logged out', '2025-07-07 00:28:09', '::1'),
(741, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 00:28:15', '::1'),
(742, 10, 1, 'Dashboard viewed', '2025-07-07 00:28:15', '::1'),
(743, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 00:30:30', '::1'),
(744, 10, 1, 'Dashboard viewed', '2025-07-07 00:30:30', '::1'),
(745, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 00:33:24', '::1'),
(746, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 00:33:30', '::1'),
(747, 10, 1, 'Dashboard viewed', '2025-07-07 00:33:30', '::1'),
(748, 10, 1, 'User admin added new user: carlobudoy (carl@gmail.com)', '2025-07-07 00:33:55', '::1'),
(749, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 00:34:01', '::1'),
(750, 16, 6, 'User carl@gmail.com logged in', '2025-07-07 00:34:06', '::1'),
(751, 16, 6, 'Dashboard viewed', '2025-07-07 00:34:06', '::1'),
(752, 16, 6, 'User carlobudoy updated user: aljun (aljun@gmail.com)', '2025-07-07 00:35:49', '::1'),
(753, 16, 6, 'User carl@gmail.com logged out', '2025-07-07 00:36:00', '::1'),
(754, 12, 13, 'User aljun@gmail.com logged in', '2025-07-07 00:36:05', '::1'),
(755, 12, 13, 'Viewed Check In Guest page', '2025-07-07 00:38:37', '::1'),
(756, 12, 13, 'User aljun@gmail.com logged out', '2025-07-07 00:40:41', '::1'),
(757, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 00:40:49', '::1'),
(758, 10, 1, 'Dashboard viewed', '2025-07-07 00:41:06', '::1'),
(759, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 00:41:16', '::1'),
(760, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 00:41:37', '::1'),
(761, 10, 1, 'Dashboard viewed', '2025-07-07 00:41:37', '::1'),
(762, 10, 1, 'Dashboard viewed', '2025-07-07 00:47:02', '::1'),
(763, 10, 1, 'Dashboard viewed', '2025-07-07 00:47:02', '::1'),
(764, 10, 1, 'Dashboard viewed', '2025-07-07 00:47:03', '::1'),
(765, 10, 1, 'Dashboard viewed', '2025-07-07 00:47:03', '::1'),
(766, 10, 1, 'Dashboard viewed', '2025-07-07 00:47:26', '::1'),
(767, 10, 1, 'Dashboard viewed', '2025-07-07 00:55:10', '::1'),
(768, 10, 1, 'Dashboard viewed', '2025-07-07 00:56:57', '::1'),
(769, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 00:56:59', '::1'),
(770, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 00:57:04', '::1'),
(771, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:04', '::1'),
(772, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:08', '::1'),
(773, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:09', '::1'),
(774, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:10', '::1'),
(775, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:10', '::1'),
(776, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:11', '::1'),
(777, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:11', '::1'),
(778, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:12', '::1'),
(779, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:12', '::1'),
(780, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:13', '::1'),
(781, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:13', '::1'),
(782, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:13', '::1'),
(783, 2, 11, 'User roycee@gmail.com logged out', '2025-07-07 00:57:14', '::1'),
(784, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 00:57:24', '::1'),
(785, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:24', '::1'),
(786, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:26', '::1'),
(787, 2, 11, 'Dashboard viewed', '2025-07-07 00:57:27', '::1'),
(788, 2, 11, 'User roycee@gmail.com logged out', '2025-07-07 00:57:29', '::1'),
(789, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 00:57:36', '::1'),
(790, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:36', '::1'),
(791, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:40', '::1'),
(792, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:47', '::1'),
(793, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:50', '::1'),
(794, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:53', '::1'),
(795, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:55', '::1'),
(796, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:56', '::1'),
(797, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:58', '::1'),
(798, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:59', '::1'),
(799, 10, 1, 'Dashboard viewed', '2025-07-07 00:57:59', '::1'),
(800, 10, 1, 'Dashboard viewed', '2025-07-07 00:58:56', '::1'),
(801, 10, 1, 'Dashboard viewed', '2025-07-07 00:58:56', '::1'),
(802, 10, 1, 'Dashboard viewed', '2025-07-07 00:58:56', '::1'),
(803, 10, 1, 'Dashboard viewed', '2025-07-07 00:58:56', '::1'),
(804, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 00:58:58', '::1'),
(805, 10, 1, 'Viewed Check In Guest page', '2025-07-07 00:59:03', '::1'),
(806, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 00:59:05', '::1'),
(807, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:12', '::1'),
(808, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:17', '::1'),
(809, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:19', '::1'),
(810, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:19', '::1'),
(811, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:20', '::1'),
(812, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:20', '::1'),
(813, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:20', '::1'),
(814, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:20', '::1'),
(815, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:21', '::1'),
(816, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:21', '::1'),
(817, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:45', '::1'),
(818, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:45', '::1'),
(819, 10, 1, 'Dashboard viewed', '2025-07-07 00:59:46', '::1'),
(820, 10, 1, 'Viewed Manage Bookings page', '2025-07-07 00:59:50', '::1'),
(821, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 00:59:52', '::1'),
(822, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:00:50', '::1'),
(823, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:00:50', '::1'),
(824, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:00:50', '::1'),
(825, 10, 1, 'Dashboard viewed', '2025-07-07 01:00:54', '::1'),
(826, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 01:00:56', '::1'),
(827, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 01:01:00', '::1'),
(828, 2, 11, 'Dashboard viewed', '2025-07-07 01:01:00', '::1'),
(829, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 01:02:59', '::1'),
(830, 2, 11, 'Dashboard viewed', '2025-07-07 01:02:59', '::1'),
(831, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 01:05:09', '::1'),
(832, 2, 11, 'Dashboard viewed', '2025-07-07 01:05:09', '::1'),
(833, 2, 11, 'Dashboard viewed', '2025-07-07 01:05:12', '::1'),
(834, 2, 11, 'Dashboard viewed', '2025-07-07 01:05:13', '::1'),
(835, 2, 11, 'Dashboard viewed', '2025-07-07 01:05:13', '::1'),
(836, 2, 11, 'Dashboard viewed', '2025-07-07 01:05:14', '::1'),
(837, 2, 11, 'User roycee@gmail.com logged out', '2025-07-07 01:05:19', '::1'),
(838, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 01:05:24', '::1'),
(839, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:24', '::1'),
(840, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:05:45', '::1'),
(841, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:50', '::1'),
(842, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:50', '::1'),
(843, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:50', '::1'),
(844, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:50', '::1'),
(845, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:50', '::1'),
(846, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:51', '::1'),
(847, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:51', '::1'),
(848, 10, 1, 'Dashboard viewed', '2025-07-07 01:05:51', '::1'),
(849, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 01:06:12', '::1'),
(850, 10, 1, 'Dashboard viewed', '2025-07-07 01:06:12', '::1'),
(851, 10, 1, 'Dashboard viewed', '2025-07-07 01:06:31', '::1'),
(852, 10, 1, 'Dashboard viewed', '2025-07-07 01:08:54', '::1'),
(853, 10, 1, 'Dashboard viewed', '2025-07-07 01:08:54', '::1'),
(854, 10, 1, 'Dashboard viewed', '2025-07-07 01:08:54', '::1'),
(855, 10, 1, 'Dashboard viewed', '2025-07-07 01:08:54', '::1'),
(856, 10, 1, 'Dashboard viewed', '2025-07-07 01:08:55', '::1'),
(857, 10, 1, 'Dashboard viewed', '2025-07-07 01:09:09', '::1'),
(858, 10, 1, 'Dashboard viewed', '2025-07-07 01:09:11', '::1'),
(859, 10, 1, 'Dashboard viewed', '2025-07-07 01:09:11', '::1'),
(860, 10, 1, 'Dashboard viewed', '2025-07-07 01:09:12', '::1'),
(861, 10, 1, 'Dashboard viewed', '2025-07-07 01:09:13', '::1'),
(862, 10, 1, 'User ad@gmail.com logged out', '2025-07-07 01:09:17', '::1'),
(863, 2, 11, 'User roycee@gmail.com logged in', '2025-07-07 01:09:23', '::1'),
(864, 2, 11, 'Dashboard viewed', '2025-07-07 01:09:23', '::1'),
(865, 2, 11, 'Dashboard viewed', '2025-07-07 01:09:26', '::1'),
(866, 2, 11, 'Dashboard viewed', '2025-07-07 01:09:26', '::1'),
(867, 2, 11, 'Dashboard viewed', '2025-07-07 01:09:27', '::1'),
(868, 2, 11, 'Dashboard viewed', '2025-07-07 01:09:28', '::1'),
(869, 2, 11, 'Dashboard viewed', '2025-07-07 01:10:13', '::1'),
(870, 2, 11, 'Dashboard viewed', '2025-07-07 01:10:14', '::1'),
(871, 2, 11, 'Dashboard viewed', '2025-07-07 01:10:14', '::1'),
(872, 2, 11, 'Dashboard viewed', '2025-07-07 01:10:14', '::1'),
(873, 2, 11, 'Dashboard viewed', '2025-07-07 01:10:15', '::1'),
(874, 2, 11, 'Dashboard viewed', '2025-07-07 01:10:20', '::1'),
(875, 2, 11, 'User roycee@gmail.com logged out', '2025-07-07 01:10:22', '::1'),
(876, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 01:10:35', '::1'),
(877, 10, 1, 'Dashboard viewed', '2025-07-07 01:10:35', '::1'),
(878, 10, 1, 'Dashboard viewed', '2025-07-07 01:10:57', '::1'),
(879, 10, 1, 'Dashboard viewed', '2025-07-07 01:10:57', '::1'),
(880, 10, 1, 'Dashboard viewed', '2025-07-07 01:11:46', '::1'),
(881, 10, 1, 'Dashboard viewed', '2025-07-07 01:11:55', '::1'),
(882, 10, 1, 'Dashboard viewed', '2025-07-07 01:11:56', '::1'),
(883, 10, 1, 'Dashboard viewed', '2025-07-07 01:11:56', '::1'),
(884, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:14:18', '::1'),
(885, 10, 1, 'User ad@gmail.com checked in Guest for Booking ID: 2 (Room ID: 3)', '2025-07-07 01:14:22', '::1'),
(886, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:14:22', '::1'),
(887, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:14:24', '::1'),
(888, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:14:26', '::1'),
(889, 10, 1, 'Viewed Manage Bookings page', '2025-07-07 01:14:27', '::1'),
(890, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:14:31', '::1'),
(891, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:14:33', '::1'),
(892, 10, 1, 'User ad@gmail.com checked in Guest for Booking ID: 3 (Room ID: 2)', '2025-07-07 01:14:37', '::1'),
(893, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:14:37', '::1'),
(894, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:14:40', '::1'),
(895, 10, 1, 'User ad@gmail.com checked out Guest for Booking ID: 2 (Room ID: 3)', '2025-07-07 01:15:00', '::1'),
(896, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:15:00', '::1'),
(897, 10, 1, 'Viewed Manage Bookings page', '2025-07-07 01:15:07', '::1'),
(898, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:15:12', '::1'),
(899, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:15:17', '::1'),
(900, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:15:18', '::1'),
(901, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:29', '::1'),
(902, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:35', '::1'),
(903, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:38', '::1'),
(904, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:41', '::1'),
(905, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:43', '::1'),
(906, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:44', '::1'),
(907, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:46', '::1'),
(908, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:46', '::1'),
(909, 10, 1, 'Dashboard viewed', '2025-07-07 01:15:47', '::1'),
(910, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:13', '::1'),
(911, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:16', '::1'),
(912, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:21', '::1'),
(913, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:36', '::1'),
(914, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:36', '::1'),
(915, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:37', '::1'),
(916, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:37', '::1'),
(917, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:37', '::1'),
(918, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:37', '::1'),
(919, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:37', '::1'),
(920, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:37', '::1'),
(921, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:37', '::1'),
(922, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:38', '::1'),
(923, 10, 1, 'Dashboard viewed', '2025-07-07 01:17:38', '::1'),
(924, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 01:19:58', '::1'),
(925, 10, 1, 'Dashboard viewed', '2025-07-07 01:19:58', '::1'),
(926, 10, 1, 'Viewed Manage Bookings page', '2025-07-07 01:20:10', '::1'),
(927, 10, 1, 'Viewed Check In Guest page', '2025-07-07 01:20:15', '::1'),
(928, 10, 1, 'Viewed Check Out Guest page', '2025-07-07 01:20:19', '::1'),
(929, 10, 1, 'User ad@gmail.com logged in', '2025-07-07 01:27:28', '::1'),
(930, 10, 1, 'Dashboard viewed', '2025-07-07 01:27:28', '::1'),
(931, 10, 1, 'Viewed Booked Rooms', '2025-07-07 01:27:41', '::1'),
(932, 10, 1, 'View Customer Profile page viewed', '2025-07-07 01:27:44', '::1'),
(933, 10, 1, 'Viewed Billing History page', '2025-07-07 01:27:49', '::1'),
(934, 10, 1, 'Viewed Announcements', '2025-07-07 01:27:58', '::1'),
(935, 10, 1, 'Viewed Announcements', '2025-07-07 01:28:07', '::1'),
(936, 10, 1, 'View Customer Profile page viewed', '2025-07-07 01:28:09', '::1');

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
  `status` varchar(50) DEFAULT 'Confirmed',
  `payment_status` enum('Pending','Paid','Refunded') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `room_id`, `check_in_date`, `check_out_date`, `num_guests`, `booking_date`, `status`, `payment_status`) VALUES
(2, 10, 3, '2025-03-07', '2025-05-07', 10, '2025-06-27 23:09:02', 'Confirmed', 'Pending'),
(3, 2, 2, '2025-06-29', '2025-07-02', 2, '2025-06-27 23:32:55', 'Confirmed', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Pending','In Progress','Resolved','Closed') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by_user_id` int(11) DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotion_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount_percentage` decimal(5,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(43, 3, 2),
(44, 3, 3),
(45, 3, 4),
(46, 3, 8),
(47, 3, 11),
(48, 3, 12),
(49, 3, 17),
(50, 4, 8),
(51, 4, 17),
(52, 4, 18),
(53, 4, 19),
(54, 5, 17),
(55, 5, 20),
(56, 6, 10),
(57, 6, 18),
(58, 7, 9),
(59, 7, 11),
(60, 7, 12),
(61, 7, 14),
(62, 7, 15),
(63, 8, 15),
(64, 8, 20),
(65, 9, 1),
(66, 10, 16),
(67, 10, 18);

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
(2, '102', 'Single', 'occupied', 1500.00),
(3, '201', 'Suite', 'available', 5000.00),
(4, '202', 'Single', 'Available', 500.00),
(20, '103', 'Double', 'Available', 2000.00),
(21, '104', 'Double', 'Available', 2000.00),
(22, '105', 'Suite', 'Available', 5000.00),
(23, '106', 'Single', 'Available', 1500.00),
(24, '107', 'Double', 'Available', 2000.00),
(25, '108', 'Suite', 'Available', 5000.00),
(26, '109', 'Single', 'Available', 1500.00),
(27, '110', 'Double', 'Available', 2000.00),
(28, '111', 'Suite', 'Available', 5000.00),
(29, '112', 'Single', 'Available', 1500.00),
(30, '113', 'Double', 'Available', 2000.00),
(31, '114', 'Suite', 'Available', 5000.00),
(32, '115', 'Single', 'Available', 1500.00);

-- --------------------------------------------------------

--
-- Table structure for table `room_service_requests`
--

CREATE TABLE `room_service_requests` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_number` varchar(100) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','In Progress','Completed','Cancelled') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(10, 'admin', 'ad@gmail.com', '$2y$10$9og7A6sIMuW5jVk62uXItuP58Wgz.LLA3pJ0JnpMXSnccx0Ztn40K', 1),
(12, 'aljun', 'aljun@gmail.com', '$2y$10$bZBSPEY4hRWEISD4/s3NfuHtVRnpkQ.S3ibJmCJ50ICeAqdNXsXx.', 13),
(13, 'julian', 'julian@gmail.com', '$2y$10$Fpl6upBtq62jWZlsXk8OMOBTJ3sC1A0mC4fGla7WvZumcpqic9M3m', 5),
(14, 'julian', 'Julian2@gmail.com', '$2y$10$egPibUh.WEzgFlHgnVhfnOM4zS1h0Tt2RHdIlAy2toEA7y6b4s/4m', 5),
(15, 'kaiden', 'kaiden@gmail.com', '$2y$10$vTng1M8/0WLITfdj38RYh.PpeoR06/A4N0eMCEmaZHM2kZ9Sn5c5q', 2),
(16, 'carlobudoy', 'carl@gmail.com', '$2y$10$xrTQks1NSU3qIEdY.GE.Au4W3d1doB0wYsoTHOn73P9S.GdDeSHGa', 6);

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
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `resolved_by_user_id` (`resolved_by_user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD UNIQUE KEY `permission_name` (`permission_name`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotion_id`),
  ADD UNIQUE KEY `code` (`code`);

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
-- Indexes for table `room_service_requests`
--
ALTER TABLE `room_service_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_name`);

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
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

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
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `room_service_requests`
--
ALTER TABLE `room_service_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `complaints_ibfk_2` FOREIGN KEY (`resolved_by_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE;

--
-- Constraints for table `room_service_requests`
--
ALTER TABLE `room_service_requests`
  ADD CONSTRAINT `room_service_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
