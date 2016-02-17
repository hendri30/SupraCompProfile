-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2016 at 05:55 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
  `id` int(11) NOT NULL,
  `level` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
  `apply_time` int(11) DEFAULT NULL
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
('m160121_090629_translate_source', 1455684895),
('m160121_090636_translate_result', 1455684899);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE IF NOT EXISTS `tbl_news` (
  `id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `meta_tags` text,
  `meta_desc` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `title`, `file_name`, `content`, `date_create`, `date_update`, `meta_tags`, `meta_desc`) VALUES
(1, 'News 01', '01-07-2016-02-36-19_759094_csr.jpg', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>\n', '2016-01-06 00:00:00', '2016-01-07 13:47:50', '', ''),
(2, 'News 02', '01-12-2016-09-57-35_743591_meeting.jpg', '<p>With a blow from the top-maul Ahab knocked off the steel head of the lance, and then handing to the mate the long iron rod remaining, bade him hold it upright, without its touching off the steel head of the lance, and then handing to the mate the long iron rod remaining. without its touching off the steel without its touching off the steel</p>', '2016-01-06 11:22:37', '2016-01-12 15:57:35', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) NOT NULL,
  `key` varchar(80) DEFAULT NULL,
  `meta_tag` text,
  `meta_desc` text,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `thumb_image` varchar(100) DEFAULT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `key`, `meta_tag`, `meta_desc`, `name`, `content`, `thumb_image`, `last_update`) VALUES
(12, 'Features', '', '', 'Our Features', '<p><strong>Suprabakti Mandiri, PT.</strong> management have and uphold the commitment to safety, occupational health for employees in every form of work activity, be it in the field/operation or in the office. This is evidenced by his MANDATORY every employee in the field doing Induction Safety, Safety Talk every morning before work activities, conduct periodic health examinations of employees each year (Medical Check Up), requires that PPE is used in every activity of work, the replacement of PPE regularly.</p>\r\n\r\n<p><span id="result_box" lang="en" tabindex="-1"><strong><span title="SUPRA SAFETY COMMITMENTS\r\n">SUPRA SAFETY Commitments</span></strong><br />\r\n<span title="Mewujudkan Lingkungan Kerja yang Aman Tanpa Potensi Bahaya\r\n">Realising Safe Working Environment Without Potential Dangers</span><br />\r\n<span title="(Achieving Work Safe Environtment with Zero Incident)\r\n">(Achieving Safe Work Environment with Zero Incident)</span></span></p>\r\n\r\n<ol>\r\n	<li>SAFETY BE A PART OF LIFE AND CULTURE WE WORK TOGETHER\r\n	<ul>\r\n		<li>Mutual reminder of the importance of safety</li>\r\n		<li>Safety is a shared responsibility</li>\r\n		<li>Work procedures and safety standards is a benchmark in every job.</li>\r\n		<li>Training and mentoring safety and dikembbangkan implemented on an ongoing basis.</li>\r\n		<li>The working environment clean and tidy part of safety.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Do not tolerate OF POTENTIAL DANGER</li>\r\n	<li>SAFETY a barometer of success AN OCCUPATION AND BUSINESS</li>\r\n	<li>WORK WITH SAFE WILL CREATE A POSITIVE PSYCHOLOGICAL CONDITION FOR EVERY BUSINESS WORK AND FAMILY</li>\r\n	<li>LEADERS AT ALL LEVELS TO BE MODELS OF SAFETY</li>\r\n	<li>SAFETY IS PART OF THE PERFORMANCE ASSESSMENT WORK</li>\r\n	<li>POTENTIAL HAZARD HAVE REPORTED AND PREVENTED as early as possible</li>\r\n	<li>ENSURE WE ALWAYS WORK ENVIRONMENT IN SAFE CONDITIONS</li>\r\n	<li>FACILITIES AND INFRASTRUCTURE WORK MUST BE IN ACCORDANCE WITH THE STANDARD SAFETY</li>\r\n	<li>AUDIT / INSPECTION SAFETY SAFETY IS A TOOL TO MEASURE SUCCESS</li>\r\n</ol>\r\n', '01-11-2016-02-38-12_624389_01-08-2016-05-18-26_180755_front_1.png', '2016-02-11 11:19:38'),
(21, 'Services', '', '', 'Our Services', '<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/maintenance.jpg" style="max-height: 120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_conveyor_maintenance">Conveyor&nbsp;Maintenance</a></h4>\r\n\r\n<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="100ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/overland.jpg" style="max-height: 120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_overland_belt_installation_belt_change_out">Overland Belt Installation &amp; Belt Change Out</a></h4>\r\n\r\n<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/lagging.jpg" style="max-height: 120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_pulley_lagging">Pulley Lagging</a></h4>\r\n\r\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. &nbsp;REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/beltrepair.jpg" style="max-height: 120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_belt_repair">Belt Repair</a></h4>\r\n\r\n<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/beltclamp.jpg" style="max-height: 120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_belt_clamp">Belt Clamp</a></h4>\r\n\r\n<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="500ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://suprabakti.co.id/SupraCompProfile/images/services/surfaceprotection.jpg" style="max-height: 120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://suprabakti.co.id/SupraCompProfile/service_surface_protection">Surface Protection</a></h4>\r\n\r\n<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking&nbsp; large&nbsp; seawater&nbsp; intake pipe,&nbsp; large storage tanks, slurry pipeline, relining of FGD.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->', '01-12-2016-08-05-10_839599_01-08-2016-05-07-11_750152_logo.png', '2016-02-11 11:23:01'),
(23, 'About', '', '', 'About Us', '<p>For more than 25 years, Supra has served the bulk material handling needs of conveyor belt maintenance. We bring in conveyor innovation in belt conveyor services, starting as belt splicers now we offer complete services for conveyor maintenances. Our breadth and depth of experiences strengthens our understanding of your needs, allowing us to organized all aspects of your outsourcing objectives.</p>\r\n\r\n<p>We apply the best technology and methodology for safe, reliable and productive conveyor operations.</p>\r\n\r\n<p>We set up key performance metric and benchmarking to let you measure our performance. Our metric include not only the productivity but also our safety behavior and awareness.</p>\r\n\r\n<p>&ldquo;Supra is the first conveyor belt maintenance and industrial lining company in Indonesia operate under ISO 9000 quality system&rdquo;.</p>\r\n\r\n<p>Supra operates throughout Indonesia servicing mining, cement, power plant, port facilities, steel mill, fertilizer, pulp and paper, mineral processing and other industrials plants.</p>\r\n\r\n<p>Our expertise in conveyor maintenance give us the ability to execute complete turnkey projects from installation of overland conveyor belt, splicing, commissioning and maintaining the systems.</p>\r\n\r\n<p>We can customized our service to include just the assistance you need, from advising and supervision, conveyor audit and site survey, preventive maintenance to operation and maintenance where we take full ownership of operation and maintenance of the conveying systems. We have experience with a variety of contractual agreements, including lump-sum and turkey provision.</p>\r\n\r\n<p>We provide complete range of products for:</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>conveyor belt maintenance</li>\r\n	<li>conveyor components</li>\r\n	<li>conveyor drive</li>\r\n	<li>conveyor safety devices</li>\r\n	<li>conveyor belt rip detection</li>\r\n	<li>wear and corrosion protection</li>\r\n	<li>crushing and screening</li>\r\n	<li>ship mooring and berthings</li>\r\n</ul>\r\n</div>\r\n', '01-14-2016-09-52-01_261260_supra copy.jpg', '2016-02-11 11:23:08'),
(24, 'service_conveyor_maintenance', 'Services', '', 'Conveyor Maintenance', '<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\r\n\r\n<p>Supra develop BeltcarePRO belt management software to manage the maintenance activities, establish historical data and provide useful analysis to plant engineers.</p>\r\n\r\n<p>The latest version of BeltcarePRO software is an&nbsp; &quot;on-line&quot; monitoring of the conveyor belt maintenance activities.</p>\r\n\r\n<p>The BeltcarePRO&reg;&nbsp; ver 3.1 include the following features:</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Daily, weekly and monthly schedule maintenance,</li>\r\n	<li>Equipment report and components report, lubrication schedule, to do list.</li>\r\n	<li>Cover rubber measurement &ndash; estimation belt life, cost per ton of conveyor belt, future planning of buying conveyor belt</li>\r\n	<li>Useful SOP/JSA and forms related to belt maintenance works it can be customizes to suit field needs. The SOPs/Forms include: belt splicing and repair, pulley lagging, belt tracking, belt installation, idlers inspection, etc.</li>\r\n	<li>Trouble shootings guideline</li>\r\n	<li>Conveyor Belt Basic Training module</li>\r\n	<li>Conveyor Safety Training module</li>\r\n</ul>\r\n</div>\r\n\r\n<p>COVER THICKNESS MONITORING BENEFIT :</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Behavior of material flow, chute flow correction to let materials fall at centre of belt.</li>\r\n	<li>Wear pattern - each conveyor - even they carry the same materials - will show different wear pattern due to drop high, uniformity of lump-sizes, capacity, speed, usage of conveyor auxiliary equipment (chute design, belt cleaner, skirting)</li>\r\n	<li>Comparison of cover rubber quality</li>\r\n	<li>Comparison of manufacturer quality</li>\r\n	<li>Procurement planning - minimize inventory</li>\r\n</ul>\r\n</div>\r\n', '01-18-2016-05-15-39_297058_maintenance.jpg', '2016-02-11 11:23:16'),
(25, 'service_overland_belt_installation_belt_change_out', 'Services', '', 'Overland Belt Installation & Belt Change Out', '<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia. The underground crushing and conveying expansion project if fully developed will be the largest of its kind (block cave mines) in the world with the DMLZ stage 1 being 1 of 5 phases which is estimated for full total completion by 2020 for all 5 stages. The belt installation involved the controlled lowering of 1,829mm wide ST5400 down a decline of 15% (8 deg) angle x 1,250mtrs long from the top head end via both twin hydraulically and pneumatic type braking systems with dynamic forces up to 40 ton.</p>\r\n\r\n<p>In total over 8,600mtrs of belt was installed via controlled braked lowering method. Due to space constraints belt reels of 192mtrs long x 26 Tons could only be accommodated. There are total 47 splices with 4.9 mtr splice length.</p>\r\n\r\n<p>The recent change-out 12.8km of C-26 overland conveyor belt at Bontang Coal Terminal. The C-26 is conveying coal at 3,700 t/h travelling at 7 .2 m /s conveying coal from the stock pile to the coal loading system.&nbsp; The 17 rolls of new belt to be pre-spliced and flake-out in 2 s tacks and pull in one continuous length in 4 days. At the same time the belt winder reeling old belts into empty belt reels. The project was completed in 30 hours ahead schedule with no accident.</p>\r\n', '02-03-2016-02-23-39_263563_overland.jpg', '2016-02-11 11:23:23'),
(26, 'service_pulley_lagging', 'Services', '', 'Pulley Lagging', '<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt.&nbsp; REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning. With its innovative rubber to ceramic construction, the tile layout and profile design with the ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth, REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application.</p>\r\n\r\n<p>Experienced technician perform grooving works.</p>\r\n\r\n<p>This pulley is for Overland Conveyor of 26km c to c distance. Pulley size diameter 1.8mtr x 1300mm. Supra refurbish the pulley by changing new shaft, balancing alignment and new Remagrip lagging.</p>\r\n\r\n<p>Supra utilizing the latest rubber extrusion technology&nbsp; in&nbsp; hot vulcanized rubber lagging.&nbsp; The rubber is extruded in form of strip and apply directly onto the pulley. The worm rubber strip is stitched by hydraulic controlled stitching arm to ensure optimum bonding and blisters free rubber lagging.</p>\r\n\r\n<p>Supra provide autoclaved Vulcanizing Lagging using Rema Tip Top REMACLAVE lagging material.</p>\r\n', '01-18-2016-08-25-21_810760_lagging.jpg', '2016-02-11 11:23:32'),
(27, 'service_belt_repair', 'Services', '', 'Belt Repair', '<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n\r\n<p>Spot damages are commons on belt surface. It started from a small punctures. It is essential to repair such punctures to prevent the enlargement of damage. Once the damage getting bigger and moisture get into carcass, the repair become a major work and sometime lead to cut and splice works. Using a portable Almex Spotter and Rema TipTop belt repair kits, the damage can be fix within one hour and will prevent from the belt from major shutdown.</p>\r\n\r\n<p>Rema Strip repair applied on longitudinal cover rubber damages caused by material entrapment at tail pulley.</p>\r\n', '01-18-2016-08-37-41_342315_beltrepair.jpg', '2016-02-11 11:23:41'),
(28, 'service_belt_clamp', 'Services', '', 'Belt Clamp', '<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes. with a checker plate finishing applied to the gripping&nbsp; face&nbsp; of&nbsp; the&nbsp; beams&nbsp; together with&nbsp; the&nbsp; screw jacks applying in excess of 6 tones, maximum grip is assured.</p>\r\n\r\n<p>The clams have been extensively&nbsp; tested on a tensile test bed capable of 200 tones line pull. Test result proved&nbsp; that&nbsp; a Sure Grip&nbsp;&nbsp; belt&nbsp; clamp&nbsp; on&nbsp; a&nbsp; wide 1000kN belt will handle 5 tons line pull comfortably while a conventional belt clamp will start showing slippage with a 2 tons line pull.</p>\r\n\r\n<p>The Heavy Duty models are fitted with ratchet winches at both ends to enable easy raising of the lower beam even&nbsp; when&nbsp; the&nbsp; belt&nbsp; is&nbsp; in&nbsp; a trough position.</p>\r\n', '01-18-2016-08-40-49_857452_beltclamp.jpg', '2016-02-11 11:23:49'),
(29, 'service_surface_protection', 'Services', '', 'Surface Protection', '<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking &nbsp;large &nbsp;seawater &nbsp;intake pipe, &nbsp;large storage tanks, slurry pipeline, relining of FGD.</p>\r\n\r\n<p>We uses proven polymer and composite materials to combat various kind of surface wears power generation, petrochemical and mineral processing.</p>\r\n\r\n<p>This seawater circulating pipe is for Rembang powerplant at Central Java. Supra provide internal rubber lining and external coal-tar epoxy coating.</p>\r\n\r\n<p>Rubber Lining for process tank for Petrochemical plant.</p>\r\n\r\n<p>Combination of Rubber and Ceramic tile lining to combat extreme wear at copper mines.</p>\r\n\r\n<p>Rubber Lining Launder for Copper Concentrator.</p>\r\n\r\n<p>Rubber Lining tank lorry for HcL and Caustic soda transporters.</p>\r\n\r\n<p>Supra apply Rema Tip Top Coroflake lining material for Flue Gas Desulphurization unit for coal fire powerplant. The FGD unit is operate in highly corrosive environment and at elevated temperature.</p>\r\n\r\n<p>We provide the turn-key scope from scaffolding, blasting, flake application, final inspection and commissioning. We also maintain the plant after project handover.</p>\r\n\r\n<p>Polyurea spray at SAG mill using Rema Tip Top REMACOAT. We keep of stock Remacoat material, and with our own polyurea spray machine that can be mobilized to job site in short notice.</p>\r\n\r\n<p>Chimney in cement plant lined with FlueGardTM 225 - high temperature corrosion protection system, highly resistant to acid and alkali attacks, and fine particle dust abrasion up to 225&deg;C (437&deg;F) continuous exposure, with short term excursions to 300&deg;C (1572&deg;F).</p>\r\n\r\n<p>Supra carrying out flake coating for Paiton III coal fire powerplant seawater and FGD piping system. Total area approx 2,900m2. Coating material Rema Tip Top Coroflake24 Flake Lining system. There are total of 42 pipe spool and elbows, 0 2800mm x 12,000mm length.</p>\r\n', '01-18-2016-08-48-05_914276_surfaceprotection.jpg', '2016-02-11 11:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner_logo`
--

CREATE TABLE IF NOT EXISTS `tbl_partner_logo` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `category` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_partner_logo`
--

INSERT INTO `tbl_partner_logo` (`id`, `name`, `file_name`, `link`, `category`, `active`) VALUES
(1, 'PT. Freeport Indonesia', '01-06-2016-10-18-07_591613_freeport.png', '', 'Partner', 1),
(2, 'ALMEX', '01-06-2016-10-18-40_217163_almex.png', '', 'Distributor', 1),
(3, 'ANTAM', '01-06-2016-10-19-23_725921_antam.png', '', 'Partner', 1),
(4, 'PT Newmont Nusa Tenggara', '01-06-2016-10-19-46_360015_NTT.png', '', 'Partner', 1),
(5, 'VALE', '01-06-2016-10-20-04_734893_vale.png', '', 'Partner', 1),
(6, 'PT Semen Indonesia', '01-06-2016-10-28-00_782592_si.png', '', 'Partner', 1),
(7, 'PT. Indocement, Tbk', '01-26-2016-05-57-14_469940_indocement.png', '', 'Partner', 1),
(8, 'PT. Wijaya Karya', '01-26-2016-06-00-13_365844_wika.png', '', 'Partner', 1),
(9, 'PT. Bukit Asam', '01-26-2016-06-00-47_914855_ptba.png', '', 'Partner', 1),
(10, 'Rema Tip Top', '01-28-2016-03-47-08_849182_rtt.png', '', 'Distributor', 1),
(11, 'Martin', '01-28-2016-03-50-23_765991_martin-white.png', '', 'Distributor', 1),
(12, 'Continental', '01-28-2016-03-50-09_862304_contitech-white.png', '', 'Distributor', 1),
(13, 'Trelleborg', '01-28-2016-03-48-41_351562_trelleborg.png', '', 'Distributor', 1),
(14, 'Lordbrand', '01-28-2016-03-49-02_697052_lorbrand.png', '', 'Distributor', 1),
(15, 'McLanahan', '01-28-2016-03-49-22_89782_mclanahan.png', '', 'Distributor', 1),
(16, 'MLT', '01-28-2016-03-49-35_944305_mlt.png', '', 'Distributor', 1),
(17, 'TRU TRAC', '02-11-2016-10-48-32_880318_tru trac logo copy.png', '', 'Distributor', 1),
(18, 'ETEC', '02-11-2016-10-48-45_170758_etec.png', '', 'Distributor', 1),
(19, 'LOCTITE', '02-11-2016-10-48-58_575947_loctite copy.png', '', 'Distributor', 1),
(20, 'VOITH', '02-11-2016-10-49-09_412037_Voith logo.png', '', 'Distributor', 1),
(21, 'ABB', '02-11-2016-10-50-06_331333_ABB_logo.png', '', 'Distributor', 1),
(22, 'GOOD YEAR', '02-11-2016-10-50-27_25880_GY yellow Engineered_Products.png', '', 'Distributor', 1),
(23, 'RINGFEDER', '02-11-2016-10-53-54_852196_RINGFEDER-Logo.png', '', 'Distributor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `qoutes` text,
  `file_name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `sequence` tinyint(1) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `caption`, `qoutes`, `file_name`, `active`, `sequence`, `last_update`) VALUES
(8, 'We Generate Prime Team', 'Supra commitment to use Best Prime Team', '01-29-2016-02-33-48_277311_supra-slider3.jpg', 1, 3, '2016-02-11 11:22:20'),
(9, 'It''s About Team', '', '01-29-2016-01-16-06_518569_slider-supra2.jpg', 1, 2, '2016-02-11 11:22:26'),
(10, 'It''s About People', 'PT. Suprabakti Mandiri', '01-18-2016-03-07-57_22094_slider.jpg', 1, 1, '2016-02-11 11:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE IF NOT EXISTS `tbl_team` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `sequence` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_translate_source`
--

CREATE TABLE IF NOT EXISTS `tbl_translate_source` (
  `id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `level_id` int(11) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level_id`, `last_login`) VALUES
(1, 'admin', '$2a$10$hkSnAd8h2oc/CgMT5h02L.4mFVygy4EmuAXk0fa8vYnu4dsA0VNXK', 1, '2016-02-16 14:08:36'),
(2, 'operator', '$2a$10$DaTEYN/GyyTgGHwZOA6cc.8o6VgU9OHVJtQSurxWz5S24d8y2Jw5C', 2, '2016-02-02 09:57:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_migration`
--
ALTER TABLE `tbl_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `tbl_partner_logo`
--
ALTER TABLE `tbl_partner_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_translate_result`
--
ALTER TABLE `tbl_translate_result`
  ADD PRIMARY KEY (`id`,`language`);

--
-- Indexes for table `tbl_translate_source`
--
ALTER TABLE `tbl_translate_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_contacts`
--
ALTER TABLE `tbl_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_partner_logo`
--
ALTER TABLE `tbl_partner_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_translate_source`
--
ALTER TABLE `tbl_translate_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
