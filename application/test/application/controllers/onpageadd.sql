-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2015 at 11:59 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cmsv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `onpageadd`
--

CREATE TABLE IF NOT EXISTS `onpageadd` (
`add_id` int(8) NOT NULL,
  `add_contact` varchar(25) NOT NULL DEFAULT 'NULL',
  `add_name` varchar(150) NOT NULL,
  `add_link` varchar(150) NOT NULL,
  `add_doc` varchar(150) NOT NULL,
  `add_rate` varchar(15) NOT NULL,
  `add_page` varchar(100) NOT NULL,
  `add_added` date NOT NULL,
  `add_added_for` int(8) NOT NULL,
  `add_status` smallint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `onpageadd`
--
ALTER TABLE `onpageadd`
 ADD UNIQUE KEY `add_name` (`add_name`), ADD KEY `add_id` (`add_id`), ADD KEY `add_id_2` (`add_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `onpageadd`
--
ALTER TABLE `onpageadd`
MODIFY `add_id` int(8) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
