-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2020 at 07:27 AM
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
(4, '2020_05_15_202917_create_t_relawan', 2),
(5, '2020_05_16_225415_create_t_konsultasi', 3),
(6, '2020_05_17_092000_create_t_apd', 4),
(7, '2020_05_19_235734_create_t_dana', 5),
(8, '2020_05_20_000543_create_t_rs_rujukan', 6),
(9, '2020_05_20_001214_create_t_daftar_odp', 7),
(10, '2020_05_20_001704_create_t_daftar_pdp', 8),
(11, '2020_05_20_002324_create_t_daftar_positif', 9),
(12, '2020_05_20_002750_create_t_daftar_sembuh', 10),
(13, '2020_05_23_023459_create_t_meninggal', 11),
(14, '2020_05_23_024648_create_t_daftar_meninggal', 12),
(15, '2020_05_23_051650_create_t_login', 13),
(16, '2020_05_23_094650_create_users_table', 14),
(17, '2014_10_12_100000_create_password_resets_table', 15),
(18, '2020_05_25_041303_create_users_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_apd`
--

CREATE TABLE `t_apd` (
  `id` int(11) UNSIGNED NOT NULL,
  `masker` int(30) NOT NULL,
  `pelindung_mata` int(30) NOT NULL,
  `pelindung_wajah` int(30) NOT NULL,
  `gaun_medis` int(30) NOT NULL,
  `sarung_tangan_medis` int(30) NOT NULL,
  `penutup_kepala` int(30) NOT NULL,
  `sepatu_pelindung` int(30) NOT NULL,
  `total` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resi_pengiriman` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_apd`
--

INSERT INTO `t_apd` (`id`, `masker`, `pelindung_mata`, `pelindung_wajah`, `gaun_medis`, `sarung_tangan_medis`, `penutup_kepala`, `sepatu_pelindung`, `total`, `foto`, `resi_pengiriman`, `nik`, `created_at`, `updated_at`) VALUES
(27, 1, 1, 1, 1, 1, 1, 1, NULL, '1590039121__20170107_220206.JPG', '1', '3273041710020004', '2020-05-20 22:32:02', '2020-05-20 22:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `t_daftar_meninggal`
--

CREATE TABLE `t_daftar_meninggal` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` enum('Andir','Astana Anyar','Antapani','Arcamanik','Babakan Ciparay','Bandung Kidul','Bandung Kulon','Bandung Wetan','Batununggal','Bojongloa Kaler','Bojongloa Kidul','Buah Batu','Cibeunying Kaler','Cibeunying Kidul','Cibiru','Cicendo','Cidadap','Cinambo','Coblong','Gedebage','Kiaracondong','Lengkong','Mandalajati','Panyileukan','Rancasari','Regol','Sukajadi','Sukasari','Sumur Bandung','Ujung Berung') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penetapan` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_daftar_meninggal`
--

INSERT INTO `t_daftar_meninggal` (`id`, `nama`, `jenkel`, `tempatlahir`, `tgl_lahir`, `usia`, `alamat`, `kota`, `kecamatan`, `kelurahan`, `tgl_penetapan`, `created_at`, `updated_at`) VALUES
(1, 'Ainani Tajriyan Muntaharridwan', 'L', 'Bandung', '2020-05-06', 17, 'Jl muararajeun', 'Bandung', 'Sumur Bandung', 'Muararajeun', '2020-05-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_daftar_odp`
--

CREATE TABLE `t_daftar_odp` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` enum('Andir','Astana Anyar','Antapani','Arcamanik','Babakan Ciparay','Bandung Kidul','Bandung Kulon','Bandung Wetan','Batununggal','Bojongloa Kaler','Bojongloa Kidul','Buah Batu','Cibeunying Kaler','Cibeunying Kidul','Cibiru','Cicendo','Cidadap','Cinambo','Coblong','Gedebage','Kiaracondong','Lengkong','Mandalajati','Panyileukan','Rancasari','Regol','Sukajadi','Sukasari','Sumur Bandung','Ujung Berung') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Andir',
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penetapan` date NOT NULL,
  `status_pemantauan` enum('Isolasi','Rujukan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penetapan_negatif` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_daftar_odp`
--

INSERT INTO `t_daftar_odp` (`id`, `nama`, `jenkel`, `tempatlahir`, `tgl_lahir`, `usia`, `alamat`, `kota`, `kecamatan`, `kelurahan`, `tgl_penetapan`, `status_pemantauan`, `tgl_penetapan_negatif`, `created_at`, `updated_at`) VALUES
(1, 'Sandi Saputra', 'L', 'Bandung', '2003-03-06', 17, 'Jl Terusan Perbas', 'Bandung', 'Cibiru', 'Cicaheum', '2020-05-12', 'Isolasi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_daftar_pdp`
--

CREATE TABLE `t_daftar_pdp` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` enum('Andir','Astana Anyar','Antapani','Arcamanik','Babakan Ciparay','Bandung Kidul','Bandung Kulon','Bandung Wetan','Batununggal','Bojongloa Kaler','Bojongloa Kidul','Buah Batu','Cibeunying Kaler','Cibeunying Kidul','Cibiru','Cicendo','Cidadap','Cinambo','Coblong','Gedebage','Kiaracondong','Lengkong','Mandalajati','Panyileukan','Rancasari','Regol','Sukajadi','Sukasari','Sumur Bandung','Ujung Berung') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Andir',
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penetapan` date NOT NULL,
  `status_pengawasan` enum('Rawat Jalan','Rawat Inap') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Rawat Jalan',
  `rs_rujukan` enum('Rumah Sakit Advent','Rumah Sakit Al-islam','Rumah Sakit Borromeus','Rumah Sakit Immanuel','Rumah Sakit Khusus Kopo','Rumah Sakit Salamun','Rumah Sakit Santosa','Rumah Sakit Sartika Asih','Rumah Sakit Ujung Berung','Rumah Sakit Pindad') COLLATE utf8mb4_unicode_ci DEFAULT 'Rumah Sakit Advent',
  `status` enum('PDP','Negatif') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PDP',
  `tgl_penetapan_negatif` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_daftar_pdp`
--

INSERT INTO `t_daftar_pdp` (`id`, `nama`, `jenkel`, `tempatlahir`, `tgl_lahir`, `usia`, `alamat`, `kota`, `kecamatan`, `kelurahan`, `tgl_penetapan`, `status_pengawasan`, `rs_rujukan`, `status`, `tgl_penetapan_negatif`, `created_at`, `updated_at`) VALUES
(2, 'Ananda Cipta', 'L', 'Bandung', '2020-05-14', 17, 'Jl Terusan Pasirkoja Gang Satata Sariksa', 'Bandung', 'Babakan Ciparay', 'sukahaji', '2020-05-27', 'Rawat Jalan', 'Rumah Sakit Sartika Asih', 'PDP', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_daftar_positif`
--

CREATE TABLE `t_daftar_positif` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` enum('Andir','Astana Anyar','Antapani','Arcamanik','Babakan Ciparay','Bandung Kidul','Bandung Kulon','Bandung Wetan','Batununggal','Bojongloa Kaler','Bojongloa Kidul','Buah Batu','Cibeunying Kaler','Cibeunying Kidul','Cibiru','Cicendo','Cidadap','Cinambo','Coblong','Gedebage','Kiaracondong','Lengkong','Mandalajati','Panyileukan','Rancasari','Regol','Sukajadi','Sukasari','Sumur Bandung','Ujung Berung') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penetapan` date NOT NULL,
  `rs_perawatan` enum('Rumah Sakit Advent','Rumah Sakit Al-islam','Rumah Sakit Borromeus','Rumah Sakit Immanuel','Rumah Sakit Khusus Kopo','Rumah Sakit Salamun','Rumah Sakit Santosa','Rumah Sakit Sartika Asih','Rumah Sakit Ujung Berung','Rumah Sakit Pindad') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_daftar_positif`
--

INSERT INTO `t_daftar_positif` (`id`, `nama`, `jenkel`, `tempatlahir`, `tgl_lahir`, `usia`, `alamat`, `kota`, `kecamatan`, `kelurahan`, `tgl_penetapan`, `rs_perawatan`, `created_at`, `updated_at`) VALUES
(1, 'Ihsan Herdiansyah', 'L', 'Bandung', '0000-00-00', 17, 'Jl Binong', 'Bandung', 'Bandung Wetan', 'Indramayu', '2020-05-11', 'Rumah Sakit Borromeus', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_daftar_sembuh`
--

CREATE TABLE `t_daftar_sembuh` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` enum('Andir','Astana Anyar','Antapani','Arcamanik','Babakan Ciparay','Bandung Kidul','Bandung Kulon','Bandung Wetan','Batununggal','Bojongloa Kaler','Bojongloa Kidul','Buah Batu','Cibeunying Kaler','Cibeunying Kidul','Cibiru','Cicendo','Cidadap','Cinambo','Coblong','Gedebage','Kiaracondong','Lengkong','Mandalajati','Panyileukan','Rancasari','Regol','Sukajadi','Sukasari','Sumur Bandung','Ujung Berung') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penetapan` date NOT NULL,
  `status` enum('Sembuh','Isolasi') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_daftar_sembuh`
--

INSERT INTO `t_daftar_sembuh` (`id`, `nama`, `jenkel`, `tempatlahir`, `tgl_lahir`, `usia`, `alamat`, `kota`, `kecamatan`, `kelurahan`, `tgl_penetapan`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sahlan Putra Pratama', 'L', 'Bandung', '2003-06-26', 16, 'Jl Nyengseret', 'Bandung', 'Astana Anyar', 'Cibiru', '2020-05-23', 'Sembuh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_dana`
--

CREATE TABLE `t_dana` (
  `id` int(10) UNSIGNED NOT NULL,
  `nominal` int(11) NOT NULL,
  `pembayaran` enum('BNI','BCA','BRI','MANDIRI','ALFAMART','DANA','OVO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keperluan` enum('Bantuan Sosial','Tenaga Medis','Rumah Sakit Rujukan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_dana`
--

INSERT INTO `t_dana` (`id`, `nominal`, `pembayaran`, `foto`, `keperluan`, `nik`, `created_at`, `updated_at`) VALUES
(7, 30000000, 'OVO', '1590041654_IMG_20161114_112026.jpg', 'Tenaga Medis', '3273041710020005', '2020-05-20 23:14:14', '2020-05-20 23:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `t_konsultasi`
--

CREATE TABLE `t_konsultasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `batuk` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilek` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sakit_tenggorokan` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `menggigil` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `suhu_badan` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lemah_lesu` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sakit_kepala` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nyeri_otot` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nyeri_perut` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `mual` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `diare` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `riwayat_penyakit` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejala_lainnya` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara_kunjungan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_kunjungan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_berangkat` date NOT NULL,
  `tgl_pulang` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_konsultasi`
--

INSERT INTO `t_konsultasi` (`id`, `batuk`, `pilek`, `sakit_tenggorokan`, `menggigil`, `suhu_badan`, `lemah_lesu`, `sakit_kepala`, `nyeri_otot`, `nyeri_perut`, `mual`, `diare`, `riwayat_penyakit`, `gejala_lainnya`, `negara_kunjungan`, `kota_kunjungan`, `tgl_berangkat`, `tgl_pulang`, `created_at`, `updated_at`) VALUES
(1, 'ya', 'tidak', 'ya', 'ya', 'ya', 'ya', 'ya', 'tidak', 'ya', 'ya', 'ya', 'Tidak', 'Tidak', 'Tidak', 'Bekasi', '2020-05-26', '2020-05-27', '2020-05-16 17:10:38', '2020-05-17 01:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `t_login`
--

CREATE TABLE `t_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_meninggal`
--

CREATE TABLE `t_meninggal` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(11) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` enum('Andir','Astana Anyar','Antapani','Arcamanik','Babakan Ciparay','Bandung Kidul','Bandung Kulon','Bandung Wetan','Batununggal','Bojongloa Kaler','Bojongloa Kidul','Buah Batu','Cibeunying Kaler','Cibeunying Kidul','Cibiru','Cicendo','Cidadap','Cinambo','Coblong','Gedebage','Kiaracondong','Lengkong','Mandalajati','Panyileukan','Rancasari','Regol','Sukajadi','Sukasari','Sumur Bandung','Ujung Berung') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penetapan` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_pengguna`
--

CREATE TABLE `t_pengguna` (
  `id` int(16) NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempatlahir` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `usia` int(2) NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'andir',
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_pengguna`
--

INSERT INTO `t_pengguna` (`id`, `nik`, `nama`, `jenkel`, `tempatlahir`, `tgl_lahir`, `usia`, `alamat`, `kota`, `kecamatan`, `kelurahan`, `telepon`, `email`, `created_at`, `updated_at`) VALUES
(3, '3273041710020003', 'Ainani Tajriyan M', 'P', 'Cimahi', '2002-10-15', 17, 'Jl Muara rajeun', 'Bandung', 'panyileukan', 'Sukaasih', '088906774348', 'ainani.tajriyan08@gmail.com', '2020-05-15 13:06:58', '2020-05-16 21:35:43'),
(4, '3273041710020004', 'Ananda Cipta', 'L', 'Bandung', '2002-10-17', 17, 'Jl. Terusan Pasirkoja', 'Bandung', 'Bojongloa Kaler', 'Sukaasih', '088706331778', 'ciptaananda67@gmail.com', '2020-05-16 20:34:54', '2020-05-20 22:56:50'),
(5, '3273041710020005', 'Sahlan Putra Pratama', 'P', 'Bandung', '2003-06-26', 16, 'Jl Batununggal', 'Bandung', 'Bojongloa Kaler', 'Sukaasih', '088906774349', 'sahlan@gmail.com', '2020-05-16 21:41:43', '2020-05-20 03:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `t_relawan`
--

CREATE TABLE `t_relawan` (
  `id` int(11) NOT NULL,
  `pekerjaan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendapatan` int(11) NOT NULL,
  `keahlian` enum('Perawat','Konsultan','Apoteker','Relawan Lapangan') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Perawat',
  `rs_rujukan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_relawan`
--

INSERT INTO `t_relawan` (`id`, `pekerjaan`, `pendapatan`, `keahlian`, `rs_rujukan`, `nik`, `created_at`, `updated_at`) VALUES
(10, 'Pegawai Swasta', 10000000, 'Konsultan', 'Rumah Sakit Khusus Kopo', '3273041710020004', '2020-05-20 02:11:02', '2020-05-20 02:11:02'),
(11, 'Pegawai Swasta', 10000000, 'Apoteker', 'Rumah Sakit Santosa', '3273041710020005', '2020-05-20 03:45:11', '2020-05-20 03:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `t_rs_rujukan`
--

CREATE TABLE `t_rs_rujukan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_rs` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_dokter_paru` int(11) NOT NULL,
  `jml_tenaga_medis` int(11) NOT NULL,
  `kota` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kd_pos` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_rs_rujukan`
--

INSERT INTO `t_rs_rujukan` (`id`, `nama_rs`, `jml_dokter_paru`, `jml_tenaga_medis`, `kota`, `kecamatan`, `kelurahan`, `kd_pos`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Rumah Sakit Advent', 20, 300, 'Bandung', 'Bandung Wetan', 'Sukahaji', '40222', 'Rumah Sakit Perawatan Pasien Covid19', '2020-05-20 22:51:33', '2020-05-20 22:51:33');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ananda', 'ciptaananda67@gmail.com', NULL, '$2y$10$DP2pgza562B41S32.bZtPOAo/LCDsbbUZR4kOq2vyf3j0EFUsNa4O', NULL, '2020-05-24 21:20:53', '2020-05-24 21:20:53');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `t_apd`
--
ALTER TABLE `t_apd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_daftar_meninggal`
--
ALTER TABLE `t_daftar_meninggal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_daftar_odp`
--
ALTER TABLE `t_daftar_odp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_daftar_pdp`
--
ALTER TABLE `t_daftar_pdp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_daftar_positif`
--
ALTER TABLE `t_daftar_positif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_daftar_sembuh`
--
ALTER TABLE `t_daftar_sembuh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_dana`
--
ALTER TABLE `t_dana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_konsultasi`
--
ALTER TABLE `t_konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_login`
--
ALTER TABLE `t_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `t_login_email_unique` (`email`);

--
-- Indexes for table `t_meninggal`
--
ALTER TABLE `t_meninggal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pengguna`
--
ALTER TABLE `t_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_relawan`
--
ALTER TABLE `t_relawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_rs_rujukan`
--
ALTER TABLE `t_rs_rujukan`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t_apd`
--
ALTER TABLE `t_apd`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `t_daftar_meninggal`
--
ALTER TABLE `t_daftar_meninggal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_daftar_odp`
--
ALTER TABLE `t_daftar_odp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_daftar_pdp`
--
ALTER TABLE `t_daftar_pdp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_daftar_positif`
--
ALTER TABLE `t_daftar_positif`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_daftar_sembuh`
--
ALTER TABLE `t_daftar_sembuh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_dana`
--
ALTER TABLE `t_dana`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_konsultasi`
--
ALTER TABLE `t_konsultasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_login`
--
ALTER TABLE `t_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_meninggal`
--
ALTER TABLE `t_meninggal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_pengguna`
--
ALTER TABLE `t_pengguna`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_relawan`
--
ALTER TABLE `t_relawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_rs_rujukan`
--
ALTER TABLE `t_rs_rujukan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
