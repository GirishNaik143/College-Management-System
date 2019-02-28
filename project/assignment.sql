-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2017 at 03:08 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_tbl`
--

CREATE TABLE IF NOT EXISTS `article_tbl` (
  `a_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loca_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` char(10) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `article_tbl`
--

INSERT INTO `article_tbl` (`a_id`, `loca_id`, `title`, `content`, `status`, `note`) VALUES
(2, 1, 'Student Entry', 'link to other page', 'Private', 'ttt'),
(3, 1, 'Teachers Entry', 'link to teacher entry', 'Public', 'for teacher');

-- --------------------------------------------------------

--
-- Table structure for table `facuties_tbl`
--

CREATE TABLE IF NOT EXISTS `facuties_tbl` (
  `faculties_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faculties_name` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`faculties_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `facuties_tbl`
--

INSERT INTO `facuties_tbl` (`faculties_id`, `faculties_name`, `note`) VALUES
(4, 'Hanumanthappa', 'java'),
(5, 'Muralidhar', 'FS');

-- --------------------------------------------------------

--
-- Table structure for table `location_tb`
--

CREATE TABLE IF NOT EXISTS `location_tb` (
  `loca_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `l_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `note` varchar(150) NOT NULL,
  PRIMARY KEY (`loca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `location_tb`
--

INSERT INTO `location_tb` (`loca_id`, `l_name`, `description`, `note`) VALUES
(1, 'left menu', 'link to other page', 'menu');

-- --------------------------------------------------------

--
-- Table structure for table `stu_score_tbl`
--

CREATE TABLE IF NOT EXISTS `stu_score_tbl` (
  `ss_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stu_id` int(10) NOT NULL,
  `faculties_id` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `miderm` float NOT NULL,
  `final` float NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `stu_score_tbl`
--

INSERT INTO `stu_score_tbl` (`ss_id`, `stu_id`, `faculties_id`, `sub_id`, `miderm`, `final`, `note`) VALUES
(1, 1, 2, 1, 39, 39, 'good'),
(2, 1, 2, 2, 40, 40, 'top score'),
(6, 1, 2, 3, 30, 34, 'good'),
(7, 1, 2, 4, 40, 39, 'top'),
(8, 1, 2, 5, 57, 40, 'good'),
(9, 1, 2, 6, 54, 39, 'good'),
(10, 2, 2, 1, 48, 40, 'good'),
(11, 2, 2, 2, 60, 40, 'good'),
(12, 2, 2, 3, 57, 40, 'good'),
(13, 2, 2, 4, 57, 40, 'good'),
(15, 2, 2, 5, 48, 40, 'good'),
(16, 2, 2, 6, 59, 39, 'good'),
(17, 3, 2, 1, 53, 34, 'good'),
(18, 3, 2, 2, 40, 40, 'good'),
(19, 3, 2, 3, 48, 40, 'good'),
(20, 3, 2, 4, 40, 34, 'good'),
(21, 3, 2, 5, 49, 34, 'good'),
(22, 3, 2, 6, 54, 34, 'good'),
(23, 4, 2, 1, 59, 40, 'good'),
(24, 4, 2, 2, 53, 40, 'good'),
(25, 4, 2, 3, 59, 40, 'good'),
(26, 4, 2, 4, 58, 40, 'good'),
(27, 4, 2, 5, 58, 40, 'good'),
(28, 4, 2, 6, 59, 40, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `stu_tbl`
--

CREATE TABLE IF NOT EXISTS `stu_tbl` (
  `stu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `stu_tbl`
--

INSERT INTO `stu_tbl` (`stu_id`, `f_name`, `l_name`, `gender`, `dob`, `pob`, `address`, `phone`, `email`, `note`) VALUES
(5, 'SHRINIVASMURTHY', 'V', 'Male', '1995-06-20', 'MASKI', 'BELLARY', '777775555', 'srinivasmurthy.v@gmail.com', '1st'),
(6, 'Girish ', 'Naik', 'Male', '1995-07-20', 'sindagi', 'bijapur', '7204485181', 'girish.lnaik@gmail.com', '1st'),
(7, 'harish', 'naik', 'Male', '1993-04-15', 'bellary', 'bellary', '555555555', 'harish.naik@gmail.com', '2nd '),
(8, 'mahesh', 'kumar', 'Male', '1995-12-20', 'shimogga', 'shivamogga', '123456789', 'mahesh@gmail.com', '1st'),
(9, 'ajay kumar', 'v', 'Male', '1993-02-12', 'bellary', 'bellary', '123987456', 'ajaykumar@gmail.com', '1st'),
(10, 'arjun', 'kumar', 'Male', '1995-01-30', 'indi', 'bijapur', '2454353453', 'arjun@gmail.com', '1st'),
(11, 'shruthika', 'N', 'Female', '1995-11-01', 'shedbhal', 'balgavi', '555566664', 'shruthika@gmail.com', '1st'),
(12, 'swati', 'kumari', 'Female', '1995-03-30', 'bijapur', 'bijapur', '8789456123', 'swati@gmail.com', '1st'),
(13, 'manoj', 'kumar', 'Male', '1994-04-23', 'BELLARY', 'BEllary', '7859952254', 'manoj@gmail.com', '3rd'),
(14, 'manju', 'kumar', 'Male', '1995-02-10', 'bellary', 'bellary', '77596244522', 'manju@gmail.com', '3rd');

-- --------------------------------------------------------

--
-- Table structure for table `sub_tbl`
--

CREATE TABLE IF NOT EXISTS `sub_tbl` (
  `sub_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faculties_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sub_tbl`
--

INSERT INTO `sub_tbl` (`sub_id`, `faculties_id`, `teacher_id`, `semester`, `sub_name`, `note`) VALUES
(1, 2, 1, '1', 'Web Programming', 'HTML and CSS'),
(2, 2, 2, '1', 'OOP and C++', 'Part of C Language'),
(3, 2, 3, '2', 'English for Computing', 'part 2'),
(4, 2, 4, '2', 'Network', 'part2'),
(5, 2, 5, '2', 'VB.Net', 'part 2'),
(6, 2, 6, '2', 'Database', 'part 2'),
(7, 4, 7, '3', 'FS', 'asfdghgfdc');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE IF NOT EXISTS `teacher_tbl` (
  `teacher_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `salary` float NOT NULL,
  `married` char(10) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`teacher_id`, `f_name`, `l_name`, `gender`, `dob`, `pob`, `address`, `degree`, `salary`, `married`, `phone`, `email`, `note`) VALUES
(7, 'Ambarish', 'n', 'Male', '1985-02-12', 'bangalore', 'bangalore', 'Master', 25000, 'No', '7456689712', 'amb@gmail.com', 'excelent'),
(8, 'geetha', 'n', 'Male', '1988-12-25', 'bidar', 'bidar', 'P.HD', 0, 'Yes', '745514463', 'geetha@gmail.com', 'excelent');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE IF NOT EXISTS `users_tbl` (
  `u_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` char(10) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `username`, `password`, `type`, `note`) VALUES
(1, 'admin', 'admin', 'creator', 'creator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
