-- phpMyAdmin SQL Dump
-- version 4.6.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 03:39 PM
-- Server version: 10.2.6-MariaDB
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahcimahi`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_05_28_120923_create_schools_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `npsn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `villages` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subdistricts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `internet` tinyint(1) NOT NULL,
  `listrik` tinyint(1) NOT NULL DEFAULT 1,
  `perpustakaan` tinyint(1) NOT NULL,
  `lab` tinyint(1) NOT NULL,
  `wc` tinyint(1) NOT NULL DEFAULT 1,
  `akreditasi` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `created_at`, `updated_at`, `npsn`, `name`, `address`, `description`, `lat`, `lng`, `villages`, `subdistricts`, `status`, `image`, `internet`, `listrik`, `perpustakaan`, `lab`, `wc`, `akreditasi`) VALUES
(1, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20277139', 'MA NURUL FALAH', 'JL. MAHARMARTANEGARA NO. 130 A', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(2, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710070', 'MI NURUL FALAH', 'JL. MAHAR MARTANEGARA 130 A CIMAHI', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(3, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279751', 'MTs NURUL FALAH', 'JL. MAHAR MARTANEGARA NO. 130 A', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(4, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2965607', 'PKBM PEDULI CIMAHI', 'JL.Sukimun no.04 / SDN Baros Mandiri 1 Kel.Baros', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(5, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224176', 'SD KARTIKA XIX-2', 'Jl. KEBON RUMPUT D NO. 26', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(6, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224178', 'SD KARTIKA XIX-4', 'Jl. TAMAN KARTINI BAROS CIMAHI', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(7, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224177', 'SD KARTIKA XIX-5', 'Jl. TAMAN KARTINI BAROS CIMAHI', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(8, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227977', 'SD NEGERI BAROS MANDIRI 1', 'Jl Sukimun No 4', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(9, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227978', 'SD NEGERI BAROS MANDIRI 2', 'Jl Kebun Rumput 47', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(10, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254718', 'SD NEGERI BAROS MANDIRI 3', 'Jl. Mahar Martanegara No. 148', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(11, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254719', 'SD NEGERI BAROS MANDIRI 4', 'Jl Baros No 6 RT. 01/15', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(12, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254720', 'SD NEGERI BAROS MANDIRI 5', 'Jalan Jenderal Sudirman No. 150', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(13, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224013', 'SD NEGERI BAROS MANDIRI 6', 'Jl Jend Sudirman 150', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(14, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224215', 'SD NEGERI KEBONSARI 1', 'Jl H Haris No 13 B', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(15, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224214', 'SD NEGERI KEBONSARI 2', 'Jalan Haji Haris No.13 B', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(16, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224110', 'SMA KARTIKA XIX-4', 'JL. DR. SAM RATULANGI D-26', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(17, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224127', 'SMK KARYA BHAKTI PUSDIKPAL', 'JL. PONCOL SELATAN NO.24 CIMAHI', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(18, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224080', 'SMP BUDI LUHUR', 'Jl. KPAD Kebon Rumput No.1', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(19, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224070', 'SMP KARTIKA XIX-3', 'Jl. Dr. Sam Ratulangi D-26', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(20, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224082', 'SMP NEGERI 2 CIMAHI', 'Jl. Jend. Sudirman No. 152', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(21, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224068', 'SMP WIYATA BAKTI', 'Jl. Jenderal Sudirman No.150 Cimahi', '', '', '', 'BAROS', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(22, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20277134', 'MA AL-FARISY', 'JL. DAENG MUHAMMAD ARDIWINATA NO. 237', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(23, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60728081', 'MA MIFTAHUSSAADAH', 'JL. Raya Cibabat Blk. 400 No. 43', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(24, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20277138', 'MA MULTITEKNIK ASIH PUTERA', 'JL. DAENG MUHAMMAD ARDIWINATA NO. 199', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(25, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710075', 'MI AL-FARISY', 'JL. CIHANJUANG 237 RT. 03/11', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(26, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710076', 'MI ASIH PUTERA', 'Jl. JEND. H. AMIR MACHMUD Gg. H. MUSTOFA NO. 205', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(27, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279757', 'MTs AL-FARISY', 'JL. CIHANJUANG 240/237 CIMAHI', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(28, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279754', 'MTs ASIH PUTERA', 'Jl. Daeng Muhammad Ardiwinata No. 199', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(29, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P9954154', 'PKBM AL-IKHLAS', 'Jl. Cihanjuang Belakang No. 96', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(30, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P9948418', 'PKBM BRIGHTON', 'Jl. pondok Mutiara XI No.26 RT.07/23', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(31, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2964972', 'PKBM MISYKATUL ANWAR', 'Jl. Sentral No. 43', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(32, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69887547', 'RA. Cendiqia', 'Jl.Sukajaya Rt 05 Rw 04 Kel.Cibabat', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(33, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228568', 'SD IT AL-MAQOM', 'Jl. PASANTREN VI RT.06/15 NO. 225 CIBABAT', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(34, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224155', 'SD IT NUR AL RAHMAN', 'Jl. Cihanjuang No. 77 A', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(35, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224165', 'SD NEGERI CIBABAT 2', 'Jl. Cihanjuang No. 169', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224165/1.jpg', 0, 1, 0, 0, 1, ''),
(36, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224163', 'SD NEGERI CIBABAT 4', 'Jl. Cihanjuang No. 88', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(37, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224162', 'SD NEGERI CIBABAT 5', 'Jl. Pesantren No 109 Telp 022-6647018', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(38, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227979', 'SD NEGERI CIBABAT MANDIRI 1', 'Jl. Cihanjuang Komp. Nata Endah No. 171 RT.07 RW.02', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(39, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227980', 'SD NEGERI CIBABAT MANDIRI 2', 'Jl. Pesantren No. 107', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(40, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224036', 'SD NEGERI CIBABAT MANDIRI 3', 'Jl. Cihanjuang Babut Girang', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(41, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224004', 'SD NEGERI CIBABAT MANDIRI 4', 'Jl. Sentral Utara No. 102', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(42, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224023', 'SD NEGERI CIBABAT MANDIRI 5', 'Jl Pasantren No 86 A', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(43, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224114', 'SMA NEGERI 3 CIMAHI', 'JL. PESANTREN NO. 161', '<table id=\"table-no\" width=\"97%\"> <tbody> <tr> <td> <p><strong>1. Identitas Sekola</strong></p> <table border=\"0\"> <tbody> <tr> <td>&nbsp;Nama Sekolah</td> <td>: &nbsp;</td> <td>&nbsp;SMAN 3 Cimahi</td> </tr> <tr> <td>&nbsp;Alamat Sekolah&nbsp;&nbsp;&nbsp;</td> <td>:</td> <td>&nbsp;Jl. Pesantren No.161&nbsp;</td> </tr> <tr> <td>&nbsp;Kelurahan</td> <td>:</td> <td>&nbsp;Cibabat</td> </tr> <tr> <td>&nbsp;Kota</td> <td>:</td> <td>&nbsp;Cimahi</td> </tr> <tr> <td>&nbsp;Provinsi</td> <td>:</td> <td>&nbsp;Jawa Barat</td> </tr> <tr> <td>&nbsp;Kode Pos &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</td> <td>:</td> <td>40513 &nbsp;</td> </tr> <tr> <td>&nbsp;Telepon</td> <td>:</td> <td>&nbsp;(022) 6652807</td> </tr> <tr> <td>&nbsp;Nomer Sk Pendirian</td> <td>:</td> <td>&nbsp;0601/0/1985</td> </tr> <tr> <td>Berdiri tangga</td> <td>:</td> <td>&nbsp;22 november 1985</td> </tr> <tr> <td>Yang Melakukan Sk</td> <td>:</td> <td>&nbsp;Men Dik.Bud.Ri</td> </tr> <tr> <td>&nbsp;NISS</td> <td>:</td> <td>&nbsp;30.1.02.08.01.003</td> </tr> <tr> <td>&nbsp;NPSN</td> <td>:</td> <td>&nbsp;20224114</td> </tr> <tr> <td>&nbsp;NPWP &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td> <td>:</td> <td>&nbsp;0.048.752.0.424&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> </tr> </tbody> </table> <p>&nbsp;&nbsp;&nbsp;</p> <p><strong>2. Akreditasi</strong></p> <table border=\"0\"> <tbody> <tr> <td>Peringkat akreditasi</td> <td>:&nbsp;&nbsp;</td> <td>&nbsp;A</td> </tr> <tr> <td>Nilai Akreditasi</td> <td>:</td> <td>&nbsp;A</td> </tr> <tr> <td>Nomer Akreditasi</td> <td>:</td> <td>&nbsp;&nbsp;02.00/141/BAP-SM/XII/2007</td> </tr> <tr> <td>Tanggal Pengeluaran&nbsp; &nbsp;&nbsp;&nbsp;</td> <td>:</td> <td>&nbsp;13 Desember 2007</td> </tr> <tr> <td>Yang Mengeluarkan Sk&nbsp;</td> <td>:</td> <td>&nbsp;BAP SM Prov.Jaba</td> </tr> </tbody> </table> </td> </tr> </tbody> </table>', '-6.8738545', '107.5574182', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224114/1.jpg', 1, 1, 1, 1, 1, 'A'),
(44, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224079', 'SMP NEGERI 10 CIMAHI', 'Jl. Daeng Muhammad Ardiwinata Km. 2.5', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(45, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224098', 'SMP PGRI 4 CIMAHI', 'Jl. Daeng Muhammad Ardiwinata Kav IPTN', '', '', '', 'CIBABAT', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(46, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710061', 'MI BAITURRAHIM', 'JL. IBU GANIRAH NO. 24 CIBEBER', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(47, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279750', 'MTs BAITURRAHIM', 'JL.IBU GANIRAH NO.24 RT.06/05 CIBEBER', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(48, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279746', 'MTs NEGERI SUKASARI', 'JL. TSANAWIYAH NO. 1 CIBEBER', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(49, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2963103', 'PKBM BINA MEKAR', 'Ibu Ganirah No. 15', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(50, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224251', 'SD NEGERI CIBEBER 1', 'Jl. Ibu Ganirah No. 71', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(51, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224266', 'SD NEGERI CIBEBER 2', 'Jl. Ibu Ganirah No.71', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(52, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224265', 'SD NEGERI CIBEBER 3', 'Jl. Ibu Ganirah No. 71', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(53, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224264', 'SD NEGERI CIBEBER 4', 'Jl. Ibu Ganirah No 71', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(54, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227983', 'SD NEGERI CIBEBER MANDIRI 1', 'Jl. Ibu Ganirah No. 111 Rt 03/02', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(55, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227984', 'SD NEGERI CIBEBER MANDIRI 2', 'Jl. Pengkolan No. 29', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(56, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224115', 'SMA BUDI LUHUR', 'JL. KERKOF NO. 214 RT. 10/08 KP. PADAKASIH', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(57, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224137', 'SMA WARGA BAKTI', 'JL. RAYA CIBEBER NO. 148', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(58, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20271621', 'SMK PASUNDAN 2', 'JL. IBU SANGKI NO. 64 CIBEBER', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(59, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224087', 'SMP WARGA BAKTI', 'Jl. Raya Cibeber No. 148', '', '', '', 'CIBEBER', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(60, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710065', 'MI AL-HIDAYAH', 'JL. KEBON KOPI Gg. H. SYAFEI NO. 66', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(61, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710058', 'MI AR-RIYADL', 'JL. RANCABENTANG RT. 03/15', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(62, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710062', 'MI CIMINDI I', 'JL. JENDRAL H. AMIR MACHMUD GG. H. ARSYAD RT.05/18', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(63, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710066', 'MI CIMINDI II', 'JL. JENDRAL H. AMIR MACHMUD GG. H. ARSYAD RT.05/18', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(64, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60727411', 'MTs AR-RIYADL', 'JL. RANCABENTANG BARAT RT. 03 RW.15', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(65, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69888944', 'RA Al Kautsar', 'Jl Kebon Jeruk No 261 RT 05 RW 20', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(66, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69888945', 'RA Qurrota Ayun', 'MUKODAR TENGAH NO.72', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(67, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739384', 'RA/BA/TA AN-NUR', 'JL. RANCABENTANG RT. 03/26', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(68, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739387', 'RA/BA/TA AS-SYUHADA', 'J. CIBALIGO NO. 46 RT. 03/16', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(69, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224198', 'SD HIKMAH TELADAN', 'Jl. Jend. H. Amir Machmud BLK No. 177 A', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(70, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69950787', 'SD ISLAM AL-KAUTSAR', 'Jl. KEBON JERUK NO. 261 RT. 05 RW. 20', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(71, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224156', 'SD LANGENSARI', 'Jl. Langensari Cibeureum', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(72, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69857699', 'SD MAKEDONIA', 'Gg. Karangsari No. 29 RT. 04/02', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(73, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224263', 'SD NEGERI CIBEUREUM 5', 'Jl. Jend. H. Amir Machmud No. 11', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(74, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224262', 'SD NEGERI CIBEUREUM 7', 'Cimindi Timur Rt. 01/21', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(75, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227986', 'SD NEGERI CIBEUREUM MANDIRI 1', 'Jl. Mahar Martanegara No. 35', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(76, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227985', 'SD NEGERI CIBEUREUM MANDIRI 2', 'Kp. Rancabentang RT.06/12', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(77, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224052', 'SD NEGERI RANCABENTANG 3', 'Jl.Kebon Kopi Kp. Leuweung Gede No. 381 RT. 06/27', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(78, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224022', 'SD NEGERI TUNAS HARAPAN', 'Cimindi Timur No 108', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(79, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224021', 'SD NEGERI TUNAS MEKAR', 'Cimindi Timur No. 108 Rt 03/23', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(80, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224119', 'SLB BC NURANI', 'Jl Jend Amir Machmud Gg Arsyad No 187', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(81, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224076', 'SMP DHARMA KARTINI', 'Jl. Maharmartanegara No. 21', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(82, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224073', 'SMP IT BAITUL ANSHOR', 'Jl. Tirta Indah Iii Rt 07/12', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(83, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224086', 'SMP MUSLIMIN CIBEUREUM', 'Jl. Kebon Kopi Gg. H Safei No 277', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(84, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224078', 'SMP NEGERI 7 CIMAHI', 'Jl. Kebon Jeruk', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(85, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224097', 'SMP PGRI CIBEUREUM', 'Jl. Terusan SMPN 7 Cimahi', '', '', '', 'CIBEUREUM', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(86, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710068', 'MI CAHAYA', 'JL. CIGUGUR TENGAH NO. 238', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(87, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710073', 'MI NURUL HUDA', 'JL. ABDUL HALIM RT.03/03', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(88, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279753', 'MTs AL-MUSYAHADAH', 'JL. RAYA CILEMBER NO.27 BLK. 283', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(89, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279752', 'MTs FATAHILLAH', 'JL. CIGUGUR TENGAH NO. 45', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(90, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739404', 'RA/BA/TA ANNUR', 'CIGUGUR TENGAH RT.06/10 CIMAHI TENGAH', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(91, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739406', 'RA/BA/TA AT TAQWA CIPUTRI', 'JL. CIPUTRI CIMINDI RT.07/05 CIGUGUR TENGAH', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(92, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739412', 'RA/BA/TA FATIMIYAH', 'CIGUGUR TENGAH NO 261 RT 06 RW 08', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(93, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739417', 'RA/BA/TA NURUL HUDA', 'JL. RH. ABDUL HALIM NO.193 /20RT.03/03', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(94, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224160', 'SD NEGERI BINA HARAPAN', 'Jl. Cibaligo No. 6', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(95, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224173', 'SD NEGERI BUDHI KARYA', 'Jl. AMIR MACHMUD KOMPLEK BRSPC No. 26', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(96, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224174', 'SD NEGERI BUDI ASIH', 'Jl. Amir Machmud Komp. BRSPD No.25', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(97, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224258', 'SD NEGERI CIGUGUR TENGAH', 'Jl Abd Halim No 24.a', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(98, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224281', 'SD NEGERI CIMINDI 2', 'Jl. Cibaligo No.06', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(99, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224283', 'SD NEGERI CIMINDI 4', 'Jl Cibaligo No 06', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(100, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224284', 'SD NEGERI CIMINDI 5', 'Jl Cibaligo No 06', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(101, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224219', 'SD NEGERI KARYA BAKTI', 'Jl. Amir Machmud No 6', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(102, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224005', 'SD NEGERI SINDANGSARI', 'Jl. Rh Abdul Halim No 24 A', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(103, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224003', 'SD NEGERI SOSIAL 1', 'Jl. Amir Machmud Komp. BRSPC No. 23', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(104, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20223994', 'SD NEGERI SOSIAL 2', 'Jl. Amir Mahmud Komplek BPSPC No.24', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(105, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224028', 'SD NEGERI SUKANAMPA', 'Jl. Pelangi Bbr No. 1', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(106, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224085', 'SMP MUHAMMADIYAH 5', 'Jl. Raya Cibabat No. 7 B', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(107, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224096', 'SMP PGRI 5 CIMAHI', 'Jl. RH. Abdul Halim', '', '', '', 'CIGUGUR_TENGAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(108, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739405', 'RA/BA/TA AR-RAHMI', 'JL.KAUM NO.2 KOTA CIMAHI MASJID AGUNG KOTA CIMAHI', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(109, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739413', 'RA/BA/TA HIKMATUL WUTSQA', 'JL. LEUBAKSARI MARGALUYU RT 07/02 CIMAHI', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(110, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739415', 'RA/BA/TA MULTAZAM', 'JL. KOL. MASTURI GG. MARGARESIK 1 RT.01/10 NO.119 CIMAHI TENGAH', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(111, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20229247', 'SD IT USWATUN HASANAH', 'Jl. MK. Wiganda Sasmita No. 19A', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', 'http://foto2.data.kemdikbud.go.id/getImage/20229247/1.jpg', 0, 1, 0, 0, 1, ''),
(112, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227987', 'SD NEGERI CIMAHI MANDIRI 1', 'Jl. Alun-alun Timur No.44', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', '', 1, 1, 1, 0, 1, ''),
(113, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227988', 'SD NEGERI CIMAHI MANDIRI 2', 'Jl. Dra. Hj. Djulaeha Karmita No. 1', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(114, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227989', 'SD NEGERI CIMAHI MANDIRI 3', 'Jl Margaluyu No 47', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(115, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254721', 'SD NEGERI CIMAHI MANDIRI 4', 'Jl Terusan No 21', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(116, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254722', 'SD NEGERI CIMAHI MANDIRI 5', 'Jl. Dra. Djulaeha Karmita No. 2', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(117, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20270931', 'SLB NEGERI 2 SENTRA PKPLK', 'Jl. Dra. Hj. Djulaeha Karmita No.3', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(118, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224113', 'SMA NEGERI 1 CIMAHI', 'JL. PACINAN NO. 22 A CIMAHI', '<p>SMA Negeri 1 Cimahi berdiri sejak tahun 1961 dengan nama SMA DT II Bandung di Cimahi dan berlokasi di Sekolah Hsin Hua milik Yayasan BAPERKI jalan Pasar Atas No.47 D. Pada awalnya di bawah kepemimpinan Kepala Sekolah pertama Syukron Sulaeman hanya memiliki 2 kelas yaitu bagian B (Pasti Alam) dan bagian C (Ilmu Sosial) .</p> <p>Kemudian pada tahun 1962 SMA Swasta DT II Bandung di Cimahi menjadi Filial SMA Negeri 5 Bandung. Kemudian pada tahun 1964 berubah menjadi SMA Negeri Cimahi berdasarkan Surat Keputusan Pendirian Nomor : 79/SK/B/III/64 dengan Kepala Sekolah Tan kim Hay (Soetjonegoro) tepatnya tanggal 30 Juli 1964.</p> <p>Fasilitas yang dimiliki selain 27 ruang kelas, juga terdapat 1 perpustakaan, 1 ruang multi media dan 3 laboratorium (laboratorium bahasa, Lab. IPA, Lab.IPS dan komputer), 1 Kepala sekolah, , 1 ruang guru MP, 1 ruang guru BK, 1 Ruang TU, 1 ruang Komite Sekolah, 1 lapangan olahraga , mesjid, ruang OSIS, 1 ruang stusio musik, 1 ruang tata boga, dan ruang &ndash; ruang Ekstrakurikuler yang ada berjumlah 4 ruang kegiatan yang dibagi menjadi 12 unit kegiatan, 2 ruang parkir motor dan garasi mobil Kepsek.</p>', '-6.870829', '107.5414342', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224113/3.jpg', 0, 1, 1, 1, 1, 'A'),
(119, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224112', 'SMA NEGERI 5 CIMAHI', 'JL. PACINAN NO. 23 CIMAHI RT.3/4', '<p><br />NPSN :&nbsp;20224112</p> <p>Status :&nbsp;Negeri</p> <p>Bentuk Pendidikan :&nbsp;SMA</p> <p>Status Kepemilikan :&nbsp;Pemerintah Daerah</p> <p>SK Pendirian Sekolah :&nbsp;0426/O/1991</p> <p>Tanggal SK Pendirian :&nbsp;1991-07-15</p> <p>SK Izin Operasional :&nbsp;0426/O/1991</p> <p>Tanggal SK Izin Operasional :&nbsp;1991-07-15</p> <p>Kebutuhan Khusus Dilayani :&nbsp;Tidak ada</p> <p>Nama Bank :&nbsp;BNI</p> <p>Cabang KCP/Unit :&nbsp;UNJANI</p> <p>Rekening Atas Nama :&nbsp;SMA NEGERI 5 CIMAHI</p> <p>Luas Tanah Milik :&nbsp;2715</p> <p>Luas Tanah Bukan Milik :&nbsp;2341</p> <p>Status BOS :&nbsp;Bersedia Menerima</p> <p>Waku Penyelenggaraan :&nbsp;Pagi</p> <p>Sertifikasi ISO :&nbsp;Belum Bersertifikat</p> <p>Sumber Listrik :&nbsp;PLN</p> <p>Daya Listrik :&nbsp;30400</p>', '-6.8750937', '107.5421257', 'CIMAHI', 'CIMAHI_TENGAH', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224112/3.jpg', 0, 1, 0, 1, 1, 'A'),
(120, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224106', 'SMA PASUNDAN 1', 'JL. TERUSAN NO. 32', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(121, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224132', 'SMK PASUNDAN PUTRA', 'JL. TERUSAN NO. 32 CIMAHI', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(122, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224131', 'SMK PGRI 3 CIMAHI', 'JL. TERUSAN GG.BABAKAN BARU NO.4B', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(123, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224099', 'SMP PASUNDAN 3', 'Jl. Terusan No. 32 Cimahi', '', '', '', 'CIMAHI', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(124, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20277140', 'MA NURUL IMAN', 'JL. CIPAGERAN NO. 160', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(125, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69819536', 'MI ROUDHOTUL ILMI', 'Jl. Cikendal No. 10 Rt. 05 Rw. 04 Kel. Cipageran', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(126, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279758', 'MTs MISBAHUNNUR', 'JL. KOLONEL MASTURI KM 03', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(127, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279755', 'MTs NURUL IMAN', 'JL. CIPAGERAN NO.160 CIMAHI', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(128, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P9959698', 'PKBM ABDUL MAJID AL-GHOZALI', 'Kp. Pakuhaji RT.03/17', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(129, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2970293', 'PKBM BINA MANDIRI CIPAGERAN', 'JL. KOLONEL MASTURI KM 03 KMP CIMENTENG NO. 2 RT.01/11 KEL. CIPAGERAN. KEC. CIMA', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(130, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962481', 'PKBM BINA WARGA', 'Puri Cipageran Indah Blok A 120', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(131, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2964382', 'PKBM NUGRAHA MANDIRI', 'Jl. Sawah Lega III No. 70A RT. 03 RW. 02', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(132, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69849613', 'SD IT CIPTA CENDIKIA INDONESIA', 'JL. SANGKURIANG NO. 79 CIMAHI', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(133, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254725', 'SD NEGERI CIPAGERAN MANDIRI 1', 'Jl. Cipageran No. 99/101', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(134, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227991', 'SD NEGERI CIPAGERAN MANDIRI 2', 'Jl. Purbasari No. 67', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(135, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227992', 'SD NEGERI CIPAGERAN MANDIRI 3', 'Jl. Kol. Masturi No. 96', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(136, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227993', 'SD NEGERI CIPAGERAN MANDIRI 4', 'Jl. Kol. Masturi No. 125 C', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(137, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224051', 'SD NEGERI PAMBUDI DHARMA', 'Jl. Kol. Masturi Km. 3', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(138, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224006', 'SD NEGERI SETIAWARGA', 'Jl. Kol. Masturi Cimenteng', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(139, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20258450', 'SD SEMESTA HATI', 'Jl. Kolonel Masturi KM 3 No. 80A', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(140, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P9959904', 'SKB KOTA CIMAHI', 'Jl. Cipageran No. 96 RT. 01 RW. 16', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(141, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20247214', 'SLB MUKTI ASIH', 'Jl. Martasik No. 24', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(142, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224118', 'SLB PAMBUDI DHARMA 1', 'Jl.kolonel Masturi Km 03', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(143, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224122', 'SMA PUTRA MANDIRI', 'JL. KOMP SANGKURIANG NO. 36', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(144, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224125', 'SMK SANGKURIANG 1', 'JL. SANGKURIANG NO. 76 CIMAHI', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(145, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224126', 'SMK SANGKURIANG 2', 'JL. SANGKURIANG NO. 80 CIMAHI', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(146, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224104', 'SMK TARUNA MANDIRI', 'JL. KOMPLEK SANGKURIANG NO. 36 CIMAHI', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(147, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69786297', 'SMK TI BINTANG HARAPAN', 'JL. KOLONEL MASTURI NO. 213', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(148, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20268261', 'SMK TI GARUDA NUSANTARA', 'JL. SANGKURIANG NO. 30 Kota Cimahi', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(149, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20253267', 'SMP NEGERI 11 CIMAHI', 'Jl Torobosan Cimenteng', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(150, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224077', 'SMP NEGERI 5 CIMAHI', 'Jl. Cipageran No. 146', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(151, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20258451', 'SMP SEMESTA HATI', 'Jl. Kolonel Masturi KM 3 No. 80A', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(152, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224090', 'SMP TARUNA MANDIRI', 'Jl. Komplek Sangkuriang No 36', '', '', '', 'CIPAGERAN', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(153, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20277135', 'MA AL-MUSDARIYAH', 'JL. KAMARUNG NO 25 A RT 01/04', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(154, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279756', 'MTs AL-MUSDARIYAH 2', 'JL. KAMARUNG NO.42 RT.02 RW.04', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(155, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279759', 'MTs PASUNDAN', 'JL. ENCEP KARTAWIRIA NO.97/A CIMAHI', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(156, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224167', 'SD NEGERI CEMPAKA', 'Jl. Encep Kartawiria No. 49', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(157, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224274', 'SD NEGERI CITEUREUP 2', 'Jl Encep Kartawiria No. 49', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(158, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224273', 'SD NEGERI CITEUREUP 3', 'Jl. Encep Kartawiria No. 49', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(159, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227994', 'SD NEGERI CITEUREUP MANDIRI 1', 'Jl. Encep Kartawiria No 49', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(160, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224065', 'SD NEGERI CITEUREUP MANDIRI 2', 'Jl. Ciawitali No. 51', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(161, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224213', 'SD NEGERI MAWAR', 'Jl. Encep Kartawiria No. 49', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(162, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224154', 'SD PLUS NURUL AULIA', 'Jl. Sukarasa No. 26 RT.04/11', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(163, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69901029', 'SD TRIDAYA TUNAS BANGSA', 'Jl. Encep Kartawiria No. 18 (157B) RT.02/16', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(164, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224201', 'SDK BPK PENABUR', 'Jl. Encep Kartawiria No. 75', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(165, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '58570036', 'SLB NEGERI A CITEUREUP', 'Jl. Sukarasa No. 40', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(166, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224121', 'SMA PASUNDAN 3', 'JL. ENCEP KARTAWIRIA NO. 97A', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(167, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224138', 'SMA TUT WURI HANDAYANI', 'JL. ENCEP KARTAWIRIA NO. 93', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(168, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228011', 'SMK KESEHATAN BHAKTI KENCANA', 'JL. ENCEP KARTAWIRIA NO.91', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(169, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20238571', 'SMK NEGERI 2 CIMAHI', 'JL. KAMARUNG KM. 1.5 No. 69', '<p><strong>SMA Negeri 2 Cimahi</strong>&nbsp;(SMAN 2 Cimahi), merupakan salah satu&nbsp;<a title=\"Sekolah Menengah Atas\" href=\"https://id.wikipedia.org/wiki/Sekolah_Menengah_Atas\">Sekolah Menengah Atas</a>&nbsp;Negeri yang ada di&nbsp;<a title=\"Provinsi\" href=\"https://id.wikipedia.org/wiki/Provinsi\">Provinsi</a>&nbsp;<a title=\"Jawa Barat\" href=\"https://id.wikipedia.org/wiki/Jawa_Barat\">Jawa Barat</a>,&nbsp;<a title=\"Indonesia\" href=\"https://id.wikipedia.org/wiki/Indonesia\">Indonesia</a>.<sup id=\"cite_ref-1\"><a href=\"https://id.wikipedia.org/wiki/SMA_Negeri_2_Cimahi#cite_note-1\">[1]</a></sup>Sama dengan SMA pada umumnya di&nbsp;<a title=\"Indonesia\" href=\"https://id.wikipedia.org/wiki/Indonesia\">Indonesia</a>&nbsp;masa&nbsp;<a title=\"Pendidikan\" href=\"https://id.wikipedia.org/wiki/Pendidikan\">pendidikan</a>&nbsp;<a title=\"Sekolah\" href=\"https://id.wikipedia.org/wiki/Sekolah\">sekolah</a>&nbsp;di SMAN 2 Cimahi ditempuh dalam waktu tiga tahun pelajaran mulai dari Kelas X sampai Kelas XII. Bangunan SMA Negeri 2 Cimahi dibangun pada tahun 1976, dengan bangunan utama ruang kelas bagian barat dan ruang laboratorium IPA yang masyarakat juga dikenal dengan sebutan&nbsp;<strong>SMA Sriwijaya</strong>&nbsp;dan kini dikenal dengan sebutan&nbsp;<strong>SMANDACI</strong>&nbsp;atau&nbsp;<strong>DACI</strong>. SMA Negeri 2 Cimahi merupakan salah satu&nbsp;<em>sekolah dengan integritas</em>&nbsp;tinggi di Indonesia pada tahun 2015.</p>', '-6.8515982', '107.5482667', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20238571/1.jpg', 1, 1, 1, 1, 1, 'A'),
(170, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224135', 'SMK NEGERI 3 CIMAHI', 'JL. SUKARASA NO. 136 CITEUREUP', '', '-6.8594008', '107.5546261', 'CITEUREUP', 'CIMAHI_UTARA', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224135/2.jpg', 1, 1, 1, 1, 1, 'A'),
(171, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224133', 'SMK PASUNDAN 1', 'JL. ENCEP KARTAWIRIA NO. 97A', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(172, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224130', 'SMK PGRI 1 CIMAHI', 'JL. TERUSAN GG. KARYA CIMAHI', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(173, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224129', 'SMK PGRI 2 CIMAHI', 'JL. ENCEP KARTAWIRIA NO.153 CIMAHI UTARA', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(174, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224102', 'SMK TUT WURI HANDAYANI', 'JL. ENCEP KARTAWIRIA NO. 93 CIMAHI', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(175, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224101', 'SMP PASUNDAN 1', 'Jl. Ciawitali No 162 Citeureup', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(176, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224089', 'SMP TUTWURI HANDAYANI', 'Jl. Encep Kartawiria No 93', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(177, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224081', 'SMPK BPK PENABUR', 'Jl. Encep Kartawiria No. 75', '', '', '', 'CITEUREUP', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(178, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962480', 'PKBM BINA UMAT', 'Kalidam No. 34', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(179, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227996', 'SD NEGERI KARANGMEKAR MANDIRI 1', 'Jl. Jend. Amir Machmud No.505 Telp. (022) 6631964', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(180, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227995', 'SD NEGERI KARANGMEKAR MANDIRI 2', 'Jl. Simpang Gg. Rangsom No. 6-A Telp. (022) 6624224', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(181, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224153', 'SD PURNAMA', 'Jl. Microwave No. 106', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(182, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224107', 'SMA MUHAMMADIYAH 1', 'JL. JEND AMIR MACHMUD NO. 7', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(183, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224124', 'SMA SANTA MARIA 3', 'JL. GATOT SUBROTO NO. 6', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(184, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224128', 'SMK PUSDIKHUBAD', 'JL. KALIDAM NO.1 CIMAHI TENGAH', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(185, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224072', 'SMP NEGERI 1 CIMAHI', 'Jl. Raden Embang Artawijaya No. 12', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(186, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224071', 'SMP NEGERI 6 CIMAHI', 'Jl. Jend. Gatot Subroto 19', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(187, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224095', 'SMP PGRI 1 CIMAHI', 'Jl. Jenderal Amir Machmud Gg. PGRI No. 22', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(188, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224094', 'SMP PGRI 3 CIMAHI', 'Jl. Panday RT. 02 / RW. 06', '', '', '', 'KARANGMEKAR', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(189, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20277136', 'MA AS-SA ADAH', 'JL. SADARMANAH NO. 110', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(190, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20277137', 'MA NEGERI CIMAHI', 'JL. KIHAPIT BARAT NO. 319 LEUWIGAJAH', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(191, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710060', 'MI LAYYINA', 'JL. KIHAPIT KALER NO. 125 RT.05/03', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(192, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710064', 'MI SADARMANAH', 'JL. SADARMANAH NO. 120', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(193, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279749', 'MTs SADARMANAH', 'JL. SADARMANAH NO. 110', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(194, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962748', 'PKBM ASY-SYIFA', 'Kerkoff', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(195, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962483', 'PKBM CIREUNDEU RAYA', 'Kihapit', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(196, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2964170', 'PKBM DAARUL PIQRI', 'Jl. Kerkof No. 1 RT. 01 RW.09', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(197, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962834', 'PKBM MITRA MANDIRI', 'Jl. Sadarmanah No.136A RT. 01 RW. 18', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(198, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69887539', 'RA. Al Muhajirin', 'Komp.Suaka Indah Gajah I No 22', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(199, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739386', 'RA/BA/TA AR-ROHMAH', 'KOMP. TAMAN BUKIT CIBOGO BLOK A6 NO. 11 RT. 03/17', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(200, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739388', 'RA/BA/TA AT TAQWA LEUWI GAJAH', 'JL. cisalak RT.02/4 leuwigajah Cimahi selatan', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(201, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739399', 'RA/BA/TA SADARMANAH', 'JL. SADARMANAH GG. KERAMAT LEUWIGAJAH', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(202, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739400', 'RA/BA/TA SALAFUL BINA', 'JL. SADARMANAH GG. PASANTREN I RT.04/02', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(203, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224200', 'SD BUDILUHUR', 'Jl. Gajah XVII No. 16', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(204, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224157', 'SD KREATIF HARAPAN BANGSA', 'JL. SADARMANAH NO.3 RT.01/02 LEUWIGAJAH', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(205, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224276', 'SD NEGERI CIREUNDEU', 'Jl. Saptadaya', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(206, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224248', 'SD NEGERI KIHAPIT', 'Jl. Kerkof No. 30 A', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(207, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224243', 'SD NEGERI LEUWIGAJAH 2', 'Jl. Cibogo No. 48', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(208, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224242', 'SD NEGERI LEUWIGAJAH 3', 'Jl. Kerkof No. 33', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(209, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224240', 'SD NEGERI LEUWIGAJAH 5', 'Jl. Kerkof No. 52', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(210, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224239', 'SD NEGERI LEUWIGAJAH 6', 'Jl. Cibogo RT. 02/07', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(211, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227997', 'SD NEGERI LEUWIGAJAH MANDIRI 1', 'Jl. Sadarmanah No. 12', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(212, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224238', 'SD NEGERI LINGGABUDI', 'Jl.kerkop No.56', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(213, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224140', 'SLB BC ARAS', 'Jl. Kerkhof Komplek Sekolah Kihapit', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, '');
INSERT INTO `schools` (`id`, `created_at`, `updated_at`, `npsn`, `name`, `address`, `description`, `lat`, `lng`, `villages`, `subdistricts`, `status`, `image`, `internet`, `listrik`, `perpustakaan`, `lab`, `wc`, `akreditasi`) VALUES
(214, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224109', 'SMA NEGERI 4 CIMAHI', 'JL. KIHAPIT BARAT NO. 323', '<div> <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"> <tbody> <tr> <td valign=\"top\" width=\"224\"> <p>Nama Sekolah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>SMA Negeri 4 Cimahi</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Alamat</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>Jln. Kihapit Barat No. 323 Cimahi Selatan</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Nomor Statistik Sekolah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>301020803004</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Tahun didirikan</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1992</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Tahun Beroperasi</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1993</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Status Tanah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>Milik Sendiri</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>a. Surat Kepimilikan Tanah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>726/JB/CMSH/1989</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>b. Luas Tanah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>9.130 M<sup>2</sup></p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Status Bangunan</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>Permanen</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>a. Surat Ijin Bangunan</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>&ndash;</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>b. Luas Bangunan</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>2.502</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Data Ruang Kelas</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>26 Ruang kelas baik</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Kepala Sekolah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Wakil&nbsp;&nbsp;Kepala Sekolah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang SKM</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Multimedia</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>2&nbsp;Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Seni Modern/Tradisional</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>2&nbsp;Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Tata Usaha</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Piket</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Laboratorium</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>&nbsp;</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>a. Lab. Fisika</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>b. Lab. Biologi/Kimia</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>c. Lab. Bahasa</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>d. Lab. Komputer</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>2 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Ekstra Kurikuler</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>6 Ruang @ 2&times;2,5 m</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang OSIS</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang (2,5 x5 m)</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Koperasi Sekolah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang (8 x 2,5 m)</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Seni</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Gudang</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang (8&times;5 m)</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Jumlah Rombongan Belajar</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>&nbsp;</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>a. Kelas X</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>10 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>b. Kelas XI</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>8 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>c. Kelas XII</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>8 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Masjid</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Kantin Sekolah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>3 Ruangan</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Bimbingan dan Konseling</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Penjaga Sekolah</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>2 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Serbaguna</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Pos Keamanan</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>1 Ruang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Halaman</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>5.535 M2</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Ruang Parkir</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>2 Lokasi</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Keadaan Guru dan Tata Usaha</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>&nbsp;</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>a. Jumlah Guru Keseluruhan</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>76 Orang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>b. Guru Tetap</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>72 Orang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>c. Guru Tidak Tetap</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>4 Orang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>d. Guru DPK</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>&ndash;</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>e. Staf Tata Usaha</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>4 Orang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>f. Staf TU Tidak Tetap</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>6 Orang</p> </td> </tr> <tr> <td valign=\"top\" width=\"224\"> <p>Sumber Dana Operasional dan Perawatan</p> </td> <td valign=\"top\" width=\"18\"> <p>:</p> </td> <td valign=\"top\" width=\"312\"> <p>SPP/UYHD</p> </td> </tr> </tbody> </table> </div> <div id=\"jp-post-flair\">&nbsp;</div>', '-6.9023752', '107.5194689', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224109/5.jpg', 0, 1, 1, 1, 1, 'A'),
(215, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69901269', 'SMK KESEHATAN SURYA GLOBAL', 'Jl. Pendidikan I RT 09 RW 09 Kihapit Barat', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(216, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254076', 'SMP KREATIF HARAPAN BANGSA', 'Jl. Sadarmanah No. 3', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(217, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224069', 'SMP NEGERI 8 CIMAHI', 'Jl. Kihapit Barat No.320', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(218, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224093', 'SMP PGRI LEUWIGAJAH', 'Jl. Kerkhof No.52', '', '', '', 'LEUWIGAJAH', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(219, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'K5667783', 'LKP Cahaya Khansaa', 'Jl. Hercules 4 No.128 RT.02 RW. 23 Kom. Melong Green Garden', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(220, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710063', 'MI MIFTAHUL HUDA', 'JL. SUKAHAJI NO.143 MELONG', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(221, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279748', 'MTs DARUSSALAM', 'JL. SUKAHAJI NO. 143 MELONG', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(222, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962482', 'PKBM AKADEMIKA', 'Baros No. 23D', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(223, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962214', 'PKBM AT-TAJDID', 'Blok Cikendal', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(224, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2965120', 'PKBM BINA MANDIRI TERPADU', 'Jl. Melong Cibaligo No. 21', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(225, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2963227', 'PKBM MUNGGARAN', 'Jl. Melong Gg Melong Tengah 1 No. 220 RT 04 RW. 04', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(226, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739382', 'RA/BA/TA AL-KAUTSAR', 'JL. TROWULAN 5 BLOK T NO. 80 RT 1/RW 25 cimahi 40534RT. 01/25', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(227, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739385', 'RA/BA/TA AN NIDA', 'JL. BAKTI MAS 3 NO. 188', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(228, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739397', 'RA/BA/TA NURUL YUSRO', 'JL. BOROBUDUR II NO. 23 RT.03/10', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(229, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20268942', 'SD JUARA', 'JL. ROROJONGRANG II RT 03 RW 04', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(230, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224042', 'SD NEGERI MELONG ASIH 4', 'Jl Melong Raya No 195', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(231, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224041', 'SD NEGERI MELONG ASIH 5', 'Jl Melong Raya Cijerah 2 No 195', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(232, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224039', 'SD NEGERI MELONG ASIH 7', 'Jl. Melong Raya No. 195', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(233, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224038', 'SD NEGERI MELONG ASIH 8', 'Jl. Melong Raya Blok 22 No. 195', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(234, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20227998', 'SD NEGERI MELONG MANDIRI 1', 'Jl. Melong 4 No.196', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(235, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228001', 'SD NEGERI MELONG MANDIRI 2', 'Jl. Melong No. 70', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(236, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228002', 'SD NEGERI MELONG MANDIRI 3', 'Perumnas cijerah II Blok 15', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(237, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228003', 'SD NEGERI MELONG MANDIRI 4', 'JL. HERCULES II NO. 2', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(238, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228004', 'SD NEGERI MELONG MANDIRI 5', 'Jl Muara Takus Raya', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(239, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224233', 'SD NEGERI MELONG MANDIRI 6', 'Jl Melong Cimindi No. 155', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(240, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224045', 'SD NEGERI MELONG MANDIRI 7', 'Perumnas Cijerah 2 Blok 14', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(241, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224197', 'SD PLUS AL-FURQON', 'Jl. SUKAGALIH NO. 26 A MELONG', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(242, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20219748', 'SLB C TUT WURI HANDAYANI', 'Blok Sukamaju No. 96 RT 01 RW 06', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(243, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224108', 'SMA NEGERI 6 CIMAHI', 'JL. MELONG RAYA NO. 172 CIJERAH', '<p><strong>SMA Negeri 6 Cimahi</strong>&nbsp;adalah&nbsp;<a title=\"Sekolah menengah atas\" href=\"https://id.wikipedia.org/wiki/Sekolah_menengah_atas\">sekolah menengah atas</a>&nbsp;yang didirikan pada tanggal&nbsp;<a title=\"3 September\" href=\"https://id.wikipedia.org/wiki/3_September\">3 September</a>&nbsp;1979, terletak di Jalan Melong Raya, Cimahi. Sekolah ini sebelumnya bernama SMA Negeri 16 Bandung.</p> <p>SMA Negeri 6 Cimahi sebelumnya disebut sebagai&nbsp;<a title=\"SMA Negeri 13 Bandung\" href=\"https://id.wikipedia.org/wiki/SMA_Negeri_13_Bandung\">SMA Negeri 13 Bandung</a>&nbsp;yang sekarang beralamat di Jl. Raya Cibeureum No. 52,&nbsp;<a title=\"Bandung\" href=\"https://id.wikipedia.org/wiki/Bandung\">Bandung</a>,&nbsp;<a title=\"Jawa Barat\" href=\"https://id.wikipedia.org/wiki/Jawa_Barat\">Jawa Barat</a>. Awal pembangunan sekolah seluruh karyawan, tenaga pengajar serta murid masih menggunakan&nbsp;<a title=\"SMA Negeri 4 Bandung\" href=\"https://id.wikipedia.org/wiki/SMA_Negeri_4_Bandung\">SMA Negeri 4 Bandung</a>&nbsp;yang terletak di Jalan Gardujati no. 20 Bandung dan sebagian di Gedung&nbsp;<a title=\"SMP Negeri 2 Bandung\" href=\"https://id.wikipedia.org/wiki/SMP_Negeri_2_Bandung\">SMP Negeri 2 Bandung</a>&nbsp;Jalan Kesatrian Bandung. Pada saat itu Kepala Sekolah SMA Negeri 13 Bandung adalah juga Kepala Sekolah&nbsp;<a title=\"SMA Negeri 4 Bandung\" href=\"https://id.wikipedia.org/wiki/SMA_Negeri_4_Bandung\">SMA Negeri 4 Bandung</a>&nbsp;yaitu Ibu. Dra. Nani Soekartini. Pembangunan sekolah selesai pada tahun 1982 kemudian berubah nama menjadi&nbsp;SMA Negeri 6 Cimahi</p>', '-6.9243766', '107.5606532', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224108/7.jpg', 0, 1, 1, 1, 1, 'A'),
(244, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224105', 'SMA PASUNDAN 2', 'JL. MELONG RAYA NO. 4', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(245, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20268626', 'SMK PASUNDAN 3', 'JL. MELONG RAYA NO. 2 PERUM CIJERAH II', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(246, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224084', 'SMP NEGERI 4 CIMAHI', 'Jl. Melong Raya Cimahi', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(247, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224100', 'SMP PASUNDAN 2', 'Jl. Melong Raya No 2 Perumnas Cijerah II', '', '', '', 'MELONG', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(248, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710069', 'MI CERDAS NURANI', 'JL. LAPANG TEMBAK SELATAN MEKARSARI RT.09/07', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(249, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710067', 'MI NUR AL-HIJRAH', 'KOMP. PADASUKA INDAH BLOK B N0.95B', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(250, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710072', 'MI NURUL ISLAM', 'JL. NURUL ISLAM NO. 133 PADASUKA CIMAHI', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(251, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710074', 'MI RIYADHUL MAHIRIN', 'JL. LAPANG TEMBAK SELATAN RT 04 RW 07', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(252, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69937048', 'PAKET PP. RIYADHUL MAHIRIN', 'JL. LAPANG TEMBAK SELATAN RT 04/07', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(253, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2962994', 'PKBM SRIKANDI', 'Komplek PJKA', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(254, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739401', 'RA/BA/TA AL ARIEF', 'JL.KYAI HAJI USMAN DHOMIRI NO. 10 RT 04/RW 03 PADASUKA CIMAHI', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(255, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739402', 'RA/BA/TA AL-MUKHLISIN', 'JL. LAPANG TEMBAK SELATAN RT. 08/07', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(256, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739407', 'RA/BA/TA AT TAQWA MEKARSARI', 'JL. LAPANG TEMBAK SELATAN MEKAR SARI RT.09/07 PADASUKA CIMAHI TENGAH', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(257, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739408', 'RA/BA/TA ATTIJANIYATIL USMANIYAH', 'JL.KH. USMAN DHOMIRI NO 214 RT 04/08', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(258, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739416', 'RA/BA/TA NUR AL - HIJRAH', 'KOMP. PADASUKA INDAH BLOK B NO. 95 B', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(259, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739420', 'RA/BA/TA ROUDHOTUL BANAT', 'JL. LAPANGAN TEMBAK SELATAN RT.04/07', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(260, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228005', 'SD NEGERI PADASUKA MANDIRI 1', 'Komp. Pemda Padasuka', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(261, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228006', 'SD NEGERI PADASUKA MANDIRI 2', 'Jl. Usman Dhomiri No. 50', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(262, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228007', 'SD NEGERI PADASUKA MANDIRI 3', 'Jl. Suka Indah B.17 Padasuka', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(263, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254723', 'SD NEGERI PADASUKA MANDIRI 4', 'Jl H Usman Dhomiri No 132', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(264, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224030', 'SD NEGERI SUKAMAJU 1', 'Jl Panembakan No 180', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(265, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224029', 'SD NEGERI SUKAMAJU 2', 'Jl. Panembakan No.206', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(266, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224116', 'SLB BC YATIRA', 'Jl. K.H. Usman Dhomiri 191 A', '', '', '', 'PADASUKA', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(267, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'K5667155', 'LKP YUKE', 'Jl. Gunung Batu Rancabali No. 32', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(268, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P2963015', 'PKBM BAITUL IKHLAS', 'Babakan Loa no. 18', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(269, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P9952867', 'PKBM BHINEKA INDONESIA', 'Jl. Gunung Batu No. 181', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(270, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P9952726', 'PKBM DARUL FALAH', 'Jl. Gunung Rahayu I.C RT.06/09', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(271, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739422', 'RA/BA/TA AL ARAFAH', 'JL. KOLONEL MASTURI GG. WARGA MEKAR I NO. 4 RT.001 RW. 001', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(272, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739426', 'RA/BA/TA AR RAHMAN', 'JL. PURI CIPAGERAN INDAH I BLOK H.7 CIPAGERAN', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(273, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20253356', 'SD BINA PERSADA', 'Jl. SETRADUTA CEMARA RAYA BLOK K RT.04/05 CIMAHI', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(274, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224063', 'SD NEGERI PASIRKALIKI 1', 'Jl. Babakan Loa No. 11', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(275, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224062', 'SD NEGERI PASIRKALIKI 2', 'Jl. Babakan Loa No. 11', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(276, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224061', 'SD NEGERI PASIRKALIKI 3', 'Jl. Babakan Loa No. 9', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(277, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224060', 'SD NEGERI PASIRKALIKI 5', 'Jl. Babakan Loa No. 11', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(278, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224059', 'SD NEGERI PASIRKALIKI 6', 'Jl. Babakan Loa No.11', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(279, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20254724', 'SD NEGERI PASIRKALIKI MANDIRI 1', 'Jl. Gunung Batu No. 209', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(280, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20229248', 'SLB B PRIMA BHAKTI MULIA', 'Jl. Budhi No. 123', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(281, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20275353', 'SMP BINA PERSADA', 'Jl. Cemara Raya Blok K Setraduta', '', '', '', 'PASIRKALIKI', 'CIMAHI_UTARA', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(282, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710071', 'MI PERSATUAN UMMAT ISLAM (PUI)', 'JL. POJOK SELATAN NO. 14 RT. 01/07', '', '', '', 'SETIAMANAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(283, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60727412', 'MTs PERSATUAN UMMAT ISLAM (PUI)', 'JL. POJOK SELATAN NO. 14', '', '', '', 'SETIAMANAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(284, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '69739411', 'RA/BA/TA FATHUL KHOIR', 'JL. POJOK UTARA GG. KARYA MUDA I NO. 87 RT 03 RW 04', '', '', '', 'SETIAMANAH', 'CIMAHI_TENGAH', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(285, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224249', 'SD NEGERI HARAPAN 1', 'Jl Pojok Utara Gg Karya Muda 2 No.148', '', '', '', 'SETIAMANAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(286, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224229', 'SD NEGERI HARAPAN 2', 'Jl Pojok Utara Gg Karya Muda 2', '', '', '', 'SETIAMANAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(287, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228008', 'SD NEGERI SETIAMANAH MANDIRI 1', 'Kpad Jl. Sriwijaya IX', '', '', '', 'SETIAMANAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(288, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224139', 'SMA NEGERI 2 CIMAHI', 'JL. KPAD SRIWIJAYA IX NO. 45 A', '<p><strong>SMA Negeri 2 Cimahi</strong>&nbsp;(SMAN 2 Cimahi), merupakan salah satu&nbsp;<a title=\"Sekolah Menengah Atas\" href=\"https://id.wikipedia.org/wiki/Sekolah_Menengah_Atas\">Sekolah Menengah Atas</a>&nbsp;Negeri yang ada di&nbsp;<a title=\"Provinsi\" href=\"https://id.wikipedia.org/wiki/Provinsi\">Provinsi</a>&nbsp;<a title=\"Jawa Barat\" href=\"https://id.wikipedia.org/wiki/Jawa_Barat\">Jawa Barat</a>,&nbsp;<a title=\"Indonesia\" href=\"https://id.wikipedia.org/wiki/Indonesia\">Indonesia</a>.<sup id=\"cite_ref-1\"><a href=\"https://id.wikipedia.org/wiki/SMA_Negeri_2_Cimahi#cite_note-1\">[1]</a></sup>Sama dengan SMA pada umumnya di&nbsp;<a title=\"Indonesia\" href=\"https://id.wikipedia.org/wiki/Indonesia\">Indonesia</a>&nbsp;masa&nbsp;<a title=\"Pendidikan\" href=\"https://id.wikipedia.org/wiki/Pendidikan\">pendidikan</a>&nbsp;<a title=\"Sekolah\" href=\"https://id.wikipedia.org/wiki/Sekolah\">sekolah</a>&nbsp;di SMAN 2 Cimahi ditempuh dalam waktu tiga tahun pelajaran mulai dari Kelas X sampai Kelas XII. Bangunan SMA Negeri 2 Cimahi dibangun pada tahun 1976, dengan bangunan utama ruang kelas bagian barat dan ruang laboratorium IPA yang masyarakat juga dikenal dengan sebutan&nbsp;<strong>SMA Sriwijaya</strong>&nbsp;dan kini dikenal dengan sebutan&nbsp;<strong>SMANDACI</strong>&nbsp;atau&nbsp;<strong>DACI</strong>. SMA Negeri 2 Cimahi merupakan salah satu&nbsp;<em>sekolah dengan integritas</em>&nbsp;tinggi di Indonesia pada tahun 2015.</p> <p>SMA Negeri 2 Cimahi terdapat berbagai fasilitas di antaranya:</p> <ul> <li><a title=\"Kelas\" href=\"https://id.wikipedia.org/wiki/Kelas\">Kelas</a></li> <li><a title=\"Masjid\" href=\"https://id.wikipedia.org/wiki/Masjid\">Masjid</a></li> <li><a title=\"Perpustakaan\" href=\"https://id.wikipedia.org/wiki/Perpustakaan\">Perpustakaan</a>&nbsp;yang dilengkapi dengan&nbsp;<a title=\"Komputer\" href=\"https://id.wikipedia.org/wiki/Komputer\">komputer</a></li> <li><a title=\"Laboratorium\" href=\"https://id.wikipedia.org/wiki/Laboratorium\">Laboratorium</a>&nbsp;<a title=\"Biologi\" href=\"https://id.wikipedia.org/wiki/Biologi\">Biologi</a></li> <li><a title=\"Laboratorium\" href=\"https://id.wikipedia.org/wiki/Laboratorium\">Laboratorium</a>&nbsp;<a title=\"Fisika\" href=\"https://id.wikipedia.org/wiki/Fisika\">Fisika</a></li> <li><a title=\"Laboratorium\" href=\"https://id.wikipedia.org/wiki/Laboratorium\">Laboratorium</a>&nbsp;<a title=\"Kimia\" href=\"https://id.wikipedia.org/wiki/Kimia\">Kimia</a></li> <li><a title=\"Laboratorium Komputer\" href=\"https://id.wikipedia.org/wiki/Laboratorium_Komputer\">Laboratorium Komputer</a></li> <li><a title=\"Laboratorium Media (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Laboratorium_Media&amp;action=edit&amp;redlink=1\">Laboratorium Media</a></li> <li><a title=\"Laboratorium Bahasa\" href=\"https://id.wikipedia.org/wiki/Laboratorium_Bahasa\">Laboratorium Bahasa</a></li> <li>Lapangan Olahraga</li> <li><a title=\"Ruang Aula (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Ruang_Aula&amp;action=edit&amp;redlink=1\">Ruang Aula</a></li> </ul> <div> <div><a href=\"https://id.wikipedia.org/wiki/Berkas:Daciupacara.jpg\"><img style=\"border-width: 1px; border-image-width: initial;\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Daciupacara.jpg/305px-Daciupacara.jpg\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Daciupacara.jpg/458px-Daciupacara.jpg 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Daciupacara.jpg/610px-Daciupacara.jpg 2x\" alt=\"\" width=\"305\" height=\"203\" data-file-width=\"1365\" data-file-height=\"910\" /></a> <div> <div>&nbsp;</div> Siswa SMA Negeri 2 Cimahi sedang melaksanakan Upacara Hari Senin</div> </div> </div> <ul> <li>Ruang Kesenian</li> <li>Kantin</li> <li><a title=\"Hotspot\" href=\"https://id.wikipedia.org/wiki/Hotspot\">Hotspot</a>&nbsp;di beberapa titik</li> <li><a title=\"Cctv\" href=\"https://id.wikipedia.org/wiki/Cctv\">CCTV</a></li> <li>UKS</li> <li>Toilet</li> <li>Ruang Tamu</li> <li>Ruang Kepala Sekolah</li> <li>Ruang Tata Usaha</li> <li>Ruang Bimbingan Konseling</li> <li>Ruang OSIS</li> </ul>', '-6.8822143', '107.5320693', 'SETIAMANAH', 'CIMAHI_TENGAH', 'NEGERI', 'http://foto2.data.kemdikbud.go.id/getImage/20224139/3.jpg', 1, 1, 1, 1, 1, 'A'),
(289, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224091', 'SMP NEGERI 3 CIMAHI', 'Jl. KPAD Sriwijaya', '', '', '', 'SETIAMANAH', 'CIMAHI_TENGAH', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(290, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60710059', 'MI NURUL IMAN', 'JL. MAHAR MARTANEGARA RT.01/16', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(291, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20279747', 'MTs MOHAMMAD TOHA', 'JL. RAYA NANJUNG KP. CIBODAS RT. 04/13', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(292, '2017-05-28 12:52:04', '2017-05-28 12:52:13', 'P9908229', 'PKBM MITRA DIKMAS', 'JL. NANJUNG NO. 56', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(293, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224261', 'SD NEGERI CIBODAS 1', 'Jl. Nanjung No. 3', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(294, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224260', 'SD NEGERI CIBODAS 2', 'Jl. Nanjung 03', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(295, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224259', 'SD NEGERI CIBODAS 3', 'Jl. Industri 2 Cempaka', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(296, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224019', 'SD NEGERI UTAMA 3', 'Jl Nanjung 56', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(297, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224017', 'SD NEGERI UTAMA 6', 'Jl. Nanjung No. 22 Cimahi', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(298, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224016', 'SD NEGERI UTAMA 7', 'Jl. Nanjung No. 56', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(299, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20228009', 'SD NEGERI UTAMA MANDIRI 1', 'Jl Mahar Martanegara No. 155', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(300, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224199', 'SD PLUS DARUSSURUR AL-YAHYA', 'Jl. NANJUNG KP. PANYAWEUYAN RT.02/13', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(301, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224152', 'SD SANTA MARIA', 'Jl.Baros No.109', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(302, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224151', 'SD SANTO YUSUP', 'Jl. Baros No. 109', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(303, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224134', 'SMK MOHAMAD TOHA', 'Jl. Nanjung Cibodas Rt.04 Rw.11 Cimahi Selatan', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(304, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224136', 'SMK NEGERI 1 CIMAHI', 'JL. MAHAR MARTANEGARA NO.48 LEUWIGAJAH', '<p><strong>SMK Negeri 1 Cimahi</strong>&nbsp;(STM Pembangunan Bandung) merupakan salah satu Lembaga Pendidikan Menengah Kejuruan di Kota&nbsp;<a title=\"Cimahi\" href=\"https://id.wikipedia.org/wiki/Cimahi\">Cimahi</a>,&nbsp;<a title=\"Jawa Barat\" href=\"https://id.wikipedia.org/wiki/Jawa_Barat\">Jawa Barat</a>&nbsp;yang menyelenggarakan Program Pendidikan Kejuruan 4 Tahun, dan merupakan salah satu SMK dari 8 (delapan)&nbsp;<a title=\"SMK\" href=\"https://id.wikipedia.org/wiki/SMK\">SMK</a>&nbsp;Negeri di&nbsp;<a title=\"Indonesia\" href=\"https://id.wikipedia.org/wiki/Indonesia\">Indonesia</a>&nbsp;yang memiliki program 4 (empat) Tahun, yang pembangunan fisiknya dimulai sejak tahun 1969, di atas tanah seluas 3,4 Ha, dan telah menerima siswa sejak tahun 1974 dengan nama STM Negeri Pembangunan Bandung, yang diresmikan pada tanggal 24 Maret 1977.</p> <p>Perkembangan&nbsp;SMK Negeri 1 Cimahi&nbsp;dari sejak berdiri sampai dengan tahun 1995/1996 bernama&nbsp;<a title=\"STM Pembangunan Bandung (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=STM_Pembangunan_Bandung&amp;action=edit&amp;redlink=1\">STM Pembangunan Bandung</a>, sedangkan nama SMK Negeri 1&nbsp;<a title=\"Cimahi\" href=\"https://id.wikipedia.org/wiki/Cimahi\">Cimahi</a>&nbsp;-&nbsp;<a title=\"Bandung\" href=\"https://id.wikipedia.org/wiki/Bandung\">Bandung</a>&nbsp;berlaku sejak tahun pelajaran 1996/1997 dengan berdasarkan SK Mendikbud No. 036/O/97.</p> <p>Sejalan dengan otonomi daerah, dengan berpisahnya Kota Cimahi dengan Kab. Bandung, maka pada tahun pelajaran 2001/2002 STM Pembangunan Bandung yang setelahnya bernama SMK Negeri 1&nbsp;<a title=\"Cimahi\" href=\"https://id.wikipedia.org/wiki/Cimahi\">Cimahi</a>&nbsp;-&nbsp;<a title=\"Bandung\" href=\"https://id.wikipedia.org/wiki/Bandung\">Bandung</a>&nbsp;berubah nama menjadi SMK Negeri 1 Kota Cimahi.</p> <p>Secara geografis SMK Negeri 1 Cimahi terletak di kawasan&nbsp;<a title=\"Industri\" href=\"https://id.wikipedia.org/wiki/Industri\">Industri</a>, yang dapat dijangkau dari berbagai sudut kota Cimahi, baik dari atau ke Kota Bandung,&nbsp;<a title=\"Kabupaten Bandung\" href=\"https://id.wikipedia.org/wiki/Kabupaten_Bandung\">Kabupaten Bandung</a>&nbsp;dan&nbsp;<a title=\"Jakarta\" href=\"https://id.wikipedia.org/wiki/Jakarta\">Jakarta</a>&nbsp;dengan mudah, serta dapat dengan mudah diakses oleh industri-industri yang berada di kawasan industri di&nbsp;<a title=\"Jalur Pantura\" href=\"https://id.wikipedia.org/wiki/Jalur_Pantura\">Jalur Pantura</a>&nbsp;Provinsi Jawa Barat. Sehingga akses yang dapat dilakukan untuk kepentingan akademik baik pembelajaran di sekolah maupun di luar sekolah (Dunia Usaha / Dunia Industri ) dapat dilakukan dengan baik.</p>', '-6.9024237', '107.5360013', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', 'http://smkn1-cmi.sch.id/wp-content/uploads/2017/05/smkn1cimahi-lapangan.jpg', 1, 1, 1, 1, 1, 'A'),
(305, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '60726809', 'SMK PLUS DARUSSURUR', 'JL. NANJUNG KP.PANYAWEUYAN RT.02/13', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(306, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224103', 'SMK TI PEMBANGUNAN', 'JL. H. BAKAR NO. 18 B / JL. MAHAR MARTANEGARA NO.48', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(307, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224083', 'SMK WIRASWASTA', 'JL. MAHAR MARTANEGARA NO.277B GG.ANGGREK (BLK DOLOG)', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(308, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224088', 'SMP NEGERI 9 CIMAHI', 'Jl. Maharmartanegara No. 206 Cimahi', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'NEGERI', '', 0, 1, 0, 0, 1, ''),
(309, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20253241', 'SMP PLUS YPP DARUSSURUR', 'Jl. Nanjung RT. 02/13', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, ''),
(310, '2017-05-28 12:52:04', '2017-05-28 12:52:13', '20224092', 'SMP SANTO MIKAEL', 'Jl. Baros No. 109', '', '', '', 'UTAMA', 'CIMAHI_SELATAN', 'SWASTA', '', 0, 1, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Galih Pratama', 'hanamura.iost@gmail.com', '$2y$10$suOwVcSJ/fsM97t5Snn2kenyBaseyfQ6z4OzhCh5vITUJ.HsyURzm', 'RLGemqa0s4CIfvZwxZxPWCBwZiJjKu2SGliYf1TM0cubdvUkm0MFxX8LHXAV', '2017-05-17 04:34:30', '2017-05-17 04:34:30'),
(2, 'Galih Pratama', 'hi@galihpratama.net', '$2y$10$s2zEmLJaWMnbvKCVd8866elcvQcMTImqjaWsRqDRd.1Ytj7GcxZHa', 'F0yC8Oj6bX3XmAKnFKvD9kWuZaLWaruZZKKlbkb5sS5hqTCdcABBwdNsTsGm', '2017-05-24 05:13:52', '2017-05-24 05:13:52');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `schools`
--
ALTER TABLE `schools`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
