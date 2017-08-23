-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2017 at 02:27 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yubrajpo_inceptioncms`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(8) NOT NULL,
  `about_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `about_desc` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `about_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `about_added` date NOT NULL,
  `about_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_name`, `about_desc`, `about_image`, `about_added`, `about_status`) VALUES
(17, 'नेपालका लागि भारतीय राजदूत', '<p>नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत</p>\r\n\r\n<p>नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत</p>\r\n\r\n<p>नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत</p>\r\n\r\n<p>नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत</p>\r\n\r\n<p>नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत</p>\r\n\r\n<p>नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूतनेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत&nbsp;नेपालका लागि भारतीय राजदूत</p>\r\n', '', '2015-04-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(8) NOT NULL,
  `admin_full_name` varchar(25) NOT NULL,
  `admin_user_id` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_activated` tinyint(2) NOT NULL DEFAULT '0',
  `admin_created` date NOT NULL,
  `admin_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_full_name`, `admin_user_id`, `admin_password`, `admin_activated`, `admin_created`, `admin_status`) VALUES
(1, 'Green Paper', 'admin@admin.com', 'admin', 0, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_modules`
--

CREATE TABLE `admin_modules` (
  `ad_mod_id` int(8) NOT NULL,
  `ad_id` int(8) NOT NULL,
  `mod_id` int(8) NOT NULL,
  `ad_mod_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `add_id` int(8) NOT NULL,
  `add_contact` varchar(25) NOT NULL DEFAULT 'NULL',
  `add_name` varchar(150) NOT NULL,
  `add_link` varchar(150) NOT NULL,
  `add_doc` varchar(150) NOT NULL,
  `add_rate` varchar(15) NOT NULL,
  `add_added` date NOT NULL,
  `add_added_for` int(8) NOT NULL,
  `add_status` smallint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`add_id`, `add_contact`, `add_name`, `add_link`, `add_doc`, `add_rate`, `add_added`, `add_added_for`, `add_status`) VALUES
(3, '9804552309', 'Hero Honda', 'http://www.facebook.com', '23d184e1fab72cf3075d4fb205d8acec.gif', '1000', '2015-09-24', 22, 1),
(2, '9804552309', 'Suzuki', 'http://www.facebook.com', '2215cbfdf6a382d5b0b717fbc9eeebfc.gif', '1000', '2015-09-16', 12, 1),
(1, '9804552309', 'Test account', 'http://localhost/amd/', '64a05b240da8c620bf26a7ff6d3fd7a6.gif', '3000', '2015-09-16', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(8) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `ord` int(3) NOT NULL,
  `cat_created` date NOT NULL,
  `cat_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_desc`, `ord`, `cat_created`, `cat_status`) VALUES
(3, 'समाचार ', '', 0, '2015-09-07', 1),
(4, 'समाज', '', 1, '2015-09-07', 1),
(5, 'बिबिध ', '', 1, '2015-09-07', 1),
(6, 'अर्थ', '', 3, '2015-09-21', 1),
(7, 'आइटि', '', 6, '2015-09-21', 1),
(8, 'मनोरञ्जन', '', 14, '2015-09-21', 1),
(9, 'स्वास्थ्य', '', 8, '2015-09-24', 1),
(10, 'वातावरण', '', 11, '2015-09-24', 1),
(11, 'पर्यटन', '', 9, '2015-09-24', 1),
(12, 'कृषि', '', 10, '2015-09-24', 1),
(13, 'बैंक', '', 5, '2015-09-24', 1),
(14, 'English', '', 2, '2015-09-26', 1),
(15, 'बिदेशमा-नेपाली ', '', 12, '2015-09-26', 1),
(16, 'उधम ', '', 4, '2015-10-04', 1),
(17, 'अटो ', '', 7, '2015-10-04', 1),
(19, 'पाठक ', '', 13, '2015-10-04', 1),
(20, 'नयाँ-प्रबिधी', '', 10, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('05a3b0dfcaae35ec688e6772c8daf768', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429628917, ''),
('2a15650aee3c733018a75ccfd7e48ecd', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429683479, ''),
('358f9d3dcc138063ec904e0cf26560f8', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429687152, ''),
('4bac8e5baa613a6539cbc50c50a0fdce', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429696661, ''),
('51dff63edc6275e74112d5b213de34b1', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429594087, ''),
('63f10531121ec28def3c6321a78f77b5', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429545976, ''),
('863ac4f1653354ef9ce0fa4dde9eadad', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429684343, ''),
('b792a4d33836457e72d95ca9425f524b', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429511703, ''),
('beb394aceb45b896442470b2e6fb2a19', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429685380, ''),
('e773be9bf745f7a9e2a99b67f1a75d19', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', 1429720544, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_links`
--

CREATE TABLE `contact_links` (
  `c_id` int(8) NOT NULL,
  `name` varchar(25) NOT NULL,
  `link` varchar(250) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_links`
--

INSERT INTO `contact_links` (`c_id`, `name`, `link`, `status`) VALUES
(1, 'Facebook', 'http://facebook.com', 1),
(2, 'Google+', 'http://plus.google.com', 1),
(3, 'Twitter', 'http://twitter.com', 1),
(4, 'LinkedIn', 'http://linkedin.com', 1),
(5, 'YouTube', 'http://youtube.com', 1),
(6, 'Skype', 'http://skype.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(8) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `subject` varchar(250) COLLATE utf8_bin NOT NULL,
  `street` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  `city` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  `state` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  `postcode` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  `country` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  `phone` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  `source` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  `date_posted` date NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `is_view` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `name`, `email`, `subject`, `street`, `city`, `state`, `postcode`, `country`, `phone`, `source`, `date_posted`, `message`, `is_view`) VALUES
(2, 'Chitru', 'sc@gmail.com', 'this is a test mess', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2015-08-17', 'this is a test', 1),
(3, 'Yubraj, Pokharel', 'yubraj.pokharel555@gmail.com', '', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '09804557896', 'undefined', '2015-09-07', 'this is a test message', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gall_id` int(8) NOT NULL,
  `gall_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gall_type` varchar(25) CHARACTER SET utf8 NOT NULL,
  `gall_desc` mediumtext CHARACTER SET utf8 NOT NULL,
  `gall_created` date NOT NULL,
  `gall_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gall_id`, `gall_name`, `gall_type`, `gall_desc`, `gall_created`, `gall_status`) VALUES
(1, 'अझै उस्तै छ भक्तपुरको सुन्दरता', '0', '३ असार, काठमाडौं । वैशाख १२ र २९ को विनाशकारी भूकम्पपछि धेरैलाई काठमाडौं उपत्यकाको सुन्दरता अब बाँकी छैन कि भन्ने लाग्यो । झन नेपालको काला संस्कृति हेर्न आउने पर्यटकका लागि त अब के नै बाँकी होला र जस्तो पनि पर्‍यो ।\r\nखासगरी विदेशी सञ्चार माध्यमहरुमा प्रकाशित तथा प्रशारित भत्किएका बसन्तुपर र धरहराजस्ता तस्वीरले धेरैको दिमागमा त्यही  खण्डहर तस्वीर घुमिरहेको छ । तर, बालो बादलमा पनि चाँदीको घेरा हुन्छ भनेजस्तै अवस्था छ उपत्यकाको ।', '2015-09-20', 1),
(2, 'स्वर्ग जस्तै लाग्ने मुस्ताङको मुस्कान (फोटो फिचर)', '0', 'अहिले मुस्ताङ घुम्न जाने सिजन त होइन । तर, फापर फुलेको मुस्ताङ हेर्न रहरले हामी दुई साता अघि पुगेका थियौं । प्लेनबाट जान खोजेका थियौं तर, टिकट नपाएपछि हामी सार्वजनिक सवारीबाटै बेनीबाट रुप्से छहारा पार गरेर धासाको बाटो जोमसोम पुग्यौं ।\r\nहाम्रो बास जोमसोममा भयो । त्यहाँबाट हामी घमी भन्ने ठाउँमा पुग्यौं । आधी बाटोसम्म गाडीमा बाँकी हिडेरै त्यहाँ पुग्यौं । गाडी त चल्छ तर, ट्रकका लागि हामी डिँडेर गएका थियौं । घमीदेखि अप्पर मुस्ताङ सुरु भयो । हामी हिडेर चराङ पुग्यौं । त्यहाँ एक दिन बस्यौं र भोलिपल्ट लोमाङथाङ पुग्यौं ।\r\nभ्रमणका क्रममा छोसेर गयौं, जहाँ यारथुङ अर्थात हर्स राइडिङ हुन्छ । झोङ गुफामा पनि पुग्ने अबसर मिल्यो । लोमाङथाङ फर्किएर फुवा, थोङ्गार, छोनुप पुगियो । यो ठाउँमा कमै मात्र पर्यटकहरु जाने गरेका रहेछन् । तर, हामीलाई यो गाउँको सुन्दरताले निकै लोभाग्यो ।\r\n', '2015-09-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gall_images`
--

CREATE TABLE `gall_images` (
  `gall_img_id` int(8) NOT NULL,
  `gall_id` varchar(8) COLLATE utf8_bin NOT NULL,
  `image_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `caption` varchar(250) COLLATE utf8_bin NOT NULL,
  `image_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gall_images`
--

INSERT INTO `gall_images` (`gall_img_id`, `gall_id`, `image_name`, `caption`, `image_status`) VALUES
(7, '2', '2ef1ad750412cc00088cab450690490a.jpg', 'मुस्ताङ', 1),
(8, '2', 'c7b8d87a96aedadba8184d939e729e7a.jpg', 'मुस्ताङ', 1),
(9, '2', 'b3ac1f2485a6bb67706a4010a42ab87b.jpg', 'मुस्ताङ', 1),
(10, '2', '2a62a5a917d063009f3b508e7161b306.jpg', 'मुस्ताङ', 1),
(11, '2', 'cb17c0d56750556897e67ffc8fe6e027.jpg', 'मुस्ताङ', 1),
(12, '2', '9b59b1ee1602817f876b7db05b5a9113.jpg', 'मुस्ताङ', 1),
(13, '2', 'faae8b99af1c39539f024e2b81620991.jpg', 'मुस्ताङ', 1),
(14, '1', '493cf2550953d26179ec79c727b181e7.jpg', 'भक्तपुरको सुन्दरता', 1),
(15, '1', 'd7cb9065de16be8ed4b3cf44cfc9dcd9.jpg', 'भक्तपुरको सुन्दरता', 1),
(16, '1', '57855ac594bc7575a83182a34e086118.jpg', 'भक्तपुरको सुन्दरता', 1),
(17, '1', 'c1010c9e4fe5b71835434843192a0453.jpg', 'भक्तपुरको सुन्दरता', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gall_videos`
--

CREATE TABLE `gall_videos` (
  `gall_vid_id` int(8) NOT NULL,
  `gall_id` int(8) NOT NULL,
  `video` varchar(250) COLLATE utf8_bin NOT NULL,
  `video_status` tinyint(2) NOT NULL DEFAULT '1',
  `image` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `gall_videos`
--

INSERT INTO `gall_videos` (`gall_vid_id`, `gall_id`, `video`, `video_status`, `image`, `title`) VALUES
(3, 2, 'lpC_na-6YcM', 1, 'd8dc9ff2508dd47c247d3d0dd6f57881.PNG', 'एलिनाको तीजमा छमछमी'),
(4, 2, 'wunnYrA_cvA', 1, '194b98dbbd628bc076ff84eab3369766.PNG', 'मेरो त मायाले ट्याक्सी चलाउने'),
(5, 2, 'ypGTRcexaxY', 1, '825af5159ff2b9f3b3b6cef48a9c143d.PNG', 'साइली माइलीलाई बाटोमै लाहुरेले रोकेपछि');

-- --------------------------------------------------------

--
-- Table structure for table `intial_setup`
--

CREATE TABLE `intial_setup` (
  `setup_id` int(11) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `welcome_note` mediumtext NOT NULL,
  `comp_desc` text NOT NULL,
  `ready` text,
  `training` text,
  `secondary` text,
  `migrants` text NOT NULL,
  `other` text NOT NULL,
  `comp_country` varchar(50) NOT NULL,
  `comp_city` varchar(50) NOT NULL,
  `comp_street` varchar(100) NOT NULL,
  `comp_landline` varchar(13) NOT NULL,
  `comp_mobile` varchar(15) NOT NULL,
  `comp_email` varchar(50) NOT NULL,
  `comp_city_2` varchar(50) DEFAULT NULL,
  `comp_country_2` varchar(50) DEFAULT NULL,
  `comp_landline_2` varchar(50) DEFAULT NULL,
  `comp_mobile_2` varchar(15) DEFAULT NULL,
  `comp_email_2` varchar(50) DEFAULT NULL,
  `comp_street_2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `intial_setup`
--

INSERT INTO `intial_setup` (`setup_id`, `site_name`, `welcome_note`, `comp_desc`, `ready`, `training`, `secondary`, `migrants`, `other`, `comp_country`, `comp_city`, `comp_street`, `comp_landline`, `comp_mobile`, `comp_email`, `comp_city_2`, `comp_country_2`, `comp_landline_2`, `comp_mobile_2`, `comp_email_2`, `comp_street_2`) VALUES
(0, 'Inception CMS', '0', '', '<p>Please consult with our management team and ask quotation about price, size and placement of advertisement.</p>\r\n\r\n<p><strong>Onlinekhabar.com</strong><br />\r\nInceptionCMS<br />\r\nNew Baneshwor, Kathmandu, Nepal.</p>\r\n\r\n<p><strong>News desk</strong><br />\r\n<strong>Phone:</strong>&nbsp;XXX-XXX-XXX<br />\r\n<strong>Email:</strong>&nbsp;inceptionCMS.com</p>\r\n\r\n<p><strong>Marketing:</strong><br />\r\n<strong>Phone:</strong>&nbsp;+XXX-XXXXXXX,<br /></p>\r\n', '<p><strong>Onlinekhabar.com</strong><br />\r\nInceptionCMS<br />\r\nNew Baneshwor, Kathmandu, Nepal.</p>\r\n\r\n<p><strong>News desk</strong><br />\r\n<strong>Phone:</strong>&nbsp;XXX-XXX-XXX<br />\r\n<strong>Email:</strong>&nbsp;inceptionCMS.com</p>\r\n\r\n<p><strong>Marketing:</strong><br />\r\n<strong>Phone:</strong>&nbsp;+XXX-XXXXXXX,<br /></p>\r\n', '0', '<p>Migrants seeking to improve their English language proficiency and keen to enter Australian educational institutes and work force .....English proficiency tests like IELTS, TOEFL , CV review and Preparation support for psychometric and personal interviews.....more</p>\r\n', '<p>- Schools ,educational institutions ,Industry &amp; governmental and non governmental agencies looking for specific high end niche services in education, training, assessment services, training packages preparation&nbsp;<br />\r\n- Individuals and groups to intend to broaden their skill set through part time paid assignments through flexible work arangements in areas of their passion and in development of broader skills support through spectrum Skills platform &hellip;.more&nbsp;<br />\r\n- Individuals /families and Communities of Indian origin to park their ideas on Spectrum Surabhi..more</p>\r\n', 'Nepal', 'Kathmandu', 'Anamnagar', '+16414515139', '+16414515139', 'yubraj.pokharel555@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_track`
--

CREATE TABLE `ip_track` (
  `id` int(8) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `city` varchar(50) NOT NULL,
  `location` varchar(30) NOT NULL,
  `org` varchar(100) NOT NULL,
  `page` varchar(250) NOT NULL,
  `pc_name` varchar(100) NOT NULL,
  `visit_time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_track`
--

INSERT INTO `ip_track` (`id`, `ip`, `country`, `city`, `location`, `org`, `page`, `pc_name`, `visit_time`, `date`) VALUES
(129, '11:11:1', 'NP', '', '-27.0000,133.0000', 'AS15169 Google Inc.', '/summit/home', 'pc', '01:58:06', '2015-04-24'),
(130, '22:22:1', 'US', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '07:39:48', '2015-09-20'),
(131, '33:22:1', 'US', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '07:42:04', '2015-09-20'),
(132, '::1', '', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '07:43:20', '2015-09-20'),
(133, '::1', '', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '08:30:47', '2015-09-21'),
(134, '', '', '', '', '', '/yubrajpokharel.com/samples/newsportal//newsdetail/1', 'YubrajPokharel', '03:02:40', '2015-09-21'),
(135, '::1', '', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//newsdetail/35', 'YubrajPokharel', '07:23:42', '2015-09-22'),
(136, '', '', '', '', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '10:08:20', '2015-09-22'),
(137, '::1', '', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '01:53:16', '2015-09-23'),
(138, '::1', '', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '06:55:42', '2015-09-24'),
(139, '::1', '', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '06:40:01', '2015-09-25'),
(140, '::1', 'AU', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '04:45:57', '2015-09-26'),
(141, '::1', 'AU', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '03:39:01', '2015-10-02'),
(142, '', '', '', '', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '04:06:20', '2015-10-02'),
(143, '::1', 'AU', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '09:46:56', '2015-10-03'),
(144, '::1', 'AU', '', '-27.0000,133.0000', '', '/yubrajpokharel.com/samples/newsportal//', 'YubrajPokharel', '05:19:58', '2015-10-04'),
(145, '27.34.58.84', 'NP', 'Jawalakhel', '27.6667,85.3167', 'AS17501 WorldLink Communications Pvt Ltd', '/test/', 'adonis.havehost.com', '06:09:42', '2015-10-05'),
(146, '173.193.17.200', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/images/1', 'adonis.havehost.com', '06:34:08', '2015-10-05'),
(147, '31.13.113.80', 'IE', 'Kanturk', '52.1667,-8.9000', 'AS32934 Facebook, Inc.', '/test/images/1', 'adonis.havehost.com', '06:34:46', '2015-10-05'),
(148, '208.101.7.44', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/newsdetail/50', 'adonis.havehost.com', '06:35:10', '2015-10-05'),
(149, '31.13.113.77', 'IE', 'Kanturk', '52.1667,-8.9000', 'AS32934 Facebook, Inc.', '/test/newsdetail/50', 'adonis.havehost.com', '06:35:18', '2015-10-05'),
(150, '50.23.254.154', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/newsdetail/54', 'adonis.havehost.com', '06:36:16', '2015-10-05'),
(151, '31.13.113.79', 'IE', 'Kanturk', '52.1667,-8.9000', 'AS32934 Facebook, Inc.', '/test/newsdetail/54', 'adonis.havehost.com', '06:36:22', '2015-10-05'),
(152, '75.126.120.78', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/newsdetail/51', 'adonis.havehost.com', '06:39:53', '2015-10-05'),
(153, '27.34.51.16', 'NP', 'Jawalakhel', '27.6667,85.3167', 'AS17501 WorldLink Communications Pvt Ltd', '/test/', 'adonis.havehost.com', '09:30:16', '2015-10-05'),
(154, '113.199.227.178', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS23752 Nepal Telecommunications Corporation, Internet Services,', '/test/', 'adonis.havehost.com', '09:53:22', '2015-10-05'),
(155, '182.93.95.221', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS4007 Subisu Cablenet (Pvt) Ltd, Baluwatar, Kathmandu, Nepal', '/test/', 'adonis.havehost.com', '02:08:59', '2015-10-06'),
(156, '49.244.16.22', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS23752 Nepal Telecommunications Corporation, Internet Services,', '/test/', 'adonis.havehost.com', '07:21:21', '2015-10-06'),
(157, '38.99.82.194', 'US', '', '38.0000,-97.0000', 'AS174 Cogent Communications', '/test/', 'adonis.havehost.com', '02:03:24', '2015-10-06'),
(158, '38.99.82.211', 'US', '', '38.0000,-97.0000', 'AS174 Cogent Communications', '/test/newsdetail/24', 'adonis.havehost.com', '07:38:56', '2015-10-07'),
(159, '38.99.82.194', 'US', '', '38.0000,-97.0000', 'AS174 Cogent Communications', '/test/', 'adonis.havehost.com', '07:48:40', '2015-10-07'),
(160, '38.99.82.204', 'US', '', '38.0000,-97.0000', 'AS174 Cogent Communications', '/test/newsdetail/34', 'adonis.havehost.com', '10:18:10', '2015-10-07'),
(161, '50.23.254.154', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/newsdetail/34', 'adonis.havehost.com', '10:18:12', '2015-10-07'),
(162, '208.101.7.44', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/newsdetail/48', 'adonis.havehost.com', '10:52:13', '2015-10-07'),
(163, '184.173.90.200', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/newsdetail/31', 'adonis.havehost.com', '11:05:21', '2015-10-07'),
(164, '173.193.17.200', 'US', 'Dallas', '32.7813,-96.8020', 'AS36351 SoftLayer Technologies Inc.', '/test/newsdetail/30', 'adonis.havehost.com', '11:17:07', '2015-10-07'),
(165, '38.100.21.61', 'US', '', '38.0000,-97.0000', '', '/test/', 'adonis.havehost.com', '01:54:56', '2015-10-08'),
(166, '66.249.64.26', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'adonis.havehost.com', '02:22:22', '2015-10-08'),
(167, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images', 'adonis.havehost.com', '08:14:33', '2015-10-08'),
(168, '66.249.64.185', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/52', 'adonis.havehost.com', '08:15:10', '2015-10-08'),
(169, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/about-green-paper', 'adonis.havehost.com', '01:04:16', '2015-10-09'),
(170, '120.89.106.73', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS23752 Nepal Telecommunications Corporation, Internet Services,', '/test/', 'adonis.havehost.com', '01:21:40', '2015-10-09'),
(171, '182.93.90.50', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS4007 Subisu Cablenet (Pvt) Ltd, Baluwatar, Kathmandu, Nepal', '/test/', 'adonis.havehost.com', '05:24:15', '2015-10-09'),
(172, '202.51.88.59', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS4007 Subisu Cablenet (Pvt) Ltd, Baluwatar, Kathmandu, Nepal', '/test/', 'adonis.havehost.com', '05:33:46', '2015-10-09'),
(173, '66.249.64.106', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'adonis.havehost.com', '05:35:29', '2015-10-09'),
(174, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/assets/js/jquery.flexslider.js', 'adonis.havehost.com', '06:01:27', '2015-10-09'),
(175, '66.249.64.185', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/49', 'adonis.havehost.com', '07:11:47', '2015-10-09'),
(176, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/about-green-paper', 'adonis.havehost.com', '04:12:13', '2015-10-10'),
(177, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/17', 'adonis.havehost.com', '10:11:16', '2015-10-10'),
(178, '66.249.64.185', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos', 'adonis.havehost.com', '10:20:04', '2015-10-10'),
(179, '113.199.200.10', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS23752 Nepal Telecommunications Corporation, Internet Services,', '/test/', 'adonis.havehost.com', '11:19:54', '2015-10-10'),
(180, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/43', 'adonis.havehost.com', '01:00:31', '2015-10-11'),
(181, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/8', 'adonis.havehost.com', '01:13:07', '2015-10-11'),
(182, '66.249.64.185', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/19', 'adonis.havehost.com', '01:26:24', '2015-10-11'),
(183, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/4', 'adonis.havehost.com', '01:52:41', '2015-10-12'),
(184, '66.249.64.180', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/16', 'adonis.havehost.com', '02:34:12', '2015-10-12'),
(185, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/10', 'adonis.havehost.com', '02:08:13', '2015-10-13'),
(186, '66.249.64.185', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images/1', 'adonis.havehost.com', '05:19:39', '2015-10-14'),
(187, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/47', 'adonis.havehost.com', '11:29:29', '2015-10-14'),
(188, '', '', '', '', '', '/test/newsdetail/28', 'adonis.havehost.com', '11:26:57', '2015-10-16'),
(189, '', '', '', '', '', '/test/newsdetail/28', 'adonis.havehost.com', '12:49:06', '2015-10-17'),
(190, '', '', '', '', '', '/test/newsdetail/23', 'adonis.havehost.com', '05:35:42', '2015-10-18'),
(191, '66.249.64.185', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/24', 'adonis.havehost.com', '12:21:18', '2015-10-18'),
(192, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/5', 'adonis.havehost.com', '12:41:47', '2015-10-18'),
(193, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/20', 'adonis.havehost.com', '12:42:30', '2015-10-18'),
(194, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/23', 'adonis.havehost.com', '01:09:50', '2015-10-19'),
(195, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/26', 'adonis.havehost.com', '02:56:29', '2015-10-20'),
(196, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/56', 'adonis.havehost.com', '03:03:58', '2015-10-20'),
(197, '66.249.64.190', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/56', 'adonis.havehost.com', '10:53:17', '2015-10-26'),
(198, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/8', 'adonis.havehost.com', '10:57:42', '2015-10-26'),
(199, '66.249.64.185', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/36', 'adonis.havehost.com', '11:03:45', '2015-10-26'),
(200, '66.249.64.195', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/54', 'adonis.havehost.com', '12:43:57', '2015-10-27'),
(201, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/56', 'adonis.havehost.com', '08:50:33', '2015-11-02'),
(202, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/54', 'adonis.havehost.com', '01:08:58', '2015-11-03'),
(203, '157.55.39.242', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '04:34:02', '2015-11-03'),
(204, '66.249.67.187', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/4', 'adonis.havehost.com', '12:31:49', '2015-11-03'),
(205, '66.249.67.197', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/5', 'adonis.havehost.com', '12:32:19', '2015-11-03'),
(206, '66.249.67.205', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/11', 'adonis.havehost.com', '07:22:41', '2015-11-03'),
(207, '66.249.67.197', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/9', 'adonis.havehost.com', '03:37:08', '2015-11-04'),
(208, '66.249.67.187', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/3', 'adonis.havehost.com', '03:45:32', '2015-11-04'),
(209, '66.249.67.197', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/51', 'adonis.havehost.com', '06:59:16', '2015-11-05'),
(210, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/43', 'adonis.havehost.com', '05:53:54', '2015-11-06'),
(211, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/assets/js/jquery.flexslider.js', 'adonis.havehost.com', '07:56:18', '2015-11-08'),
(212, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images', 'adonis.havehost.com', '03:41:09', '2015-11-12'),
(213, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images/2', 'adonis.havehost.com', '03:43:46', '2015-11-12'),
(214, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/9', 'adonis.havehost.com', '03:45:10', '2015-11-12'),
(215, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/49', 'adonis.havehost.com', '01:05:08', '2015-11-13'),
(216, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/44', 'adonis.havehost.com', '01:46:57', '2015-11-13'),
(217, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/36', 'adonis.havehost.com', '01:54:09', '2015-11-13'),
(218, '157.55.39.20', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '02:13:14', '2015-11-13'),
(219, '157.55.39.229', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '08:05:19', '2015-11-16'),
(220, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/11', 'adonis.havehost.com', '04:10:47', '2015-11-16'),
(221, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/10', 'adonis.havehost.com', '09:10:45', '2015-11-16'),
(222, '207.46.13.155', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '05:10:31', '2015-11-21'),
(223, '207.46.13.52', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '07:08:29', '2015-11-21'),
(224, '207.46.13.167', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '01:53:00', '2015-11-25'),
(225, '157.55.39.172', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/42', 'adonis.havehost.com', '12:57:37', '2015-11-25'),
(226, '40.77.167.4', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/newsdetail/41', 'adonis.havehost.com', '12:58:09', '2015-11-25'),
(227, '207.46.13.164', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/44', 'adonis.havehost.com', '12:59:24', '2015-11-25'),
(228, '163.47.149.129', 'NP', '', '28.0000,84.0000', 'AS4007 Subisu Cablenet (Pvt) Ltd, Baluwatar, Kathmandu, Nepal', '/test/', 'adonis.havehost.com', '01:10:11', '2015-11-26'),
(229, '157.55.39.236', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/44', 'adonis.havehost.com', '10:00:16', '2015-11-27'),
(230, '157.55.39.26', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/42', 'adonis.havehost.com', '10:00:43', '2015-11-27'),
(231, '157.55.39.237', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/31', 'adonis.havehost.com', '11:50:43', '2015-11-27'),
(232, '157.55.39.237', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/6', 'adonis.havehost.com', '03:12:32', '2015-11-28'),
(233, '157.55.39.29', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/42', 'adonis.havehost.com', '04:42:40', '2015-11-30'),
(234, '157.55.39.236', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/44', 'adonis.havehost.com', '04:42:57', '2015-11-30'),
(235, '207.46.13.181', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/31', 'adonis.havehost.com', '04:44:06', '2015-11-30'),
(236, '207.46.13.0', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/41', 'adonis.havehost.com', '10:44:33', '2015-12-03'),
(237, '157.55.39.133', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/31', 'adonis.havehost.com', '10:44:54', '2015-12-03'),
(238, '157.55.39.235', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/44', 'adonis.havehost.com', '10:45:03', '2015-12-03'),
(239, '157.55.39.133', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '11:20:24', '2015-12-04'),
(240, '157.55.39.133', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '12:28:40', '2015-12-05'),
(241, '157.55.39.47', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/26', 'adonis.havehost.com', '02:21:00', '2015-12-06'),
(242, '157.55.39.113', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '08:45:50', '2015-12-07'),
(243, '157.55.39.148', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/12', 'adonis.havehost.com', '04:29:43', '2015-12-07'),
(244, '157.55.39.147', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/39', 'adonis.havehost.com', '04:30:11', '2015-12-07'),
(245, '40.77.167.53', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/category/11', 'adonis.havehost.com', '04:33:21', '2015-12-07'),
(246, '157.55.39.247', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/6', 'adonis.havehost.com', '04:35:18', '2015-12-07'),
(247, '157.55.39.147', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/48', 'adonis.havehost.com', '02:12:24', '2015-12-08'),
(248, '157.55.39.123', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/3', 'adonis.havehost.com', '05:36:51', '2015-12-09'),
(249, '40.77.167.53', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/newsdetail/37', 'adonis.havehost.com', '06:57:29', '2015-12-09'),
(250, '207.46.13.134', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/26', 'adonis.havehost.com', '06:58:34', '2015-12-09'),
(251, '157.55.39.147', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/35', 'adonis.havehost.com', '07:07:04', '2015-12-09'),
(252, '157.55.39.123', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/12', 'adonis.havehost.com', '12:06:43', '2015-12-10'),
(253, '157.55.39.147', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/13', 'adonis.havehost.com', '12:06:59', '2015-12-10'),
(254, '207.46.13.134', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/6', 'adonis.havehost.com', '12:12:25', '2015-12-10'),
(255, '157.55.39.0', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '10:59:03', '2015-12-12'),
(256, '157.55.39.1', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'adonis.havehost.com', '05:02:21', '2015-12-13'),
(257, '157.55.39.156', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/49', 'adonis.havehost.com', '05:12:33', '2015-12-13'),
(258, '157.55.39.0', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/50', 'adonis.havehost.com', '05:14:26', '2015-12-13'),
(259, '157.55.39.0', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '04:30:30', '2015-12-16'),
(260, '40.77.167.31', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/category/12', 'adonis.havehost.com', '08:45:23', '2015-12-18'),
(261, '40.77.167.81', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/category/13', 'adonis.havehost.com', '08:45:26', '2015-12-18'),
(262, '157.55.39.154', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/11', 'adonis.havehost.com', '08:46:50', '2015-12-18'),
(263, '40.77.167.49', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '11:17:22', '2015-12-20'),
(264, '157.55.39.0', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/46', 'adonis.havehost.com', '11:22:56', '2015-12-20'),
(265, '157.55.39.111', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/14', 'adonis.havehost.com', '11:34:56', '2015-12-20'),
(266, '40.77.167.76', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/category/10', 'adonis.havehost.com', '01:37:07', '2015-12-20'),
(267, '207.46.13.152', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/11', 'adonis.havehost.com', '05:58:07', '2015-12-22'),
(268, '157.55.39.22', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '09:36:28', '2015-12-24'),
(269, '207.46.13.4', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '10:55:42', '2015-12-24'),
(270, '40.77.167.68', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '10:59:41', '2015-12-24'),
(271, '207.46.13.152', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '11:20:52', '2015-12-24'),
(272, '157.55.39.219', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '06:45:41', '2015-12-26'),
(273, '40.77.167.68', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '06:48:19', '2015-12-26'),
(274, '40.77.167.75', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '06:49:15', '2015-12-26'),
(275, '157.55.39.197', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/videos', 'adonis.havehost.com', '04:53:33', '2015-12-29'),
(276, '207.46.13.172', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '11:24:28', '2015-12-29'),
(277, '157.55.39.202', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '11:30:20', '2015-12-29'),
(278, '157.55.39.5', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/images/1', 'adonis.havehost.com', '12:53:15', '2015-12-29'),
(279, '157.55.39.6', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '12:22:15', '2015-12-30'),
(280, '157.55.39.5', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/10', 'adonis.havehost.com', '10:56:23', '2015-12-31'),
(281, '207.46.13.21', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/14', 'adonis.havehost.com', '08:29:13', '2016-01-01'),
(282, '157.55.39.51', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/10', 'adonis.havehost.com', '09:30:28', '2016-01-01'),
(283, '40.77.167.12', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/category/12', 'adonis.havehost.com', '09:38:00', '2016-01-01'),
(284, '157.55.39.52', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/6', 'adonis.havehost.com', '10:08:49', '2016-01-01'),
(285, '157.55.39.79', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/category/11', 'adonis.havehost.com', '11:38:31', '2016-01-01'),
(286, '157.55.39.52', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '01:26:58', '2016-01-02'),
(287, '157.55.39.109', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '01:27:12', '2016-01-02'),
(288, '157.55.39.79', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '02:40:19', '2016-01-02'),
(289, '207.46.13.17', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/images', 'adonis.havehost.com', '06:47:10', '2016-01-03'),
(290, '207.46.13.17', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '11:19:52', '2016-01-04'),
(291, '207.46.13.132', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '11:21:37', '2016-01-04'),
(292, '207.46.13.4', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '11:25:36', '2016-01-04'),
(293, '207.46.13.17', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '09:42:27', '2016-01-05'),
(294, '157.55.39.13', 'US', 'Redmond', '47.6740,-122.1215', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'adonis.havehost.com', '12:40:37', '2016-01-06'),
(295, '40.77.167.34', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '01:39:33', '2016-01-06'),
(296, '157.55.39.135', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'adonis.havehost.com', '03:37:04', '2016-01-07'),
(297, '207.46.13.81', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '05:12:57', '2016-01-08'),
(298, '157.55.39.13', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '05:17:12', '2016-01-08'),
(299, '157.55.39.240', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '03:00:09', '2016-01-10'),
(300, '157.55.39.71', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '03:00:27', '2016-01-10'),
(301, '207.46.13.126', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/26', 'adonis.havehost.com', '03:00:52', '2016-01-10'),
(302, '40.77.167.34', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/newsdetail/25', 'adonis.havehost.com', '03:02:20', '2016-01-10'),
(303, '207.46.13.88', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '05:20:21', '2016-01-13'),
(304, '157.55.39.43', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '05:22:28', '2016-01-13'),
(305, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/2', 'adonis.havehost.com', '06:59:03', '2016-01-13'),
(306, '207.46.13.52', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'adonis.havehost.com', '07:30:34', '2016-01-13'),
(307, '157.55.39.16', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '08:04:29', '2016-01-15'),
(308, '207.46.13.88', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'adonis.havehost.com', '08:07:27', '2016-01-15'),
(309, '157.55.39.72', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'adonis.havehost.com', '09:19:13', '2016-01-15'),
(310, '157.55.39.243', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'adonis.havehost.com', '02:48:59', '2016-01-17'),
(311, '207.46.13.191', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '02:49:07', '2016-01-17'),
(312, '157.55.39.17', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/videos', 'adonis.havehost.com', '02:49:19', '2016-01-17'),
(313, '157.55.39.61', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'adonis.havehost.com', '08:33:12', '2016-01-19'),
(314, '207.46.13.64', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/videos', 'adonis.havehost.com', '08:33:48', '2016-01-19'),
(315, '207.46.13.107', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '08:33:58', '2016-01-19'),
(316, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/51', 'adonis.havehost.com', '09:36:55', '2016-01-19'),
(317, '207.46.13.64', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '08:58:41', '2016-01-20'),
(318, '40.77.167.73', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/newsdetail/30', 'adonis.havehost.com', '08:58:47', '2016-01-20'),
(319, '157.55.39.61', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'adonis.havehost.com', '09:00:23', '2016-01-20'),
(320, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/12', 'adonis.havehost.com', '06:02:47', '2016-01-21'),
(321, '207.46.13.133', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/45', 'adonis.havehost.com', '05:18:00', '2016-01-22'),
(322, '157.55.39.34', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'adonis.havehost.com', '05:18:09', '2016-01-22'),
(323, '207.46.13.153', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/videos', 'adonis.havehost.com', '05:18:28', '2016-01-22'),
(324, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/50', 'adonis.havehost.com', '06:38:45', '2016-01-24'),
(325, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images', 'adonis.havehost.com', '07:01:31', '2016-01-24'),
(326, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/11', 'adonis.havehost.com', '07:05:49', '2016-01-24'),
(327, '40.77.167.50', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/images', 'adonis.havehost.com', '05:45:47', '2016-01-24'),
(328, '40.77.167.32', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '12:42:18', '2016-01-25'),
(329, '207.46.13.75', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'adonis.havehost.com', '12:42:53', '2016-01-25'),
(330, '40.77.167.50', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/images', 'adonis.havehost.com', '12:59:38', '2016-01-25'),
(331, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/16', 'adonis.havehost.com', '03:14:56', '2016-01-27'),
(332, '40.77.167.11', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/advertisement', 'adonis.havehost.com', '01:50:04', '2016-01-27'),
(333, '157.55.39.211', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/38', 'adonis.havehost.com', '01:50:11', '2016-01-27'),
(334, '40.77.167.22', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/videos', 'adonis.havehost.com', '03:26:09', '2016-01-27'),
(335, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/10', 'adonis.havehost.com', '04:36:28', '2016-01-27'),
(336, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/19', 'adonis.havehost.com', '04:44:26', '2016-01-28'),
(337, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/13', 'adonis.havehost.com', '06:09:59', '2016-01-28'),
(338, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/10', 'adonis.havehost.com', '07:44:40', '2016-01-28'),
(339, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/17', 'adonis.havehost.com', '12:08:11', '2016-01-29'),
(340, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'adonis.havehost.com', '12:11:57', '2016-01-30'),
(341, '157.55.39.255', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'adonis.havehost.com', '12:55:03', '2016-01-30'),
(342, '157.55.39.111', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '12:55:24', '2016-01-30'),
(343, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/10', 'adonis.havehost.com', '04:15:13', '2016-01-30'),
(344, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/13', 'adonis.havehost.com', '05:12:27', '2016-01-31'),
(345, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/10', 'adonis.havehost.com', '05:13:56', '2016-01-31'),
(346, '157.55.39.168', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/12', 'adonis.havehost.com', '10:19:29', '2016-02-01'),
(347, '40.77.167.90', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/blogdetail/11', 'adonis.havehost.com', '10:20:27', '2016-02-01'),
(348, '191.232.136.39', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/blogdetail/9', 'adonis.havehost.com', '10:39:32', '2016-02-01'),
(349, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/10', 'adonis.havehost.com', '09:48:47', '2016-02-01'),
(350, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/17', 'adonis.havehost.com', '02:23:57', '2016-02-02'),
(351, '157.55.39.248', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/11', 'adonis.havehost.com', '07:53:11', '2016-02-03'),
(352, '157.55.39.215', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/9', 'adonis.havehost.com', '07:53:17', '2016-02-03'),
(353, '157.55.39.225', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/10', 'adonis.havehost.com', '08:08:43', '2016-02-03'),
(354, '207.46.13.67', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/44', 'adonis.havehost.com', '05:08:09', '2016-02-06'),
(355, '40.77.167.67', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '10:44:49', '2016-02-06'),
(356, '40.77.167.67', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '01:13:17', '2016-02-07'),
(357, '207.46.13.67', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '01:13:42', '2016-02-07'),
(358, '207.46.13.67', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '01:43:50', '2016-02-08'),
(359, '40.77.167.67', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '01:44:09', '2016-02-08'),
(360, '66.249.64.240', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/11', 'adonis.havehost.com', '08:06:02', '2016-02-08'),
(361, '157.55.39.59', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '08:13:08', '2016-02-08'),
(362, '66.249.64.250', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'adonis.havehost.com', '12:43:22', '2016-02-09'),
(363, '157.55.39.59', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '01:18:00', '2016-02-09'),
(364, '157.55.39.107', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '01:18:10', '2016-02-09'),
(365, '40.77.167.94', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'adonis.havehost.com', '06:35:34', '2016-02-09'),
(366, '40.77.167.38', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/advertisement', 'adonis.havehost.com', '06:35:41', '2016-02-09'),
(367, '40.77.167.48', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '07:15:32', '2016-02-10'),
(368, '157.55.39.139', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/38', 'adonis.havehost.com', '08:14:29', '2016-02-10'),
(369, '157.55.39.59', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/9', 'adonis.havehost.com', '08:20:17', '2016-02-10'),
(370, '157.55.39.52', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/11', 'adonis.havehost.com', '10:53:10', '2016-02-10'),
(371, '66.249.64.245', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/11', 'adonis.havehost.com', '10:22:00', '2016-02-10'),
(372, '157.55.39.42', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/videos', 'adonis.havehost.com', '02:21:23', '2016-02-11'),
(373, '157.55.39.247', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'adonis.havehost.com', '01:25:41', '2016-02-14'),
(374, '40.77.167.24', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'adonis.havehost.com', '01:25:52', '2016-02-14'),
(375, '40.77.167.83', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/contact-us', 'adonis.havehost.com', '01:25:56', '2016-02-14'),
(376, '40.77.167.63', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/blogs', 'vs-reactor.hostseo.com', '09:34:24', '2016-02-16'),
(377, '207.46.13.68', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/11', 'vs-reactor.hostseo.com', '11:18:01', '2016-02-16'),
(378, '207.46.13.142', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'vs-reactor.hostseo.com', '04:35:50', '2016-02-17'),
(379, '157.55.39.232', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'vs-reactor.hostseo.com', '07:55:05', '2016-02-19'),
(380, '157.55.39.115', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'vs-reactor.hostseo.com', '08:32:21', '2016-02-19'),
(381, '66.249.64.110', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/advertisement', 'vs-reactor.hostseo.com', '12:56:46', '2016-02-20'),
(382, '207.46.13.11', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'vs-reactor.hostseo.com', '04:34:21', '2016-02-20'),
(383, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/11', 'vs-reactor.hostseo.com', '10:19:52', '2016-02-21'),
(384, '207.46.13.11', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'vs-reactor.hostseo.com', '07:20:50', '2016-02-21'),
(385, '207.46.13.180', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'vs-reactor.hostseo.com', '07:22:38', '2016-02-21'),
(386, '157.55.39.49', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogdetail/11', 'vs-reactor.hostseo.com', '07:40:15', '2016-02-21'),
(387, '66.249.75.244', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/advertisement', 'vs-reactor.hostseo.com', '08:46:15', '2016-02-22'),
(388, '207.46.13.94', 'US', 'Redmond', '47.6801,-122.1206', '', '/test/blogs', 'vs-reactor.hostseo.com', '12:05:35', '2016-02-25'),
(389, '157.55.39.79', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'vs-reactor.hostseo.com', '12:05:50', '2016-02-25'),
(390, '207.46.13.73', 'US', 'Redmond', '47.6801,-122.1206', '', '/test/about-green-paper', 'vs-reactor.hostseo.com', '09:58:12', '2016-02-25'),
(391, '157.55.39.83', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '11:59:37', '2016-02-27'),
(392, '40.77.167.62', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/videos', 'vs-reactor.hostseo.com', '11:59:51', '2016-02-27'),
(393, '157.55.39.252', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '04:17:44', '2016-02-29'),
(394, '40.77.167.45', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/contact-us', 'vs-reactor.hostseo.com', '02:53:38', '2016-03-01'),
(395, '40.77.167.60', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'vs-reactor.hostseo.com', '02:53:46', '2016-03-01'),
(396, '157.55.39.225', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'vs-reactor.hostseo.com', '02:54:33', '2016-03-01'),
(397, '207.46.13.190', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'vs-reactor.hostseo.com', '06:05:45', '2016-03-04'),
(398, '207.46.13.80', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'vs-reactor.hostseo.com', '06:08:37', '2016-03-04'),
(399, '40.77.167.7', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '08:33:05', '2016-03-04'),
(400, '157.55.39.69', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:39:31', '2016-03-07'),
(401, '157.55.39.73', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/contact-us', 'vs-reactor.hostseo.com', '07:24:07', '2016-03-07'),
(402, '207.46.13.56', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'vs-reactor.hostseo.com', '07:24:11', '2016-03-07'),
(403, '157.55.39.26', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:19:40', '2016-03-10'),
(404, '207.46.13.177', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '02:45:28', '2016-03-20'),
(405, '157.55.39.166', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'vs-reactor.hostseo.com', '08:16:05', '2016-03-20'),
(406, '157.55.39.222', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/videos', 'vs-reactor.hostseo.com', '08:16:41', '2016-03-20'),
(407, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/43', 'vs-reactor.hostseo.com', '07:28:10', '2016-03-21'),
(408, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'vs-reactor.hostseo.com', '01:46:19', '2016-03-22'),
(409, '157.55.39.6', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/blogs', 'vs-reactor.hostseo.com', '05:20:35', '2016-03-23'),
(410, '157.55.39.53', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/videos', 'vs-reactor.hostseo.com', '05:20:42', '2016-03-23'),
(411, '66.249.75.228', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/33', 'vs-reactor.hostseo.com', '04:58:23', '2016-03-24'),
(412, '157.55.39.6', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '11:03:59', '2016-03-24'),
(413, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/37', 'vs-reactor.hostseo.com', '01:09:27', '2016-03-24'),
(414, '', '', '', '', '', '/test/newsdetail/33', 'vs-reactor.hostseo.com', '03:39:31', '2016-03-26'),
(415, '207.46.13.114', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '08:32:00', '2016-03-27'),
(416, '207.46.13.143', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/videos', 'vs-reactor.hostseo.com', '06:51:27', '2016-03-30'),
(417, '157.55.39.222', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:51:30', '2016-03-30'),
(418, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/2', 'vs-reactor.hostseo.com', '04:19:26', '2016-03-30'),
(419, '157.55.39.51', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '08:58:31', '2016-04-02'),
(420, '157.55.39.74', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '02:32:33', '2016-04-06'),
(421, '66.249.75.244', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images', 'vs-reactor.hostseo.com', '03:27:03', '2016-04-08'),
(422, '66.249.75.228', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/advertisement', 'vs-reactor.hostseo.com', '04:14:10', '2016-04-08'),
(423, '157.55.39.74', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:45:06', '2016-04-09'),
(424, '157.55.39.138', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:04:53', '2016-04-12'),
(425, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/10', 'vs-reactor.hostseo.com', '06:25:35', '2016-04-13'),
(426, '66.249.75.228', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'vs-reactor.hostseo.com', '06:33:06', '2016-04-13'),
(427, '66.249.75.244', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/38', 'vs-reactor.hostseo.com', '09:19:32', '2016-04-14'),
(428, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/34', 'vs-reactor.hostseo.com', '09:21:20', '2016-04-14'),
(429, '66.249.75.228', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/45', 'vs-reactor.hostseo.com', '03:59:41', '2016-04-14'),
(430, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/27', 'vs-reactor.hostseo.com', '06:09:09', '2016-04-15'),
(431, '157.55.39.176', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '10:39:25', '2016-04-15'),
(432, '40.77.167.29', 'US', '', '38.0000,-97.0000', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '02:54:19', '2016-04-17'),
(433, '157.55.39.94', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '11:06:56', '2016-04-21'),
(434, '207.46.13.27', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '07:40:42', '2016-04-23'),
(435, '207.46.13.114', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:43:04', '2016-04-27'),
(436, '207.46.13.28', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:20:22', '2016-04-30'),
(437, '207.46.13.28', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '12:32:33', '2016-05-04'),
(438, '207.46.13.160', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '10:01:59', '2016-05-06'),
(439, '157.55.39.23', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '05:20:31', '2016-05-07'),
(440, '207.46.13.69', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '03:10:34', '2016-05-09'),
(441, '157.55.39.100', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '02:48:36', '2016-05-12'),
(442, '157.55.39.173', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '11:16:42', '2016-05-14'),
(443, '157.55.39.101', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '04:58:59', '2016-05-18'),
(444, '157.55.39.101', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '09:56:57', '2016-05-21'),
(445, '157.55.39.248', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '12:28:22', '2016-05-25'),
(446, '207.46.13.1', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '09:31:53', '2016-05-27'),
(447, '207.46.13.32', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '02:35:58', '2016-05-30'),
(448, '66.249.75.101', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/12', 'vs-reactor.hostseo.com', '03:14:52', '2016-05-30');
INSERT INTO `ip_track` (`id`, `ip`, `country`, `city`, `location`, `org`, `page`, `pc_name`, `visit_time`, `date`) VALUES
(449, '66.249.75.115', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'vs-reactor.hostseo.com', '03:18:28', '2016-05-30'),
(450, '66.249.75.108', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogs', 'vs-reactor.hostseo.com', '03:20:29', '2016-05-30'),
(451, '207.46.13.156', 'US', 'Chicago', '41.8826,-87.6292', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '03:25:46', '2016-05-31'),
(452, '66.249.65.116', 'US', 'Colwell', '43.1558,-92.5941', 'AS15169 Google Inc.', '/test/videos', 'vs-reactor.hostseo.com', '04:07:38', '2016-05-31'),
(453, '66.249.69.242', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/11', 'vs-reactor.hostseo.com', '09:10:51', '2016-06-03'),
(454, '66.249.69.237', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/50', 'vs-reactor.hostseo.com', '09:46:15', '2016-06-03'),
(455, '66.249.69.247', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/13', 'vs-reactor.hostseo.com', '01:36:09', '2016-06-04'),
(456, '66.249.69.242', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/10', 'vs-reactor.hostseo.com', '01:36:13', '2016-06-04'),
(457, '66.249.69.237', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/newsdetail/43', 'vs-reactor.hostseo.com', '01:36:36', '2016-06-04'),
(458, '113.199.143.235', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS23752 Nepal Telecommunications Corporation, Internet Services,', '/test/', 'vs-reactor.hostseo.com', '12:30:09', '2016-06-06'),
(459, '157.55.39.250', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '03:24:59', '2016-06-09'),
(460, '157.55.39.250', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/advertisement', 'vs-reactor.hostseo.com', '12:32:26', '2016-06-10'),
(461, '66.249.75.228', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/12', 'vs-reactor.hostseo.com', '06:53:31', '2016-06-10'),
(462, '157.55.39.232', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '12:18:52', '2016-06-12'),
(463, '66.249.69.237', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/2', 'vs-reactor.hostseo.com', '02:54:42', '2016-06-13'),
(464, '113.199.228.176', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS23752 Nepal Telecommunications Corporation, Internet Services,', '/test/', 'vs-reactor.hostseo.com', '09:23:04', '2016-06-13'),
(465, '66.249.66.140', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/contact-us', 'vs-reactor.hostseo.com', '05:35:56', '2016-06-14'),
(466, '66.249.75.244', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/assets/js/jquery.flexslider.js', 'vs-reactor.hostseo.com', '07:15:09', '2016-06-14'),
(467, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/assets/js/jquery.flexslider.js', 'vs-reactor.hostseo.com', '07:15:14', '2016-06-14'),
(468, '157.55.39.185', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '07:04:45', '2016-06-15'),
(469, '157.55.39.211', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '03:59:00', '2016-06-17'),
(470, '207.46.13.92', 'US', 'Chicago', '41.8500,-87.6500', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '05:58:23', '2016-06-20'),
(471, '113.199.168.17', 'NP', 'Kathmandu', '27.7167,85.3167', 'AS23752 Nepal Telecommunications Corporation, Internet Services,', '/test/', 'vs-reactor.hostseo.com', '12:54:08', '2016-06-22'),
(472, '40.77.167.75', 'US', '', '37.7510,-97.8220', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '02:35:52', '2016-06-22'),
(473, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images', 'vs-reactor.hostseo.com', '08:09:37', '2016-06-23'),
(474, '66.249.75.244', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/19', 'vs-reactor.hostseo.com', '08:15:57', '2016-06-28'),
(475, '40.77.167.42', 'US', '', '37.7510,-97.8220', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '07:42:30', '2016-07-04'),
(476, '207.46.13.174', 'US', 'Chicago', '41.8500,-87.6500', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '04:45:22', '2016-07-06'),
(477, '157.55.39.168', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '06:53:37', '2016-07-09'),
(478, '207.46.13.127', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '01:48:33', '2016-07-11'),
(479, '66.249.69.242', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/17', 'vs-reactor.hostseo.com', '03:20:59', '2016-07-13'),
(480, '66.249.69.237', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogs', 'vs-reactor.hostseo.com', '03:27:26', '2016-07-13'),
(481, '66.249.66.140', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/11', 'vs-reactor.hostseo.com', '08:19:36', '2016-07-13'),
(482, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/11', 'vs-reactor.hostseo.com', '08:27:06', '2016-07-13'),
(483, '66.249.75.228', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images', 'vs-reactor.hostseo.com', '07:03:59', '2016-07-14'),
(484, '66.249.75.236', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/about-green-paper', 'vs-reactor.hostseo.com', '07:27:06', '2016-07-14'),
(485, '157.55.39.182', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '08:42:35', '2016-07-15'),
(486, '66.249.69.184', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/20', 'vs-reactor.hostseo.com', '11:04:49', '2016-07-15'),
(487, '66.249.66.136', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/20', 'vs-reactor.hostseo.com', '12:14:00', '2016-07-15'),
(488, '66.249.69.188', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/12', 'vs-reactor.hostseo.com', '07:09:20', '2016-07-16'),
(489, '66.249.75.115', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/10', 'vs-reactor.hostseo.com', '07:12:55', '2016-07-16'),
(490, '66.249.69.186', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/videos/2', 'vs-reactor.hostseo.com', '07:44:49', '2016-07-16'),
(491, '66.249.69.188', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/blogdetail/9', 'vs-reactor.hostseo.com', '06:55:14', '2016-07-17'),
(492, '66.249.69.184', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images/1', 'vs-reactor.hostseo.com', '07:03:25', '2016-07-17'),
(493, '66.249.69.186', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/images/assets/js/jquery.flexslider.js', 'vs-reactor.hostseo.com', '07:04:19', '2016-07-17'),
(494, '66.249.69.186', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/17', 'vs-reactor.hostseo.com', '05:18:54', '2016-07-19'),
(495, '157.55.39.112', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'vs-reactor.hostseo.com', '12:38:20', '2016-07-20'),
(496, '157.55.39.110', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '12:38:30', '2016-07-20'),
(497, '66.249.75.108', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/16', 'vs-reactor.hostseo.com', '12:43:51', '2016-07-25'),
(498, '157.55.39.137', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/50', 'vs-reactor.hostseo.com', '04:22:02', '2016-07-25'),
(499, '207.46.13.140', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/54', 'vs-reactor.hostseo.com', '04:22:14', '2016-07-25'),
(500, '40.77.167.68', 'US', 'Boydton', '36.6648,-78.3715', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'vs-reactor.hostseo.com', '04:22:38', '2016-07-25'),
(501, '207.46.13.184', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/newsdetail/36', 'vs-reactor.hostseo.com', '09:33:10', '2016-07-28'),
(502, '40.77.167.74', 'US', 'Boydton', '36.6648,-78.3715', 'AS8075 Microsoft Corporation', '/test/newsdetail/56', 'vs-reactor.hostseo.com', '09:33:31', '2016-07-28'),
(503, '66.249.69.186', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/', 'vs-reactor.hostseo.com', '10:59:03', '2016-07-28'),
(504, '66.249.69.188', 'US', 'Mountain View', '37.4192,-122.0574', 'AS15169 Google Inc.', '/test/category/10', 'vs-reactor.hostseo.com', '10:21:18', '2016-07-30'),
(505, '157.55.39.85', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '01:39:19', '2016-07-31'),
(506, '157.55.39.205', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/about-green-paper', 'vs-reactor.hostseo.com', '02:05:28', '2016-07-31'),
(507, '207.46.13.186', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '08:41:23', '2016-08-01'),
(508, '207.46.13.186', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '08:01:09', '2016-08-02'),
(509, '207.46.13.186', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '02:03:18', '2016-08-05'),
(510, '157.55.39.80', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '09:01:13', '2016-08-07'),
(511, '157.55.39.190', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '10:56:37', '2016-08-09'),
(512, '40.77.167.29', 'US', 'Boydton', '36.6648,-78.3715', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '08:05:37', '2016-08-14'),
(513, '40.77.167.67', 'US', 'Boydton', '36.6648,-78.3715', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '09:29:28', '2016-08-18'),
(514, '207.46.13.5', 'US', 'Redmond', '47.6801,-122.1206', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '05:09:46', '2016-08-23'),
(515, '157.55.39.54', 'US', 'New Orleans', '30.0330,-89.8826', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '07:18:32', '2016-08-27'),
(516, '40.77.167.92', 'US', 'Boydton', '36.6648,-78.3715', 'AS8075 Microsoft Corporation', '/test/', 'vs-reactor.hostseo.com', '05:57:23', '2016-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `jacket_advertisement`
--

CREATE TABLE `jacket_advertisement` (
  `add_id` int(8) NOT NULL,
  `add_contact` varchar(25) NOT NULL DEFAULT 'NULL',
  `add_name` varchar(150) NOT NULL,
  `add_link` varchar(150) NOT NULL,
  `add_doc` varchar(150) NOT NULL,
  `add_rate` varchar(15) NOT NULL,
  `add_added` date NOT NULL,
  `add_added_for` int(8) NOT NULL,
  `add_status` smallint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jacket_advertisement`
--

INSERT INTO `jacket_advertisement` (`add_id`, `add_contact`, `add_name`, `add_link`, `add_doc`, `add_rate`, `add_added`, `add_added_for`, `add_status`) VALUES
(4, '9804552309', 'Hero Honda', 'http://www.facebook.com', 'c7d01d9c3fb7a249a035a233b442eebe.jpg', '1000', '2015-09-24', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(8) NOT NULL,
  `news_heading` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(8) NOT NULL,
  `is_headline` int(2) NOT NULL,
  `counter` int(8) NOT NULL DEFAULT '0',
  `news_posted_on` datetime NOT NULL,
  `news_status` tinyint(2) NOT NULL DEFAULT '1',
  `reporter` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_heading`, `news_description`, `news_image`, `category_id`, `is_headline`, `counter`, `news_posted_on`, `news_status`, `reporter`) VALUES
(22, 'अमेरिकाका नेपालीद्वारा नयाँ संविधानको स्वागत, वेष्टहार्टर्फटमा देखियो अभूतपूर्व नेपाली एकता', '<p>अमेरिका (वेष्ट हार्टर्फड)&nbsp;, असोज ४/अमेरिकाका नेपालीहरुले एकजुट भएर संघीय गणतन्त्र नेपालको नयाँ संविधान २०७२ को स्वागत गरेका छन् । नेपालभित्र एक पक्षद्वारा विरोध भइरहेका बेला अमेरिकाका नेपालीहरुले भने अभूतपूर्व एकता प्रदर्शन गर्दै एकसाथ नयाँ संविधानको स्वागत गरे ।&nbsp;<br />\r\n<br />\r\nअमेरिकी कनेक्टिकट नेपाली समाजद्धारा नेपालको संविधान २०७२ लाई दिप प्रज्जवल कार्यक्रम गरि भव्य रुपमा स्वागत गरेको हुन । झण्डै एक दशकपछि मुलुकले नयाँ संविधान पाएपछि यता प्रवासी नेपालीहरुले एक जुट भई खुशी व्यक्त गर्नुका साथै दिप प्रज्वलन मार्फत स्वागत गरेका हुन् ।&nbsp;<br />\r\n<br />\r\nअमेरिकाको कनेक्टिकट राज्यको वेष्ट हार्टर्फडस्थित जोन अफ कनेडी पार्कमा आयोजित दिप प्रज्जवलन कार्यक्रममा बोल्दै कनेक्टिकट नेपाली समाजका अध्यक्ष शंकर ढकालले भने, &#39;सबैको चित्त बुझ्दो नभएता पनि लामो राजनीतिक अस्थिरतापछि बन्न पुगेको नेपालको संविधिान २०७२ लाई हामी सबैले स्वागत गर्न अपरिहार्य छ ।&#39; विकल्पविहिन संकटको घडिमा उभिएको नेपाललाई शान्ति, स्थायीत्व र समृद्धिको बाटोमा अघि बढ्न र राजनीतिक अस्थिरताको जालो तोड्न यो संविधान साधक भएको उनले बताए ।&nbsp;</p>\r\n\r\n<p>संविधान देशको मुल कानुन भएकाले स्थायी कानुन बिना मुलुक लामो समय चल्न नसक्ने भएकाले अहिलेको संविधानले समेट्न नसकेका विषयहरुलाई संशोधनको प्रक्रियाबाट सम्पूर्ण जनताको अधिकार स्थापित हुने तरिकाले अगाडि बढ्न राजनीतिक नेतृत्वलाई आग्रह समेत गरे । नेपालको नक्सा अंकित चित्रबीच नेपालको संविधान २०७२ मा दिप प्रज्जवलन गरिएको थियो । &nbsp;<br />\r\n<br />\r\nकार्यक्रममा बोल्दै समाजका सदस्य तथा प्रवासी नेपाली संघ -एनआरएन) च्याप्टर कनेक्टिकटका सदस्य रामकुमार सुवेदीले शान्ति, समृद्धि र स्थायीत्वका खातिर सात दशक लामो त्याग तपस्या, उत्सर्ग र बलिदानबाट आर्जित नयाँ संविधानलाई सबैले स्वागत तथा रक्षा गर्नुपर्ने बताए । &#39;लामो कालखण्ड पश्चात आज नेपालीहरुको चाहना पुरा भएको छ,&#39; उनले उक्त अवसरमा स्वदेशी तथा प्रवासी नेपालीहरुलाई बधाई तथा शुभकामना दिदै भने, &#39;संविधान एक परिवर्तनशिल दस्तावेज हो, देश र जनताको भावना तथा अपेक्षासँगै समयानुकूल र सान्दर्भिक बनाउन सकिन्छ ।&#39; उनले सबैले नेपालीले आ-आफ्नो ठाउँबाट संविधान मार्फत उपलब्धीको रक्षा गर्दै छुटेका हक अधिकारहरुलाई समेट्न प्रयत्नरत हुनुपर्ने भन्दै बन्द हड्ताल जस्ता आन्दोलन छोडी शान्तिको बाटो रोज्न सम्बन्धि पक्षलाई अनुरोध समेत गरेका छन् ।&nbsp;<br />\r\n<br />\r\nकनेक्टिकट नेपाली समाज र एनआरएन च्याप्टर कनेक्टिकटको संयुक्त आयोजनामा सम्पन्न दिप प्रज्जवलन कार्यक्रममा बाल बालिकादेखि वृद्ध वृद्धासम्म झण्डै ३ सय नेपालीको उपस्थिति थियो । नयाँ संविधानमा नेपाली राष्ट्रिय पोशाक ढाका टोपी र दौरा सुरुवाल मान्य नभए पनि कार्यक्रमका अधिकांश पुरुषहरु सो पोशाकमा उपस्थिति थिए । हात हातमा मैनवत्ती र नेपाली झण्डा फहराउँदै दिप प्रज्वलन एक आफसमा खुशी साटासाट गरिएको थियो । स्वदेशमा जाति जनजातिको अधिकारको सवाल उठि रहेका बेला यता प्रवासमा भने सबै जातजाति एक भई कार्यक्रमको शोभा बढाउनुका साथै एकीकृत देखिएका छन् ।</p>\r\n', '21acf65000dd5ccb3706f4ed62e43fa2.jpg', 5, 1, 90, '2015-09-21 20:57:00', 1, 'inceptioncms.com'),
(23, 'जापानमा पनि दिपावली गरियो', '<p>जापानमा पनि दिपावली गरियो करिब ६५ वर्षपछि नेपालमा संविधान सभामार्फत् नेपालको संविधान जारी हुँदैछ । नेपालमा आइतबार वेलुकी ६ बजे राष्ट्रपति डा रामवरण यादवले सभाध्यक्ष सुवास नेम्वाङबाट प्रमाणीकरण भएको नेपालको संविधान, २०७२ लाई एक विशेष समारोहकाबीच लागु भएको घोषणा गर्दैछन् ।<br />\r\n<br />\r\nसमारोहलाई भव्य बनाउन &nbsp;संविधानसभा सचिवालयले संविधानसभा भवनलाई सिँगारेर चिटिक्क पारेको छ भने विभिन्न रङका बत्तीले सजाइएको छ । नेपालमा संविधानमा बनेको उत्सवमा जापानमा रहेका नेपालीले पनि कुनै कसुर बाकीं राखेका छैनन् । उनीहरु पनि सडकमा नेपालको संविधान २०७२ जारी गरेको उत्सव मनाइरहेका छन् । यहाँ प्रस्तुत गरिएका तस्बिरहरु एनआरएन&ndash;जापानका अध्यक्ष सुदन थापा र एनआरएन कान्तोको&nbsp;फेसबुकबाट साभार गरिएको हो । &nbsp;</p>\r\n', '29c20d5acd6832769d9361a89a1c9b43.jpg', 5, 1, 85, '2015-09-21 20:58:26', 1, 'inceptioncms.com'),
(24, 'हार्दिक पटेल र उनका ७८ प्रदर्शनकारी प्रहरी हिरासतमा', '<p>पाटेल तथा पटिदार समुदायलाई आरक्षणको माग राख्दै आन्दोलन गर्दैआएका भारतीय युवा हार्दिक पटेल र उनका ७८ समर्थकहरु पक्राउ परेका छन् । प्रहरीले सबै प्रदर्शनकारीलाई शनिबार पक्राउ गरी हिरासतमा राखेको छ ।<br />\r\n<br />\r\nपछिल्ला दिनमा हार्दिक पटेल र उनका समर्थकहरुले अनुमति विना &lsquo;एकता यात्रा&rsquo; को प्रदर्शन गर्दैआएका थिए । सबै प्रदर्शनकारीहरुलाई अहिले गुजरातको प्रहरी मुख्यालयमा लगिएको छ ।<br />\r\n<br />\r\nआन्दोलनको क्रममा हार्दिकले यसअघि नै राज्य सरकार र प्रहरी प्रदेशमा अशान्ति फैलाउन चाहेको बताएका थिए । साथै, हार्दिकले आफ्ना समर्थकहरुलाई शान्त रहन आग्रह गरेका छन् । &nbsp;<br />\r\n<br />\r\n<strong>अनुमति थिएन :</strong><br />\r\n<br />\r\nहार्दिकले आन्दोलनको दौरान एक समिति गठन गरी प्रदर्शन गर्दैआएका थिए । उनले नेतृत्व गरेको संगठन &lsquo;पटिदार अनामत आन्दोलन समिति&rsquo;ले सुरुमा दान्डि मार्चको तयारी गरेको थियो । तर, दुई पटकसम्म हार्दिकले सरकारबाट दान्डि मार्चको अनुमति पाएनन् ।<br />\r\n<br />\r\nयसरी दुई पटकसम्म दान्डि मार्चको अनुमति नपाएपछि हार्दिकले एकता मार्च निमाल्ने तयारी गरेका हुन् ।<br />\r\n<br />\r\nहार्दिक र उनका समर्थकहरुले अनुमति विना नै शुक्रबार करिब ३५० किमी लामो सो यात्रा गरे । यसबाहेक उनीहरुको आन्तरिक गतिविधि र योजनाहरु पनि तयार थियो । शनिबार बिहानै सुरतको मगद चोकमा अति कडा सुरक्षा व्यवस्गा थियो ।<br />\r\n<br />\r\nजहाँ हार्दिक र उनका समर्थकहरु एकजुट हुने पूर्वयोजना थियो । प्रदर्शनकारीहरु भेटेपछि हार्दिकले चोकमा रहेको सरदार बल्लभ भाई पटेलको मुर्तिमा माला पहिरिदिए । माला पहिरिदिनासाथ हार्दिक र अरु प्रदर्शनकारीहरु पक्राउ परे ।<br />\r\n<br />\r\nत्यसो त, हार्दिकले यसअघि नै मुख्यमन्त्री आनन्दीवेन पटेललाई पनि यही विषयमा भेट गरेका थिए । &nbsp;<br />\r\n<br />\r\n<strong>आन्दोलन जारी :</strong><br />\r\nभारतको गुजरातमा एक महिनाअघिदेखि नै यो आन्दोलन जारी छ । गुजराती एक युवाककै प्रदर्शनका कारण अहमदेवादमा कफ्र्यू नै लगाउनुपरेको थियो । प्रदर्शनको क्रममा केहीको ज्यान समेत गएको थियो ।<br />\r\n<br />\r\nहार्दिक र उनका समर्थकहरुले गर्दैआएको प्रदर्शन विभिन्न रुपमा फेरिए पनि अन्त्य भने भएको छैन । गुजरातबाट सुरु भएको यो आन्दोलनले सिंगो केन्द्र सरकारलाई नै दवाव दिँदैआएको छ ।&nbsp;</p>\r\n', '9e6656dbf38b58dc65a19fcf3ae91798.jpg', 5, 1, 75, '2015-09-21 21:00:18', 1, 'inceptioncms.com'),
(25, 'चिलीमा ८.३ रेक्टर स्केलको शक्तिशाली भूकम्प', '<p>काठमाडाैं, भदाैं ३१/दक्षिण अमेरिकी देश चिलीमा शक्तिशाली भूकम्प गएको छ । भूकम्पका कारण राजधानी सेनटियागो&nbsp;पनि ठूलो क्षति पुगेको समाचार एजेन्सीहरुले जनाएका छन् ।&nbsp;<br />\r\n<br />\r\nस्यान्टियागो भन्दा करिब २४६ किलोमिटर टाढा उत्तर पश्चिम तटीय इलाकामा केन्द्रविन्दु बनाउँदैं ८.३ रेक्टर स्केलको भूकम्प गएको हो । अहिलेसम्म वाल ढलेर एक जनाको मृत्यु भएको अधिकारीहरूले जनाएका छन् । भूकम्पबाट पुगेको क्षतिको पूर्ण विवरण भने अाइसकेकाे छैन ।<br />\r\n<br />\r\nभूकम्पपछि सुनामीको चेतावनी दिइएको छ । समाचार एजेन्सी रोयर्टसले चिलीको आपतकालीन विभागलाई उदृत गर्दै जनधनको क्षतिको विवरण नआइसकेको जनाएको छ ।&nbsp;<br />\r\n<br />\r\nअमेरिकी अधिकारीहरुकाअनुसार भूकम्पको झट्का स्थानीय समयअनुसार ७:४५ बजे महसुस गरिएको थियो । भूकम्पको केन्द्र जमिनको ५ किलोमिटर तल रहेको अनुमान गरिएको छ बिबिसी हिन्दीले जनाएको छ । अहिले पनि चिलीमा ठूला परकम्पनहरू महसुस भइरहेको बताइएको छ ।</p>\r\n', 'd43f8275f257ff6335f8e8003e101919.jpg', 5, 0, 88, '2015-09-21 21:03:31', 1, 'inceptioncms.com'),
(26, 'मिष्टर एण्ड मिस होटल म्यानेजमेन्टमा ३० प्रतिष्पर्धी छानिए', '<p><strong>काठमाडौं असोज ४ ।</strong>&nbsp;होटल म्यानेजमेन्टका विद्यार्थीहरुलाई लक्षित गरी पहिलोपटक आयोजना हुन लागेको सौन्दर्य प्रतियोगिता &lsquo;मिष्टर एण्ड मिस होटल म्यानेजमेन्ट&ndash;२०१५&rsquo; मा ३० प्रतिष्पर्धी छानिएका छन् ।<br />\r\n<br />\r\n&lsquo;शिक्षा, प्रतिभा र सौन्दर्य&rsquo; नारा सहित गत आइतबार सम्पन्न पहिलो अडिसनबाट १५ युवा र १५ युवती अन्तिम चरणका लागि छानिएको आयोजक संस्था नेक्ष्ट मोडल्स नेपालका अध्यक्ष रवी धमलाले जानकारी दिए ।<br />\r\n<br />\r\nराजधानीमा आयोजना गरिएको यस्तो अडिसनमा ३५ पुरुष र २५ महिलाहरु सहभागी थिए । १६ देखि ३५ वर्षसम्मका युवायुवतीले खुल्ला रुपमा सहभागिता जनाउन सक्ने प्रावधान थियो ।<br />\r\n<br />\r\nसाथै, प्रतियोगिताको अर्काे अडिसन असोज १६ गते हुने बताइएको छ । होटल म्यानेजमेन्ट विषयमा अध्यायनरत नेपाली युवायुवतीमा शिक्षासंगै प्रतिभा र सौन्दर्यको महत्व दर्शाउंदै उत्कृष्ट प्रतिभा उत्पादन गर्ने उद्धेश्यले कार्यक्रम गरिएको आयोजकले बताएको छ ।<br />\r\n<br />\r\nप्रतियोगितामा शिर्ष सहित फष्ट रनरअफ, सेकेण्ड रनरअप, सोसल्ली रेस्पोन्सीवल, बेष्ट पर्सनालिटी, मोष्ट फोटोजेनिक, एचएम थिम ड्रेस, मोष्ट ट्यालेन्ट, पब्लीक च्वाई अवार्ड, बेष्टवाक , मष्ट पपुलर मष्ट डिसिप्लेन लगायतका बिधामा पुरस्कृत गरिनेछ ।</p>\r\n', '7d215c5dddcafc129e046b2fa9c33cf1.jpg', 5, 0, 121, '2015-09-21 21:07:37', 1, 'inceptioncms.com'),
(27, 'संविधानको स्वागतमा बेलायतका ठाउं ठाउंमा दिपावली', '<p>लण्डन । नेपालको संिवधानसभाबाट नयां संिवधान जारी भएको ऐतिहासिक दिनमा खुशीयाली मनाउन बेलायतमा पनि दिपावली गरिएको छ । आइतबार जारी भएको संिवधानको स्वागतमा लण्डनस्थित नेपाली दूतावासका साथै बेलायतका विभिन्न क्षेत्रमा बसोबास गर्ने नेपालीहरुले स्वस्फुर्त रुपमा दिपावली गरेका छन ।&nbsp;<br />\r\n<br />\r\nलण्डनस्थित नेपाली दूतावासले आइतबारसांझ दूतावास परिसरमा दिपावली गरयो । लण्डनको मुटुमा अवस्थित दूतावासको भवनमा झुण्ड्याइएका झिलिमिली बत्तिले कुनै ठूलो रमाइलो उत्सवको झझल्को दिन्थ्यो । दूतावासमा सोमबार सांझ पनि दिपावली गरिंदैछ ।&nbsp;<br />\r\n<br />\r\nसाउथ ईस्ट लण्डनमा बस्ने नेपालीहरुले पनि वीलवीचमा स्वस्फुर्त रुपमा दिपावली गरेका छन । विभिन्न स्थानीय नेपाली संघसंस्थाको सहकार्यमा त्यस क्षेत्रका नेपालीहरुले आइतबार सांझ दिपावली गरेका हुन । चाल्र्टन नेपाली समाज, रोयल ग्रिनविच नेपालिज सोसाइटी, नेपाली कोअपरेटिभ इन्भेस्टमेन्ट एनसिआई, पासा पुच गुठी, कपिलवस्तु समाज यूके लगायतका संघसंस्था दिपावलीमा सहभागी थिए ।&nbsp;<br />\r\n<br />\r\nत्यसक्रममा एनआरएन यूके उपाध्यक्ष दासुराम पाण्डे, सचिव फणिन्द्र भट्टराई, एनसिआई अध्यक्ष मोहन गुरुंग, रोयल ग्रिनविच सोसाइटीका कुमार श्रेष्ठ, चाल्र्टन समाजका अध्यक्ष रोमनाथ पाण्डे तथा उपाध्यक्ष टंक कंडेल, कपिलवस्तु समाजका अध्यक्ष दीपक श्रेष्ठ, एलएन पाण्डे, सुरज केसी, मञ्जु भण्डारी, कुश बस्नेत, देवेन श्रेष्ठ लगायतले नयां संिवधानको स्वागत गर्दै शुभकामना दिएका थिए ।&nbsp;</p>\r\n', '6f0e89d534cf7d29b994f35a8126185b.jpg', 5, 0, 93, '2015-09-21 21:08:29', 1, 'inceptioncms.com'),
(28, 'स्वागत समारोहमा जे देखियो', '<p>काठमाडौँ, असोज ४ । &lsquo;यो नेपाली शिर उचाली संसारमा लम्कन्छ...&rsquo; भन्ने गीतको धुन बजिरहेको थियो । सो धुन घन्किरहँदा युवाहरू स्वरमा स्वर मिलाइरहेका थिए भने हातमा राष्ट्रिय झण्डा बोक्दै एक आपसमा संविधान निर्माणको खुसी साटासाट गर्दै थिए ।<br />\r\n&nbsp;<br />\r\nयो दृश्य सैनिक मञ्च टुँडिखेलको हो, जहाँ &lsquo;नेपालको संविधान, २०७२&rsquo; जारी भएको खुसियालीमा आज नेपाल सरकारले ऐतिहासिक स्वागत समारोह आयोजना गरेको थियो । उक्त खुसियालीमा आयोजित समारोहका कारण बिहानैदेखि सैनिक मञ्च र यस आसपासको क्षेत्रमा छुट्टै रौनकता देखिन्थ्यो ।<br />\r\n&nbsp;<br />\r\nअपराह्न १ बजेदेखि हुने भनिएको समारोहका लागि काठमाडौँका शान्तिबाटिका, प्रदर्शनीमार्ग, बागबजारलगायत स्थानमा विभिन्न दलका कार्यकर्ता तथा सर्वसाधारण जम्मा भएका थिए ।<br />\r\n&nbsp;<br />\r\nसमारोह आरम्भ हुनुपूर्व भद्रकालीबाट निस्केको पदयात्रामा नेवारी संस्कृतिको मौलिकताले युक्त झीगु सिंर वाजा खलः नैकापको सांस्कृतिक प्रस्तुति हेर्न लायक थियो ।<br />\r\n&nbsp;<img alt=\"\" src=\"http://www.nepalipatra.com/images/uploaded/images/1442828355353_RoS-Ktm-Tundikhel%20%287%29.JPG\" /><br />\r\nसमारोहमा सहभागी हुन काठमाडौँ उपत्यका र आसपासका जिल्लाका विभिन्न सर्वसाधारणका साथै निजामती कर्मचारी तथा राष्ट्रसेवकको चहलपहल उत्तिकै देखिएको थियो । समारोहका लागि नेपाली सेनाले हेलिकप्टरबाट पुष्पवृष्टि गर्दा सर्वसाधारण निकै उत्साहित बनेका थिए ।<br />\r\n&nbsp;<br />\r\nत्यस्तै समारोह आरम्भ हुनुपूर्व केही समय परेको पानीको पर्वाहसमेत नगरी सर्वसाधारण धैर्यतापूर्वक बसेका देखिन्थे । समारोहमा नेपाली सेना, नेपाल प्रहरी, सशस्त्र प्रहरी बललगायत सुरक्षा निकायका साथै विभिन्न समुदायबाट विविधताले युक्त संस्कृतिको शोभाले अझै उत्साह थपेको देखिन्थ्यो ।<br />\r\n&nbsp;<br />\r\nकार्यक्रम सम्पन्न भएपछि पनि करिब १० मिनेटको समयावधिसम्म सर्वसाधारणहरू &lsquo;यो जित कसको जनताको&rsquo;, &lsquo;हाम्रो संविधान राम्रो संविधान&rsquo;, र &lsquo;हिमाल, पहाड तराई, कोही छैन पराई&rsquo; जस्ता राष्ट्रवादी नारा लगाउँदै राष्ट्रिय एकताको प्रदर्शन गरेका थिए ।<br />\r\n&nbsp;<br />\r\nसरकारले आह्वान गरेअनुसार समारोहमा निजामती कर्मचारी कार्यालयको व्यानरसहित पदयात्रामा सहभागी थिए । विभिन्न दलका लागि निश्चित ठाउँहरूबाट पदयात्रा निकाल्ने तय भएअनुसार पार्टीका झण्डासहित नेता तथा कार्यकर्ता पनि लामबद्ध देखिन्थे ।<br />\r\n&nbsp;<img alt=\"\" src=\"http://www.nepalipatra.com/images/uploaded/images/1442825788076_KK-Myagdi-Utsab.JPG\" style=\"border-style:solid; border-width:2px; float:left; height:240px; margin:5px; width:360px\" /><br />\r\nनेपाली परम्परागत थारु नृत्य, राई, लिम्बूको मौलिक संस्कृति, तामाङ सेलो, मगर कौडा जस्ता नृत्य तथा झाँकीले समारोह थप रोमाञ्चित बनेको थियो । संविधानसभाबाट संविधान जारी गर्नु नेपाली जनताको महत्वपूर्ण जित भएको स्वागत समारोहमा सहभागी सर्वसाधारणले धारणा व्यक्त गरेका थिए । संविधान जारी भएको खुसियालीमा सरकारले सार्वजनिक बिदा दिएका कारण पनि विभिन्न शैक्षिक संस्थामा अध्ययनरत विद्यार्थीहरू पनि झाँकीमा सहभागी देखिन्थे ।<br />\r\n<img alt=\"\" src=\"http://www.nepalipatra.com/images/uploaded/images/1442828411613_RoS-Ktm-Tundikhel%20%2813%29.JPG\" /><br />\r\n<img alt=\"\" src=\"http://www.nepalipatra.com/images/uploaded/images/1442828973015_RoS-Ktm-Tundikhel%20%288%29.JPG\" /><br />\r\n&nbsp;</p>\r\n', 'fa113f1432f6caebb8a90ed846d26a69.JPG', 5, 1, 122, '2015-09-21 21:10:55', 1, 'inceptioncms.com'),
(29, 'दिल्ली दूतावासमा दिपावली मनाउदा पत्रकारको आपत्ति', '<p>दिल्ली । भारतको दिल्लीस्थित नेपाली दूतावासले बेवास्ता &nbsp;गरेको भन्दै भारतस्थित मिशन पत्रिका र नेपाल पत्रकार महासंघ, भारत च्याप्टरले आपत्ति जनाएको छ ।<br />\r\n<br />\r\nआइतबार नेपालमा घोषणा भएको संविधानको खुसीयाली मनाउने क्रममा नेपाली राजदुतावासले प्रवासी नेपालीलाई दूतावास परिसरमै बोलाएर दिपावली मनाएको थियो ।<br />\r\n<br />\r\nउक्त समारोहमा नबोलाएको भन्दै नेपाल पत्रकार महासंघ दिल्ली च्याप्टरका अध्यक्ष लोकेश साह आर्यानले निकालेको विज्ञप्ति निकालेर अापत्ति जनाएका हुन् । &nbsp;उनले निकालेको विज्ञप्ति यस्तो छ ;- &nbsp; &nbsp;<br />\r\n<br />\r\nनेपाली समुदायको प्रतिनिधि संस्था भनेर वकालत गर्ने पत्रकारहरु र पत्रकारीता जगतको बेवास्तामा नेपालको संबिधान घोषणाको दिपावली मनाइयो । &nbsp;भारतमा ठुलो संख्यामा रहेका प्रवासी नेपालीहरुले नेपालका तीन प्रमुख राजनीतिक दलहरु एमाओवादी, नेपाली कांग्रेस र नेकपा एमालेका जनवर्गिय संगठनहरु अखिल भारत नेपाली एकता मंच, नेपाली जन सम्पर्क समिति र प्रवासी नेपाली संघ भारतको पार्टी कार्यालय, नेपाली राजदूतावास भनेर टिकाटिप्पणी गरिरहेका बेला हिजोको आयोजनानमा &nbsp;स्वतन्त्ररुपमा काम गर्ने मिशन पत्रिका र महासंघप्रतिको बेवास्ताले चरितार्थ गरेको छ ।<br />\r\n<br />\r\nनेपाली कुटनीतिक नियोग आखिर कसको इशारामा चलिरहेको छ ? भन्ने कुरा अन्यौलपूर्ण रहेको छ । राज्यको चौथो अंगको रुपमा कार्यरत निकायलाई बाईपास गरेर देखाउन के खोजिएको हो ? कुटनीतिक नियोग र चौथो अंगले प्रवासको क्षेत्रमा नेपाली जनताको हक हित, सामाजिक उत्थान, उत्पिडन र अन्य शोषणका घटना र राष्ट्र र राष्ट्रको हितमा मिलेर हिडनुपर्ने बेलामा एक अर्कालाई बाईपास गर्न खोज्नु के यो &nbsp;दुर्भाग्यपूर्ण र निन्दनीय होईन र ? षडयन्त्र के हो ? कतै भित्री कुरा बाहिर आउने डर त होईन ?<br />\r\n<br />\r\nमहासंघको भारत च्यापटरले प्रवासमा राजदूतावासलाई मातृ निकायको रुपमा हेरेको र सम्मान गर्नका साथै सहकार्य गरिरहको सर्वविदितै छ । जनतामा दूतावासप्रतिको भ्रम चिर्दै जनताको नजरमा संवैधानिक निकायलाई विश्वासी निकायका रुपमा स्थापित गर्नमा हाम्रो मिसन पत्रकारिताले सबै भन्दा महत्वपूर्ण भूमिका खेलेको कसैले नकार्न सक्दैनन् । तर पछिल्लो समयमा राजदूतवासबाट हामीप्रति गरिएको व्यावहारको हामी सख्तरुपमा विरोध प्रकट गर्दछौं ।&nbsp;&nbsp;</p>\r\n', 'f4bce4fc80a7d5945a57d4bce9b71dae.jpg', 3, 1, 151, '2015-09-21 21:13:14', 1, 'inceptioncms.com'),
(30, 'पेस्तोल, गोली र म्यागजीनसहित पक्राउ', '<p>सिरहा । सशस्त्र प्रहरी बल बोर्डर आउट पोष्ट माडरबाट खटिएको एपीएफ टोलीले सोमबार मेड ईन युएसए लेखिएको एउटा पेस्तोल तथा सोको म्यागजीन र आठ राउण्ड गोलीसहित एक जनालाई पक्राउ गरेको छ ।<br />\r\n<br />\r\nउक्त गोली मध्ये दुई वटा ७.५५ एमएमको गोली उक्त पेस्तोलमा फिट हुने तथा ६ वटा गोली ८ एमएमको रहेको छ । &nbsp;&nbsp;<br />\r\nपक्राउ पर्नेमा सिरहा जिल्लाको राजपुर गाविस ३ घर बताउने २४ वर्षिय महेशकुमार यादव छन् ।<br />\r\n<br />\r\nएपीएफ टोलीले उनलाई सिरहा जिल्लाको सिरहा नगरपालिका १७ बाट &nbsp;सोमबार दिउँसो करीब पौने चार बजे पक्राउ गरेको हो । सो नाकामा एपीएफ टोलीले जाँच गर्ने क्रममा पेस्तोल तथा गोली फेला परेपछि उनलाई पक्राउ गरिएको हो ।&nbsp;<br />\r\n&nbsp; ना. २९ प १३८८ नम्बरको मोटरसाइकलमा भारतबाट नेपालतर्फ आउँदै गरेका निज यादवको उक्त मोटरसाइकलको सिटमुनी उल्लेखित पेस्तोल तथा गोली भेटिएको थियो ।&nbsp;<br />\r\n&nbsp; एपीएफ टोलीले त्यसवेला सो मोटरसाइकल समेत बरामद गरेको छ । &nbsp; &nbsp;</p>\r\n', '3cd39f2bad641f5fc3598c36e42b8605.jpg', 4, 1, 153, '2015-09-21 21:16:48', 1, 'inceptioncms.com'),
(31, 'भारत भन्छ– समयमै सजग भएको भए यो अवस्था आउने थिएन', '<p>आश्विन ४, २०७२- भारतले संविधान जारी भएपछि भारतीय सीमानजिकका नेपाली भूभागहरुमा भएको विरोध प्रदर्शनप्रति गम्भीर चासो लिएको छ । मधेसमा जारी हिंसात्मक घटनाले भारतीय मालबालक कम्पनी तथा यातायातकर्मीले कठीनाइ भोगेको भन्दै सुरक्षा चिन्ता प्रकट गरेको छ ।</p>\r\n\r\n<p>&lsquo;हामीले नेपालको राजनीतिक नेतृत्वलाई यी क्षेत्रमा जारी तनाव अन्त्य गर्न तुरुन्त पहलकदमी लिनको लागि पटक पटक सजग गराउँदै आएका थियौं,&rsquo; विज्ञप्तीमा भनिएको छ, &lsquo;यदि समयमै त्यसो गरिएको भए यस्तो विसम परिस्थिति आउने थिएन ।&rsquo;</p>\r\n\r\n<p>भारतले नेपालको चुनौति हल गर्न सबै पक्ष सहमतिमा पुग्नुपर्नेमा जोड दिंदै नेपालले भोगेको समस्या राजनीतिक प्रकृतिको हुनाले शक्तिप्रयोगबाट यसको समाधान सम्भव नहुने बताएको छ ।</p>\r\n\r\n<p>&lsquo;हामी अझै आशा गर्दछौं कि नेपालको नेतृत्वले झडपको वर्तमान अवस्थालाई प्रभावकारी र विश्वसनीय ढंगले सम्बोधन गर्न पहल गर्नेछ,&rsquo; विज्ञप्तीमा लेखिएको छ ।</p>\r\n', 'aa997c9530f91739793797883621a593.jpg', 4, 1, 137, '2015-09-21 21:18:47', 1, 'inceptioncms.com'),
(32, 'संविधान घोषणा भएकोमा चीन, नर्वे र जापानको बधाई', '<p>आश्विन ४, २०७२- नेपालको संविधान घोषणा भएकोमा छिमेकी चीनसहित नर्वे र जापानले पनि बधाई दिएको छ ।</p>\r\n\r\n<p>चिनियाँ विदेश मन्त्रालयको नियमित प्रेस व्रिफिङमा प्रवक्ता होङ लिले सोमबार बधाई दिएका हुन् । घनिष्ट मित्रता र छिमेकीको नाताले नेपालमा जारी संविधान प्रति खुशी ब्यक्त गर्दै चीनले बधाई दिएको हो ।</p>\r\n\r\n<p>&lsquo;सबै राजनीतिक दलले इमानदारीताका साथ देश र जनताको हितको लागि संवाद र परामर्शबाट देखिएका मतभेद सम्वोधन गर्न सक्नेछ । यो महसुस चीनलाई भएको छ,&rsquo; सञ्चारकर्मीको जिज्ञासा मथ्थर पर्दै बेइजिङस्थत विदेशमन्त्रालयम अयोजित प्रेस ब्रिफिङमा भनेको विदेश मन्त्रालयको वेवसाइटमा उल्लेख छ, &lsquo;हामीलाई आशा छ नेपालका नेताहरु विद्यामान समस्या समाधान गर्न आफैमा सक्षम छन् ।&rsquo; यसअघि पनि चीनले संविधान जारीप्रक्रिया प्रति खुशी प्रकट गरेको थियो । &nbsp;</p>\r\n\r\n<p>दक्षिणी छिमेकी भारतले संविधान जारी लगत्तै जनतालाई शुभकामना दिए पनि संविधान जारी भएकोमा औचारिक बधाई नदिएको भोलिपल्ट चीनको यस्तो धारणा सार्वजनिक भएको हो । अहिले पनि मुलुकको केही भागमा आन्दोलन चलिरहेको छ यस्तो अल्पसंख्यकहरु अधिकार खोजिरहेको अवस्थामा संविधान जारी भएको छ , यसमा भारत लगायत केही मुलुको चासो छ भन्दै चीनको धारणा बारे जिज्ञासमा प्रवक्ताले भने, &lsquo;नेपालको राष्ट्रिय एकता स्थिरता र विकासको लक्ष्य पुरा गर्न यो संविधान सफल हुने आशा चीनले लिएको छ, वार्ता र परामर्शबाट टुंगोमा पुग्दै खुशीयाली ल्याउनेमा चीनको विश्वास छ ।&rsquo; &nbsp;</p>\r\n\r\n<p>चीनले सबै प्रक्रिया हेरिरहेको बताउदै भनेको छ, &lsquo;चीनले नेपालसंगको सम्वन्धलाई ठूलो महत्व दिएको छ र विकासमा सहयोगीको रुपमा संग्लन भएको छ, दुई पक्षीय सहयोग आवश्यकता अनुसार बृद्धि गरिरहेको छ । जनताको क्षमता बृद्धि गर्न र नपालको आर्थिक तथा समाजिक विकासको लागि नेपाललाई सहयोग निरन्तर गर्न चीन तयार छ।&rsquo;&nbsp; दुईपक्षीय सम्वन्धलाई थप प्रगाढ बनाएर अघि बढ्न चीन सधै लागि परको उनले उल्लेख गरेका छन् ।</p>\r\n\r\n<p>यसैगरि दातृ राष्ट्र नर्वेले संविधान घोषणा भएकामा नेपाली जनतामा हार्दिक बधाई ज्ञापन गर्दै स्वागत गरेको छ । नर्वेले संीवधानको निर्माण नेपालको इतिहास र लोकतान्त्रिक विकासमा महत्वपूर्ण उपलब्धि भएको उल्लेख छ ।</p>\r\n\r\n<p>यहाँस्थित नर्वेली दूतावासले सोमबार विज्ञप्ति जारी गरी नेपालको सामाजिक एवं आर्थिक विकासको भविष्य सुनिश्चित गर्न सबै राजनीतिक दलका नेता र अन्य समूहका नेतृत्व पंक्तिलाई संविधानको शान्तिपूर्ण कार्यान्वयनमा सहकार्यका लागि आह्वानसमेत गरेको छ ।</p>\r\n\r\n<p>यसैबीच दातृ मुलुक जापानले संविधानसभाबाट जारी नेपालको नयाँ संविधानको स्वागत गरेको छ । संविधानको घोषणा वास्तविक लोकतान्त्रिक मुलुकतर्फको नेपाली जनताको नयाँ कदमको संज्ञा दिंदै जापानी विदेशमन्त्री फुमियो किसिदाले सोमबार वक्तव्य जारी गरी नेपाली जनतालाई बधाई ज्ञापन गरेका छन् ।</p>\r\n\r\n<p>नयाँ संविधानकै आधारमा नेपालले आउँदा दिन राजनीतिक स्थायित्व हासिल गर्दै गरेको र लोकतन्त्र, शान्ति बहाली र आर्थिक विकासमा प्रगति गर्दै गरेको हेर्ने आशा जापान सरकारले राखेकोसमेत जापानी विदेशमन्त्रीले उल्लेख गरेका छन् ।</p>\r\n\r\n<p>जापान&ndash;नेपाल सम्बन्धलाई थप मजबुत बनाउने र दक्षिण एसिया क्षेत्रकै स्थिरता र समृद्धिका लागि निरन्तर योगदान गर्ने चाहनासमेत जापानले व्यक्त गरेको छ । जापान सरकारले एक असल मित्रका नाताले नेपालको पुन:निर्माणलाई मूर्त रूप दिने अभियानमा सक्दो सहयोग गर्ने वचनबद्धतासमेत व्यक्त गरेको छ ।</p>\r\n', 'b62aa294e25629e94379cf39791bf25e.jpg', 4, 1, 127, '2015-09-21 21:20:03', 1, 'inceptioncms.com'),
(33, 'सर्वसाधारणको संविधान सरोकार', '<p>आश्विन ४, २०७२-&nbsp;हिजो राष्ट्रपति डा. रामवरण यादवले नयाँ संविधान घोषणा भएपछि देशका विभिन्न क्षेत्रमा यसको स्वागत भएको छ । तर, तराई&ndash;मधेश क्षेत्रमा भने संविधानको विरोध पनि भइरहेको छ । काठमाडौंबाहिरबाट राजधानीमा आएर विभिन्न व्यापार व्यवसाय गरिरहेका केही सर्वसाधारणसँग गरिएको कुराकानी :</p>\r\n\r\n<p>दोलखा निवासी लालबहादुर बुढाथोकी १५&ndash;२० बर्षदेखि राजधानीमा ज्यामी काम गर्दै चार जनाको परिवार सहित बसिरहेका छन् । उनी नेपालको संविधान २०७२ घोषण भएकोमा खुशी छन् । उनको शब्दमा &lsquo;नेताहरुले जस्तो भए पनि संविधान ल्याएको छ, जे भए पनि राम्रो गरेका छन् ।&rsquo;<br />\r\n<br />\r\nमकवानपुर हेटौडा निवासी नकूल चौलागाई २०&ndash;२५ वर्षदेखि भोटाहिटी काठमाडौमा जुत्तापसल गरेर बस्छन् । उनलाई संविधान नबन्ने चिन्ता थियो, बनेकोमा उनी खुसी छन् । तर, देशका विभिन्न ठाउँमा भइरहेको अन्दोलन हेर्दा सबै तह तप्कालाई समेट्न नसकेको होकि जस्तो उनलाई लागेको छ । &lsquo;सबैलाई समेट्न सके सुनमा सुगन्ध हुन्थ्यो&rsquo; उनी भन्छन् ।<br />\r\n<br />\r\nकाठमाडौं घट्टेकुलो निवासी बाबुकृष्ण मर्हजन किराना पसल गर्छन् । नेपालको संविधान २०७२ घोषणा भएकोमा उनी खुशी छन् । &lsquo;संविधान बन्नु पथ्र्यो बन्यो अब बाँकी असन्तुष्टहरुलाई पनि देशको हितमा हुने गरी उनीहरुको मागलाई सम्बोधन गरेर समधान गर्नु पर्छ,&rsquo; उनी भन्छन् ।<br />\r\n<br />\r\nविजयराज दराईली &lsquo;न्यू जय लक्ष्मी गहन गृह&rsquo; न्यूरोडका प्रबन्ध निर्देशक हुन् । लामो समयदेखि देश अन्तरिम संविधानले चालउँदा उनी चिन्तित थिए । आसोज ३ गते नेपालको संविधान २०७२ घोषण भएकोमा उनी खुशी छन् । उनी अब देशले विकासको गति लिने आशा गर्छन् ।</p>\r\n', '18a5d494cb69bf0b36630200bd253a73.jpg', 4, 1, 193, '2015-09-21 21:20:58', 1, 'inceptioncms.com'),
(34, 'दलीय किचलोले रोकियो पुनर्निर्माणको काम', '<p>आश्विन ३, २०७२- प्रमुख राजनीतिक दलहरूबीच एकपछि अर्को असमझदारी उत्पन्न भई कानुन जारी हुन नसक्दा पुनर्निर्माणको काम अनिश्चित बन्दै गएको छ । प्राधिकरणको स्वरूप तथा संयन्त्रको विषयमा दलहरूबीचको विवादका कारण कानुन बन्न नसकेर भूकम्पपछिको पुनर्निर्माणको काम सुरु हुन नसकेको हो । भूकम्प गएको झन्डै ५ महिनापछि सरकारले गत साता व्यवस्थापिका संसद्मा विधेयक पेस गरेको थियो । प्रमुख दलहरूबीच &lsquo;फास्ट ट्रयाक&rsquo; बाट पास गर्ने समझदारी भए पनि उनीहरूबाटै संशोधनको प्रस्ताव धेरै परेपछि विधेयक जारी हुनबाट रोकिएको छ ।</p>\r\n\r\n<p>दुई साताअघि तीन प्रमुख दलहरूबीच शनिबार विधेयक जारी गर्ने समझदारी भएको थियो । &lsquo;तर हामीले गरेको समझदारीभन्दा बाहिर गएर धियेक आएपछि संशेधनको प्रस्ताव् हालेका हौं,&rsquo; एकीकृत नेकपा माओवादीका प्रमुख सचेतक गिरिराजमणि पोखरेलले भने, &lsquo;अन्य पार्टीका तर्फबाट पनि धेरै संशोधनको प्रस्ताव परेको छ ।&rsquo; संशोधन प्रस्ताव र छलफलका लागि सम्बन्धित समितिमा लैजाने निर्णयसँगै विधेयक पास हुन ढिलाइ हुने भएको छ ।<br />\r\nकानुनमन्त्री नरहरि आचार्य, परराष्ट्रमन्त्री महेन्द्रबहादुर पाण्डे, एमाओवादी प्रवक्ता अग्नि सापकोटा र कानुन मन्त्रालयका अधिकारी, राष्ट्रिय योजना आयोगका उपाध्यक्ष गोविन्द पोखरेलबीच भएको छलफलमा नयाँ विधेयक पेस गर्ने र फास्ट ट्रयाकबाट जारी गर्ने सहमति जुटेको हो । गत भदौ २९ गते विधेयक पेस र २ गते जारी गर्ने समझदारी थियो । संशोधोन प्रस्ताव परेसँगै पुनर्निर्माणको विषयमा दलहरूबीच फेरि असमझदारी देखिएको हो । उक्त कारणले विधेयक जारी हुन ढिलाइ भएसँगै पुनर्निर्माणको काम प्रभावित हुने भएको हो ।<br />\r\nगत वैशाख १२ गते गएको भूकम्पका कारण ८ हजार ९ सय ७८ जनाको मृत्यु भएको थियो । गृह मन्त्रालयका अनुसार २२ हजार ३ सय २१ घाइते भएका थिए । ६ हजार ४ सय ६५ वटा सरकारी घर भत्किएका छन् । ६ लाख २ हजार ५ सय ९२ निजी घर पूर्ण र २ लाख ८४ हजार ४ सय ८२ आंशिक क्षति भएका छन् । भूकम्पले क्षति पुर्&zwj;याएको ८ लाखभन्दा बढी परिवार हाल टहरामा दैनिकी गुजारिरहेका छन् । सरकारले हालसम्म मृतकका परिवारलाई क्षतिपूर्ति, घाइतेलाई नि:शुल्क उपचार र क्षति भएको घरका परिवारलाई १५ हजार रुपैयाँ दिने काम गरिरहेको छ । यसबाहेकका दीर्घकालीन योजना र पुनर्निर्माणका काम भने सुरु गर्न सकेको छैन । पीडितहरू भने सरकारी योजनाको पर्खाइमा छन् । सरकारले चालु आर्थिक वर्षमा पुनर्निर्माणका लागि विनियोजन गरेको ७४ अर्ब रुपैयाँ बजेट भने थन्किएर बसेको छ ।<br />\r\nप्रमुख राजनीतिक दलहरूबीच पछिल्लो समय संविधान जारी गर्ने र राष्ट्रिय सहमतिको सरकार गठन गर्ने विषयमा सझदारी जुटे पनि पुनर्निर्माणको काममा भने किचलो कायमै देखिएको छ । &lsquo;पुनर्निर्माणको विषयमा सरकार नै गम्भीर देखिएन,&rsquo; पोखरेलले भने, &lsquo;हाम्रो विरोधका बाबजुत अध्यादेश ल्यायो । बहुमतले अध्यादेश प्रतिस्थापन गर्न सक्थ्यो । अध्यादेश पेस नै गरेन । पछि पुन: समझदारी गरियो, त्यो पनि कार्यान्वयन गरेअनुसार प्रस्तुत गर्न सकेन ।&rsquo; दलहरूबीच प्राधिकरण, संयन्त्र र विधेयकका विषयमा भूकम्प गएलगत्तै विवाद सुरु भएको थियो । विवादका बाबजुद भूकम्प गएको झन्डै दुई महिनापछि सरकारले अध्यादेश जारी गरेको थियो ।<br />\r\nदलहरूबीचकै विवादका कारण अध्यादेशअनुसार प्राधिकरणको प्रमुख कार्यकारी अधिकृत (सीईओ) नियुक्ति गर्नमा ढिलाइ भएको थियो ।<br />\r\nप्राधिकरण अध्यादेश जारी भएको ५२ दिनपछि बल्ल बल्ला सरकारले सीईओमा योजना आयोगका उपाध्यक्ष गोविन्द पोखरेललाई नियुक्त गरेको थियो ।<br />\r\nत्यसपछि गत ८ गते पहिलो बैठक बसी प्राधिकरणको कार्यक्षेत्र ३१ जिल्लालाई तोक्ने र काम सुरु गर्ने निर्णय गरेको थियो । प्रधानमन्त्री कार्यालय, व्यवस्थापिका संसद् सचिवालयका कर्मचारी र दलहरूबीचको विवादका कारण व्यवस्थापिका संसद्मा अध्यादेश प्रतिस्थापनका लागि पेस नै हुन सकेन । संविधानले तोकेको अवधिमा ६० दिनभित्र अध्यादेश पास हुन नसकेपछि प्राधिकरण नै निष्क्रिय बन्यो । राजनीतिक दलहरूबीच दुई साताअघि छुट्टै विधेयक पेस गर्ने र जारी गर्ने समझदारी भए पनि शनिबारबाट थप अन्योल सिर्जना भएको हो ।<br />\r\nराजनीतिक समझदारीअनुसार नै काम गरे पनि पटक पटक असहयोगका कारण पुनर्निर्माणको काममा ढिलाइ भइरहेको अर्थमन्त्री रामशरण महतले बताए । &lsquo;समझदारीअनुसार नै विधेयक पेस गरेका थियौं । तर सभासद साथीहरूले अत्यधिक धेरै संशोधनको प्रस्ताव हाल्नुभयो ।<br />\r\n&nbsp;सम्बन्धित समितिमा लैजानुको अर्को विकल्प नै भएन,&rsquo; उनले भने, &lsquo;अब एक/दुई सातामा समितिको बैठक बस्ला । छलफल गरेर विधेयक पास गरी काम अघि बढाउनुपर्छ ।&rsquo; अध्यादेश संसद्मा पेस गर्ने विषयमा महतले संसद् सचिवालयले समयमा सूचना नदिएका कारणले समस्या भएको हुन सक्ने अनुमान लगाए । &lsquo;जसबाट भए पनि अध्यादेशको विषयमा गल्ती भएकै हो,&rsquo; उनले भने, &lsquo;अब पनि काममा ढिलाइ गरेर पीडितमा निराशा बढाउने काम गर्न हुन्न ।&rsquo;<br />\r\nअन्तरिम संविधान २०६३ को धारा ८८ मा अध्यादेश जारी भएपछि बसेको संसद् बैठकको ६० दिनमा प्रतिस्थापन हुन नसके निष्क्रिय हुने व्यवस्था छ । संविधानमा उल्लिखित उक्त व्यवस्थाअनुसार प्राधिकरणको अध्यादेश प्रतिस्थापन नभएपछि गत १२ गतेबाट निष्क्रिय भएको हो । सरकारको सिफारिसमा राष्ट्रपति रामवरण यादवले पुनर्निर्माण प्राधिकरण अध्यादेश असार ७ मा जारी गरेका थिए । एक महिनापछि साउन ७ गते प्रतिस्थापनका लागि व्यवस्थापिका संसद् सचिवालयमा दर्ता भए पनि संसद् बैठकमा भने प्रस्तुत हुन सकेको थिएन । उक्त कारणले गत १२ गतेबाट प्राधिकरण निष्क्रिय भएको हो । &lsquo;यदि म अर्थमन्त्री छु । कसैले बजेट पास गर्न दिँदिन भन्यो । के गर्ने कसरी समझदारी गर्ने म आफैं दौडन्छु ।<br />\r\nतर राजनीतिक दलहरूको विरोधका बाबजुद व्यवस्थापिका संसद् बैठक सुरु हुन तीन दिनअघि पुनर्निर्माण अध्यादेश जारी गरे पनि सम्बन्धित मन्त्रीले काम नै गरेनन्,&rsquo; पूर्वअर्थमन्त्री सुरेन्द्र पाण्डे भन्छन्, &lsquo;तर प्राधिकरण विधेयक पास गराउने विषयमा कानुनमन्त्री दौडनुपर्ने हो कि हैन ? चुपचाप बसेर अध्यादेशको अवधि सकियो भन्नु लाजमर्दो विषय हो ।</p>\r\n', '9a86889f40717519306c441f92ff85dd.jpg', 6, 1, 101, '2015-09-21 21:26:56', 1, 'inceptioncms.com'),
(35, 'खुल्यो बाटो समृद्धिको', '<p>आश्विन ३, २०७२- &lsquo;संविधान आएर के हुन्छ?&rsquo; राजनीतिमा त्यति चासो नराख्ने धेरै युवाहरूबाट पछिल्लो समय यो प्रश्न आउने गरेको छ। के जनताले अहिले पाइरहेको भन्दा राम्रो काम पाउँछन्? बेरोजगारले रोजगारी पाउँछन्? व्यवसायको वातावरण बनेर नाफा कमाइन्छ? महँगी घट्छ? यावत् प्रश्नहरू आमसर्वसाधारणसँग छन्। यसको कुनै दुई टुक जवाफ छैन। तर एउटा कुरा भने पक्कै भन्न सकिन्छ। पूर्ण संविधानले विश्वास जगाउँछ।</p>\r\n\r\n<p>त्यो विश्वास मुलुकका शासकप्रति, राजनीतिक दलप्रति, सरकारले बनाउने नीतिप्रति, व्यवसाय गर्दा समस्या हँुदैन भनेर समाजप्रतिको हो। विश्वासले नै लगानी बढ्ने हो। लगानीले रोजगारी र रोजगारीले गरिबी कम गर्नेछ। सबैभन्दा ठूलो कुरा अब राजनीतिक दललाई सर्वसाधारणको गरिखाने अधिकार हनन हुने गरी बन्द हडताल, चन्दा, घूसखोरीमा लिप्त हुने स्वतन्त्रतामा कमी आउनेछ। संक्रमणकालका नाममा राजनीतिक खिचातानीको अवसर पनि रहने छैन।<br />\r\n&lsquo;अब दलहरूले राजनीतिक संक्रमण भनेर पन्छिन सक्ने अवस्था रहेन,&rsquo; उद्योग वाणिज्य महासंघका अध्यक्ष पशुपति मुरारका भन्छन्, &lsquo;समृद्धिका लागि कार्यक्रम ल्याउने र त्यसलाई कार्यान्वयन गर्ने बाटो खुलेको छ।&rsquo;<br />\r\nकरिब ३० अर्ब रुपैयाँ खर्चिएर बनेको संविधानले अब समृद्धिको बाटो खोल्ने अपेक्षा सबैतिरबाट छ। तर हिँड्नुपर्ने बाटो भने कठिन नै हुनेछ। २० वर्षयता मुलुकको अर्थतन्त्रलाई राजनीतिले यसरी थिचेको छ कि यसलाई उकास्न अर्को परिपक्वता आवश्यक पर्नेछ। २०५१ यता मुलुकको आर्थिक वृद्धिदर ७ प्रतिशत पुग्न सकेको छैन। जबकि यहाँभन्दा चरम द्वन्द्वको सामना गरेका इथियोपिया, रुवान्डाजस्ता मुलुकको वृद्धिदर औसत ८ प्रतिशत छ। यहाँ भने पछिल्लो दशकमा आर्थिक वृद्धिदर औसत ४ प्रतिशतमै सीमित<br />\r\nभएको छ।<br />\r\n२०४७ देखि माओवादी द्वन्द्व सुरु हुनुपर्व औसत ५ दशमलव १८ प्रतिशतले विस्तार भइरहेको अर्थतन्त्रमा त्यसपछि ब्रेक लाग्यो। द्वन्द्वका क्रममा लगानी बढ्न सकेन भने उत्पादनका साधनमा माओवादीको कब्जासमेत रह्यो। द्वन्द्व जारी रहेको ११ वर्षमा अर्थतन्त्रको विस्तार औसत ३ दशमलव ६ प्रतिशतका दरले मात्रै भयो।<br />\r\nसरकारी खर्चको धज्जी उडेको छ। सरकारले जति बढी खर्च गर्न सक्यो त्यति नै निजी क्षेत्र पनि आकर्षित हुने हो। २०४७ को बजेटमा विकास खर्च साधारणको तुलनामा दोब्बरभन्दा बढी थियो। त्यतिबेलाको बजेटमा ७ अर्ब साधारण र १६ अर्ब विकास बजेट विनियोजित थियो। २०४८ मा निर्वाचन खर्च हुँदा पनि ६२ प्रतिशत विकास बजेट थियो। तर २०५९ मा आइपुग्दा विकास खर्च ३८ प्रतिशतमा झर्&zwj;यो। अझ २०६१ मा आइपुग्दा साधारण खर्च विकासको दोब्बर छेउछाउ पुगिसकेको थियो।<br />\r\nदलीय स्वार्थ कायमै रहे जस्तोसुकै राजनीतिक परिवर्तन भए पनि सर्वसाधारणको जीविकामा कुनै सुधार नहुने दृष्टान्त गणतन्त्रपछिको अर्थतन्त्रमा देखिएको हो। ठूलो अपेक्षासाथ युवाहरूको संलग्नतामा भएको २०६२/६३ को आन्दोलनपछि मात्रै करिब ३० लाख श्रमशक्ति काम खोज्दै विदेशिएको छ। उनीहरूले पठाउने रेमिट्यान्स मुलुक धान्ने साधन बनेको छ। व्यापार घाटा दिनकै १ खर्ब ८० करोड पुगेको छ। जसलाई रेमिट्यान्सले नै भरथेग गरेको छ। मूलत: राजनीतिले नै बिगारेको अर्थव्यवस्थालाई राजनीतिले नै ट्रयाकमा ल्याउन सक्नेछ। त्यसमाथि महाभूकम्पले अर्थतन्त्रमा ७ खर्बको क्षति पुर्&zwj;याएको छ। त्यसैले संविधानसँगै खुलेको बाटोमा हिँड्न सक्ने आधार तयार पार्नुपर्नेछ।</p>\r\n\r\n<p><strong>दलीय एकता</strong><br />\r\nसंविधान जारी गर्ने बेलामा ठूला दलहरूबीच देखिएको एकता समृद्धिका लागि पनि कायम रहनु आवश्यक हुनेछ। सबैभन्दा पहिलो काम असन्तुष्ट पक्षलाई समेट्नु हुनेछ। मुलुकका करिब ६० प्रतिशत उद्योग भएको तराई/मधेसमा निरन्तर चल्ने बन्द/हडतालको सिलसिलाले उत्पादन घटाउनेछ। निरन्तरको बन्द र भूकम्पपछि पुनर्निर्माणको काम नथालिँदा यस वर्ष पनि ४ प्रतिशतकै हाराहारीमा आर्थिक वृद्धि हुने अनौपचारिक प्रक्षेपण राष्ट्र बैंकको छ। &lsquo;४ प्रतिशत कट्न कठिन हुने देखिन्छ,&rsquo; राष्ट्र बैंक अनुसन्धान विभाग प्रमुख नरबहादुर थापाले बताए।<br />\r\nबन्दका कारण ५ हजार बढी ट्रक सीमापारि बस्न बाध्य छन्। २ हजार उद्योग बन्द छन्। करिब ४ लाख कामविहीन भएको अनुमान महासंघको छ। यसले उत्पादन घट्नुका साथै व्यापार घाटा बढाउँदै लानेछ। &lsquo;सबैलाई समेटेर शान्तिपूर्ण रूपमा आर्थिक गतिविधि सञ्चालन हुने अवस्था बनाउनुपर्छ,&rsquo; चेम्बर अफ कमर्सका अध्यक्ष राजेशकाजी श्रेष्ठ भन्छन्।<br />\r\nत्यसपछि सबै दलहरूले विकासका मुद्दामा आ&ndash;आफ्नो एजेन्डा सार्वजनिक गर्न सक्छन्। जसले उत्पादन, वितरण, ढुवानी र निर्यातमा कुनै पनि प्रकारको अवरोध नहुने प्रतिबद्धता जनाउन सक्नेछन्। संविधानमै २ वर्षसम्म सरकार ढाल्न नपाइने भनी गरिएको व्यवस्थाले राजनीतिक नीतिगत स्थायित्व हुनेछ। यसबाहेक संविधान जारी भएको सुरुका वर्षहरूमा आइपर्ने जटिलतासँग लड्न पनि दलीय एकता केही वर्ष आवश्यक हुनेछ।</p>\r\n\r\n<p><strong>वित्तीय आयोगको क्रियाशीलता</strong><br />\r\nअब तत्कालै थाल्नुपर्ने काम वित्तीय संघीयताको हो। राजस्व संकलनको मोटामोटी खाका संविधानमै समेटिए पनि बाँडफाँटको विषय अब वित्तीय आयोगले हेर्नेछ। प्रान्त विभाजनको अवस्था हेर्दा धेरैलाई केन्द्रको सहयोग आवश्यक हुने देखिन्छ। केन्द्र र राज्यबीचको आर्थिक सम्बन्धलाई प्रस्ट्याउन वित्तीय आयोगको तत्काल आवश्यकता पर्नेछ।<br />\r\nकेन्द्र होस् वा प्रान्त दुवै सरकारको मुख्य आम्दानी राजस्व हो। आयकर, मूल्य अभिवृद्धिकर (भ्याट), अन्त:शुल्क, भन्सार शुल्क आदि कर राजस्वका स्रोत हुन्। संविधानमा आयकर, भ्याट, अन्त:शुल्क र भन्सार शुल्क केन्द्रले उठाउने उल्लेख छ। विदेशी ऋण राज्यले लिन नपाउने<br />\r\nव्यवस्था छ।<br />\r\nठूला पूर्वाधार आयोजना केन्द्र मातहत रहने उल्लेख छ। प्राकृतिक स्रोतको उपयोग नीति र त्यसबाट स्थानीयलाई दिनुपर्ने लाभका विषयमा पनि आयोगले तत्काल टुंगो लगाउनुपर्छ। ठूला जलविद्युत् आयोजनामा विदेशी लगानी आवश्यक हुने भएकाले पनि तत्काल यसलाई सम्बोधन गर्नु आवश्यक हुनेछ।<br />\r\nस्थानीय तहमा खर्चको जवाफदेहिताको प्रश्न पनि टड्कारो रूपमा आएको छ। स्थानीय निकाय वा प्रान्त कसको निर्वाचन गर्ने भन्ने विषय पनि तत्काल सम्बोधन हुनुपर्ने विषय रहेको विज्ञ बताउँछन्।</p>\r\n\r\n<p><strong>छिमेकीसँगको सम्बन्ध</strong><br />\r\n&lsquo;दुई ठूला सपिङ मलको बीचमा चार आना खाली जग्गा दाजुभाइको झगडाका कारण खाली छ भने त्यो फोहोर फाल्ने ठाउँ हुन्छ। त्यही ठाउँमा आकर्षक र स्वस्थकर रेस्टुरेन्ट बनाउन सकियो भने आम्दानी हुन्छ,&rsquo; केही अघिको भेटमा गैरआवासीय नेपाली संघका संस्थापक अध्यक्ष उपेन्द्र महतोले चीन, नेपाल र भारतको सम्बन्धलाई यसरी अथ्र्याएका थिए।<br />\r\nचीन विश्वकै दोस्रो ठूलो अर्थतन्त्र (पीपीपीअनुसार पहिलो) हो। भारत चौथो ठूलो हो। बजार (जनसंख्या) को हिसाबले पनि चीन सबैभन्दा ठूलो र भारत दोस्रो नम्बरमा छ। यी दुई मुलुकले प्रविधि र जनशक्ति विकासमा गरेको प्रगति पनि लोभलाग्दो छ।<br />\r\nयी मुलुकहरू संसारकै लागि लगानीको स्रोत बनिरहेका छन्। अफ्रिका, आसियान र दक्षिण अमेरिकामा यिनीहरूको विशेष चासो छ। चीनलाई लगानीको अवसर खोज्नु छ। भारतलाई त लगानीको अवसरसँगै नेपाली उत्पादनबाट लाभ पनि लिनु छ। विशेषगरी बिजुली उत्पादन गरी आफ्नै देशमा लान उसले खोजिरहेको पनि छ। दुई देशबीच भएको ऊर्जा व्यापार सम्झौता (पीटीए) ले बिजुलीको कारोबारलाई वैधानिकता दिइसकेको छ।<br />\r\nसंविधान निर्माण प्रक्रियामा चीनले तत्काल खुसी व्यक्त गरे पनि भारतको आधिकारिक धारणा आइसकेको छैन। राजनीतिक स्थायित्व मात्र नभई समृद्धिका लागि पनि भारत र चीनसँगको व्यावसायिक साझेदारी निकै महत्त्वपूर्ण हुनेछ।</p>\r\n\r\n<p><strong>निजी क्षेत्रको भूमिका</strong><br />\r\nसमृद्धिका लागि निजी क्षेत्रको भूमिकालाई अवमूल्यन गर्न मिल्दैन। संविधानको प्रस्तावनालगायत केही ठाउँमा समाजवादलाई महत्त्व दिइएकाले निजी क्षेत्र सशंकित छ। विशेषगरी विदेशी लगानीकर्ताले आशंका देखाउन सक्ने निजी क्षेत्रको बुझाइ छ। &lsquo;स्वदेशीलाई त होइन तर विदेशी लगानीकर्ता समाजवाद देखेर हच्किन सक्ने खतरा भने छ,&rsquo; उद्योग परिसंघका उपाध्यक्ष मनोज केडिया भन्छन्, &lsquo;लगानीमैत्री कानुन ल्याएर यसलाई सम्बोधन गर्न सकिन्छ।&rsquo;<br />\r\nसंसद्मा आर्थिकसँग सम्बन्धित करिब ३ दर्जन कानुन अड्किएर बसेका छन्। जो लगानी र निजी क्षेत्र प्रवद्र्धनका लागि महत्त्वपूर्ण छन्। तिनलाई तत्काल पारित गर्नुपर्ने माग निजी क्षेत्रको छ। यसबाहेक विभिन्न राज्यमा सञ्चालित उद्योग व्यवसायलाई मर्का नपर्ने र दोहोरो करलगायतको समस्या नहोस् भन्नेतर्फ उनीहरूले सरकारको ध्यानाकर्षण गराइरहेका छन्।</p>\r\n', '2d1c69c7620796bb9844b8c81b930bde.jpg', 6, 1, 113, '2015-09-21 21:27:37', 1, 'inceptioncms.com'),
(36, 'सुनिश्चित उपभोक्ता अधिकार', '<p>आश्विन ४, २०७२- नयाँ संविधानले पहिलोपटक उपभोक्ताको अधिकारलाई सुनिश्चित गरेको छ। राष्ट्रपती रामवरण यादबले आइतबार जारी गरेको &lsquo;नेपालको सविद्यान २०७२&rsquo;मा पहिलो पटक उपभोक्तका अधिकारका विषय समावेश गरेर त्यसको सुनिश्चितता भएको हो।</p>\r\n\r\n<p>संविधानमा उपभोत्ताका हक,हित र क्षतिपूर्ती सम्बन्धी स्पष्ट लेखिएको छ। धारा ४४ को दफा १ मा प्रत्येक उपभोक्तालाई गुणस्तरीय बस्तु तथा सेवा प्राप्त गर्ने हक हुने उल्लेख गरिएको छ। धारा ४४को २ मा गुणस्तरहिन वस्तु वा सेवाबाट<br />\r\nक्षति पुगेको व्यक्तिलाई कानुन बमोजिम क्षतिपूर्ति पाउने हक हुने उल्लेख छ।<br />\r\nजनकारहरूका अनुसार अघिल्लो संविद्यानमा उपभोक्ताको हक/हितका बारे उल्लेख थिएन। &lsquo;उपभोत्ता अधिकारको विषयमा पहिलोपटक नयाँ संविधानमा लेखिएको हो,&rsquo; उपभोक्ता हित सरक्षण मन्चका अध्यक्ष ज्योति बानियाँले भने, &lsquo;यो ठुलो उपलब्धी हो। उपभोक्ताको अधिकार/हकका लागि युग परिवर्तन भएको छ।&rsquo; मौलिक हक उल्लेख हुदा उपभोक्ता ठगिएको महसुस भए अदालत जान सहज हुने उनले बताए।<br />\r\nयसले उपभोक्ताको हित र अधिकारमा परिवर्तन ल्याउने आशा गरेको उनले बताए। नयाँ सविद्यानले स्वच्छ बजार हुने उपभोक्ताबादीहरूको भनाई छ। उपभोक्ता अधिकारका बारेमा नितीमा पनि पारेको छ। सविद्यानको घारा ५१ घ को ७ मा कालोबजारी, एकाधिकार, कृत्रिम अभाव सिर्जना गर्ने र प्रतिस्पर्धा नियन्त्रण जस्ता कार्यको अन्त्य गर्दै राष्ट्रिय अर्थतन्त्रलाई प्रतिस्प्रर्धी बनाई व्यापारिक स्वच्छता र अनुशासन कायम गरी उपभोक्ताको हित सरक्षण गर्ने उल्लेख छ। यो विषय पनि पहिलो पटक समाबेश भएको उपभोक्ताबादीहरू बताए।<br />\r\n&lsquo;गुणस्तरीय सेवामा सबैको सहज, सुलभ र समान पहुच सुुनिश्चित गर्ने,&rsquo; धारा ५१ ज ६ मा भनिएको छ। धारा ३६ को दफा १ मा प्रत्येक नागरिकलाई खाद्य सम्बन्धी हक हुने उल्लेख छ। धारा ३६ कै दफा २ मा प्रत्येक नागरिकलाई खाद्यबस्तुको अभावमा जीवन जोखिममा पर्ने अवस्थाबाट सुरिक्षत हुने हकको व्यवस्था गरिएको छ। त्यस्तै दफा ३ मा प्रत्येक नागरिकलाई कानुन बमोजिम खाद्य सम्प्रभुताको हक हुने उल्लेख गरिएको छ।<br />\r\nउपभोक्ता अधिकार अनुसन्धान मञ्चका अध्यक्ष माधव तिमिल्सेनाले पनि मौलिक हकमा समाबेश हुन ठुलो उपलब्धी भएको बताए। &lsquo;सविद्यान उपभोक्ता मैत्री छ। उपभोक्ताको अधिकार मौलिक हकमा रुपमा समावेश गर्नु उत्कृष्ट हो,&rsquo; उनले भने, &lsquo;अब कार्यन्वयनमा जोड दिनुपर्छ।&rsquo; उपभोक्ताको हितका कुरा संविधानमा उल्लेख नहुँदा उपभोक्ताहरू आफ्नो अधिकारबाट वञ्चित हुँदै आएका थिए। यातायात लगायत उपभोग्य वस्तुमा दैनिक ठगिएका छन्। सरकारी निकायले अनुगमन गरे पनि कालोबजारी र सिन्डिकेट कार्टेलिङ गर्ने व्यवसायीलाई कारबाही नहुँदा उपभोक्ताले सास्ती झेल्नुपरेको थियो।</p>\r\n', '3d6e03b8d32662a7e71560cdada54006.jpg', 6, 0, 115, '2015-09-21 21:28:14', 1, 'inceptioncms.com'),
(37, 'संविधानको उपलक्ष्यमा राष्ट्रबैंकले सिक्का निकाल्ने', '<p>आश्विन ४, २०७२- नेपाल राष्ट्र बैंकले नेपालको संविधान २०७२ घोषणा भएको उपलक्ष्यमा २००० र १०० का स्मारिका सिक्का निकाल्ने भएको छ ।&nbsp;बैंकले सोमबार विज्ञप्ति प्रकाशित गर्दै संविधान घोषणा भएको ऐतिहासिक अवसरको सम्झनामा रु, २००० दरका चाँदिका र १०० दरका क्यूप्रोनिकेल (तामा र निकेल) स्मारिका सिक्का निष्कासन तथा बिक्री वितरण गर्ने जनाएको हो ।</p>\r\n', 'c2297b83bc39d6a6612228a5e4c407ab.jpg', 6, 1, 120, '2015-09-21 21:28:49', 1, 'inceptioncms.com'),
(38, 'सूचना प्रविधिको विषय सञ्चार मन्त्रालयले हेर्ने', '<p>आश्विन १, २०७२- सूचना प्रविधि (आइटी) को विषय पूर्ण रुपमा सूचना तथा सञ्चार मन्त्रालयले हेर्ने भएको छ । यसअघि केही सञ्चार र केही विज्ञान प्रविधि मन्त्रालयले हेर्दै आएको थियो । यसले गर्दा काममा समन्वय गर्न समस्या आएपछि आइटी व्यवसायीले सूचना प्रविधिलाई एउटै निकायमा राख्नुपर्ने दबाब दिँदै आएका थिए ।</p>\r\n\r\n<p>&lsquo;मन्त्रिपरिषद्बाट सबै आइटी विषय सूचना तथा सञ्चारको क्षेत्राधिकारभित्र पार्ने निर्णय भएको हो,&rsquo; मन्त्रालयका सह सचिव तथा प्रवक्ता रामचन्द्र ढकालले भने, &lsquo;शुक्रबार मन्त्रिपरिषद्को निर्णयले पारित गरेको छ ।&rsquo;</p>\r\n\r\n<p>सरकारको कार्यविभाजन नियमावली २०६९ अनुसार हाल विज्ञान प्रविधि तथा वातावरण मन्त्रालय अन्तर्गत रहेको आइटीलाई सञ्चार मन्त्रालयमा राख्ने निर्णय भदौको दोस्रो साता भएको हो ।</p>\r\n\r\n<p>निर्णयका आधारमा राजपत्रमा सूचना तथा सञ्चार सम्बन्धि नीति शब्दको सट्टा सूचना प्रविधि तथा सञ्चार सम्बन्धी नीति भन्ने शब्द समावेश गरिने भएको छ ।&nbsp; &lsquo;मन्त्रालयले सूचना प्रविधिलाई दिशा निर्देश गर्नका लागि सूचना प्रविधिको संशोधित नीति समेत स्विकृत गर्दैछ,&rsquo; ढकालले भने । यसपछि विज्ञान प्रविधि अन्तर्गत पर्ने सूचना प्रविधि विभागका काम पनि सञ्चार मन्त्रालयको मातहतमा हुनेछ ।</p>\r\n\r\n<p>&lsquo;सूचना प्रविधिको विकास र विस्तारमा यो निर्णयले सकारात्मक भूमिका निभाउने&nbsp; अपेक्षा छ,&rsquo; कम्प्युटर एसोसिएसन अफ नेपाल (क्यान) का अध्यक्ष विनोद ढकालले भने ।</p>\r\n\r\n<p>सूचना प्रविधिको विषयलाई अहिलेसम्म वेवास्ता गरेको र आइटी नै नबुझ्ने व्यक्तिलाई विज्ञान प्रविधि मन्त्रालयमा पठाइँदा विकास हुन नसकेको आइसिटी एशोसिएसनका अध्यक्ष भेषराज पौडेलले बताए ।</p>\r\n\r\n<p>&lsquo;जनशक्ति विकास नभई योजना आउँथे, थन्किन्थे,&rsquo; उनले भने, &lsquo;समन्वयमा पनि समस्या थियो । अब एउटै मन्त्रालयको मातहतमा भएपछि निर्णय गर्न सजिलो हुनेछ ।&rsquo;</p>\r\n\r\n<p>तर सरकारले सूचना प्रविधिका कार्यक्रम ल्याउनु अगाडी विषयसंग सम्बन्धित जनशक्ति तयार गर्न आवश्यक रहेको उनले बताए । नेपालले आइटीसँग सम्बन्धित विषयलाई विद्युतीय कारोबार ऐन अन्तर्गत हेर्दै आएको छ ।</p>\r\n\r\n<p>&lsquo;अहिले सूचना प्रविधि आधारभूत आवश्यकतामा परिसकेको स्थिति छ,&rsquo; प्रवक्ता ढकालले भने, &lsquo;यसले गर्दा सरकारले विकास कार्यक्रममा महत्वका साथ सूचना प्रविधिलाई समावेश गर्ने उद्देश्यले नयाँ निर्णयहरु गरेको हो ।&rsquo;</p>\r\n\r\n<p>यसपालीको बजेटमा समेत अबको पाँच वर्षमा सूचना प्रविधिको साढे दुई प्रतिशत सहित सूचना तथा सञ्चारको योगदान कुल ग्रार्हस्थ उत्पादनमा साढे ७ प्रतिशत पुर्&zwj;याउने उल्लेख छ । सूचना प्रविधिको क्षेत्रमा अप्रत्यक्ष रुपमा अर्बौको लगानी भएकाले यसको सुरक्षा गर्न मन्त्रालयले विशेष योजना तय गर्नुपर्ने आइसिटीका अध्यक्ष पौडेलले बताए । &lsquo;नभए मन्त्रालय परिवर्तन गरेपनि अवस्था जहाँको त्यही रहनेछ,&rsquo; उनले भने ।</p>\r\n\r\n<p>गतवर्षको आर्थिक सर्वेक्षणले समेत सूचना तथा प्रविधि (आइटी) को विकासलाई व्यवहारिक बनाउने काम चुनौतीपूर्ण रहेको देखाएको छ । सर्वेक्षणमा &lsquo;सबै क्षेत्रमा विज्ञान तथा सूचना प्रविधिको विकासलाई आत्मसात नगर्दा समस्या आएको&rsquo; उल्लेख छ । सूचना तथा सञ्चारका प्रवक्ता ढकालले कार्यविभाजनबारे राजपत्रमा निस्किएपछि सूचना प्रविधिको विषयमा कसरी अगाडी बढ्ने भनेर मन्त्रालयले गृहकार्य सुरु गर्ने बताएका छन् । कार्य विभाजनको निर्णय अनुसार नै स्मार्ट सिटीको जिम्मेवारी पनि सारिएको सूचना तथा सञ्चार मन्त्रालयले जनाएको छ ।</p>\r\n', 'e43489868aba8dd47ad2e19895e4efe3.jpg', 7, 0, 89, '2015-09-21 21:32:46', 1, 'inceptioncms.com'),
(39, 'वर्डलिंकले बार्षिकोत्सवमा तीन गुणा इन्टरनेट उपलब्ध गराउने', '<p>भाद्र २९, २०७२- वर्ल्डलिंक २० औं वार्षिकोत्सबका अवसरमा फाइबर अप्टिकल केबलबाट प्रदान गरिने इन्टरनेट उही शुल्कमा तीन गुणा बढी उपलब्ध गराउने घोषणा गरेको&nbsp; छ।</p>\r\n\r\n<p>कम्पनीले १० एमबिपिएस गतिको डाटा मासिक १ हजार ३ सय रुपैयाामा ७५ जिवी उपलब्ध गराउने छ । वर्ल्डलिंक ले उपलब्ध गराउने इन्टरनेट संसारकै सस्तो भएको कम्पनीका कार्यकारी निर्देशक विजय जालानले दावी गरे ।</p>\r\n\r\n<p>अन्य मुलुकमा ३० देखि ५० जिवि डाटको मासिक ३ हजार ५ सयदेखि ४ हजार ५ सय रुपैयाँसम्म पर्छ, उनले भने, हामीले दिएको इन्टरनेट यति उच्च गतिमा यति धेरै भोलुममा संसारमै कही पाइँदैन । यसै गरी कम्पनीले साना अफिसलाई लक्षित २५ एमबिपिएस गतिको मासिक १ हजार ६ सयमा १ सय २० जिवि डाटा उपलब्ध गराउने विज्ञप्तिमा जनाइएको&nbsp; छ। तोकिएको भोल्युम सकिएपछि कम्पनीले इन्टरनेट नकाटिने जनाएको छ ।</p>\r\n\r\n<p>वर्ल्डलिंकले बार्षिकोत्सवका&nbsp; अवसरमा जडान खर्चसमेत २० रुपैयाँमात्र लिने घोषणा गरेको छ । यस अवसरमा पाटन दरबार स्क्वारलगायत&nbsp; काठमाडौं उपत्यका भित्र रहेका विभिन्न सामुदायिक स्कुलहरुमा एक वर्षको लागि नि:शुल्क इन्टरनेट सेवा प्रदान गरेको कम्पनीले जनाएको छ ।</p>\r\n\r\n<p>कम्पनीले साफ यू&ndash;१९ च्याम्पियनसिप जित्ने नेपाली युवा टिमका सदस्यलाईसमेतसम्मान स्वरुप एक वर्षका लागि उच्च गतिको नि:शुल्क इन्टरेनट सेवा प्रदान गर्ने निर्णय गरेको छ । यसै अवसरमा कम्पनीले जावलाखेलमा बाल बृद्धपार्क पुनर्निर्माण गरेको छ । उक्त पार्कको सभासद गगन थापाले मंगलबार उद्&zwj;घाटन गरे ।</p>\r\n\r\n<p>कम्पनीले वर्षौंदेखि बाल छहारी अनाथालयलाई मासिक आर्थिक सहयोगका साथै त्यसमा रहने सम्पूर्ण अनाथहरुलाई पुस्तक तथा लुगाफाटा प्रदान गर्ने गर्दै आएको विज्ञप्तिमा जनाएको छ ।</p>\r\n', '5b7f7293fa5b3daaae6a1d45067487d7.jpg', 7, 0, 82, '2015-09-21 21:33:29', 1, 'inceptioncms.com'),
(40, '‘स्मार्ट’ आन्दोलन', '<p>भाद्र २१, २०७२- केही सातादेखि भारतको गुजरातमा चलेको पटेल समुदायको आन्दोलन रोक्न त्यहाँको राज्य सरकारले कर्फ्यू र सेना परिचालन मात्र पर्याप्त ठानेन । उसले गुजरातको ठूलोमध्येको एक सहर अहमदाबादमा मोबाइल इन्टरनेट नचल्ने बनायो, जहाँ पटेल समुदायको आन्दोलन उत्कर्षमा थियो । मोबाइल इन्टरनेटमा रोक लगाउनुको सोझो अर्थ थियो&ndash; सर्वसाधारणमाझ लोकप्रिय मोबाइल एप &lsquo;ह्वाट्सएप&rsquo; को पहुँच नदिनू । आन्दोलनकारीले सूचना आदानप्रदानका लागि ह्वाट्सएपको व्यापक प्रयोग गरेका थिए, त्यस आन्दोलनलाई कतिले ह्वाट्सएप आन्दोलनकै नाम समेत दिएका छन् ।</p>\r\n\r\n<p>अगस्ट २५ मा पक्राउ परेका आन्दोलनका नेता हार्दिक पटेलले आन्दोलनकारीलाई ह्वाट्सएप मार्फत भोलिपल्ट बन्दको आह्वान गरेपछि राज्यले यस्तो जुक्ति निकालेको थियो । तर, भारतको गुजरात राज्यमाकेत्रै यस्तो प्रतिबन्ध लगाउने पहिलो निकाय भने होइन ।&nbsp;<br />\r\n<br />\r\nसन् २०१० मा ट्युनिसियाबाट सुरु अरब आन्दोलनका क्रममा सोसल मिडिया र मोबाइल इन्टरनेटको व्यापक प्रयोग भएको थियो । ट्युनिसियाबाट सुरु भएर इजिप्ट, लिबिया, यमन, सिरिया र बहराइनमा भएको निरंकुशताविरोधी प्रदर्शनमा सोसल मिडिया र मोबाइल इन्टरनेटको प्रयोगलाई &lsquo;कलेक्टिभ एक्टिभिजम&rsquo; को उदाहरण मानिन्छ । आन्दोलनका बेला ट्युनिसिया र इजिप्टमा&nbsp;ट्विटर र फेसबुकमाथि नै प्रतिबन्ध लगाइएको थियो । आन्दोलनकारीले आदानप्रदान गर्ने सूचनामा कडाइ गर्न यस्तो प्रतिबन्ध लगाइएको हो ।<br />\r\n<br />\r\nअरब आन्दोलनमा फेसबुक, ट्विटरको प्रभावबारे &lsquo;दुबई स्कुल अफ गभरमेन्ट&rsquo; ले गरेको एक अनुसन्धानमा सहभागी इजिप्ट र ट्युनिसियाका १० आन्दोलनकारीमध्ये ९ जनाले विद्रोहका क्रममा फेसबुक प्रयोग गरेको जवाफ दिएका थिए । अरब आन्दोलनमा आन्दोलनकारी आफैंले फेसबुक र ट्विटरमा सेयर गरेका तस्बिर, भिडियो र जानकारी अन्तर्राष्ट्रिय मिडियाको लागि &lsquo;स्कुप&rsquo; मसला बने ।<br />\r\nआन्दोलनकारीले यस्ता सोसल मिडिया चलाउन थालेपछि यसका प्रयोगकर्ताको संख्याले स्थानीय मिडियाका पाठक, स्रोता र दर्शकलाई उछिन्यो । आन्दोलनको तीन महिनामा ट्विटरमा इजिप्ट ह्यासट्याग मात्रै साढे एक अर्बपटक मेन्सन भएको थियो । लिबिया ह्यासट्याग झन्डै १० लाख, बहराइन ह्यासट्याग ६ लाखभन्दा बढीपटक प्रयोग भएको थियो । सोसल मिडियामा प्रयोग भएका अरबका अधिकांश आन्दोलन आफ्नो उद्देश्यमा सफल पनि भएका छन् ।<br />\r\n&nbsp;</p>\r\n\r\n<p>विश्वभर हुने आन्दोलनमा सोसल मिडिया र मोबाइल एप्लिकेसनहरू लोकप्रिय बन्दै गएको छ । मानिसलाई आन्दोलनबारे जानकारी, आन्दोलनकै बेलामा तस्बिर र भिडियो प्रवाह गर्न सकिने भएकाले यसको प्रभावकारिता बढेको हो । सत्ता र शक्तिलाई चुनौती दिन थालेपछि स्वाभाविकै हो&ndash; यसमा सरकारी अंकुश पनि पर्न थालेको छ ।<br />\r\n<br />\r\nप्रजातन्त्र माग्दै अघिल्लो वर्ष हङकङमा भएको आन्दोलनलाई रोक्न सरकारले मोबाइल, इन्टरनेटमा प्रतिबन्ध लगाएको थियो । तर, आन्दोलनकारीहरू यत्तिमै रोकिनेवाला थिएनन् । त्यही बेलामा अमेरिकी कम्पनी ओपन गार्डेनले &lsquo;फायर च्याट एप&rsquo; भर्खरै सार्वजनिक गरेको थियो । यसको विशेषता के भने, यसमा म्यासेज पठाउन इन्टरनेट आवश्यक थिएन । प्रयोगकर्ताले ब्लुटुथको माध्यमबाट वरपरको मोबाइलमा बिनाइन्टरनेट सन्देश पठाउन सक्थे ।&nbsp;<br />\r\nकन्सर्टमा सहभागी हुने युवालाई लक्षित एप अधिकारको आन्दोलनकर्मीहरूले प्रयोग गरेर नयाँ सम्भावनाको पाटो खोलिदिएपछि निर्मातामध्येका एक मिका बोनोलिल पनि दंग थिए । हङकङको आन्दोलनमा आफ्नो एप प्रयोग भएको हेर्न उनी आफैं त्यहाँ पुगेका थिए । आन्दोलन दबाउन मोबाइल इन्टरनेटमा प्रतिबन्ध लगाइए पनि रोक्न नसकिने सन्देश एपको प्रयोगले दिएको थियो ।<br />\r\nयसै वर्ष इक्वेडरमा भएको ट्याक्स विरोधी आन्दोलनमा पनि फायरच्याट प्रयोग भयो । सरकारले मोबाइल इन्टरनेटमा कडाइ गरेपछि उनीहरूले हङकङेली आन्दोलनकारीको सिको गरे । हङकङ र इक्वेडरको आन्दोलनमा फायरच्याट मार्फत सन्देश आदानप्रदान भएको भरमा हजारौं मानिस सहभागी भएका थिए ।<br />\r\n<br />\r\nआन्दोलनमा सहभागिताका लागि आह्वान गर्न होस् वा आन्दोलन चलिरहेको बेला सूचना आदान प्रदान गर्न, अन्य परम्परागत सञ्चारमाध्यमभन्दा सोसल मिडिया र मोबाइल एप प्रभावकारी देखिन्छन् । किनकि यसमा तत्काल सन्देश प्रवाह गर्न सकिन्छ र चाहनेजत्तिले तुरुन्त सूचना पाउन सक्छन् । यसका लागि स्मार्टफोन नै काफी हुन्छ ।<br />\r\n<br />\r\nयस्ता प्रविधिको प्रयोग सधैं आन्दोलनको लागि मात्रै हुन्छन् भन्ने पनि छैन् । सामाजिक सद्भाव र भ्रातृत्व जगाउने काममा पनि यसको प्रयोग हुन सक्छ । जस्तो&ndash; कैलाली टीकापुरमा ७ जना सुरक्षाकर्मी मारिएपछि राजधानीको माइतीघर मण्डलामा आयोजित श्रद्धाञ्जलि सभामा झन्डै २ हजार ५ सय सहभागी भएका थिए । श्रद्धाञ्जलि सभाका सबै सहभागी फेसबुक ग्रुपमा निम्तोमा त्यहाँ पुगेका हुन् । फेसबुकको &lsquo;फेसेस अफ नेपाल इन फोटोग्राफी&rsquo; र &lsquo;मेन्स रुम नेपाल ग्रुप&rsquo; ले आफ्नो फेसबुक पेज मार्फत सहभागी हुन आह्वान गरेका थिए । लगत्तै, २९ अगस्टमा सद्भाव फैलाउने उद्देश्यले विविधतामा एकता नाम दिएर माइतीघर मण्डलामै गरिएको एक हजार दीप प्रज्ज्वलनका सहभागी पनि फेसेस अफ नेपाल इन फोटोग्राफीको आह्वानमा सहभागी भएका थिए ।<br />\r\n<br />\r\nभारतस्थित सोसल मिडिया एनालिटिक कम्पनी सिम्लिफाई ३६० का संस्थापक भूपेन्द्र खनाल आन्दोलनको बेला हिंसा भड्काउन पनि सोसल मिडियाको प्रयोग भएको बताउँछन् । &lsquo;सत्य तथ्य बाँड्न पनि प्रयोग भएको छ तर सोसल मिडिया मार्फत बाँडिएका सत्य स्वतन्त्र रूपमा पुष्टि हुँदैन,&rsquo; उनी भन्छन् । आन्दोलनका बेला ट्विटर, फेसबुक, ह्वाट्सएप मार्फत हिंसा भड्काउने खालका हल्ला फैलाउन प्रयोग हुन सक्ने भएकाले समस्या समाधान नहुन्जेल मोबाइल इन्टरनेटमा प्रतिबन्ध लगाउनु जायज लाग्छ उनलाई ।</p>\r\n\r\n<p>एजेन्सीहरूको सहयोगमा&nbsp;आन्दोलनमा सहभागिताका लागि आह्वान गर्न होस् वा आन्दोलन चलिरहेको बेला सूचना आदान&ndash;प्रदान गर्न, अन्य परम्परागत सञ्चारमाध्यमभन्दा सोसल मिडिया र मोबाइल एप प्रभावकारी देखिन्छन् । किनकि यसमा तत्काल सन्देश प्रवाह गर्न सकिन्छ र चाहने जतिले तुरुन्त सूचना पाउन सक्छन् । यसका लागि स्मार्टफोन नै काफी हुन्छ ।</p>\r\n', '0fdbd639c02dd66cefb99e60aa166abe.jpg', 7, 0, 96, '2015-09-21 21:35:34', 1, 'inceptioncms.com'),
(41, 'कसरी सकिन्छ स्मार्टफोनको ब्याट्री', '<p>आश्विन १, २०७२- स्मार्टफोन मान्छेको दैनिकीको सहायक त बनेको छ । तर यसको ब्याट्री बचाउनु ठूलो पनि छ । ठाउँठाउँमा ब्याट्री चार्जको सुविधा हुन्न र प्रयोगकर्ता स्वीच अफ भएको स्मार्टफोन बोकेर हिँड्नुपर्ने हुन्छ ।</p>\r\n\r\n<p>अमेरिकी अनुसन्धानकर्ता भने किन स्मार्टफोनको ब्याट्री चाँडै सकिन्छ भन्ने अनुसन्धानमा लागेका छन् र उनीहरूले केही उपलब्धि हासिल पनि गरिसकेका छन् ।</p>\r\n\r\n<p>उनीहरूको निष्कर्ष छ, राम्ररी प्रोग्रामिङ नगरिएका एपले ब्याट्री धेरै खपत गर्छन् । किनकि तिनीहरू स्लिप मोडमा भए पनि अपडेट चेक गरिरहेका हुन्छन् । यस्ता एपले एन्ड्रोइड फोनको ३० प्रतिशत ब्याट्री सखाप पार्ने निचोड छ ।</p>\r\n\r\n<p>दुई हजार एपको अनुसन्धानपछि उनीहरूले यस्तो निष्कर्ष निकालेका हुन् । यसबाट बच्न उनीहरूले हुस टुल पनि विकास गरेका छन् । जुन टुलले यस्ता बग भएका एपलाई स्लिप मोडमा अपडेट चेक गर्न दिन्न ।</p>\r\n', '9729840a5fa4ca9edf751b47b97bdf07.jpg', 7, 0, 78, '2015-09-21 21:36:12', 1, 'inceptioncms.com');
INSERT INTO `news` (`news_id`, `news_heading`, `news_description`, `news_image`, `category_id`, `is_headline`, `counter`, `news_posted_on`, `news_status`, `reporter`) VALUES
(42, 'आलिया भन्छिन्– अनुष्काका ब्वाईफ्रेन्ड ह्यान्डसम', '<p>भाद्र ३१, २०७२- आलिया भट्ट अहिले करिअरको उचाइमा छन् । उनका प्राय: सबै फिल्म हिट भएका छन् । साहिद कपुरसँग उनको नयाँ फिल्म &lsquo;सानदार&rsquo; प्रदर्शनको क्रममा छ ।&nbsp;<em>हार्पर बजार ब्राइड</em>ले आलियासँग उनको रोजाईबारे गरेको यो कुराकानीमा उनले सलमान खानको मुस्कान, ऋत्विक रोशनको कपाल अनुष्का शर्माका ब्वाईफ्रेन्ड क्रिकेटर विराट कोहलीबारे बोलेकी छन् :</p>\r\n\r\n<p><strong>स्टाइल आइकन ?</strong><br />\r\nअमिताभ बच्चन । अमिताभ बच्चन जस्तो स्टाइल आइकन कोही छैन । फ्रेन्चकट दाह्री, चस्मा र सुटले उनलाई भारतको सबभन्दा ठूलो स्टाइल आइकन बनाउँछ ।</p>\r\n\r\n<p><img alt=\"\" src=\"http://assets-cdn.ekantipur.com/images/third-party/entertainment/17092015025220Alia2-600x0.jpg\" /></p>\r\n\r\n<p><strong>सबभन्दा राम्रो मुस्कान&nbsp; ?</strong><br />\r\nसलमान खानको मुस्कान सबभन्दा राम्रो छ ।</p>\r\n\r\n<p><strong>सबभन्दा ह्यान्डम खेलाडी ?</strong><br />\r\nयो पनि कुनै प्रश्न हो, विराट कोहली । उनी मान्छे जति ह्यान्डसम छन्, उनको खेल पनि त्यति नै राम्रो छ ।</p>\r\n\r\n<p><strong>राम्रो कपाल ?</strong><br />\r\nऋत्विक रोशन । उनले बेलाबेला आफ्नो कपाललाई भिन्न फेसन दिएका छन् ।</p>\r\n\r\n<p><strong>डेटका लागि उपयुक्त गायक ?</strong><br />\r\nजस्टिन विवर ।</p>\r\n', 'f58fa11d03c0345f2d059e18357b4741.jpg', 8, 0, 93, '2015-09-21 21:38:10', 1, 'inceptioncms.com'),
(43, 'चलचित्रकर्मी कल्याण कोषमा झरना', '<p>भाद्र २९, २०७२- चलचित्र विकास बोर्डले चलचित्रकर्मी कल्याणकारी कोषको संयोजकमा अभिनेत्री झरना थापालाई नियुक्त गरेको छ । यस्तै, कोषको संयोजकमा पुरानी अभिनेत्री बसुन्धरा भुषाल नियुक्त भएकी छन् ।<br />\r\n<br />\r\nचलचित्रका विभिन्न विधामा काम गर्ने कलाकार प्राविधिकको कल्याणका लागि स्थापित कोष लामो समयदेखि नेतृत्वबिहीन थियो । कोषले अप्ठ्यारोमा परेका चलचित्रकर्मीलाई सहयोग गर्ने बताइएको छ ।</p>\r\n', '13950a6baae72a1f0dce244a7ee384a9.jpg', 8, 0, 107, '2015-09-21 21:38:43', 1, 'inceptioncms.com'),
(44, 'वडा नम्बर ६ को मोफसल रिलिज अनिश्चित', '<p>आश्विन १, २०७२- शुक्रबारदेखि देशव्यापी प्रदर्शनमा आउने तरखर गरिरहेको फिल्म &lsquo;वडा नम्बर छ&rsquo; ले मोफसल रिलिज रोकेको छ । राजधानीमा भने फिल्म असोज १ मै लाग्नेछ ।</p>\r\n\r\n<p>मोफसल वितरणको जिम्मा पाएको एफडी कम्पनीले संविधान जारीसँगै उत्पन्न हुन सक्ने आन्दोलन र बन्दको ख्याल गरी रिलिज मिति अनिश्चित कालका लागि रोकिएको जनाएको छ । पछिल्लो समय फिल्म युनिट आक्रामक प्रचार शैलीमा उत्रिएको बेला मोफसल प्रदर्शनी रोक्नुपरेको हो । दीपकराज गिरी र दीपाश्री निरौलासहितको निर्माण रहेको फिल्मलाई उज्ज्वल घिमिरेले निर्देशन गरेका हुन् । हास्य विधामा बनाइएको फिल्मका कलाकारमा पनि कमेडियनकै वर्चस्व छ । फिल्ममा दीपक, दीपासहित केदार घिमिरे (माग्नेबूढा), सीताराम कट्टेल (धुर्मुस), जितु नेपाल (मुन्द्रे), सन्दीप क्षेत्री, दयाहाङ राई र प्रियंका कार्कीको मुख्य<br />\r\nभूमिका छ ।<br />\r\nसाता दिनदेखि हास्यकलाकारको डफ्फा नै सडकमा उतारेको फिल्म युनिटले बुधबार तीज कार्यक्रमसँगै प्रचारप्रसारको पहिलो चरण सकेको छ । बालाजुस्थित माछापोखरीमा सुरु भएको &lsquo;वडा नम्बर छ&rsquo; युनिटको सडक कन्सर्ट कार्यक्रम राजधानीका चक्रपथ, चाबहिल र कोटेश्वर हँुदै ललितपुर, भक्तपुरका विभिन्न चोकहरूमा हजारौं दर्शकलाई मनोरञ्जनसँगै फिल्मबारे जानकारी गराएर सकिएको थियो ।</p>\r\n', '7ae2e169e11108eea0958b3fc7d227f7.jpg', 8, 0, 125, '2015-09-21 21:39:36', 1, 'inceptioncms.com'),
(45, '‘फिल्म चल्नैपर्छ भन्ने छैन तर हेर्दा लाज लाग्ने चाही हुनुहुन्न’', '<p>आश्विन २, २०७२- झन्डै दुई दशकदेखि निर्देशकका रुपमा सक्रिय&nbsp;<strong>उज्ज्वल घिमिरे</strong>ले आठवटा फिल्म बनाएका छन्। उनको नवौं फिल्म &lsquo;वडा नम्बर ६&rsquo; शुक्रबारदेखि रिलिज भएको छ।&nbsp;<em>सुशील पौडेल</em>सँगको कुराकानी:</p>\r\n\r\n<p><strong>तपाईंको फिल्मको प्रचार कमेडी शैलीमा भइरहेको छ तर तपाईं देखिनुहुन्न नि किन?</strong><br />\r\n&lsquo;वडा नम्बर ६&rsquo; कमेडी हुँदाहुँदै पनि यसमा गम्भीरता छ। प्रचार कमेडी शैलीमा भइरहेको छ। तर म फिल्म प्रचारका त्यस्ता कार्यक्रममा गइरहेको छैन। किनभने म कमेडियन पनि हैन र मेरो काम पनि छैन।<br />\r\n<strong>फिल्ममा निर्देशकको भूमिका कहाँ पुगेर सकिन्छ? प्रचारमा निर्देशक हुनु पर्दैन?</strong><br />\r\nफिल्म ल्याबबाट निस्किसकेपछि निर्माताबाट अलग हुन त सक्ला तर दर्शकसँग निर्देशक आजीवन जोडिरहन्छ। कस्तो फिल्म हो? कुन बेसमा बनाएको हो, कुन जानराको कसरी बनाएको हो भनेर दर्शकलाई थाहा दिनु निर्देशकको कर्तव्य रहन्छ।</p>\r\n\r\n<p><br />\r\n<strong>यो फिल्म पहिलेका भन्दा कसरी फरक छ?</strong><br />\r\nम व्यावसायिक फिल्म बनाउने मान्छे हुँ। अलिकति बलिउड &lsquo;स्कुल अफ थट&rsquo; बाट प्रभावित छु। म प्रकाश थापाको चेला हँु। ममा विद्वता नभएर यसो गरेको पनि हैन। मेरो फिल्मको सिद्धान्त &lsquo;लार्जर देन लाइफ&rsquo; हो। वडा नम्बर छ त्योभन्दा अलि फरक छ।</p>\r\n\r\n<p><br />\r\n<strong>ठ्याक्कै फरकचाहिं के हो त?</strong><br />\r\nस्क्रिप्टको पेस स्लो थियो। बनाउँदै जाँदा यसलाई बेग्लै ट्रिटमेन्ट चाहिन्छ भन्ने भयो। यसमा राजेश हमाल, आर्यन सिग्देलजस्तो स्टारकास्ट छैन। न चार, पाँचवटा गीत नै छ। र, रोमान्स पनि त्यस्तो धेरै छैन। त्यसैले यो अलि बेग्लै बन्यो। मैले नजानेर यस्तो बनाएको होइन। म नयाँ धारको आर्ट<br />\r\nफिल्म बनाउनुपर्&zwj;यो भने पनि सक्छु। किनभने मसँग अध्ययन छ, अनि मजस्तो फिल्म हेर्ने र पुस्तक पढ्ने निर्देशक सायदै कोही होला।</p>\r\n\r\n<p><br />\r\n<strong>यो फिल्म तीन वर्षको अन्तरमा बनाउनुभयो, निर्माताले नपत्याएर हो कि अरू कुनै कारण थियो?</strong><br />\r\nम छानेर मात्रै काम गर्छु। यो बीचमा मकहाँ धेरै स्क्रिप्ट आएका थिए। हरिवंश आचार्य दाइको स्क्रिप्टमा पनि काम गरिरहेका छौं। केही राम्रो हुने देखेपछि स्क्रिप्टलाई अझ राम्रो बनाउन लागेका छौं। मैले चाहेर नै थोरै फिल्म गरेको हुँ।</p>\r\n\r\n<p><br />\r\n<strong>प्राय: स्क्रिप्टमा के समस्या पाउनुभयो?</strong><br />\r\nप्राय: निर्माताहरू एउटा रोल आर्यन व जीवन लुइँटेललाई र अर्को आफैंले भनेर भाग लगाएर आउँछन्। टाइटल &lsquo;सुपरम्यान&rsquo; टाइपका हुन्छन्, हिरो यस्तरी उड्दै आउँछ भनेर निर्माताले भन्छन्। म कसैले लेखिसकेको स्क्रिप्टमा फिल्म बनाउन चाहन्नँ। लेखनमा पनि सुरुदेखि नै संलग्न हुन खोज्छु। प्राय: नयाँ निर्माताले म कहाँ आउने हिम्मत गर्दैनन्, पुराना नै आउँछन्। निर्देशकको काम लेखकदेखि कलरिस्टसम्मलाई डाइरेक्सन गर्ने हो।</p>\r\n\r\n<p><br />\r\n<strong>धेरै कलाकार लिएर फिल्म बनाउन कत्तिको गाह्रो भयो?</strong><br />\r\nयो फिल्मका कलाकार स्टार होइनन्, कलाकार हुन्। धूलोमा लड भन्यो भने लडिहाल्ने। हाम फाल भन्यो भने साँच्चिकै हाम फाल्दिने। तर टेलिफिल्ममा खेल्ने भएकाले उनीहरूको एक्टिङ पनि अलि लाउड हुने रहेछ। त्यसमा धेरै कुरा दबाउन पर्&zwj;यो। उनीहरू क्यारेक्टरभन्दा पनि बढी आफ्नै परिचयमा देखिन खोज्ने। मेरो काम भनेको तपाईं माग्ने बूढा वा राजाराम (पौडेल) हैन फलानो हो भनेर चरित्र सम्झाउने काम हुन्थ्यो। तर सबैजना एकदमै कोअपरेटिभ। स्टारलाई लिँदा कुर्नुपर्ने, अनेक झमेला हुन्छ। यसमा सबै कलाकारले सय प्रतिशत काम गरे त्यो साह्रै राम्रो पक्ष। कलाकारहरू राम्रो फिल्म बनाउँ भन्ने भावनाका। उनीहरू सबैजना प्रोड्युसर रहेछन्, मलाई पहिले थाहा थिएन।</p>\r\n\r\n<p><br />\r\n<strong>फिल्म रिलिजको बेला निर्माता र निर्देशक अलग देखिनुको कारण के हो?</strong><br />\r\nखासै ठूलो होइन, प्रचारको तरिकामा कुरा नमिलेको हो। मैले फिल्मको प्रचार गर्दा अलि इन्टेलेक्चुअलिटी आओस् भनेको हुँ। प्रचारका लागि आर्टिस्ट नै गाउँगाउँ कुद्नु जरुरी पर्छजस्तो मलाई लाग्दैन। मेरो मान्यता भनेको स्टारलाई हेर्न दर्शक लालायित हुन् भन्ने हो। यो उहाँहरूकै फिल्म भएकाले मैले विरोध पनि गरेको छैन। मैलेचाहिँ प्रचारको यो शैलीमा म सहज महसुस गर्न सक्दिनँ।</p>\r\n\r\n<p><br />\r\n<strong>सशस्त्र द्वन्द्व कथाको पृष्ठभूमिले व्यवसायमा केही फरक पार्छ?</strong><br />\r\nहाम्रोमा केही अन्धविश्वास छन्। कोही विदेशमा सुटिङ गरेको फिल्म चल्दैन भन्छन्, कोही जोमसोममा गीत सुटिङ गर्&zwj;यो भने त्यो फिल्म साफ हुन्छ, सशस्त्र द्वन्द्वको पृष्ठभूमिमा फिल्म बनायो भने चल्दैन भन्छन्। हाम्रो फिल्ममा सशस्त्र द्वन्द्व निकै धेरै छैन। फेरि यस्ता अन्धविश्वासलाई त तोड्दै जाने हो।</p>\r\n\r\n<p><br />\r\n<strong>अहिले फिल्महरू किन चलिरहेका छैनन्?</strong><br />\r\nहामी व्यावसायिक हुन सकेका छैनौं। सबैलाई एकपटक निर्माता वा निर्देशक हुनुपरेको छ, आफूले राम्रो गर्न सक्ने काम के हो भन्ने थाहा छैन। पाँच लाख रुपैयाँ निकाल्यो भने त्यो मान्छे चाहेको बन्न सक्छ। कलाकार होइन, निर्देशकका नाममा फिल्म चल्ने हुनुपर्छ। दर्शकले निर्देशकमा वर्गीकरण गर्नुपर्छ। केही फिल्म चलेका पनि छन्। निर्देशकका सबै फिल्म चल्नैपर्छ भन्ने हुँदैन तर हेर्दा लाज लाग्नेचाहिँ हुनुहुन्न ।</p>\r\n', '2ef0c87f7ce8c09b7ba0110cb4cd467a.jpg', 8, 0, 149, '2015-09-21 21:40:30', 1, 'inceptioncms.com'),
(46, 'वर्षेनि ४० हजार नयाँ क्यान्सर रोगी थपिने', '<p>नेपालमा वर्षेनि ४० हजार क्यान्सर रोगी थपिने भए पनि आठ हजार जनाको मात्र रोग पहिचान हुने गरेको क्यान्सर रोकथाम नियन्त्रण अनुसन्धान विभागका प्रमुख किशोर कुमार प्रधानाङ्गले बताएका छन् ।</p>\r\n\r\n<p>क्यान्सर रोग पहिचानको लागि नेपालका विभिन्न १२ वटा अस्पतालहरुमा सुविधा रहेको प्रधानाङ्गले बताएका छन् । नेपालमा सबैभन्दा बढी क्यान्सर रोगी भरतपुरमा रहेको वीपी कोइराला मेमोरियल क्यान्सर अस्पतालबाट पत्ता लाग्ने गरेको प्रधानाङ्गले जानकारी दिए ।</p>\r\n\r\n<p>भरतपुरको क्यान्सर अस्पतालबाट मात्र वर्षेनि चार हजार पाँच सयको हाराहारीमा क्यान्सर रोगी पत्ता लाग्ने गरेको प्रधानाङ्गले बताएका छन् । क्यान्सर रोगी बारे विशेष तथ्यांक नभएपनि नेपालमा करिब एक लाख क्यान्सर रोगी रहेको अनुमान गरिएको प्रधानाङ्गले बताएका छन् ।</p>\r\n\r\n<p>विशेष गरी महिलाको पाठेघरको क्यान्सर, स्तन क्यान्सर र पुरुषमा मुखको क्यान्सर बढी देखिने गरेको समेत प्रधानाङ्गले जानकारी दिए । सुरुको अवस्थामा नै क्यान्सर रोगको पहिचान गर्न सकेको अवस्थामा रोग निको हुने गरेको छ ।</p>\r\n\r\n<p>क्यान्सर रोग रोकथाम गर्न सकिने भन्दै वीपी कोइराला क्यान्सर अस्पतालले अस्पताल र समुदायमा समेत विभिन्न समयमा क्यान्सर सम्बन्धी परीक्षण तथा रोकथामका लागि सचेतनामूलक कार्यक्रम गर्दै आएको प्रधानाङ्गले जानकारी दिए ।</p>\r\n\r\n<p>भरतपुरको वीपी कोइराला मेमोरियल क्यान्सर अस्पतालमा वर्षेनि एक लाख बिरामी क्यान्सर रोगको पहिचानका लागि अन्तरंग विभाग (ओपीडी)मा आउने गरेको समेत प्रधानांगले बताएका छन् ।</p>\r\n\r\n<p>चुरोट, सुर्ती लगायतका धुमपानको सेवन नगर्ने, नियमित शारीरिक व्यायम गर्ने, खानपानमा विशेष सतर्कता अपानाउने हो भने क्यान्सर रोगबाट बाँच्न सकिने प्रधानाङ्गले बताएका छन् ।</p>\r\n\r\n<p>वीपी कोइराला मेमोरियल क्यान्सर अस्पताल भरतपुरका कार्यकारी निर्देशक डाक्टर सीबी पुनले क्यान्सर रोग लागेका बिरामीहरुको अस्पतालले विशेष सुविधा दिँदै आएको बताएका छन् । अस्पतालले १५ वर्ष मूनिका बालबालिका र ७५ वर्षभन्दा बृद्धहरुको लागि निशुल्क उपचारको व्यवस्था गरेको कार्यकारी निर्देशक पुनले बताएका छन् ।</p>\r\n\r\n<p>त्यसैगरी, क्यान्सर रोग लागेर अस्पतालमा उपचाररत सबै बिरामीको लागि अस्पतालबाट निशुल्क रुपमा खानाको व्यवस्था गरिएको समेत पुनले बताएका छन् ।</p>\r\n\r\n<p>अन्य सेवा र सुविधाको लागि स्वास्थ्य मन्त्रालयसँग पहल भइरहेको पुनले जानकारी गराए । यस्तै क्यान्सर अस्पतालले हरेक वर्ष असोज १० गतेलाई क्यान्सर सतर्कता दिवसको रुपमा मनाउँदै आएको छ । अस्पतालले यस वर्ष पनि क्यान्सरबाट बचौं र बचाऔं भन्दै असोज १० गते ११औ&ldquo; राष्ट्रिय क्यान्सर सतर्कता दिवस मनाउँदै छ ।</p>\r\n\r\n<p>- See more at: http://swasthyakhabar.com/2015/09/34917.html#sthash.0A1jXqmQ.dpuf</p>\r\n', 'a62af876782f440b1c67924cec53c9b9.jpg', 9, 0, 99, '2015-09-24 22:01:29', 1, 'inceptioncms.com'),
(47, 'दोलखा : प्रकोपका रुपमा देखा प¥यो ‘सिजनल फ्लु’', '<p>दोलखा, ७ असोज । यस जिल्लामा प्रकोपकै रुपमा &lsquo;सिजनल फ्लु&rsquo; देखा परेको छ । अहिलेसम्म यसको सङ्क्रमण तीन हजार १३८ जनामा देखिएको जिल्ला स्वास्थ्य कार्यालयका प्रमुख डा खगेश्वर गेलालले जानकारी दिए ।</p>\r\n\r\n<p>&lsquo;सिजनल फुल्&rsquo;का बिरामी बढ्दै गएपछि दोलखाका दुई गाविसका विद्यालय केही दिनका लागि बन्दसमेत गरिएको छ । बिरामीको सङ्ख्या दिनप्रतिदिन बढ्दै गएको र बढी मात्रामा बालबालिकामा सङ्क्रमण बढेको भन्दै केही दिनका लागि जिल्लाको सुनखानी गाविस र लापिलाङ गाविसका विद्यालय बन्द गरिएको कार्यालय बताएको छ ।</p>\r\n\r\n<p>एक साताभन्दा अघिदेखि फैलिएको फ्लुको सङ्क्रमण नियन्त्रण बाहिर गई प्रकोपका रुपमा देखापरेको हो । बिरामीको सङ्ख्या घट्दै जानुपर्नेमा दैनिक रुपमा बढ्दै गएकामा जिल्ला स्वास्थ्य कार्यालयले उच्च सतर्कता अपनाए पनि नियन्त्रणमा उल्लेख्य नतिजा आउन सकेको छैन ।</p>\r\n\r\n<p>बढी मात्रामा भीमेश्वर नगरपालिकाभित्रको दोलखा बजार, मकैबारी क्षेत्र र सुनखानी, लापिलाङ, झुले, मेलुङ र घ्याङसुकाठोकरलगायतका गाविसमा बिरामीको सङ्ख्या बढेको छ । प्राथमिक स्वास्थ्य केन्द्र चरीकोटमा मात्र अहिलेसम्म ६०० भन्दा बढी बिरामी आएको बताइएको छ ।</p>\r\n\r\n<p>भाइरलका रुपमा बढेको यो सङ्क्रमण नियन्त्रणमा आउन अझै केही दिन लाग्ने कार्यालयको भनाइ रहेको छ । भूकम्पपछि घर भत्किएर सामूहिक रुपमा बसोबास गर्दै आएको ठाउँमा बढीमात्रामा समस्या देखिएको जनाएको छ ।</p>\r\n\r\n<p>फ्लुका कारण खोपाचाँगु गाविसका सबै विद्यालय आजदेखि बन्द भएका छन् । रासस</p>\r\n\r\n<p>- See more at: http://swasthyakhabar.com/2015/09/34915.html#sthash.zYAe2egi.dpuf</p>\r\n', 'ac784a16c461d1fccf6f8e5055f7521a.jpg', 9, 1, 109, '2015-09-24 22:02:03', 1, 'inceptioncms.com'),
(48, 'विपिकेआइएचएसले नियमविपरित होस्टेल शुल्क मागे', '<p>धरान&ndash;बिपी कोइराला स्वास्थ्य विज्ञान प्रतिष्ठान धरानमा मास्टर्स अफ पक्लिक हेल्थ (एमपिएच) अध्ययन सकेका विद्यार्थीहरुले प्रतिष्ठानले नियम विपरित होस्टल शुल्क मागेर समस्यामा पारेको गुनासो गरेका छन् । एमपिएचको २०१३ ब्याचका विद्यार्थीहरुले सुरुमा भर्ना हुँदा र अध्ययन गर्दा कहिल्यै कतै उल्लेख नभएको होस्टल शुल्क अध्ययन सकिएपछि प्रति विद्यार्थी २ वर्षको ५८ हजारका दरले माग्न थालेपछि आफूहरु अचम्ममा परेको बताएका छन् । विद्यार्थीहरुका अनुसार त्यसअघिका विद्यार्थीसँग होस्टल शुल्क प्रतिष्ठानले लिने गरेकै थिएन । २०१३को ब्याचका विद्यार्थी भर्ना हुँदा पनि होस्टल शुल्क तिर्नु र्ने कतै उल्लेख थिएन भने प्रतिष्ठानले पनि कुरा गरेको थिएन । एक विद्यार्थी भन्छन् &lsquo;प्रस्पेक्सटको एकेडेमिक फिमा होस्टल शुल्कको कुरा कतै उल्लेख थिएन, हामी भन्दा अघि पनि कसैले तिरेका छैनन् तर हामीलाई अन्तिम अवस्थामा आएर तिर्नुपर्छ भनेर दबाव दिइरहेका छन् ।&rsquo; प्रतिष्ठानमा एमपिएच अध्ययनका लागि अधिकांश धरान बाहिरका विद्यार्थी आउँछन् । अध्ययनका लागि आउने विद्यार्थीलाई प्रतिष्ठानले होस्टलको राम्रो व्यवस्था नगरेको र विद्यार्थीहरु विभिन्न समस्या सहेर बस्न बाध्य भएको उनिहरुको गुनासो छ । &lsquo;होस्टलको राम्रो व्यवस्था नभएपछि आफूभन्दा सिनियर र जुनियरहरुसँग कोठा सेयर गरेर बस्यौं,&rsquo; एक विद्यार्थीले भनिन् &lsquo;१८ जना बसेको ठाउँमा २ वटा ट्वाइलेट बाथरुम थियो । केटा र केटीले एउटै ट्वाइलेट, बाथरुम प्रयोग गर्दा धेरै समस्या हुन्छ । छुट्टै व्यवस्था छैन ।</p>\r\n\r\n<p>प्रसासनमा भन्दा मिलाउँदै छौं भन्छन् तर कहिल्यै मिलाउँदैनन् ।&rsquo; प्रतिष्ठानका शिक्षाध्यक्ष प्रा.डा. विक्रमप्रसाद श्रेष्ठ भने एमपिएच अध्ययन गर्ने विद्यार्थीका लागि होस्टलको व्यवस्था नभएको बताउँछन् । होस्टलको व्यवस्था नहुँदा पनि खाली भएको बेला विद्यार्थीलाई सुविधा होस् भनेर उपलब्ध गराउने गरेको तर पहिला कसैले शुल्क नतिरेपछि हाल शुल्क लिने व्यवस्था कडा गरिएको बताउँछन् । उनी भन्छन्, &lsquo;प्रस्पेक्टसमै विद्यार्थीलाई होस्टलको व्यवस्था गरिएको छैन । उनीहरु आफैंले म्यानेज गर्नुपर्ने हो । हामीले खाली भएको बेला मात्र दिएका हौं । त्यसको शुल्क तिनुपर्छ ।</p>\r\n', 'c87c233e295ed784b327db7450df2969.jpg', 9, 1, 155, '2015-09-24 22:02:52', 1, 'inceptioncms.com'),
(49, '१२ वर्ष लगाएर खिचिएका पाठेघर भित्र भ्रूणको विकासक्रमका २५ तस्बिर । स्वास्थ्य खबरपत्रिका', '<p>स्विडिस फोटोग्राफर लनर्ट निल्सनले आफ्नो जीवनकालको १२ वर्षको अवधिमा पाठेघरभित्र हुने भ्रूणको विकास क्रममा उत्कृष्ट तस्बिरहरु खिच्न सफल भएका छन् । निल्सनले माइक्रो लेन्स भएको क्यामेरा र स्क्यानिङ इलेक्ट्रोन माइक्रोस्कोपमा इन्डेस्कोपको सहायतामा यस्ता अविश्वसनिय तस्बिरहरु खिचेका हुन् । प्रविधिकै सहयोगमा निक्सनले सबैभन्दा पहिला सन् १९६५ मा गर्भे भ्रूणको आकर्षक तस्बिरखिच्न सफल भएका थिए ।<br />\r\nपुरुषको सुक्रकिट महिलाको शरिभित्र प्रवेश गरेदेखी महिलाको डिम्बमा सेचन हुने प्रक्रिया हुँदै पाठेघरमा ९ महिनाको अवधिमा हुने विकास क्रमलाई निक्स्नले तस्बिरमा कैद गर्न सफल भएका छन् ।</p>\r\n\r\n<p><strong>हेर्नुहोस् निक्स्नले खिच्न सफल भएका तस्बिरहरु</strong></p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/sperm-in-fallopian-tube1.jpg\"><img alt=\"sperm in fallopian tube1\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/sperm-in-fallopian-tube1.jpg\" style=\"height:567px; width:640px\" /></a></p>\r\n\r\n<p>डिम्बबाहिनी नलीमा पुगेको सुक्रकिट</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/an-egg-cell2.jpg\"><img alt=\"an egg cell2\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/an-egg-cell2.jpg\" style=\"height:859px; width:571px\" /></a></p>\r\n\r\n<p>महिला अन्डा</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/will-they-have-a-date3.jpg\"><img alt=\"will they have a date3\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/will-they-have-a-date3.jpg\" style=\"height:600px; width:637px\" /></a></p>\r\n\r\n<p>सुक्रकिट र अन्डाको मेल हुने क्रम</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/fallopian-tube4.jpg\"><img alt=\"fallopian tube4\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/fallopian-tube4.jpg\" style=\"height:420px; width:640px\" /></a></p>\r\n\r\n<p>डिम्बबाहिनी नली</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/sperm-egg-contamin5.jpg\"><img alt=\"sperm egg contamin5\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/sperm-egg-contamin5.jpg\" style=\"height:744px; width:574px\" /></a></p>\r\n\r\n<p>दुई सुक्रकिट अन्डासँग मेल हुने क्रममा</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/the-winning-cell6.jpg\"><img alt=\"the winning cell6\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/the-winning-cell6.jpg\" style=\"height:420px; width:640px\" /></a></p>\r\n\r\n<p>बिजेता सुक्रकिट</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/winning-moment7.jpg\"><img alt=\"winning moment7\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/winning-moment7.jpg\" style=\"height:600px; width:480px\" /></a></p>\r\n\r\n<p>सबैलाई उछिनेर अन्डासँग मेल हुन सफल बिजेता सुक्रकिट</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/sperm-5-6-day-8.jpg\"><img alt=\"sperm 5-6 day 8\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/sperm-5-6-day-8.jpg\" style=\"height:707px; width:468px\" /></a></p>\r\n\r\n<p>५&ndash;६ दिनको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/8-day-9.jpg\"><img alt=\"8 day 9\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/8-day-9.jpg\" style=\"height:593px; width:640px\" /></a></p>\r\n\r\n<p>८ दिनको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/the-brain-starts-to-dev-10.jpg\"><img alt=\"the brain starts to dev 10\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/the-brain-starts-to-dev-10.jpg\" style=\"height:600px; width:530px\" /></a></p>\r\n\r\n<p>मस्तिष्कको विकासक्रम</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/24-days-11.jpg\"><img alt=\"24 days 11\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/24-days-11.jpg\" style=\"height:600px; width:538px\" /></a></p>\r\n\r\n<p>२४ दिनको अवधि । यो समयमा मुटुको चाल सुरु भैसकेको हुन्छ ।</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/4-weeks-12.jpg\"><img alt=\"4 weeks 12\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/4-weeks-12.jpg\" style=\"height:420px; width:640px\" /></a></p>\r\n\r\n<p>४ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/5-weeks-13.jpg\"><img alt=\"5 weeks 13\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/5-weeks-13.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p>५ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/40-days-14.jpg\"><img alt=\"40 days 14\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/40-days-14.jpg\" style=\"height:600px; width:541px\" /></a></p>\r\n\r\n<p>४० दिनको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/8-weeks-15.jpg\"><img alt=\"8 weeks 15\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/8-weeks-15.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p>८ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/10-weeks-16.jpg\"><img alt=\"10 weeks 16\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/10-weeks-16.jpg\" style=\"height:598px; width:640px\" /></a></p>\r\n\r\n<p>१० हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/16-weeks-17.jpg\"><img alt=\"16 weeks 17\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/16-weeks-17.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p>१६ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/the-skeletion-18.jpg\"><img alt=\"the skeletion 18\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/the-skeletion-18.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p>हड्डीहरुको विकासक्रम सुरु</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/18-weeks-19.jpg\"><img alt=\"18 weeks 19\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/18-weeks-19.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p>१८ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/19-weeks-20.jpg\"><img alt=\"19 weeks 20\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/19-weeks-20.jpg\" style=\"height:600px; width:596px\" /></a></p>\r\n\r\n<p>१९ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/20-weeks-21.jpg\"><img alt=\"20 weeks 21\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/20-weeks-21.jpg\" style=\"height:600px; width:600px\" /></a></p>\r\n\r\n<p>२० हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/24-weeks-22.jpg\"><img alt=\"24 weeks 22\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/24-weeks-22.jpg\" style=\"height:594px; width:600px\" /></a></p>\r\n\r\n<p>२४ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/26-weeks-23.jpg\"><img alt=\"26 weeks 23\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/26-weeks-23.jpg\" style=\"height:420px; width:640px\" /></a></p>\r\n\r\n<p>२६ हप्ताको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/6-month-24.jpg\"><img alt=\"6 month 24\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/6-month-24.jpg\" style=\"height:500px; width:640px\" /></a></p>\r\n\r\n<p>६ महिनाको अवधि</p>\r\n\r\n<p><a href=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/36-weeks-25.jpg\"><img alt=\"36 weeks 25\" src=\"http://swasthyakhabar.com/wp-content/uploads/2015/09/36-weeks-25.jpg\" style=\"height:496px; width:640px\" /></a></p>\r\n\r\n<p>३६ हप्ताको अवधि । सामान्यतया यस्को ४ हप्तापछि बच्चा जन्मने छ ।</p>\r\n\r\n<p>- See more at: http://swasthyakhabar.com/2015/09/34884.html#sthash.yRZuK6Kk.dpuf</p>\r\n', 'e73dcc0501c0a197c61e008700295edb.jpg', 9, 0, 153, '2015-09-24 22:07:11', 1, 'inceptioncms.com'),
(50, 'नेपालको वातावरण अब शान्ति मा प्रदूषित गर्न सकिन्छ', '<p>पर्यावरण समस्या खुलारूपमा अब नेपाल को सरकार द्वारा उल्लेख गरिएको छ।&nbsp;फिनल्याण्ड 2001 देखि नेपालको पूर्वी क्षेत्र मा पर्यावरण प्रशासन को बलियो बनाउँछ समर्थित छ।</p>\r\n\r\n<p>पर्यावरण क्षेत्र पहिले आयोत हुन मानिन्छ थिएन किनभने नेपाल अन्य कारण बीचमा, एक चुनौतीपूर्ण परिचालन वातावरण भएको छ</p>\r\n', '2749671473475f19bc1d9b392f65e92b.jpg', 10, 1, 169, '2015-09-24 22:23:58', 1, 'inceptioncms.com'),
(51, 'एक ट्यांकर तेल पनि नेपाल आएन, नाकामा भारतको थप कडाइ', '<p>असोज, काठमाडौं । भारतले अघोषित नाकाबन्दी खोलेको दाबी गरे पनि आइतबार दिनभर इन्धन बोकेका एउटा पनि ट्याकर नेपााल भित्रिएनन् । तेल भरेर जाँच पासका लागि नेपाल आयल निगमका करिव १ सय ७० वटा बढी तेल ट्यांकर र २ सय ५० वटा ग्यास बुलेट भारतीय भन्सार नाकामा प्रतिक्षारत भए पनि आइतबार तीमध्ये एउटैले नेपाल प्रवेश गर्न पाएनन् ।</p>\r\n\r\n<p>तेल भर्न गएका निगमका खाली ट्याकंर सबैलाई भारतले तेल नदिने भनेपछि निगमले तेलको लोडिङ नै बहिस्कार गरेको छ ।</p>\r\n\r\n<p>भारतीय विदेश मन्त्रालयले आफ्ना सम्वद्ध निकायलाई अघोषित नकाबन्दी खोल्न निर्देशन दिएको बताए पनि भारतीय नाकामा थप कडाइ भएको भन्सार अधिकारीहरु नै बताउँछन् । सहज रुपमा सञ्चलनमा रहे पनि काँकडभिट्टा र नेपालगञ्ज नाकाबाट एउटा पनि पेट्रोलियम ट्याकंर र ग्यास बुलेट नेपाल आएका छैनन् । अन्य मुख्य नाकामा भारतीय भन्सारको अवरोध संगै मधेसी मोर्चाका कार्यकर्ताको धर्ना पनि जारी छ ।</p>\r\n\r\n<p>भैरहवाको बेलहिया नाकामा दिउँसोसम्म मधेसी मोर्चाको अवरोध नभए पनि भारतीय भन्सारले एउटा पनि पेट्रोलियम ट्यांकर नेपाल नपठाएको बेलहिया भन्सारले जनाएको छ । दिउँसो १ बजेदेखि भने बेलहिया नाकाको दशगजा क्षेत्रमा मोर्चाका कार्यकर्ताले अवरोध सिर्जना गरेका छन् । अवरोध नहुँदासम्म ४२ वटा मालबाहक गाडी नेपाल आएको भैरहवाबाट भन्सार प्रमुख लाबण्य ढकालले जानकारी दिए ।</p>\r\n\r\n<p>यस्तै काँकडभिट्टाको मेची भन्सार नाकाबाट दिनभरमा २८ वटा गाडी नेपाल प्रवेश गरेका छन् । यस्तै नेपालगञ्जको जमुनाह नाकाबाट १० वटा गाडी नेपाल भित्रिएको भन्सार प्रमुख राजेन्द्र हमालले जानकारी दिए ।</p>\r\n\r\n<p>यी नाकाहरुबाट दिनभरमा धेरैजसो तरकारी, फलफूल र औद्योगिक कच्चा पदार्थ बोकेका गाडी भित्रिएका छन् । &lsquo;नाकाबन्दी खुलेको भनेर हल्ला भए पनि हिजो अस्ति भन्दा केही फरक रिर्पोट छैन । हामीले भारतीय भन्सार अधिकारीलाई कुरा गर्दा आफुहरुलाई माथिबाट कुनै निर्देशन नआएको भन्छन्,&rsquo; एक नेपाली भन्सार अधिकारीले भने-&lsquo;नाकाबन्दी खोलिएको हैन, थप कडाइ भएको अनुभव भइरहेको छ ।&rsquo;</p>\r\n\r\n<p>बिराटनगरको रानी भन्सार नाकामा आइतबारदेखि सहज रुपमा भन्सार जाँचपास गर्ने सहमति भए पनि भारतीय भन्सारले दिनभरिमा एउटा पनि गाडी नेपाल पठाएन । बिराटनगर नाकामा मधेसी मोर्चाका कार्यकर्ताहरु पनि धर्नामै छन् । उनीहरुले कुनै पनि हालतमा नाकाको धर्ना नछोड्ने बताएका छन् ।</p>\r\n\r\n<p>उता वीरगञ्ज नाकामा पनि अवरोध कायमै छ । यद्यपि भारत सरकारले नै वीरगञ्ज नाकाबाट तत्काल आयात-निर्यात सुचारु नहुने जनाउ दिइसकेको छ ।</p>\r\n', '1c691dbc236ab62a21d9c265bf4700e0.jpg', 3, 0, 118, '2015-10-04 14:24:58', 1, 'inceptioncms.com'),
(52, 'बाबुराम कूर्ता लगाएर मधेस दौडाहामा निस्किए', '<p>नवलपरासीको कार्यक्रममा डा. भट्टराईले एमाओवादीका नेताहरु भ्रष्टाचारको दलदलमा फसेको र सरकारमा जान लालायित भएको समेत बताए । जनयुद्धकालमा आफूले संविधानसभा र गणतन्त्रको कुरा गर्दा भौतिकरुपमै सिध्याउन खोजिएको उनले बताए ।</p>\r\n\r\n<p>नवलपरासीको दुम्कौलीस्थित चौधरी उद्योग ग्राममा भट्टराईलाई स्वागत गरिएको थियो । त्यहाँ आयोजित अन्तरक्रिया कार्यक्रममा बोल्दै भट्टराईले पार्टीले त्यसबेला आफूलाई कारवाही गरेर साधारण सदस्यमा राखेको अवस्थामा नजरबन्दमा राखेको र त्यतिबेला जे पनि हुन सक्ने बताए ।</p>\r\n\r\n<p>तत्कालीन राजा ज्ञानेन्द्रले शासन सत्ता हातमा लिएको समय माओवादीलाई पनि सरकारमा सहभागी हुन बोलाउंदा आफूले त्यसको विरोध गर्दा जिउँंदै खाल्डोमा गाडेर मार्न खोजेको समेत उनले खुलासा गर्दै आफू संघर्ष गर्दै यहाँसम्म आएको बताए ।</p>\r\n\r\n<p>संविधान सभामार्फत संविधान निर्माण गर्ने आफ्नै एजेण्डा भएको दावी गर्दै डा. भट्टराईले त्यतिबेला राजतन्त्र नजिक दरबार नजिक रहेका आफ्नै पार्टी भित्रकाहरुले त्यसरी अप्रत्यक्ष नजरबन्दमा राखेको बताए ।</p>\r\n\r\n<p>उनले आफू संविधान विरोधी नभए पनि आफूलाई फेरि पनि सिध्याउनका लागि संविधान विरोधी विल्ला लगाइदिएको दाबी गरे । उनले भने &ndash; &ldquo;संविधान बनाउने महत्वपूर्ण हात मेरो पनि छ, यसमा म सबैभन्दा बढी खुसी छु । तर, दलित जनजाति मधेसीहरुको माग पूरा नभएका मैले असहमति राखेको हो ।</p>\r\n\r\n<p>आधा नेपाल जल्ने, आधा नेपाल दिपावली गर्ने बेठीक हुने तर्क आफूले गरेको र सोही अनुसार दिपावली नगरेको उनले बताए । उनले संविधान जारी पछि एउटा युगको समाप्ति भएर नयाँ युगको थालनी भएकाले नयाँ युगमा नयाँ ढंगले चल्न नयाँ शक्तिको आवश्यक रहेकोमा समेत जोड दिए ।</p>\r\n\r\n<p>चौधरी उद्योगमा नेपाल औद्योगिक स्वतन्त्र मजदुर युनियनका नाममा अन्तरक्रिया कार्यक्रम गरिएको थियो । डा. बाबुराम आइतबार नै नवलपरासीको सुनवलमा पनि कार्यकर्ता भेटघाट गरेका थिए ।</p>\r\n\r\n<p>रुपन्देहीको धकधईमा &lsquo;मधेस आन्दोलनको समर्थन तथा वर्तमान शासनको विरुद्ध&rsquo; लेखिएको ब्यानरमा आयोजित कार्यक्रममा डा. बाबुराम भट्टराईले आइतबार सम्बोधन गरे । उनका साथमा एमाओवादी नेतृ हिसिला यमी पनि सहभागी थिइन् ।<br />\r\n-रामकुमार श्रेष्ठको सहयोगमा</p>\r\n', '3ee4b25787728cd7256e32df78770a01.jpg', 5, 0, 203, '2015-10-04 14:26:18', 1, 'inceptioncms.com'),
(53, 'Dashain round the corner, ticket bookings yet to begin', '<p><strong>Kathmandu, October 4.&nbsp;</strong>Dashain is round the corner, with just 18 days left for the big day. People from several parts of the country are waiting for ticket bookings to open, so as to make sure that they reach home on time. But ticket counters are yet to open bookings for the festival.</p>\r\n\r\n<p>The Transport Management Department had planned to open ticket booking from&nbsp;Sunday&nbsp;itself. But the plan is on hold now, due to disruption in the supply of petroleum products. Department Spokesperson Basanta Adhikari told Online Khabar: We had planned to open ticket bookings by today, but could not due to disruption in supply of petroleum products. Unlike in previous years, those concerned are unable to say as to when the bookings will open.</p>\r\n\r\n<p>Only a handful of public vehicles are plying, thanks to a shortage of fuel, noted Adhikari. In such a situation, we thought it will not be appropriate to open ticket bookings. Adhikari expressed fears that black-marketing of tickets will be rife if ticket bookings were to open in a situation like this.</p>\r\n', 'a2ed0209526e933a3c77f966741f1a62.jpg', 5, 0, 92, '2015-10-04 14:27:45', 1, 'inceptioncms.com'),
(54, 'KP Oli no lone horse in prime ministerial race', '<p>Kathmandu, October 4 . Who will become the prime minister of Nepal, which has entered a new era with the promulgation of a federal constitution? This question is sure to elicit interest in Nepal and beyond. Three days after President addressed the Parliament, giving the parties seven days to form a consensus government, the process to begin the chief executive is gaining momentum.</p>\r\n\r\n<p>Sunday&rsquo;s&nbsp;meeting of the CPN-UML Parliamentary Party has decided to field UML Chair KP Oli for the top post. At the same time, it has not given up hope of forming a national unity government. The party has formed a five-member taskforce to hold talks with other parties for the formation of a unity government.</p>\r\n\r\n<p>Amid these developments, some UML leaders suspect India has started meddling in a fluid political situation and hatching conspiracies to prevent Oli from grabbing the top post.</p>\r\n\r\n<p>Recent developments suggest that six political leaders seem vying for the top job.</p>\r\n\r\n<p>Undoubtedly, the vanguard of the old guard is among them. The incumbent, Sushil Koirala, wants continuation of his government even in the changing times.</p>\r\n\r\n<p>UML Chair Oli has not kept his prime ministerial aspirations hidden. The UML has been saying one thing of late: As per a gentleman&rsquo;s agreement reached during the signing of the 16-point agreement that made way for promulgation of the federal constitution, it&rsquo;s now Oli&rsquo;s turn to become the prime minster.</p>\r\n\r\n<p>So much so, senior UML leader Madhav Kumar Nepal has publicly warned certain forces to not play politics in the UML fold. Nepal has said there&rsquo;s no alternative to Oli for the top job. While UCPN-Maoist Chair Prachanda has said Nepal too wants to become the prime minister.</p>\r\n\r\n<p>Prachanda, speaking at a training organised for Maoist cadres in Kathmandu&nbsp;on Saturday, said various leaders are literally salivating over the PM&rsquo;s post. At the same forum, the Maoist leader said his party will stake no claim on the prime minister&rsquo;s and president&rsquo;s positions. There&rsquo;s no compulsion, though, that Oli become the PM, he said.</p>\r\n\r\n<p>NC leaders Sher Bahadur Deuba and Ram Chandra Poudel are also eyeing the top post.</p>\r\n\r\n<p>Poudel, who once failed to clinch the top job even after 17 rounds of voting in the House, has started saying within the party that now it&rsquo;s his turn to land the top job.</p>\r\n\r\n<p>It is learnt Poudel has started talks with Deuba, promising to assist the latter to get elected as the party President.</p>\r\n\r\n<p>Deuba seems unimpressed, though. Congress leaders say Deuba himself wants to become the prime minister and thinks it is getting elected party president through the NC General Convention will be easy if he becomes the PM.</p>\r\n\r\n<p>And Sushil Koirala is there, trying hard to throw cold water on Deuba&rsquo;s aspirations. The incumbent is in favour of holding on to the government mantle. That&rsquo;s why, Koirala has not resigned. The Koirala government will get a new lease of life if it seems impossible for UML leader Oli to become the prime minister &ndash; either on the basis of a consensus or a majority in the House.</p>\r\n\r\n<p>In a latest twist, Madheshi leaders are also harbouring prime ministerial aspirations, according to sources. Though Madheshi leader Bijaya Gachhadar has kept mum on prime ministerial aspirations, he sure is a candidate for the top post.</p>\r\n\r\n<p>But Tarai Madhesh Democratic Party and Madheshi Janaadhikar Forum (Democratic) leaders do not want Gachhadar to become PM. If they at all root for the top post, they will field TMLP Chief Mahantha Thakur. But that is a distant possibility.</p>\r\n\r\n<p><strong>Oli has high chances</strong></p>\r\n\r\n<p>UML leaders believe their leader Oli will land the top job, most probably. Even if he fails to become consensus prime minister, he is likely to get majority votes for his candidature, according to the leaders.</p>\r\n\r\n<p>Keeping in mind the next election, NC wants an Oli-led majority government, while UCPN-Maoist wants a consensus government. The Maoist party has not clarified whether or not it will seek Oli&rsquo;s alternative.</p>\r\n\r\n<p>Dissatisfied Madheshi parties have not publicly said whether they want to join the new government or not. After boycotting the Constituent Assembly as it went ahead with the constitution-promulgation process, it&rsquo;s unclear whether they will take part in the transformed House&rsquo;s prime minister selection process.</p>\r\n\r\n<p>In a fluid political scenario, some UML leaders are accusing some foreign forces of hatching conspiracies to retain the Koirala government, in a bid to scuttle Oli&rsquo;s chance to become the new prime minister. They claim, nonetheless, that Oli will become the prime minister, come hell or high water.</p>\r\n', '659b414c5b9f648f0f739f02fee94420.jpg', 5, 1, 132, '2015-10-04 14:28:53', 1, 'inceptioncms.com'),
(55, 'Finance Minister Mahat offers no respite to blockade-hit, says northern trade points will not reopen', '<p><strong>Biratnagar, October 4 .&nbsp;</strong>Finance Minister Ram Sharan Mahat has said customs along the Nepal-China border will not reopen anytime soon. Mahat&rsquo;s remark comes amid increasing pressure to reopen northern border points in the wake of an Indian blockade that has caused a serious shortage of essentials like petroleum products in Nepal.</p>\r\n\r\n<p>The trade points ravaged in the recent spate of earthquakes have remained shut for more than five months, due to delay in their repair and maintenance.</p>\r\n\r\n<p>&ldquo;The roads have become inoperable due to the quakes,&rdquo; he told mediapersons in Biratnagar. &ldquo;Repairing the roads will take time,&rdquo; he said, ruling out the possibility of reopening the northern trade points anytime soon. Mahat said reopening these points is not possible also because they lie on a difficult terrain. He called on Madheshi parties, which have been staging sit-ins along southern border points, to end their protests and seek a way out through talks.</p>\r\n', '683b36a3b9f9ae232b092ef102e64b3d.jpg', 5, 0, 99, '2015-10-04 14:29:30', 1, 'inceptioncms.com'),
(56, 'After federal constitution, Prime Minister’s selection proving to be a divisive issue', '<p><strong>Kathmandu, October 4 .&nbsp;</strong>Despite an understanding to select a prime minister on the basis of consensus by&nbsp;October 9, translating it into action will be impossible. For a consensus government to take shape, all 598 lawmakers will have to come on board, which will not be possible.</p>\r\n\r\n<p>With Madheshi parties taking part in a movement and RPP-Nepal eyeing to be the main opposition, forming a consensus government will not be possible. Practically, it may be possible to form a majority government if the Nepali Congress, the CPN-UML and the UCPN-Maoist agree on such a dispensation. Small parties will support such an administration.</p>\r\n\r\n<p>With President calling for government formation, the process for the election of prime minister has begun.</p>\r\n\r\n<p><strong>Ungentlemanly conduct in gentleman&rsquo;s deal</strong></p>\r\n\r\n<p>While installing Sushil Koirala as the prime minister about 1.5 years ago, the Nepali Congress and the CPN-UML had reached an understanding to let the UML lead the government to be formed after the promulgation of the constitution. UML and UCPN-Maoist leaders say they had reached a gentleman&rsquo;s agreement to let UML Chair KP Sharma Oli head the new government while signing the 16-point agreement.</p>\r\n\r\n<p>However, after the call for the formation of a new government, Congress leaders have begun saying that there was no such understanding to let UML or Oli take leadership of a new government. Congress Vice-President Ram Chandra Poudel told Online Khabar: &ldquo;Don&rsquo;t put me into difficulty by asking about this. I am not aware of any understanding to hand over the PM&rsquo;s post to any individual.&rdquo;</p>\r\n\r\n<p>Poudel&rsquo;s remark comes at a time when President has called for formation of a new government, Sushil Koirala has paved the way for change of guard and Oli is ready for the change of guard.</p>\r\n\r\n<p>At a time when domestic and foreign forces are obstructing the implementation of the new constitution, the three major forces have no option but to come together. But how do they do that at a time when the PM&rsquo;s post is becoming a divisive issue?</p>\r\n\r\n<p><strong>UCPN-Maoist: The PM-maker</strong></p>\r\n\r\n<p>The Congress has not yet made a formal decision on whether or not to let the UML head the new dispensation. But the UML is clear on one thing: It will not join the future government if it does not get the PM&rsquo;s post. Does this mean either the Congress or the UML will have to stay in the opposition? UML Deputy Secretary General Bishnu Poudel says, &ldquo;We do not want to run the new government by keeping the Nepali Congress out of it. But we will not join the government if our party does not get the opportunity to lead it.&rdquo;</p>\r\n\r\n<p>At a difficult situation like this, the UCPN-Maoist can emerge as the &lsquo;kingmaker&rsquo;. Whichever party gets the Maoist support gets to head the new government.</p>\r\n\r\n<p>Maoist Chairperson Prachanda has already talked about the understanding to make Oli the next PM. Talking to reporters, Maoist Chief Whip Giriraj Mani Pokhrel also talked about a gentleman&rsquo;s agreement on letting the UML lead the next government.</p>\r\n\r\n<p>But Congress leaders keep mum on the gentleman&rsquo;s agreement. Says UML leader Poudel: &ldquo;Congress leaders should check why did Sushil Koirala not inform Ram Chandra Poudel about the agreement. Was it Koirala&rsquo;s weakness or a deliberate ploy?&rdquo;</p>\r\n\r\n<p><strong>Majority process uncertain</strong></p>\r\n\r\n<p>Even after President&rsquo;s call for new government, it&rsquo;s clear that the country will not get a new government within a week. The president can extend the deadline for government formation by a few days. Ultimately, though, there&rsquo;s no alternative to selecting the PM on the basis of a majority in the House. Even after going for a majority vote, the major parties should select a common candidate for the top post, Congress leader Ananda Dhungana says.</p>\r\n\r\n<p>There&rsquo;s no alternative for the three parties to cobble together a new government. But who should lead the dispensation?&nbsp; Government leadership is proving to be a thorny issue.</p>\r\n\r\n<p><strong>Congress in four directions</strong></p>\r\n\r\n<p>Congress has not staked claim for the top post formally. A lobby within the party wants Sushil Koirala to continue as the PM. Those loyal to leader Sher Bahadur Deuba are lobbying in the international fora in their bid to make Deuba the chief executive.</p>\r\n\r\n<p>Bal Krishna Khand, a leader close to Deuba, says Congress will continue to have legitimate claim on the government leadership unless Sushil Koirala or any other Congress leader continues informs the Congress working committee about the &lsquo;gentleman&rsquo;s deal&rsquo; to hand over government leadership to the UML. Asked who is staking the claim for the top post from the Congress party, Khand told Online Khabar, &ldquo;Sushil&nbsp;<em>Dai</em>&nbsp;himself said he will quit as PM after promulgation of the constitution. Party activists and the evolving situation calls for a government under Sher Bahadur Deuba&rsquo;s leadership.&rdquo;</p>\r\n\r\n<p>The Deuba camp does not want Sushil Koirala to retain the top post, neither does it want Ram Chandra Poudel to become the PM. It will be no wonder if Deuba supports KP Oli for the top post. Khand says Deuba may be capable of moving ahead by taking those involved in the Madhesh movement, the UML and the UCPN-Maoist into confidence. &ldquo;This does not mean rejecting Oli outright. In the first place, the leaders should inform us about the gentleman&rsquo;s deal.&rdquo;</p>\r\n\r\n<p>NC leaders like Krishna Sitaula and Purna Bahadur Khadka are in favour of keeping the promise. They maintain that the party should not cheat the UML. And they are trying to convince Deuba on this. &ldquo;Conspiracies are afoot to weaken the constitution by creating rifts between the three political parties,&rdquo; Congress lawmaker Ram Hari Khatiwada said. Sitaula and Purna Bahadur Khadka are worried about this, he said, stressing that Oli should be made the PM if he had indeed been assured of the top post.</p>\r\n\r\n<p><strong>UML: PM or opposition</strong></p>\r\n\r\n<p>Notably, UML leaders are on one page, whether it&rsquo;s on constitution-making or on taking government leadership. Senior leader Jhala Nath Khanal said, &ldquo;The UML will lead the new government. Comrade KP Oli will become the consensus prime minister.&rdquo; Leaders close to Khanal and another senior leader Madhav Nepal have been saying that no other UML leader, save Oli, has staked claim for the PM&rsquo;s post. &ldquo;Comrade KP Oli should head the consensus government. There&rsquo;s no dispute in the UML on this issue,&rdquo; UML politburo member Prakash Jwala, who is considered close to leader Nepal, said.</p>\r\n\r\n<p><strong>Delegates fail to impress Madhav Nepal</strong></p>\r\n\r\n<p>Some Congress leaders had met UML leader Madhav Nepal, pointing that India will not accept Oli, while UDMF is also angry with him. They said things will be easy if the UML selects Nepal himself, and not Oli, for the top post, according to a source. But Nepal rejected the proposal, warning them not to play politics within the UML, leaders close to Nepal said. No one else will stake claim on the top post from the UML unless Oli himself proposes another name from the party for the top post.</p>\r\n\r\n<p><strong>Amendment impossible sans UML</strong></p>\r\n\r\n<p>It&rsquo;s pretty clear that the UML will not join the government if Oli does not get the PM post. In such a scenario, it will be difficult to amend the constitution. For garnering a two-third majority for such an amendment, Congress, UML and the UCPN-Maoist (or Madheshi parties in place of the Maoist party) will have to come together.</p>\r\n\r\n<p>For addressing agendas of the Madheshi movement, the constitution will have to be amended. The UML will not vote for amendment unless it does not get the government leadership.</p>\r\n\r\n<p><strong>India, Madhesh cards against Oli</strong></p>\r\n\r\n<p>UML leaders say certain quarters have started showing India and Madhesh cards against Oli after the process of forming a new government began. The Indian establishment is said to be angry with Oli because he has turned down an invite to visit Delhi, turned down the request to stop constitution promulgation and has resorted to tough posturing on Madhesh&rsquo;s demands. Sher Dhan Rai, a leader close to Oli, says Oli wants to become prime minister with support from the Nepali people, not Delhi.</p>\r\n\r\n<p><strong>Old guard till Dashain?</strong></p>\r\n\r\n<p>The process of electing prime minister with a majority vote will begin if both the Congress and the UML continue to stake claim on the government leadership. Currently, there are 598 lawmakers in the Parliament. Whoever garners half of these votes will become the prime minister. It is easier for the Congress to get a majority in the Parliament. For this, the UCPN-Maoist, RPP lawmakers and lawmakers from Madheshi parties will have to vote for the Congress. Leaders do not have courage at the moment to stoop that low. With the country brought to a grinding halt with the promulgation of the constitution, it will not be in the interest of the parties involved in constitution promulgation to break their unity on the crucial issue of government formation.</p>\r\n\r\n<p>Consensus-building and majority-garnering processes may last really long, and a new government may not materialise before Dashain.&nbsp; The parties have responsibility to normalize life by pacifying the Madhesh movement and ending the Indian blockade.</p>\r\n', '1bd4b0b35e6e608169895b65fc1f1563.jpg', 14, 0, 103, '2015-10-04 14:30:41', 1, 'inceptioncms.com');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `notice_name` varchar(250) NOT NULL,
  `notice_detail` text NOT NULL,
  `notice_date` date NOT NULL,
  `latest_attach` varchar(100) NOT NULL,
  `date_created` date NOT NULL,
  `latest_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `onpageadd`
--

CREATE TABLE `onpageadd` (
  `add_id` int(8) NOT NULL,
  `add_contact` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'NULL',
  `add_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `add_link` varchar(150) COLLATE utf8_bin NOT NULL,
  `add_doc` varchar(150) COLLATE utf8_bin NOT NULL,
  `add_rate` varchar(15) COLLATE utf8_bin NOT NULL,
  `add_page` varchar(100) COLLATE utf8_bin NOT NULL,
  `add_added` date NOT NULL,
  `add_added_for` int(8) NOT NULL,
  `add_status` smallint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `onpageadd`
--

INSERT INTO `onpageadd` (`add_id`, `add_contact`, `add_name`, `add_link`, `add_doc`, `add_rate`, `add_page`, `add_added`, `add_added_for`, `add_status`) VALUES
(2, '9804552309', 'Hero Honda', 'http://www.facebook.com', 'a5c0e2a90a0eee3342e6ecebedd7dcfc.gif', '3000', 'home_down', '2015-09-16', 12, 1),
(1, '977-9804552309', 'Toyota', 'http://www.facebook.com', '2b9aabd08c1df0dee1b02b7386b11d0f.png', '1000', 'नेपाल_up', '2015-09-16', 12, 1),
(3, '98045532309', 'Umesh Khanal', 'http://www.google.com', '7805dffeeaf8792ad62b407157ae949e.gif', '9000', 'home_middle', '2015-09-23', 12, 1),
(5, '98045532309', 'Umesh Khanal2', 'http://www.google.com', '28604828046c6faa117e3e1f3fff1da6.gif', '9000', 'home_up', '2015-09-23', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_track`
--

CREATE TABLE `page_track` (
  `id` int(8) NOT NULL,
  `page` varchar(250) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_track`
--

INSERT INTO `page_track` (`id`, `page`, `time`, `date`) VALUES
(1, '/yubrajpokharel.com/samples/newsportal//', '07:42:04', '2015-09-20'),
(2, '/yubrajpokharel.com/samples/newsportal//', '07:42:10', '2015-09-20'),
(3, '/yubrajpokharel.com/samples/newsportal//', '07:42:23', '2015-09-20'),
(4, '/yubrajpokharel.com/samples/newsportal//', '07:42:23', '2015-09-20'),
(5, '/yubrajpokharel.com/samples/newsportal//images', '07:42:32', '2015-09-20'),
(6, '/yubrajpokharel.com/samples/newsportal//category/5', '07:42:34', '2015-09-20'),
(7, '/yubrajpokharel.com/samples/newsportal//category/3', '07:42:37', '2015-09-20'),
(8, '/yubrajpokharel.com/samples/newsportal//', '07:42:45', '2015-09-20'),
(9, '/yubrajpokharel.com/samples/newsportal//', '07:43:20', '2015-09-20'),
(10, '/yubrajpokharel.com/samples/newsportal//', '07:45:12', '2015-09-20'),
(11, '/yubrajpokharel.com/samples/newsportal//images', '07:49:34', '2015-09-20'),
(12, '/yubrajpokharel.com/samples/newsportal//images/1', '07:49:41', '2015-09-20'),
(13, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '07:49:43', '2015-09-20'),
(14, '/yubrajpokharel.com/samples/newsportal//images/category.html', '07:50:16', '2015-09-20'),
(15, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '07:50:18', '2015-09-20'),
(16, '/yubrajpokharel.com/samples/newsportal//images/1', '07:57:58', '2015-09-20'),
(17, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '07:58:00', '2015-09-20'),
(18, '/yubrajpokharel.com/samples/newsportal//images/1', '07:58:40', '2015-09-20'),
(19, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '07:58:42', '2015-09-20'),
(20, '/yubrajpokharel.com/samples/newsportal//images/1', '07:59:20', '2015-09-20'),
(21, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '07:59:22', '2015-09-20'),
(22, '/yubrajpokharel.com/samples/newsportal//contact-us', '07:59:37', '2015-09-20'),
(23, '/yubrajpokharel.com/samples/newsportal//advertisement', '07:59:45', '2015-09-20'),
(24, '/yubrajpokharel.com/samples/newsportal//about-green-paper', '07:59:53', '2015-09-20'),
(25, '/yubrajpokharel.com/samples/newsportal//', '08:00:22', '2015-09-20'),
(26, '/yubrajpokharel.com/samples/newsportal//newsdetail/2', '08:01:12', '2015-09-20'),
(27, '/yubrajpokharel.com/samples/newsportal//', '08:01:28', '2015-09-20'),
(28, '/yubrajpokharel.com/samples/newsportal//images/1', '08:10:01', '2015-09-20'),
(29, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '08:10:02', '2015-09-20'),
(30, '/yubrajpokharel.com/samples/newsportal//category/3', '08:15:00', '2015-09-20'),
(31, '/yubrajpokharel.com/samples/newsportal//category/3', '08:17:11', '2015-09-20'),
(32, '/yubrajpokharel.com/samples/newsportal//category/3', '08:18:07', '2015-09-20'),
(33, '/yubrajpokharel.com/samples/newsportal//category/3', '08:19:28', '2015-09-20'),
(34, '/yubrajpokharel.com/samples/newsportal//category/3', '08:20:00', '2015-09-20'),
(35, '/yubrajpokharel.com/samples/newsportal//category/3', '08:20:05', '2015-09-20'),
(36, '/yubrajpokharel.com/samples/newsportal//category/3/10', '08:20:29', '2015-09-20'),
(37, '/yubrajpokharel.com/samples/newsportal//category/3', '08:23:06', '2015-09-20'),
(38, '/yubrajpokharel.com/samples/newsportal//category/3', '08:23:34', '2015-09-20'),
(39, '/yubrajpokharel.com/samples/newsportal//category/3', '08:23:59', '2015-09-20'),
(40, '/yubrajpokharel.com/samples/newsportal//category/5', '08:24:12', '2015-09-20'),
(41, '/yubrajpokharel.com/samples/newsportal//', '08:27:02', '2015-09-20'),
(42, '/yubrajpokharel.com/samples/newsportal//', '08:28:22', '2015-09-20'),
(43, '/yubrajpokharel.com/samples/newsportal//', '08:29:11', '2015-09-20'),
(44, '/yubrajpokharel.com/samples/newsportal//', '08:55:46', '2015-09-20'),
(45, '/yubrajpokharel.com/samples/newsportal//', '09:11:09', '2015-09-20'),
(46, '/yubrajpokharel.com/samples/newsportal//images', '09:14:17', '2015-09-20'),
(47, '/yubrajpokharel.com/samples/newsportal//newsdetail/9', '09:25:26', '2015-09-20'),
(48, '/yubrajpokharel.com/samples/newsportal//', '09:27:41', '2015-09-20'),
(49, '/yubrajpokharel.com/samples/newsportal//images/1', '09:32:13', '2015-09-20'),
(50, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:32:14', '2015-09-20'),
(51, '/yubrajpokharel.com/samples/newsportal//images/1', '09:32:28', '2015-09-20'),
(52, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:33:25', '2015-09-20'),
(53, '/yubrajpokharel.com/samples/newsportal//images/1', '09:36:34', '2015-09-20'),
(54, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:36:35', '2015-09-20'),
(55, '/yubrajpokharel.com/samples/newsportal//images/1', '09:37:36', '2015-09-20'),
(56, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:37:38', '2015-09-20'),
(57, '/yubrajpokharel.com/samples/newsportal//images', '09:39:57', '2015-09-20'),
(58, '/yubrajpokharel.com/samples/newsportal//images/2', '09:40:02', '2015-09-20'),
(59, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:40:05', '2015-09-20'),
(60, '/yubrajpokharel.com/samples/newsportal//', '09:44:06', '2015-09-20'),
(61, '/yubrajpokharel.com/samples/newsportal//images/2', '09:44:21', '2015-09-20'),
(62, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:44:22', '2015-09-20'),
(63, '/yubrajpokharel.com/samples/newsportal//images/2', '09:45:28', '2015-09-20'),
(64, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:45:29', '2015-09-20'),
(65, '/yubrajpokharel.com/samples/newsportal//images/2', '09:46:33', '2015-09-20'),
(66, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:46:34', '2015-09-20'),
(67, '/yubrajpokharel.com/samples/newsportal//', '09:48:13', '2015-09-20'),
(68, '/yubrajpokharel.com/samples/newsportal//about-green-paper', '09:50:38', '2015-09-20'),
(69, '/yubrajpokharel.com/samples/newsportal//', '09:56:47', '2015-09-20'),
(70, '/yubrajpokharel.com/samples/newsportal//', '09:57:09', '2015-09-20'),
(71, '/yubrajpokharel.com/samples/newsportal//', '09:57:46', '2015-09-20'),
(72, '/yubrajpokharel.com/samples/newsportal//', '09:58:19', '2015-09-20'),
(73, '/yubrajpokharel.com/samples/newsportal//', '09:59:04', '2015-09-20'),
(74, '/yubrajpokharel.com/samples/newsportal//images/2', '09:59:15', '2015-09-20'),
(75, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:59:16', '2015-09-20'),
(76, '/yubrajpokharel.com/samples/newsportal//images/2', '09:59:48', '2015-09-20'),
(77, '/yubrajpokharel.com/samples/newsportal//', '10:00:41', '2015-09-20'),
(78, '/yubrajpokharel.com/samples/newsportal//', '10:01:56', '2015-09-20'),
(79, '/yubrajpokharel.com/samples/newsportal//', '10:03:42', '2015-09-20'),
(80, '/yubrajpokharel.com/samples/newsportal//category/3', '10:04:12', '2015-09-20'),
(81, '/yubrajpokharel.com/samples/newsportal//category/3/10', '10:04:48', '2015-09-20'),
(82, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:04:56', '2015-09-20'),
(83, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:00', '2015-09-20'),
(84, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:05', '2015-09-20'),
(85, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:08', '2015-09-20'),
(86, '/yubrajpokharel.com/samples/newsportal//', '10:05:17', '2015-09-20'),
(87, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:38', '2015-09-20'),
(88, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:47', '2015-09-20'),
(89, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:50', '2015-09-20'),
(90, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:52', '2015-09-20'),
(91, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:05:54', '2015-09-20'),
(92, '/yubrajpokharel.com/samples/newsportal//', '10:05:58', '2015-09-20'),
(93, '/yubrajpokharel.com/samples/newsportal//', '10:06:19', '2015-09-20'),
(94, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:31', '2015-09-20'),
(95, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:46', '2015-09-20'),
(96, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:47', '2015-09-20'),
(97, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:50', '2015-09-20'),
(98, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:51', '2015-09-20'),
(99, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:52', '2015-09-20'),
(100, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:53', '2015-09-20'),
(101, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '10:07:54', '2015-09-20'),
(102, '/yubrajpokharel.com/samples/newsportal//newsdetail/15', '10:08:28', '2015-09-20'),
(103, '/yubrajpokharel.com/samples/newsportal//newsdetail/15', '10:09:22', '2015-09-20'),
(104, '/yubrajpokharel.com/samples/newsportal//newsdetail/15', '10:11:45', '2015-09-20'),
(105, '/yubrajpokharel.com/samples/newsportal//newsdetail/15', '10:12:21', '2015-09-20'),
(106, '/yubrajpokharel.com/samples/newsportal//category/3', '10:13:37', '2015-09-20'),
(107, '/yubrajpokharel.com/samples/newsportal//', '10:14:55', '2015-09-20'),
(108, '/yubrajpokharel.com/samples/newsportal//newsdetail/5', '10:19:22', '2015-09-20'),
(109, '/yubrajpokharel.com/samples/newsportal//', '10:20:38', '2015-09-20'),
(110, '/yubrajpokharel.com/samples/newsportal//category/3', '10:20:52', '2015-09-20'),
(111, '/yubrajpokharel.com/samples/newsportal//category/3/10', '10:21:37', '2015-09-20'),
(112, '/yubrajpokharel.com/samples/newsportal//category/4', '10:21:43', '2015-09-20'),
(113, '/yubrajpokharel.com/samples/newsportal//newsdetail/4', '10:25:55', '2015-09-20'),
(114, '/yubrajpokharel.com/samples/newsportal//', '08:30:47', '2015-09-21'),
(115, '/yubrajpokharel.com/samples/newsportal//', '08:30:52', '2015-09-21'),
(116, '/yubrajpokharel.com/samples/newsportal//about-green-paper', '08:31:08', '2015-09-21'),
(117, '/yubrajpokharel.com/samples/newsportal//advertisement', '08:31:19', '2015-09-21'),
(118, '/yubrajpokharel.com/samples/newsportal//contact-us', '08:31:23', '2015-09-21'),
(119, '/yubrajpokharel.com/samples/newsportal//contact-us', '08:45:58', '2015-09-21'),
(120, '/yubrajpokharel.com/samples/newsportal//contact-us', '08:47:20', '2015-09-21'),
(121, '/yubrajpokharel.com/samples/newsportal//', '09:17:51', '2015-09-21'),
(122, '/yubrajpokharel.com/samples/newsportal//', '09:19:24', '2015-09-21'),
(123, '/yubrajpokharel.com/samples/newsportal//', '09:21:46', '2015-09-21'),
(124, '/yubrajpokharel.com/samples/newsportal//', '09:24:16', '2015-09-21'),
(125, '/yubrajpokharel.com/samples/newsportal//', '09:24:56', '2015-09-21'),
(126, '/yubrajpokharel.com/samples/newsportal//', '09:26:41', '2015-09-21'),
(127, '/yubrajpokharel.com/samples/newsportal//', '09:26:53', '2015-09-21'),
(128, '/yubrajpokharel.com/samples/newsportal//', '09:27:38', '2015-09-21'),
(129, '/yubrajpokharel.com/samples/newsportal//', '09:28:02', '2015-09-21'),
(130, '/yubrajpokharel.com/samples/newsportal//', '09:29:09', '2015-09-21'),
(131, '/yubrajpokharel.com/samples/newsportal//', '09:30:03', '2015-09-21'),
(132, '/yubrajpokharel.com/samples/newsportal//', '09:30:56', '2015-09-21'),
(133, '/yubrajpokharel.com/samples/newsportal//', '09:31:00', '2015-09-21'),
(134, '/yubrajpokharel.com/samples/newsportal//newsdetail/16', '09:31:21', '2015-09-21'),
(135, '/yubrajpokharel.com/samples/newsportal//newsdetail/16', '09:33:32', '2015-09-21'),
(136, '/yubrajpokharel.com/samples/newsportal//newsdetail/16', '09:33:43', '2015-09-21'),
(137, '/yubrajpokharel.com/samples/newsportal//newsdetail/9', '09:33:47', '2015-09-21'),
(138, '/yubrajpokharel.com/samples/newsportal//newsdetail/9', '09:34:04', '2015-09-21'),
(139, '/yubrajpokharel.com/samples/newsportal//newsdetail/9', '09:36:24', '2015-09-21'),
(140, '/yubrajpokharel.com/samples/newsportal//', '09:36:34', '2015-09-21'),
(141, '/yubrajpokharel.com/samples/newsportal//', '09:36:52', '2015-09-21'),
(142, '/yubrajpokharel.com/samples/newsportal//', '09:40:00', '2015-09-21'),
(143, '/yubrajpokharel.com/samples/newsportal//newsdetail/15', '09:40:16', '2015-09-21'),
(144, '/yubrajpokharel.com/samples/newsportal//category/5', '09:40:29', '2015-09-21'),
(145, '/yubrajpokharel.com/samples/newsportal//newsdetail/4', '09:40:42', '2015-09-21'),
(146, '/yubrajpokharel.com/samples/newsportal//category/5', '09:40:51', '2015-09-21'),
(147, '/yubrajpokharel.com/samples/newsportal//category/3', '11:24:56', '2015-09-21'),
(148, '/yubrajpokharel.com/samples/newsportal//', '02:07:38', '2015-09-21'),
(149, '/yubrajpokharel.com/samples/newsportal//category/3', '02:07:56', '2015-09-21'),
(150, '/yubrajpokharel.com/samples/newsportal//', '02:15:23', '2015-09-21'),
(151, '/yubrajpokharel.com/samples/newsportal//newsdetail/1', '03:02:40', '2015-09-21'),
(152, '/yubrajpokharel.com/samples/newsportal//images/2', '03:16:09', '2015-09-21'),
(153, '/yubrajpokharel.com/samples/newsportal//images/2', '03:16:09', '2015-09-21'),
(154, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '03:16:09', '2015-09-21'),
(155, '/yubrajpokharel.com/samples/newsportal//category/4', '03:16:56', '2015-09-21'),
(156, '/yubrajpokharel.com/samples/newsportal//category/4', '03:16:59', '2015-09-21'),
(157, '/yubrajpokharel.com/samples/newsportal//category/3', '03:17:07', '2015-09-21'),
(158, '/yubrajpokharel.com/samples/newsportal//newsdetail/13', '03:17:14', '2015-09-21'),
(159, '/yubrajpokharel.com/samples/newsportal//', '03:17:36', '2015-09-21'),
(160, '/yubrajpokharel.com/samples/newsportal//', '03:18:34', '2015-09-21'),
(161, '/yubrajpokharel.com/samples/newsportal//', '03:19:45', '2015-09-21'),
(162, '/yubrajpokharel.com/samples/newsportal//', '04:25:58', '2015-09-21'),
(163, '/yubrajpokharel.com/samples/newsportal//videos', '08:14:49', '2015-09-21'),
(164, '/yubrajpokharel.com/samples/newsportal//', '08:18:19', '2015-09-21'),
(165, '/yubrajpokharel.com/samples/newsportal//', '08:57:09', '2015-09-21'),
(166, '/yubrajpokharel.com/samples/newsportal//', '08:58:30', '2015-09-21'),
(167, '/yubrajpokharel.com/samples/newsportal//category/5', '08:58:43', '2015-09-21'),
(168, '/yubrajpokharel.com/samples/newsportal//category/5', '09:00:24', '2015-09-21'),
(169, '/yubrajpokharel.com/samples/newsportal//newsdetail/24', '09:00:30', '2015-09-21'),
(170, '/yubrajpokharel.com/samples/newsportal//category/5', '09:00:43', '2015-09-21'),
(171, '/yubrajpokharel.com/samples/newsportal//', '09:00:48', '2015-09-21'),
(172, '/yubrajpokharel.com/samples/newsportal//', '09:03:35', '2015-09-21'),
(173, '/yubrajpokharel.com/samples/newsportal//', '09:11:01', '2015-09-21'),
(174, '/yubrajpokharel.com/samples/newsportal//', '09:11:55', '2015-09-21'),
(175, '/yubrajpokharel.com/samples/newsportal//', '09:13:22', '2015-09-21'),
(176, '/yubrajpokharel.com/samples/newsportal//', '09:17:17', '2015-09-21'),
(177, '/yubrajpokharel.com/samples/newsportal//', '09:18:58', '2015-09-21'),
(178, '/yubrajpokharel.com/samples/newsportal//', '09:20:08', '2015-09-21'),
(179, '/yubrajpokharel.com/samples/newsportal//', '09:21:06', '2015-09-21'),
(180, '/yubrajpokharel.com/samples/newsportal//', '09:26:00', '2015-09-21'),
(181, '/yubrajpokharel.com/samples/newsportal//', '09:28:56', '2015-09-21'),
(182, '/yubrajpokharel.com/samples/newsportal//', '09:29:38', '2015-09-21'),
(183, '/yubrajpokharel.com/samples/newsportal//', '09:30:27', '2015-09-21'),
(184, '/yubrajpokharel.com/samples/newsportal//', '09:36:17', '2015-09-21'),
(185, '/yubrajpokharel.com/samples/newsportal//', '09:38:55', '2015-09-21'),
(186, '/yubrajpokharel.com/samples/newsportal//', '09:40:35', '2015-09-21'),
(187, '/yubrajpokharel.com/samples/newsportal//newsdetail/37', '09:41:43', '2015-09-21'),
(188, '/yubrajpokharel.com/samples/newsportal//newsdetail/34', '09:41:56', '2015-09-21'),
(189, '/yubrajpokharel.com/samples/newsportal//newsdetail/36', '09:42:15', '2015-09-21'),
(190, '/yubrajpokharel.com/samples/newsportal//images', '09:48:04', '2015-09-21'),
(191, '/yubrajpokharel.com/samples/newsportal//images/2', '09:48:25', '2015-09-21'),
(192, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:48:29', '2015-09-21'),
(193, '/yubrajpokharel.com/samples/newsportal//images/2', '09:49:29', '2015-09-21'),
(194, '/yubrajpokharel.com/samples/newsportal//images/2', '09:50:01', '2015-09-21'),
(195, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:50:03', '2015-09-21'),
(196, '/yubrajpokharel.com/samples/newsportal//images/2', '09:51:13', '2015-09-21'),
(197, '/yubrajpokharel.com/samples/newsportal//images/2', '09:51:41', '2015-09-21'),
(198, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:51:42', '2015-09-21'),
(199, '/yubrajpokharel.com/samples/newsportal//', '09:52:39', '2015-09-21'),
(200, '/yubrajpokharel.com/samples/newsportal//', '09:57:25', '2015-09-21'),
(201, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:59:09', '2015-09-21'),
(202, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:59:11', '2015-09-21'),
(203, '/yubrajpokharel.com/samples/newsportal//videos/assets/js/jquery.flexslider.js', '09:59:17', '2015-09-21'),
(204, '/yubrajpokharel.com/samples/newsportal//', '10:04:33', '2015-09-21'),
(205, '/yubrajpokharel.com/samples/newsportal//', '10:12:35', '2015-09-21'),
(206, '/yubrajpokharel.com/samples/newsportal//', '10:13:05', '2015-09-21'),
(207, '/yubrajpokharel.com/samples/newsportal//', '10:14:29', '2015-09-21'),
(208, '/yubrajpokharel.com/samples/newsportal//', '10:16:10', '2015-09-21'),
(209, '/yubrajpokharel.com/samples/newsportal//', '10:16:39', '2015-09-21'),
(210, '/yubrajpokharel.com/samples/newsportal//', '10:17:09', '2015-09-21'),
(211, '/yubrajpokharel.com/samples/newsportal//', '10:18:20', '2015-09-21'),
(212, '/yubrajpokharel.com/samples/newsportal//', '10:27:41', '2015-09-21'),
(213, '/yubrajpokharel.com/samples/newsportal//', '10:28:50', '2015-09-21'),
(214, '/yubrajpokharel.com/samples/newsportal//', '10:32:54', '2015-09-21'),
(215, '/yubrajpokharel.com/samples/newsportal//', '10:33:42', '2015-09-21'),
(216, '/yubrajpokharel.com/samples/newsportal//', '10:35:07', '2015-09-21'),
(217, '/yubrajpokharel.com/samples/newsportal//', '10:35:48', '2015-09-21'),
(218, '/yubrajpokharel.com/samples/newsportal//', '10:38:15', '2015-09-21'),
(219, '/yubrajpokharel.com/samples/newsportal//', '10:38:50', '2015-09-21'),
(220, '/yubrajpokharel.com/samples/newsportal//', '10:39:46', '2015-09-21'),
(221, '/yubrajpokharel.com/samples/newsportal//', '10:43:30', '2015-09-21'),
(222, '/yubrajpokharel.com/samples/newsportal//', '10:43:59', '2015-09-21'),
(223, '/yubrajpokharel.com/samples/newsportal//', '10:47:28', '2015-09-21'),
(224, '/yubrajpokharel.com/samples/newsportal//', '10:47:52', '2015-09-21'),
(225, '/yubrajpokharel.com/samples/newsportal//', '10:49:48', '2015-09-21'),
(226, '/yubrajpokharel.com/samples/newsportal//', '10:52:59', '2015-09-21'),
(227, '/yubrajpokharel.com/samples/newsportal//', '10:56:55', '2015-09-21'),
(228, '/yubrajpokharel.com/samples/newsportal//', '10:57:30', '2015-09-21'),
(229, '/yubrajpokharel.com/samples/newsportal//', '10:58:02', '2015-09-21'),
(230, '/yubrajpokharel.com/samples/newsportal//', '10:59:28', '2015-09-21'),
(231, '/yubrajpokharel.com/samples/newsportal//', '11:08:52', '2015-09-21'),
(232, '/yubrajpokharel.com/samples/newsportal//', '11:09:51', '2015-09-21'),
(233, '/yubrajpokharel.com/samples/newsportal//', '11:19:55', '2015-09-21'),
(234, '/yubrajpokharel.com/samples/newsportal//', '11:21:33', '2015-09-21'),
(235, '/yubrajpokharel.com/samples/newsportal//', '11:25:53', '2015-09-21'),
(236, '/yubrajpokharel.com/samples/newsportal//', '11:27:11', '2015-09-21'),
(237, '/yubrajpokharel.com/samples/newsportal//', '11:27:31', '2015-09-21'),
(238, '/yubrajpokharel.com/samples/newsportal//', '11:27:49', '2015-09-21'),
(239, '/yubrajpokharel.com/samples/newsportal//', '11:29:38', '2015-09-21'),
(240, '/yubrajpokharel.com/samples/newsportal//', '11:30:07', '2015-09-21'),
(241, '/yubrajpokharel.com/samples/newsportal//', '11:32:31', '2015-09-21'),
(242, '/yubrajpokharel.com/samples/newsportal//', '11:33:06', '2015-09-21'),
(243, '/yubrajpokharel.com/samples/newsportal//', '11:36:31', '2015-09-21'),
(244, '/yubrajpokharel.com/samples/newsportal//', '11:37:13', '2015-09-21'),
(245, '/yubrajpokharel.com/samples/newsportal//', '11:37:55', '2015-09-21'),
(246, '/yubrajpokharel.com/samples/newsportal//', '11:39:27', '2015-09-21'),
(247, '/yubrajpokharel.com/samples/newsportal//', '11:40:26', '2015-09-21'),
(248, '/yubrajpokharel.com/samples/newsportal//', '11:41:01', '2015-09-21'),
(249, '/yubrajpokharel.com/samples/newsportal//', '11:41:39', '2015-09-21'),
(250, '/yubrajpokharel.com/samples/newsportal//', '11:42:43', '2015-09-21'),
(251, '/yubrajpokharel.com/samples/newsportal//', '11:43:11', '2015-09-21'),
(252, '/yubrajpokharel.com/samples/newsportal//', '11:46:28', '2015-09-21'),
(253, '/yubrajpokharel.com/samples/newsportal//', '11:47:22', '2015-09-21'),
(254, '/yubrajpokharel.com/samples/newsportal//', '11:47:41', '2015-09-21'),
(255, '/yubrajpokharel.com/samples/newsportal//', '11:48:16', '2015-09-21'),
(256, '/yubrajpokharel.com/samples/newsportal//', '11:48:41', '2015-09-21'),
(257, '/yubrajpokharel.com/samples/newsportal//', '11:49:15', '2015-09-21'),
(258, '/yubrajpokharel.com/samples/newsportal//', '11:49:18', '2015-09-21'),
(259, '/yubrajpokharel.com/samples/newsportal//category/4', '11:50:05', '2015-09-21'),
(260, '/yubrajpokharel.com/samples/newsportal//', '11:50:12', '2015-09-21'),
(261, '/yubrajpokharel.com/samples/newsportal//', '11:50:40', '2015-09-21'),
(262, '/yubrajpokharel.com/samples/newsportal//videos', '11:53:27', '2015-09-21'),
(263, '/yubrajpokharel.com/samples/newsportal//videos/2', '11:53:33', '2015-09-21'),
(264, '/yubrajpokharel.com/samples/newsportal//videos/assets/js/jquery.flexslider.js', '11:53:35', '2015-09-21'),
(265, '/yubrajpokharel.com/samples/newsportal//images', '11:53:40', '2015-09-21'),
(266, '/yubrajpokharel.com/samples/newsportal//images/2', '11:53:45', '2015-09-21'),
(267, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '11:54:00', '2015-09-21'),
(268, '/yubrajpokharel.com/samples/newsportal//', '11:54:03', '2015-09-21'),
(269, '/yubrajpokharel.com/samples/newsportal//newsdetail/35', '07:23:42', '2015-09-22'),
(270, '/yubrajpokharel.com/samples/newsportal//newsdetail/35', '07:23:50', '2015-09-22'),
(271, '/yubrajpokharel.com/samples/newsportal//', '09:15:40', '2015-09-22'),
(272, '/yubrajpokharel.com/samples/newsportal//', '09:17:18', '2015-09-22'),
(273, '/yubrajpokharel.com/samples/newsportal//blogs', '09:25:09', '2015-09-22'),
(274, '/yubrajpokharel.com/samples/newsportal//blogs', '09:25:44', '2015-09-22'),
(275, '/yubrajpokharel.com/samples/newsportal//blogs', '09:26:20', '2015-09-22'),
(276, '/yubrajpokharel.com/samples/newsportal//blogs', '09:27:04', '2015-09-22'),
(277, '/yubrajpokharel.com/samples/newsportal//blogs', '09:27:05', '2015-09-22'),
(278, '/yubrajpokharel.com/samples/newsportal//blogs', '09:28:12', '2015-09-22'),
(279, '/yubrajpokharel.com/samples/newsportal//blogs', '09:28:42', '2015-09-22'),
(280, '/yubrajpokharel.com/samples/newsportal//blogs', '09:29:27', '2015-09-22'),
(281, '/yubrajpokharel.com/samples/newsportal//category/6', '09:29:35', '2015-09-22'),
(282, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:39:36', '2015-09-22'),
(283, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:40:49', '2015-09-22'),
(284, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:41:12', '2015-09-22'),
(285, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:41:49', '2015-09-22'),
(286, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:42:57', '2015-09-22'),
(287, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:43:19', '2015-09-22'),
(288, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:43:46', '2015-09-22'),
(289, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '09:45:54', '2015-09-22'),
(290, '/yubrajpokharel.com/samples/newsportal//images/9', '09:48:49', '2015-09-22'),
(291, '/yubrajpokharel.com/samples/newsportal//category/4', '09:49:00', '2015-09-22'),
(292, '/yubrajpokharel.com/samples/newsportal//newsdetail/33', '09:49:04', '2015-09-22'),
(293, '/yubrajpokharel.com/samples/newsportal//images', '09:49:17', '2015-09-22'),
(294, '/yubrajpokharel.com/samples/newsportal//images/1', '09:49:30', '2015-09-22'),
(295, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:49:31', '2015-09-22'),
(296, '/yubrajpokharel.com/samples/newsportal//images/1', '09:49:58', '2015-09-22'),
(297, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '09:49:59', '2015-09-22'),
(298, '/yubrajpokharel.com/samples/newsportal//videos', '09:50:21', '2015-09-22'),
(299, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:50:35', '2015-09-22'),
(300, '/yubrajpokharel.com/samples/newsportal//videos/assets/js/jquery.flexslider.js', '09:50:36', '2015-09-22'),
(301, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:51:05', '2015-09-22'),
(302, '/yubrajpokharel.com/samples/newsportal//videos/assets/js/jquery.flexslider.js', '09:51:07', '2015-09-22'),
(303, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:51:26', '2015-09-22'),
(304, '/yubrajpokharel.com/samples/newsportal//videos/assets/js/jquery.flexslider.js', '09:51:28', '2015-09-22'),
(305, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:52:22', '2015-09-22'),
(306, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:52:24', '2015-09-22'),
(307, '/yubrajpokharel.com/samples/newsportal//videos/2', '09:52:26', '2015-09-22'),
(308, '/yubrajpokharel.com/samples/newsportal//', '09:53:07', '2015-09-22'),
(309, '/yubrajpokharel.com/samples/newsportal//', '09:53:56', '2015-09-22'),
(310, '/yubrajpokharel.com/samples/newsportal//category/8', '09:54:40', '2015-09-22'),
(311, '/yubrajpokharel.com/samples/newsportal//newsdetail/42', '09:54:48', '2015-09-22'),
(312, '/yubrajpokharel.com/samples/newsportal//category/8', '09:55:04', '2015-09-22'),
(313, '/yubrajpokharel.com/samples/newsportal//newsdetail/45', '09:55:09', '2015-09-22'),
(314, '/yubrajpokharel.com/samples/newsportal//newsdetail/45', '10:06:00', '2015-09-22'),
(315, '/yubrajpokharel.com/samples/newsportal//newsdetail/45', '10:07:52', '2015-09-22'),
(316, '/yubrajpokharel.com/samples/newsportal//', '10:08:20', '2015-09-22'),
(317, '/yubrajpokharel.com/samples/newsportal//', '10:08:33', '2015-09-22'),
(318, '/yubrajpokharel.com/samples/newsportal//', '10:08:41', '2015-09-22'),
(319, '/yubrajpokharel.com/samples/newsportal//category/5', '10:08:46', '2015-09-22'),
(320, '/yubrajpokharel.com/samples/newsportal//category/7', '10:08:49', '2015-09-22'),
(321, '/yubrajpokharel.com/samples/newsportal//category/8', '10:08:50', '2015-09-22'),
(322, '/yubrajpokharel.com/samples/newsportal//blogs', '10:08:52', '2015-09-22'),
(323, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '10:09:34', '2015-09-22'),
(324, '/yubrajpokharel.com/samples/newsportal//blogdetail/9', '10:09:48', '2015-09-22'),
(325, '/yubrajpokharel.com/samples/newsportal//category/3', '10:10:06', '2015-09-22'),
(326, '/yubrajpokharel.com/samples/newsportal//', '10:31:39', '2015-09-22'),
(327, '/yubrajpokharel.com/samples/newsportal//', '10:31:41', '2015-09-22'),
(328, '/yubrajpokharel.com/samples/newsportal//', '10:31:53', '2015-09-22'),
(329, '/yubrajpokharel.com/samples/newsportal//', '10:31:54', '2015-09-22'),
(330, '/yubrajpokharel.com/samples/newsportal//', '10:34:51', '2015-09-22'),
(331, '/yubrajpokharel.com/samples/newsportal//', '10:34:52', '2015-09-22'),
(332, '/yubrajpokharel.com/samples/newsportal//', '10:39:48', '2015-09-22'),
(333, '/yubrajpokharel.com/samples/newsportal//', '10:39:49', '2015-09-22'),
(334, '/yubrajpokharel.com/samples/newsportal//', '10:44:46', '2015-09-22'),
(335, '/yubrajpokharel.com/samples/newsportal//', '10:44:47', '2015-09-22'),
(336, '/yubrajpokharel.com/samples/newsportal//', '10:46:37', '2015-09-22'),
(337, '/yubrajpokharel.com/samples/newsportal//', '10:46:38', '2015-09-22'),
(338, '/yubrajpokharel.com/samples/newsportal//', '10:58:21', '2015-09-22'),
(339, '/yubrajpokharel.com/samples/newsportal//', '10:58:22', '2015-09-22'),
(340, '/yubrajpokharel.com/samples/newsportal//', '10:59:09', '2015-09-22'),
(341, '/yubrajpokharel.com/samples/newsportal//', '10:59:10', '2015-09-22'),
(342, '/yubrajpokharel.com/samples/newsportal//', '11:01:58', '2015-09-22'),
(343, '/yubrajpokharel.com/samples/newsportal//', '11:02:00', '2015-09-22'),
(344, '/yubrajpokharel.com/samples/newsportal//', '11:03:08', '2015-09-22'),
(345, '/yubrajpokharel.com/samples/newsportal//', '11:03:09', '2015-09-22'),
(346, '/yubrajpokharel.com/samples/newsportal//', '11:04:12', '2015-09-22'),
(347, '/yubrajpokharel.com/samples/newsportal//', '11:04:13', '2015-09-22'),
(348, '/yubrajpokharel.com/samples/newsportal//', '11:06:41', '2015-09-22'),
(349, '/yubrajpokharel.com/samples/newsportal//', '11:06:42', '2015-09-22'),
(350, '/yubrajpokharel.com/samples/newsportal//', '11:10:32', '2015-09-22'),
(351, '/yubrajpokharel.com/samples/newsportal//', '11:10:34', '2015-09-22'),
(352, '/yubrajpokharel.com/samples/newsportal//', '11:13:59', '2015-09-22'),
(353, '/yubrajpokharel.com/samples/newsportal//', '11:14:00', '2015-09-22'),
(354, '/yubrajpokharel.com/samples/newsportal//category/3', '04:56:08', '2015-09-22'),
(355, '/yubrajpokharel.com/samples/newsportal//', '05:00:12', '2015-09-22'),
(356, '/yubrajpokharel.com/samples/newsportal//', '05:00:13', '2015-09-22'),
(357, '/yubrajpokharel.com/samples/newsportal//', '01:53:16', '2015-09-23'),
(358, '/yubrajpokharel.com/samples/newsportal//images', '02:04:28', '2015-09-23'),
(359, '/yubrajpokharel.com/samples/newsportal//images', '02:04:35', '2015-09-23'),
(360, '/yubrajpokharel.com/samples/newsportal//images/1', '02:06:01', '2015-09-23'),
(361, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '02:06:02', '2015-09-23'),
(362, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '02:06:04', '2015-09-23'),
(363, '/yubrajpokharel.com/samples/newsportal//', '06:35:39', '2015-09-23'),
(364, '/yubrajpokharel.com/samples/newsportal//', '06:35:41', '2015-09-23'),
(365, '/yubrajpokharel.com/samples/newsportal//', '06:41:32', '2015-09-23'),
(366, '/yubrajpokharel.com/samples/newsportal//', '06:41:37', '2015-09-23'),
(367, '/yubrajpokharel.com/samples/newsportal//', '08:34:38', '2015-09-23'),
(368, '/yubrajpokharel.com/samples/newsportal//newsdetail/45', '08:39:38', '2015-09-23'),
(369, '/yubrajpokharel.com/samples/newsportal//newsdetail/45', '09:03:00', '2015-09-23'),
(370, '/yubrajpokharel.com/samples/newsportal//', '09:04:45', '2015-09-23'),
(371, '/yubrajpokharel.com/samples/newsportal//', '09:04:47', '2015-09-23'),
(372, '/yubrajpokharel.com/samples/newsportal//', '09:05:21', '2015-09-23'),
(373, '/yubrajpokharel.com/samples/newsportal//', '09:05:23', '2015-09-23'),
(374, '/yubrajpokharel.com/samples/newsportal//', '09:06:25', '2015-09-23'),
(375, '/yubrajpokharel.com/samples/newsportal//', '09:06:27', '2015-09-23'),
(376, '/yubrajpokharel.com/samples/newsportal//', '09:11:21', '2015-09-23'),
(377, '/yubrajpokharel.com/samples/newsportal//', '09:11:22', '2015-09-23'),
(378, '/yubrajpokharel.com/samples/newsportal//', '09:12:56', '2015-09-23'),
(379, '/yubrajpokharel.com/samples/newsportal//', '09:12:57', '2015-09-23'),
(380, '/yubrajpokharel.com/samples/newsportal//', '09:14:03', '2015-09-23'),
(381, '/yubrajpokharel.com/samples/newsportal//', '09:14:04', '2015-09-23'),
(382, '/yubrajpokharel.com/samples/newsportal//', '09:24:48', '2015-09-23'),
(383, '/yubrajpokharel.com/samples/newsportal//', '09:25:22', '2015-09-23'),
(384, '/yubrajpokharel.com/samples/newsportal//videos', '09:26:15', '2015-09-23'),
(385, '/yubrajpokharel.com/samples/newsportal//videos', '09:26:16', '2015-09-23'),
(386, '/yubrajpokharel.com/samples/newsportal//videos', '09:26:16', '2015-09-23'),
(387, '/yubrajpokharel.com/samples/newsportal//', '06:55:42', '2015-09-24'),
(388, '/yubrajpokharel.com/samples/newsportal//', '06:55:54', '2015-09-24'),
(389, '/yubrajpokharel.com/samples/newsportal//', '06:55:55', '2015-09-24'),
(390, '/yubrajpokharel.com/samples/newsportal//', '06:56:38', '2015-09-24'),
(391, '/yubrajpokharel.com/samples/newsportal//', '06:56:39', '2015-09-24'),
(392, '/yubrajpokharel.com/samples/newsportal//category/4', '06:59:20', '2015-09-24'),
(393, '/yubrajpokharel.com/samples/newsportal//', '06:59:38', '2015-09-24'),
(394, '/yubrajpokharel.com/samples/newsportal//', '06:59:40', '2015-09-24'),
(395, '/yubrajpokharel.com/samples/newsportal//category/3', '06:59:43', '2015-09-24'),
(396, '/yubrajpokharel.com/samples/newsportal//newsdetail/29', '07:00:58', '2015-09-24'),
(397, '/yubrajpokharel.com/samples/newsportal//', '07:01:56', '2015-09-24'),
(398, '/yubrajpokharel.com/samples/newsportal//', '07:01:57', '2015-09-24'),
(399, '/yubrajpokharel.com/samples/newsportal//', '10:28:46', '2015-09-24'),
(400, '/yubrajpokharel.com/samples/newsportal//category/6', '10:32:07', '2015-09-24'),
(401, '/yubrajpokharel.com/samples/newsportal//category/3', '10:32:18', '2015-09-24'),
(402, '/yubrajpokharel.com/samples/newsportal//images', '10:32:48', '2015-09-24'),
(403, '/yubrajpokharel.com/samples/newsportal//images', '10:32:54', '2015-09-24'),
(404, '/yubrajpokharel.com/samples/newsportal//images/1', '10:32:55', '2015-09-24'),
(405, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '10:32:57', '2015-09-24'),
(406, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '10:33:00', '2015-09-24'),
(407, '/yubrajpokharel.com/samples/newsportal//images/1', '10:56:15', '2015-09-24'),
(408, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '10:56:18', '2015-09-24'),
(409, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '10:56:33', '2015-09-24'),
(410, '/yubrajpokharel.com/samples/newsportal//', '10:56:43', '2015-09-24'),
(411, '/yubrajpokharel.com/samples/newsportal//', '10:56:45', '2015-09-24'),
(412, '/yubrajpokharel.com/samples/newsportal//', '10:59:00', '2015-09-24'),
(413, '/yubrajpokharel.com/samples/newsportal//', '10:59:00', '2015-09-24'),
(414, '/yubrajpokharel.com/samples/newsportal//', '11:00:37', '2015-09-24'),
(415, '/yubrajpokharel.com/samples/newsportal//', '11:00:38', '2015-09-24'),
(416, '/yubrajpokharel.com/samples/newsportal//category/3', '11:04:03', '2015-09-24'),
(417, '/yubrajpokharel.com/samples/newsportal//category/3', '11:04:12', '2015-09-24'),
(418, '/yubrajpokharel.com/samples/newsportal//', '02:41:01', '2015-09-24'),
(419, '/yubrajpokharel.com/samples/newsportal//', '02:41:34', '2015-09-24'),
(420, '/yubrajpokharel.com/samples/newsportal//images/1', '03:01:01', '2015-09-24'),
(421, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '03:01:05', '2015-09-24'),
(422, '/yubrajpokharel.com/samples/newsportal//images/1', '03:03:06', '2015-09-24'),
(423, '/yubrajpokharel.com/samples/newsportal//images/1', '03:03:51', '2015-09-24'),
(424, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '03:03:52', '2015-09-24'),
(425, '/yubrajpokharel.com/samples/newsportal//images/1', '03:04:22', '2015-09-24'),
(426, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '03:04:23', '2015-09-24'),
(427, '/yubrajpokharel.com/samples/newsportal//images/1', '03:05:14', '2015-09-24'),
(428, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '03:05:15', '2015-09-24'),
(429, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '03:05:17', '2015-09-24'),
(430, '/yubrajpokharel.com/samples/newsportal//images/1', '03:05:23', '2015-09-24'),
(431, '/yubrajpokharel.com/samples/newsportal//images/inceptioncms.appcache', '03:05:24', '2015-09-24'),
(432, '/yubrajpokharel.com/samples/newsportal//images/assets/js/jquery.flexslider.js', '03:05:27', '2015-09-24'),
(433, '/yubrajpokharel.com/samples/newsportal//', '03:06:29', '2015-09-24'),
(434, '/yubrajpokharel.com/samples/newsportal//', '03:06:30', '2015-09-24'),
(435, '/yubrajpokharel.com/samples/newsportal//', '09:10:02', '2015-09-24'),
(436, '/yubrajpokharel.com/samples/newsportal//', '09:10:04', '2015-09-24'),
(437, '/yubrajpokharel.com/samples/newsportal//', '09:11:11', '2015-09-24'),
(438, '/yubrajpokharel.com/samples/newsportal//', '09:11:24', '2015-09-24'),
(439, '/yubrajpokharel.com/samples/newsportal//', '09:11:27', '2015-09-24'),
(440, '/yubrajpokharel.com/samples/newsportal//', '09:12:11', '2015-09-24'),
(441, '/yubrajpokharel.com/samples/newsportal//', '09:12:14', '2015-09-24'),
(442, '/yubrajpokharel.com/samples/newsportal//', '09:14:38', '2015-09-24'),
(443, '/yubrajpokharel.com/samples/newsportal//', '09:14:40', '2015-09-24'),
(444, '/yubrajpokharel.com/samples/newsportal//', '09:15:41', '2015-09-24'),
(445, '/yubrajpokharel.com/samples/newsportal//', '09:15:42', '2015-09-24'),
(446, '/yubrajpokharel.com/samples/newsportal//', '09:16:50', '2015-09-24'),
(447, '/yubrajpokharel.com/samples/newsportal//', '09:16:53', '2015-09-24'),
(448, '/yubrajpokharel.com/samples/newsportal//', '09:19:26', '2015-09-24'),
(449, '/yubrajpokharel.com/samples/newsportal//', '09:19:27', '2015-09-24'),
(450, '/yubrajpokharel.com/samples/newsportal//', '09:20:59', '2015-09-24'),
(451, '/yubrajpokharel.com/samples/newsportal//', '09:21:00', '2015-09-24'),
(452, '/yubrajpokharel.com/samples/newsportal//', '09:23:57', '2015-09-24'),
(453, '/yubrajpokharel.com/samples/newsportal//', '09:23:59', '2015-09-24'),
(454, '/yubrajpokharel.com/samples/newsportal//', '09:41:03', '2015-09-24'),
(455, '/yubrajpokharel.com/samples/newsportal//', '09:41:04', '2015-09-24'),
(456, '/yubrajpokharel.com/samples/newsportal//', '09:42:12', '2015-09-24'),
(457, '/yubrajpokharel.com/samples/newsportal//', '09:42:13', '2015-09-24'),
(458, '/yubrajpokharel.com/samples/newsportal//', '09:42:51', '2015-09-24'),
(459, '/yubrajpokharel.com/samples/newsportal//', '09:42:52', '2015-09-24'),
(460, '/yubrajpokharel.com/samples/newsportal//', '09:49:51', '2015-09-24'),
(461, '/yubrajpokharel.com/samples/newsportal//', '09:49:52', '2015-09-24'),
(462, '/yubrajpokharel.com/samples/newsportal//', '09:51:14', '2015-09-24'),
(463, '/yubrajpokharel.com/samples/newsportal//', '09:51:15', '2015-09-24'),
(464, '/yubrajpokharel.com/samples/newsportal//', '09:51:16', '2015-09-24'),
(465, '/yubrajpokharel.com/samples/newsportal//', '09:51:17', '2015-09-24'),
(466, '/yubrajpokharel.com/samples/newsportal//', '09:51:51', '2015-09-24'),
(467, '/yubrajpokharel.com/samples/newsportal//', '09:56:58', '2015-09-24'),
(468, '/yubrajpokharel.com/samples/newsportal//', '10:02:58', '2015-09-24'),
(469, '/yubrajpokharel.com/samples/newsportal//', '10:02:59', '2015-09-24'),
(470, '/yubrajpokharel.com/samples/newsportal//', '10:04:36', '2015-09-24'),
(471, '/yubrajpokharel.com/samples/newsportal//', '10:04:37', '2015-09-24'),
(472, '/yubrajpokharel.com/samples/newsportal//category/9', '10:07:17', '2015-09-24'),
(473, '/yubrajpokharel.com/samples/newsportal//', '10:07:26', '2015-09-24'),
(474, '/yubrajpokharel.com/samples/newsportal//', '10:24:46', '2015-09-24'),
(475, '/yubrajpokharel.com/samples/newsportal//', '10:24:47', '2015-09-24'),
(476, '/yubrajpokharel.com/samples/newsportal//', '10:25:33', '2015-09-24'),
(477, '/yubrajpokharel.com/samples/newsportal//', '10:25:34', '2015-09-24'),
(478, '/yubrajpokharel.com/samples/newsportal//category/10', '10:25:47', '2015-09-24'),
(479, '/yubrajpokharel.com/samples/newsportal//', '10:27:02', '2015-09-24'),
(480, '/yubrajpokharel.com/samples/newsportal//', '10:27:03', '2015-09-24'),
(481, '/yubrajpokharel.com/samples/newsportal//', '10:29:20', '2015-09-24'),
(482, '/yubrajpokharel.com/samples/newsportal//', '10:29:21', '2015-09-24'),
(483, '/yubrajpokharel.com/samples/newsportal//', '10:30:01', '2015-09-24'),
(484, '/yubrajpokharel.com/samples/newsportal//', '10:30:02', '2015-09-24'),
(485, '/yubrajpokharel.com/samples/newsportal//', '10:32:00', '2015-09-24'),
(486, '/yubrajpokharel.com/samples/newsportal//', '10:32:03', '2015-09-24'),
(487, '/yubrajpokharel.com/samples/newsportal//', '10:35:47', '2015-09-24'),
(488, '/yubrajpokharel.com/samples/newsportal//', '10:35:48', '2015-09-24'),
(489, '/yubrajpokharel.com/samples/newsportal//', '10:36:37', '2015-09-24'),
(490, '/yubrajpokharel.com/samples/newsportal//', '10:36:38', '2015-09-24'),
(491, '/yubrajpokharel.com/samples/newsportal//', '10:36:57', '2015-09-24'),
(492, '/yubrajpokharel.com/samples/newsportal//', '10:40:59', '2015-09-24'),
(493, '/yubrajpokharel.com/samples/newsportal//', '10:41:00', '2015-09-24'),
(494, '/yubrajpokharel.com/samples/newsportal//', '10:41:38', '2015-09-24'),
(495, '/yubrajpokharel.com/samples/newsportal//', '10:41:39', '2015-09-24'),
(496, '/yubrajpokharel.com/samples/newsportal//', '10:43:25', '2015-09-24'),
(497, '/yubrajpokharel.com/samples/newsportal//', '10:43:48', '2015-09-24'),
(498, '/yubrajpokharel.com/samples/newsportal//', '11:03:22', '2015-09-24'),
(499, '/yubrajpokharel.com/samples/newsportal//', '11:03:23', '2015-09-24'),
(500, '/yubrajpokharel.com/samples/newsportal//', '11:04:18', '2015-09-24'),
(501, '/yubrajpokharel.com/samples/newsportal//', '11:04:19', '2015-09-24'),
(502, '/yubrajpokharel.com/samples/newsportal//', '06:40:01', '2015-09-25'),
(503, '/yubrajpokharel.com/samples/newsportal//', '06:44:44', '2015-09-25'),
(504, '/yubrajpokharel.com/samples/newsportal//', '06:44:45', '2015-09-25'),
(505, '/yubrajpokharel.com/samples/newsportal//', '07:00:42', '2015-09-25'),
(506, '/yubrajpokharel.com/samples/newsportal//', '07:00:44', '2015-09-25'),
(507, '/yubrajpokharel.com/samples/newsportal//', '07:01:10', '2015-09-25'),
(508, '/yubrajpokharel.com/samples/newsportal//', '07:01:13', '2015-09-25'),
(509, '/yubrajpokharel.com/samples/newsportal//', '07:01:13', '2015-09-25'),
(510, '/yubrajpokharel.com/samples/newsportal//', '07:03:34', '2015-09-25'),
(511, '/yubrajpokharel.com/samples/newsportal//', '07:03:35', '2015-09-25'),
(512, '/yubrajpokharel.com/samples/newsportal//', '07:57:45', '2015-09-25'),
(513, '/yubrajpokharel.com/samples/newsportal//', '07:57:46', '2015-09-25'),
(514, '/yubrajpokharel.com/samples/newsportal//', '07:59:12', '2015-09-25'),
(515, '/yubrajpokharel.com/samples/newsportal//', '07:59:13', '2015-09-25'),
(516, '/yubrajpokharel.com/samples/newsportal//', '07:59:57', '2015-09-25'),
(517, '/yubrajpokharel.com/samples/newsportal//', '07:59:58', '2015-09-25'),
(518, '/yubrajpokharel.com/samples/newsportal//', '08:00:30', '2015-09-25'),
(519, '/yubrajpokharel.com/samples/newsportal//', '08:00:31', '2015-09-25'),
(520, '/yubrajpokharel.com/samples/newsportal//', '08:01:52', '2015-09-25'),
(521, '/yubrajpokharel.com/samples/newsportal//', '08:01:53', '2015-09-25'),
(522, '/yubrajpokharel.com/samples/newsportal//', '08:04:43', '2015-09-25'),
(523, '/yubrajpokharel.com/samples/newsportal//', '08:04:44', '2015-09-25'),
(524, '/yubrajpokharel.com/samples/newsportal//', '08:09:46', '2015-09-25'),
(525, '/yubrajpokharel.com/samples/newsportal//', '08:09:47', '2015-09-25'),
(526, '/yubrajpokharel.com/samples/newsportal//newsdetail/49', '10:00:36', '2015-09-25'),
(527, '/yubrajpokharel.com/samples/newsportal//', '10:01:00', '2015-09-25'),
(528, '/yubrajpokharel.com/samples/newsportal//', '10:01:03', '2015-09-25'),
(529, '/yubrajpokharel.com/samples/newsportal//', '10:01:58', '2015-09-25'),
(530, '/yubrajpokharel.com/samples/newsportal//', '10:01:58', '2015-09-25'),
(531, '/yubrajpokharel.com/samples/newsportal//', '10:02:32', '2015-09-25'),
(532, '/yubrajpokharel.com/samples/newsportal//', '10:02:33', '2015-09-25'),
(533, '/yubrajpokharel.com/samples/newsportal//category/10', '10:15:40', '2015-09-25'),
(534, '/yubrajpokharel.com/samples/newsportal//', '10:15:49', '2015-09-25'),
(535, '/yubrajpokharel.com/samples/newsportal//', '10:15:50', '2015-09-25'),
(536, '/yubrajpokharel.com/samples/newsportal//newsdetail/50', '10:16:39', '2015-09-25'),
(537, '/yubrajpokharel.com/samples/newsportal//', '10:33:52', '2015-09-25'),
(538, '/yubrajpokharel.com/samples/newsportal//', '10:33:53', '2015-09-25'),
(539, '/yubrajpokharel.com/samples/newsportal//', '10:36:23', '2015-09-25'),
(540, '/yubrajpokharel.com/samples/newsportal//', '10:36:24', '2015-09-25'),
(541, '/yubrajpokharel.com/samples/newsportal//', '10:40:08', '2015-09-25'),
(542, '/yubrajpokharel.com/samples/newsportal//', '10:40:09', '2015-09-25'),
(543, '/yubrajpokharel.com/samples/newsportal//', '10:40:11', '2015-09-25'),
(544, '/yubrajpokharel.com/samples/newsportal//', '10:40:27', '2015-09-25'),
(545, '/yubrajpokharel.com/samples/newsportal//', '10:40:28', '2015-09-25'),
(546, '/yubrajpokharel.com/samples/newsportal//', '11:04:06', '2015-09-25'),
(547, '/yubrajpokharel.com/samples/newsportal//', '11:04:07', '2015-09-25'),
(548, '/yubrajpokharel.com/samples/newsportal//', '11:10:01', '2015-09-25'),
(549, '/yubrajpokharel.com/samples/newsportal//', '11:10:02', '2015-09-25'),
(550, '/yubrajpokharel.com/samples/newsportal//', '11:10:19', '2015-09-25'),
(551, '/yubrajpokharel.com/samples/newsportal//', '11:10:21', '2015-09-25'),
(552, '/yubrajpokharel.com/samples/newsportal//', '11:11:23', '2015-09-25'),
(553, '/yubrajpokharel.com/samples/newsportal//', '11:11:24', '2015-09-25'),
(554, '/yubrajpokharel.com/samples/newsportal//', '11:12:01', '2015-09-25'),
(555, '/yubrajpokharel.com/samples/newsportal//', '11:12:02', '2015-09-25'),
(556, '/yubrajpokharel.com/samples/newsportal//', '11:13:20', '2015-09-25'),
(557, '/yubrajpokharel.com/samples/newsportal//', '11:13:22', '2015-09-25'),
(558, '/yubrajpokharel.com/samples/newsportal//', '11:14:04', '2015-09-25'),
(559, '/yubrajpokharel.com/samples/newsportal//', '11:14:05', '2015-09-25'),
(560, '/yubrajpokharel.com/samples/newsportal//', '11:14:25', '2015-09-25'),
(561, '/yubrajpokharel.com/samples/newsportal//', '11:14:27', '2015-09-25'),
(562, '/yubrajpokharel.com/samples/newsportal//', '10:15:44', '2015-09-25'),
(563, '/yubrajpokharel.com/samples/newsportal//', '10:15:46', '2015-09-25'),
(564, '/yubrajpokharel.com/samples/newsportal//newsdetail/37', '10:25:02', '2015-09-25'),
(565, '/yubrajpokharel.com/samples/newsportal//newsdetail/37', '10:26:27', '2015-09-25'),
(566, '/yubrajpokharel.com/samples/newsportal//category/4', '10:26:45', '2015-09-25'),
(567, '/yubrajpokharel.com/samples/newsportal//newsdetail/33', '10:26:53', '2015-09-25'),
(568, '/yubrajpokharel.com/samples/newsportal//', '10:27:17', '2015-09-25'),
(569, '/yubrajpokharel.com/samples/newsportal//', '10:27:19', '2015-09-25'),
(570, '/yubrajpokharel.com/samples/newsportal//', '04:45:57', '2015-09-26'),
(571, '/yubrajpokharel.com/samples/newsportal//', '04:46:04', '2015-09-26'),
(572, '/yubrajpokharel.com/samples/newsportal//', '04:46:06', '2015-09-26'),
(573, '/yubrajpokharel.com/samples/newsportal//', '04:48:01', '2015-09-26'),
(574, '/yubrajpokharel.com/samples/newsportal//', '04:48:02', '2015-09-26'),
(575, '/yubrajpokharel.com/samples/newsportal//', '04:48:21', '2015-09-26'),
(576, '/yubrajpokharel.com/samples/newsportal//', '04:48:22', '2015-09-26'),
(577, '/yubrajpokharel.com/samples/newsportal//', '04:48:48', '2015-09-26'),
(578, '/yubrajpokharel.com/samples/newsportal//', '04:48:49', '2015-09-26'),
(579, '/yubrajpokharel.com/samples/newsportal//', '04:49:49', '2015-09-26'),
(580, '/yubrajpokharel.com/samples/newsportal//', '04:49:50', '2015-09-26'),
(581, '/yubrajpokharel.com/samples/newsportal//', '04:51:00', '2015-09-26'),
(582, '/yubrajpokharel.com/samples/newsportal//', '04:51:01', '2015-09-26'),
(583, '/yubrajpokharel.com/samples/newsportal//', '03:39:01', '2015-10-02'),
(584, '/yubrajpokharel.com/samples/newsportal//', '04:06:20', '2015-10-02'),
(585, '/yubrajpokharel.com/samples/newsportal//', '04:06:43', '2015-10-02'),
(586, '/yubrajpokharel.com/samples/newsportal//', '09:46:56', '2015-10-03'),
(587, '/yubrajpokharel.com/samples/newsportal//', '09:47:04', '2015-10-03'),
(588, '/yubrajpokharel.com/samples/newsportal//', '09:47:09', '2015-10-03'),
(589, '/yubrajpokharel.com/samples/newsportal//', '09:47:48', '2015-10-03'),
(590, '/yubrajpokharel.com/samples/newsportal//', '09:47:49', '2015-10-03'),
(591, '/yubrajpokharel.com/samples/newsportal//', '09:48:14', '2015-10-03'),
(592, '/yubrajpokharel.com/samples/newsportal//', '09:48:15', '2015-10-03'),
(593, '/yubrajpokharel.com/samples/newsportal//', '09:48:35', '2015-10-03'),
(594, '/yubrajpokharel.com/samples/newsportal//', '09:48:36', '2015-10-03'),
(595, '/yubrajpokharel.com/samples/newsportal//', '09:50:29', '2015-10-03'),
(596, '/yubrajpokharel.com/samples/newsportal//', '09:50:29', '2015-10-03'),
(597, '/yubrajpokharel.com/samples/newsportal//', '09:50:55', '2015-10-03'),
(598, '/yubrajpokharel.com/samples/newsportal//', '09:50:56', '2015-10-03'),
(599, '/yubrajpokharel.com/samples/newsportal//', '09:51:26', '2015-10-03'),
(600, '/yubrajpokharel.com/samples/newsportal//', '09:51:27', '2015-10-03'),
(601, '/yubrajpokharel.com/samples/newsportal//', '09:51:48', '2015-10-03'),
(602, '/yubrajpokharel.com/samples/newsportal//', '09:51:50', '2015-10-03'),
(603, '/yubrajpokharel.com/samples/newsportal//', '09:52:32', '2015-10-03'),
(604, '/yubrajpokharel.com/samples/newsportal//', '09:52:40', '2015-10-03'),
(605, '/yubrajpokharel.com/samples/newsportal//', '09:52:54', '2015-10-03'),
(606, '/yubrajpokharel.com/samples/newsportal//', '09:52:56', '2015-10-03'),
(607, '/yubrajpokharel.com/samples/newsportal//', '09:53:17', '2015-10-03'),
(608, '/yubrajpokharel.com/samples/newsportal//', '09:53:18', '2015-10-03'),
(609, '/yubrajpokharel.com/samples/newsportal//', '09:53:43', '2015-10-03'),
(610, '/yubrajpokharel.com/samples/newsportal//', '09:53:44', '2015-10-03'),
(611, '/yubrajpokharel.com/samples/newsportal//', '09:54:12', '2015-10-03'),
(612, '/yubrajpokharel.com/samples/newsportal//', '09:54:13', '2015-10-03'),
(613, '/yubrajpokharel.com/samples/newsportal//', '09:54:21', '2015-10-03'),
(614, '/yubrajpokharel.com/samples/newsportal//', '09:54:22', '2015-10-03'),
(615, '/yubrajpokharel.com/samples/newsportal//category/15', '09:54:36', '2015-10-03'),
(616, '/yubrajpokharel.com/samples/newsportal//category/15', '09:55:28', '2015-10-03'),
(617, '/yubrajpokharel.com/samples/newsportal//category/4', '09:55:31', '2015-10-03'),
(618, '/yubrajpokharel.com/samples/newsportal//', '09:55:35', '2015-10-03'),
(619, '/yubrajpokharel.com/samples/newsportal//', '09:58:12', '2015-10-03'),
(620, '/yubrajpokharel.com/samples/newsportal//', '09:58:13', '2015-10-03'),
(621, '/yubrajpokharel.com/samples/newsportal//category/15', '09:58:20', '2015-10-03'),
(622, '/yubrajpokharel.com/samples/newsportal//category/4', '09:58:23', '2015-10-03'),
(623, '/yubrajpokharel.com/samples/newsportal//', '09:58:26', '2015-10-03'),
(624, '/yubrajpokharel.com/samples/newsportal//', '09:58:27', '2015-10-03'),
(625, '/yubrajpokharel.com/samples/newsportal//', '05:19:58', '2015-10-04'),
(626, '/yubrajpokharel.com/samples/newsportal//', '05:20:26', '2015-10-04'),
(627, '/yubrajpokharel.com/samples/newsportal//', '05:20:27', '2015-10-04'),
(628, '/yubrajpokharel.com/samples/newsportal//', '05:20:34', '2015-10-04'),
(629, '/yubrajpokharel.com/samples/newsportal//', '05:20:35', '2015-10-04'),
(630, '/yubrajpokharel.com/samples/newsportal//', '01:21:13', '2015-10-04'),
(631, '/yubrajpokharel.com/samples/newsportal//', '01:21:14', '2015-10-04'),
(632, '/yubrajpokharel.com/samples/newsportal//', '01:21:21', '2015-10-04'),
(633, '/yubrajpokharel.com/samples/newsportal//', '01:27:20', '2015-10-04'),
(634, '/yubrajpokharel.com/samples/newsportal//', '01:27:21', '2015-10-04'),
(635, '/yubrajpokharel.com/samples/newsportal//', '01:27:47', '2015-10-04'),
(636, '/yubrajpokharel.com/samples/newsportal//', '01:27:48', '2015-10-04'),
(637, '/yubrajpokharel.com/samples/newsportal//', '01:28:04', '2015-10-04'),
(638, '/yubrajpokharel.com/samples/newsportal//', '01:28:05', '2015-10-04'),
(639, '/yubrajpokharel.com/samples/newsportal//', '01:28:19', '2015-10-04'),
(640, '/yubrajpokharel.com/samples/newsportal//', '01:28:20', '2015-10-04'),
(641, '/yubrajpokharel.com/samples/newsportal//', '01:29:02', '2015-10-04'),
(642, '/yubrajpokharel.com/samples/newsportal//', '01:29:03', '2015-10-04'),
(643, '/yubrajpokharel.com/samples/newsportal//', '01:29:20', '2015-10-04'),
(644, '/yubrajpokharel.com/samples/newsportal//', '01:29:21', '2015-10-04'),
(645, '/yubrajpokharel.com/samples/newsportal//', '02:12:16', '2015-10-04'),
(646, '/yubrajpokharel.com/samples/newsportal//', '02:12:17', '2015-10-04'),
(647, '/yubrajpokharel.com/samples/newsportal//admin', '02:12:20', '2015-10-04'),
(648, '/yubrajpokharel.com/samples/newsportal//admin', '02:12:22', '2015-10-04'),
(649, '/yubrajpokharel.com/samples/newsportal//', '02:18:49', '2015-10-04'),
(650, '/yubrajpokharel.com/samples/newsportal//', '02:18:51', '2015-10-04'),
(651, '/yubrajpokharel.com/samples/newsportal//category/15', '02:18:57', '2015-10-04'),
(652, '/yubrajpokharel.com/samples/newsportal//category/3', '02:19:02', '2015-10-04'),
(653, '/yubrajpokharel.com/samples/newsportal//category/4', '02:19:17', '2015-10-04'),
(654, '/yubrajpokharel.com/samples/newsportal//category/5', '02:19:21', '2015-10-04'),
(655, '/yubrajpokharel.com/samples/newsportal//category/6', '02:19:25', '2015-10-04'),
(656, '/yubrajpokharel.com/samples/newsportal//category/7', '02:19:28', '2015-10-04'),
(657, '/yubrajpokharel.com/samples/newsportal//category/8', '02:19:32', '2015-10-04'),
(658, '/yubrajpokharel.com/samples/newsportal//category/9', '02:19:38', '2015-10-04'),
(659, '/yubrajpokharel.com/samples/newsportal//category/10', '02:19:43', '2015-10-04'),
(660, '/yubrajpokharel.com/samples/newsportal//category/11', '02:19:47', '2015-10-04'),
(661, '/yubrajpokharel.com/samples/newsportal//category/12', '02:19:52', '2015-10-04'),
(662, '/yubrajpokharel.com/samples/newsportal//category/13', '02:19:58', '2015-10-04'),
(663, '/yubrajpokharel.com/samples/newsportal//category/14', '02:20:02', '2015-10-04'),
(664, '/yubrajpokharel.com/samples/newsportal//category/15', '02:20:06', '2015-10-04'),
(665, '/yubrajpokharel.com/samples/newsportal//category/16', '02:20:11', '2015-10-04'),
(666, '/yubrajpokharel.com/samples/newsportal//category/17', '02:20:15', '2015-10-04'),
(667, '/yubrajpokharel.com/samples/newsportal//category/3', '02:22:09', '2015-10-04'),
(668, '/yubrajpokharel.com/samples/newsportal//', '02:22:35', '2015-10-04'),
(669, '/yubrajpokharel.com/samples/newsportal//', '02:32:14', '2015-10-04'),
(670, '/yubrajpokharel.com/samples/newsportal//', '02:32:15', '2015-10-04'),
(671, '/yubrajpokharel.com/samples/newsportal//category/14', '02:32:29', '2015-10-04'),
(672, '/yubrajpokharel.com/samples/newsportal//newsdetail/55', '02:32:36', '2015-10-04'),
(673, '/yubrajpokharel.com/samples/newsportal//category/4', '02:32:43', '2015-10-04'),
(674, '/yubrajpokharel.com/samples/newsportal//category/5', '02:32:46', '2015-10-04'),
(675, '/yubrajpokharel.com/samples/newsportal//category/16', '02:32:53', '2015-10-04'),
(676, '/yubrajpokharel.com/samples/newsportal//category/13', '02:32:57', '2015-10-04'),
(677, '/yubrajpokharel.com/samples/newsportal//category/7', '02:33:00', '2015-10-04'),
(678, '/yubrajpokharel.com/samples/newsportal//blogs', '02:33:02', '2015-10-04'),
(679, '/yubrajpokharel.com/samples/newsportal//blogdetail/12', '02:33:08', '2015-10-04'),
(680, '/yubrajpokharel.com/samples/newsportal//newsdetail/54', '02:33:30', '2015-10-04'),
(681, '/yubrajpokharel.com/samples/newsportal//newsdetail/53', '02:33:36', '2015-10-04'),
(682, '/yubrajpokharel.com/samples/newsportal//newsdetail/55', '02:33:45', '2015-10-04'),
(683, '/test/', '06:09:42', '2015-10-05'),
(684, '/test/', '06:19:35', '2015-10-05'),
(685, '/test/', '06:19:36', '2015-10-05'),
(686, '/test/images/1', '06:34:05', '2015-10-05'),
(687, '/test/images/inceptioncms.appcache', '06:34:06', '2015-10-05'),
(688, '/test/images/assets/js/jquery.flexslider.js', '06:34:07', '2015-10-05'),
(689, '/test/images/1', '06:34:08', '2015-10-05'),
(690, '/test/images/inceptioncms.appcache', '06:34:11', '2015-10-05'),
(691, '/test/images/inceptioncms.appcache', '06:34:17', '2015-10-05'),
(692, '/test/images/1', '06:34:46', '2015-10-05'),
(693, '/test/', '06:35:01', '2015-10-05'),
(694, '/test/newsdetail/50', '06:35:08', '2015-10-05'),
(695, '/test/newsdetail/50', '06:35:10', '2015-10-05'),
(696, '/test/newsdetail/50', '06:35:18', '2015-10-05'),
(697, '/test/', '06:36:02', '2015-10-05'),
(698, '/test/', '06:36:10', '2015-10-05'),
(699, '/test/newsdetail/54', '06:36:13', '2015-10-05'),
(700, '/test/newsdetail/54', '06:36:16', '2015-10-05'),
(701, '/test/newsdetail/54', '06:36:22', '2015-10-05'),
(702, '/test/category/3', '06:38:59', '2015-10-05'),
(703, '/test/newsdetail/51', '06:39:51', '2015-10-05'),
(704, '/test/newsdetail/51', '06:39:53', '2015-10-05'),
(705, '/test/', '06:40:16', '2015-10-05'),
(706, '/test/', '06:40:18', '2015-10-05'),
(707, '/test/category/7', '06:40:55', '2015-10-05'),
(708, '/test/', '06:46:54', '2015-10-05'),
(709, '/test/', '07:02:51', '2015-10-05'),
(710, '/test/', '07:02:53', '2015-10-05'),
(711, '/test/', '09:30:16', '2015-10-05'),
(712, '/test/', '09:30:17', '2015-10-05'),
(713, '/test/', '09:53:22', '2015-10-05'),
(714, '/test/', '10:18:15', '2015-10-05'),
(715, '/test/', '10:34:54', '2015-10-05'),
(716, '/test/category/19', '10:35:43', '2015-10-05'),
(717, '/test/', '02:08:59', '2015-10-06'),
(718, '/test/', '07:21:21', '2015-10-06'),
(719, '/test/', '07:21:30', '2015-10-06'),
(720, '/test/', '02:03:24', '2015-10-06'),
(721, '/test/newsdetail/24', '07:38:56', '2015-10-07'),
(722, '/test/', '07:48:40', '2015-10-07'),
(723, '/test/category/12', '08:05:08', '2015-10-07'),
(724, '/test/newsdetail/34', '10:18:10', '2015-10-07'),
(725, '/test/newsdetail/34', '10:18:12', '2015-10-07'),
(726, '/test/advertisement', '10:38:37', '2015-10-07'),
(727, '/test/newsdetail/48', '10:51:42', '2015-10-07'),
(728, '/test/newsdetail/48', '10:52:13', '2015-10-07'),
(729, '/test/newsdetail/31', '11:04:57', '2015-10-07'),
(730, '/test/newsdetail/31', '11:05:21', '2015-10-07'),
(731, '/test/newsdetail/30', '11:17:02', '2015-10-07'),
(732, '/test/newsdetail/30', '11:17:07', '2015-10-07'),
(733, '/test/newsdetail/28', '11:29:25', '2015-10-07'),
(734, '/test/category/4', '11:41:07', '2015-10-07'),
(735, '/test/newsdetail/36', '11:51:43', '2015-10-07'),
(736, '/test/newsdetail/36', '11:51:45', '2015-10-07'),
(737, '/test/', '01:54:56', '2015-10-08'),
(738, '/test/', '02:22:22', '2015-10-08'),
(739, '/test/images', '08:14:33', '2015-10-08'),
(740, '/test/newsdetail/52', '08:15:10', '2015-10-08'),
(741, '/test/images/2', '08:20:02', '2015-10-08'),
(742, '/test/newsdetail/49', '09:03:26', '2015-10-08'),
(743, '/test/images/assets/js/jquery.flexslider.js', '10:11:16', '2015-10-08'),
(744, '/test/videos/2', '11:00:11', '2015-10-08'),
(745, '/test/about-green-paper', '01:04:16', '2015-10-09'),
(746, '/test/', '01:21:40', '2015-10-09'),
(747, '/test/', '01:51:56', '2015-10-09'),
(748, '/test/', '05:24:15', '2015-10-09'),
(749, '/test/', '05:24:22', '2015-10-09'),
(750, '/', '05:27:04', '2015-10-09'),
(751, '/', '05:27:13', '2015-10-09'),
(752, '/test/', '05:33:17', '2015-10-09'),
(753, '/test/', '05:33:18', '2015-10-09'),
(754, '/test/', '05:33:46', '2015-10-09'),
(755, '/test/videos/2', '04:09:25', '2015-10-09'),
(756, '/test/', '05:35:29', '2015-10-09'),
(757, '/test/images', '05:54:17', '2015-10-09'),
(758, '/test/videos/assets/js/jquery.flexslider.js', '06:01:13', '2015-10-09'),
(759, '/test/videos/assets/js/jquery.flexslider.js', '06:01:27', '2015-10-09'),
(760, '/test/newsdetail/49', '07:11:47', '2015-10-09'),
(761, '/test/about-green-paper', '04:12:13', '2015-10-10'),
(762, '/test/category/17', '10:11:16', '2015-10-10'),
(763, '/test/newsdetail/36', '10:15:48', '2015-10-10'),
(764, '/test/newsdetail/37', '10:18:38', '2015-10-10'),
(765, '/test/category/19', '10:19:05', '2015-10-10'),
(766, '/test/videos', '10:20:04', '2015-10-10'),
(767, '/test/category/14', '10:20:56', '2015-10-10'),
(768, '/test/', '10:21:15', '2015-10-10'),
(769, '/test/category/8', '10:22:42', '2015-10-10'),
(770, '/test/newsdetail/31', '10:37:46', '2015-10-10'),
(771, '/test/newsdetail/53', '10:38:04', '2015-10-10'),
(772, '/test/newsdetail/55', '10:38:32', '2015-10-10'),
(773, '/test/newsdetail/38', '11:12:23', '2015-10-10'),
(774, '/test/newsdetail/43', '11:46:38', '2015-10-10'),
(775, '/test/newsdetail/50', '12:14:51', '2015-10-10'),
(776, '/test/blogs', '02:39:17', '2015-10-10'),
(777, '/test/newsdetail/35', '02:40:19', '2015-10-10'),
(778, '/test/category/11', '09:15:10', '2015-10-10'),
(779, '/test/newsdetail/48', '09:15:31', '2015-10-10'),
(780, '/test/newsdetail/46', '09:15:54', '2015-10-10'),
(781, '/test/newsdetail/45', '09:16:09', '2015-10-10'),
(782, '/test/newsdetail/25', '09:16:20', '2015-10-10'),
(783, '/test/category/6', '09:16:33', '2015-10-10'),
(784, '/test/', '11:19:54', '2015-10-10'),
(785, '/test/blogdetail/11', '11:49:23', '2015-10-10'),
(786, '/test/newsdetail/43', '01:00:31', '2015-10-11'),
(787, '/test/category/8', '01:13:07', '2015-10-11'),
(788, '/test/category/19', '01:26:24', '2015-10-11'),
(789, '/test/newsdetail/38', '01:27:51', '2015-10-11'),
(790, '/test/category/17', '01:31:48', '2015-10-11'),
(791, '/test/newsdetail/53', '01:32:31', '2015-10-11'),
(792, '/test/newsdetail/31', '01:36:08', '2015-10-11'),
(793, '/test/newsdetail/50', '01:36:29', '2015-10-11'),
(794, '/test/', '01:37:04', '2015-10-11'),
(795, '/test/images/2', '01:46:10', '2015-10-11'),
(796, '/test/blogs', '01:48:31', '2015-10-11'),
(797, '/test/images/assets/js/jquery.flexslider.js', '02:30:36', '2015-10-11'),
(798, '/test/category/12', '09:02:43', '2015-10-11'),
(799, '/test/category/4', '09:03:29', '2015-10-11'),
(800, '/test/newsdetail/32', '09:19:28', '2015-10-11'),
(801, '/test/category/10', '11:52:52', '2015-10-11'),
(802, '/test/contact-us', '12:44:01', '2015-10-11'),
(803, '/test/newsdetail/46', '02:09:56', '2015-10-11'),
(804, '/test/newsdetail/48', '02:10:36', '2015-10-11'),
(805, '/test/newsdetail/25', '02:15:22', '2015-10-11'),
(806, '/test/category/11', '02:25:32', '2015-10-11'),
(807, '/test/blogdetail/11', '02:28:34', '2015-10-11'),
(808, '/test/category/6', '02:28:45', '2015-10-11'),
(809, '/test/newsdetail/45', '02:30:34', '2015-10-11'),
(810, '/test/newsdetail/37', '02:47:58', '2015-10-11'),
(811, '/test/category/7', '04:59:05', '2015-10-11'),
(812, '/test/category/16', '06:27:46', '2015-10-11'),
(813, '/test/category/15', '06:28:13', '2015-10-11'),
(814, '/test/category/13', '07:44:40', '2015-10-11'),
(815, '/test/category/4', '01:52:41', '2015-10-12'),
(816, '/test/category/10', '02:04:28', '2015-10-12'),
(817, '/test/category/12', '02:26:39', '2015-10-12'),
(818, '/test/blogdetail/10', '02:59:27', '2015-10-12'),
(819, '/test/category/13', '02:11:05', '2015-10-12'),
(820, '/test/category/7', '02:29:10', '2015-10-12'),
(821, '/test/category/16', '02:34:12', '2015-10-12'),
(822, '/test/blogdetail/10', '02:08:13', '2015-10-13'),
(823, '/test/images/1', '05:19:39', '2015-10-14'),
(824, '/test/newsdetail/47', '11:29:29', '2015-10-14'),
(825, '/test/category/3', '01:52:17', '2015-10-14'),
(826, '/test/newsdetail/28', '11:26:57', '2015-10-16'),
(827, '/test/newsdetail/27', '02:40:58', '2015-10-16'),
(828, '/test/category/9', '03:31:37', '2015-10-16'),
(829, '/test/newsdetail/22', '05:06:15', '2015-10-16'),
(830, '/test/newsdetail/44', '05:08:15', '2015-10-16'),
(831, '/test/newsdetail/54', '08:54:15', '2015-10-16'),
(832, '/test/newsdetail/29', '11:06:20', '2015-10-16'),
(833, '/test/newsdetail/28', '12:49:06', '2015-10-17'),
(834, '/test/newsdetail/56', '12:55:48', '2015-10-17'),
(835, '/test/newsdetail/27', '12:52:06', '2015-10-17'),
(836, '/test/newsdetail/44', '12:58:56', '2015-10-17'),
(837, '/test/category/9', '12:59:55', '2015-10-17'),
(838, '/test/newsdetail/22', '01:01:34', '2015-10-17'),
(839, '/test/newsdetail/29', '01:06:26', '2015-10-17'),
(840, '/test/newsdetail/26', '02:10:55', '2015-10-17'),
(841, '/test/category/5', '05:36:07', '2015-10-17');
INSERT INTO `page_track` (`id`, `page`, `time`, `date`) VALUES
(842, '/test/newsdetail/24', '05:40:59', '2015-10-17'),
(843, '/test/category/20', '10:03:51', '2015-10-17'),
(844, '/test/newsdetail/23', '05:35:42', '2015-10-18'),
(845, '/test/newsdetail/24', '12:21:18', '2015-10-18'),
(846, '/test/category/5', '12:41:47', '2015-10-18'),
(847, '/test/category/20', '12:42:30', '2015-10-18'),
(848, '/test/newsdetail/23', '01:09:50', '2015-10-19'),
(849, '/test/newsdetail/26', '02:56:29', '2015-10-20'),
(850, '/test/newsdetail/56', '03:03:58', '2015-10-20'),
(851, '/test/newsdetail/56', '10:53:17', '2015-10-26'),
(852, '/test/category/8', '10:57:42', '2015-10-26'),
(853, '/test/', '10:58:58', '2015-10-26'),
(854, '/test/category/17', '10:59:04', '2015-10-26'),
(855, '/test/category/19', '10:59:18', '2015-10-26'),
(856, '/test/category/14', '11:00:00', '2015-10-26'),
(857, '/test/newsdetail/37', '11:01:24', '2015-10-26'),
(858, '/test/newsdetail/44', '11:02:14', '2015-10-26'),
(859, '/test/newsdetail/36', '11:03:45', '2015-10-26'),
(860, '/test/newsdetail/42', '11:04:35', '2015-10-26'),
(861, '/test/newsdetail/54', '12:43:57', '2015-10-27'),
(862, '/test/newsdetail/56', '08:50:33', '2015-11-02'),
(863, '/test/newsdetail/54', '01:08:58', '2015-11-03'),
(864, '/test/', '04:34:02', '2015-11-03'),
(865, '/test/category/4', '12:31:49', '2015-11-03'),
(866, '/test/category/5', '12:32:19', '2015-11-03'),
(867, '/test/newsdetail/48', '12:43:59', '2015-11-03'),
(868, '/test/newsdetail/35', '12:45:09', '2015-11-03'),
(869, '/test/category/12', '07:22:34', '2015-11-03'),
(870, '/test/category/11', '07:22:41', '2015-11-03'),
(871, '/test/newsdetail/55', '07:41:06', '2015-11-03'),
(872, '/test/newsdetail/24', '08:53:54', '2015-11-03'),
(873, '/test/newsdetail/23', '08:54:18', '2015-11-03'),
(874, '/test/newsdetail/46', '08:58:23', '2015-11-03'),
(875, '/test/newsdetail/25', '08:59:11', '2015-11-03'),
(876, '/test/newsdetail/22', '08:59:54', '2015-11-03'),
(877, '/test/newsdetail/32', '09:03:06', '2015-11-03'),
(878, '/test/newsdetail/31', '09:06:11', '2015-11-03'),
(879, '/test/category/9', '03:37:08', '2015-11-04'),
(880, '/test/category/3', '03:45:32', '2015-11-04'),
(881, '/test/newsdetail/26', '03:42:30', '2015-11-04'),
(882, '/test/newsdetail/28', '03:42:33', '2015-11-04'),
(883, '/test/newsdetail/27', '03:47:17', '2015-11-04'),
(884, '/test/newsdetail/51', '03:47:29', '2015-11-04'),
(885, '/test/newsdetail/29', '03:47:43', '2015-11-04'),
(886, '/test/newsdetail/51', '06:59:16', '2015-11-05'),
(887, '/test/newsdetail/43', '05:53:54', '2015-11-06'),
(888, '/test/videos/assets/js/jquery.flexslider.js', '07:56:18', '2015-11-08'),
(889, '/test/images', '03:41:09', '2015-11-12'),
(890, '/test/images/2', '03:43:46', '2015-11-12'),
(891, '/test/images/assets/js/jquery.flexslider.js', '03:44:07', '2015-11-12'),
(892, '/test/images/1', '03:44:28', '2015-11-12'),
(893, '/test/category/9', '03:45:10', '2015-11-12'),
(894, '/test/', '01:58:41', '2015-11-12'),
(895, '/test/category/6', '02:36:11', '2015-11-12'),
(896, '/test/category/7', '02:38:50', '2015-11-12'),
(897, '/test/category/8', '02:45:00', '2015-11-12'),
(898, '/test/category/3', '02:56:32', '2015-11-12'),
(899, '/test/category/17', '02:58:10', '2015-11-12'),
(900, '/test/category/13', '03:03:28', '2015-11-12'),
(901, '/test/category/19', '03:05:08', '2015-11-12'),
(902, '/test/category/10', '03:08:09', '2015-11-12'),
(903, '/test/category/15', '03:18:18', '2015-11-12'),
(904, '/test/category/14', '03:18:28', '2015-11-12'),
(905, '/test/category/20', '03:24:48', '2015-11-12'),
(906, '/test/category/16', '03:41:43', '2015-11-12'),
(907, '/test/newsdetail/50', '03:52:37', '2015-11-12'),
(908, '/test/newsdetail/47', '03:56:50', '2015-11-12'),
(909, '/test/newsdetail/48', '04:06:11', '2015-11-12'),
(910, '/test/newsdetail/37', '04:10:19', '2015-11-12'),
(911, '/test/newsdetail/35', '04:14:46', '2015-11-12'),
(912, '/test/newsdetail/49', '01:05:08', '2015-11-13'),
(913, '/test/videos/2', '01:45:22', '2015-11-13'),
(914, '/test/newsdetail/44', '01:46:57', '2015-11-13'),
(915, '/test/newsdetail/52', '01:50:10', '2015-11-13'),
(916, '/test/newsdetail/33', '01:51:29', '2015-11-13'),
(917, '/test/newsdetail/26', '01:51:45', '2015-11-13'),
(918, '/test/newsdetail/40', '01:52:25', '2015-11-13'),
(919, '/test/newsdetail/53', '01:52:41', '2015-11-13'),
(920, '/test/newsdetail/28', '01:52:57', '2015-11-13'),
(921, '/test/newsdetail/30', '01:53:21', '2015-11-13'),
(922, '/test/newsdetail/36', '01:54:09', '2015-11-13'),
(923, '/test/newsdetail/42', '02:00:09', '2015-11-13'),
(924, '/test/newsdetail/27', '02:01:37', '2015-11-13'),
(925, '/test/newsdetail/41', '02:05:31', '2015-11-13'),
(926, '/test/newsdetail/39', '02:06:09', '2015-11-13'),
(927, '/test/newsdetail/51', '02:13:14', '2015-11-13'),
(928, '/test/newsdetail/38', '02:13:41', '2015-11-13'),
(929, '/test/newsdetail/34', '02:13:53', '2015-11-13'),
(930, '/test/', '02:13:14', '2015-11-13'),
(931, '/test/', '08:05:19', '2015-11-16'),
(932, '/test/blogdetail/11', '04:10:47', '2015-11-16'),
(933, '/test/blogdetail/10', '09:10:45', '2015-11-16'),
(934, '/test/', '05:10:31', '2015-11-21'),
(935, '/test/', '07:08:29', '2015-11-21'),
(936, '/test/', '01:53:00', '2015-11-25'),
(937, '/test/newsdetail/42', '12:57:37', '2015-11-25'),
(938, '/test/newsdetail/34', '12:57:37', '2015-11-25'),
(939, '/test/newsdetail/33', '12:57:38', '2015-11-25'),
(940, '/test/newsdetail/28', '12:57:38', '2015-11-25'),
(941, '/test/category/8', '12:57:39', '2015-11-25'),
(942, '/test/newsdetail/23', '12:57:39', '2015-11-25'),
(943, '/test/category/4', '12:57:39', '2015-11-25'),
(944, '/test/newsdetail/24', '12:57:39', '2015-11-25'),
(945, '/test/category/3', '12:57:40', '2015-11-25'),
(946, '/test/category/15', '12:57:40', '2015-11-25'),
(947, '/test/category/20', '12:57:41', '2015-11-25'),
(948, '/test/category/19', '12:57:42', '2015-11-25'),
(949, '/test/category/12', '12:57:43', '2015-11-25'),
(950, '/test/newsdetail/55', '12:57:43', '2015-11-25'),
(951, '/test/newsdetail/52', '12:57:43', '2015-11-25'),
(952, '/test/newsdetail/49', '12:57:44', '2015-11-25'),
(953, '/test/newsdetail/41', '12:58:09', '2015-11-25'),
(954, '/test/newsdetail/46', '12:58:09', '2015-11-25'),
(955, '/test/newsdetail/27', '12:58:09', '2015-11-25'),
(956, '/test/category/7', '12:58:10', '2015-11-25'),
(957, '/test/category/16', '12:58:10', '2015-11-25'),
(958, '/test/category/11', '12:58:10', '2015-11-25'),
(959, '/test/newsdetail/51', '12:58:10', '2015-11-25'),
(960, '/test/newsdetail/56', '12:58:11', '2015-11-25'),
(961, '/test/newsdetail/37', '12:58:11', '2015-11-25'),
(962, '/test/newsdetail/44', '12:59:24', '2015-11-25'),
(963, '/test/newsdetail/32', '12:59:24', '2015-11-25'),
(964, '/test/newsdetail/29', '12:59:25', '2015-11-25'),
(965, '/test/category/9', '12:59:25', '2015-11-25'),
(966, '/test/newsdetail/22', '12:59:26', '2015-11-25'),
(967, '/test/category/5', '12:59:26', '2015-11-25'),
(968, '/test/newsdetail/25', '12:59:26', '2015-11-25'),
(969, '/test/category/13', '12:59:27', '2015-11-25'),
(970, '/test/category/14', '12:59:27', '2015-11-25'),
(971, '/test/newsdetail/54', '12:59:27', '2015-11-25'),
(972, '/test/newsdetail/53', '12:59:28', '2015-11-25'),
(973, '/test/newsdetail/43', '12:59:28', '2015-11-25'),
(974, '/test/newsdetail/48', '12:59:28', '2015-11-25'),
(975, '/test/newsdetail/35', '12:59:28', '2015-11-25'),
(976, '/test/newsdetail/39', '12:59:29', '2015-11-25'),
(977, '/test/newsdetail/31', '01:06:51', '2015-11-25'),
(978, '/test/category/6', '01:06:51', '2015-11-25'),
(979, '/test/category/17', '01:06:52', '2015-11-25'),
(980, '/test/newsdetail/26', '01:06:52', '2015-11-25'),
(981, '/test/category/10', '01:06:52', '2015-11-25'),
(982, '/test/newsdetail/50', '01:06:52', '2015-11-25'),
(983, '/test/newsdetail/47', '01:06:53', '2015-11-25'),
(984, '/test/newsdetail/36', '01:06:53', '2015-11-25'),
(985, '/test/newsdetail/40', '01:06:53', '2015-11-25'),
(986, '/test/', '01:10:11', '2015-11-26'),
(987, '/test/', '01:10:13', '2015-11-26'),
(988, '/test/newsdetail/44', '10:00:16', '2015-11-27'),
(989, '/test/newsdetail/32', '10:00:16', '2015-11-27'),
(990, '/test/newsdetail/29', '10:00:17', '2015-11-27'),
(991, '/test/category/9', '10:00:17', '2015-11-27'),
(992, '/test/newsdetail/22', '10:00:17', '2015-11-27'),
(993, '/test/category/5', '10:00:18', '2015-11-27'),
(994, '/test/newsdetail/25', '10:00:18', '2015-11-27'),
(995, '/test/category/13', '10:00:19', '2015-11-27'),
(996, '/test/category/14', '10:00:19', '2015-11-27'),
(997, '/test/newsdetail/54', '10:00:20', '2015-11-27'),
(998, '/test/newsdetail/53', '10:00:20', '2015-11-27'),
(999, '/test/newsdetail/43', '10:00:20', '2015-11-27'),
(1000, '/test/newsdetail/48', '10:00:21', '2015-11-27'),
(1001, '/test/newsdetail/35', '10:00:21', '2015-11-27'),
(1002, '/test/newsdetail/39', '10:00:21', '2015-11-27'),
(1003, '/test/newsdetail/42', '10:00:43', '2015-11-27'),
(1004, '/test/newsdetail/34', '10:00:43', '2015-11-27'),
(1005, '/test/newsdetail/33', '10:00:43', '2015-11-27'),
(1006, '/test/newsdetail/28', '10:00:44', '2015-11-27'),
(1007, '/test/category/8', '10:00:44', '2015-11-27'),
(1008, '/test/newsdetail/23', '10:00:44', '2015-11-27'),
(1009, '/test/category/4', '10:00:44', '2015-11-27'),
(1010, '/test/newsdetail/24', '10:00:45', '2015-11-27'),
(1011, '/test/category/3', '10:00:45', '2015-11-27'),
(1012, '/test/category/15', '10:00:45', '2015-11-27'),
(1013, '/test/category/20', '10:00:46', '2015-11-27'),
(1014, '/test/category/19', '10:00:46', '2015-11-27'),
(1015, '/test/category/12', '10:00:46', '2015-11-27'),
(1016, '/test/newsdetail/55', '10:00:47', '2015-11-27'),
(1017, '/test/newsdetail/52', '10:00:47', '2015-11-27'),
(1018, '/test/newsdetail/49', '10:00:47', '2015-11-27'),
(1019, '/test/newsdetail/31', '11:50:43', '2015-11-27'),
(1020, '/test/category/6', '11:50:43', '2015-11-27'),
(1021, '/test/category/17', '11:50:44', '2015-11-27'),
(1022, '/test/newsdetail/26', '11:50:44', '2015-11-27'),
(1023, '/test/category/10', '11:50:44', '2015-11-27'),
(1024, '/test/newsdetail/50', '11:50:45', '2015-11-27'),
(1025, '/test/newsdetail/47', '11:50:45', '2015-11-27'),
(1026, '/test/newsdetail/36', '11:50:45', '2015-11-27'),
(1027, '/test/newsdetail/40', '11:50:46', '2015-11-27'),
(1028, '/test/category/6', '03:12:32', '2015-11-28'),
(1029, '/test/newsdetail/42', '04:42:40', '2015-11-30'),
(1030, '/test/newsdetail/34', '04:42:41', '2015-11-30'),
(1031, '/test/newsdetail/33', '04:42:42', '2015-11-30'),
(1032, '/test/newsdetail/28', '04:42:43', '2015-11-30'),
(1033, '/test/category/8', '04:42:44', '2015-11-30'),
(1034, '/test/newsdetail/23', '04:42:44', '2015-11-30'),
(1035, '/test/category/4', '04:42:45', '2015-11-30'),
(1036, '/test/newsdetail/24', '04:42:45', '2015-11-30'),
(1037, '/test/category/3', '04:42:45', '2015-11-30'),
(1038, '/test/category/15', '04:42:46', '2015-11-30'),
(1039, '/test/category/20', '04:42:47', '2015-11-30'),
(1040, '/test/category/19', '04:42:48', '2015-11-30'),
(1041, '/test/category/12', '04:42:48', '2015-11-30'),
(1042, '/test/newsdetail/55', '04:42:48', '2015-11-30'),
(1043, '/test/newsdetail/52', '04:42:49', '2015-11-30'),
(1044, '/test/newsdetail/49', '04:42:49', '2015-11-30'),
(1045, '/test/newsdetail/44', '04:42:57', '2015-11-30'),
(1046, '/test/newsdetail/32', '04:42:59', '2015-11-30'),
(1047, '/test/newsdetail/29', '04:43:01', '2015-11-30'),
(1048, '/test/category/9', '04:43:04', '2015-11-30'),
(1049, '/test/newsdetail/22', '04:43:04', '2015-11-30'),
(1050, '/test/category/5', '04:43:05', '2015-11-30'),
(1051, '/test/newsdetail/25', '04:43:05', '2015-11-30'),
(1052, '/test/category/13', '04:43:05', '2015-11-30'),
(1053, '/test/category/14', '04:43:06', '2015-11-30'),
(1054, '/test/newsdetail/54', '04:43:06', '2015-11-30'),
(1055, '/test/newsdetail/53', '04:43:07', '2015-11-30'),
(1056, '/test/newsdetail/43', '04:43:07', '2015-11-30'),
(1057, '/test/newsdetail/48', '04:43:07', '2015-11-30'),
(1058, '/test/newsdetail/35', '04:43:07', '2015-11-30'),
(1059, '/test/newsdetail/39', '04:43:08', '2015-11-30'),
(1060, '/test/newsdetail/31', '04:44:06', '2015-11-30'),
(1061, '/test/category/6', '04:44:06', '2015-11-30'),
(1062, '/test/category/17', '04:44:06', '2015-11-30'),
(1063, '/test/newsdetail/26', '04:44:07', '2015-11-30'),
(1064, '/test/category/10', '04:44:08', '2015-11-30'),
(1065, '/test/newsdetail/50', '04:44:09', '2015-11-30'),
(1066, '/test/newsdetail/47', '04:44:09', '2015-11-30'),
(1067, '/test/newsdetail/36', '04:44:09', '2015-11-30'),
(1068, '/test/newsdetail/40', '04:44:09', '2015-11-30'),
(1069, '/test/newsdetail/41', '10:44:33', '2015-12-03'),
(1070, '/test/newsdetail/46', '10:44:33', '2015-12-03'),
(1071, '/test/newsdetail/27', '10:44:33', '2015-12-03'),
(1072, '/test/category/7', '10:44:34', '2015-12-03'),
(1073, '/test/category/16', '10:44:34', '2015-12-03'),
(1074, '/test/category/11', '10:44:35', '2015-12-03'),
(1075, '/test/newsdetail/51', '10:44:35', '2015-12-03'),
(1076, '/test/newsdetail/56', '10:44:35', '2015-12-03'),
(1077, '/test/newsdetail/37', '10:44:35', '2015-12-03'),
(1078, '/test/newsdetail/31', '10:44:54', '2015-12-03'),
(1079, '/test/category/6', '10:44:54', '2015-12-03'),
(1080, '/test/category/17', '10:44:54', '2015-12-03'),
(1081, '/test/newsdetail/26', '10:44:54', '2015-12-03'),
(1082, '/test/category/10', '10:44:55', '2015-12-03'),
(1083, '/test/newsdetail/50', '10:44:55', '2015-12-03'),
(1084, '/test/newsdetail/47', '10:44:55', '2015-12-03'),
(1085, '/test/newsdetail/36', '10:44:56', '2015-12-03'),
(1086, '/test/newsdetail/40', '10:44:56', '2015-12-03'),
(1087, '/test/newsdetail/44', '10:45:03', '2015-12-03'),
(1088, '/test/newsdetail/32', '10:45:03', '2015-12-03'),
(1089, '/test/newsdetail/29', '10:45:03', '2015-12-03'),
(1090, '/test/category/9', '10:45:04', '2015-12-03'),
(1091, '/test/newsdetail/22', '10:45:04', '2015-12-03'),
(1092, '/test/category/5', '10:45:04', '2015-12-03'),
(1093, '/test/newsdetail/25', '10:45:05', '2015-12-03'),
(1094, '/test/category/13', '10:45:06', '2015-12-03'),
(1095, '/test/category/14', '10:45:06', '2015-12-03'),
(1096, '/test/newsdetail/54', '10:45:06', '2015-12-03'),
(1097, '/test/newsdetail/53', '10:45:07', '2015-12-03'),
(1098, '/test/newsdetail/43', '10:45:07', '2015-12-03'),
(1099, '/test/newsdetail/48', '10:45:07', '2015-12-03'),
(1100, '/test/newsdetail/35', '10:45:08', '2015-12-03'),
(1101, '/test/newsdetail/39', '10:45:08', '2015-12-03'),
(1102, '/test/', '11:20:24', '2015-12-04'),
(1103, '/test/', '12:28:40', '2015-12-05'),
(1104, '/test/newsdetail/26', '02:21:00', '2015-12-06'),
(1105, '/test/category/10', '02:21:01', '2015-12-06'),
(1106, '/test/newsdetail/36', '02:21:01', '2015-12-06'),
(1107, '/test/', '08:45:50', '2015-12-07'),
(1108, '/test/category/12', '04:29:43', '2015-12-07'),
(1109, '/test/category/13', '04:29:44', '2015-12-07'),
(1110, '/test/contact-us', '04:29:44', '2015-12-07'),
(1111, '/test/category/9', '04:29:44', '2015-12-07'),
(1112, '/test/category/8', '04:29:45', '2015-12-07'),
(1113, '/test/category/5', '04:29:45', '2015-12-07'),
(1114, '/test/newsdetail/23', '04:29:45', '2015-12-07'),
(1115, '/test/newsdetail/24', '04:29:46', '2015-12-07'),
(1116, '/test/newsdetail/25', '04:29:46', '2015-12-07'),
(1117, '/test/newsdetail/42', '04:29:46', '2015-12-07'),
(1118, '/test/newsdetail/43', '04:29:46', '2015-12-07'),
(1119, '/test/newsdetail/44', '04:29:47', '2015-12-07'),
(1120, '/test/newsdetail/22', '04:29:48', '2015-12-07'),
(1121, '/test/newsdetail/33', '04:29:48', '2015-12-07'),
(1122, '/test/category/4', '04:29:49', '2015-12-07'),
(1123, '/test/newsdetail/34', '04:29:49', '2015-12-07'),
(1124, '/test/newsdetail/35', '04:29:49', '2015-12-07'),
(1125, '/test/newsdetail/39', '04:30:11', '2015-12-07'),
(1126, '/test/newsdetail/48', '04:30:11', '2015-12-07'),
(1127, '/test/newsdetail/28', '04:30:12', '2015-12-07'),
(1128, '/test/newsdetail/29', '04:30:12', '2015-12-07'),
(1129, '/test/newsdetail/32', '04:30:12', '2015-12-07'),
(1130, '/test/category/14', '04:30:13', '2015-12-07'),
(1131, '/test/newsdetail/52', '04:30:13', '2015-12-07'),
(1132, '/test/newsdetail/53', '04:30:14', '2015-12-07'),
(1133, '/test/newsdetail/54', '04:30:14', '2015-12-07'),
(1134, '/test/newsdetail/55', '04:30:15', '2015-12-07'),
(1135, '/test/category/15', '04:30:15', '2015-12-07'),
(1136, '/test/category/19', '04:30:16', '2015-12-07'),
(1137, '/test/category/20', '04:30:16', '2015-12-07'),
(1138, '/test/category/3', '04:30:16', '2015-12-07'),
(1139, '/test/newsdetail/49', '04:30:16', '2015-12-07'),
(1140, '/test/category/11', '04:33:21', '2015-12-07'),
(1141, '/test/about-green-paper', '04:33:21', '2015-12-07'),
(1142, '/test/category/7', '04:33:22', '2015-12-07'),
(1143, '/test/newsdetail/27', '04:33:22', '2015-12-07'),
(1144, '/test/newsdetail/46', '04:33:22', '2015-12-07'),
(1145, '/test/newsdetail/37', '04:33:23', '2015-12-07'),
(1146, '/test/newsdetail/30', '04:33:23', '2015-12-07'),
(1147, '/test/newsdetail/51', '04:33:23', '2015-12-07'),
(1148, '/test/newsdetail/56', '04:33:23', '2015-12-07'),
(1149, '/test/category/16', '04:33:24', '2015-12-07'),
(1150, '/test/newsdetail/41', '04:33:24', '2015-12-07'),
(1151, '/test/category/6', '04:35:18', '2015-12-07'),
(1152, '/test/images', '04:35:18', '2015-12-07'),
(1153, '/test/newsdetail/26', '04:35:18', '2015-12-07'),
(1154, '/test/blogs', '04:35:19', '2015-12-07'),
(1155, '/test/images/1', '04:35:19', '2015-12-07'),
(1156, '/test/advertisement', '04:35:20', '2015-12-07'),
(1157, '/test/category/10', '04:35:20', '2015-12-07'),
(1158, '/test/newsdetail/47', '04:35:20', '2015-12-07'),
(1159, '/test/newsdetail/36', '04:35:21', '2015-12-07'),
(1160, '/test/newsdetail/50', '04:35:21', '2015-12-07'),
(1161, '/test/newsdetail/31', '04:35:21', '2015-12-07'),
(1162, '/test/newsdetail/40', '04:35:22', '2015-12-07'),
(1163, '/test/category/17', '04:35:22', '2015-12-07'),
(1164, '/test/newsdetail/37', '09:21:19', '2015-12-07'),
(1165, '/test/newsdetail/54', '09:24:11', '2015-12-07'),
(1166, '/test/newsdetail/48', '09:24:11', '2015-12-07'),
(1167, '/test/newsdetail/45', '09:24:11', '2015-12-07'),
(1168, '/test/newsdetail/43', '09:24:12', '2015-12-07'),
(1169, '/test/newsdetail/42', '09:24:12', '2015-12-07'),
(1170, '/test/newsdetail/35', '09:24:12', '2015-12-07'),
(1171, '/test/newsdetail/24', '09:24:14', '2015-12-07'),
(1172, '/test/newsdetail/23', '09:24:14', '2015-12-07'),
(1173, '/test/newsdetail/22', '09:24:14', '2015-12-07'),
(1174, '/test/newsdetail/48', '02:12:24', '2015-12-08'),
(1175, '/test/newsdetail/22', '02:12:25', '2015-12-08'),
(1176, '/test/category/3', '05:36:51', '2015-12-09'),
(1177, '/test/newsdetail/37', '06:57:29', '2015-12-09'),
(1178, '/test/newsdetail/51', '06:57:29', '2015-12-09'),
(1179, '/test/newsdetail/27', '06:57:29', '2015-12-09'),
(1180, '/test/newsdetail/28', '06:57:39', '2015-12-09'),
(1181, '/test/newsdetail/26', '06:58:34', '2015-12-09'),
(1182, '/test/newsdetail/47', '06:58:34', '2015-12-09'),
(1183, '/test/newsdetail/50', '06:58:34', '2015-12-09'),
(1184, '/test/newsdetail/35', '07:07:04', '2015-12-09'),
(1185, '/test/newsdetail/48', '07:07:06', '2015-12-09'),
(1186, '/test/newsdetail/54', '07:07:06', '2015-12-09'),
(1187, '/test/category/12', '12:06:43', '2015-12-10'),
(1188, '/test/category/8', '12:06:44', '2015-12-10'),
(1189, '/test/newsdetail/23', '12:06:45', '2015-12-10'),
(1190, '/test/newsdetail/24', '12:06:45', '2015-12-10'),
(1191, '/test/newsdetail/42', '12:06:46', '2015-12-10'),
(1192, '/test/newsdetail/33', '12:06:47', '2015-12-10'),
(1193, '/test/category/4', '12:06:47', '2015-12-10'),
(1194, '/test/newsdetail/34', '12:06:48', '2015-12-10'),
(1195, '/test/newsdetail/28', '12:06:49', '2015-12-10'),
(1196, '/test/newsdetail/52', '12:06:49', '2015-12-10'),
(1197, '/test/newsdetail/55', '12:06:49', '2015-12-10'),
(1198, '/test/category/15', '12:06:50', '2015-12-10'),
(1199, '/test/category/19', '12:06:50', '2015-12-10'),
(1200, '/test/category/20', '12:06:50', '2015-12-10'),
(1201, '/test/category/3', '12:06:51', '2015-12-10'),
(1202, '/test/newsdetail/49', '12:06:51', '2015-12-10'),
(1203, '/test/category/13', '12:06:59', '2015-12-10'),
(1204, '/test/contact-us', '12:06:59', '2015-12-10'),
(1205, '/test/category/9', '12:06:59', '2015-12-10'),
(1206, '/test/category/5', '12:07:00', '2015-12-10'),
(1207, '/test/newsdetail/25', '12:07:00', '2015-12-10'),
(1208, '/test/newsdetail/43', '12:07:00', '2015-12-10'),
(1209, '/test/newsdetail/44', '12:07:01', '2015-12-10'),
(1210, '/test/newsdetail/22', '12:07:02', '2015-12-10'),
(1211, '/test/newsdetail/35', '12:07:02', '2015-12-10'),
(1212, '/test/newsdetail/39', '12:07:02', '2015-12-10'),
(1213, '/test/newsdetail/48', '12:07:03', '2015-12-10'),
(1214, '/test/newsdetail/29', '12:07:03', '2015-12-10'),
(1215, '/test/newsdetail/32', '12:07:03', '2015-12-10'),
(1216, '/test/category/14', '12:07:03', '2015-12-10'),
(1217, '/test/newsdetail/53', '12:07:04', '2015-12-10'),
(1218, '/test/newsdetail/54', '12:07:04', '2015-12-10'),
(1219, '/test/category/6', '12:12:25', '2015-12-10'),
(1220, '/test/images', '12:12:26', '2015-12-10'),
(1221, '/test/newsdetail/26', '12:12:26', '2015-12-10'),
(1222, '/test/blogs', '12:12:27', '2015-12-10'),
(1223, '/test/images/1', '12:12:27', '2015-12-10'),
(1224, '/test/advertisement', '12:12:27', '2015-12-10'),
(1225, '/test/category/10', '12:12:28', '2015-12-10'),
(1226, '/test/newsdetail/47', '12:12:28', '2015-12-10'),
(1227, '/test/newsdetail/36', '12:12:29', '2015-12-10'),
(1228, '/test/newsdetail/50', '12:12:29', '2015-12-10'),
(1229, '/test/newsdetail/31', '12:12:30', '2015-12-10'),
(1230, '/test/newsdetail/40', '12:12:30', '2015-12-10'),
(1231, '/test/category/17', '12:12:31', '2015-12-10'),
(1232, '/test/', '05:21:41', '2015-12-10'),
(1233, '/test/', '06:41:54', '2015-12-10'),
(1234, '/test/', '10:59:03', '2015-12-12'),
(1235, '/test/about-green-paper', '05:02:21', '2015-12-13'),
(1236, '/test/category/11', '05:02:21', '2015-12-13'),
(1237, '/test/category/16', '05:02:22', '2015-12-13'),
(1238, '/test/category/7', '05:02:22', '2015-12-13'),
(1239, '/test/newsdetail/46', '05:02:22', '2015-12-13'),
(1240, '/test/newsdetail/41', '05:02:23', '2015-12-13'),
(1241, '/test/newsdetail/37', '05:02:23', '2015-12-13'),
(1242, '/test/newsdetail/56', '05:02:23', '2015-12-13'),
(1243, '/test/newsdetail/51', '05:02:23', '2015-12-13'),
(1244, '/test/newsdetail/27', '05:02:24', '2015-12-13'),
(1245, '/test/newsdetail/49', '05:12:33', '2015-12-13'),
(1246, '/test/newsdetail/55', '05:12:33', '2015-12-13'),
(1247, '/test/category/12', '05:12:33', '2015-12-13'),
(1248, '/test/category/15', '05:12:34', '2015-12-13'),
(1249, '/test/category/19', '05:12:34', '2015-12-13'),
(1250, '/test/category/20', '05:12:34', '2015-12-13'),
(1251, '/test/category/3', '05:12:34', '2015-12-13'),
(1252, '/test/category/4', '05:12:35', '2015-12-13'),
(1253, '/test/category/8', '05:12:35', '2015-12-13'),
(1254, '/test/newsdetail/23', '05:12:36', '2015-12-13'),
(1255, '/test/newsdetail/24', '05:12:36', '2015-12-13'),
(1256, '/test/newsdetail/52', '05:12:36', '2015-12-13'),
(1257, '/test/newsdetail/42', '05:12:36', '2015-12-13'),
(1258, '/test/newsdetail/28', '05:12:37', '2015-12-13'),
(1259, '/test/newsdetail/34', '05:12:37', '2015-12-13'),
(1260, '/test/newsdetail/33', '05:12:37', '2015-12-13'),
(1261, '/test/newsdetail/50', '05:14:26', '2015-12-13'),
(1262, '/test/advertisement', '05:14:26', '2015-12-13'),
(1263, '/test/blogs', '05:14:27', '2015-12-13'),
(1264, '/test/category/10', '05:14:27', '2015-12-13'),
(1265, '/test/category/17', '05:14:27', '2015-12-13'),
(1266, '/test/category/6', '05:14:27', '2015-12-13'),
(1267, '/test/newsdetail/31', '05:14:28', '2015-12-13'),
(1268, '/test/newsdetail/47', '05:14:28', '2015-12-13'),
(1269, '/test/newsdetail/40', '05:14:28', '2015-12-13'),
(1270, '/test/newsdetail/36', '05:14:29', '2015-12-13'),
(1271, '/test/newsdetail/26', '05:14:29', '2015-12-13'),
(1272, '/test/', '04:30:30', '2015-12-16'),
(1273, '/test/category/12', '08:45:23', '2015-12-18'),
(1274, '/test/newsdetail/55', '08:45:24', '2015-12-18'),
(1275, '/test/newsdetail/45', '08:45:24', '2015-12-18'),
(1276, '/test/category/3', '08:45:25', '2015-12-18'),
(1277, '/test/category/13', '08:45:26', '2015-12-18'),
(1278, '/test/newsdetail/29', '08:45:27', '2015-12-18'),
(1279, '/test/category/5', '08:45:28', '2015-12-18'),
(1280, '/test/category/11', '08:46:50', '2015-12-18'),
(1281, '/test/newsdetail/30', '08:46:51', '2015-12-18'),
(1282, '/test/', '11:17:22', '2015-12-20'),
(1283, '/test/newsdetail/46', '11:22:56', '2015-12-20'),
(1284, '/test/about-green-paper', '11:22:56', '2015-12-20'),
(1285, '/test/category/14', '11:34:56', '2015-12-20'),
(1286, '/test/category/10', '01:37:07', '2015-12-20'),
(1287, '/test/blogs', '01:37:08', '2015-12-20'),
(1288, '/test/advertisement', '01:37:08', '2015-12-20'),
(1289, '/test/', '01:37:08', '2015-12-20'),
(1290, '/test/category/11', '05:58:07', '2015-12-22'),
(1291, '/test/', '09:36:28', '2015-12-24'),
(1292, '/test/newsdetail/45', '10:55:42', '2015-12-24'),
(1293, '/test/newsdetail/38', '10:55:42', '2015-12-24'),
(1294, '/test/category/19', '10:55:43', '2015-12-24'),
(1295, '/test/contact-us', '10:59:41', '2015-12-24'),
(1296, '/test/', '11:11:47', '2015-12-24'),
(1297, '/test/images/1', '11:11:48', '2015-12-24'),
(1298, '/test/blogs', '11:11:50', '2015-12-24'),
(1299, '/test/images', '11:11:50', '2015-12-24'),
(1300, '/test/advertisement', '11:11:51', '2015-12-24'),
(1301, '/test/newsdetail/30', '11:20:52', '2015-12-24'),
(1302, '/test/newsdetail/46', '11:20:52', '2015-12-24'),
(1303, '/test/about-green-paper', '11:20:53', '2015-12-24'),
(1304, '/test/newsdetail/45', '06:45:41', '2015-12-26'),
(1305, '/test/newsdetail/38', '06:45:42', '2015-12-26'),
(1306, '/test/category/19', '06:45:42', '2015-12-26'),
(1307, '/test/contact-us', '06:48:19', '2015-12-26'),
(1308, '/test/', '06:49:15', '2015-12-26'),
(1309, '/test/images/1', '06:49:17', '2015-12-26'),
(1310, '/test/blogs', '06:49:20', '2015-12-26'),
(1311, '/test/images', '06:49:21', '2015-12-26'),
(1312, '/test/advertisement', '06:49:21', '2015-12-26'),
(1313, '/test/videos', '04:53:33', '2015-12-29'),
(1314, '/test/newsdetail/45', '11:24:28', '2015-12-29'),
(1315, '/test/newsdetail/38', '11:24:29', '2015-12-29'),
(1316, '/test/category/8', '11:24:29', '2015-12-29'),
(1317, '/test/category/20', '11:24:30', '2015-12-29'),
(1318, '/test/category/19', '11:24:30', '2015-12-29'),
(1319, '/test/category/4', '11:24:31', '2015-12-29'),
(1320, '/test/category/3', '11:24:32', '2015-12-29'),
(1321, '/test/newsdetail/30', '11:30:20', '2015-12-29'),
(1322, '/test/category/7', '11:30:21', '2015-12-29'),
(1323, '/test/category/16', '11:30:21', '2015-12-29'),
(1324, '/test/about-green-paper', '11:30:22', '2015-12-29'),
(1325, '/test/contact-us', '11:37:26', '2015-12-29'),
(1326, '/test/category/9', '11:37:27', '2015-12-29'),
(1327, '/test/category/5', '11:37:27', '2015-12-29'),
(1328, '/test/images/1', '12:53:15', '2015-12-29'),
(1329, '/test/images', '12:53:15', '2015-12-29'),
(1330, '/test/blogs', '12:53:16', '2015-12-29'),
(1331, '/test/category/6', '12:53:17', '2015-12-29'),
(1332, '/test/category/17', '12:53:17', '2015-12-29'),
(1333, '/test/advertisement', '12:53:17', '2015-12-29'),
(1334, '/test/', '12:53:19', '2015-12-29'),
(1335, '/test/', '12:22:15', '2015-12-30'),
(1336, '/test/category/10', '10:56:23', '2015-12-31'),
(1337, '/test/category/14', '08:29:13', '2016-01-01'),
(1338, '/test/category/10', '09:30:28', '2016-01-01'),
(1339, '/test/category/17', '09:30:29', '2016-01-01'),
(1340, '/test/category/12', '09:38:00', '2016-01-01'),
(1341, '/test/category/19', '09:38:00', '2016-01-01'),
(1342, '/test/category/20', '09:38:00', '2016-01-01'),
(1343, '/test/category/15', '09:38:01', '2016-01-01'),
(1344, '/test/category/13', '09:40:30', '2016-01-01'),
(1345, '/test/category/6', '10:08:49', '2016-01-01'),
(1346, '/test/category/9', '10:11:24', '2016-01-01'),
(1347, '/test/category/5', '10:11:25', '2016-01-01'),
(1348, '/test/category/8', '11:34:51', '2016-01-01'),
(1349, '/test/category/3', '11:34:51', '2016-01-01'),
(1350, '/test/category/11', '11:38:31', '2016-01-01'),
(1351, '/test/category/16', '11:38:31', '2016-01-01'),
(1352, '/test/category/7', '11:38:32', '2016-01-01'),
(1353, '/test/', '01:26:58', '2016-01-02'),
(1354, '/test/newsdetail/45', '01:27:12', '2016-01-02'),
(1355, '/test/newsdetail/38', '01:27:13', '2016-01-02'),
(1356, '/test/category/15', '01:27:13', '2016-01-02'),
(1357, '/test/newsdetail/30', '02:40:19', '2016-01-02'),
(1358, '/test/category/16', '02:40:20', '2016-01-02'),
(1359, '/test/images', '06:47:10', '2016-01-03'),
(1360, '/test/', '11:19:52', '2016-01-04'),
(1361, '/test/newsdetail/30', '11:21:37', '2016-01-04'),
(1362, '/test/category/16', '11:21:38', '2016-01-04'),
(1363, '/test/newsdetail/45', '11:25:36', '2016-01-04'),
(1364, '/test/newsdetail/38', '11:25:37', '2016-01-04'),
(1365, '/test/category/15', '11:25:38', '2016-01-04'),
(1366, '/test/advertisement', '11:50:12', '2016-01-04'),
(1367, '/test/images', '02:26:23', '2016-01-04'),
(1368, '/test/', '09:42:27', '2016-01-05'),
(1369, '/test/about-green-paper', '12:40:37', '2016-01-06'),
(1370, '/test/contact-us', '01:39:33', '2016-01-06'),
(1371, '/test/blogs', '03:37:04', '2016-01-07'),
(1372, '/test/newsdetail/30', '05:12:57', '2016-01-08'),
(1373, '/test/newsdetail/45', '05:17:12', '2016-01-08'),
(1374, '/test/newsdetail/24', '05:17:14', '2016-01-08'),
(1375, '/test/newsdetail/38', '05:17:15', '2016-01-08'),
(1376, '/test/newsdetail/30', '03:00:09', '2016-01-10'),
(1377, '/test/newsdetail/45', '03:00:27', '2016-01-10'),
(1378, '/test/newsdetail/24', '03:00:28', '2016-01-10'),
(1379, '/test/newsdetail/38', '03:00:29', '2016-01-10'),
(1380, '/test/newsdetail/26', '03:00:52', '2016-01-10'),
(1381, '/test/newsdetail/25', '03:02:20', '2016-01-10'),
(1382, '/test/videos', '03:02:20', '2016-01-10'),
(1383, '/test/', '08:10:38', '2016-01-10'),
(1384, '/test/newsdetail/30', '05:20:21', '2016-01-13'),
(1385, '/test/newsdetail/45', '05:22:28', '2016-01-13'),
(1386, '/test/newsdetail/38', '05:22:28', '2016-01-13'),
(1387, '/test/videos/2', '06:59:03', '2016-01-13'),
(1388, '/test/videos/assets/js/jquery.flexslider.js', '06:59:15', '2016-01-13'),
(1389, '/test/', '07:02:50', '2016-01-13'),
(1390, '/test/advertisement', '07:30:34', '2016-01-13'),
(1391, '/test/contact-us', '08:04:29', '2016-01-15'),
(1392, '/test/about-green-paper', '08:07:27', '2016-01-15'),
(1393, '/test/blogs', '09:19:13', '2016-01-15'),
(1394, '/test/', '09:19:16', '2016-01-15'),
(1395, '/test/advertisement', '02:48:59', '2016-01-17'),
(1396, '/test/newsdetail/45', '02:49:07', '2016-01-17'),
(1397, '/test/newsdetail/38', '02:49:07', '2016-01-17'),
(1398, '/test/videos', '02:49:19', '2016-01-17'),
(1399, '/test/advertisement', '08:33:12', '2016-01-19'),
(1400, '/test/videos', '08:33:48', '2016-01-19'),
(1401, '/test/newsdetail/45', '08:33:58', '2016-01-19'),
(1402, '/test/newsdetail/38', '08:33:58', '2016-01-19'),
(1403, '/test/newsdetail/51', '09:36:55', '2016-01-19'),
(1404, '/test/contact-us', '08:58:41', '2016-01-20'),
(1405, '/test/newsdetail/30', '08:58:47', '2016-01-20'),
(1406, '/test/about-green-paper', '08:58:47', '2016-01-20'),
(1407, '/test/blogs', '09:00:23', '2016-01-20'),
(1408, '/test/', '09:00:25', '2016-01-20'),
(1409, '/test/category/12', '06:02:47', '2016-01-21'),
(1410, '/test/newsdetail/45', '05:18:00', '2016-01-22'),
(1411, '/test/newsdetail/38', '05:18:00', '2016-01-22'),
(1412, '/test/advertisement', '05:18:09', '2016-01-22'),
(1413, '/test/videos', '05:18:28', '2016-01-22'),
(1414, '/test/newsdetail/50', '06:38:45', '2016-01-24'),
(1415, '/test/images', '07:01:31', '2016-01-24'),
(1416, '/test/category/11', '07:05:49', '2016-01-24'),
(1417, '/test/images', '05:45:47', '2016-01-24'),
(1418, '/test/contact-us', '12:42:18', '2016-01-25'),
(1419, '/test/about-green-paper', '12:42:53', '2016-01-25'),
(1420, '/test/newsdetail/30', '12:42:54', '2016-01-25'),
(1421, '/test/images', '12:59:38', '2016-01-25'),
(1422, '/test/category/16', '03:14:56', '2016-01-27'),
(1423, '/test/advertisement', '01:50:04', '2016-01-27'),
(1424, '/test/newsdetail/38', '01:50:11', '2016-01-27'),
(1425, '/test/videos', '03:26:09', '2016-01-27'),
(1426, '/test/blogdetail/10', '04:36:28', '2016-01-27'),
(1427, '/test/category/20', '09:41:20', '2016-01-27'),
(1428, '/test/category/19', '04:44:26', '2016-01-28'),
(1429, '/test/category/13', '06:09:59', '2016-01-28'),
(1430, '/test/category/10', '07:44:40', '2016-01-28'),
(1431, '/test/category/17', '12:08:11', '2016-01-29'),
(1432, '/test/category/16', '02:53:01', '2016-01-29'),
(1433, '/test/', '12:11:57', '2016-01-30'),
(1434, '/test/blogs', '12:55:03', '2016-01-30'),
(1435, '/test/contact-us', '12:55:24', '2016-01-30'),
(1436, '/test/blogdetail/10', '04:15:13', '2016-01-30'),
(1437, '/test/category/13', '05:12:27', '2016-01-31'),
(1438, '/test/category/10', '05:13:56', '2016-01-31'),
(1439, '/test/category/19', '05:47:43', '2016-01-31'),
(1440, '/test/blogdetail/12', '10:19:29', '2016-02-01'),
(1441, '/test/videos/2', '10:20:03', '2016-02-01'),
(1442, '/test/blogdetail/11', '10:20:27', '2016-02-01'),
(1443, '/test/blogdetail/9', '10:39:32', '2016-02-01'),
(1444, '/test/images/2', '10:39:32', '2016-02-01'),
(1445, '/test/videos', '10:39:33', '2016-02-01'),
(1446, '/test/blogdetail/10', '09:48:47', '2016-02-01'),
(1447, '/test/category/17', '02:23:57', '2016-02-02'),
(1448, '/test/blogdetail/11', '07:53:11', '2016-02-03'),
(1449, '/test/blogdetail/9', '07:53:17', '2016-02-03'),
(1450, '/test/images/2', '07:53:18', '2016-02-03'),
(1451, '/test/videos', '07:53:18', '2016-02-03'),
(1452, '/test/blogdetail/10', '08:08:43', '2016-02-03'),
(1453, '/test/newsdetail/44', '05:08:09', '2016-02-06'),
(1454, '/test/contact-us', '10:44:17', '2016-02-06'),
(1455, '/test/', '10:44:49', '2016-02-06'),
(1456, '/test/blogs', '10:44:51', '2016-02-06'),
(1457, '/test/newsdetail/44', '06:43:48', '2016-02-06'),
(1458, '/test/', '10:46:18', '2016-02-06'),
(1459, '/test/blogs', '10:46:20', '2016-02-06'),
(1460, '/test/contact-us', '10:46:48', '2016-02-06'),
(1461, '/test/', '01:13:17', '2016-02-07'),
(1462, '/test/blogs', '01:13:19', '2016-02-07'),
(1463, '/test/contact-us', '01:13:42', '2016-02-07'),
(1464, '/test/', '04:20:10', '2016-02-07'),
(1465, '/test/blogs', '04:20:14', '2016-02-07'),
(1466, '/test/contact-us', '04:20:39', '2016-02-07'),
(1467, '/test/', '04:42:18', '2016-02-07'),
(1468, '/test/blogs', '04:42:19', '2016-02-07'),
(1469, '/test/contact-us', '04:42:47', '2016-02-07'),
(1470, '/test/contact-us', '07:04:19', '2016-02-07'),
(1471, '/test/contact-us', '01:43:50', '2016-02-08'),
(1472, '/test/', '01:44:09', '2016-02-08'),
(1473, '/test/blogs', '01:44:11', '2016-02-08'),
(1474, '/test/', '05:02:04', '2016-02-08'),
(1475, '/test/blogs', '05:02:05', '2016-02-08'),
(1476, '/test/contact-us', '05:02:30', '2016-02-08'),
(1477, '/test/contact-us', '06:32:28', '2016-02-08'),
(1478, '/test/blogdetail/11', '08:06:02', '2016-02-08'),
(1479, '/test/contact-us', '08:13:08', '2016-02-08'),
(1480, '/test/', '08:13:19', '2016-02-08'),
(1481, '/test/blogs', '08:13:20', '2016-02-08'),
(1482, '/test/', '12:43:22', '2016-02-09'),
(1483, '/test/contact-us', '01:18:00', '2016-02-09'),
(1484, '/test/', '01:18:10', '2016-02-09'),
(1485, '/test/blogs', '01:18:12', '2016-02-09'),
(1486, '/test/about-green-paper', '06:35:34', '2016-02-09'),
(1487, '/test/advertisement', '06:35:41', '2016-02-09'),
(1488, '/test/videos', '06:36:00', '2016-02-09'),
(1489, '/test/', '07:15:32', '2016-02-10'),
(1490, '/test/newsdetail/38', '08:14:29', '2016-02-10'),
(1491, '/test/blogdetail/9', '08:20:17', '2016-02-10'),
(1492, '/test/images/2', '08:20:17', '2016-02-10'),
(1493, '/test/blogdetail/11', '10:53:10', '2016-02-10'),
(1494, '/test/newsdetail/30', '10:53:10', '2016-02-10'),
(1495, '/test/blogdetail/11', '10:22:00', '2016-02-10'),
(1496, '/test/videos', '02:21:23', '2016-02-11'),
(1497, '/test/about-green-paper', '01:25:41', '2016-02-14'),
(1498, '/test/', '01:25:52', '2016-02-14'),
(1499, '/test/contact-us', '01:25:56', '2016-02-14'),
(1500, '/test/videos', '01:26:00', '2016-02-14'),
(1501, '/test/blogs', '09:34:24', '2016-02-16'),
(1502, '/test/advertisement', '09:34:26', '2016-02-16'),
(1503, '/test/blogdetail/11', '11:18:01', '2016-02-16'),
(1504, '/test/advertisement', '04:35:50', '2016-02-17'),
(1505, '/test/about-green-paper', '07:55:05', '2016-02-19'),
(1506, '/test/contact-us', '08:32:21', '2016-02-19'),
(1507, '/test/advertisement', '12:56:46', '2016-02-20'),
(1508, '/test/blogs', '04:34:21', '2016-02-20'),
(1509, '/test/blogdetail/11', '10:19:52', '2016-02-21'),
(1510, '/test/blogs', '07:20:50', '2016-02-21'),
(1511, '/test/advertisement', '07:20:51', '2016-02-21'),
(1512, '/test/', '07:20:51', '2016-02-21'),
(1513, '/test/contact-us', '07:22:38', '2016-02-21'),
(1514, '/test/blogdetail/9', '07:22:39', '2016-02-21'),
(1515, '/test/videos', '07:22:41', '2016-02-21'),
(1516, '/test/blogdetail/11', '07:40:15', '2016-02-21'),
(1517, '/test/advertisement', '08:46:15', '2016-02-22'),
(1518, '/test/blogs', '12:05:35', '2016-02-25'),
(1519, '/test/advertisement', '12:05:37', '2016-02-25'),
(1520, '/test/', '12:05:37', '2016-02-25'),
(1521, '/test/contact-us', '12:05:50', '2016-02-25'),
(1522, '/test/blogdetail/9', '12:05:50', '2016-02-25'),
(1523, '/test/videos', '12:05:52', '2016-02-25'),
(1524, '/test/about-green-paper', '09:58:12', '2016-02-25'),
(1525, '/test/', '11:59:37', '2016-02-27'),
(1526, '/test/blogs', '11:59:38', '2016-02-27'),
(1527, '/test/videos', '11:59:51', '2016-02-27'),
(1528, '/test/', '04:17:44', '2016-02-29'),
(1529, '/test/blogs', '04:17:45', '2016-02-29'),
(1530, '/test/contact-us', '02:53:38', '2016-03-01'),
(1531, '/test/about-green-paper', '02:53:46', '2016-03-01'),
(1532, '/test/advertisement', '02:54:33', '2016-03-01'),
(1533, '/test/about-green-paper', '06:05:45', '2016-03-04'),
(1534, '/test/advertisement', '06:08:37', '2016-03-04'),
(1535, '/test/advertisement', '08:45:49', '2016-03-04'),
(1536, '/test/', '08:33:05', '2016-03-04'),
(1537, '/test/', '11:46:15', '2016-03-04'),
(1538, '/test/', '06:39:31', '2016-03-07'),
(1539, '/test/contact-us', '07:24:07', '2016-03-07'),
(1540, '/test/videos', '07:24:08', '2016-03-07'),
(1541, '/test/advertisement', '07:24:11', '2016-03-07'),
(1542, '/test/blogs', '07:24:11', '2016-03-07'),
(1543, '/test/', '06:19:40', '2016-03-10'),
(1544, '/test/', '02:45:28', '2016-03-20'),
(1545, '/test/blogs', '08:16:05', '2016-03-20'),
(1546, '/test/', '08:16:05', '2016-03-20'),
(1547, '/test/advertisement', '08:16:06', '2016-03-20'),
(1548, '/test/videos', '08:16:41', '2016-03-20'),
(1549, '/test/newsdetail/43', '07:28:10', '2016-03-21'),
(1550, '/test/', '01:46:19', '2016-03-22'),
(1551, '/test/blogs', '05:20:35', '2016-03-23'),
(1552, '/test/', '05:20:36', '2016-03-23'),
(1553, '/test/advertisement', '05:20:36', '2016-03-23'),
(1554, '/test/videos', '05:20:42', '2016-03-23'),
(1555, '/test/newsdetail/33', '04:58:23', '2016-03-24'),
(1556, '/test/', '11:03:59', '2016-03-24'),
(1557, '/test/newsdetail/37', '01:09:27', '2016-03-24'),
(1558, '/test/newsdetail/33', '03:39:31', '2016-03-26'),
(1559, '/test/', '08:32:00', '2016-03-27'),
(1560, '/test/blogs', '08:32:03', '2016-03-27'),
(1561, '/test/videos', '06:51:27', '2016-03-30'),
(1562, '/test/', '06:51:30', '2016-03-30'),
(1563, '/test/blogs', '06:51:32', '2016-03-30'),
(1564, '/test/videos/2', '04:19:26', '2016-03-30'),
(1565, '/test/', '08:52:32', '2016-03-30'),
(1566, '/test/', '08:58:31', '2016-04-02'),
(1567, '/test/', '02:32:33', '2016-04-06'),
(1568, '/test/images', '03:27:03', '2016-04-08'),
(1569, '/test/advertisement', '04:14:10', '2016-04-08'),
(1570, '/test/', '06:45:06', '2016-04-09'),
(1571, '/test/', '06:04:53', '2016-04-12'),
(1572, '/test/blogdetail/10', '06:25:35', '2016-04-13'),
(1573, '/test/', '06:33:06', '2016-04-13'),
(1574, '/test/newsdetail/38', '09:19:32', '2016-04-14'),
(1575, '/test/newsdetail/32', '09:20:41', '2016-04-14'),
(1576, '/test/newsdetail/34', '09:21:20', '2016-04-14'),
(1577, '/test/newsdetail/45', '03:59:41', '2016-04-14'),
(1578, '/test/newsdetail/28', '04:00:53', '2016-04-14'),
(1579, '/test/newsdetail/30', '04:02:37', '2016-04-14'),
(1580, '/test/newsdetail/53', '11:43:59', '2016-04-14'),
(1581, '/test/newsdetail/27', '06:09:09', '2016-04-15'),
(1582, '/test/images', '08:09:21', '2016-04-15'),
(1583, '/test/', '10:39:25', '2016-04-15'),
(1584, '/test/', '02:54:19', '2016-04-17'),
(1585, '/test/', '11:06:56', '2016-04-21'),
(1586, '/test/', '07:40:42', '2016-04-23'),
(1587, '/test/', '06:43:04', '2016-04-27'),
(1588, '/test/', '08:03:25', '2016-04-27'),
(1589, '/test/', '06:20:22', '2016-04-30'),
(1590, '/test/', '12:32:33', '2016-05-04'),
(1591, '/test/', '10:01:59', '2016-05-06'),
(1592, '/test/', '05:20:31', '2016-05-07'),
(1593, '/test/', '03:10:34', '2016-05-09'),
(1594, '/test/', '02:48:36', '2016-05-12'),
(1595, '/test/', '11:16:42', '2016-05-14'),
(1596, '/test/', '04:58:59', '2016-05-18'),
(1597, '/test/', '09:56:57', '2016-05-21'),
(1598, '/test/', '12:28:22', '2016-05-25'),
(1599, '/test/', '09:31:53', '2016-05-27'),
(1600, '/test/', '02:35:58', '2016-05-30'),
(1601, '/test/category/12', '03:14:52', '2016-05-30'),
(1602, '/test/', '03:18:28', '2016-05-30'),
(1603, '/test/blogs', '03:20:29', '2016-05-30'),
(1604, '/test/images', '03:36:26', '2016-05-30'),
(1605, '/test/', '03:25:46', '2016-05-31'),
(1606, '/test/videos', '04:07:38', '2016-05-31'),
(1607, '/test/contact-us', '04:14:51', '2016-05-31'),
(1608, '/test/advertisement', '04:20:54', '2016-05-31'),
(1609, '/test/about-green-paper', '04:32:03', '2016-05-31'),
(1610, '/test/category/11', '09:10:51', '2016-06-03'),
(1611, '/test/newsdetail/50', '09:46:15', '2016-06-03'),
(1612, '/test/category/20', '09:46:17', '2016-06-03'),
(1613, '/test/category/16', '10:24:03', '2016-06-03'),
(1614, '/test/blogdetail/11', '10:46:57', '2016-06-03'),
(1615, '/test/category/13', '01:36:09', '2016-06-04'),
(1616, '/test/category/10', '01:36:13', '2016-06-04'),
(1617, '/test/newsdetail/43', '01:36:36', '2016-06-04'),
(1618, '/test/category/19', '02:07:04', '2016-06-04'),
(1619, '/test/newsdetail/30', '05:11:55', '2016-06-04'),
(1620, '/test/newsdetail/50', '07:05:06', '2016-06-04'),
(1621, '/test/', '12:30:09', '2016-06-06'),
(1622, '/test/', '03:24:59', '2016-06-09'),
(1623, '/test/advertisement', '12:32:26', '2016-06-10'),
(1624, '/test/category/12', '06:53:31', '2016-06-10'),
(1625, '/test/', '12:18:52', '2016-06-12'),
(1626, '/test/videos/2', '02:54:42', '2016-06-13'),
(1627, '/test/', '09:23:04', '2016-06-13'),
(1628, '/test/contact-us', '05:35:56', '2016-06-14'),
(1629, '/test/videos/assets/js/jquery.flexslider.js', '07:15:09', '2016-06-14'),
(1630, '/test/videos/assets/js/jquery.flexslider.js', '07:15:14', '2016-06-14'),
(1631, '/test/contact-us', '07:20:17', '2016-06-14'),
(1632, '/test/videos', '07:43:27', '2016-06-14'),
(1633, '/test/', '07:04:45', '2016-06-15'),
(1634, '/test/', '03:59:00', '2016-06-17'),
(1635, '/test/', '05:58:23', '2016-06-20'),
(1636, '/test/', '12:54:08', '2016-06-22'),
(1637, '/test/', '02:35:52', '2016-06-22'),
(1638, '/test/images', '08:09:37', '2016-06-23'),
(1639, '/test/category/19', '08:15:57', '2016-06-28'),
(1640, '/test/', '07:42:30', '2016-07-04'),
(1641, '/test/', '04:45:22', '2016-07-06'),
(1642, '/test/', '06:53:37', '2016-07-09'),
(1643, '/test/', '01:48:33', '2016-07-11'),
(1644, '/test/', '03:21:41', '2016-07-11'),
(1645, '/test/category/17', '03:20:59', '2016-07-13'),
(1646, '/test/', '03:24:01', '2016-07-13'),
(1647, '/test/blogs', '03:27:26', '2016-07-13'),
(1648, '/test/videos', '03:27:29', '2016-07-13'),
(1649, '/test/category/11', '08:19:36', '2016-07-13'),
(1650, '/test/category/11', '08:27:06', '2016-07-13'),
(1651, '/test/images', '07:03:59', '2016-07-14'),
(1652, '/test/contact-us', '07:18:19', '2016-07-14'),
(1653, '/test/advertisement', '07:21:11', '2016-07-14'),
(1654, '/test/about-green-paper', '07:27:06', '2016-07-14'),
(1655, '/test/', '08:42:35', '2016-07-15'),
(1656, '/test/category/20', '11:04:49', '2016-07-15'),
(1657, '/test/category/20', '12:14:00', '2016-07-15'),
(1658, '/test/blogdetail/12', '07:09:20', '2016-07-16'),
(1659, '/test/blogdetail/10', '07:12:55', '2016-07-16'),
(1660, '/test/videos/2', '07:44:49', '2016-07-16'),
(1661, '/test/videos/assets/js/jquery.flexslider.js', '07:48:02', '2016-07-16'),
(1662, '/test/blogdetail/9', '06:55:14', '2016-07-17'),
(1663, '/test/images/1', '07:03:25', '2016-07-17'),
(1664, '/test/images/assets/js/jquery.flexslider.js', '07:04:19', '2016-07-17'),
(1665, '/test/category/17', '05:18:54', '2016-07-19'),
(1666, '/test/about-green-paper', '12:38:20', '2016-07-20'),
(1667, '/test/', '12:38:30', '2016-07-20'),
(1668, '/test/category/16', '12:43:51', '2016-07-25'),
(1669, '/test/newsdetail/50', '04:22:02', '2016-07-25'),
(1670, '/test/', '04:22:03', '2016-07-25'),
(1671, '/test/newsdetail/54', '04:22:14', '2016-07-25'),
(1672, '/test/newsdetail/53', '04:22:14', '2016-07-25'),
(1673, '/test/newsdetail/48', '04:22:15', '2016-07-25'),
(1674, '/test/newsdetail/44', '04:22:15', '2016-07-25'),
(1675, '/test/newsdetail/43', '04:22:16', '2016-07-25'),
(1676, '/test/newsdetail/39', '04:22:16', '2016-07-25'),
(1677, '/test/newsdetail/35', '04:22:16', '2016-07-25'),
(1678, '/test/newsdetail/32', '04:22:17', '2016-07-25'),
(1679, '/test/newsdetail/22', '04:22:17', '2016-07-25'),
(1680, '/test/about-green-paper', '04:22:38', '2016-07-25'),
(1681, '/test/newsdetail/36', '09:33:10', '2016-07-28'),
(1682, '/test/newsdetail/31', '09:33:10', '2016-07-28'),
(1683, '/test/newsdetail/47', '09:33:10', '2016-07-28'),
(1684, '/test/newsdetail/56', '09:33:31', '2016-07-28'),
(1685, '/test/newsdetail/37', '09:33:31', '2016-07-28'),
(1686, '/test/', '10:59:03', '2016-07-28'),
(1687, '/test/category/10', '10:21:18', '2016-07-30'),
(1688, '/test/', '01:39:19', '2016-07-31'),
(1689, '/test/about-green-paper', '02:05:28', '2016-07-31'),
(1690, '/test/', '08:41:23', '2016-08-01'),
(1691, '/test/', '08:01:09', '2016-08-02'),
(1692, '/test/', '02:03:18', '2016-08-05'),
(1693, '/test/', '09:01:13', '2016-08-07'),
(1694, '/test/', '10:56:37', '2016-08-09'),
(1695, '/test/images', '10:56:37', '2016-08-09'),
(1696, '/test/', '08:05:37', '2016-08-14'),
(1697, '/test/', '09:29:28', '2016-08-18'),
(1698, '/test/', '05:09:46', '2016-08-23'),
(1699, '/test/', '07:18:32', '2016-08-27'),
(1700, '/test/', '05:57:23', '2016-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(8) NOT NULL,
  `record_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `record_date` datetime NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `record_desc`, `record_date`, `status`) VALUES
(1, 'Site Detail Modified ( Green Paper )', '2015-09-21 08:48:45', 1),
(2, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:23:32', 1),
(3, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:27:31', 1),
(4, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:34:06', 1),
(5, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:35:38', 1),
(6, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:38:31', 1),
(7, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:39:53', 1),
(8, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:40:18', 1),
(9, 'testimonial added for ( संविधानको शल्यक्रिया : सिद्धान्त सही, अन्तरवस्तु कमजोर )', '2015-09-21 20:40:58', 1),
(10, 'testimonial added for ( आन्दोलन, संविधान र भविष्य )', '2015-09-21 20:46:29', 1),
(11, 'testimonial Modified ( inceptioncms.com )', '2015-09-21 20:47:31', 1),
(12, 'testimonial added for ( विखण्डनलाई रोक्न मधेशमा चार प्रदेश )', '2015-09-21 20:51:10', 1),
(13, 'testimonial added for ( विश्व जलवायु परिवर्तनबाट गरिब मुलुक नै बढी दुःखी )', '2015-09-21 20:52:07', 1),
(14, 'Category Us Section added ( अर्थ / वाणिज्य )', '2015-09-21 21:25:42', 1),
(15, 'Category Us Section added ( सूचना प्रविधि )', '2015-09-21 21:31:50', 1),
(16, 'Category Us Section added ( मनोरञ्जन )', '2015-09-21 21:36:53', 1),
(17, 'Category Us Section added ( स्वास्थ्य )', '2015-09-24 21:58:07', 1),
(18, 'Category Us Section added ( वातावरण )', '2015-09-24 22:23:21', 1),
(19, 'Category Us Section added ( पर्यटन )', '2015-09-24 22:28:44', 1),
(20, 'Category Us Section added ( कृषि )', '2015-09-24 22:29:08', 1),
(21, 'Category Us Section added ( बैंक )', '2015-09-24 22:29:54', 1),
(22, 'Category Us Section added ( English )', '2015-09-26 04:45:51', 1),
(23, 'Category Us Section added ( बिदेशमा नेपाली  )', '2015-09-26 04:47:56', 1),
(24, 'Category Us Section added ( उधम  )', '2015-10-04 14:14:27', 1),
(25, 'Category Us Section added ( अटो  )', '2015-10-04 14:15:38', 1),
(26, 'Category Us Section added ( बिदेशमा नेपाली  )', '2015-10-04 14:16:43', 1),
(27, 'Category Us Section added ( पाठक  )', '2015-10-04 14:17:14', 1),
(28, 'testimonial added for ( भारतले सिक्किम निल्यो, कश्मिर किन अड्कियो ? )', '2015-10-04 14:32:09', 1),
(29, 'Add Detail Modified ( Suzuki )', '2017-08-23 06:37:22', 1),
(30, 'Add Detail Modified ( Toyota )', '2017-08-23 06:37:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `seo_id` int(8) NOT NULL,
  `page_title` varchar(70) NOT NULL DEFAULT 'NULL',
  `page_keywords` varchar(250) NOT NULL DEFAULT 'NULL',
  `page_desc` varchar(250) NOT NULL DEFAULT 'NULL',
  `page_developer` varchar(250) NOT NULL DEFAULT 'NULL',
  `page_map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`seo_id`, `page_title`, `page_keywords`, `page_desc`, `page_developer`, `page_map`) VALUES
(0, 'Inception CMS', 'leena, leena trade nepal', 'Leena trade is one of the most relaible company in nepal', 'Yubraj Pokharel', '<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=JoomShaper,+Dhaka,+Dhaka+Division,+Bangladesh&amp;aq=0&amp;oq=joomshaper&amp;sll=37.0625,-95.677068&amp;sspn=42.766543,80.332031&amp;ie=UTF8&amp;hq=JoomShaper,&amp;hnear=Dhaka,+Dhaka+Division,+Bangladesh&amp;ll=23.73854,90.385504&amp;spn=0.001515,0.002452&amp;t=m&amp;z=14&amp;iwloc=A&amp;cid=1073661719450182870&amp;output=embed\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `service_desc` mediumtext NOT NULL,
  `service_added` date NOT NULL,
  `service_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_desc`, `service_added`, `service_status`) VALUES
(6, 'About Owner', '<p>Owner of Monastry Handicrafts and Summit Trading Co. Mr.Rajendra Bilash Joshi, is a young Nepali entrepreneur with a lot of experience in Handicraft business in Nepal. Initially he started his business in the field of sales and marketing of Nepali handicrafts (Statues, Thanka, Paintings and other Handicrafts) promoting Nepali Handicrafts. He has participated in a many handicrafts exhibition and trade fairs throughout Europe, America, Japan and many other countries. He has travelled to Japan, France, Italy, Germany, Luxemburg, Switzerland, Belgium, Austria, Hong Kong, China, Thailand, UAE, India, Bangladesh and USA. He has more than 25 years of experience in Sales and Marketing.</p>\r\n\r\n<p>Presently he is also engaged in the adventure industry promoting Nepal globally in the field of adventure tourism. He has great interest in the promotion of quality adventure gears of different international brands. His main aim is to promote Adventure Tourism in Nepal providing quality equipment to the adventure loving people from different parts of the world.</p>\r\n', '2015-04-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(4) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `name`) VALUES
(1, 'Inception CMS');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `staff_id` int(8) NOT NULL,
  `staff_f_name` varchar(25) NOT NULL,
  `staff_l_name` varchar(25) NOT NULL,
  `staff_dob` date NOT NULL,
  `staff_sex` varchar(10) NOT NULL,
  `staff_p_address` varchar(50) NOT NULL,
  `staff_t_address` varchar(50) NOT NULL,
  `staff_email` varchar(50) NOT NULL,
  `staff_contact` varchar(15) NOT NULL,
  `staff_position` varchar(50) NOT NULL,
  `staff_major_feild` varchar(25) NOT NULL,
  `staff_desc` text NOT NULL,
  `staff_pic` varchar(100) NOT NULL,
  `staff_added` datetime NOT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `staff_status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`staff_id`, `staff_f_name`, `staff_l_name`, `staff_dob`, `staff_sex`, `staff_p_address`, `staff_t_address`, `staff_email`, `staff_contact`, `staff_position`, `staff_major_feild`, `staff_desc`, `staff_pic`, `staff_added`, `facebook`, `googleplus`, `twitter`, `linkedin`, `staff_status`) VALUES
(1, 'Yubraj', 'Pokharel', '1990-12-31', 'Male', 'Nepalgunj', 'Kathmandu', 'yubraj.pokharel555@gmail.com', '977-9804552309', 'Product Manager', 'Software programmer', 'Software programmer Software programmer Software programmer Software programmer Software programmer Software programmer ', 'ae4ceb530c666b322ad9e600ee896c9e.jpg', '2015-05-11 10:37:03', 'http://localhost/leena/staff/edit/1', '0', 'http://localhost/leena/staff/edit/1', 'http://localhost/leena/staff/edit/1', 1),
(2, 'Angelina', 'Joli', '1990-01-01', 'Male', '', '', '', '', 'CEO', 'Actress', 'This is a test and this is aweosme ', '9781afa149ad14b51af819edff8480aa.jpg', '2015-05-11 11:11:14', 'http://localhost/leena/staff/edit/2', 'http://localhost/leena/staff/edit/4', 'http://localhost/leena/staff/edit/4', 'http://localhost/leena/staff/edit/7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(8) NOT NULL,
  `contact_name` varchar(250) COLLATE utf8_bin NOT NULL,
  `detail` varchar(50) COLLATE utf8_bin NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `added` date NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `contact_name`, `detail`, `pic`, `text`, `added`, `status`) VALUES
(9, 'inceptioncms.com', 'आन्दोलन, संविधान र भविष्य', 'e1b6bcdf6b35518e36a830dd5662dace.jpg', '<p>हाम्रो &lsquo;हा&rsquo; छुट्यो होला, तिम्रो &lsquo;त&rsquo; छुट्यो होला । तिमी हामीले छोडेका केही जोड्दा &lsquo;हात&rsquo; जोडिन्छन् भने तिमी हामी अझै केही छोड्न तयार हुनु पर्छ । अझै थुप्रै हात जोडिउन, सग्लो संगालो बनोस नेपाल । राणाले बागडोर छाडेपछि, आफ्नो निधारको टिका आफै लाउने जनताको चाहना बल्ल एक जुग पछि पुरा भएकाले अहिले जनतामा रौनक देखिएको छ ।<br />\r\n<br />\r\nकुनै एक पार्टीको एजेन्डा होइन, विभिन्न राजनीतिक शक्तिको सहमतिको दस्ताबेज हो नेपालको संबिधान २०७२ । सबैका सबै माग समेटिएनन् होला, त्यति भन्दैमा यो अमुल्य क्षणले बिरोधको स्वर चर्को रुपमा सुन्नु पर्ने अवस्था पक्कै होइन । संबिधान गतिशिल दस्ताबेज हो । आवश्यकतासंगै यो परिमार्जन हुने होस यसर्थ सबैले अपनत्वको बेला हो अहिले । सन् १७८७ मा लागु&nbsp; भएको अमेरिकी संबिधान अहिले जस्तो परिस्कृत पक्कै थिएन, तर समयसंगैको परिमार्जनले अहिले सबैभन्दा उच्चतम कोटीको देश बनेको छ । हाम्रा निम्ति यो एउटा मननीय तथ्य हो ।<br />\r\n<br />\r\nअहिले सामाजिक संजालको भित्तोमा कतै कालो त कतै निलो पोतेर समर्थन र बिरोध गर्नेको तमासा छ । इलेक्ट्रोनिक मिडियाको बिकृति यति बिघ्न बढेको अवस्था छ कि हरेक ब्लगरले &lsquo;समाचार रिपोर्टर&rsquo; भएर एक पक्षीय खबर लेखेर झन् आगोमा घिउ थप्ने काम गर्दै छन् । बिरोध गर्नेहरु मध्ये आखिर कतिले संविधानको परिमार्जित विधयेक अध्यन गरे होलान ? संबिधानको कुनै धारामा फलानो जातको मान्छेलाइ थोरै वा बढी अधिकार दिने तथ्य त उल्लेखित छैन तर पनि बिरोधकर्ताहरुले केबल हामीले अधिकार पाएनौ भन्ने कोरो नारा मात्रै सुनिन्छ । तथ्य भन्दा पनि भावनाको राजनीतिले ठाउँ पाएको अवस्था छ । जथाभाबी मनलाग्दी रुपमा सामाजिक सञ्जालमा लेखेका कुरा सेयर गरेर, नेताका उत्तेजक भाषण पेस्ट गरेर हामी कता लाग्दै छौ ? को कहाँ ठगियो, के मा ठगियो, एकपल्ट विवेचना गरौं ।<br />\r\n<br />\r\nबिरोधको स्वर पूर्वी समथर भागमा चर्को सुनिएको छ । ती क्षेत्रका नेताका अन्तरवार्ता पढ्दा पुरानो सम्झौता कार्यन्वयन होस् भन्ने एक सुत्रीय माग देखिन्छ । नेपाल बिधिबत रुपमा संघिय गणतन्त्रात्मक मुलुक भएको छ । संघियता २०६२/६३ को आन्दोलनको मर्म नभएता पनि यो मधेश आन्दोलनले स्थापित गरेको एजेन्डा हो । यसर्थ, सबैभन्दा खुशी त ती क्षेत्रमा हुनु पर्ने हो । &nbsp;<br />\r\n<br />\r\nअहिलेको जनादेश र परिस्थितिलाई हेर्ने हो भने एक मधेश एक प्रदेशको औचित्य पक्कै सान्दर्भिक छैन् । सम्पूर्ण तराई एक प्रदेश हुनु पर्ने तर जनंख्याका आधारमा&nbsp; निर्वाचन क्षेत्र तोकिनु पर्ने माग अखिर त्यही तराईलाई बढी भन्दा बढी निर्वाचन क्षेत्रमा विभाजित गरी आफ्नो राजनीतिक भविष्यको सेफ ल्याण्डिङको खाका कोर्ने निहित मनशाय मात्रै हो नेताहरुको । जातीय र पहिचानमा आधारित&nbsp; राज्यको माग हेर्ने हो भने केबल २ नम्बर प्रदेश मात्रै सो किसिमको राज्य हुने देखिन्छ ।<br />\r\n<br />\r\nपक्कै पनि यो त्यहाँका नेताले उठाउँदै आएको मुद्दाको सम्बोधन नै हो । सिमांकनको कुरा हेर्ने हो भने झापा, मोरङ, सुनसरी, कैलाली, कंचनपुर पाए मात्र मधेश सबल हुने नत्र नहुन पक्कै होइन । सिमांकन सम्बन्धि धेरै तथ्य राजनीतिक स्वार्थसंग सम्बन्धित भएका कारण संघिय आयोगका माध्यमबाट यसको उचित सम्बोधन हुने गरी समाधान खोजिनु पर्ने अहिलेको आवश्यकता हो ।&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<br />\r\nपुर्बी तराईको भारत सिमापारीसँग रोटि बेटीको सम्बन्ध भएका कारण नागरिकता सम्बन्धि सवाल खडा हुनु जायज हो । तर, संविधानले आमा वा बुवा कुनै एकको नामबाट नागरिकता लिन सकिने र बिदेशीसँग बिहे गरी जन्मेका सन्तानले अंगिकृत नागरिकता पाउन सक्ने प्राबधान प्रष्ट रुपमा उल्लेख गरिएको छ । अंगिकृत नागरिकका काम, कर्तब्य र अधिकार के कति हुने यो कानुन तर्जुमा गर्दा सम्बोधन गर्न सकिने कुरो हो । &nbsp;<br />\r\n<br />\r\nबिडम्बना के छ भने, अहिले तराइमा अंगिकृत नागरिक अनागरिक हो भनि नागरिकता सम्बन्धि सवाल भुसको आगोसरी सल्काएर, अतिरन्जित गरेर राज्यले तिरस्कार गरेको भ्रम फैलाइदै छ । भावनाको राजनीति बडो खतरनाक हुन्छ । यो यस्तो राजनीतिक परिचय हो जहाँ राजनीतिमा, राज र नीति दुबैले तिलान्जली दिनुपर्ने अवस्था आउन सक्छ । राज्य समयमै गम्भीर भएर जनता समक्ष तथ्य चिरफार गर्नु पर्ने समयको अपरिहार्यता हो ।&nbsp;&nbsp; &nbsp;<br />\r\n&nbsp;<br />\r\nअहिले मधेशको सडकमा भैरहेको आन्दोलन नियाल्ने हो भने यो बर्षौ देखिको शोषण, दमन, अत्याचार, रोग, भोकबाट थलथलिएका जनताको विष बमन भएको अवस्था हो । हप्तौसम्म मधेसी नेता काठमाडौं बस्दा पनि सडकमा जनता आफै परिचालित छन् । तिनले खोजेको झापा, मोरङ, सुनसरी, कैलाली, कंचनपुर पक्कै होइन् ।<br />\r\n<br />\r\nएउटा कट्टु लगाउन शुद्ध ज्ञान नभएको बालकको &lsquo;ए भैया&rsquo; जस्ता तुच्छ संस्कार सिकाउने बिरुद्धको आवाज हो, एउटा समान व्यवहारमा बाच्न पाउने कामना हो । रोग, भोकबाट मुक्त भएर एउटा सुखी जीवनको सपना साकार हुने अपेक्षा प्रस्फुटन भएको अवस्था हो । यी मागको उचित सम्बोधन हुनै पर्ने हो । पश्चिम तराइमा भइरहेको आन्दोलनको निहित मर्म पनि यही हो । थारुहरुले कमैया प्रथाबाट मुक्ति पाए पनि जीवन निर्वाहको उचित व्यवस्थापन भएन । रोग, भोक र अशिक्षाले परोक्षरुपमा दास बनाईनै रह्यो । पछाडी परेका वर्गहरुलाई शिक्षा र सबलीकरणका अरु उपायद्वारा सुसज्जित गरी तिनको उपस्थिति राज्यका हरेक अंगमा हुनेगरी राज्यले पहल<br />\r\nगर्नु पर्ने हो ।&nbsp; &nbsp;<br />\r\n<br />\r\nजनता सडकमा आएको यो अवस्थालाई नेताले आफ्नो राजनीतक भविष्य सुरक्षित पार्ने दाउको रुपमा मात्र लिएको देखिन्छ । अहिले नेताले जनतामा छरेको भ्रम के छ भने तिनले मागेको जस्तो सिमांकन सबै समस्या समाधानको रामवाण हो । त्यसो नभएसबै अन्धकार हुनेछ । यो सर्वथा गलत कुरा हो ।&nbsp;</p>\r\n\r\n<p>जनताको निहित आकांक्षालाई सम्बोधन नगरी, फेरी कोही आन्दोलनकारी नेतालाई मन्त्री दिएर आन्दोलन साम्य पार्न खोजियो भने त्यो गम्भीर भुल हुने छ । अहिले स्कुल जान नपाएका, गरिबीले निमोठिएका जनता १० वर्षपछि लौरो होइन, बन्दुक बोकेर आन्दोलनमा उत्रने सम्भावना नकार्न सकिन्न । यो तथ्य केबल मधेश होइन, सिंगो नेपाली जनतालाई लागु हुने कुरो हो । यसर्थ, अब सरकारले शिक्षा, बिकास, पूर्वाधार निर्माण तथा रोजगारीमा तत्काल केन्द्रित हुनु पर्ने अवाश्यकता छ । एउटै कुरालाई लिएर पटक पटक आन्दोलन गर्नु पर्ने नेपाली जनताको भाग्य अब फेरिनै पर्छ ।<br />\r\n<br />\r\nजनताले अहिले मनन गर्नु पर्ने कुरो के हो भने जुन राज्य भए पनि मेरो छिमेकी उही हो, फेरिने त नेताका गाडी हुन्, नेतापत्नीका नेकलेस हुन्, तिनका भोजका दारुका लेबल हुन् । अनि हामीले फेरी पढ्ने आत्मवृतान्त त्यही हो&ndash; अ जर्नी फ्रम ठर्रा टु ब्लुलेबल ।<br />\r\n<br />\r\nपञ्चायतदेखि मुहार फेर्दै, आफु मात्रै मोटाउँदै आएका नेतालाई चिनेर, तिनको उक्साहटमा नलागि र लाग्न नदिई सामाजिक सद्भाव बनाई राख्नु अहिले सजग जनताको कर्तब्य पनि हो ।<br />\r\n<br />\r\nरुख रोप्ने सबैभन्दा ठिक बेला २० वर्ष अघि थियो । त्यस पछिको ठिक बेला भनेको अहिले हो । पुरानाले के गरे भनि सत्तो सराप गर्नु भन्दा थोरै विवेकशील र संयम बनी, अब सबै मिलेर शान्ति र बिकासको रुख रोप्ने बेला हो यो । श्यामल बर्ण मात्रै तराई बासी, गोरो हिमाली हो, तिनको बास यथास्थानमै हुनु पर्छ भन्ने निषेधको संस्कार हुर्कन दिनु पक्कै राम्रो होइन । दक्षिण अफ्रिकाको इतिहास हेर्न सक्छौ, तेत्रो दमन गरेका गोराहरुलाई त नेल्सन मण्डेलाले देश निकाला गरेनन् ।<br />\r\n<br />\r\nयस्ता राम्रा कुराको अनुसरण गर्ने बुद्धिमा किरा नपरोस, हामी विवेकशील हुन जरुरी छ । सुन्दर शान्त नेपाल बन्दै छ भन्ने कुरो कि गीतका पंक्ति कि फेसबुकमा मात्रै सिमित हुनु हुँदैन । सतहमा देखिने गरी काम हुनु जरुरी । नेतालाई गालि गरेर, तिनको मुख ताकेर मात्र देश बन्दैन । तिनले काम गरेनन भने अर्को चुनावमा आफ्नो बुढी औलाको ताकत देखाउनु तपाई हाम्रो कर्तब्य हो । तपाई हामी बदलिए अवश्य देश बदलिन्छ । जात, धर्म, बर्णभन्दा माथि मातृभूमि छ । देश बनोस, हामी सबै सबल हुनेछौं ।</p>\r\n', '2015-09-21', 1),
(10, 'inceptioncms.com', 'विखण्डनलाई रोक्न मधेशमा चार प्रदेश', '85c83da5e5c7923e15a3c802aa7be198.jpg', '<p>देशको आधाभन्दा बढी जनसङ्ख्या आन्दोलनमय भइरहेका बेला संविधानसभा सङ्घीय गणतन्त्रात्मक संविधान जारी गर्ने प्रकृयाको अन्तिम चरणमा प्रवेश गरिसकेको छ । जनताको लामो प्रतिक्षा र नेताहरूको प्रतिज्ञा दुवैको परीक्षा एकसाथ भइरहेको छ । २००७ सालदेखि अाफ्नाे संविधान आफै लेख्ने नेपाली जनताले पालेको मनोकाँक्षाले मूर्तरूप पाउने निश्चित प्रायः छ । तथापि सो संविधान अत्याधिक नेपाली खासगरी मधेशी र थारूलगायतका समुदायले स्वामित्व र अपनत्व ग्रहण गर्ने खालको आउँला ? भन्ने प्रश्न अहिले सर्वाधिक चासोको विषय बनेको छ ।<br />\r\n<br />\r\n<strong>गलत बुझार्इ</strong><br />\r\nगिरिजाप्रसाद कोइरालाको अवशानपछि तराई&ndash;मधेशको मनोविज्ञान बुझेको, यहाँको जनजिवनलाई आत्मसाथ गरेको पहाडी नेताको अभाव छ, समकालीन राष्ट्रिय राजनीतिमा । तथापी मधेशमै जन्मी हुर्की यहीँको भाषा, लवज र जीवनशैली अङ्गिकार गरेका सुशिल कोइराला र माधव नेपालको भूमिका पनि कम छैन । पहिलो संविधानसभा चुनावमा मधेशीले साथ नदिएपछि आप्mनो साख नै गुमाउन पुगेका नेपाली काँग्रेस र एमाले जस्ता पार्टीले दोस्रो संविधानसभा चुनावमा राम्रो मत पाएको हो । यसले ती दलहरूको गुमेको आत्मविश्वास फिर्ता पाउनुको साथै सत्ता सञ्चालनको साँचो समेत हात पार्न सफल भए ।<br />\r\n<br />\r\nतराई&ndash;मधेश क्षेत्र नेपाली काँग्रेसको परम्परागत गढ रहेको र वैकल्पिक रूपमा एमालेलाई पनि मधेशको जनताले विश्वास गरिआएको हो । २०६३/२०६४ सालको मधेश आन्दोलनको मर्मलाई अनुभूत गर्न नसकेका कारण मधेशले यी दुवै दललाई पाखा लगाएर आप्mनो भाखा बोल्ने र बुभ्mने ठानिएका फोरम र तमलोपालाई जिताएर पठाएका थिए । तर अति अपरिपक्व नेतृत्व र चरम सत्ता स्वार्थका कारण चिरा&ndash;चिरामा विभक्त भएर चुनावमा गएका कारण उनीहरूले गत चुनावमा ठूलो पराजयको सामना गर्नु प&yen;यो ।<br />\r\n<br />\r\nउता उपल्ला स्तरका मधेशी नेतालाई हराएर उल्लेख्य सीट सङ्ख्या प्राप्तगरी संविधानसभामा प्रवेश गरेको काँग्रेस र एमालेमा मधेशी जनताको वास्तविक प्रतिनिधि आपूmहरू नै भएको भन्ने भ्रमको भ्रुण विकास हुन थाल्यो । परिणामतः ती ठूला दलका ठूला नेतालाई झुसिलो डकार आउने नै भयो । त्यो झुसिलो डकार यति धेरै दम्भले युक्त भयो कि मधेशी दलहरूलाई र आम मधेशी भावनालाई बेवास्ता गर्न थालियो । विगतमा आफ्नै सरकारले गरेको सहमतिलाई एकपटक सम्झिने र मधेशी दलहरूको सङ्ख्यात्मक हैसियत जेजस्तो भएतापनि उनीहरूलाई विश्वासमा लिने आवश्यकता बोध समेत गरेनन् । ठूला भनाउँदा दलहरूले हतार&ndash;हतारमा गरिदिए १६ बुँदे सहमति । हुनतः सो सहमतिमा मधेश केन्द्रित दलको ट्रेडमार्क लागेको विजय गच्छदारको फोरम लोकतान्त्रिक पनि एउटा पक्षको रूपमा रहेको थियो ।<br />\r\nयद्यपि आम मधेशीबिच (थारू, मुस्लिम, मारवाडी बाहेक) विजय गच्छदारको केडिविलिटी कति छ भन्ने बुझ्न गाह्रो छैन । सोही १६ बुँदेलाई संविधान निर्माणको प्रस्थान विन्दु मानेर ८ प्रदेशको सङ्घीय मुलुक हुने भनियो तर सिमाङ्कनबिनाको संविधानको मस्यौदा विरोधबाट शुरु भएको मधेशी आक्रोश ६ प्रदेशहुँदै ७ प्रदेशको सिमाङ्कनको विरुद्धमा झनै बढेर गएको छ । प्रस्तावित मस्यौदाको विरुद्धमा मधेशी मानव सागरको आयतन बढ्दो क्रममा छ ।<br />\r\n<br />\r\n<strong>आन्दोलनले कसलाई घाटा ?</strong><br />\r\nहुनतः हरेक आन्दोलनमा बन्द, तोडफोड र आगजनी नियमित तालिका जस्तै हुन पुगेको छ । यसबाट सबै वर्ग, तप्कामा निश्चित खालको घाटा हुन्छ नै तर यसपटकको मधेशी र थारू आन्दोलनले सबैभन्दा आहत कोही भएको छ भने त्यो हो थारू र पहाडी बीचको सामाजिक सद्भाव । अाफ्रनाे मागलाई पहाडी नेतृत्व वर्गले नै बेवास्ता गरेको हो भन्ने निष्कर्षमा पुगेको आन्दोलित थारूहरू र तिनको आन्दोलनमा केही गलत तत्वको घुसपैठको कारण कैलालीमा अत्यन्त क्रुर र मानव जगतले नै दुत्कार्ने घटना घट्न गयो । जुन थारू&ndash;पहाडीबीचको सौहाद्र्रपूर्ण सम्बन्धको मात्र नभएर समग्र राष्ट्रकै निम्ति कालो घटनाको रूपमा अङ्कित हुन पुग्यो । काँग्रेस, एमाले र एमाओवादीको अंहकारका कारण सम्पूर्ण मधेशीमा एक प्रकारको क्षोभ, नैराष्यता व्याप्त हुन पुगेको छ, सामाजिक सद्भावको दृष्टिले यो एउटा ठूलो नोक्सानी हो ।<br />\r\n<br />\r\nतीन ठूला&ndash;दलले सबैलाई समेटेर लैजाने फराकिलो छाती देखाउन नसकेका कारण भएको यसपटकको आन्दोलनमा सर्वसाधारण र प्रहरी गरी २९ जनाको ज्यान गइसकेको छ । यो अपूर्णीय क्षति त हो नै त्यसका साथै मधेशी आन्दोलनको अँध्यारोमा लुकेर राष्ट्र विखण्डनको राँको बाल्नेहरू खुलेरै सल्बलाउन थालेको अवस्था पनि हो यो । यो राष्ट्रिय जीवनलाई थप भयभित पार्ने खालको, घातक प्रकृतिको छ । यसरी अहिले मधेशमा रोप्न खोजिएको विखण्डनको विषवृक्षलाई<br />\r\nराज्यको डाडुपन्यु सम्हालेका तीन दलले नजानिँदो गरी मलजल गरिरहेका छन्, यसमा आन्दोलनरत मधेशी दललाई दोष दिन मिल्दैन, किनकि उनीहरू अस्तित्वको लडाईको आन्दोलनमा जो छन् ।<br />\r\n<br />\r\n<strong>समाधान के ?</strong><br />\r\nचार पक्षमध्ये विजय गच्छेदारको दल पनि संविधान निर्माण प्रक्रियाबाट बाहिरिएपछि १६ बुँदे सहमतिको बसले अब नेपाली जनतालाई सुरक्षित रूपमा गन्तव्यमा पु&yen;याउन नसक्ने भयो । अब तीन पाङ्ग्राको भरमा हिँडेको सो बस कतिखेर दुर्घटनाग्रस्त हुने हो भन्न कठिन छ । प्रक्रियाबाट भएको विजय गच्छदारको पार्टीको बहिर्गमनसँगै उनले मधेशी मोर्चासँग गर्ने भनेको कार्यगत तालमेलले मधेशमा चर्केको आन्दोलनलाई थप उर्जा प्रदान गर्नेछ । तसर्थ तीन ठूला दलले संविधान निर्माण प्रकृयालाई स्थगित गरी मधेशी मोर्चा, थारू लगायत अन्य आन्दोलनरत पक्षहरूसँग सार्थक वार्ता गरी सबैले अपनत्व ग्रहण गर्ने खालको संविधान ल्याउने प्रकृया थालिहाल्नु श्रेयष्कर छ ।<br />\r\n<br />\r\nसङ्घको रचना गर्दा पहिचान र सामथ्र्य दुवैलाई आधार मान्ने चारदलीय सहमति अनुरूप तराई&ndash;मधेशमा सघन रूपमा बसोबास गरेका मधेशी र थारू दुवै समुदायले आत्मसम्मानको बोध गर्ने खालको सङ्घीय संरचना तयार गर्न सकिन्छ ।<br />\r\n<br />\r\n<strong>मधेश प्रदेश&ndash;१</strong><br />\r\nविजय गच्छदारले भने जस्तै गरी झापा, मोरङ र सुनसरीको दक्षिणीभेग, सप्तरी, सिरहा र उदयपुरको थारू बहुल क्षेत्रलाई समेटेर एउटा प्रदेश निर्माण गर्न सकिन्छ ।<br />\r\n<br />\r\n<strong>मधेश प्रदेश&ndash;२</strong><br />\r\nधनुषा, महोत्तरी, सर्लाही, रौतहट, बारा र पर्सालाई एक ठाउँमा राखेर मधेशी पहिचान खुल्ने अर्को&nbsp; प्रदेश निर्माण गर्न सकिन्छ ।<br />\r\n<br />\r\n<strong>मधेश प्रदेश&ndash;३</strong><br />\r\nसानो प्रदेशको रूपमा नवलपरासी, रूपन्देही र कपिलवस्तुलाई समावेश गर्न सकिन्छ ।<br />\r\n<br />\r\n<strong>मधेश प्रदेश&ndash;४</strong><br />\r\nदाङ, बाँके, बर्दिया, कैलाली र कञ्चनपुरको केही भागलाई समावेश गरी पश्चिमी थारूको पहिचान खुल्ने र उनीहरूले आत्मसम्मानको बोध गर्नेखालको चौथो प्रदेशको रचना गर्न सकिन्छ ।<br />\r\n<br />\r\nयसरी तराईमा चार प्रदेशको ढाँचामा अघि बढ्दा सुदुर पूर्व र सुदुर पश्चिम तराईमा थारू, मधेशी र पहाडीबीच आपसी अन्तरसम्बन्धको निरन्तरता हुनेछ भने धनुषादेखि पर्सासम्म र नवलपरासीदेखि कपिलवस्तु सम्मको दुई प्रदेशमा मधेशीको स्वाभिमान बच्ने खालको प्रदेशको उदय हुनेछ । मधेशी र थारू दाजुभाईले चीतवन छाडिदिनुपर्छ । क्षेत्रफल र जनसङ्ख्याको हिसाबले सानो देखिएतापनि नवलपरासी, रूपन्देही र कपिलवस्तु सम्मिलित प्रदेश ऐतिहासिकता र आर्थिक दृष्टिले अत्यन्त सबल प्रदेश बन्नेछ । यस प्रकारले मधेशमा प्रदेशहरूको संरचना गरिएमा हाल प्रस्ताव गरिएको प्रदेश नं. २ (जुन सप्तरीदेखि पर्सा सम्मको लाम्चो आकारको छ)मा हुनसक्ने अनेकौं विखण्डनको आन्दोलन पनि कमजोर भएर जानेछ । होइन भने हालको प्रदेश नं २ कालान्तरमा समग्र मुलुककै निम्ति निकै ठूलो टाउको दुखाइको विषय बन्ने निश्चित छ ।<br />\r\n<br />\r\nचितवन पूर्वका तराईलाई दुई प्रदेशमा विभाजन गरियो भने तत्काललाई आन्दोलनकारीको माँग पनि सम्बोधन हुने र पछि गएर सम्बन्धित प्रदेशका राजनीतिक दल र सामाजिक एजेन्सीहरू तिनको व्यवस्थापनमा केन्द्रित हुन थालेपछि विखण्डनकारी शक्तिहरू स्वतः निश्कृय हुनेछन् । त्यसैगरी कैलाली, बर्दिया, दाङका थारूहरूले देखाएको सङ्घर्षको स्वरूपले सो समुदाय आप्mनो पहिचान र अधिकारका लागि आइपर्ने जस्तो सुकै परिस्थितिका निम्ति पनि तयार छ भन्ने सन्देश दिएको छ । तसर्थ सम्भावित विद्रोहलाई बेलैमा आङ्कलन गरी पश्चिमी थारूलाई पनि सम्मानको हक प्रदान गर्ने प्रदेश बनाइनुपर्दछ । यसरी प्रदेशहरूको रचना गर्ने हो भने मधेशमा सङ्घीयताले सम्पूणरूपमा सार्थकता पाउने छ र&nbsp; मुलुक सर्वपक्षीय समृद्धिको बाटोमा लम्कने छ ।</p>\r\n', '2015-09-21', 1),
(11, 'inceptioncms.com', 'विश्व जलवायु परिवर्तनबाट गरिब मुलुक नै बढी दुःखी', 'db9f2dadc9d33cf79db6c9e67634cd1d.jpg', '<p>केही वर्ष अघि मेलिन्डा र म कृषकहरूको एक समूहका साथ भारतको बिहारमा धानखेतीको बारेमा छोटो अध्ययन गर्न बिहार पुगेका थियौँ । भारतीको यो राज्य मुलुकभरकै बाढीले बढी सताउने क्षेत्र मानिदो रहेछ ।<br />\r\n&nbsp;<br />\r\nत्यहाँका प्रायः कृषकहरू अत्यन्तै गरिब र परिवार पालनपोषण गर्न आफूले फलाउने धानमै प्रत्येक वर्ष भर पर्नुपर्ने रहेछ । मनसुनी वर्षासँगै त्यहाँ सबै नदीमा बाढी आउने र त्यस बाढीले धानखेत बगाउनाले बालीनाली सबै नष्ट हुने गरेको पाइयो । तर कृषकहरू आफ्नो खेतबारीमा बाढी पस्दैन की भन्ने आशले हरेक वर्ष धान रोप्ने होडबाजी नै गर्दा रहेछन् । यसरी उनीहरू प्रायजसो हारिने जुवा खेल्न बाध्य हुँदा रहेछन् ।<br />\r\n&nbsp;<br />\r\nबाढीले सताएपछि, बालीनाली नष्ट पारेपछि आफूलाई अनुकुल हुने कामको खोजीमा भौतारिँदै देशका अन्यत्रका ठूला सहरहरूमा पलायन हुनुपर्ने उनीहरूको बाध्यता रहेछ । अर्को वर्ष उनीहरू आफ्नै थातथलोमा फर्किने गर्दा रहेछन् । तर पहिला छोडेको भन्दा पनि अझै गरिबी बोकेर, धान रोप्ने खर्चसम्म जेनतेन जुराएर । संसारका कृषकहरूमध्ये अत्यन्त गरिब कृषकहरूको समूह यस्तो झुलभित्र बस्न बाध्य छ, जसभित्र लामखुट्टे सजिलै पसी रातभरी टोक्छ तर उनीहरू त्यही झुलभित्र सुत्न बाध्य छन् । हाम्रो भ्रमणले स्मरण गराएको गतिलो पाठ थियो त्यो ।<br />\r\n&nbsp;<br />\r\nती कृषकहरूसँग उन्नत बीउबीजन, उर्वर मल, उचित सिँचाइ प्रणाली र अन्य कृषकमैत्री प्रविधि तथा उपकरणहरूमा सजिलो पहुँच भएको हामीले पाएनौ । जब कि संसारका अन्य विकसित मुलुकका कृषकले यी न्यूनतम सुविधा प्राप्त गरेकै हुन्छन् । यसका अतिरिक्त, त्यहाँ बाली बिमाको व्यवस्था नहुनाले जे जति नोक्सान परे पनि चुपचाप सहनु पर्ने समेत बाध्यता रहेछ । बिडम्बना यो छ की अनिकाल, बाढी, रोग वा खडेरी वा यस्तै साधारण प्राकृतिक प्रकोपको एउटा सानो दुर्भाग्यले आक्रमण गर्दा पनि ती कृषकहरूलाई थप गरिबी र भोकमरीको&nbsp; खाडलतिर घचेट्न पर्याप्त हुँदो रहेछ ।<br />\r\n&nbsp;<br />\r\n&lsquo;उपरी माथि थुपरी&rsquo; भजेजस्तै हाल आएर विश्वब्यापी जलवायु परिवर्तनको रोगले समेत उनीहरूको जीवनमा एक नयाँ जोखिमको बाक्लो पत्र थपिएको हामीले पायौँ । केही वर्षदेखि यता दिनहूँ जसो धरतीको तापमानमा लगातार वृद्धि भइरहनाले भारतजस्ता उष्ण प्रदेशीय क्षेत्रले आगामी केही दशकमै कृषि र बालीनाली उत्पादनमा ठूलो ह्रास ब्यहोर्ने लगभग निश्चित छ । न्युनवृष्टि वा अतिवृष्टि दुबैमा बालीनाली राम्ररी उम्रन वा फस्टाउन सक्दैन । उच्च तापमान वृद्धिसँगै कीराफट्याङ्ग्राको पनि कडा प्रकोप सुरु भई तिनले बालीनालीलाई थप नष्ट पारिदिन्छन् । यसप्रकारको समस्या धनी राष्ट्रमा पनि नहुने होइन । जलवायु परिवर्तनले विश्वका सबै कृषकहरूलाई पनि अवश्य समान प्रभाव पार्छ तर उनीहरूसँग जोखिमको सामना र व्यवस्थापन गर्ने आवश्यक उपकरण तथा बाह्य भरथेग पनि उपलब्ध हुन्छ ।<br />\r\n&nbsp;<br />\r\nसंसारका गरिब कृषकहरूलाई हरेक बिहान रित्तो हात आ&ndash;आफ्ना खेतबारीमा पस्नु पर्दछ । तिनै कृषकहरू जलवायु परिवर्तनको शिकार बन्दछन् र अत्यन्त कष्टकर जीवनयापन गर्न बाध्य हुन्छन् । गरीब कृषक परिवारलाई नै जलवायु परिवर्तनरुपी आरिङगालले नराम्ररी अझै चिल्ने प्रायः निश्चित नै छ । तसर्थ अहिले नै त्यस्ता कृषकलाई सहृदय सहयोग गर्न र बढ्दो जनसंख्यालाई पर्याप्त हुने खाद्यान्न जुटाउनतर्फ संसारका बुद्धिजीवीको ध्यान जानुपर्दछ ।<br />\r\n&nbsp;<br />\r\nसन् २०५० को अन्त्यसम्म विश्वलाई चाहिने खाद्यान्नको माग हालको भन्दा ६० प्रतिशतले बढ्ने अनुमान गरिएको छ । बाली उत्पादनमा ह्रास आउनु भनेकै विश्वब्यापी खाद्य आपूर्ति प्रणालीमा असन्तुलन आउनु हो । यसबाट भोकमरीको परिमाणमा अप्रत्याशित वृद्धि हुन गई गरिबी उपर विश्वले विगतका आधा शताब्दी यता हासील गरेको अत्याधिक विजयलाई क्षणभरमै तहसनहस पारी दिने पक्षलाई नकार्न मिल्दैन । म आशावादी छु, हामीले अहिलेदेखि नै केही ठोस कार्य गरेमा, केही योगदान दिएमा जलवायु परिवर्तनको दुष्प्रभावबाट पृथ्वीलाई जोगाउन सकिन्छ र धरतिमा खाद्यान्न सङ्कट आउने छैन ।<br />\r\n&nbsp;<br />\r\nयसका लागि प्रथमतः सबै देशका शासक वा सरकारहरूले नवीन स्वच्छ ऊर्जा उत्पादन र परीक्षण वा प्रयोगमा लगानी बढाउन शीघ्र कदम चाल्नु आवश्यक छ । यसले नवीन ऊर्जाले हरितगृह ग्यास उत्सर्जनलाई न्यूनीकरण गर्नेछ र साथसाथै विश्व तापमान वृद्धिलाई पनि नियन्त्रण गर्नेछ । यहाँनेर विचारणीय पक्ष के छ भने विश्व तापमानको निरन्तर वृद्धिबाट विश्वलाई पर्ने दुष्प्रभाव रोक्न हामीले बिलम्ब गरिसक्यौ &nbsp;भन्ने तथ्य नै ध्रुवसत्य हो र यसलाइ सबैले स्वीकार वा राम्ररी मनन गर्नुपर्छ ।</p>\r\n', '2015-09-21', 1),
(12, 'अरुण बराल', 'भारतले सिक्किम निल्यो, कश्मिर किन अड्कियो ?', '401fe98b54269ab962c2b7491be6101b.jpg', '<p>उत्तरी छिमेकमा रहेका साना देशहरुलाई आफ्नो भीमकाय पेटमा हाल्ने &lsquo;नेहरु डक्टि्रन&rsquo; अन्ततः भारतले चाहेजस्तो भएन । सिक्किम सर्लक्कै भारतको पेटमा बिलायो । तर, त्योभन्दा पहिल्यै भारतले निलेको अर्को स्वतन्त्र देश जम्मु कश्मिर भने अहिलेसम्म उसको घाँटीमा अड्किएको माछाको हड्डी जसरी बिझाइरहेको छ ।</p>\r\n\r\n<p>भारतले उसबेलै नेपाललाई पनि आफ्नो सुरक्षामा छाताभित्र हाल्न नचाहेको होइन । तर, नेपालीहरुले न त सिक्किमेले जसरी विधानसभाको सर्वसम्मतिबाट आफ्नो देश भारतलाई बुझाए, न कश्मिरका राजाले जसरी नेपालका राजाले हस्ताक्षर गरेर राष्ट्रघातको टीको लगाए ।<br />\r\nकश्मिरको संविधानसभाले जस्तो नेपालको संविधानसभाले भारतको पक्षमा निर्णय गरेन ।</p>\r\n\r\n<p><strong>सन्दर्भ : जम्मु कश्मिरको</strong></p>\r\n\r\n<p>सन् १९४७ मा भारतमा गाभिनुपूर्वसम्म जम्मु कश्मिर नेपालजस्तै दक्षिण एशियाको स्वतन्त्र हिमाली राष्ट्र थियो । त्यहाँ पनि नेपालमा जस्तै हिन्दू राजा थिए । तर, राजा हरिसिंह -अहिले भारतीय नेशनल कांग्रेसका नेता करन सिंहका पिता)ले आफ्नो देश भारतलाई हस्ताक्षर गरेर बुझाए । तत्कालीन सबैभन्दा ठूलो दल &lsquo;मुस्लिम कन्फरेन्स&rsquo;का नेता शेख अब्दुल्लाले समेत हिन्दु राजाको कदमलाई साथ दिएका कारण कथित संविधानसभाबाट कश्मिरलाई भारतमा गाभ्ने निर्णय सदर गर्न सहज भयो ।</p>\r\n\r\n<p>भारतले जम्मु कश्मिरलाई कागजी निर्णयबाट आफ्नो देशमा त गाभ्यो, तर सबै भूभागका जनताले भारतमा विलय हुन अस्वीकार गरे, र त्यहाँ विद्रोह सुरु भयो । कश्मिरी जनताले भारतको अधीनतालाई अस्वीकार गर्दै संघर्ष गर्न थालेको ६८ वर्ष पुगिसकेको छ । पहिलो पुस्ताको पराधीनताविरुद्ध यतिबेला तेस्रो पुस्ताले पनि संघर्ष गरिरहेको छ । र, कश्मिरमा शान्ति बहाली गर्न नसकेर भारत अहिलेसम्म रोएर हिँडिरहेको छ ।</p>\r\n\r\n<p>नेपालमा मधेसीको अधिकार संविधानमा लेख भनेर राजनीतिक पाठ पढाउने भारतले कश्मिरको समस्यालाई राजनीतिक नभएर आतंकवादी समस्या बताउँदै आएको छ र राष्ट्र संघले गरेको जनमत संग्रहको निर्णयलाई समेत उसले लत्याउँदै आएको छ ।</p>\r\n\r\n<p>भारतले आफ्नो देशमा विलय गराएको घोषणा गर्नासाथ कश्मिरमा विद्रोह भयो । त्यसपछि पश्चिमतर्फको केही भाग पाकिस्तानले लिएर &lsquo;आजाद कश्मिर सरकार&rsquo; बनाएको र लद्दाखतर्फको वौद्ध धर्मावलम्बी बाहुल्य १२ हजार वर्ग माइल भूमि चीनले कब्जा गरेको भारतीयले गुनासो गर्दै आएका छन् ।</p>\r\n\r\n<p>भारतीयहरुको के दाबी छ भने राजा हरि सिंहले शेख अब्दुल्लासँग मिलेर लिखित निर्णय गरी कश्मिर भारतलाई जिम्मा लगाएको हुनाले कश्मिर बैधानिकरुपमै भारतको अभिन्न अंग बनेको हो ।</p>\r\n\r\n<p>साथै कश्मिरको १९५७ मा निर्वाचित संविधानसभाले गरेको निर्णयले समेत राजाको कदम अनुमोदन गरेकाले कश्मिरमा भारतको अधीन वैधानिक छ भन्ने भारतीय तर्क रहँदै आएको छ ।</p>\r\n\r\n<p>बृटिसका पालाको &lsquo;भारतीय स्वतन्त्रता अधिनियम&rsquo; अनुसार पनि कश्मिर भारतमा गाभिनु कानूनी एवं वैधानिक भएको भारतीय पक्षको तर्क रहँदै आएको छ । कश्मिरलाई स्वतन्त्र रहन दियो भने आफ्नो देशमाथि सुरक्षा खतरा आइपर्ने भारतीय तर्क छ ।</p>\r\n\r\n<p>तर, यो दाबीलाई कश्मिरका जनताले अस्वीकार गर्दै आएका छन् । जसको प्रमाण हो, साढे ६ दशकदेखि त्यहाँ अशान्ति फैलिएको छ ।</p>\r\n\r\n<p>नेपाललाई शान्ति, सहमति र राजनीतिको पाठ पढाउने भारतले कश्मिरको समस्यालाई भने दशकौंदेखि बन्दूकको आडमा समाधान गर्ने असफल एवं अलोकतान्त्रिक अभ्यास गर्दै आइरहेको छ ।</p>\r\n\r\n<p>एउटा सार्वभौमसत्ता सम्पन्न देशलाई जब भारतमा गाभ्ने निर्णय भयो, काश्मिरी जनताले विद्रोहमार्फत् त्यसलाई अस्वीकार गरे ।<br />\r\nजनताको दबाव खप्न नसकेपछि भारतमा गाभिएलगत्तै तत्कालीन प्रधानमन्त्री जवाहरलाल नेहरुले कश्मिरमा जनमत संग्रह गराउने प्रस्ताव अघि सारे ।</p>\r\n\r\n<p>पाकिस्तानी नेता मोहम्मद अलि जिन्नाले जनमत संग्रहको प्रस्ताव अस्वीकार गरेको भन्दै भारत एकाएक पछि सर्&zwj;यो ।</p>\r\n\r\n<p>मुस्लिमहरुको बहुमत रहेको र हिन्दु र वौद्धहरु अल्पसंख्यक समुदायमा रहेको जम्मु-कश्मिरमा आफूमाथिको प्रहार थेग्न नसकेपछि भारतीय प्रधानमन्त्री नेहरु कश्मिरको विवाद समाधानका लागि संयुक्त राष्ट्र संघलाई गुहार्न बाध्य भए ।</p>\r\n\r\n<p>तर, भारतको वर्तमान नेतृत्व नेहरुले कश्मिरको मुद्दालाई राष्ट्र संघमा प्रवेश गराउनु गल्ती भएको बताउन थालेको छ ।</p>\r\n\r\n<p><strong>राष्ट्र संघले के भन्यो ?</strong><br />\r\n<br />\r\nभारतको हारगुहारपछि संयुक्त राष्ट्र संघले स्पष्ट रुपमा भनेको छ कि भारत र पाकिस्तान दुबै देशले कश्मिरी जनताको भविश्यको निर्धारण गर्ने जिम्मा त्यहीँका जनतालाई दिउन् । यसको अर्थ हो कश्मिर स्वतन्त्र रहने कि कसको अधीनमा रहने भन्ने कुराको फैसला त्यहाँ जनमत संग्रहमार्फत् गरिनुपर्छ ।</p>\r\n\r\n<p><a href=\"http://www.onlinekhabar.com/wp-content/uploads/2015/01/ban-ki-moon-e1421026566898.jpg\"><img alt=\"ban ki moon\" src=\"http://www.onlinekhabar.com/wp-content/uploads/2015/01/ban-ki-moon-e1421026566898.jpg\" style=\"height:446px; width:650px\" /></a>तर, राष्ट्र संघले यसरी कश्मिरमा जनमत संग्रह गर्न निर्देशन दिइसक्दा पनि भारतले त्यसमा अटेर गरिरहेको छ ।</p>\r\n\r\n<p>पाकिस्तानले त्यहाँबाट सेना खाली नगरेका कारण राष्ट्र संघको सुझाव पाकिस्तानपट्टबिाट उल्लंघन भएको भारतीयको आरोप छ । उता पाकिस्तानले चाँहि भारतले राष्ट्र संघको निर्णय उल्लंघन गरेको आरोप लगाउँदै आएको छ ।</p>\r\n\r\n<p>स्वतन्त्र देशलाई ठूलो देशले आफूमा निलेको ७० वर्ष पुग्नै लाग्दा यसैसाता न्यूयोर्कमा आयोजित राष्ट्र संघको महासभामा भारत र पाकिस्तानले यही मुद्दालाई लिएर चर्को झगडा गरे ।</p>\r\n\r\n<p>यसको सोझो अर्थ हो, कश्मिरलाई निलेको ६८ वर्षसम्म भारतको घाँटीमा यो अड्किइरहेको छ । भारतलाई कश्मिर मुद्दा गलपासो बन्दै आएको छ ।</p>\r\n\r\n<p><strong>सिक्किम स्वात्तै छिर्&zwj;यो</strong><br />\r\n<br />\r\nकश्मिरलाई आफ्नो बनाएको अढाइ दशकपछि सन् १९७५ मा भारतले सिक्किमलाई आफ्नो २२ औं राज्य बनायो । सिक्किमका कान्छा राजा पाल्टेन थोण्डुप नाम्ग्यालले अमिलो मन बनाएर रुँदैरुदै सिक्किम भारतलाई बुझाइएको निर्णयमा हस्ताक्षर गरे । त्यसअघि पाल्टेनले नेपालमा वीरेन्द्र राजाको राज्याभिषेकमा आएका बेला नेपाल भारतबाट स्वतन्त्र राष्ट्रका रुपमा बचेकोमा बधाइ दिएको इतिहासमा पढ्न पाइन्छ ।</p>\r\n\r\n<p>अन्ततः सिक्किमको ३२ सदस्यीय विधानसभाले लेण्डुप दोर्जीको नेतृत्वमा सर्वसम्मत निर्णय गरेर आफ्नो सार्वभौम सत्ता भारतलाई सुम्पियो । राजा हुनुको नाताले पाल्तेनले आफ्नो मृत्युपत्रमा आफैं सही गरे । उनी राजाबाट हटेपछि आफ्नी अमेरिकी पत्नीले पनि उनलाई त्यागिन् ।</p>\r\n\r\n<p>सिक्किमलाई भारतमा गाभ्दा त्यहाँ एकजना मानिसको पनि रगत बगेन । अहिले ४० वर्ष बित्दासम्म सिक्किममा भारतीय &lsquo;अकुपाई&rsquo;को विरोधमा कश्मिरमा जसरी कुनै आन्दोलन उठेको छैन । भारतले सिक्किमलाई सर्लक्क आफ्नो पेटमा हालेर हजमोला खाए जसरी पचाइदिएको छ ।</p>\r\n\r\n<p><strong>सिक्किम यसरी सहजै पच्नुका पछाडि मुख्यतः तीनवटा कारण देखिन्छन् :</strong><br />\r\n<br />\r\n<strong>प्रथमः</strong>&nbsp;त्यहाँका राजा र राजावादीहरु नेपालका महेन्द्रजस्ता राष्ट्रवादी एवं भिजनरी थिएनन् । सन् १९४६ ताका प्रजातन्त्रका लागि दलहरुले आन्दोलन गर्दा सिक्किमे राजाले भारतको सहयोग लिएर प्रजातन्त्रवादीलाई दबाएका थिए । त्यही कारणले ७० को दशकमा आन्दोलनकारीको माग नै राजतन्त्र फाल्ने र भारतमा विलय हुने भन्ने रह्यो । &lsquo;रअ&rsquo;का प्रतिनिधि बीएस दासले गान्तोकमा बसेर चलखेल गर्ने छुट पाए ।</p>\r\n\r\n<p><strong>दोस्रो :</strong>&nbsp;नेपालमा जसरी सिक्किममा पुरानो कम्युनिष्ट पार्टी थिएन, जसले भारतलाई विस्तारवादी भन्दै देशभित्र राष्ट्रवादी जनमत सिर्जना गरोस् । नेपालमा कम्युनिष्टहरुले बेलैमा भारतको विस्तारवादी नीतिविरुद्ध जनतालाई जागृत गराएका थिए । सिक्किममा चाँहि चीनले तिब्बतलाई जस्तै तिमीहरुलाई पनि खान्छ है भन्ने भारतको &lsquo;फियर फ्याक्टर&rsquo;ले मात्र काम गर्&zwj;यो ।, त्यहाँ कम्युनिष्टको प्रभावै परेन ।</p>\r\n\r\n<p><strong>र तेस्रो,</strong>&nbsp;कश्मिरलाई भारतले कब्जा गरिरहँदा त्यसको छिमेकमा पाकिस्तानजस्तो बलियो देश थियो । साथै कश्मिरका बहुसंख्यक मुस्लिम जनताको सांस्कृतिक राष्ट्रियता पाकिस्तानसँग मिल्नुले पनि काश्मिरका जनता सिक्किममा जसरी निरीह बन्नुपर्ने बाध्यता भएन ।</p>\r\n\r\n<p>सिक्किमको पूर्वमा भुटान र पश्चिममा नेपाल छन्, जो आफैंमा भारतको &lsquo;हेजिमोनी&rsquo; सहिरहेका छन् । चीनले &lsquo;तिब्बत र सिक्किम तैंचुप मैचुपको नीति लियो ।</p>\r\n\r\n<p>यी सबै परिस्थितिले गर्दा सिक्किमले कसैको साथ पाएन । र, यिनै तीनवटा परिस्थितिजन्य वाध्यताका कारणले सिक्किम सहजरुपमै भारतको गर्भमा विलीन हुन सम्भव भयो ।</p>\r\n\r\n<p><strong>श्रीलंका, नेपाल र भुटानमा अर्कै प्रयोग</strong><br />\r\n<br />\r\nभारतको छिमेकमा रहेका नेपाल, काश्मिर, श्रीलंका, भुटान या सिक्किम कुनै पनि मुलुक एक जातीय नभई बहुधार्मिक एवं बहुसांस्कृतिक देश हुन् । यही बहुलताका कारण भारतलाई खेल्न सजिलो हुने गरेको छ ।</p>\r\n\r\n<p><a href=\"http://www.onlinekhabar.com/wp-content/uploads/2015/10/Sikkim.jpg\"><img alt=\"Sikkim\" src=\"http://www.onlinekhabar.com/wp-content/uploads/2015/10/Sikkim.jpg\" style=\"height:448px; width:406px\" /></a>जस्तो कि उसले भुटानको दक्षिणमा रहेका जनता हिन्दु भएता पनि उनीहरुलाई खेदेर नेपाल पठाउने भुटानी राजाको कदमलाई साथ दियो । उता दक्षिणी जम्मुमा रहेका हिन्दु-जनतालाई भने उसले कश्मिरी पहाडे मुसलमान विरुद्ध प्रयोग गर्&zwj;यो ।</p>\r\n\r\n<p>भारतले श्रीलंकाको उत्तरमा रहेका भारती मूलका तमिल जातिलाई भड्काएर लामो समयसम्म श्रीलंकामा विखण्डनको बाली रोप्ने काम गर्&zwj;यो । तर, श्रीलंकाले भारतीय योजनालाई विफल बनाएर आफ्नो सार्वभौमिकता एवं अखण्डता बचायो ।</p>\r\n\r\n<p>फलस्वरुप अहिले श्रीलंका भारतविरोधी छिमेकीका रुपमा स्थापित बनेको छ । त्यहाँ चिनियाँ प्रभाव बढ्दै गएको छ र भारतीय प्रभाव कमजोर छ ।</p>\r\n\r\n<p>भारतले यतिबेला नेपाललाई पनि श्रीलंका बनाउने रणनीति अपनाउन थालेको छ । कश्मिरमा अधिकार माग्ने जनतालाई गोलीले भुट्ने भारतले नेपालको मधेस मामिलामा राखेको चासो नेपालमाथि &lsquo;तमिल डक्टि्रन&rsquo;को पुनः प्रयोग हो ।</p>\r\n\r\n<p>तर, नेपाललाई श्रीलंका बनाउने प्रयासमा लागेको भारतले के बुझेको हुनुपर्छ भने नेपाल सिक्किमजस्तो बन्दैन, न त कश्मिर नै बन्न सक्छ । विगतमा नेपाल भुटान बन्ने खतरा थियो -यद्यपि अहिले पनि यो खतरा पूरै टरिसकेको छैन) । भारतको पछिल्लो नाकाबन्दीले नेपाल अब भुटानजस्तो भारतको &lsquo;संरक्षित राष्ट्र&rsquo; बन्ने खतरा टर्दै गएको छ ।</p>\r\n\r\n<p>भारतले भुटान, श्रीलंका र नेपालमा गर्दै आएको प्रयोग केही मिल्दोजुल्दो र फरक प्रकृतिका छन् ।</p>\r\n\r\n<p><strong>नेपाल कस्तो बन्ला ?</strong><br />\r\n<br />\r\nभारतले नेपालमाथि थालेको अवरोध अब कहाँ पुगेर टुंगिएला ? भारतीय अनलाइनका कतिपय प्रतिक्रियाहरु पढ्दा भारतले अब नेपालमाथि कब्जा गर्ने अवसर आएको टिप्पणीसमेत भेटिन थालेका छन् ।</p>\r\n\r\n<p>तर, गोर्खालीहरुका बारेमा भारतलाई राम्रोसँग जानकारी छ । ठूलो देश भए पनि सैयौं वर्ष बेलायतको उपनिवेश बनेको भारतलाई नेपालले बेलायतसँग लडेको लडाइँ पनि थाहा छ । कप्तान किनलकलाई सिन्धुलीबाट खेदेको पनि थाहा छ । जंगबहादुरले लखनऊ कब्जा गरेको पनि थाहा छ ।</p>\r\n\r\n<p><a href=\"http://www.onlinekhabar.com/wp-content/uploads/2015/10/Nepali-youth-protest-against-Indian-interface-10.jpg\"><img alt=\"Nepali youth protest against Indian interface (10)\" src=\"http://www.onlinekhabar.com/wp-content/uploads/2015/10/Nepali-youth-protest-against-Indian-interface-10.jpg\" style=\"height:397px; width:650px\" /></a></p>\r\n\r\n<p>अहिले पनि बेलायती सेनामा गोरखालीहरु कार्यरत छन् । स्वयं भारतीय सेनामा पनि गोर्खालीलाई भारतीयहरुले &lsquo;बहादुर सिपाही&rsquo; मान्ने गरेकै छन् । (यद्यपि भारतले नेपालका मधेसी समुदायलाई आफ्नो सेनामा प्रवेश नदिई विभेदपूर्ण व्यवहार गर्दै आएको छ ।)</p>\r\n\r\n<p>नेपालीहरुले पृथ्वीनारायणका पालादेखि नै गुरिल्ला युद्ध लड्न जानेका छन् भन्ने पनि भारतलाई थाहा छ । यहाँ राष्ट्रवादी कम्युनिष्टहरु र राजावादी-राष्ट्रवादीहरु दुबै छन् भन्ने पनि उसलाई ज्ञात छ । र, भियतनामले अमेरिलाई युद्धमा जितेको पनि भारतीयहरुले पक्कै पढेका छन् । भारतमै नेपालीभाषीको संख्या र ताकत पनि उसलाई जानकारी छ । भुटानबाट नेपालीलाई खेद्न सक्ने भारतले आफ्नै देशबाट नेपालीलाई खेद्न सकिँदैन भन्ने राम्रैसँग बुझेको छ ।</p>\r\n\r\n<p>त्यसैले अब नेपाल कस्तो बन्ला ? कश्मिर, सिक्किम, श्रीलंका या भुटान ? यो प्रश्नको जवाफ सहज छ- नेपाल नेपालैजस्तो बन्नेछ । गोर्खाजस्तो बन्ने छ ।</p>\r\n\r\n<p>बरु अहिलेको खाँचो चाहिँ के देखिन्छ भने भारतले नेपालीहरुलाई लोकतन्त्र र सहमतिको पाठ पढाउनुभन्दा पहिले एकपटक जम्मु कश्मिरतर्फ फर्केर हेर्ने हो कि ? के हामी नेपालीले भारतलाई सम्झाउनुपर्ने भएको हो ? काश्मिरको समस्या राजनीतिक तरिकाले वार्ता, सम्वाद एवं आपसी समझारीको माध्यमले समाधान गर, बल प्रयोग गरेर समस्या समाधान हुँदैन ।</p>\r\n\r\n<p>मोदी जी, सुरक्षा परिषदको स्थायी सदस्यता दाबी गर्ने भारतले किन राष्ट्र संघले भनेजसरी कश्मिरका जनताको भाग्य र भविश्य आफैं फैसला गर्न दिइरहेको छैन ? त्यसैले एकपटक दिल्लीले नेपालतिर होइन, आर्य सभ्यताको थातथलो कश्मिरतिर पो र्फकने हो कि ?</p>\r\n\r\n<p>बुद्धको भूमिमा ज्ञानको अभाव छैन र विचारको पनि खडेरी छैन । आउनुहोस् मोदीजी, हामी नेपालीहरु कश्मिरको समस्या कसरी समाधान गर्न सकिन्छ भनेर भारतलाई सिकाउन र सघाउन तयार छौं । हिन्दु-मुसलमान, कसरी आपसमा मिलेर बस्न सकिन्छ भनेर भारतलाई सिकाउन हामी नेपालीहरु पुरै सक्षम छौं ।</p>\r\n', '2015-10-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topadd`
--

CREATE TABLE `topadd` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topadd`
--

INSERT INTO `topadd` (`add_id`, `add_contact`, `add_name`, `add_link`, `add_doc`, `add_rate`, `add_page`, `add_added`, `add_added_for`, `add_status`) VALUES
(1, '9804552309', 'Hero Honda', 'http://www.facebook.com', '4c3ee542d8dcbae2a4df37abaaf50bf9.gif', '1000', '0', '2015-09-16', 2, 1),
(2, '9804552309', 'Suzuki', 'https://facebook.com', '5021a380c5873536981d4fe17da980cf.gif', '2000', '0', '2015-09-16', 12, 1),
(3, '9804552309', 'Toyota', 'http://facebook.com', '938b6fbca9ae85cc492450bffa82983b.gif', '2500', '0', '2015-09-16', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video_gallery`
--

CREATE TABLE `video_gallery` (
  `gall_id` int(8) NOT NULL,
  `gall_name` varchar(250) COLLATE utf8_bin NOT NULL,
  `gall_desc` text COLLATE utf8_bin NOT NULL,
  `gall_created` date NOT NULL,
  `gall_status` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `video_gallery`
--

INSERT INTO `video_gallery` (`gall_id`, `gall_name`, `gall_desc`, `gall_created`, `gall_status`) VALUES
(2, 'Lok geet', 'Lok geet', '2015-09-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `w3bdeveloper_media`
--

CREATE TABLE `w3bdeveloper_media` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `thumbnailPath` text NOT NULL,
  `fileName` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `w3bdeveloper_media`
--

INSERT INTO `w3bdeveloper_media` (`id`, `type`, `path`, `thumbnailPath`, `fileName`, `date`) VALUES
(1, 'image', 'media_files/jared-leto-rock-climbing-skills.jpg', 'media_files/jared-leto-rock-climbing-skills.jpg', 'jared-leto-rock-climbing-skills.jpg', '2015-09-07 16:30:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`),
  ADD UNIQUE KEY `about_name` (`about_name`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD UNIQUE KEY `add_name` (`add_name`),
  ADD KEY `add_id` (`add_id`),
  ADD KEY `add_id_2` (`add_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `contact_links`
--
ALTER TABLE `contact_links`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gall_id`);

--
-- Indexes for table `gall_images`
--
ALTER TABLE `gall_images`
  ADD PRIMARY KEY (`gall_img_id`);

--
-- Indexes for table `gall_videos`
--
ALTER TABLE `gall_videos`
  ADD PRIMARY KEY (`gall_vid_id`);

--
-- Indexes for table `intial_setup`
--
ALTER TABLE `intial_setup`
  ADD PRIMARY KEY (`setup_id`),
  ADD UNIQUE KEY `setup_id` (`setup_id`);

--
-- Indexes for table `ip_track`
--
ALTER TABLE `ip_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jacket_advertisement`
--
ALTER TABLE `jacket_advertisement`
  ADD UNIQUE KEY `add_name` (`add_name`),
  ADD KEY `add_id` (`add_id`),
  ADD KEY `add_id_2` (`add_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD UNIQUE KEY `news_id` (`news_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `onpageadd`
--
ALTER TABLE `onpageadd`
  ADD UNIQUE KEY `add_name` (`add_name`),
  ADD KEY `add_id` (`add_id`),
  ADD KEY `add_id_2` (`add_id`);

--
-- Indexes for table `page_track`
--
ALTER TABLE `page_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`seo_id`),
  ADD UNIQUE KEY `seo_id` (`seo_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `service_topic` (`service_name`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topadd`
--
ALTER TABLE `topadd`
  ADD UNIQUE KEY `add_name` (`add_name`),
  ADD KEY `add_id` (`add_id`),
  ADD KEY `add_id_2` (`add_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `video_gallery`
--
ALTER TABLE `video_gallery`
  ADD PRIMARY KEY (`gall_id`);

--
-- Indexes for table `w3bdeveloper_media`
--
ALTER TABLE `w3bdeveloper_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `add_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `contact_links`
--
ALTER TABLE `contact_links`
  MODIFY `c_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gall_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gall_images`
--
ALTER TABLE `gall_images`
  MODIFY `gall_img_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `gall_videos`
--
ALTER TABLE `gall_videos`
  MODIFY `gall_vid_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ip_track`
--
ALTER TABLE `ip_track`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;
--
-- AUTO_INCREMENT for table `jacket_advertisement`
--
ALTER TABLE `jacket_advertisement`
  MODIFY `add_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `onpageadd`
--
ALTER TABLE `onpageadd`
  MODIFY `add_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `page_track`
--
ALTER TABLE `page_track`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1701;
--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `seo_id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `staff_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `topadd`
--
ALTER TABLE `topadd`
  MODIFY `add_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `video_gallery`
--
ALTER TABLE `video_gallery`
  MODIFY `gall_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `w3bdeveloper_media`
--
ALTER TABLE `w3bdeveloper_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
