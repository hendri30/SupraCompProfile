-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2016 at 03:52 AM
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
-- Table structure for table `tbl_message`
--

CREATE TABLE IF NOT EXISTS `tbl_message` (
  `id` int(11) NOT NULL,
  `language` varchar(16) NOT NULL DEFAULT '',
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `language`, `translation`) VALUES
(1, 'id', '<h3><strong>Perawatan Conveyor</strong></h3>\r\n\r\n<p>Perawatan belt conveyor telah menjadi kunci pelayanan yang disediakan oleh Supra selama bertahun-tahun. Memulai dari penyedia dari belt splicing sampai dengan pelayanan perawatan conveyor total, layanan conveyor total kami meliputi perawatan pencegahan conveyor belt, perawatan penghenti dan katrol, perawatan sistem kendali, monitoring kondisi, pengukuran ketebalan cover belt, dan pemeriksaan belt untuk memonitor kondisi yang telah mati dan mendeteksi pergerakan sambungan.</p>\r\n\r\n<h3><strong>Pemasangan Belt di Darat dan Penggantian Belt</strong></h3>\r\n\r\n<p>Supra telah dipercaya untuk melakukan pemasangan dan penggabungan dari proyek Freeport DMLZ tahap 1. Sisitem conveyor yang mempunyai kemiringan 6.500 tph yang turun ke dalam tanah adalah salah satu sistem yang paling menantang dan merupakan belt berkekuatan tertinggi di Indonesia.</p>\r\n\r\n<h3><strong>Penutup Katrol</strong></h3>\r\n\r\n<p>Remagrip CK &ndash; penutup keramik memberikan cengkraman yang kuat antara katrol dan belt. REMAGRIP CK-X sangat berpegas, tahan, sangat fleksibel dan dapat membersihkan sendiri. Dengan karet inovatifnya untuk konstruksi keramik, tampilan ubin dan desain profil dengan ubin keramik tersesun secara individual dan tertempel sepenuhnya dalam karet dan berhubungan dengan jalur air ekstra lebar dan meningkatkan kedalaman kerja. REMAGRIP CK-X dibuat khusus untuk menangani kebutuhan paling menantang dalam penerapan conveyor material.</p>\r\n'),
(2, 'id', '<p>Lebih dari 25 tahun Supra telah melayani penanganan masalah kebutuhan material besar dari perawatan conveyor belt. Kami memberikan inovasi conveyor dalam pelayanan conveyor belt, bermula dari sebagai penyambung pita transpor (belt splicer) sekarang kami menawarkan pelayanan menyeluruh untuk perawatan conveyor. Pengalaman luas dan mendalam kami menguatkan pemahaman kami akan kebutuhan anda, yang memungkinkan kami untuk mengatur seluruh aspek dari tujuan alih daya (outsourcing) anda.</p>\r\n\r\n<p>Kami menerapkan teknologi dan metode terbaik untuk keamanan, kehandalan, dan keproduktivitasan dari pengoperasian conveyor.</p>\r\n\r\n<p>Kami mengadakan kunci metrik performa dan pembandingan agar anda dapat mengukur performa kami. Metrik kami meliputi tidak hanya keproduktivitasannya akan tetapi juga etika keselamatan dan kesadaran kami.</p>\r\n\r\n<p>&ldquo;Supra adalah perusahaan lapisan industri dan perawatan conveyor belt pertama di Indonesia yang beroperasi di bawah sistem kualitas ISO 9000&rdquo;.</p>\r\n\r\n<p>Supra beroperasi diseluruh wilayah Indonesia dengan melayani penambangan, penyemenan, pembangkit tenaga listrik, fasilitas pelabuhan, pabrik baja, pupuk, pabrik bubur kayu dan kertas, emprosesan mineral tambang, dan pabrik &ndash; pabrik industri lainnya.</p>\r\n\r\n<p>Kehandalan kami dalam perawatan conveyor memberikan kami kemampuan untuk menjalankan proyek opsir penjara secara menyeluruh dari pemasangan conveyor belt darat, penyambungan, pengawasan, dan pemeliharaan sistem.</p>\r\n\r\n<p>Kami dapat merubah pelayanan kami untuk hanya meliputi bantuan yang anda butuhkan, dari bimbingan dan pengawasan, audit conveyor dan survey lapangan, perawatan pencegahan sampai dengan operasi, dan perawatan yang mana kami melakukan pengoperasian dan perawatan secara penuh dari sistem conveyor. Kami telah berpengalaman dengan berbagai perjanjian kontrak, yang meliputi perjanjian dengan pembayaran besar dimuka dan perjanjian dengan ketentuan yang buruk.</p>\r\n\r\n<p>Kami menyediakan berbagai macam produk menyeluruh untuk:</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Perawatan conveyor belt</li>\r\n	<li>Komponen-komponen conveyor</li>\r\n	<li>Conveyor Drive</li>\r\n	<li>Alat pengaman conveyor</li>\r\n	<li>Alat detektor sobekan pada conveyor belt</li>\r\n	<li>Baju dan pelindung dari korosi</li>\r\n	<li>Penggempuran dan penyaringan</li>\r\n	<li>Penambatan dan pelabuhan kapal</li>\r\n</ul>\r\n</div>\r\n'),
(11, 'id', '<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/maintenance.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading">Perawatan Conveyor</h4>\n\n<p>Perawatan belt conveyor telah menjadi kunci pelayanan yang disediakan oleh Supra selama bertahun-tahun. Memulai dari penyedia dari belt splicing sampai dengan pelayanan perawatan conveyor total.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="100ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/overland.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading">Pemasangan Belt di Darat dan Penggantian Belt</h4>\n\n<p>Supra telah dipercaya untuk melakukan pemasangan dan penggabungan dari proyek Freeport DMLZ tahap 1. Sisitem conveyor yang mempunyai kemiringan 6.500 tph yang turun ke dalam tanah adalah salah satu sistem yang paling menantang dan merupakan belt berkekuatan tertinggi di Indonesia.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/lagging.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading">Penutup Katrol</h4>\n\n<p>Remagrip CK &ndash; penutup keramik memberikan cengkraman yang kuat antara katrol dan belt. REMAGRIP CK-X sangat berpegas, tahan, sangat fleksibel dan dapat membersihkan sendiri.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltrepair.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading">Perbaikan Belt</h4>\n\n<p>Conveyor belt darat kawat baja sepanjang 26 km mengalami sobekan membujur. penambangan tersebut menyetujui proposal Supra untuk menggunakan metode perbaikan ujung atas pendinginan Rema. Potongan perbaikan ujung atas rema 150 mm dan 220 mm dengan SC-2000 digunakan untuk memperbaiki belt tersebut.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltclamp.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading">Kepitan Belt</h4>\n\n<p>Kepitan belt dengan pegangan yang kuat dapat menerapkan tekanan yang positif pada jumlah yang melebihi 6 ton yang secara langsung terhadap luas permukaan dari belt apapun sementara mempertahankan kemampuan mendorong pada jumlah yang melebihi 10 ton dan ketika dihubungkan secara beurdua-dua maka akan dapat melebihi 16 ton.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->\n\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="500ms" data-wow-duration="300ms">\n<div class="media service-box">\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/surfaceprotection.jpg" style="max-height:120px;" /></div>\n\n<div class="media-body">\n<h4 class="media-heading">Perlindungan Permukaan</h4>\n\n<p>Supra adalah kontraktor untuk pekerjaan berlini karet yang terkemuka dengan penyerapan in-house kami. Kami mampu untuk melakukan pengambilan pipa laut yang luas, tanki penyimpanan luas, pipa lumpur, pelapisan ulang FGD.</p>\n</div>\n</div>\n</div>\n<!--/.col-md-6-->');

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
('m160118_080736_source_message', 1453255530),
('m160118_080755_message', 1453255531);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `id` int(11) NOT NULL,
  `key` varchar(80) DEFAULT NULL,
  `meta_tag` text,
  `meta_desc` text,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `thumb_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `key`, `meta_tag`, `meta_desc`, `name`, `content`, `thumb_image`) VALUES
(12, 'Features', '', '', 'Our Features', '<h3><strong>Conveyor Maintenance</strong></h3>\r\n\r\n<p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\r\n\r\n<h3><strong>Overland Belt Installation &amp; Belt Change Out</strong></h3>\r\n\r\n<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia.</p>\r\n\r\n<h3><strong>Pulley Lagging</strong></h3>\r\n\r\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning. With it&#39;s innovative rubber to ceramic construction, the tile layout and profile design with ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth. REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application</p>\r\n', '01-11-2016-02-38-12_624389_01-08-2016-05-18-26_180755_front_1.png'),
(21, 'Services', '', '', 'Our Services', '<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/maintenance.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/conveyor_maintenance">Conveyor Maintenance</a></h4>\r\n\r\n<p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="100ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/overland.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/overland_belt_installation_belt_change_out">Overland Belt Installation &amp; Belt Change Out</a></h4>\r\n\r\n<p>For more than 25 years, Suprabakti Mandiri have been providing conveyor belt splicing services in Indonesia, establishing high quality and service standart, educating the industries about proper belt splicing.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/lagging.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/pulley_lagging">Pulley Lagging</a></h4>\r\n\r\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltrepair.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_repair">Belt Repair</a></h4>\r\n\r\n<p>The 26Km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Suprabakti Mandiri to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltclamp.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_clamp">Belt Clamp</a></h4>\r\n\r\n<p>The Sure Grip belt clamp can apply postive pressure in excesss of 6 tones directly to the surface of any belt width while having a pulling ability in excess of 10 tonnes and when linked in tandem can exceed 16 tonnes.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="500ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/surfaceprotection.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/surface_protection">Surface Protection</a></h4>\r\n\r\n<p>Supra apply Rema Tip Top Coroflake lining material for Flue Gas Desulphurization unit for coal fire powerplant. The FGD unit is operate in highly corrosive environment and at elevated temperature.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->', '01-12-2016-08-05-10_839599_01-08-2016-05-07-11_750152_logo.png'),
(23, 'About', '', '', 'About Us', '<p>For more than 25 years, Supra has served the bulk material handling needs of conveyor belt maintenance. We bring in conveyor innovation in belt conveyor services, starting as belt splicers now we offer complete services for conveyor maintenances. Our breadth and depth of experiences strengthens our understanding of your needs, allowing us to organized all aspects of your outsourcing objectives.</p>\r\n\r\n<p>We apply the best technology and methodology for safe, reliable and productive conveyor operations.</p>\r\n\r\n<p>We set up key performance metric and benchmarking to let you measure our performance. Our metric include not only the productivity but also our safety behavior and awareness.</p>\r\n\r\n<p>&ldquo;Supra is the first conveyor belt maintenance and industrial lining company in Indonesia operate under ISO\r\n9000 quality system&rdquo;.</p>\r\n\r\n<p>Supra operates throughout Indonesia servicing mining, cement, power plant, port facilities, steel mill, fertilizer, pulp and paper, mineral processing and other industrials plants.</p>\r\n\r\n<p>Our expertise in conveyor maintenance give us the ability to execute complete turnkey projects from installation of overland conveyor belt, splicing, commissioning and maintaining the systems.</p>\r\n\r\n<p>We can customized our service to include just the assistance  you need, from advising and supervision, conveyor audit and site survey, preventive maintenance to operation  and  maintenance  where we  take full ownership of operation and maintenance  of the conveying systems. We have experience with a variety of contractual agreements, including lump-sum and turkey provision.</p>\r\n\r\n<p>We provide complete range of products for:</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Conveyor Belt maintenance</li>\r\n	<li>Conveyor Components</li>\r\n	<li>Conveyor Drive</li>\r\n	<li>Conveyor Safety Devices</li>\r\n	<li>Conveyor Belt Rip Detection</li>\r\n	<li>Wear and Corrosion Protection</li>\r\n	<li>Crushing and Screening</li>\r\n	<li>Ship Mooring and Berthings</li>\r\n</ul>\r\n</div>\r\n', '01-14-2016-09-52-01_261260_supra copy.jpg'),
(24, 'Conveyor_Maintenance', '', '', 'Conveyor Maintenance', '<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\n\n<p>Supra develop BeltcarePRO belt management software to manage the maintenance activities, establish historical data and provide useful analysis to plant engineers.</p>\n\n<p>The latest version of BeltcarePRO software is an&nbsp; &quot;on-line&quot; monitoring of the conveyor belt maintenance activities.</p>\n\n<p>The BeltcarePRO&reg;&nbsp; ver 3.1 include the following features:</p>\n\n<div class="row">\n<ul>\n	<li>Daily, weekly and monthly schedule maintenance,</li>\n	<li>Equipment report and components report, lubrication schedule, to do list.</li>\n	<li>Cover rubber measurement &ndash; estimation belt life, cost per ton of conveyor belt, future planning of buying conveyor belt</li>\n	<li>Useful SOP/JSA and forms related to belt maintenance works it can be customizes to suit field needs. The SOPs/Forms include: belt splicing and repair, pulley lagging, belt tracking, belt installation, idlers inspection, etc.</li>\n	<li>Trouble shootings guideline</li>\n	<li>Conveyor Belt Basic Training module</li>\n	<li>Conveyor Safety Training module</li>\n</ul>\n</div>\n\n<p>COVER THICKNESS MONITORING BENEFIT :</p>\n\n<div class="row">\n<ul>\n	<li>Behavior of material flow, chute flow correction to let materials fall at centre of belt.</li>\n	<li>Wear pattern - each conveyor - even they carry the same materials - will show different wear pattern due to drop high, uniformity of lump-sizes, capacity, speed, usage of conveyor auxiliary equipment (chute design, belt cleaner, skirting)</li>\n	<li>Comparison of cover rubber quality</li>\n	<li>Comparison of manufacturer quality</li>\n	<li>Procurement planning - minimize inventory</li>\n</ul>\n</div>\n', '01-18-2016-05-15-39_297058_maintenance.jpg'),
(25, 'Overland_Belt_Installation_Belt_Change_Out', '', '', 'Overland Belt Installation & Belt Change Out', '<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia. The underground crushing and conveying expansion project if fully developed will be the largest of its kind (block cave mines) in the world with the DMLZ stage 1 being 1 of 5 phases which is estimated for full total completion by 2020 for all 5 stages. The belt installation involved the controlled lowering of 1,829mm wide ST5400 down a decline of 15% (8 deg) angle x 1,250mtrs long from the top head end via both twin hydraulically and pneumatic type braking systems with dynamic forces up to 40 ton.</p>\r\n\r\n<p>In total over 8,600mtrs of belt was installed via controlled braked lowering method. Due to space constraints belt reels of 192mtrs long x 26 Tons could only be accommodated. There are total 47 splices with 4.9 mtr splice length.</p>\r\n\r\n<p>The recent change-out 12.8km of C-26 overland conveyor belt at Bontang Coal Terminal. The C-26 is conveying coal at 3,700 t/h travelling at 7 .2 m /s conveying coal from the stock pile to the coal loading system.&nbsp; The 17 rolls of new belt to be pre-spliced and flake-out in 2 s tacks and pull in one continuous length in 4 days. At the same time the belt winder reeling old belts into empty belt reels. The project was completed in 30 hours ahead schedule with no accident.</p>\r\n', '01-18-2016-07-12-55_733917_beltrepair.jpg'),
(26, 'Pulley_Lagging', '', '', 'Pulley Lagging', '<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt.&nbsp; REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning. With its innovative rubber to ceramic construction, the tile layout and profile design with the ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth, REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application.</p>\n\n<p>This pulley is for Overland Conveyor of 26km c to c distance. Pulley size diameter 1.8mtr x 1300mm. Supra refurbish the pulley by changing new shaft, balancing alignment and new Remagrip lagging.</p>\n\n<p>Supra utilizing the latest rubber extrusion technology&nbsp; in&nbsp; hot vulcanized rubber lagging.&nbsp; The rubber is extruded in form of strip and apply directly onto the pulley. The worm rubber strip is stitched by hydraulic controlled stitching arm to ensure optimum bonding and blisters free rubber lagging.</p>\n\n<p>Supra provide autoclaved Vulcanizing Lagging using Rema Tip Top REMACLAVE lagging material.</p>\n', '01-18-2016-08-25-21_810760_lagging.jpg'),
(27, 'Belt_Repair', '', '', 'Belt Repair', '<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n\r\n<p>Spot damages are commons on belt surface. It started from a small punctures. It is essential to repair such punctures to prevent the enlargement of damage. Once the damage getting bigger and moisture get into carcass, the repair become a major work and sometime lead to cut and splice works. Using a portable Almex Spotter and Rema TipTop belt repair kits, the damage can be fix within one hour and will prevent from the belt from major shutdown.</p>\r\n\r\n<p>Rema Strip repair applied on longitudinal cover rubber damages caused by material entrapment at tail pulley.</p>\r\n', '01-18-2016-08-37-41_342315_beltrepair.jpg'),
(28, 'Belt_Clamp', '', '', 'Belt Clamp', '<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes. with a checker plate finishing applied to the gripping&nbsp; face&nbsp; of&nbsp; the&nbsp; beams&nbsp; together with&nbsp; the&nbsp; screw jacks applying in excess of 6 tones, maximum grip is assured.</p>\r\n\r\n<p>The clams have been extensively&nbsp; tested on a tensile test bed capable of 200 tones line pull. Test result proved&nbsp; that&nbsp; a Sure Grip&nbsp;&nbsp; belt&nbsp; clamp&nbsp; on&nbsp; a&nbsp; wide 1000kN belt will handle 5 tons line pull comfortably while a conventional belt clamp will start showing slippage with a 2 tons line pull.</p>\r\n\r\n<p>The Heavy Duty models are fitted with ratchet winches at both ends to enable easy raising of the lower beam even&nbsp; when&nbsp; the&nbsp; belt&nbsp; is&nbsp; in&nbsp; a trough position.</p>\r\n\r\n<p>SuperScrew revolutionized the way of conveyor belt splicing. It is simple, fast and durable. SuperScrew is made of compo site materials with self tapping screws. It can be used also for punctures repair and longitudinal rip. SuperScrew materials is made from reinforced rubber corresponding to the various conveyor belt quality, such as wear resistant, heat resistant, oil resistant and fire resistant. The Installatio n o f SuperScrew is using electrical screw driver or a hand brace o r a pneumatic s crew driver.</p>\r\n', '01-18-2016-08-40-49_857452_beltclamp.jpg'),
(29, 'Surface_Protection', '', '', 'Surface Protection', '<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking&nbsp; large&nbsp; seawater&nbsp; intake pipe,&nbsp; large storage tanks, slurry pipeline, relining of FGD.</p>\n\n<p>We uses proven polymer and composite materials to combat various kind of surface wears power generation, petrochemical and mineral processing.</p>\n\n<p>This seawater circulating pipe is for Rembang powerplant at Central Java. Supra provide internal rubber lining and external coal-tar epoxy coating.</p>\n\n<p>Rubber Lining for process tank for Petrochemical plant.</p>\n\n<p>Combination of Rubber and Ceramic tile lining to combat extreme wear at copper mines.</p>\n\n<p>Rubber Lining Launder for Copper Concentrator</p>\n\n<p>Rubber Lining tank lorry for HcL and Caustic soda transporters.</p>\n\n<p>Supra apply Rema Tip Top Coroflake lining material for Flue Gas Desulphurization unit for coal fire powerplant. The FGD unit is operate in highly corrosive environment and at elevated temperature.</p>\n\n<p>We provide the turn-key scope from scaffolding, blasting, flake application, final inspection and commissioning. We also maintain the plant after project handover.</p>\n\n<p>Polyurea spray at SAG mill using Rema Tip Top REMACOAT. We keep of stock Remacoat material, and with our own polyurea spray machine that can be mobilized to job site in short notice.</p>\n\n<p>Chimney in cement plant lined with FlueGardTM 225 - high temperature corrosion protection system, highly resistant to acid and alkali attacks, and fine particle dust abrasion up to 225&deg;C (437&deg;F) continuous exposure, with short term excursions to 300&deg;C (1572&deg;F).</p>\n\n<p>Supra carrying out flake coating for Paiton III coal fire powerplant seawater and FGD piping system. Total area approx 2,900m2. Coating material Rema Tip Top Coroflake24 Flake Lining system. There are total of 42 pipe spool and elbows, diameter 2800mm x 12,000mm length.</p>\n', '01-18-2016-08-48-05_914276_surfaceprotection.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner_logo`
--

CREATE TABLE IF NOT EXISTS `tbl_partner_logo` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

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
  `id` int(11) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `qoutes` text,
  `file_name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `caption`, `qoutes`, `file_name`, `active`) VALUES
(8, 'SLIDER ONE', 'Lorem ipsum dolor sit amet', '01-08-2016-04-22-03_658142_bg2.jpg', 1),
(9, 'SLIDER TWO', 'Lorem ipsum dolor sit amet', '01-08-2016-04-30-33_291320_bg1.jpg', 1),
(10, 'PT SUPRABAKTI MANDIRI', 'Bulk Materials Handling and Surface Protection', '01-18-2016-03-07-57_22094_slider.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_source_message`
--

CREATE TABLE IF NOT EXISTS `tbl_source_message` (
  `id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_source_message`
--

INSERT INTO `tbl_source_message` (`id`, `category`, `message`) VALUES
(1, 'pages/12', '<h3><strong>Conveyor Maintenance</strong></h3>\r\n\r\n<p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\r\n\r\n<h3><strong>Overland Belt Installation &amp; Belt Change Out</strong></h3>\r\n\r\n<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia.</p>\r\n\r\n<h3><strong>Pulley Lagging</strong></h3>\r\n\r\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning. With it&#39;s innovative rubber to ceramic construction, the tile layout and profile design with ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth. REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application</p>\r\n'),
(2, 'pages/23', '<p>For more than 25 years, Supra has served the bulk material handling needs of conveyor belt maintenance. We bring in conveyor innovation in belt conveyor services, starting as belt splicers now we offer complete services for conveyor maintenances. Our breadth and depth of experiences strengthens our understanding of your needs, allowing us to organized all aspects of your outsourcing objectives.</p>\r\n\r\n<p>We apply the best technology and methodology for safe, reliable and productive conveyor operations.</p>\r\n\r\n<p>We set up key performance metric and benchmarking to let you measure our performance. Our metric include not only the productivity but also our safety behavior and awareness.</p>\r\n\r\n<p>&ldquo;Supra is the first conveyor belt maintenance and industrial lining company in Indonesia operate under ISO\r\n9000 quality system&rdquo;.</p>\r\n\r\n<p>Supra operates throughout Indonesia servicing mining, cement, power plant, port facilities, steel mill, fertilizer, pulp and paper, mineral processing and other industrials plants.</p>\r\n\r\n<p>Our expertise in conveyor maintenance give us the ability to execute complete turnkey projects from installation of overland conveyor belt, splicing, commissioning and maintaining the systems.</p>\r\n\r\n<p>We can customized our service to include just the assistance  you need, from advising and supervision, conveyor audit and site survey, preventive maintenance to operation  and  maintenance  where we  take full ownership of operation and maintenance  of the conveying systems. We have experience with a variety of contractual agreements, including lump-sum and turkey provision.</p>\r\n\r\n<p>We provide complete range of products for:</p>\r\n\r\n<div class="row">\r\n<ul>\r\n	<li>Conveyor Belt maintenance</li>\r\n	<li>Conveyor Components</li>\r\n	<li>Conveyor Drive</li>\r\n	<li>Conveyor Safety Devices</li>\r\n	<li>Conveyor Belt Rip Detection</li>\r\n	<li>Wear and Corrosion Protection</li>\r\n	<li>Crushing and Screening</li>\r\n	<li>Ship Mooring and Berthings</li>\r\n</ul>\r\n</div>\r\n'),
(4, 'ESelect2.select2', 'No matches found'),
(5, 'ESelect2.select2', 'Please enter {chars} more characters'),
(6, 'ESelect2.select2', 'Please enter {chars} less characters'),
(7, 'ESelect2.select2', 'You can only select {count} items'),
(8, 'ESelect2.select2', 'Loading more results...'),
(9, 'ESelect2.select2', 'Searching...'),
(11, 'pages/21', '<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="0ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/maintenance.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/conveyor_maintenance">Conveyor Maintenance</a></h4>\r\n\r\n<p>Conveyor Maintenance has been then key service provided by Suprabakti Mandiri for many years. Starting as the provider of belt splicing to total conveyor maintenance services.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="100ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/overland.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/overland_belt_installation_belt_change_out">Overland Belt Installation &amp; Belt Change Out</a></h4>\r\n\r\n<p>For more than 25 years, Suprabakti Mandiri have been providing conveyor belt splicing services in Indonesia, establishing high quality and service standart, educating the industries about proper belt splicing.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="200ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/lagging.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/pulley_lagging">Pulley Lagging</a></h4>\r\n\r\n<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt. REMAGRIP CK-X is extremely resilient, durable, highly, flexible, and self cleaning.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="300ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltrepair.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_repair">Belt Repair</a></h4>\r\n\r\n<p>The 26Km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Suprabakti Mandiri to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="400ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/beltclamp.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/belt_clamp">Belt Clamp</a></h4>\r\n\r\n<p>The Sure Grip belt clamp can apply postive pressure in excesss of 6 tones directly to the surface of any belt width while having a pulling ability in excess of 10 tonnes and when linked in tandem can exceed 16 tonnes.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->\r\n\r\n<div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-delay="500ms" data-wow-duration="300ms">\r\n<div class="media service-box">\r\n<div class="pull-left"><img alt="" class="img-circle img-thumbnail" src="http://10.36.15.3/SupraCompProfile/images/services/surfaceprotection.jpg" style="max-height:120px;" /></div>\r\n\r\n<div class="media-body">\r\n<h4 class="media-heading"><a href="http://localhost/SupraCompProfile/surface_protection">Surface Protection</a></h4>\r\n\r\n<p>Supra apply Rema Tip Top Coroflake lining material for Flue Gas Desulphurization unit for coal fire powerplant. The FGD unit is operate in highly corrosive environment and at elevated temperature.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--/.col-md-6-->'),
(12, 'pages/24', '<p>Belt maintenance has been the key service provided by Supra for many years. Starting as the provider of belt splicing&nbsp; to total conveyor&nbsp; maintenance services. Our total conveyor service included conveyor belt preventive maintenance, idler and pulley maintenance, drive system maintenance, condition monitoring, belt cover thickness measurements and belt scanning to monitor carcass condition and detection splice movements.</p>\n\n<p>Supra develop BeltcarePRO belt management software to manage the maintenance activities, establish historical data and provide useful analysis to plant engineers.</p>\n\n<p>The latest version of BeltcarePRO software is an&nbsp; &quot;on-line&quot; monitoring of the conveyor belt maintenance activities.</p>\n\n<p>The BeltcarePRO&reg;&nbsp; ver 3.1 include the following features:</p>\n\n<div class="row">\n<ul>\n	<li>Daily, weekly and monthly schedule maintenance,</li>\n	<li>Equipment report and components report, lubrication schedule, to do list.</li>\n	<li>Cover rubber measurement &ndash; estimation belt life, cost per ton of conveyor belt, future planning of buying conveyor belt</li>\n	<li>Useful SOP/JSA and forms related to belt maintenance works it can be customizes to suit field needs. The SOPs/Forms include: belt splicing and repair, pulley lagging, belt tracking, belt installation, idlers inspection, etc.</li>\n	<li>Trouble shootings guideline</li>\n	<li>Conveyor Belt Basic Training module</li>\n	<li>Conveyor Safety Training module</li>\n</ul>\n</div>\n\n<p>COVER THICKNESS MONITORING BENEFIT :</p>\n\n<div class="row">\n<ul>\n	<li>Behavior of material flow, chute flow correction to let materials fall at centre of belt.</li>\n	<li>Wear pattern - each conveyor - even they carry the same materials - will show different wear pattern due to drop high, uniformity of lump-sizes, capacity, speed, usage of conveyor auxiliary equipment (chute design, belt cleaner, skirting)</li>\n	<li>Comparison of cover rubber quality</li>\n	<li>Comparison of manufacturer quality</li>\n	<li>Procurement planning - minimize inventory</li>\n</ul>\n</div>\n'),
(13, 'pages/25', '<p>Supra was entrusted to perform the installation and splicing of Freeport DMLZ stage 1 project. The 6,500 tph downhill underground conveying system is one of the most challenging system and is the highest strength of belt in Indonesia. The underground crushing and conveying expansion project if fully developed will be the largest of its kind (block cave mines) in the world with the DMLZ stage 1 being 1 of 5 phases which is estimated for full total completion by 2020 for all 5 stages. The belt installation involved the controlled lowering of 1,829mm wide ST5400 down a decline of 15% (8 deg) angle x 1,250mtrs long from the top head end via both twin hydraulically and pneumatic type braking systems with dynamic forces up to 40 ton.</p>\r\n\r\n<p>In total over 8,600mtrs of belt was installed via controlled braked lowering method. Due to space constraints belt reels of 192mtrs long x 26 Tons could only be accommodated. There are total 47 splices with 4.9 mtr splice length.</p>\r\n\r\n<p>The recent change-out 12.8km of C-26 overland conveyor belt at Bontang Coal Terminal. The C-26 is conveying coal at 3,700 t/h travelling at 7 .2 m /s conveying coal from the stock pile to the coal loading system.&nbsp; The 17 rolls of new belt to be pre-spliced and flake-out in 2 s tacks and pull in one continuous length in 4 days. At the same time the belt winder reeling old belts into empty belt reels. The project was completed in 30 hours ahead schedule with no accident.</p>\r\n'),
(14, 'pages/26', '<p>Remagrip CK - ceramic lagging provide excellent grip between pulley and belt.&nbsp; REMAGRIP CK-X is extremely resilient, durable, highly flexible and self-cleaning. With its innovative rubber to ceramic construction, the tile layout and profile design with the ceramic tiles arranged individually and completely embedded in rubber and in conjunction with extra wide aqua-channels and increased profile depth, REMAGRIP CK-X is specially developed to meet the most demanding challenges in the material conveying application.</p>\n\n<p>This pulley is for Overland Conveyor of 26km c to c distance. Pulley size diameter 1.8mtr x 1300mm. Supra refurbish the pulley by changing new shaft, balancing alignment and new Remagrip lagging.</p>\n\n<p>Supra utilizing the latest rubber extrusion technology&nbsp; in&nbsp; hot vulcanized rubber lagging.&nbsp; The rubber is extruded in form of strip and apply directly onto the pulley. The worm rubber strip is stitched by hydraulic controlled stitching arm to ensure optimum bonding and blisters free rubber lagging.</p>\n\n<p>Supra provide autoclaved Vulcanizing Lagging using Rema Tip Top REMACLAVE lagging material.</p>\n'),
(15, 'pages/27', '<p>The 26 km overland conveyor steel cord belt suffer from longitudinal rip. The mine approved Supra proposal to use Rema Tip Top cold repair method. Rema Tip Top Repair strip 150mm and 220mm with SC-2000 are used to repair the belt.</p>\r\n\r\n<p>Spot damages are commons on belt surface. It started from a small punctures. It is essential to repair such punctures to prevent the enlargement of damage. Once the damage getting bigger and moisture get into carcass, the repair become a major work and sometime lead to cut and splice works. Using a portable Almex Spotter and Rema TipTop belt repair kits, the damage can be fix within one hour and will prevent from the belt from major shutdown.</p>\r\n\r\n<p>Rema Strip repair applied on longitudinal cover rubber damages caused by material entrapment at tail pulley.</p>\r\n'),
(16, 'pages/28', '<p>The Sure Grip belt clamp can apply positive pressure in excess of 6 tones directly to the surface of any belt width&nbsp; while&nbsp; having&nbsp; a&nbsp; pulling ability&nbsp; in&nbsp; excess&nbsp; of&nbsp; 10 tonnes&nbsp; and&nbsp; when&nbsp; linked&nbsp; in&nbsp; tandem&nbsp; can&nbsp; exceed&nbsp; 16 tonnes. with a checker plate finishing applied to the gripping&nbsp; face&nbsp; of&nbsp; the&nbsp; beams&nbsp; together with&nbsp; the&nbsp; screw jacks applying in excess of 6 tones, maximum grip is assured.</p>\r\n\r\n<p>The clams have been extensively&nbsp; tested on a tensile test bed capable of 200 tones line pull. Test result proved&nbsp; that&nbsp; a Sure Grip&nbsp;&nbsp; belt&nbsp; clamp&nbsp; on&nbsp; a&nbsp; wide 1000kN belt will handle 5 tons line pull comfortably while a conventional belt clamp will start showing slippage with a 2 tons line pull.</p>\r\n\r\n<p>The Heavy Duty models are fitted with ratchet winches at both ends to enable easy raising of the lower beam even&nbsp; when&nbsp; the&nbsp; belt&nbsp; is&nbsp; in&nbsp; a trough position.</p>\r\n\r\n<p>SuperScrew revolutionized the way of conveyor belt splicing. It is simple, fast and durable. SuperScrew is made of compo site materials with self tapping screws. It can be used also for punctures repair and longitudinal rip. SuperScrew materials is made from reinforced rubber corresponding to the various conveyor belt quality, such as wear resistant, heat resistant, oil resistant and fire resistant. The Installatio n o f SuperScrew is using electrical screw driver or a hand brace o r a pneumatic s crew driver.</p>\r\n'),
(17, 'pages/29', '<p>Supra is the prominent contractor for rubber lining works, with our in-house resources we are capable for undertaking&nbsp; large&nbsp; seawater&nbsp; intake pipe,&nbsp; large storage tanks, slurry pipeline, relining of FGD.</p>\n\n<p>We uses proven polymer and composite materials to combat various kind of surface wears power generation, petrochemical and mineral processing.</p>\n\n<p>This seawater circulating pipe is for Rembang powerplant at Central Java. Supra provide internal rubber lining and external coal-tar epoxy coating.</p>\n\n<p>Rubber Lining for process tank for Petrochemical plant.</p>\n\n<p>Combination of Rubber and Ceramic tile lining to combat extreme wear at copper mines.</p>\n\n<p>Rubber Lining Launder for Copper Concentrator</p>\n\n<p>Rubber Lining tank lorry for HcL and Caustic soda transporters.</p>\n\n<p>Supra apply Rema Tip Top Coroflake lining material for Flue Gas Desulphurization unit for coal fire powerplant. The FGD unit is operate in highly corrosive environment and at elevated temperature.</p>\n\n<p>We provide the turn-key scope from scaffolding, blasting, flake application, final inspection and commissioning. We also maintain the plant after project handover.</p>\n\n<p>Polyurea spray at SAG mill using Rema Tip Top REMACOAT. We keep of stock Remacoat material, and with our own polyurea spray machine that can be mobilized to job site in short notice.</p>\n\n<p>Chimney in cement plant lined with FlueGardTM 225 - high temperature corrosion protection system, highly resistant to acid and alkali attacks, and fine particle dust abrasion up to 225&deg;C (437&deg;F) continuous exposure, with short term excursions to 300&deg;C (1572&deg;F).</p>\n\n<p>Supra carrying out flake coating for Paiton III coal fire powerplant seawater and FGD piping system. Total area approx 2,900m2. Coating material Rema Tip Top Coroflake24 Flake Lining system. There are total of 42 pipe spool and elbows, diameter 2800mm x 12,000mm length.</p>\n');

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
(1, 'Soesanto Houtama', '01-06-2016-09-55-09_250762_gm.png', '', 1, 2),
(2, 'Jimmy Hadinata', '01-06-2016-09-58-47_92651_jimmy.png', '', 1, 1),
(3, 'Ricky Djendakang', '01-06-2016-09-59-25_944274_ricky.png', '', 1, 3),
(5, 'Unknown', '01-12-2016-03-07-43_44281_03.jpg', '', 1, 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level_id`, `last_login`) VALUES
(1, 'admin', '$2a$10$Af.RpmCKwUddfBalCu1zyuFvyKLrgzTV6A35QybFnAf1W1m0Zchdm', 1, '2016-01-20 09:35:05');

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
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`,`language`);

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
-- Indexes for table `tbl_source_message`
--
ALTER TABLE `tbl_source_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_partner_logo`
--
ALTER TABLE `tbl_partner_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_source_message`
--
ALTER TABLE `tbl_source_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD CONSTRAINT `FK_tbl_message_tbl_source_message` FOREIGN KEY (`id`) REFERENCES `tbl_source_message` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
