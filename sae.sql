-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2013 at 10:12 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sae`
--
CREATE DATABASE IF NOT EXISTS `sae` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sae`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `user`, `pass`, `email`) VALUES
(1, 'user1', 'pass1', 'user@pass.com'),
(2, 'user2', 'pass2', 'user2@pass2.com'),
(3, 'user3', 'pass3', 'user3@pass3.com'),
(4, 'user4', 'pass4', 'user4@pass4.com');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `id_pol` int(5) NOT NULL,
  `id_tip` int(5) NOT NULL,
  `id_velicina` int(5) NOT NULL,
  `lager` int(10) NOT NULL,
  `cena` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `naziv`, `opis`, `slika`, `id_pol`, `id_tip`, `id_velicina`, `lager`, `cena`) VALUES
(1, 'Kosulja na cikcak', 'Ut urna tellus, pellentesque eget dapibus non, elementum nec turpis. Curabitur ut dolor ut nulla fermentum cursus. Cras vestibulum laoreet turpis in dictum. Phasellus nisi felis, faucibus nec elementum ut, blandit quis neque.', '', 1, 1, 2, 30, 2499),
(2, 'Duskerica Russel', 'rum mi in sem aliquet mollis. Nunc ut odio purus. Maecenas vel viverra quam. Vivamus lacus elit, gravida eget dignissim nec, accumsan eget massa.', '', 2, 8, 3, 10, 4599);

-- --------------------------------------------------------

--
-- Table structure for table `pol`
--

CREATE TABLE IF NOT EXISTS `pol` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pol`
--

INSERT INTO `pol` (`id`, `naziv`) VALUES
(1, 'muski'),
(2, 'zenski'),
(3, 'deciji');

-- --------------------------------------------------------

--
-- Table structure for table `tip`
--

CREATE TABLE IF NOT EXISTS `tip` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tip`
--

INSERT INTO `tip` (`id`, `naziv`) VALUES
(1, 'kosulja'),
(2, 'pantalone'),
(3, 'trenerka'),
(4, 'majica'),
(5, 'suknja'),
(6, 'haljina'),
(7, 'dzemper'),
(8, 'dukserica');

-- --------------------------------------------------------

--
-- Table structure for table `velicina`
--

CREATE TABLE IF NOT EXISTS `velicina` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `velicina`
--

INSERT INTO `velicina` (`id`, `naziv`) VALUES
(11, 'XXL'),
(12, 'XL'),
(13, 'L'),
(14, 'M'),
(15, 'S'),
(16, 'XS');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
