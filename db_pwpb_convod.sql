-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2020 at 03:54 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pwpb_convod`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_05_15_193352_create_t_pengguna', 1),
(4, '2020_05_15_202917_create_t_relawan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_pengguna`
--

CREATE TABLE `t_pengguna` (
  `id_user` int(16) NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(2) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` enum('andir','astana_anyar','antapani','arcamanik','babakan_ciparay','bandung_kidul','bandung_kulon','bandung_wetan','batununggal','bojongloa_kaler','bojongloa_kidul','buah_batu','cibeunying_kaler','cibeunying_kidul','cibiru','cicendo','cidadap','cinambo','coblong','gedebage','kiaracondong','lengkong','mandalajati','panyileukan','rancasari','regol','sukajadi','sukasari','sumur_bandung','ujung_berung') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'andir',
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_relawan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_pengguna`
--

INSERT INTO `t_pengguna` (`id_user`, `nik`, `nama`, `jenkel`, `tempatlahir`, `tgl_lahir`, `usia`, `alamat`, `kota`, `kecamatan`, `kelurahan`, `telepon`, `email`, `id_relawan`, `created_at`, `updated_at`) VALUES
(1, '3273041710020004', 'Ananda Cipta', 'L', 'Bandung', '2002-10-17', 17, 'Jl. Terusan Pasirkoja', 'Bandung', 'babakan_ciparay', 'Sukaasih', '088706331778', 'ciptaananda67@gmail.com', 1, '2020-05-15 13:02:39', '2020-05-15 13:02:39'),
(3, '3273041710020003', 'Ainani Tajriyan', 'L', 'Cimahi', '2002-10-15', 17, 'Jl Muara rajeun', 'Bandung', 'panyileukan', 'Sukaasih', '088906774348', 'ainani.tajriyan08@gmail.com', 0, '2020-05-15 13:06:58', '2020-05-15 13:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `t_relawan`
--

CREATE TABLE `t_relawan` (
  `id_relawan` int(11) NOT NULL,
  `pekerjaan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendapatan` int(11) NOT NULL,
  `keahlian` enum('perawat','konsultan','apoteker') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'perawat',
  `rs_rujukan` enum('rs_advent','rs_alislam','rs_borromeus','rs_immanuel','rsk_kopo','rs_salamun','rs_santosa','rs_sartika_asih','rs_ujung_berung','rs_pindad') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rs_borromeus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_relawan`
--

INSERT INTO `t_relawan` (`id_relawan`, `pekerjaan`, `pendapatan`, `keahlian`, `rs_rujukan`, `created_at`, `updated_at`) VALUES
(1, 'Pegawai BUMN', 10000000, 'konsultan', 'rsk_kopo', '2020-05-15 14:32:47', '2020-05-15 14:32:47'),
(2, 'Pegawai Swasta', 200000, 'apoteker', 'rs_salamun', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pengguna`
--
ALTER TABLE `t_pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `t_relawan`
--
ALTER TABLE `t_relawan`
  ADD PRIMARY KEY (`id_relawan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_pengguna`
--
ALTER TABLE `t_pengguna`
  MODIFY `id_user` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_relawan`
--
ALTER TABLE `t_relawan`
  MODIFY `id_relawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
