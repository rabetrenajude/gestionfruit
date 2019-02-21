-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2019 at 10:07 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ges_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `friut_sortant`
--

CREATE TABLE IF NOT EXISTS `friut_sortant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(5) NOT NULL,
  `quantite_sortant` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fruit`
--

CREATE TABLE IF NOT EXISTS `fruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(20) NOT NULL,
  `nombre_entrant` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fruit`
--

INSERT INTO `fruit` (`id`, `description`, `nombre_entrant`) VALUES
(4, 'ORANGE', 2),
(5, 'MANGUE', 2),
(6, 'ORANGE', 1),
(7, 'ORANGE', 1),
(8, 'MANGUE', 2),
(9, 'ORANGE', 1),
(10, 'ORANGE', 3);

-- --------------------------------------------------------

--
-- Table structure for table `fruit_sortant`
--

CREATE TABLE IF NOT EXISTS `fruit_sortant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(20) NOT NULL,
  `quantite_sortant` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fruit_sortant`
--

INSERT INTO `fruit_sortant` (`id`, `designation`, `quantite_sortant`) VALUES
(2, 'ORANGE', 1),
(3, 'MANGUE', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
