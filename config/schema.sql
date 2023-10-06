-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 04:23 PM
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
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jenis_konseling` varchar(255) NOT NULL,
  `pilihan_dokter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE IF NOT EXISTS feedback (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(255) NOT NULL,
  ulasan VARCHAR(255) NOT NULL,
  
  dob DATE
);

CREATE TABLE IF NOT EXISTS artikel (
  id INT AUTO_INCREMENT PRIMARY KEY,
  artikel VARCHAR(255) NOT NULL,
  gambar VARCHAR(255) NOT NULL,
  judul VARCHAR(255) NOT NULL
  deskripsi teks() NOT NULL
);

CREATE TABLE IF NOT EXISTS video (
  id INT AUTO_INCREMENT PRIMARY KEY,
  video VARCHAR(255) NOT NULL,
  gambar VARCHAR(255) NOT NULL,
  judul VARCHAR(255) NOT NULL,
  deskripsi VARCHAR(255) NOT NULL
  
  dob DATE
);

CREATE TABLE IF NOT EXISTS tentang_kami (
  id INT AUTO_INCREMENT PRIMARY KEY,
  gambar VARCHAR(255) NOT NULL,
  role VARCHAR(255) NOT NULL,
  nama VARCHAR(255) NOT NULL,
  prodi VARCHAR(255) NOT NULL,
  universitas VARCHAR(255) NOT NULL,