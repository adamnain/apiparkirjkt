-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2018 at 06:48 AM
-- Server version: 5.7.20
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkirjakarta`
--

-- --------------------------------------------------------

--
-- Table structure for table `parkirjakarta`
--

CREATE TABLE `parkirjakarta` (
  `id` int(11) NOT NULL,
  `nama_tempat_parkir` varchar(60) DEFAULT NULL,
  `jenis_lokasi_parkir` varchar(13) DEFAULT NULL,
  `alamat` varchar(43) DEFAULT NULL,
  `luas_m2` varchar(5) DEFAULT NULL,
  `kapasita_mobil` int(11) DEFAULT NULL,
  `kapasitas_motor` int(11) DEFAULT NULL,
  `kapasitas_bus_truk` int(11) DEFAULT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  `lat` varchar(11) DEFAULT NULL,
  `long` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parkirjakarta`
--

INSERT INTO `parkirjakarta` (`id`, `nama_tempat_parkir`, `jenis_lokasi_parkir`, `alamat`, `luas_m2`, `kapasita_mobil`, `kapasitas_motor`, `kapasitas_bus_truk`, `picture`, `lat`, `long`) VALUES
(1, 'Gedung Parkir Istana Pasar Baru (8 Lt)', 'gedung', 'Jln. Pintu Air Raya', '12432', 445, 130, 0, 'https://c1.staticflickr.com/6/5224/30072943992_82eeec4ee1_b.jpg', '-6.165035', '106.831893'),
(2, 'Gedung Parkir Taman Menteng (3 Lt.)', 'gedung', 'Jln. HOS Cokroaminoto No. 9 Jakarta Pusat', '4455', 152, 300, 0, 'http://cdn2.tstatic.net/jakarta/foto/bank/images/area-parkir-taman-menteng_20180915_221407.jpg', '-6.187994', '106.829359'),
(3, 'Pelataran Parkir IRTI Monas', 'pelataran', 'Jln. Medan Merdeka Selatan', '18450', 352, 1250, 12, 'http://cdn2.tstatic.net/wartakota/foto/bank/images/parkir-irti_20170206_123947.jpg', '-6.179946', '106.827848'),
(4, 'Pelataran Ex Gedung Parkir Glodok', 'pelataran', 'Jln. Pintu Besar Selatan No. 1', '4640', 80, 180, 0, 'https://statik.tempo.co/data/2012/10/12/id_144916/144916_620.jpg', '-6.142153', '106.814680'),
(5, 'Pelataran Cengkeh/Taman Kota Intan', 'pelataran', 'Jln. Cengkeh', '3408', 85, 120, 12, 'https://statik.tempo.co/data/2017/10/13/id_654932/654932_720.jpg', '-6.131531', '106.812664'),
(6, 'Pelataran Taman Ismail Marzuki (TIM)', 'pelataran', 'Jln. Cikini Raya', '3801', 240, 470, 8, 'https://jamnewsug.files.wordpress.com/2014/06/citra.png', '-6.191584', '106.838528'),
(7, 'Pelataran Thamrin 10', 'pelataran', 'Jln. MH Thamrin No 10', '2720', 250, 0, 15, 'https://asset.kompas.com/crop/47x108:953x712/750x500/data/photo/2018/01/03/4280416802.jpg', '-6.185699', '106.823008'),
(8, 'Pelataran Parkir Pulogebang', 'pelataran', 'Terminal Terpadu Pulogebang', '962', 170, 250, 0, 'http://cdn.metrotvnews.com/dynamic/content/2018/01/21/819511/wRXGcijF6l.jpg?w=650', '-6.211187', '106.952261'),
(9, 'Pelataran Parkir Unit PKB dan BBN KB Jakarta Pusat dan Utara', 'pelataran', 'Jln. Gunung Sahari No. 13', '3804', 180, 800, 6, 'https://asset.kompas.com/crop/8x2:813x539/750x500/data/photo/2017/07/27/1127192979.jpg', '-6.159331', '106.837465'),
(10, 'Pelataran Parkir Unit PKB dan BBN KB Jakarta Timur', 'pelataran', 'Jln. D.I Panjaitan Kav. 55', '7292', 400, 1097, 11, 'https://mmc.tirto.id/image/2018/11/16/pemutihan-pajak-dan-bea-balik-nama-kendaraan---3--rizky-ramadhan-tirto.id.jpg', '-6.229352', '106.876912'),
(11, 'Pelataran Parkir Unit PKB dan BBN KB Jakarta Barat', 'pelataran', 'Jln. Daan Mogot KM 13', '3443', 120, 720, 4, 'http://cdn2.tstatic.net/wartakota/foto/bank/images/jaringan-internet-samsat-jakarta-barat-offline_20180531_122023.jpg', '-6.151911', '106.739094'),
(12, 'Pelataran Parkir RPTRA Kalijodo', 'pelataran', 'Jln. Pangeran Tubagus Angke No.19', '13632', 113, 1200, 10, 'http://cdn2.tstatic.net/wartakota/foto/bank/images/kalijodo-keren_20170119_145801.jpg', '-6.142672', '106.789906'),
(13, 'Park and Ride Vertical Ragunan', 'park and ride', 'Jln. Saco No. 1B Ragunan', '1410', 8, 800, 0, 'http://cdn-2.tstatic.net/bogor/foto/bank/images/parkiran-double-decker-stasiun-bogor_20160215_102902.jpg', '-6.305169', '106.818378'),
(14, 'Park and Ride Kampung Rambutan', 'park and ride', 'Jln. Lingkar Luar Selatan, Kampung Rambutan', '2034', 95, 120, 0, 'http://poskotanews.com/cms/wp-content/uploads/2018/07/park.jpg', '-6.307244', '106.883023'),
(15, 'Park and Ride Kalideres', 'park and ride', 'Jln. Raya Daan Mogot', '5075', 100, 300, 0, 'https://asset.kompas.com/crop/70x0:915x563/750x500/data/photo/2018/06/06/795521995.png', '-6.155617', '106.708867');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parkirjakarta`
--
ALTER TABLE `parkirjakarta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parkirjakarta`
--
ALTER TABLE `parkirjakarta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
