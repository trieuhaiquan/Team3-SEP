-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2016 at 03:35 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mntime`
--

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

CREATE TABLE IF NOT EXISTS `todolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work` varchar(255) NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `etimereal` datetime NOT NULL,
  `date` date NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `todolist`
--

INSERT INTO `todolist` (`id`, `work`, `stime`, `etime`, `etimereal`, `date`, `trangthai`) VALUES
(4, 'Quan test 2', '03:02:00', '17:04:00', '0000-00-00 00:00:00', '2016-04-21', 0),
(5, 'test Today', '06:02:00', '22:04:00', '0000-00-00 00:00:00', '2016-04-20', 0),
(6, 'Test lần cuối', '07:02:00', '21:04:00', '0000-00-00 00:00:00', '2016-04-21', 0),
(7, 'Test lần cuối 2', '08:02:00', '21:04:00', '0000-00-00 00:00:00', '2016-04-21', 0),
(8, 'Quân Test To Do List', '07:50:00', '09:50:00', '0000-00-00 00:00:00', '2016-04-21', 0),
(9, 'hỌC php Nâng cao', '18:00:00', '21:00:00', '0000-00-00 00:00:00', '2016-04-20', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
