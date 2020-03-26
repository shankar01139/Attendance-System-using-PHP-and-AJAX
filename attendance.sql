-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 23, 2020 at 10:49 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 1, 'Present', '2019-05-01', 1),
(2, 2, 'Present', '2019-05-01', 1),
(3, 3, 'Absent', '2019-05-01', 1),
(4, 4, 'Present', '2019-05-01', 1),
(5, 5, 'Present', '2019-05-01', 1),
(6, 6, 'Absent', '2019-05-02', 1),
(7, 7, 'Present', '2019-05-02', 1),
(8, 8, 'Present', '2019-05-02', 1),
(9, 9, 'Present', '2019-05-02', 1),
(10, 10, 'Absent', '2019-05-02', 1),
(11, 11, 'Present', '2019-05-01', 2),
(12, 12, 'Present', '2019-05-01', 2),
(13, 13, 'Present', '2019-05-01', 2),
(14, 14, 'Present', '2019-05-01', 2),
(15, 15, 'Present', '2019-05-01', 2),
(16, 16, 'Present', '2019-05-02', 2),
(17, 17, 'Absent', '2019-05-02', 2),
(18, 18, 'Present', '2019-05-02', 2),
(19, 19, 'Absent', '2019-05-02', 2),
(20, 20, 'Present', '2019-05-02', 2),
(21, 21, 'Present', '2019-05-03', 2),
(22, 22, 'Present', '2019-05-03', 2),
(23, 23, 'Absent', '2019-05-03', 2),
(24, 24, 'Present', '2019-05-03', 2),
(25, 25, 'Present', '2019-05-03', 2),
(26, 1, 'Absent', '2019-05-04', 2),
(27, 3, 'Present', '2019-05-04', 2),
(28, 4, 'Present', '2019-05-04', 2),
(29, 5, 'Present', '2019-05-04', 2),
(30, 6, 'Present', '2019-05-04', 2),
(31, 1, 'Present', '2019-05-06', 2),
(32, 3, 'Present', '2019-05-06', 2),
(33, 4, 'Present', '2019-05-06', 2),
(34, 5, 'Present', '2019-05-06', 2),
(35, 6, 'Present', '2019-05-06', 2),
(36, 1, 'Present', '2019-05-07', 2),
(37, 3, 'Present', '2019-05-07', 2),
(38, 4, 'Present', '2019-05-07', 2),
(39, 5, 'Present', '2019-05-07', 2),
(40, 6, 'Absent', '2019-05-07', 2),
(41, 1, 'Present', '2019-05-08', 2),
(42, 3, 'Present', '2019-05-08', 2),
(43, 4, 'Present', '2019-05-08', 2),
(44, 5, 'Absent', '2019-05-08', 2),
(45, 6, 'Present', '2019-05-08', 2),
(46, 1, 'Present', '2019-05-09', 2),
(47, 3, 'Present', '2019-05-09', 2),
(48, 4, 'Present', '2019-05-09', 2),
(49, 5, 'Present', '2019-05-09', 2),
(50, 6, 'Present', '2019-05-09', 2),
(51, 1, 'Present', '2019-05-10', 2),
(52, 3, 'Absent', '2019-05-10', 2),
(53, 4, 'Absent', '2019-05-10', 2),
(54, 5, 'Present', '2019-05-10', 2),
(55, 6, 'Absent', '2019-05-10', 2),
(56, 1, 'Present', '2019-05-11', 2),
(57, 3, 'Present', '2019-05-11', 2),
(58, 4, 'Absent', '2019-05-11', 2),
(59, 5, 'Present', '2019-05-11', 2),
(60, 6, 'Absent', '2019-05-11', 2),
(61, 7, 'Present', '2019-05-03', 3),
(62, 8, 'Present', '2019-05-03', 3),
(63, 9, 'Present', '2019-05-03', 3),
(64, 10, 'Present', '2019-05-03', 3),
(65, 11, 'Present', '2019-05-03', 3),
(66, 7, 'Absent', '2019-05-04', 3),
(67, 8, 'Present', '2019-05-04', 3),
(68, 9, 'Absent', '2019-05-04', 3),
(69, 10, 'Present', '2019-05-04', 3),
(70, 11, 'Absent', '2019-05-04', 3),
(71, 7, 'Present', '2019-05-06', 3),
(72, 8, 'Present', '2019-05-06', 3),
(73, 9, 'Absent', '2019-05-06', 3),
(74, 10, 'Present', '2019-05-06', 3),
(75, 11, 'Present', '2019-05-06', 3),
(76, 7, 'Present', '2019-05-07', 3),
(77, 8, 'Present', '2019-05-07', 3),
(78, 9, 'Present', '2019-05-07', 3),
(79, 10, 'Present', '2019-05-07', 3),
(80, 11, 'Present', '2019-05-07', 3),
(81, 7, 'Present', '2019-05-08', 3),
(82, 8, 'Present', '2019-05-08', 3),
(83, 9, 'Present', '2019-05-08', 3),
(84, 10, 'Absent', '2019-05-08', 3),
(85, 11, 'Absent', '2019-05-08', 3),
(86, 7, 'Present', '2019-05-09', 3),
(87, 8, 'Present', '2019-05-09', 3),
(88, 9, 'Absent', '2019-05-09', 3),
(89, 10, 'Present', '2019-05-09', 3),
(90, 11, 'Present', '2019-05-09', 3),
(91, 7, 'Absent', '2019-05-10', 3),
(92, 8, 'Present', '2019-05-10', 3),
(93, 9, 'Present', '2019-05-10', 3),
(94, 10, 'Present', '2019-05-10', 3),
(95, 11, 'Absent', '2019-05-10', 3),
(96, 7, 'Present', '2019-05-11', 3),
(97, 8, 'Present', '2019-05-11', 3),
(98, 9, 'Present', '2019-05-11', 3),
(99, 10, 'Absent', '2019-05-11', 3),
(100, 11, 'Present', '2019-05-11', 3),
(101, 12, 'Present', '2019-05-01', 4),
(102, 13, 'Present', '2019-05-01', 4),
(103, 14, 'Present', '2019-05-01', 4),
(104, 15, 'Present', '2019-05-01', 4),
(105, 16, 'Present', '2019-05-01', 4),
(106, 12, 'Present', '2019-05-02', 4),
(107, 13, 'Absent', '2019-05-02', 4),
(108, 14, 'Present', '2019-05-02', 4),
(109, 15, 'Absent', '2019-05-02', 4),
(110, 16, 'Present', '2019-05-02', 4),
(111, 12, 'Present', '2019-05-03', 4),
(112, 13, 'Present', '2019-05-03', 4),
(113, 14, 'Present', '2019-05-03', 4),
(114, 15, 'Absent', '2019-05-03', 4),
(115, 16, 'Present', '2019-05-03', 4),
(116, 12, 'Present', '2019-05-04', 4),
(117, 13, 'Present', '2019-05-04', 4),
(118, 14, 'Present', '2019-05-04', 4),
(119, 15, 'Present', '2019-05-04', 4),
(120, 16, 'Present', '2019-05-04', 4),
(121, 12, 'Present', '2019-05-06', 4),
(122, 13, 'Absent', '2019-05-06', 4),
(123, 14, 'Absent', '2019-05-06', 4),
(124, 15, 'Present', '2019-05-06', 4),
(125, 16, 'Present', '2019-05-06', 4),
(126, 12, 'Absent', '2019-05-07', 4),
(127, 13, 'Present', '2019-05-07', 4),
(128, 14, 'Present', '2019-05-07', 4),
(129, 15, 'Present', '2019-05-07', 4),
(130, 16, 'Absent', '2019-05-07', 4),
(131, 12, 'Present', '2019-05-08', 4),
(132, 13, 'Absent', '2019-05-08', 4),
(133, 14, 'Present', '2019-05-08', 4),
(134, 15, 'Present', '2019-05-08', 4),
(135, 16, 'Present', '2019-05-08', 4),
(136, 12, 'Present', '2019-05-09', 4),
(137, 13, 'Present', '2019-05-09', 4),
(138, 14, 'Present', '2019-05-09', 4),
(139, 15, 'Present', '2019-05-09', 4),
(140, 16, 'Absent', '2019-05-09', 4),
(141, 12, 'Present', '2019-05-10', 4),
(142, 13, 'Absent', '2019-05-10', 4),
(143, 14, 'Present', '2019-05-10', 4),
(144, 15, 'Present', '2019-05-10', 4),
(145, 16, 'Absent', '2019-05-10', 4),
(146, 12, 'Present', '2019-05-11', 4),
(147, 13, 'Present', '2019-05-11', 4),
(148, 14, 'Present', '2019-05-11', 4),
(149, 15, 'Present', '2019-05-11', 4),
(150, 16, 'Present', '2019-05-11', 4),
(151, 17, 'Present', '2019-05-01', 5),
(152, 18, 'Present', '2019-05-01', 5),
(153, 19, 'Present', '2019-05-01', 5),
(154, 20, 'Absent', '2019-05-01', 5),
(155, 21, 'Absent', '2019-05-01', 5),
(156, 17, 'Present', '2019-05-02', 5),
(157, 18, 'Present', '2019-05-02', 5),
(158, 19, 'Present', '2019-05-02', 5),
(159, 20, 'Present', '2019-05-02', 5),
(160, 21, 'Present', '2019-05-02', 5),
(161, 17, 'Present', '2019-05-03', 5),
(162, 18, 'Present', '2019-05-03', 5),
(163, 19, 'Present', '2019-05-03', 5),
(164, 20, 'Present', '2019-05-03', 5),
(165, 21, 'Absent', '2019-05-03', 5),
(166, 17, 'Present', '2019-05-04', 5),
(167, 18, 'Present', '2019-05-04', 5),
(168, 19, 'Absent', '2019-05-04', 5),
(169, 20, 'Present', '2019-05-04', 5),
(170, 21, 'Present', '2019-05-04', 5),
(171, 17, 'Present', '2019-05-06', 5),
(172, 18, 'Present', '2019-05-06', 5),
(173, 19, 'Present', '2019-05-06', 5),
(174, 20, 'Present', '2019-05-06', 5),
(175, 21, 'Present', '2019-05-06', 5),
(176, 17, 'Present', '2019-05-07', 5),
(177, 18, 'Present', '2019-05-07', 5),
(178, 19, 'Present', '2019-05-07', 5),
(179, 20, 'Present', '2019-05-07', 5),
(180, 21, 'Absent', '2019-05-07', 5),
(181, 17, 'Present', '2019-05-08', 5),
(182, 18, 'Present', '2019-05-08', 5),
(183, 19, 'Present', '2019-05-08', 5),
(184, 20, 'Absent', '2019-05-08', 5),
(185, 21, 'Present', '2019-05-08', 5),
(186, 17, 'Present', '2019-05-09', 5),
(187, 18, 'Present', '2019-05-09', 5),
(188, 19, 'Absent', '2019-05-09', 5),
(189, 20, 'Absent', '2019-05-09', 5),
(190, 21, 'Present', '2019-05-09', 5),
(191, 17, 'Absent', '2019-05-10', 5),
(192, 18, 'Present', '2019-05-10', 5),
(193, 19, 'Present', '2019-05-10', 5),
(194, 20, 'Present', '2019-05-10', 5),
(195, 21, 'Present', '2019-05-10', 5),
(196, 17, 'Present', '2019-05-11', 5),
(197, 18, 'Present', '2019-05-11', 5),
(198, 19, 'Present', '2019-05-11', 5),
(199, 20, 'Absent', '2019-05-11', 5),
(200, 21, 'Present', '2019-05-11', 5),
(201, 7, 'Present', '2019-05-13', 3),
(202, 8, 'Present', '2019-05-13', 3),
(203, 9, 'Present', '2019-05-13', 3),
(204, 10, 'Absent', '2019-05-13', 3),
(205, 11, 'Present', '2019-05-13', 3),
(206, 7, 'Present', '2019-05-14', 3),
(207, 8, 'Present', '2019-05-14', 3),
(208, 9, 'Absent', '2019-05-14', 3),
(209, 10, 'Present', '2019-05-14', 3),
(210, 11, 'Present', '2019-05-14', 3),
(211, 7, 'Present', '2020-02-20', 1),
(212, 8, 'Absent', '2020-02-20', 1),
(213, 9, 'Present', '2020-02-20', 1),
(214, 10, 'Present', '2020-02-20', 1),
(215, 11, 'Absent', '2020-02-20', 1),
(216, 1, 'Absent', '2020-02-05', 6),
(217, 2, 'Absent', '2020-02-05', 6),
(218, 1, 'Absent', '2020-02-06', 6),
(219, 2, 'Absent', '2020-02-06', 6),
(220, 25, 'Absent', '2020-02-06', 6),
(221, 26, 'Absent', '2020-02-06', 6),
(222, 27, 'Absent', '2020-02-06', 6),
(223, 28, 'Absent', '2020-02-06', 6),
(224, 29, 'Absent', '2020-02-06', 6),
(225, 30, 'Absent', '2020-02-06', 6),
(226, 31, 'Absent', '2020-02-06', 6),
(227, 32, 'Absent', '2020-02-06', 6),
(228, 1, 'Present', '2020-02-06', 1),
(229, 2, 'Absent', '2020-02-06', 1),
(230, 25, 'Absent', '2020-02-06', 1),
(231, 26, 'Present', '2020-02-06', 1),
(232, 27, 'Absent', '2020-02-06', 1),
(233, 28, 'Present', '2020-02-06', 1),
(234, 29, 'Absent', '2020-02-06', 1),
(235, 30, 'Present', '2020-02-06', 1),
(236, 31, 'Absent', '2020-02-06', 1),
(237, 32, 'Present', '2020-02-06', 1),
(238, 1, 'Absent', '2020-02-12', 1),
(239, 2, 'Absent', '2020-02-12', 1),
(240, 3, 'Absent', '2020-02-12', 1),
(241, 4, 'Absent', '2020-02-12', 1),
(242, 5, 'Absent', '2020-02-12', 1),
(243, 6, 'Present', '2020-02-12', 1),
(244, 7, 'Present', '2020-02-12', 1),
(245, 8, 'Absent', '2020-02-12', 1),
(246, 9, 'Absent', '2020-02-12', 1),
(247, 10, 'Absent', '2020-02-12', 1),
(248, 11, 'Present', '2020-02-06', 2),
(249, 12, 'Absent', '2020-02-06', 2),
(250, 13, 'Absent', '2020-02-06', 2),
(251, 11, 'Absent', '2020-02-17', 2),
(252, 12, 'Present', '2020-02-17', 2),
(253, 13, 'Absent', '2020-02-17', 2),
(254, 1, 'Absent', '2020-02-09', 1),
(255, 2, 'Present', '2020-02-09', 1),
(256, 3, 'Absent', '2020-02-09', 1),
(257, 4, 'Absent', '2020-02-09', 1),
(258, 5, 'Absent', '2020-02-09', 1),
(259, 6, 'Absent', '2020-02-09', 1),
(260, 7, 'Absent', '2020-02-09', 1),
(261, 8, 'Absent', '2020-02-09', 1),
(262, 9, 'Absent', '2020-02-09', 1),
(263, 10, 'Absent', '2020-02-09', 1),
(264, 1, 'Absent', '2020-03-20', 1),
(265, 2, 'Present', '2020-03-20', 1),
(266, 3, 'Absent', '2020-03-20', 1),
(267, 4, 'Present', '2020-03-20', 1),
(268, 5, 'Present', '2020-03-20', 1),
(269, 6, 'Absent', '2020-03-20', 1),
(270, 7, 'Absent', '2020-03-20', 1),
(271, 8, 'Present', '2020-03-20', 1),
(272, 9, 'Present', '2020-03-20', 1),
(273, 10, 'Present', '2020-03-20', 1),
(274, 14, 'Present', '2020-03-20', 11),
(275, 15, 'Present', '2020-03-20', 11),
(276, 16, 'Present', '2020-03-20', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

DROP TABLE IF EXISTS `tbl_grade`;
CREATE TABLE IF NOT EXISTS `tbl_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(50) NOT NULL,
  PRIMARY KEY (`grade_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(1, 'Tamil'),
(2, 'French'),
(3, 'English'),
(4, 'Hindi'),
(5, 'Mathematics Statistics'),
(6, 'Computer Science'),
(7, 'CSA'),
(8, 'Information Technology'),
(9, 'Computer Technology'),
(10, 'BCA'),
(11, 'Software Systems'),
(12, 'ECS'),
(13, 'CDF'),
(14, 'Catering Science & Hotel Management'),
(15, 'Bio Science'),
(16, 'B.Com & M.Com'),
(17, 'Commerce CA'),
(18, 'M.Com(IB) & CS'),
(19, 'Commerce A & F'),
(20, 'Commerce BPS & CM'),
(21, 'Commerce PA'),
(22, 'B.Com BI & RM'),
(23, 'B.Com IT & E.Com'),
(24, 'Management'),
(25, 'Business Administration with CA'),
(26, 'Psychology'),
(27, 'Tourism & Travel Management'),
(28, 'MSW'),
(29, 'Public Administration'),
(30, 'Physical Education'),
(31, 'Library'),
(32, 'Office'),
(33, 'COE'),
(34, 'CS-LAB Technicians '),
(35, 'CDF-LAB Assistants'),
(36, 'ECS-LAB Assistants'),
(37, 'MB-LAB Assistants'),
(38, 'CSHM-LAB Assistants'),
(39, 'Psychology-LAB Assistants'),
(40, 'Plumbers'),
(41, 'Sweepers'),
(42, 'Scavengers');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
CREATE TABLE IF NOT EXISTS `tbl_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(1, 'R.Vijayasamundeswari', 100, '2020-02-12', 1),
(2, 'M.Mehmudha', 101, '2020-02-09', 1),
(3, 'A.Chandrasekar', 102, '2020-02-12', 1),
(4, 'P.Mohan', 103, '2020-02-09', 1),
(5, 'K.Kathirvel', 104, '2020-02-12', 1),
(6, 'T.Myvizhi', 105, '2020-02-09', 1),
(7, 'B.Silambarasan', 106, '2020-02-12', 1),
(8, 'B.Shyamala Devi', 107, '2020-02-11', 1),
(9, 'P.Partheeban', 108, '2020-02-18', 1),
(10, 'R.Nithya', 109, '2020-02-11', 1),
(11, 'S.Krishnakumar', 110, '2020-02-12', 2),
(12, 'G.Prasanna', 111, '2020-02-26', 2),
(13, 'P.Shalini Devi', 112, '2020-02-28', 2),
(14, 'Dr C. Sunitha', 114, '2020-03-20', 11),
(15, 'MRS. B. Meena Preethi', 115, '2020-03-11', 11),
(16, 'MR.S. Suresh', 116, '2020-03-27', 11),
(17, 'DR. N. Siva Kumar', 117, '2020-03-07', 17),
(18, 'MRS. N. A. Ancy Simi', 118, '2020-03-27', 17),
(19, 'MRS. M.Iswarya', 119, '2020-03-25', 17),
(20, 'Mrs.S.Sasiprabha', 152, '2020-03-11', 33),
(21, 'Ms.Poornima', 153, '2020-03-04', 33),
(22, 'Mrs.V.Kasthuri', 154, '2020-03-12', 33),
(23, 'Ms.Ranjini', 155, '2020-03-04', 33);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

DROP TABLE IF EXISTS `tbl_teacher`;
CREATE TABLE IF NOT EXISTS `tbl_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(1, 'Tamil', 'Tamil,Skasc', 'tamil@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-12', '', 1),
(2, 'French', 'French,skasc', 'french@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-20', '', 2),
(3, 'English', 'English,skasc', 'english@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-12', '', 3),
(4, 'Hindi', 'Hindi,skasc', 'hindi@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-18', '', 4),
(5, 'Maths', 'Maths,skasc', 'maths@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-20', '', 5),
(6, 'CS', 'Cs,skasc', 'cs@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-21', '', 6),
(7, 'CSA', 'Csa,skasc', 'csa@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-21', '', 7),
(8, 'IT', 'IT,skasc', 'it@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-19', '', 8),
(9, 'CT', 'CT,skasc', 'ct@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-20', '', 9),
(10, 'BCA', 'BCA,skasc', 'bca@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-20', '', 10),
(11, 'SS', 'SS,skasc', 'ss@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-21', '', 11),
(12, 'ECS', 'ECS,skasc', 'ecs@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-11', '', 12),
(13, 'CDF', 'CDF,skasc', 'cdf@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-19', '', 13),
(14, 'Catering', 'Catering,skasc', 'catering@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-26', '', 14),
(15, 'BioScience', 'Bio Science,skasc', 'bio@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-12', '', 15),
(16, 'B.Com & M,Com', 'B.Com & M.Com,skasc', 'bcommcom@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-18', '', 16),
(17, 'CommerceCA', 'CommerceCA,skasc', 'commerceca@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-18', '', 17),
(18, 'M.Com(IB) & CS', 'M.Com(IB) & CS,skasc', 'mcomibcs@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-26', '', 18),
(19, 'CommerceAF', 'CommerceAF,skasc', 'commerceaf@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-19', '', 19),
(20, 'CommerceBPS & CM', 'Commerce BPS $ CM ,skasc', 'commercebpscm@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-27', '', 20),
(21, 'CommercePA', 'Commerce PA,skasc', 'commercepa@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-09', '', 21),
(22, 'B.Com BI & RM', 'B.Com BI & RM,skasc', 'bcombirm@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-06', '', 22),
(23, 'B.Com IT & E.Com', 'B.Com IT & E.Com', 'bcomitecom@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-11', '', 23),
(24, 'Management', 'Management,skasc', 'management@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-03', '', 24),
(25, 'Business Administration & CA', 'Business Administration & CA', 'bisinessadminca@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-04', '', 25),
(26, 'Psychology', 'Psychology,skasc', 'psychology@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-09', '', 26),
(27, 'Tourism & Travel', 'Tourism & Travel Management,skasc', 'tourandtravel@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-12', '', 27),
(28, 'MSW', 'MSW,skasc', 'msw@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-11', '', 28),
(29, 'Public Administration', 'Public Administration,skasc', 'publicadmin@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-05', '', 29),
(30, 'Physical Education', 'Physical Education,skasc', 'physicaledu@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-04', '', 30),
(31, 'Library', 'Library,skasc', 'library@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-11', '', 31),
(32, 'Office', 'Office,skasc', 'office@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-16', '', 32),
(33, 'COE', 'COE,skasc', 'coe@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-05', '', 33),
(34, 'CS-LAB Technicians', 'CS-LAB Tecnicians', 'cslabtech@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-19', '', 34),
(35, 'CDF-LAB Assistants', 'CDF-LAB Assistants,skasc', 'cdflabassist@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-10', '', 35),
(36, 'ECS-LAB Assistants', 'ECS-LAB Assistants,skasc', 'ecslabassist@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-04', '', 36),
(37, 'MB-LAB Assistants', 'MB-LAB Assistants', 'mblabassist@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-10', '', 37),
(38, 'CSHM-LAB Assistants', 'CSHM-LAB Assistants,skasc', 'cshmlabassist@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-19', '', 38),
(39, 'Psychology-LAB Assistants', 'Psychology,skasc', 'psychology@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-05', '', 39),
(40, 'Plumbers', 'Plumbers,skasc', 'plumbers@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-13', '', 40),
(41, 'Sweepers', 'Sweepers,skasc', 'sweepers@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-26', '', 41),
(42, 'Scavengers', 'Scavengers,skasc', 'scavengers@gmail.com', '$2y$10$s2MmR/Ml6ohRRrrFY0SRQ.vWohGvthVsKe59zgLOIvm3Qd0PzavD2', 'msc', '2020-02-27', '5e749c9a93edb.png', 42);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
