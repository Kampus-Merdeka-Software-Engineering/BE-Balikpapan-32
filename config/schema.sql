-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 02:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caring_is_loving`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `keterangan`) VALUES
(1, 'Dr. Ernest Sopata', 'Dr. Ernest Sopata adalah dokter spesialis depresi dan kecemasan. Depresi ditandai dengan perasaan sedih, putus asa, dan kehilangan minat dalam hal yang diminati. Serta Kecemasan yang ditandai dengan perasaan khawatir, cemas, dan gelisah yang berlebihan.'),
(2, 'Dr. Kaden Dez', 'Dr. Kaden Dez adalah dokter spesialis Gangguan Bipolar yang ditandai dengan perubahaan suasana hati yang ekstrem, dari mania (perasaan euforia dan energi berlebihan), berkurangnya kebutuhan tidur, serta depresi dengan perasaan sedih dan putus asa..'),
(3, 'Dr. Luke Ishman', 'Dr. Luke Ishman adalah dokter spesialis Skizofrenia kondisi yang ditandai dengan halusinasi (melihat, mendengar, dan merasakan hal - hal yang tiak ada), delusi (keyakinan yang salah yang tidak dapat diubah oleh bukti), dan gangguan berfikir jernih dan logis.'),
(4, 'Dr. Lydia Weyker', 'Dr. Lydia Weyker adalah dokter spesialis Gangguan Makan yang ditandai dengan kondisi Anoreksia nervosa (ketakutan berlebihan dan pembatasan makan yang ekstrem), bulimia nervosa (makan berlebihan dan muntah), gangguan makan dengan makan berlebihan tak terkendali.'),
(5, 'Dr. michael Morva', 'Dr. Michael Morva adalah dokter spesialis Gangguan Stres Pascatrauma (PTSD) dan Gangguan obsesif-kompulsif (OCD) yang ditandai dengan kondisi yang dapat terjadi setelah seseorang mengalami peristiwa traumatis seperti bencana alam, pelecehan, atau perang.'),
(6, 'Dr. Mia Goudy', 'Dr. Mia Goudy adalah seorang dokter spesialis pada Gangguan Kepribadian ditandai dengan gangguan kepribadian yang antisosial, bordeline(emosi tidak stabil), kepribadian yang histrionik (pencari perhatian), dan kepribadian naristik serta paranoid.');

-- --------------------------------------------------------

--
-- Table structure for table `dokter_konseling`
--

CREATE TABLE `dokter_konseling` (
  `id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL,
  `jenis_konseling_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_konseling`
--

CREATE TABLE `jenis_konseling` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_konseling`
--

INSERT INTO `jenis_konseling` (`id`, `nama`) VALUES
(1, 'Offline'),
(2, 'Online'),
(3, 'Seminar');

-- --------------------------------------------------------

--
-- Table structure for table `pendafataran`
--

CREATE TABLE `pendafataran` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dokter_konseling_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokter_konseling`
--
ALTER TABLE `dokter_konseling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokter_konseling_dokter_id_IDX` (`dokter_id`) USING BTREE,
  ADD KEY `dokter_konseling_jenis_konseling_id_IDX` (`jenis_konseling_id`) USING BTREE;

--
-- Indexes for table `jenis_konseling`
--
ALTER TABLE `jenis_konseling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendafataran`
--
ALTER TABLE `pendafataran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendaftaran_FK` (`dokter_konseling_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dokter_konseling`
--
ALTER TABLE `dokter_konseling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_konseling`
--
ALTER TABLE `jenis_konseling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pendafataran`
--
ALTER TABLE `pendafataran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokter_konseling`
--
ALTER TABLE `dokter_konseling`
  ADD CONSTRAINT `dokter_konseling_FK` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`id`),
  ADD CONSTRAINT `dokter_konseling_FK_1` FOREIGN KEY (`jenis_konseling_id`) REFERENCES `jenis_konseling` (`id`);

--
-- Constraints for table `pendafataran`
--
ALTER TABLE `pendafataran`
  ADD CONSTRAINT `pendaftaran_FK` FOREIGN KEY (`dokter_konseling_id`) REFERENCES `dokter_konseling` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
