-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2018 at 07:31 AM
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
  `picture` int(11) DEFAULT NULL,
  `lat` int(11) DEFAULT NULL,
  `long` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parkirjakarta`
--

INSERT INTO `parkirjakarta` (`id`, `nama_tempat_parkir`, `jenis_lokasi_parkir`, `alamat`, `luas_m2`, `kapasita_mobil`, `kapasitas_motor`, `kapasitas_bus_truk`, `picture`, `lat`, `long`) VALUES
(1, 'Gedung Parkir Istana Pasar Baru (8 Lt)', 'gedung', 'Jln. Pintu Air Raya', '12432', 445, 130, 0, NULL, NULL, NULL),
(2, 'Gedung Parkir Taman Menteng (3 Lt.)', 'gedung', 'Jln. HOS Cokroaminoto No. 9 Jakarta Pusat', '4455', 152, 300, 0, NULL, NULL, NULL),
(3, 'Pelataran Parkir IRTI Monas', 'pelataran', 'Jln. Medan Merdeka Selatan', '18450', 352, 1250, 12, NULL, NULL, NULL),
(4, 'Pelataran Ex Gedung Parkir Glodok', 'pelataran', 'Jln. Pintu Besar Selatan No. 1', '4640', 80, 180, 0, NULL, NULL, NULL),
(5, 'Pelataran Cengkeh/Taman Kota Intan', 'pelataran', 'Jln. Cengkeh', '3408', 85, 120, 12, NULL, NULL, NULL),
(6, 'Pelataran Taman Ismail Marzuki (TIM)', 'pelataran', 'Jln. Cikini Raya', '3801', 240, 470, 8, NULL, NULL, NULL),
(7, 'Pelataran Thamrin 10', 'pelataran', 'Jln. MH Thamrin No 10', '2720', 250, 0, 15, NULL, NULL, NULL),
(8, 'Pelataran Parkir Pulogebang', 'pelataran', 'Terminal Terpadu Pulogebang', '962', 170, 250, 0, NULL, NULL, NULL),
(9, 'Pelataran Parkir Unit PKB dan BBN KB Jakarta Pusat dan Utara', 'pelataran', 'Jln. Gunung Sahari No. 13', '3804', 180, 800, 6, NULL, NULL, NULL),
(10, 'Pelataran Parkir Unit PKB dan BBN KB Jakarta Timur', 'pelataran', 'Jln. D.I Panjaitan Kav. 55', '7292', 400, 1097, 11, NULL, NULL, NULL),
(11, 'Pelataran Parkir Unit PKB dan BBN KB Jakarta Barat', 'pelataran', 'Jln. Daan Mogot KM 13', '3443', 120, 720, 4, NULL, NULL, NULL),
(12, 'Pelataran Parkir RPTRA Kalijodo', 'pelataran', 'Jln. Pangeran Tubagus Angke No.19', '13632', 113, 1200, 10, NULL, NULL, NULL),
(13, 'Park and Ride Vertical Ragunan', 'park and ride', 'Jln. Saco No. 1B Ragunan', '1410', 8, 800, 0, NULL, NULL, NULL),
(14, 'Park and Ride Kampung Rambutan', 'park and ride', 'Jln. Lingkar Luar Selatan, Kampung Rambutan', '2034', 95, 120, 0, NULL, NULL, NULL),
(15, 'Park and Ride Kalideres', 'park and ride', 'Jln. Raya Daan Mogot', '5075', 100, 300, 0, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
