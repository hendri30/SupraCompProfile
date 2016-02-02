-- phpMyAdmin SQL Dump
-- version 3.5.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2016 at 10:27 AM
-- Server version: 5.5.47-cll
-- PHP Version: 5.4.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `supra_db`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

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
(15, 'reza', 'reza@yahoo.com', 'content', 'test', '2016-01-14 10:47:35'),
(16, 'hendri', 'hendri@gmail.com', 'contect', 'lorem ipsum dolor sit amet', '2016-01-15 09:48:59'),
(17, 'resdv', 'mail@google.com', 'safsfaa', 'sfsafsafasfasffafassaf', '2016-01-15 11:24:37');

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
('m160105_101845_user', 1453172184),
('m160105_101858_level', 1453172184),
('m160121_090629_translate_source', 1453694551),
('m160121_090636_translate_result', 1453694551);

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
(2, 'News 02', '01-12-2016-09-57-35_743591_meeting.jpg', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>', '2016-01-06 11:22:37', '2016-01-12 15:57:35', '', ''),
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
  `thumb_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `key`, `meta_tag`, `meta_desc`, `name`, `content`, `thumb_image`) VALUES
(12, 'Features', '', '', 'Our Features', '<p><strong>Suprabakti Mandiri, PT.</strong> management have and uphold the commitment to safety, occupational health for employees in every form of work activity, be it in the field/operation or in the office. This is evidenced by his MANDATORY every employee in the field doing Induction Safety, Safety Talk every morning before work activities, conduct periodic health examinations of employees each year (Medical Check Up), requires that PPE is used in every activity of work, the replacement of PPE regularly.</p>\r\n\r\n<p><span id="result_box" lang="en" tabindex="-1"><strong><span title="SUPRA SAFETY COMMITMENTS\r\n">SUPRA SAFETY Commitments</span></strong><br />\r\n<span title="Mewujudkan Lingkungan Kerja yang Aman Tanpa Potensi Bahaya\r\n">Realising Safe Working Environment Without Potential Dangers</span><br />\r\n<span title="(Achieving Work Safe Environtment with Zero Incident)\r\n">(Achieving Safe Work Environment with Zero Incident)</span></span></p>\r\n\r\n<ol>\r\n	<li>SAFETY BE A PART OF LIFE AND CULTURE WE WORK TOGETHER\r\n	<ul>\r\n		<li>Mutual reminder of the importance of safety</li>\r\n		<li>Safety is a shared responsibility</li>\r\n		<li>Work procedures and safety standards is a benchmark in every job.</li>\r\n		<li>Training and mentoring safety and dikembbangkan implemented on an ongoing basis.</li>\r\n		<li>The working environment clean and tidy part of safety.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Do not tolerate OF POTENTIAL DANGER</li>\r\n	<li>SAFETY a barometer of success AN OCCUPATION AND BUSINESS</li>\r\n	<li>WORK WITH SAFE WILL CREATE A POSITIVE PSYCHOLOGICAL CONDITION FOR EVERY BUSINESS WORK AND FAMILY</li>\r\n	<li>LEADERS AT ALL LEVELS TO BE MODELS OF SAFETY</li>\r\n	<li>SAFETY IS PART OF THE PERFORMANCE ASSESSMENT WORK</li>\r\n	<li>POTENTIAL HAZARD HAVE REPORTED AND PREVENTED as early as possible</li>\r\n	<li>ENSURE WE ALWAYS WORK ENVIRONMENT IN SAFE CONDITIONS</li>\r\n	<li>FACILITIES AND INFRASTRUCTURE WORK MUST BE IN ACCORDANCE WITH THE STANDARD SAFETY</li>\r\n	<li>AUDIT / INSPECTION SAFETY SAFETY IS A TOOL TO MEASURE SUCCESS</li>\r\n</ol>\r\n', '01-11-2016-02-38-12_624389_01-08-2016-05-18-26_180755_front_1.png'),
(21, 'Services', '', '', 'Our Services', '<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/maintenance.jpg" style="max-height: 120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_conveyor_maintenance">Conveyor&nbsp;Maintenance</a></h4>\n\n<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="100ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/overland.jpg" style="max-height: 120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_overland_belt_installation_belt_change_out">Overland Belt Installation &amp; Belt Change Out</a></h4>\n\n<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/lagging.jpg" style="max-height: 120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_pulley_lagging">Pulley Lagging</a></h4>\n\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. &nbsp;REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/beltrepair.jpg" style="max-height: 120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_belt_repair">Belt Repair</a></h4>\n\n<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/beltclamp.jpg" style="max-height: 120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_belt_clamp">Belt Clamp</a></h4>\n\n<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="500ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/surfaceprotection.jpg" style="max-height: 120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_surface_protection">Surface Protection</a></h4>\n\n<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking&nbsp; large&nbsp; seawater&nbsp; intake pipe,&nbsp; large storage tanks, slurry pipeline, relining of FGD.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->', '01-12-2016-08-05-10_839599_01-08-2016-05-07-11_750152_logo.png'),
(23, 'About', '', '', 'About Us', '<p>For more than 25 years, Supra has served the bulk material handling needs of conveyor belt maintenance. We bring in conveyor innovation in belt conveyor services, starting as belt splicers now we offer complete services for conveyor maintenances. Our breadth and depth of experiences strengthens our understanding of your needs, allowing us to organized all aspects of your outsourcing objectives.</p>\n\n<p>We apply the best technology and methodology for safe, reliable and productive conveyor operations.</p>\n\n<p>We set up key performance metric and benchmarking to let you measure our performance. Our metric include not only the productivity but also our safety behavior and awareness.</p>\n\n<p>&ldquo;Supra is the first conveyor belt maintenance and industrial lining company in Indonesia operate under ISO 9000 quality system&rdquo;.</p>\n\n<p>Supra operates throughout Indonesia servicing mining, cement, power plant, port facilities, steel mill, fertilizer, pulp and paper, mineral processing and other industrials plants.</p>\n\n<p>Our expertise in conveyor maintenance give us the ability to execute complete turnkey projects from installation of overland conveyor belt, splicing, commissioning and maintaining the systems.</p>\n\n<p>We can customized our service to include just the assistance you need, from advising and supervision, conveyor audit and site survey, preventive maintenance to operation and maintenance where we take full ownership of operation and maintenance of the conveying systems. We have experience with a variety of contractual agreements, including lump-sum and turkey provision.</p>\n\n<p>We provide complete range of products for:</p>\n\n<div class="row">\n<ul>\n	<li>conveyor belt maintenance</li>\n	<li>conveyor components</li>\n	<li>conveyor drive</li>\n	<li>conveyor safety devices</li>\n	<li>conveyor belt rip detection</li>\n	<li>wear and corrosion protection</li>\n	<li>crushing and screening</li>\n	<li>ship mooring and berthings</li>\n</ul>\n</div>\n', '01-14-2016-09-52-01_261260_supra copy.jpg'),
(24, 'service_conveyor_maintenance', 'Services', '', 'Conveyor Maintenance', '<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\r\n\r\n<p>Supra develop BeltcarePRO belt management software to manage the maintenance activities, establish historical data and provide useful analysis to plant engineers.</p>\r\n\r\n<p>The latest version of BeltcarePRO software is an&nbsp; &quot;on-line&quot; monitoring of the conveyor belt maintenance activities.</p>\r\n\r\n<p>The BeltcarePRO&reg;&nbsp; ver 3.1 include the following features:</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Daily, weekly and monthly schedule maintenance,</li>\r\n	<li>Equipment report and components report, lubrication schedule, to do list.</li>\r\n	<li>Cover rubber measurement &ndash; estimation belt life, cost per ton of conveyor belt, future planning of buying conveyor belt</li>\r\n	<li>Useful SOP/JSA and forms related to belt maintenance works it can be customizes to suit field needs. The SOPs/Forms include: belt splicing and repair, pulley lagging, belt tracking, belt installation, idlers inspection, etc.</li>\r\n	<li>Trouble shootings guideline</li>\r\n	<li>Conveyor Belt Basic Training module</li>\r\n	<li>Conveyor Safety Training module</li>\r\n</ul>\r\n</div>\r\n\r\n<p>COVER THICKNESS MONITORING BENEFIT :</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Behavior of material flow, chute flow correction to let materials fall at centre of belt.</li>\r\n	<li>Wear pattern - each conveyor - even they carry the same materials - will show different wear pattern due to drop high, uniformity of lump-sizes, capacity, speed, usage of conveyor auxiliary equipment (chute design, belt cleaner, skirting)</li>\r\n	<li>Comparison of cover rubber quality</li>\r\n	<li>Comparison of manufacturer quality</li>\r\n	<li>Procurement planning - minimize inventory</li>\r\n</ul>\r\n</div>\r\n', '01-18-2016-05-15-39_297058_maintenance.jpg'),
(25, 'service_overland_belt_installation_belt_change_out', 'Services', '', 'Overland Belt Installation & Belt Change Out', '<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia. The underground crushing and conveying expansion project if fully developed will be the largest of its kind (block cave mines) in the world with the DMLZ stage 1 being 1 of 5 phases which is estimated for full total completion by 2020 for all 5 stages. The belt installation involved the controlled lowering of 1,829mm wide ST5400 down a decline of 15% (8 deg) angle x 1,250mtrs long from the top head end via both twin hydraulically and pneumatic type braking systems with dynamic forces up to 40 ton.</p>\r\n\r\n<p>In total over 8,600mtrs of belt was installed via controlled braked lowering method. Due to space constraints belt reels of 192mtrs long x 26 Tons could only be accommodated. There are total 47 splices with 4.9 mtr splice length.</p>\r\n\r\n<p>The recent change-out 12.8km of C-26 overland conveyor belt at Bontang Coal Terminal. The C-26 is conveying coal at 3,700 t/h travelling at 7 .2 m /s conveying coal from the stock pile to the coal loading system.&nbsp; The 17 rolls of new belt to be pre-spliced and flake-out in 2 s tacks and pull in one continuous length in 4 days. At the same time the belt winder reeling old belts into empty belt reels. The project was completed in 30 hours ahead schedule with no accident.</p>\r\n', '01-18-2016-07-12-55_733917_beltrepair.jpg'),
(26, 'service_pulley_lagging', 'Services', '', 'Pulley Lagging', '<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt.&nbsp; REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning. With its innovative rubber to ceramic construction, the tile layout and profile design with the ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth, REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application.</p>\n\n<p>Experienced technician perform grooving works.</p>\n\n<p>This pulley is for Overland Conveyor of 26km c to c distance. Pulley size diameter 1.8mtr x 1300mm. Supra refurbish the pulley by changing new shaft, balancing alignment and new Remagrip lagging.</p>\n\n<p>Supra utilizing the latest rubber extrusion technology&nbsp; in&nbsp; hot vulcanized rubber lagging.&nbsp; The rubber is extruded in form of strip and apply directly onto the pulley. The worm rubber strip is stitched by hydraulic controlled stitching arm to ensure optimum bonding and blisters free rubber lagging.</p>\n\n<p>Supra provide autoclaved Vulcanizing Lagging using Rema Tip Top REMACLAVE lagging material.</p>', '01-18-2016-08-25-21_810760_lagging.jpg'),
(27, 'service_belt_repair', 'Services', '', 'Belt Repair', '<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n\r\n<p>Spot damages are commons on belt surface. It started from a small punctures. It is essential to repair such punctures to prevent the enlargement of damage. Once the damage getting bigger and moisture get into carcass, the repair become a major work and sometime lead to cut and splice works. Using a portable Almex Spotter and Rema TipTop belt repair kits, the damage can be fix within one hour and will prevent from the belt from major shutdown.</p>\r\n\r\n<p>Rema Strip repair applied on longitudinal cover rubber damages caused by material entrapment at tail pulley.</p>\r\n', '01-18-2016-08-37-41_342315_beltrepair.jpg'),
(28, 'service_belt_clamp', 'Services', '', 'Belt Clamp', '<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes. with a checker plate finishing applied to the gripping&nbsp; face&nbsp; of&nbsp; the&nbsp; beams&nbsp; together with&nbsp; the&nbsp; screw jacks applying in excess of 6 tones, maximum grip is assured.</p>\n\n<p>The clams have been extensively&nbsp; tested on a tensile test bed capable of 200 tones line pull. Test result proved&nbsp; that&nbsp; a Sure Grip&nbsp;&nbsp; belt&nbsp; clamp&nbsp; on&nbsp; a&nbsp; wide 1000kN belt will handle 5 tons line pull comfortably while a conventional belt clamp will start showing slippage with a 2 tons line pull.</p>\n\n<p>The Heavy Duty models are fitted with ratchet winches at both ends to enable easy raising of the lower beam even&nbsp; when&nbsp; the&nbsp; belt&nbsp; is&nbsp; in&nbsp; a trough position.</p>\n', '01-18-2016-08-40-49_857452_beltclamp.jpg'),
(29, 'service_surface_protection', 'Services', '', 'Surface Protection', '<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking &nbsp;large &nbsp;seawater &nbsp;intake pipe, &nbsp;large storage tanks, slurry pipeline, relining of FGD.</p>\n\n<p>We uses proven polymer and composite materials to combat various kind of surface wears power generation, petrochemical and mineral processing.</p>\n\n<p>This seawater circulating pipe is for Rembang powerplant at Central Java. Supra provide internal rubber lining and external coal-tar epoxy coating.</p>\n\n<p>Rubber Lining for process tank for Petrochemical plant.</p>\n\n<p>Combination of Rubber and Ceramic tile lining to combat extreme wear at copper mines.</p>\n\n<p>Rubber Lining Launder for Copper Concentrator.</p>\n\n<p>Rubber Lining tank lorry for HcL and Caustic soda transporters.</p>\n\n<p>Supra apply Rema Tip Top Coroflake lining material for Flue Gas Desulphurization unit for coal fire powerplant. The FGD unit is operate in highly corrosive environment and at elevated temperature.</p>\n\n<p>We provide the turn-key scope from scaffolding, blasting, flake application, final inspection and commissioning. We also maintain the plant after project handover.</p>\n\n<p>Polyurea spray at SAG mill using Rema Tip Top REMACOAT. We keep of stock Remacoat material, and with our own polyurea spray machine that can be mobilized to job site in short notice.</p>\n\n<p>Chimney in cement plant lined with FlueGardTM 225 - high temperature corrosion protection system, highly resistant to acid and alkali attacks, and fine particle dust abrasion up to 225&deg;C (437&deg;F) continuous exposure, with short term excursions to 300&deg;C (1572&deg;F).</p>\n\n<p>Supra carrying out flake coating for Paiton III coal fire powerplant seawater and FGD piping system. Total area approx 2,900m2. Coating material Rema Tip Top Coroflake24 Flake Lining system. There are total of 42 pipe spool and elbows, 0 2800mm x 12,000mm length.</p>\n', '01-18-2016-08-48-05_914276_surfaceprotection.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner_logo`
--

CREATE TABLE IF NOT EXISTS `tbl_partner_logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `category` varchar(7) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_partner_logo`
--

INSERT INTO `tbl_partner_logo` (`id`, `name`, `file_name`, `link`, `category`, `active`) VALUES
(1, 'PT. Freeport Indonesia', '01-06-2016-10-18-07_591613_freeport.png', '', 'Partner', 1),
(2, 'ALMEX', '01-06-2016-10-18-40_217163_almex.png', '', 'Product', 1),
(3, 'ANTAM', '01-06-2016-10-19-23_725921_antam.png', '', 'Partner', 1),
(4, 'PT Newmont Nusa Tenggara', '01-06-2016-10-19-46_360015_NTT.png', '', 'Partner', 1),
(5, 'VALE', '01-06-2016-10-20-04_734893_vale.png', '', 'Partner', 1),
(6, 'PT Semen Indonesia', '01-06-2016-10-28-00_782592_si.png', '', 'Partner', 1),
(7, 'PT. Indocement, Tbk', '01-26-2016-05-57-14_469940_indocement.png', '', 'Partner', 1),
(8, 'PT. Wijaya Karya', '01-26-2016-06-00-13_365844_wika.png', '', 'Partner', 1),
(9, 'PT. Bukit Asam', '01-26-2016-06-00-47_914855_ptba.png', '', 'Partner', 1),
(10, 'Rema Tip Top', '01-28-2016-03-47-08_849182_rtt.png', '', 'Product', 1),
(11, 'Martin', '01-28-2016-03-50-23_765991_martin-white.png', '', 'Product', 1),
(12, 'Continental', '01-28-2016-03-50-09_862304_contitech-white.png', '', 'Product', 1),
(13, 'Trelleborg', '01-28-2016-03-48-41_351562_trelleborg.png', '', 'Product', 1),
(14, 'Lordbrand', '01-28-2016-03-49-02_697052_lorbrand.png', '', 'Product', 1),
(15, 'McLanahan', '01-28-2016-03-49-22_89782_mclanahan.png', '', 'Product', 1),
(16, 'MLT', '01-28-2016-03-49-35_944305_mlt.png', '', 'Product', 1);

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
  `sequence` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `caption`, `qoutes`, `file_name`, `active`, `sequence`) VALUES
(8, 'We Generate Prime Team', 'Supra commitment to use Best Prime Team', '01-29-2016-02-33-48_277311_supra-slider3.jpg', 1, 3),
(9, 'It''s About Team', '', '01-29-2016-01-16-06_518569_slider-supra2.jpg', 1, 2),
(10, 'It''s About People', 'PT. Suprabakti Mandiri', '01-18-2016-03-07-57_22094_slider.jpg', 1, 1);

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
(1, 'Soesanto Houtama', '01-06-2016-09-55-09_250762_gm.png', 'Sales General Manager', 1, 3),
(2, 'Jimmy Hadinata', '01-06-2016-09-58-47_92651_jimmy.png', 'Co-Founder', 1, 1),
(3, 'Ricky Djendakang', '01-06-2016-09-59-25_944274_ricky.png', 'Product Sales Manager', 1, 4),
(5, 'Susanti', '01-12-2016-03-07-43_44281_03.jpg', 'General Manager', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_translate_result`
--

CREATE TABLE IF NOT EXISTS `tbl_translate_result` (
  `id` int(11) NOT NULL,
  `language` varchar(16) NOT NULL DEFAULT '',
  `translation` text,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_translate_result`
--

INSERT INTO `tbl_translate_result` (`id`, `language`, `translation`) VALUES
(1, 'id', '<p>Lebih dari sekedar Layanan</p>\r\n'),
(2, 'id', '<p>Cek Sekarang!</p>\r\n'),
(3, 'id', '<p>Tentang Kami</p>\r\n'),
(4, 'id', '<p>Video Perkenalan</p>\r\n'),
(5, 'id', '<p>Garis Bisnis</p>\r\n'),
(6, 'id', '<p>Lebih dari 25 tahun Supra telah melayani penanganan masalah kebutuhan material besar dari perawatan conveyor belt. Kami memberikan inovasi conveyor dalam pelayanan conveyor belt, bermula dari sebagai penyambung pita transpor (belt splicer) sekarang kami menawarkan pelayanan menyeluruh untuk perawatan conveyor. Pengalaman luas dan mendalam kami menguatkan pemahaman kami akan kebutuhan anda, yang memungkinkan kami untuk mengatur seluruh aspek dari tujuan alih daya (outsourcing) anda.</p>\r\n\r\n<p>Kami menerapkan teknologi dan metode terbaik untuk keamanan, kehandalan, dan keproduktivitasan dari pengoperasian conveyor.</p>\r\n\r\n<p>Kami mengadakan kunci metrik performa dan pembandingan agar anda dapat mengukur performa kami. Metrik kami meliputi tidak hanya keproduktivitasannya akan tetapi juga etika keselamatan dan kesadaran kami.</p>\r\n\r\n<p>&ldquo;Supra adalah perusahaan lapisan industri dan perawatan conveyor belt pertama di Indonesia yang beroperasi di bawah sistem kualitas ISO 9000&rdquo;.</p>\r\n\r\n<p>Supra beroperasi diseluruh wilayah Indonesia dengan melayani penambangan, penyemenan, pembangkit tenaga listrik, fasilitas pelabuhan, pabrik baja, pupuk, pabrik bubur kayu dan kertas, emprosesan mineral tambang, dan pabrik &ndash; pabrik industri lainnya.</p>\r\n\r\n<p>Kehandalan kami dalam perawatan conveyor memberikan kami kemampuan untuk menjalankan proyek opsir penjara secara menyeluruh dari pemasangan conveyor belt darat, penyambungan, pengawasan, dan pemeliharaan sistem.</p>\r\n\r\n<p>Kami dapat merubah pelayanan kami untuk hanya meliputi bantuan yang anda butuhkan, dari bimbingan dan pengawasan, audit conveyor dan survey lapangan, perawatan pencegahan sampai dengan operasi, dan perawatan yang mana kami melakukan pengoperasian dan perawatan secara penuh dari sistem conveyor. Kami telah berpengalaman dengan berbagai perjanjian kontrak, yang meliputi perjanjian dengan pembayaran besar dimuka dan perjanjian dengan ketentuan yang buruk.</p>\r\n\r\n<p>Kami menyediakan berbagai macam produk menyeluruh untuk:</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Perawatan conveyor belt</li>\r\n	<li>Komponen-komponen conveyor</li>\r\n	<li>Conveyor Drive</li>\r\n	<li>Alat pengaman conveyor</li>\r\n	<li>Alat detektor sobekan pada conveyor belt</li>\r\n	<li>Baju dan pelindung dari korosi</li>\r\n	<li>Penggempuran dan penyaringan</li>\r\n	<li>Penambatan dan pelabuhan kapal</li>\r\n</ul>\r\n</div>'),
(7, 'id', '<p>Pelajari Selengkapnya</p>\r\n'),
(8, 'id', '<p>Fitur Kami</p>'),
(9, 'id', '<h3><strong>Perawatan Conveyor</strong></h3>\r\n\r\n<p>Perawatan belt conveyor telah menjadi kunci pelayanan yang disediakan oleh Supra selama bertahun-tahun. Memulai dari penyedia dari belt splicing sampai dengan pelayanan perawatan conveyor total, layanan conveyor total kami meliputi perawatan pencegahan conveyor belt, perawatan penghenti dan katrol, perawatan sistem kendali, monitoring kondisi, pengukuran ketebalan cover belt, dan pemeriksaan belt untuk memonitor kondisi yang telah mati dan mendeteksi pergerakan sambungan.</p>\r\n\r\n<h3><strong>Pemasangan Belt di Darat dan Penggantian Belt</strong></h3>\r\n\r\n<p>Supra telah dipercaya untuk melakukan pemasangan dan penggabungan dari proyek Freeport DMLZ tahap 1. Sisitem conveyor yang mempunyai kemiringan 6.500 tph yang turun ke dalam tanah adalah salah satu sistem yang paling menantang dan merupakan belt berkekuatan tertinggi di Indonesia.</p>\r\n\r\n<h3><strong>Penutup Katrol</strong></h3>\r\n\r\n<p>Remagrip CK &ndash; penutup keramik memberikan cengkraman yang kuat antara katrol dan belt. REMAGRIP CK-X sangat berpegas, tahan, sangat fleksibel dan dapat membersihkan sendiri. Dengan karet inovatifnya untuk konstruksi keramik, tampilan ubin dan desain profil dengan ubin keramik tersesun secara individual dan tertempel sepenuhnya dalam karet dan berhubungan dengan jalur air ekstra lebar dan meningkatkan kedalaman kerja. REMAGRIP CK-X dibuat khusus untuk menangani kebutuhan paling menantang dalam penerapan conveyor material.</p>'),
(10, 'id', '<p>Layanan&nbsp;Kami</p>\r\n'),
(11, 'id', '<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/maintenance.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/conveyor_maintenance">Perawatan Conveyor</a></h4>\r\n\r\n<p>Perawatan belt conveyor telah menjadi kunci pelayanan yang disediakan oleh Supra selama bertahun-tahun. Memulai dari penyedia dari belt splicing sampai dengan pelayanan perawatan conveyor total.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="100ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/overland.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/overland_belt_installation_belt_change_out">Pemasangan Belt di Darat dan Penggantian Belt</a></h4>\r\n\r\n<p>Supra telah dipercaya untuk melakukan pemasangan dan penggabungan dari proyek Freeport DMLZ tahap 1. Sisitem conveyor yang mempunyai kemiringan 6.500 tph yang turun ke dalam tanah adalah salah satu sistem yang paling menantang dan merupakan belt berkekuatan tertinggi di Indonesia.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/lagging.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/pulley_lagging">Penutup Katrol</a></h4>\r\n\r\n<p>Remagrip CK &ndash; penutup keramik memberikan cengkraman yang kuat antara katrol dan belt. REMAGRIP CK-X sangat berpegas, tahan, sangat fleksibel dan dapat membersihkan sendiri.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltrepair.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_repair">Perbaikan Belt</a></h4>\r\n\r\n<p>Conveyor belt darat kawat baja sepanjang 26 km mengalami sobekan membujur. penambangan tersebut menyetujui proposal Supra untuk menggunakan metode perbaikan ujung atas pendinginan Rema. Potongan perbaikan ujung atas rema 150 mm dan 220 mm dengan SC-2000 digunakan untuk memperbaiki belt tersebut.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltclamp.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_clamp">Kepitan Belt</a></h4>\r\n\r\n<p>Kepitan belt dengan pegangan yang kuat dapat menerapkan tekanan yang positif pada jumlah yang melebihi 6 ton yang secara langsung terhadap luas permukaan dari belt apapun sementara mempertahankan kemampuan mendorong pada jumlah yang melebihi 10 ton dan ketika dihubungkan secara beurdua-dua maka akan dapat melebihi 16 ton.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="500ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/surfaceprotection.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/surface_protection">Perlindungan Permukaan</a></h4>\r\n\r\n<p>Supra adalah kontraktor untuk pekerjaan berlini karet yang terkemuka dengan penyerapan in-house kami. Kami mampu untuk melakukan pengambilan pipa laut yang luas, tanki penyimpanan luas, pipa lumpur, pelapisan ulang FGD.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->'),
(12, 'id', '<p>Partner Kami</p>\n'),
(13, 'id', '<p>Produk&nbsp;Kami</p>\r\n'),
(14, 'id', '<p>Tim Kami</p>\r\n'),
(15, 'id', '<p>Berita Terkini</p>\r\n'),
(16, 'id', '<p> Dengan pukulan dari atas-maul Ahab terlempar dari kepala baja tombak, dan kemudian menyerahkan kepada pasangan batang besi panjang yang tersisa, memintanya terus tegak, tanpa yang menyentuh dari kepala baja tombak, dan kemudian menyerahkan kepada pasangan batang besi panjang yang tersisa. tanpa yang menyentuh off baja tanpa nya menyentuh off baja </ p>'),
(17, 'id', '<p> Dengan pukulan dari atas-maul Ahab terlempar dari kepala baja tombak, dan kemudian menyerahkan kepada pasangan batang besi panjang yang tersisa, memintanya terus tegak, tanpa yang menyentuh dari kepala baja tombak, dan kemudian menyerahkan kepada pasangan batang besi panjang yang tersisa. tanpa yang menyentuh off baja tanpa nya menyentuh off baja </ p>'),
(18, 'id', '<p> Dengan pukulan dari atas-maul Ahab terlempar dari kepala baja tombak, dan kemudian menyerahkan kepada pasangan batang besi panjang yang tersisa, memintanya terus tegak, tanpa yang menyentuh dari kepala baja tombak, dan kemudian menyerahkan kepada pasangan batang besi panjang yang tersisa. tanpa yang menyentuh off baja tanpa nya menyentuh off baja </ p>'),
(19, 'id', '<p>Terhubung</p>\r\n'),
(20, 'id', '<p>Info Kontak</p>\r\n'),
(21, 'id', '<p>Alamat</p>\r\n'),
(22, 'id', '<p>Telepon</p>\r\n'),
(23, 'id', '<p>Perawatan Conveyor</p>\r\n'),
(24, 'id', '<p>Perawatan belt conveyor telah menjadi kunci pelayanan yang disediakan oleh Supra selama bertahun-tahun. Memulai dari penyedia dari belt splicing sampai dengan pelayanan perawatan conveyor total, layanan conveyor total kami meliputi perawatan pencegahan conveyor belt, perawatan penghenti dan katrol, perawatan sistem kendali, monitoring kondisi, pengukuran ketebalan cover belt, dan pemeriksaan belt untuk memonitor kondisi yang telah mati dan mendeteksi pergerakan sambungan.</p>\n\n<p>Supra menciptakan perangkat lunak pengatur belt yang disebut BeltcarePRO untuk mengatur kegiatan perawatan, membuat jejak data, dan menyediakan analisis yang berguna bagi ahli mesin pabrik.</p>\n\n<p>Versi terbatu dari perangkaat lunak BeltcarePRO adalah monitoring &ldquo;online&rdquo; dari aktivitas perawatan conveyor belt.</p>\n\n<p>BeltcarePRO&reg; versi 3.1 meliputi fitur berikut ini:</p>\n\n<ul>\n	<li>Jadwal perawatan harian, mingguan, dan bulanan.</li>\n	<li>Laporan perlengkapan dan komponen, jadwal pemberian minyak, dafar hal yang harus dikerjakan.</li>\n	<li>Pengukuran karet pelindung - perkiraan nyawa dari belt, dampak per ton dari conveyor belt, rencana di masa depan tentang pembelian conveyor belt.</li>\n	<li>SOP/SJA yang berguna dan bentuk-bentuk yang berhubungan dengan pekerjaan perawatan dari belt, bentuk tersebut dapat diubah untuk menyesuaikan dengan lapangan yang dibutuhkan. SOP/bentuk tersebut meliputi: belt splicing dan pembenahannya, katrol penahan, tracking belt, pemasangan belt, inspeksi penahan, dsb.</li>\n	<li>Tata cara pemecahan masalah.</li>\n	<li>Modul pelatihan pemula conveyor belt.</li>\n	<li>Modul pelatihan keamanan conveyor.</li>\n</ul>\n\n<p>Keuntungan dari monitoring ketebahan pelindung:</p>\n\n<ul>\n	<li>Pembenaran jalan dari aliran - tempat jatuh dari material untuk membuat material jatuh tepat di tengah belt.</li>\n	<li>Pola pemasangan dari setiap conveyor yang bahkan membawa material yang sama akan dapat menunjukkan perbedaan pola pemasanngan yang dapat dikarenakan oleh tingkat ketinggia, ukuran gumpalan yang seragam, kapasitas, kecepatan, ataupun penggunaan dari perlengkapan bantuan conveyor (desain titik jatuh, pembersih belt, penyusupan).</li>\n	<li>Perbandingan kualitas antar karet penutup.</li>\n	<li>Pebandingan kualitas antar pabrik pembuat.</li>\n	<li>Perencanaan usaha untuk meminimalisir inventaris.</li>\n</ul>\n\n<p>Mesin penggulung belt Supra mampu dalam menggulung 50 ton belt dan dapat digunakan sebagai pendorong belt untuk mendorong nya dari sistem. Mesin penggulung Belt Supra tersedia dalam persewaan atau dikontrak untuk melaksanakan penggantian belt.</p>'),
(26, 'id', '<p>Pemasangan Belt di Darat dan Penggantian Belt</p>\n'),
(27, 'id', '<p>Supra telah dipercaya untuk melakukan pemasangan dan penggabungan dari proyek Freeport DMLZ tahap 1. Sisitem conveyor yang mempunyai kemiringan 6.500 tph yang turun ke dalam tanah adalah salah satu sistem yang paling menantang dan merupakan belt berkekuatan tertinggi di Indonesia. &nbsp;Proyek penggempuran dan pelebaran conveyor bawah tanah apabila hal tersebut dioperasikan secara penuh akan menjadi yang terbesar antar sejenisnya (penambangan gua tertutup) di dunia dengan tahap 1 DMLZ mejadi 1 dari 5 tahapan yang diperkirakan akan selesai sepenuhnya pada tahun 2020 untuk seluruh tahapannya. Pemasangan belt meliputi pengendalian penurunan lebar dari 1.829 mm ST5400 turun di bawah 15% (8 derajat) sudut x 1.250 meter panjang dari ujung atas kepala melalui kedua hidrolik kembar dan sistem rem angin dengan tenaga dinamis sampai dengan 40 ton.</p>\n\n<p>Secara keseluruhan lebih dari 8.600 meter belt dipasang melalui metode penurunan rem terkontrol, dikarenakan keterdesakan ruang belt tergulung sepanjang 192 meter x 26 ton yang dapat terakomodasi. Ada sekitar 47 sambungan dengan 4,9 panjang sambungan secara keseluruhan.</p>\n\n<p>Penggantian 12,8 km dari C-26 conveyor belt darat baru &ndash; baru ini di terminal arang Bontang. C-26 mengonvey arang pada 3.700 ton per jam yang berpindah pada 7,2 m/s dari penimbunan arang ke sistem pemuatan arang. 17 roll belt yang baru akan di sambungkan dan terjonjot dalam 2 tumpukan dan ditarikdalam kesatuan panjang yang berkelanjutan dalam 4 hari. Pada waktu yang bersamaan, penggulung gulungan belt menggulung belt lama ke dalam gulungan belt kosong. Proyek tersebut selesai dalam 30 jam lebih awal dari jadwal tanpa kecelakaan apapun.</p>\n'),
(28, 'id', '<p>Kepitan Belt</p>\r\n'),
(29, 'id', '<p>Kepitan belt dengan pegangan yang kuat dapat menerapkan tekanan yang positif pada jumlah yang melebihi 6 ton yang secara langsung terhadap luas permukaan dari belt apapun sementara mempertahankan kemampuan mendorong pada jumlah yang melebihi 10 ton dan ketika dihubungkan secara beurdua-dua maka akan dapat melebihi 16 ton dengan sebuah pelat pemeriksa hasil akhir yang tertera pada wajah pegangan dari balk bersama dengan sekrup yang terpasang untuk melebihi 6 ton, pegangan yang maksimal akan terjamin.</p>\n\n<p>Kepitan tersebut telah teruji secara intensif pada percobaan daya rentang tempat yang mampu mendorong 200 ton garis dorong. Hasil percobaan membuktikan bahwa kepitan belt dengan pegangan yang kuat selebar 1000kN belt akan mengatasi 5 ton garis dorong secara leluasa sementara kepitan belt kenvensional akan mulai memperlihatkan keselipan dengan 2 ton garis dorong.</p>\n\n<p>Model tugas berat cocok dengan kerekan roda bergigi searah pada kedua ujungnyauntuk memdahkan peningkatan dari balok bagian bawah bahkan ketika belt tersebut berada dalam posisi susah.</p>\n'),
(30, 'id', '<p>Penutup Katrol</p>\r\n'),
(31, 'id', '<p>Remagrip CK &ndash; penutup keramik memberikan cengkraman yang kuat antara katrol dan belt. REMAGRIP CK-X sangat berpegas, tahan, sangat fleksibel dan dapat membersihkan sendiri. Dengan karet inovatifnya untuk konstruksi keramik, tampilan ubin dan desain profil dengan ubin keramik tersesun secara individual dan tertempel sepenuhnya dalam karet dan berhubungan dengan jalur air ekstra lebar dan meningkatkan kedalaman kerja. REMAGRIP CK-X dibuat khusus untuk menangani kebutuhan paling menantang dalam penerapan conveyor material.</p>\r\n\r\n<p>Teknisi yang berpengalaman melakukan kerja pengaluran.</p>\r\n\r\n<p>Katrol ini untuk conveyor darat 26 km dari jarak c ke c. ukuran katrol 1,8 meter x 1300 mm. Supra memperbaharui katrol tersebut dengan mengganti lubang yang baru, yang menyeimbangkan penjajaran dan penutup Remagrip yang baru.</p>\r\n\r\n<p>Supra menggunakan teknologi terbaru dalam menerapkan penutup panas menggunakan mesin pembentuk potongan karet. Karet tersebut tertekan dalam bentuk potongan dan diterapkan secara langsung pada katrol. Potongan karet cacing terjahit oleh lengan penjahit hidrolik terkontrol untuk memastikan ikatan yang optimal dan penutup katrol yang bebas lecet.</p>\r\n\r\n<p>Supra memberikan penutup autoklaf tervulkanisir menggunakan ujung atas rema REMACLAVE penutup material.</p>\r\n'),
(32, 'id', '<p>Perbaikan Belt</p>\r\n'),
(33, 'id', '<p>Conveyor belt darat kawat baja sepanjang 26 km mengalami sobekan membujur. penambangan tersebut menyetujui proposal Supra untuk menggunakan metode perbaikan ujung atas pendinginan Rema. Potongan perbaikan ujung atas rema 150 mm dan 220 mm dengan SC-2000 digunakan untuk memperbaiki belt tersebut.</p>\n\n<p>Bintik kerusakan sering terjadi pada perbukaan belt. Hal tersebut bermula dari kebucoran kecil. Hal tersebut penting untuk diperbaiki untuk mencegah perluasan kerusakan. Saat kerusakan tersebut membesar dan kelembaban membuatnya menjadi bangkai, perbaikannya menjadi pekerjaan yang besar dan terkadang berujung pada kegiatan pemotongan dan penyambungan. Dengan menggunakan penunjuk almex portable dan peralatan perbaikan belt ujung atas rema, kerusakan tersebut dapat diperbaiki dalam satu jam dan akan mencegah belt tersebut dari pemberhentian yang besar.</p>\n\n<p>Potongan perbaikan rema diterapkan pada kerusakan penutup karet membujur yang disebabkan oleh ketersendakan material pada ekor katrol</p>\n'),
(34, 'id', '<p>Perlindungan Permukaan</p>\r\n'),
(35, 'id', '<p>Supra adalah kontraktor untuk pekerjaan berlini karet yang terkemuka dengan penyerapan in-house kami. Kami &nbsp;mampu untuk melakukan pengambilan pipa laut yang luas, tanki penyimpanan luas, pipa &nbsp;lumpur, pelapisan ulang FGD.</p>\n\n<p>Kami menggunakan polimer yang terbukti dan material komposit untuk menahan aneka macam pembangkit listrik yang ada di permukaan, petrokimia dan proses mineral.</p>\n\n<p>Pipa sirkulasi di laut ini adalah untuk pembangkit listrik di Rembang, Jawa Tengah. Supra menyediakan lapisan karet internal dan lapisan pelindung pelekat batu bara-eksternal.</p>\n\n<p>Pelapisan karet untuk pemrosesan tanki untuk pembangkit listrik Petrokimia.</p>\n\n<p>Kombinasi antara karet dan keramik yang melapisi perlindungan ekstra di pertambangan tembaga.</p>\n\n<p>Pencucian Lapisan karet untuk Konsentrator Tembaga Angkutan lapisan karet untuk HcL dan transportasi soda kaustik.</p>\n\n<p>Supra menggunakan material lapisan Coroflake Tip Top Rema untuk unit Desulfurasi pipa asap gas untuk pembangkit listrik tenaga api dan batu bara. Unit FGD sedang beroperasi di lingkungan tinggi korosi dan pada temperatur yang tinggi.</p>\n\n<p>Kami menyediakan lingkup putar-kunci dari perancah, ledakan, aplikasi serpihan, inspeksi final, dan pemesanan. Kami juga mempertahankan pembangkit setelah proyek diserahkan.</p>\n\n<p>Penyemprotan poliurea pada penggiling SAG menggunakan Rema Tip Top REMACOAT. Kami menjaga stok bahan Remacoat dan dengan semprotan mesin poliurea kami dapat dipindahkan di tempat kerja dengan pemberitahuan singkat.</p>\n\n<p>Cerobong asap dalam lapisan pembangkit semen dengan FLueGard TM 225- sistem perlindungan korosi suhu tinggi, sangat tahan serangan asam dan alkali, dan abrasi debu partikel halus sampai 225 derajat Celcius (437 derajat Fahrenheit) paparan yang berlanjut,dengan ekskursi jangka pendek hingga 300 derajat Celcius (1572 derajat Fahrenheit).</p>\n\n<p>Supra membawa lapisan serpihan untuk pembangkit listrik Paiton III api dan bara di laut dan sistem pipa FGS. Area total sekitar 2.900 m2. Sistem lapisan serpihan Rema Tip Top Cornflake24. Terdapat total 42 pipa kumparan.Panjang&nbsp; O 2800mm x 12.000 mm.</p>\n'),
(39, 'id', '<p>Lihat Selengkapnya</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_translate_source`
--

CREATE TABLE IF NOT EXISTS `tbl_translate_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `tbl_translate_source`
--

INSERT INTO `tbl_translate_source` (`id`, `category`, `message`) VALUES
(1, 'More than just a Service', 'More than just a Service'),
(2, 'Lets Check It Out!', 'Lets Check It Out!'),
(3, 'pages_name/23', 'About Us'),
(4, 'Video Introduction', 'Video Introduction'),
(5, 'Line Of Bussines', 'Line Of Bussines'),
(6, 'pages_content/23', '<p>For more than 25 years, Supra has served the bulk material handling needs of conveyor belt maintenance. We bring in conveyor innovation in belt conveyor services, starting as belt splicers now we offer complete services for conveyor maintenances. Our breadth and depth of experiences strengthens our understanding of your needs, allowing us to organized all aspects of your outsourcing objectives.</p>\n\n<p>We apply the best technology and methodology for safe, reliable and productive conveyor operations.</p>\n\n<p>We set up key performance metric and benchmarking to let you measure our performance. Our metric include not only the productivity but also our safety behavior and awareness.</p>\n\n<p>&ldquo;Supra is the first conveyor belt maintenance and industrial lining company in Indonesia operate under ISO 9000 quality system&rdquo;.</p>\n\n<p>Supra operates throughout Indonesia servicing mining, cement, power plant, port facilities, steel mill, fertilizer, pulp and paper, mineral processing and other industrials plants.</p>\n\n<p>Our expertise in conveyor maintenance give us the ability to execute complete turnkey projects from installation of overland conveyor belt, splicing, commissioning and maintaining the systems.</p>\n\n<p>We can customized our service to include just the assistance you need, from advising and supervision, conveyor audit and site survey, preventive maintenance to operation and maintenance where we take full ownership of operation and maintenance of the conveying systems. We have experience with a variety of contractual agreements, including lump-sum and turkey provision.</p>\n\n<p>We provide complete range of products for:</p>\n\n<div class="row">\n<ul>\n	<li>conveyor belt maintenance</li>\n	<li>conveyor components</li>\n	<li>conveyor drive</li>\n	<li>conveyor safety devices</li>\n	<li>conveyor belt rip detection</li>\n	<li>wear and corrosion protection</li>\n	<li>crushing and screening</li>\n	<li>ship mooring and berthings</li>\n</ul>\n</div>\n'),
(7, 'Learn More', 'Learn More'),
(8, 'pages_name/12', 'Our Features'),
(9, 'pages_content/12', '<h3><strong>Conveyor Maintenance</strong></h3>\r\n\r\n<p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\r\n\r\n<h3><strong>Overland Belt Installation &amp; Belt Change Out</strong></h3>\r\n\r\n<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia.</p>\r\n\r\n<h3><strong>Pulley Lagging</strong></h3>\r\n\r\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning. With it&#39;s innovative rubber to ceramic construction, the tile layout and profile design with ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth. REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application</p>\r\n'),
(10, 'pages_name/21', 'Our Services'),
(11, 'pages_content/21', '<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/maintenance.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/conveyor_maintenance">Conveyor&nbsp;Maintenance</a></h4>\n\n<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="100ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/overland.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/overland_belt_installation_belt_change_out">Overland Belt Installation &amp; Belt Change Out</a></h4>\n\n<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/lagging.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/pulley_lagging">Pulley Lagging</a></h4>\n\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. &nbsp;REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltrepair.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_repair">Belt Repair</a></h4>\n\n<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltclamp.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_clamp">Belt Clamp</a></h4>\n\n<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="500ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/surfaceprotection.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/surface_protection">Surface Protection</a></h4>\n\n<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking&nbsp; large&nbsp; seawater&nbsp; intake pipe,&nbsp; large storage tanks, slurry pipeline, relining of FGD.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->'),
(12, 'Our Partners', 'Our Partners'),
(13, 'Our Product', 'Our Product'),
(14, 'Meet The Team', 'Meet The Team'),
(15, 'Latest Blogs', 'Latest Blogs'),
(16, 'news/1', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>\n'),
(17, 'news/2', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>'),
(18, 'news/3', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>\r\n'),
(19, 'Get in Touch', 'Get in Touch'),
(20, 'Contact Info', 'Contact Info'),
(21, 'Address', 'Address'),
(22, 'Phone', 'Phone'),
(23, 'pages_name/24', 'Conveyor Maintenance'),
(24, 'pages_content/24', '<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\n\n<p>Supra develop BeltcarePRO belt management software to manage the maintenance activities, establish historical data and provide useful analysis to plant engineers.</p>\n\n<p>The latest version of BeltcarePRO software is an&nbsp; &quot;on-line&quot; monitoring of the conveyor belt maintenance activities.</p>\n\n<p>The BeltcarePRO&reg;&nbsp; ver 3.1 include the following features:</p>\n\n<div class="row">\n<ul>\n	<li>Daily, weekly and monthly schedule maintenance,</li>\n	<li>Equipment report and components report, lubrication schedule, to do list.</li>\n	<li>Cover rubber measurement &ndash; estimation belt life, cost per ton of conveyor belt, future planning of buying conveyor belt</li>\n	<li>Useful SOP/JSA and forms related to belt maintenance works it can be customizes to suit field needs. The SOPs/Forms include: belt splicing and repair, pulley lagging, belt tracking, belt installation, idlers inspection, etc.</li>\n	<li>Trouble shootings guideline</li>\n	<li>Conveyor Belt Basic Training module</li>\n	<li>Conveyor Safety Training module</li>\n</ul>\n</div>\n\n<p>COVER THICKNESS MONITORING BENEFIT :</p>\n\n<div class="row">\n<ul>\n	<li>Behavior of material flow, chute flow correction to let materials fall at centre of belt.</li>\n	<li>Wear pattern - each conveyor - even they carry the same materials - will show different wear pattern due to drop high, uniformity of lump-sizes, capacity, speed, usage of conveyor auxiliary equipment (chute design, belt cleaner, skirting)</li>\n	<li>Comparison of cover rubber quality</li>\n	<li>Comparison of manufacturer quality</li>\n	<li>Procurement planning - minimize inventory</li>\n</ul>\n</div>\n'),
(26, 'pages_name/25', 'Overland Belt Installation & Belt Change Out'),
(27, 'pages_content/25', '<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia. The underground crushing and conveying expansion project if fully developed will be the largest of its kind (block cave mines) in the world with the DMLZ stage 1 being 1 of 5 phases which is estimated for full total completion by 2020 for all 5 stages. The belt installation involved the controlled lowering of 1,829mm wide ST5400 down a decline of 15% (8 deg) angle x 1,250mtrs long from the top head end via both twin hydraulically and pneumatic type braking systems with dynamic forces up to 40 ton.</p>\r\n\r\n<p>In total over 8,600mtrs of belt was installed via controlled braked lowering method. Due to space constraints belt reels of 192mtrs long x 26 Tons could only be accommodated. There are total 47 splices with 4.9 mtr splice length.</p>\r\n\r\n<p>The recent change-out 12.8km of C-26 overland conveyor belt at Bontang Coal Terminal. The C-26 is conveying coal at 3,700 t/h travelling at 7 .2 m /s conveying coal from the stock pile to the coal loading system.&nbsp; The 17 rolls of new belt to be pre-spliced and flake-out in 2 s tacks and pull in one continuous length in 4 days. At the same time the belt winder reeling old belts into empty belt reels. The project was completed in 30 hours ahead schedule with no accident.</p>\r\n'),
(28, 'pages_name/28', 'Belt Clamp'),
(29, 'pages_content/28', '<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes. with a checker plate finishing applied to the gripping&nbsp; face&nbsp; of&nbsp; the&nbsp; beams&nbsp; together with&nbsp; the&nbsp; screw jacks applying in excess of 6 tones, maximum grip is assured.</p>\n\n<p>The clams have been extensively&nbsp; tested on a tensile test bed capable of 200 tones line pull. Test result proved&nbsp; that&nbsp; a Sure Grip&nbsp;&nbsp; belt&nbsp; clamp&nbsp; on&nbsp; a&nbsp; wide 1000kN belt will handle 5 tons line pull comfortably while a conventional belt clamp will start showing slippage with a 2 tons line pull.</p>\n\n<p>The Heavy Duty models are fitted with ratchet winches at both ends to enable easy raising of the lower beam even&nbsp; when&nbsp; the&nbsp; belt&nbsp; is&nbsp; in&nbsp; a trough position.</p>\n'),
(30, 'pages_name/26', 'Pulley Lagging'),
(31, 'pages_content/26', '<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt.&nbsp; REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning. With its innovative rubber to ceramic construction, the tile layout and profile design with the ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth, REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application.</p>\n\n<p>Experienced technician perform grooving works.</p>\n\n<p>This pulley is for Overland Conveyor of 26km c to c distance. Pulley size diameter 1.8mtr x 1300mm. Supra refurbish the pulley by changing new shaft, balancing alignment and new Remagrip lagging.</p>\n\n<p>Supra utilizing the latest rubber extrusion technology&nbsp; in&nbsp; hot vulcanized rubber lagging.&nbsp; The rubber is extruded in form of strip and apply directly onto the pulley. The worm rubber strip is stitched by hydraulic controlled stitching arm to ensure optimum bonding and blisters free rubber lagging.</p>\n\n<p>Supra provide autoclaved Vulcanizing Lagging using Rema Tip Top REMACLAVE lagging material.</p>'),
(32, 'pages_name/27', 'Belt Repair'),
(33, 'pages_content/27', '<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n\r\n<p>Spot damages are commons on belt surface. It started from a small punctures. It is essential to repair such punctures to prevent the enlargement of damage. Once the damage getting bigger and moisture get into carcass, the repair become a major work and sometime lead to cut and splice works. Using a portable Almex Spotter and Rema TipTop belt repair kits, the damage can be fix within one hour and will prevent from the belt from major shutdown.</p>\r\n\r\n<p>Rema Strip repair applied on longitudinal cover rubber damages caused by material entrapment at tail pulley.</p>\r\n'),
(34, 'pages_name/29', 'Surface Protection'),
(35, 'pages_content/29', '<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking &nbsp;large &nbsp;seawater &nbsp;intake pipe, &nbsp;large storage tanks, slurry pipeline, relining of FGD.</p>\n\n<p>We uses proven polymer and composite materials to combat various kind of surface wears power generation, petrochemical and mineral processing.</p>\n\n<p>This seawater circulating pipe is for Rembang powerplant at Central Java. Supra provide internal rubber lining and external coal-tar epoxy coating.</p>\n\n<p>Rubber Lining for process tank for Petrochemical plant.</p>\n\n<p>Combination of Rubber and Ceramic tile lining to combat extreme wear at copper mines.</p>\n\n<p>Rubber Lining Launder for Copper Concentrator.</p>\n\n<p>Rubber Lining tank lorry for HcL and Caustic soda transporters.</p>\n\n<p>Supra apply Rema Tip Top Coroflake lining material for Flue Gas Desulphurization unit for coal fire powerplant. The FGD unit is operate in highly corrosive environment and at elevated temperature.</p>\n\n<p>We provide the turn-key scope from scaffolding, blasting, flake application, final inspection and commissioning. We also maintain the plant after project handover.</p>\n\n<p>Polyurea spray at SAG mill using Rema Tip Top REMACOAT. We keep of stock Remacoat material, and with our own polyurea spray machine that can be mobilized to job site in short notice.</p>\n\n<p>Chimney in cement plant lined with FlueGardTM 225 - high temperature corrosion protection system, highly resistant to acid and alkali attacks, and fine particle dust abrasion up to 225&deg;C (437&deg;F) continuous exposure, with short term excursions to 300&deg;C (1572&deg;F).</p>\n\n<p>Supra carrying out flake coating for Paiton III coal fire powerplant seawater and FGD piping system. Total area approx 2,900m2. Coating material Rema Tip Top Coroflake24 Flake Lining system. There are total of 42 pipe spool and elbows, 0 2800mm x 12,000mm length.</p>\n'),
(38, 'ESelect2.select2', 'No matches found'),
(39, 'Read More', 'Read More'),
(40, 'News', 'News'),
(41, 'news_content/2', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>'),
(42, 'news_title/2', 'News 02'),
(43, 'More than just a Services', 'More than just a Service');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level_id` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level_id`, `last_login`) VALUES
(1, 'admin', '$2a$10$hkSnAd8h2oc/CgMT5h02L.4mFVygy4EmuAXk0fa8vYnu4dsA0VNXK', 1, '2016-02-02 09:47:27'),
(2, 'operator', '$2a$10$DaTEYN/GyyTgGHwZOA6cc.8o6VgU9OHVJtQSurxWz5S24d8y2Jw5C', 2, '2016-02-02 09:57:42');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_translate_result`
--
ALTER TABLE `tbl_translate_result`
  ADD CONSTRAINT `FK_tbl_translate_result_tbl_translate_source` FOREIGN KEY (`id`) REFERENCES `tbl_translate_source` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
