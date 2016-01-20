-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2016 at 03:23 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `company_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `name`, `file_name`, `link`) VALUES
(1, 'test', 'test.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

CREATE TABLE IF NOT EXISTS `tbl_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_contacts`
--

INSERT INTO `tbl_contacts` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(1, 'Hendri Nursyahbani', 'hendrinursyahbani@gmail.com', 'Content', 'Lorem ipsum dolor sit amet', '2016-01-06 16:47:38'),
(4, 'Bani', 'bani@gmail.com', 'Content', 'Lorem ipsum dolor sit amet', '2016-01-06 17:01:01'),
(5, 'Guest', 'guest@gmail.com', 'Content', 'Lorem ipsum dolor sit amet', '2016-01-06 17:02:12'),
(6, 'Hendri', 'hendri@gmail.com', 'Test', 'Lorem ipsum dolor sit amet', '2016-01-12 10:29:31'),
(7, 'Tambah', 'tambah@gmail.com', 'tambah', 'tambah', '2016-01-12 10:31:50'),
(11, 'Hendri Nursyahbani', 'hendrinursyahbani@gmail.com', 'Content', 'Lorem ipsum dolor sit amet', '2016-01-14 10:29:01'),
(12, 'Hendri Nursyahbani', 'hendrinursyahbani@gmail.com', 'Content', 'lorem ipsum dolor sit amet', '2016-01-14 10:43:51'),
(13, 'Reza', 'reza@gmail.com', 'test', 'lorem ipsum dolor sit amet', '2016-01-14 10:44:21'),
(14, 'reza', 'reza@gmail.com', 'content', 'test', '2016-01-14 10:46:06'),
(15, 'reza', 'reza@yahoo.com', 'content', 'test', '2016-01-14 10:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE IF NOT EXISTS `tbl_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`id`, `level`) VALUES
(1, 'Administrator'),
(2, 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1451899652),
('m160104_093544_slider', 1451975973),
('m160104_093619_pages', 1451975974),
('m160104_093631_team', 1451975974),
('m160104_093640_partner_logo', 1451975975),
('m160104_093659_comments', 1451975975),
('m160104_093707_news', 1451975975),
('m160104_093715_contacts', 1451975976),
('m160105_101845_user', 1451989538),
('m160105_101858_level', 1451989538);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `meta_tags` text,
  `meta_desc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `title`, `file_name`, `content`, `date_create`, `date_update`, `meta_tags`, `meta_desc`) VALUES
(1, 'News 01', '01-07-2016-02-36-19_759094_csr.jpg', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>\n', '2016-01-06 00:00:00', '2016-01-07 13:47:50', '', ''),
(2, 'News 02', '01-12-2016-09-57-35_743591_meeting.jpg', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>\r\n', '2016-01-06 11:22:37', '2016-01-12 15:57:35', '', ''),
(3, 'News 03', '01-12-2016-10-32-25_67230_03.jpg', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>\r\n', '2016-01-06 11:46:08', '2016-01-12 16:32:25', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(80) DEFAULT NULL,
  `meta_tag` text,
  `meta_desc` text,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `thumb_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `key`, `meta_tag`, `meta_desc`, `name`, `content`, `thumb_image`) VALUES
(12, 'Features', '', '', 'Our Features', '<h3><strong>Conveyor Maintenance</strong></h3>\r\n\r\n<p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\r\n\r\n<h3><strong>Overland Belt Installation &amp; Belt Change Out</strong></h3>\r\n\r\n<p>For more than 25 years, Suprabakti Mandiri have been providing conveyor belt splicing services in Indonesia, establishing high quality and service standart, educating the industries about proper belt splicing. We Continue to invest in humman resources development and the latest technology of vulcanizing equipment.</p>\r\n\r\n<h3><strong>Pulley Lagging</strong></h3>\r\n\r\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning. With it&#39;s innovative rubber to ceramic construction, the tile layout and profile design with ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth. REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application</p>\r\n', '01-11-2016-02-38-12_624389_01-08-2016-05-18-26_180755_front_1.png'),
(21, 'Services', '', '', 'Our Services', '<div class="features">\r\n                    <div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">\r\n                        <div class="media service-box">\r\n                            <div class="pull-left">\r\n                                <img class="img-circle img-thumbnail" src="http://10.36.15.62/SupraCompProfile/images/services/maintenance.jpg" alt="" style="max-height:120px;">\r\n                            </div>\r\n                            <div class="media-body">\r\n                                <h4 class="media-heading">Conveyor Maintenance</h4>\r\n                                <p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--/.col-md-6-->\r\n\r\n                    <div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">\r\n                        <div class="media service-box">\r\n                            <div class="pull-left">\r\n                                <img class="img-circle img-thumbnail" src="http://10.36.15.62/SupraCompProfile/images/services/overland.jpg" alt="" style="max-height:120px;">\r\n                            </div>\r\n                            <div class="media-body">\r\n                                <h4 class="media-heading">Overland Belt Installation &amp; Belt Change Out</h4>\r\n                                <p>For more than 25 years, Suprabakti Mandiri have been providing conveyor belt splicing services in Indonesia, establishing high quality and service standart, educating the industries about proper belt splicing.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--/.col-md-6-->\r\n\r\n                    <div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">\r\n                        <div class="media service-box">\r\n                            <div class="pull-left">\r\n                                <img class="img-circle img-thumbnail" src="http://10.36.15.62/SupraCompProfile/images/services/lagging.jpg" alt="" style="max-height:120px;">\r\n                            </div>\r\n                            <div class="media-body">\r\n                                <h4 class="media-heading">Pulley Lagging</h4>\r\n                                <p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning. </p>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--/.col-md-6-->\r\n                \r\n                    <div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms">\r\n                        <div class="media service-box">\r\n                            <div class="pull-left">\r\n                                <img class="img-circle img-thumbnail" src="http://10.36.15.62/SupraCompProfile/images/services/beltrepair.jpg" alt="" style="max-height:120px;">\r\n                            </div>\r\n                            <div class="media-body">\r\n                                <h4 class="media-heading">Belt Repair</h4>\r\n                                <p>The 26Km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Suprabakti Mandiri to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--/.col-md-6-->\r\n\r\n                    <div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">\r\n                        <div class="media service-box">\r\n                            <div class="pull-left">\r\n                                <img class="img-circle img-thumbnail" src="http://10.36.15.62/SupraCompProfile/images/services/beltclamp.jpg" alt="" style="max-height:120px;">\r\n                            </div>\r\n                            <div class="media-body">\r\n                                <h4 class="media-heading">Belt Clamp</h4>\r\n                                <p>The Sure Grip belt clamp can apply postive pressure in excesss of 6 tones directly to the surface of any belt width while having a pulling ability in excess of 10 tonnes and when linked in tandem can exceed 16 tonnes.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--/.col-md-6-->\r\n\r\n                    <div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">\r\n                        <div class="media service-box">\r\n                            <div class="pull-left">\r\n                                <img class="img-circle img-thumbnail" src="http://10.36.15.62/SupraCompProfile/images/services/surfaceprotection.jpg" alt="" style="max-height:120px;">\r\n                            </div>\r\n                            <div class="media-body">\r\n                                <h4 class="media-heading">Surface Protection</h4>\r\n                                <p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>\r\n                            </div>\r\n                        </div>\r\n                    </div><!--/.col-md-6-->\r\n                </div>', '01-12-2016-08-05-10_839599_01-08-2016-05-07-11_750152_logo.png'),
(23, 'About', '', '', 'About Us', '<p>For more than 25 years, Suprabakti Mandiri has served the bulk material handling needs of conveyor belt maintenances. We bring in conveyor innovation in belt conveyor services, starting as belt&nbsp;splicers,&nbsp;now we offer complete services for conveyor maintenances. Our breadth and depth of exeriences strengthens our understanding of your needs, allowing us to organized all aspects of your outsourcing objectives.</p>\r\n\r\n<p>We Apply the best technology and methodology for safe, realible and productive conveyor operations.</p>\r\n\r\n<p>We set up key performance metric and benchmarking to let you meaasure our performance. Our metric include not only the productivity but also our safety behaviour and awareness.</p>\r\n\r\n<ul>\r\n	<li>Conveyor Belt Maintenance</li>\r\n	<li>Conveyor Components</li>\r\n	<li>Conveyor Drive</li>\r\n	<li>Conveyor Safety Devices</li>\r\n	<li>Conveyor Belt Rip Detection</li>\r\n	<li>Wear and Corrosion protection</li>\r\n	<li>Crushing and Screening</li>\r\n	<li>Ship Mooring and Berthings</li>\r\n</ul>\r\n', '01-14-2016-09-52-01_261260_supra copy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner_logo`
--

CREATE TABLE IF NOT EXISTS `tbl_partner_logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_partner_logo`
--

INSERT INTO `tbl_partner_logo` (`id`, `name`, `file_name`, `link`, `active`) VALUES
(1, 'PT. Freeport Indonesia', '01-06-2016-10-18-07_591613_freeport.png', '', 1),
(2, 'ALMEX', '01-06-2016-10-18-40_217163_almex.png', '', 1),
(3, 'ANTAM', '01-06-2016-10-19-23_725921_antam.png', '', 1),
(4, 'PT Newmont Nusa Tenggara', '01-06-2016-10-19-46_360015_NTT.png', '', 1),
(5, 'VALE', '01-06-2016-10-20-04_734893_vale.png', '', 1),
(6, 'PT Semen Indonesia', '01-06-2016-10-28-00_782592_si.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) DEFAULT NULL,
  `qoutes` text,
  `file_name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `caption`, `qoutes`, `file_name`, `active`) VALUES
(8, 'SLIDER ONE', 'Lorem ipsum dolor sit amet', '01-08-2016-04-22-03_658142_bg2.jpg', 1),
(9, 'SLIDER TWO', 'Lorem ipsum dolor sit amet', '01-08-2016-04-30-33_291320_bg1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE IF NOT EXISTS `tbl_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `sequence` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `name`, `file_name`, `link`, `active`, `sequence`) VALUES
(1, 'Soesanto Houtama', '01-06-2016-09-55-09_250762_gm.png', '', 1, 2),
(2, 'Jimmy Hadinata', '01-06-2016-09-58-47_92651_jimmy.png', '', 1, 1),
(3, 'Ricky Djendakang', '01-06-2016-09-59-25_944274_ricky.png', '', 1, 3),
(5, 'Unknown', '01-12-2016-03-07-43_44281_03.jpg', '', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level_id` int(11) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level_id`, `last_login`) VALUES
(1, 'admin', '$2a$10$tj67lH8ARlwGcFZLKtlxPetOxK2KlRz3Pjh8aqzwF/YyLl0rVpaCe', 1, '2016-01-15 08:26:23'),
(2, 'hendri', '$2a$10$4/6hP/v2Lkk6NjYtSv1WV.1GtIhnKBaYnD3JkX3XiHFzaYognxamq', 2, '2016-01-06 10:11:11'),
(3, 'operator', '$2a$10$I8NbZAKD.f1G5uy2vw8v2u2BnOy1pqpOU98xMP.jClJLmRnG/wgNG', 2, '2016-01-14 16:36:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
