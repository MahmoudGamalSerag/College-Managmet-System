-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 10:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `sub_id` int(11) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`sub_id`, `course_name`, `course_id`) VALUES
(2, 'math2', 'MA 111'),
(3, 'pl', 'CS123'),
(4, 'Data Strcure', 'CS 123'),
(5, 'Information System', 'IS 213'),
(6, 'Network', 'IT 123');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_name` varchar(20) NOT NULL,
  `exam_time` int(11) NOT NULL,
  `exam_degree` int(11) NOT NULL,
  `cour_id` int(11) NOT NULL,
  `exam_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_name`, `exam_time`, `exam_degree`, `cour_id`, `exam_date`) VALUES
('is', 120, 50, 5, '2021-01-11'),
('information system', 180, 60, 5, '2021-03-20'),
('Network', 120, 50, 6, '2021-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `lecture_no` int(11) NOT NULL,
  `assignment_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`lecture_no`, `assignment_no`, `date`, `course_id`, `course_name`) VALUES
(1, 1, '2021-03-22', 2, 'Electronics'),
(1, 1, '2021-03-22', 4, 'math'),
(3, 2, '2020-01-11', 3, 'pl');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `student_dept` varchar(20) NOT NULL,
  `student_gpa` float NOT NULL,
  `grade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_dept`, `student_gpa`, `grade`) VALUES
(201900789, 'Marwan Khaled', 'General', 3.02, 'A'),
(201900988, 'Yousef Mohamed', 'General', 2.8, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_pass` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_pass`, `user_name`, `user_type`) VALUES
(201900693, 123, 'Mohamed Sabry', 'Admin'),
(201900746, 123, 'Mohamed Hesham', 'Prof'),
(201900762, 123, 'Mahmoud gamal', 'Admin'),
(201900789, 123, 'Marwan Khaled', 'Student'),
(201900988, 123, 'Yousef Mohamed', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD KEY `c1` (`cour_id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD KEY `c2` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD KEY `c3` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `c1` FOREIGN KEY (`cour_id`) REFERENCES `courses` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `c2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `c3` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
