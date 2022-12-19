-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2022 at 02:02 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdesaininterior`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` longtext,
  `profile_pict` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `password`, `profile_pict`) VALUES
('AK-001', 'Vini Fahrezi Riyadi', 'vinifahrezi', '12345', '1659423869-AK-001.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` varchar(50) NOT NULL,
  `nama_alumni` varchar(50) DEFAULT NULL,
  `angkatan` varchar(50) DEFAULT NULL,
  `testimoni` text,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nama_alumni`, `angkatan`, `testimoni`, `foto`) VALUES
('AL-001', 'Cira Bhang', '1993', '“La Liberté ( Kebebasan ) Sebagai seorang wanita dan istri, bagi saya pribadi kebebasan adalah merdeka dalam berpikir, berpendapat, menentukan nasibnya sendiri dan mandiri. “Jangan pernah merasa takut menjadi dirimu sendiri siapapun kamu” – Cira Bhang.', '1664196560-AL-001.webp');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` varchar(10) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tgl_kirim` date DEFAULT NULL,
  `url_slug` text,
  `isi` longtext,
  `sampul` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `tgl_kirim`, `url_slug`, `isi`, `sampul`) VALUES
('BR-0010', 'Program Persiapan Belajar di Perguruan Tinggi', '2022-08-02', 'program-persiapan-belajar-di-perguruan-tinggi', 'Mahasiswa Baru 2022 melaksanakan Program P2BPT.', '1664101391-BR-0010.jpg'),
('BR-0011', 'Penyambutan Mahasiswa Baru 2022', '2022-08-02', 'penyambutan-mahasiswa-baru-2022', 'Selamat datang mahasiswa baru desain interior itenas tahun 2022', '1664101484-BR-0011.jpg'),
('BR-002', 'Rapat Koordinasi Persiapan Perkuliahan Semester Ga', '2022-08-02', 'rapat-koordinasi-persiapan-perkuliahan-semester-ganjil-20222023', 'Perkuliahan offline dimulai, semangat!!', '1664101612-BR-002.jpg'),
('BR-005', 'Pembukaan AKARAKTA 2021', '2022-08-02', 'pembukaan-akarakta-2021', 'Pameran Pra Studio angkatan 2021', '1664101733-BR-005.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_dosen`
--

CREATE TABLE `data_dosen` (
  `nidn` int(10) NOT NULL,
  `nama_dosen` varchar(50) DEFAULT NULL,
  `keahlian` text,
  `kontak` text,
  `alamat` varchar(50) DEFAULT NULL,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dosen`
--

INSERT INTO `data_dosen` (`nidn`, `nama_dosen`, `keahlian`, `kontak`, `alamat`, `foto`) VALUES
(402036601, 'Bambang Arief Ruby Rubama Zael, M.Sn.', '<p>Seni Rupa</p>', '-', '-', '1662737664-402036601.jpg'),
(405118003, 'Novrizal Primayudha, S.Sn., M.T.', '<p><span style=\"font-family: Arial; font-size: 14px; text-align: right;\">Desain interior</span><br></p>', '-', '-', '1663048800-0405118003.jpg'),
(406016901, 'Enung Rostika, S.Pd., M.Hum.', '<p>--</p>', '-', '-', '1663046960-0406016901.jpg'),
(406046601, 'Anwar Subkiman, S.Sn., M.Ds.', '<p><span style=\"color: rgb(122, 122, 122); font-family: Montserrat, Monst; font-size: 14px; text-align: right;\">Sustainable Design – Design Thinking</span><br></p>', '-', '-', '1658111562-406046601.jpg'),
(407086701, 'Dr. Jamaludin, S.Sn., M.Sn.', '<p><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px; text-align: right;\">Desain Interior, Desain Furnitur, Estetika</span><br></p>', '-', '-', '1663048531-0407086701.jpg'),
(408097401, 'Iyus Kusnaedi, S.Sn., M.Ds.', '<p><span style=\"font-family: Arial; font-size: 14px; text-align: right;\">Desain Interior, Gambar Konstruktif, Eksplorasi Material Recycle</span><br></p>', '-', '-', '1663048009-0408097401.jpg'),
(417046001, 'Ibrahim Hermawan, Drs., M.Sn.', '<p><span style=\"font-family: Arial; font-size: 14px; text-align: right;\">Desain Interior-Elemen Estetik Kaligrafi dan Arsitektur Islami</span><br></p>', '-', '-', '1663047692-0417046001.jpg'),
(418107601, 'Anastasha Oktavia Sati Zein, S.Sn., M.Ds.', '<p><span style=\"color: rgb(122, 122, 122); font-family: Montserrat, Monst; font-size: 14px; text-align: right; background-color: rgb(224, 224, 224);\">Desain Interior – Humaniora</span><br></p>', '-', '-', '1657700626-0418107601.jpg'),
(419076501, 'Boyke Arief Taufik Firdaus, Drs., M.Sn', '<p>Desain Interior dan Desain Mebel/Furnitur</p>', '-', '-', '1662731327-0419076501.jpg'),
(423087701, 'Detty Fitriany, S.Sn., M.T., M.Sn.', '<p><span style=\"font-family: Arial; font-size: 14px; text-align: right;\">Desain Interior Museum, Perkantoran dan Rumah Sakit</span><br></p>', '-', '-', '1663045252-0423087701.jpg'),
(426067608, 'Edwin Widia, S.Sn., M.Ds.', '<p><span style=\"font-family: Arial; font-size: 14px; text-align: right;\">Desain Interior Hunian Keluarga</span><br></p>', '-', '-', '1663046063-0426067608.jpg'),
(427088707, 'Maugina Rizki Havier, S.Ds., M.Ds.', '<p><span style=\"font-family: Arial; font-size: 14px; text-align: right;\">Desain Interior, Material Interior, Mimicry Design</span><br></p>', '-', '-', '1663047273-0427088707.jpg'),
(430068604, 'Andika Dwicahyo Aribowo, S.Ds., M.Ds.', '<p><span style=\"color: rgb(122, 122, 122); font-family: Montserrat, Monst; font-size: 14px; text-align: right; background-color: rgb(224, 224, 224);\">Desain Interior Museum, Bandara, dan Perkantoran</span><br></p>', '-', '-', '1662737629-430068604.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakta`
--

CREATE TABLE `fakta` (
  `id_fakta` varchar(50) NOT NULL DEFAULT '',
  `mahasiswa_aktif` varchar(50) DEFAULT NULL,
  `lulusan` varchar(50) DEFAULT NULL,
  `dosen_unggulan` varchar(50) DEFAULT NULL,
  `mata_kuliah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakta`
--

INSERT INTO `fakta` (`id_fakta`, `mahasiswa_aktif`, `lulusan`, `dosen_unggulan`, `mata_kuliah`) VALUES
('1', '250', '100', '56', '73');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` varchar(50) NOT NULL,
  `id_kategori` varchar(50) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori`, `judul`, `deskripsi`, `foto`) VALUES
('GL-001', 'KT-001', 'kuliah semester 7', 'kuliah offline buat semester 7', '1659581212-GL-001.jpg'),
('GL-002', 'KT-002', 'Pameran Desain Interior', '<p>Kegiatan pameran di Itenas</p>', '1659583040-GL-002.jpg'),
('GL-003', 'KT-002', 'Interior ruang tamu', '<p>Nuansa Ruang tamu yang sangat elegan&nbsp;</p>', '1661926349-GL-003.jpg'),
('GL-004', 'KT-003', 'Projek', '<p>Projek seni lukis</p>', '1663044188-GL-004.jpg'),
('GL-005', 'KT-003', 'Projek', '<p>projek seni lukis 2</p>', '1663044213-GL-005.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(50) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('KT-001', 'kuliah'),
('KT-002', 'Interior'),
('KT-003', 'fasilitas');

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` varchar(50) NOT NULL,
  `data_kurikulum` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id_kurikulum`, `data_kurikulum`) VALUES
('KK-001', '<p style=\"text-align: center; \"><b><span style=\"font-family: Verdana;\"><br></span></b></p><p style=\"text-align: center; \"><b><span style=\"font-family: Verdana;\">KURIKULUM 2017</span></b></p><p style=\"text-align: center; \"><b><span style=\"font-family: Verdana;\">SEMESTER 1</span></b></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">NO</span></b></td><td><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">KODE</span></b></td><td><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">NAMA MATAKULIAH</span></b></td><td><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">P/W</span></b></td><td><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">SKS</span></b></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">1</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA101</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.senibudayaku.com/2017/03/gambar-ekspresif-pengertian-asas-dan-kegunaan.html\" target=\"_blank\"><font color=\"#ff9c00\">Gambar Ekspresif</font></a></span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA103</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.dictio.id/t/apa-yang-dimaksud-dengan-gambar-konstruktif/26780\" target=\"_blank\"><font color=\"#ff9c00\">Gambar Konstruktif</font></a></span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA105</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.bola.com/ragam/read/4731564/pengertian-seni-rupa-tiga-dimensi-unsur-prinsip-jenis-dan-contohnya\" target=\"_blank\"><font color=\"#ff9c00\">Dasar Perupaan 3 Dimensi</font></a></span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">4</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA107</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://theinsidemag.com/seni-rupa-2-dimensi/\" target=\"_blank\"><font color=\"#ff9c00\">Dasar Perupaan 2 Dimensi</font></a></span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">5</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA109</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.studilmu.com/blogs/details/metode-creative-thinking\" target=\"_blank\"><font color=\"#ff9c00\">Metoda Berfikir Kreatif</font></a></span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">6</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA111</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://id.wikipedia.org/wiki/Bahasa_Inggris\" target=\"_blank\" style=\"\"><font color=\"#ff9c00\" style=\"\">Bahasa Inggris I</font></a></span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">7</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA113</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.slideshare.net/LindaFTM/pengantar-desain-interior\" target=\"_blank\"><font color=\"#ff9c00\">Pengantar Desain Interior</font></a></span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"background-color: rgb(239, 239, 239);\"><br></span></td><td style=\"text-align: center;\"><span style=\"background-color: rgb(239, 239, 239);\"><br></span></td><td style=\"text-align: right;\"><b style=\"background-color: rgb(239, 239, 239);\">Jumlah</b></td><td style=\"text-align: center;\"><b style=\"background-color: rgb(239, 239, 239);\"><br></b></td><td style=\"text-align: center;\"><b style=\"background-color: rgb(239, 239, 239);\">19</b></td></tr></tbody></table><p style=\"text-align: center; \"><span style=\"background-color: rgb(239, 239, 239);\"><br></span></p><p style=\"text-align: center; \"><span style=\"background-color: rgb(239, 239, 239);\"><br></span></p><p style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><b>SEMESTER 2</b></span></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">NO</span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">KODE</span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">NAMA MATAKULIAH</span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">P/W</span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">SKS</span></b></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">1</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA102</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"http://staff.uny.ac.id/sites/default/files/pendidikan/Dwi%20Retno%20Sri%20Ambarwati,%20S.Sn,%20M.Sn./FINAL%20TEKNIS%20MENGGAMBAR.pdf\" target=\"_blank\"><font color=\"#ff9c00\">Gambar Dasar Interior</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">4</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA104</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://serupa.id/desain-interior-pengertian-sejarah-tujuan-ruang-lingkup/\" target=\"_blank\"><font color=\"#ff9c00\">Rupa dan Ruang Interior</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">4</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA106</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"http://staff.uny.ac.id/sites/default/files/pendidikan/Dwi%20Retno%20Sri%20Ambarwati,%20S.Sn,%20M.Sn./FINAL%20TEKNIS%20MENGGAMBAR.pdf\" target=\"_blank\"><font color=\"#ff9c00\">Gambar Teknik Interior</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">4</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA108</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.slideshare.net/RanggaLail/metode-perancangan-interior\" target=\"_blank\"><font color=\"#ff9c00\">Metodologi Desain Interior</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">5</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA110</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.kompasiana.com/rizki-astari/552c1bbe6ea834445c8b4575/wawasan-nusantara-kebudayaan-indonesia-saat-ini#:~:text=Wawasan%20Nusantara%20adalah%20cara%20pandang,kebhinekaan%20untuk%20mencapai%20tujuan%20nasional.\" target=\"_blank\"><font color=\"#ff9c00\">Wawasan Budaya Nusantara</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">6</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA404</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://id.wikipedia.org/wiki/Kewarganegaraan\" target=\"_blank\"><font color=\"#ff9c00\">Kewarganegaraan</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">7</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA114</span></td><td style=\"text-align: left;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.bramblefurniture.com/journal/sejarah-desain-interior-dunia-dari-masa-ke-masa/\" target=\"_blank\"><font color=\"#ff9c00\">Sejarah Desain Interior</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td><span style=\"background-color: rgb(239, 239, 239);\"><br></span></td><td><span style=\"background-color: rgb(239, 239, 239);\"><br></span></td><td style=\"text-align: right; \"><b style=\"background-color: rgb(239, 239, 239);\">Jumlah</b></td><td><b style=\"background-color: rgb(239, 239, 239);\"><br></b></td><td style=\"text-align: center; \"><b style=\"background-color: rgb(239, 239, 239);\">19</b></td></tr></tbody></table><p style=\"text-align: center; \"><span style=\"background-color: rgb(239, 239, 239);\"><br></span></p><p style=\"text-align: center; \"><b><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">SEMESTER 3</span></b></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><b>NO</b></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><b>KODE</b></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><b>NAMA MATAKULIAH</b></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><b>P/W</b></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><b>SKS</b></span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">1</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA299</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.researchgate.net/publication/348652977_Analisis_Penerapan_Konsep_Desain_Interior_Rumah_Sehat_Sederhana_Pada_Permukiman_Sub-Urban\" target=\"_blank\"><font color=\"#ff9c00\">Desain Interior Hunian Tunggal</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">5</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA201</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://interior.binus.ac.id/2019/04/28/furniture-design-i/\" target=\"_blank\"><font color=\"#ff9c00\">Dasar Desain Furnitur</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA203</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://id.wikipedia.org/wiki/Bahasa_Indonesia\" target=\"_blank\"><font color=\"#ff9c00\">Bahasa Indonesia</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">4</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA205</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.kompasiana.com/xpertrainer/5f0d3b9a097f36535c7d7d93/5-cara-dan-metode-presentasi-yang-baik\" target=\"_blank\"><font color=\"#ff9c00\">Metoda Presentasi</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">5</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA207</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://informazone.com/pengertian-fisika-bangunan/\" target=\"_blank\"><font color=\"#ff9c00\">Fisika Bangunan</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">6</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA209</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://mulyadi.staff.uns.ac.id/2012/10/05/referensi-buku-desain-interior-pengetahuan-bahan/\" target=\"_blank\"><font color=\"#ff9c00\">Pengetahuan Bahan Interior</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">7</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA211</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"https://www.dekoruma.com/artikel/69581/bagian-dari-konstruksi-bangunan\" target=\"_blank\"><font color=\"#ff9c00\">Konstruksi Bangunan</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">2</span></td></tr><tr><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">8</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">DIA213</span></td><td><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><a href=\"http://digilib.isi.ac.id/1256/\" target=\"_blank\"><font color=\"#ff9c00\">Konstruksi Interior</font></a></span></td><td style=\"text-align: center; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">W</span></td><td style=\"text-align: center;\"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\">3</span></td></tr><tr><td><span style=\"background-color: rgb(239, 239, 239);\"><br></span></td><td><span style=\"background-color: rgb(239, 239, 239);\"><br></span></td><td style=\"text-align: right; \"><span style=\"font-family: Verdana; background-color: rgb(239, 239, 239);\"><b>Jumlah</b></span></td><td><b style=\"background-color: rgb(239, 239, 239);\"><br></b></td><td style=\"text-align: center; \"><b style=\"background-color: rgb(239, 239, 239);\">20</b></td></tr></tbody></table><p style=\"text-align: center; \"><b><br></b></p>');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organisasi`
--

CREATE TABLE `organisasi` (
  `id_struktur` varchar(50) NOT NULL,
  `data_struktur` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organisasi`
--

INSERT INTO `organisasi` (`id_struktur`, `data_struktur`) VALUES
('ST-001', '1659583582-ST-001.jpg');

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
-- Table structure for table `pendidikan_dosen`
--

CREATE TABLE `pendidikan_dosen` (
  `nidn` int(10) DEFAULT NULL,
  `s1` varchar(70) DEFAULT NULL,
  `s2` varchar(70) DEFAULT NULL,
  `s3` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan_dosen`
--

INSERT INTO `pendidikan_dosen` (`nidn`, `s1`, `s2`, `s3`) VALUES
(430068604, 'Sarjana Desain Interior – Institut Teknologi Bandung', 'Magister Desain – Institut Teknologi Bandung', '-'),
(418107601, 'Desain Interior, Institut Teknologi Nasional Bandung', 'Desain, Institut Teknologi Bandung', '-'),
(406046601, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', '-'),
(402036601, 'Seni Rupa (Seni Murni) Fakultas Seni Rupa dan Desain (FSRD) – Institut', 'Kajian Budaya ISBI Bandung', '-'),
(419076501, 'Desain Interior FSRD – ITB', 'Pengkajian dan Penciptaan Seni, STSI/ISBI Bandung', '--'),
(423087701, 'Desain Interior, Institut Teknologi Bandung', 'Pengkajian Seni, Institut Seni Budaya Indonesia Bandung', '--'),
(426067608, 'Desain Interior', 'Desain', '--'),
(406016901, 'Universitas Pendidikan Indonesia', 'Universitas Padjadjaran', '--'),
(427088707, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', '--'),
(417046001, 'Desain Interior,  Institut Teknologi Bandung', 'Magister Desain, Institut Teknologi Bandung', '--'),
(408097401, 'Desan Interior, Institut Teknologi Nasional Bandung', 'Desain, Institut Teknologi Bandung', '--'),
(407086701, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', 'Ilmu dan Seni Rupa, Institut Teknologi Bandung'),
(405118003, 'Prodi Desain interior, Institut Teknologi Nasional Bandung', 'Prodi Riset Arsitektur, Universitas Katolik Parahyangan', '--'),
(430068604, 'Sarjana Desain Interior – Institut Teknologi Bandung', 'Magister Desain – Institut Teknologi Bandung', '-'),
(418107601, 'Desain Interior, Institut Teknologi Nasional Bandung', 'Desain, Institut Teknologi Bandung', '-'),
(406046601, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', '-'),
(402036601, 'Seni Rupa (Seni Murni) Fakultas Seni Rupa dan Desain (FSRD) – Institut', 'Kajian Budaya ISBI Bandung', '-'),
(419076501, 'Desain Interior FSRD – ITB', 'Pengkajian dan Penciptaan Seni, STSI/ISBI Bandung', '--'),
(423087701, 'Desain Interior, Institut Teknologi Bandung', 'Pengkajian Seni, Institut Seni Budaya Indonesia Bandung', '--'),
(426067608, 'Desain Interior', 'Desain', '--'),
(406016901, 'Universitas Pendidikan Indonesia', 'Universitas Padjadjaran', '--'),
(427088707, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', '--'),
(417046001, 'Desain Interior,  Institut Teknologi Bandung', 'Magister Desain, Institut Teknologi Bandung', '--'),
(408097401, 'Desan Interior, Institut Teknologi Nasional Bandung', 'Desain, Institut Teknologi Bandung', '--'),
(407086701, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', 'Ilmu dan Seni Rupa, Institut Teknologi Bandung'),
(405118003, 'Prodi Desain interior, Institut Teknologi Nasional Bandung', 'Prodi Riset Arsitektur, Universitas Katolik Parahyangan', '--'),
(430068604, 'Sarjana Desain Interior – Institut Teknologi Bandung', 'Magister Desain – Institut Teknologi Bandung', '-'),
(418107601, 'Desain Interior, Institut Teknologi Nasional Bandung', 'Desain, Institut Teknologi Bandung', '-'),
(406046601, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', '-'),
(402036601, 'Seni Rupa (Seni Murni) Fakultas Seni Rupa dan Desain (FSRD) – Institut', 'Kajian Budaya ISBI Bandung', '-'),
(419076501, 'Desain Interior FSRD – ITB', 'Pengkajian dan Penciptaan Seni, STSI/ISBI Bandung', '--'),
(423087701, 'Desain Interior, Institut Teknologi Bandung', 'Pengkajian Seni, Institut Seni Budaya Indonesia Bandung', '--'),
(426067608, 'Desain Interior', 'Desain', '--'),
(406016901, 'Universitas Pendidikan Indonesia', 'Universitas Padjadjaran', '--'),
(427088707, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', '--'),
(417046001, 'Desain Interior,  Institut Teknologi Bandung', 'Magister Desain, Institut Teknologi Bandung', '--'),
(408097401, 'Desan Interior, Institut Teknologi Nasional Bandung', 'Desain, Institut Teknologi Bandung', '--'),
(407086701, 'Desain Interior, Institut Teknologi Bandung', 'Desain, Institut Teknologi Bandung', 'Ilmu dan Seni Rupa, Institut Teknologi Bandung'),
(405118003, 'Prodi Desain interior, Institut Teknologi Nasional Bandung', 'Prodi Riset Arsitektur, Universitas Katolik Parahyangan', '--');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` varchar(10) NOT NULL,
  `nrp` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `prestasi` varchar(500) DEFAULT NULL,
  `tingkat` varchar(500) DEFAULT NULL,
  `nama_kegiatan` longtext,
  `tahun` date DEFAULT NULL,
  `url_slug` text,
  `sampul` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nrp`, `nama`, `prestasi`, `tingkat`, `nama_kegiatan`, `tahun`, `url_slug`, `sampul`) VALUES
('PR-001', 'Alumni 2016', 'Magfira Adhania', 'Juara 1', 'Umum', 'Digital Interior Design &amp; Styling Competition 2022', '2022-09-06', 'magfira-adhania', '1664200833-PR-001.jpg'),
('PR-003', '-', 'Fajar Muhammad Fauzi', 'Juara 2', 'Mahasiswa', '<p>Digital Interior Design &amp; Styling Competition 2022</p>', '0000-00-00', 'fajar-muhammad-fauzi', '1664200900-PR-003.jpg'),
('PR-004', '-', 'Rizky Maedi Bayu S', 'Juara 1', 'Mahasiswa', '<p>Digital Interior Design &amp; Styling Competition 2022</p>', '2022-09-26', 'rizky-maedi-bayu-s', '1664201005-PR-004.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `publikasi_dosen`
--

CREATE TABLE `publikasi_dosen` (
  `nidn` int(10) DEFAULT NULL,
  `data_publikasi` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publikasi_dosen`
--

INSERT INTO `publikasi_dosen` (`nidn`, `data_publikasi`) VALUES
(430068604, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA212</td><td>Utilitas Bangunan</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA401</td><td>Desain Interior Kompleksitas Tinggi</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA207</td><td>Fisika Bangunan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA302</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA106</td><td>Gambar Teknik Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA305</td><td>Desain Furnitur Built-in</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA205</td><td>Metoda Presentasi</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(418107601, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana;\">1</span></td><td style=\"text-align: center;\"><span style=\"color: rgb(70, 70, 70); font-family: Verdana; font-size: 14px;\">DIA204</span><br></td><td style=\"text-align: center;\">Desain Furnitur Sarana Simpan</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA106</td><td style=\"text-align: center;\">Gambar Teknik Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA201</td><td style=\"text-align: center;\">Dasar Desain Furnitur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA205</td><td style=\"text-align: center;\">Metoda Presentasi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA103</td><td style=\"text-align: center;\">Gambar Konstruktif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DI171</td><td style=\"text-align: center;\">Metode Berfikir Kreatif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DI172</td><td style=\"text-align: center;\">Wawasan Budaya Nusantara</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DI460</td><td style=\"text-align: center;\">Kerja Profesi</td><td style=\"text-align: center;\">Sekolah Tinggi Desain Indonesia Bandung</td></tr></tbody></table><p><br></p>'),
(406046601, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA106</td><td>Gambar Teknik Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA108</td><td>Metodologi Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA312</td><td>Tinjauan Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA211</td><td>Konstruksi Bangunan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA213</td><td>Konstruksi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA201</td><td>Dasar Desain Furnitur</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA308</td><td>Komputer Pemodelan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA113</td><td>Pengantar Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(402036601, '<div><br></div><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NO</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">KODE MATA KULIAH</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NAMA MATA KULIAH</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">PERGURUAN TINGGI</span></font></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA102</td><td style=\"text-align: center; \">Gambar Desain Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center; \">2</td><td style=\"text-align: center; \">DIA104</td><td style=\"text-align: center; \">Rupa dan Ruang Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">3</td><td style=\"text-align: center; \">DIA107</td><td style=\"text-align: center; \">Dasar Perupaan 2 Dimensi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">4</td><td style=\"text-align: center; \">DIA101</td><td style=\"text-align: center; \">Gambar Ekspresif</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">5</td><td style=\"text-align: center; \">DIA105</td><td style=\"text-align: center; \">Dasar Perupaan 3 Dimensi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">6</td><td style=\"text-align: center; \">DIA465</td><td style=\"text-align: center; \">Seni Ruang Publik</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">7</td><td style=\"text-align: center; \">DI467</td><td style=\"text-align: center; \">Dasar Seni Lukis</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">8</td><td style=\"text-align: center; \">DI182</td><td style=\"text-align: center; \">Sejarah Seni Rupa Indonesia</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><div><br></div>'),
(419076501, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA211</td><td>Kontruksi Bangunan</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA204</td><td>Desain Furnitur Sarana Simpan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA305</td><td>Desain Furnitur Built-in</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA108</td><td>Metodologi Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DI336</td><td>Desain Mebel III</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DI214</td><td>Desain Interior II</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DI325</td><td>Interior Digital II</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(423087701, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></b></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA302</td><td style=\"text-align: center;\">Desain Interior Ruang Publik</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA208</td><td style=\"text-align: center;\">Manajemen Proyek Interior 1</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA309</td><td style=\"text-align: center;\">Penelitian Desain Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA307</td><td style=\"text-align: center;\">Manajemen Proyek Interior 2</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA301</td><td style=\"text-align: center;\">Desain Interior Ruang Komersial</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DIA306</td><td style=\"text-align: center;\">Pengantar Arsitektur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DIA305</td><td style=\"text-align: center;\">Desain Furnitur Built-in</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DIA407</td><td style=\"text-align: center;\">Psikologi Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(426067608, '<p style=\"text-align: center; \"><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA202</td><td>Gambar Digital Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA308</td><td>Komputer Pemodelan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA210</td><td>Ergonomi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA205</td><td>Metoda Presentasi</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA303</td><td>Rendering Digital Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA402</td><td>Kewirausahaan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA298</td><td>Desain Interior Hunian Keluarga</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>'),
(406016901, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td>NO</td><td>KODE MATA KULIAH&nbsp;</td><td>NAMA MATA KULIAH</td><td>PERGURUAN TINGGI</td></tr><tr><td>1</td><td>IS107</td><td>Bahasa Inggris I</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>MS103</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DI101</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>TK105</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>34020012</td><td>Academic English</td><td>Universitas Widyatama</td></tr><tr><td>6</td><td>34010011</td><td>General English</td><td>Universitas Widyatama</td></tr><tr><td>7</td><td>DI306</td><td>Bahasa Inggris II<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DI346</td><td>Penelitian Desain</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(427088707, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NO</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">KODE MATA KULIAH</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NAMA MATA KULIAH</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">PERGURUAN TINGGI</span></font></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA304</td><td style=\"text-align: center; \">Desain Furnitur Tematis dan Prototipe</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center; \">2</td><td style=\"text-align: center; \">DIA402</td><td style=\"text-align: center; \">Kewirausahaan</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">3</td><td style=\"text-align: center; \">DIA110</td><td style=\"text-align: center; \">Wawasan Budaya Nusantara</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">4</td><td style=\"text-align: center; \">DIA490</td><td style=\"text-align: center; \">Kerja Profesi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">5</td><td style=\"text-align: center; \">DIA109</td><td style=\"text-align: center; \">Metode Berfikir Kreatif</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">6</td><td style=\"text-align: center; \">DIA209</td><td style=\"text-align: center; \">Pengetahuan Bahan Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">7</td><td style=\"text-align: center; \">DIA108</td><td style=\"text-align: center; \">Metodologi Desain Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">8</td><td style=\"text-align: center; \">DIA201</td><td style=\"text-align: center; \">Dasar Desain Furnitur</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(417046001, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA114</td><td>Sejarah Desain Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA302</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA301</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA113</td><td>Pengantar Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA307</td><td>Manajemen Proyek Interior 2</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA210</td><td>Ergonomi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA112</td><td>Estetika Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA345</td><td>Manajemen Proyek Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(408097401, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\">1</td><td style=\"text-align: center;\">DIA212</td><td style=\"text-align: center;\">Utilitas Bangunan</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA298</td><td style=\"text-align: center;\">Desain Interior Hunian Keluarga</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA206</td><td style=\"text-align: center;\">Bahan dan Proses</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA314</td><td style=\"text-align: center;\">Desain Interior dan Ekologi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA103</td><td style=\"text-align: center;\">Gambar Konstruktif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DIA302</td><td style=\"text-align: center;\">Desain Interior Ruang Publik</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DIA311</td><td style=\"text-align: center;\">Sketsa Proyek</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DIA453</td><td style=\"text-align: center;\">Fotografi Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>'),
(407086701, '<p>--</p>'),
(405118003, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\">1</td><td style=\"text-align: center;\">DIA306</td><td style=\"text-align: center;\">Pengantar Arsitektur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA403</td><td style=\"text-align: center;\">Seminar Tugas Akhir</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA401</td><td style=\"text-align: center;\">Desain Interior Kompleksitas Tinggi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA209</td><td style=\"text-align: center;\">Pengetahuan Bahan Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>'),
(430068604, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA212</td><td>Utilitas Bangunan</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA401</td><td>Desain Interior Kompleksitas Tinggi</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA207</td><td>Fisika Bangunan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA302</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA106</td><td>Gambar Teknik Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA305</td><td>Desain Furnitur Built-in</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA205</td><td>Metoda Presentasi</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(418107601, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana;\">1</span></td><td style=\"text-align: center;\"><span style=\"color: rgb(70, 70, 70); font-family: Verdana; font-size: 14px;\">DIA204</span><br></td><td style=\"text-align: center;\">Desain Furnitur Sarana Simpan</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA106</td><td style=\"text-align: center;\">Gambar Teknik Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA201</td><td style=\"text-align: center;\">Dasar Desain Furnitur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA205</td><td style=\"text-align: center;\">Metoda Presentasi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA103</td><td style=\"text-align: center;\">Gambar Konstruktif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DI171</td><td style=\"text-align: center;\">Metode Berfikir Kreatif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DI172</td><td style=\"text-align: center;\">Wawasan Budaya Nusantara</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DI460</td><td style=\"text-align: center;\">Kerja Profesi</td><td style=\"text-align: center;\">Sekolah Tinggi Desain Indonesia Bandung</td></tr></tbody></table><p><br></p>'),
(406046601, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA106</td><td>Gambar Teknik Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA108</td><td>Metodologi Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA312</td><td>Tinjauan Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA211</td><td>Konstruksi Bangunan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA213</td><td>Konstruksi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA201</td><td>Dasar Desain Furnitur</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA308</td><td>Komputer Pemodelan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA113</td><td>Pengantar Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(402036601, '<div><br></div><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NO</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">KODE MATA KULIAH</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NAMA MATA KULIAH</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">PERGURUAN TINGGI</span></font></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA102</td><td style=\"text-align: center; \">Gambar Desain Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center; \">2</td><td style=\"text-align: center; \">DIA104</td><td style=\"text-align: center; \">Rupa dan Ruang Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">3</td><td style=\"text-align: center; \">DIA107</td><td style=\"text-align: center; \">Dasar Perupaan 2 Dimensi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">4</td><td style=\"text-align: center; \">DIA101</td><td style=\"text-align: center; \">Gambar Ekspresif</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">5</td><td style=\"text-align: center; \">DIA105</td><td style=\"text-align: center; \">Dasar Perupaan 3 Dimensi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">6</td><td style=\"text-align: center; \">DIA465</td><td style=\"text-align: center; \">Seni Ruang Publik</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">7</td><td style=\"text-align: center; \">DI467</td><td style=\"text-align: center; \">Dasar Seni Lukis</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">8</td><td style=\"text-align: center; \">DI182</td><td style=\"text-align: center; \">Sejarah Seni Rupa Indonesia</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><div><br></div>'),
(419076501, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA211</td><td>Kontruksi Bangunan</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA204</td><td>Desain Furnitur Sarana Simpan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA305</td><td>Desain Furnitur Built-in</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA108</td><td>Metodologi Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DI336</td><td>Desain Mebel III</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DI214</td><td>Desain Interior II</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DI325</td><td>Interior Digital II</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(423087701, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></b></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA302</td><td style=\"text-align: center;\">Desain Interior Ruang Publik</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA208</td><td style=\"text-align: center;\">Manajemen Proyek Interior 1</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA309</td><td style=\"text-align: center;\">Penelitian Desain Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA307</td><td style=\"text-align: center;\">Manajemen Proyek Interior 2</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA301</td><td style=\"text-align: center;\">Desain Interior Ruang Komersial</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DIA306</td><td style=\"text-align: center;\">Pengantar Arsitektur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DIA305</td><td style=\"text-align: center;\">Desain Furnitur Built-in</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DIA407</td><td style=\"text-align: center;\">Psikologi Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(426067608, '<p style=\"text-align: center; \"><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA202</td><td>Gambar Digital Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA308</td><td>Komputer Pemodelan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA210</td><td>Ergonomi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA205</td><td>Metoda Presentasi</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA303</td><td>Rendering Digital Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA402</td><td>Kewirausahaan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA298</td><td>Desain Interior Hunian Keluarga</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>'),
(406016901, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td>NO</td><td>KODE MATA KULIAH&nbsp;</td><td>NAMA MATA KULIAH</td><td>PERGURUAN TINGGI</td></tr><tr><td>1</td><td>IS107</td><td>Bahasa Inggris I</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>MS103</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DI101</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>TK105</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>34020012</td><td>Academic English</td><td>Universitas Widyatama</td></tr><tr><td>6</td><td>34010011</td><td>General English</td><td>Universitas Widyatama</td></tr><tr><td>7</td><td>DI306</td><td>Bahasa Inggris II<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DI346</td><td>Penelitian Desain</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(427088707, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NO</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">KODE MATA KULIAH</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NAMA MATA KULIAH</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">PERGURUAN TINGGI</span></font></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA304</td><td style=\"text-align: center; \">Desain Furnitur Tematis dan Prototipe</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center; \">2</td><td style=\"text-align: center; \">DIA402</td><td style=\"text-align: center; \">Kewirausahaan</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">3</td><td style=\"text-align: center; \">DIA110</td><td style=\"text-align: center; \">Wawasan Budaya Nusantara</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">4</td><td style=\"text-align: center; \">DIA490</td><td style=\"text-align: center; \">Kerja Profesi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">5</td><td style=\"text-align: center; \">DIA109</td><td style=\"text-align: center; \">Metode Berfikir Kreatif</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">6</td><td style=\"text-align: center; \">DIA209</td><td style=\"text-align: center; \">Pengetahuan Bahan Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">7</td><td style=\"text-align: center; \">DIA108</td><td style=\"text-align: center; \">Metodologi Desain Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">8</td><td style=\"text-align: center; \">DIA201</td><td style=\"text-align: center; \">Dasar Desain Furnitur</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(417046001, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA114</td><td>Sejarah Desain Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA302</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA301</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA113</td><td>Pengantar Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA307</td><td>Manajemen Proyek Interior 2</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA210</td><td>Ergonomi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA112</td><td>Estetika Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA345</td><td>Manajemen Proyek Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(408097401, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\">1</td><td style=\"text-align: center;\">DIA212</td><td style=\"text-align: center;\">Utilitas Bangunan</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA298</td><td style=\"text-align: center;\">Desain Interior Hunian Keluarga</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA206</td><td style=\"text-align: center;\">Bahan dan Proses</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA314</td><td style=\"text-align: center;\">Desain Interior dan Ekologi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA103</td><td style=\"text-align: center;\">Gambar Konstruktif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DIA302</td><td style=\"text-align: center;\">Desain Interior Ruang Publik</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DIA311</td><td style=\"text-align: center;\">Sketsa Proyek</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DIA453</td><td style=\"text-align: center;\">Fotografi Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>'),
(407086701, '<p>--</p>'),
(405118003, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\">1</td><td style=\"text-align: center;\">DIA306</td><td style=\"text-align: center;\">Pengantar Arsitektur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA403</td><td style=\"text-align: center;\">Seminar Tugas Akhir</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA401</td><td style=\"text-align: center;\">Desain Interior Kompleksitas Tinggi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA209</td><td style=\"text-align: center;\">Pengetahuan Bahan Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>');
INSERT INTO `publikasi_dosen` (`nidn`, `data_publikasi`) VALUES
(430068604, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA212</td><td>Utilitas Bangunan</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA401</td><td>Desain Interior Kompleksitas Tinggi</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA207</td><td>Fisika Bangunan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA302</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA106</td><td>Gambar Teknik Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA305</td><td>Desain Furnitur Built-in</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA205</td><td>Metoda Presentasi</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(418107601, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\"><span style=\"font-family: Verdana;\">1</span></td><td style=\"text-align: center;\"><span style=\"color: rgb(70, 70, 70); font-family: Verdana; font-size: 14px;\">DIA204</span><br></td><td style=\"text-align: center;\">Desain Furnitur Sarana Simpan</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA106</td><td style=\"text-align: center;\">Gambar Teknik Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA201</td><td style=\"text-align: center;\">Dasar Desain Furnitur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA205</td><td style=\"text-align: center;\">Metoda Presentasi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA103</td><td style=\"text-align: center;\">Gambar Konstruktif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DI171</td><td style=\"text-align: center;\">Metode Berfikir Kreatif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DI172</td><td style=\"text-align: center;\">Wawasan Budaya Nusantara</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DI460</td><td style=\"text-align: center;\">Kerja Profesi</td><td style=\"text-align: center;\">Sekolah Tinggi Desain Indonesia Bandung</td></tr></tbody></table><p><br></p>'),
(406046601, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA106</td><td>Gambar Teknik Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA108</td><td>Metodologi Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA312</td><td>Tinjauan Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA211</td><td>Konstruksi Bangunan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA213</td><td>Konstruksi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA201</td><td>Dasar Desain Furnitur</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA308</td><td>Komputer Pemodelan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA113</td><td>Pengantar Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(402036601, '<div><br></div><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NO</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">KODE MATA KULIAH</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NAMA MATA KULIAH</span></font></td><td style=\"text-align: center; \"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">PERGURUAN TINGGI</span></font></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA102</td><td style=\"text-align: center; \">Gambar Desain Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center; \">2</td><td style=\"text-align: center; \">DIA104</td><td style=\"text-align: center; \">Rupa dan Ruang Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">3</td><td style=\"text-align: center; \">DIA107</td><td style=\"text-align: center; \">Dasar Perupaan 2 Dimensi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">4</td><td style=\"text-align: center; \">DIA101</td><td style=\"text-align: center; \">Gambar Ekspresif</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">5</td><td style=\"text-align: center; \">DIA105</td><td style=\"text-align: center; \">Dasar Perupaan 3 Dimensi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">6</td><td style=\"text-align: center; \">DIA465</td><td style=\"text-align: center; \">Seni Ruang Publik</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">7</td><td style=\"text-align: center; \">DI467</td><td style=\"text-align: center; \">Dasar Seni Lukis</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">8</td><td style=\"text-align: center; \">DI182</td><td style=\"text-align: center; \">Sejarah Seni Rupa Indonesia</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><div><br></div>'),
(419076501, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center;\"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA211</td><td>Kontruksi Bangunan</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA204</td><td>Desain Furnitur Sarana Simpan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA305</td><td>Desain Furnitur Built-in</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA108</td><td>Metodologi Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DI336</td><td>Desain Mebel III</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DI214</td><td>Desain Interior II</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DI325</td><td>Interior Digital II</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(423087701, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></b></td><td style=\"text-align: center; \"><b><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></b></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA302</td><td style=\"text-align: center;\">Desain Interior Ruang Publik</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA208</td><td style=\"text-align: center;\">Manajemen Proyek Interior 1</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA309</td><td style=\"text-align: center;\">Penelitian Desain Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA307</td><td style=\"text-align: center;\">Manajemen Proyek Interior 2</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA301</td><td style=\"text-align: center;\">Desain Interior Ruang Komersial</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DIA306</td><td style=\"text-align: center;\">Pengantar Arsitektur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DIA305</td><td style=\"text-align: center;\">Desain Furnitur Built-in</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DIA407</td><td style=\"text-align: center;\">Psikologi Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(426067608, '<p style=\"text-align: center; \"><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA202</td><td>Gambar Digital Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA308</td><td>Komputer Pemodelan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA210</td><td>Ergonomi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA205</td><td>Metoda Presentasi</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA303</td><td>Rendering Digital Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA299</td><td>Desain Interior Hunian Tunggal</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA402</td><td>Kewirausahaan</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA298</td><td>Desain Interior Hunian Keluarga</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>'),
(406016901, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td>NO</td><td>KODE MATA KULIAH&nbsp;</td><td>NAMA MATA KULIAH</td><td>PERGURUAN TINGGI</td></tr><tr><td>1</td><td>IS107</td><td>Bahasa Inggris I</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>MS103</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DI101</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>TK105</td><td>Bahasa Inggris I<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>34020012</td><td>Academic English</td><td>Universitas Widyatama</td></tr><tr><td>6</td><td>34010011</td><td>General English</td><td>Universitas Widyatama</td></tr><tr><td>7</td><td>DI306</td><td>Bahasa Inggris II<br></td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DI346</td><td>Penelitian Desain</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(427088707, '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NO</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">KODE MATA KULIAH</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">NAMA MATA KULIAH</span></font></td><td style=\"text-align: center;\"><font color=\"#ff9c00\"><span style=\"font-family: &quot;Arial Black&quot;;\">PERGURUAN TINGGI</span></font></td></tr><tr><td style=\"text-align: center; \">1</td><td style=\"text-align: center; \">DIA304</td><td style=\"text-align: center; \">Desain Furnitur Tematis dan Prototipe</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center; \">2</td><td style=\"text-align: center; \">DIA402</td><td style=\"text-align: center; \">Kewirausahaan</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">3</td><td style=\"text-align: center; \">DIA110</td><td style=\"text-align: center; \">Wawasan Budaya Nusantara</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">4</td><td style=\"text-align: center; \">DIA490</td><td style=\"text-align: center; \">Kerja Profesi</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">5</td><td style=\"text-align: center; \">DIA109</td><td style=\"text-align: center; \">Metode Berfikir Kreatif</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">6</td><td style=\"text-align: center; \">DIA209</td><td style=\"text-align: center; \">Pengetahuan Bahan Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">7</td><td style=\"text-align: center; \">DIA108</td><td style=\"text-align: center; \">Metodologi Desain Interior</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center; \">8</td><td style=\"text-align: center; \">DIA201</td><td style=\"text-align: center; \">Dasar Desain Furnitur</td><td style=\"text-align: center; \">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(417046001, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td>1</td><td>DIA114</td><td>Sejarah Desain Interior</td><td>Institut Teknologi Nasional Bandung</td></tr><tr><td>2</td><td>DIA302</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>3</td><td>DIA301</td><td>Desain Interior Ruang Publik</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>4</td><td>DIA113</td><td>Pengantar Desain Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>5</td><td>DIA307</td><td>Manajemen Proyek Interior 2</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>6</td><td>DIA210</td><td>Ergonomi Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>7</td><td>DIA112</td><td>Estetika Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr><tr><td>8</td><td>DIA345</td><td>Manajemen Proyek Interior</td><td>Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p><br></p>'),
(408097401, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\">1</td><td style=\"text-align: center;\">DIA212</td><td style=\"text-align: center;\">Utilitas Bangunan</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA298</td><td style=\"text-align: center;\">Desain Interior Hunian Keluarga</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA206</td><td style=\"text-align: center;\">Bahan dan Proses</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA314</td><td style=\"text-align: center;\">Desain Interior dan Ekologi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\">DIA103</td><td style=\"text-align: center;\">Gambar Konstruktif</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\">DIA302</td><td style=\"text-align: center;\">Desain Interior Ruang Publik</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\">DIA311</td><td style=\"text-align: center;\">Sketsa Proyek</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\">DIA453</td><td style=\"text-align: center;\">Fotografi Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>'),
(407086701, '<p>--</p>'),
(405118003, '<p><br></p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NO</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">KODE MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">NAMA MATA KULIAH</font></span></td><td style=\"text-align: center; \"><span style=\"font-family: &quot;Arial Black&quot;;\"><font color=\"#ff9c00\">PERGURUAN TINGGI</font></span></td></tr><tr><td style=\"text-align: center;\">1</td><td style=\"text-align: center;\">DIA306</td><td style=\"text-align: center;\">Pengantar Arsitektur</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung</td></tr><tr><td style=\"text-align: center;\">2</td><td style=\"text-align: center;\">DIA403</td><td style=\"text-align: center;\">Seminar Tugas Akhir</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">3</td><td style=\"text-align: center;\">DIA401</td><td style=\"text-align: center;\">Desain Interior Kompleksitas Tinggi</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">4</td><td style=\"text-align: center;\">DIA209</td><td style=\"text-align: center;\">Pengetahuan Bahan Interior</td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">5</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">6</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">7</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr><tr><td style=\"text-align: center;\">8</td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\"><br></td><td style=\"text-align: center;\">Institut Teknologi Nasional Bandung<br></td></tr></tbody></table><p style=\"text-align: center;\"><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `referensi_dosen`
--

CREATE TABLE `referensi_dosen` (
  `nidn` int(11) DEFAULT NULL,
  `google_scholar` varchar(1000) DEFAULT NULL,
  `shinta` varchar(1000) DEFAULT NULL,
  `scopus` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referensi_dosen`
--

INSERT INTO `referensi_dosen` (`nidn`, `google_scholar`, `shinta`, `scopus`) VALUES
(430068604, '<p><a href=\"https://scholar.google.com/citations?hl=id&amp;user=OLB_FrwAAAAJ\" target=\"_blank\"><font color=\"#ff9c00\">OLB_FrwAAAAJ</font></a></p>', '6166409', NULL),
(418107601, '<p><a href=\"https://scholar.google.co.id/citations?user=rIX2BTUAAAAJ&amp;hl=id&amp;oi=ao\" target=\"_blank\">rIX2BTUAAAAJ</a></p>', '6006097', '-'),
(406046601, '<p><a href=\"https://scholar.google.co.id/citations?user=oIt6o_cAAAAJ&amp;hl=id&amp;oi=ao\" target=\"_blank\"><font color=\"#ff9c00\">oIt6o_cAAAAJ</font></a><br></p>', '6006082', '-'),
(402036601, '--', '6178793', '--'),
(419076501, '<p><a href=\"https://scholar.google.com/citations?hl=id&amp;user=fh3CH8cAAAAJ\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-family: sans-serif; font-weight: 400;\"><font color=\"#ff9c00\">fh3CH8cAAAAJ</font></a><br></p>', '6006080', '--'),
(423087701, '<p><a href=\"https://scholar.google.com/citations?hl=en&amp;user=NR6GIaIAAAAJ\" target=\"_blank\">NR6GIaIAAAAJ</a><br></p>', '6445767', '-'),
(426067608, '<p><a href=\"https://scholar.google.com/citations?user=S4ISnekAAAAJ&amp;hl=en\" target=\"_blank\"><font color=\"#ff9c00\">S4ISnekAAAAJ</font></a><br></p>', '6178259', '--'),
(406016901, '<p>--</p>', '--', '--'),
(427088707, '<p><a href=\"https://scholar.google.com/citations?user=0THMWHcAAAAJ&amp;hl=en&amp;oi=ao\" target=\"_blank\">0THMWHcAAAAJ</a><br></p>', '6006096', '--'),
(417046001, '<p>--</p>', '--', '--'),
(408097401, '<p><a href=\"https://scholar.google.co.id/citations?user=2ECPZtYAAAAJ&amp;hl=en\" target=\"_blank\"><font color=\"#ff9c00\">2ECPZtYAAAAJ</font></a><br></p>', '6650297', '--'),
(407086701, '<p><a href=\"https://scholar.google.com/citations?user=5LeYBA8AAAAJ&amp;hl=en\" target=\"_blank\">5LeYBA8AAAAJ</a><br></p>', '259994', '--'),
(405118003, '<p><a href=\"https://scholar.google.co.id/citations?hl=id&amp;user=CUcK1JIkTRkC\" target=\"_blank\"><font color=\"#ff9c00\">CUcK1JIkTRkC</font></a><br></p>', '6108067', '--'),
(430068604, '<p><a href=\"https://scholar.google.com/citations?hl=id&amp;user=OLB_FrwAAAAJ\" target=\"_blank\"><font color=\"#ff9c00\">OLB_FrwAAAAJ</font></a></p>', '6166409', NULL),
(418107601, '<p><a href=\"https://scholar.google.co.id/citations?user=rIX2BTUAAAAJ&amp;hl=id&amp;oi=ao\" target=\"_blank\">rIX2BTUAAAAJ</a></p>', '6006097', '-'),
(406046601, '<p><a href=\"https://scholar.google.co.id/citations?user=oIt6o_cAAAAJ&amp;hl=id&amp;oi=ao\" target=\"_blank\"><font color=\"#ff9c00\">oIt6o_cAAAAJ</font></a><br></p>', '6006082', '-'),
(402036601, '--', '6178793', '--'),
(419076501, '<p><a href=\"https://scholar.google.com/citations?hl=id&amp;user=fh3CH8cAAAAJ\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-family: sans-serif; font-weight: 400;\"><font color=\"#ff9c00\">fh3CH8cAAAAJ</font></a><br></p>', '6006080', '--'),
(423087701, '<p><a href=\"https://scholar.google.com/citations?hl=en&amp;user=NR6GIaIAAAAJ\" target=\"_blank\">NR6GIaIAAAAJ</a><br></p>', '6445767', '-'),
(426067608, '<p><a href=\"https://scholar.google.com/citations?user=S4ISnekAAAAJ&amp;hl=en\" target=\"_blank\"><font color=\"#ff9c00\">S4ISnekAAAAJ</font></a><br></p>', '6178259', '--'),
(406016901, '<p>--</p>', '--', '--'),
(427088707, '<p><a href=\"https://scholar.google.com/citations?user=0THMWHcAAAAJ&amp;hl=en&amp;oi=ao\" target=\"_blank\">0THMWHcAAAAJ</a><br></p>', '6006096', '--'),
(417046001, '<p>--</p>', '--', '--'),
(408097401, '<p><a href=\"https://scholar.google.co.id/citations?user=2ECPZtYAAAAJ&amp;hl=en\" target=\"_blank\"><font color=\"#ff9c00\">2ECPZtYAAAAJ</font></a><br></p>', '6650297', '--'),
(407086701, '<p><a href=\"https://scholar.google.com/citations?user=5LeYBA8AAAAJ&amp;hl=en\" target=\"_blank\">5LeYBA8AAAAJ</a><br></p>', '259994', '--'),
(405118003, '<p><a href=\"https://scholar.google.co.id/citations?hl=id&amp;user=CUcK1JIkTRkC\" target=\"_blank\"><font color=\"#ff9c00\">CUcK1JIkTRkC</font></a><br></p>', '6108067', '--'),
(430068604, '<p><a href=\"https://scholar.google.com/citations?hl=id&amp;user=OLB_FrwAAAAJ\" target=\"_blank\"><font color=\"#ff9c00\">OLB_FrwAAAAJ</font></a></p>', '6166409', NULL),
(418107601, '<p><a href=\"https://scholar.google.co.id/citations?user=rIX2BTUAAAAJ&amp;hl=id&amp;oi=ao\" target=\"_blank\">rIX2BTUAAAAJ</a></p>', '6006097', '-'),
(406046601, '<p><a href=\"https://scholar.google.co.id/citations?user=oIt6o_cAAAAJ&amp;hl=id&amp;oi=ao\" target=\"_blank\"><font color=\"#ff9c00\">oIt6o_cAAAAJ</font></a><br></p>', '6006082', '-'),
(402036601, '--', '6178793', '--'),
(419076501, '<p><a href=\"https://scholar.google.com/citations?hl=id&amp;user=fh3CH8cAAAAJ\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-family: sans-serif; font-weight: 400;\"><font color=\"#ff9c00\">fh3CH8cAAAAJ</font></a><br></p>', '6006080', '--'),
(423087701, '<p><a href=\"https://scholar.google.com/citations?hl=en&amp;user=NR6GIaIAAAAJ\" target=\"_blank\">NR6GIaIAAAAJ</a><br></p>', '6445767', '-'),
(426067608, '<p><a href=\"https://scholar.google.com/citations?user=S4ISnekAAAAJ&amp;hl=en\" target=\"_blank\"><font color=\"#ff9c00\">S4ISnekAAAAJ</font></a><br></p>', '6178259', '--'),
(406016901, '<p>--</p>', '--', '--'),
(427088707, '<p><a href=\"https://scholar.google.com/citations?user=0THMWHcAAAAJ&amp;hl=en&amp;oi=ao\" target=\"_blank\">0THMWHcAAAAJ</a><br></p>', '6006096', '--'),
(417046001, '<p>--</p>', '--', '--'),
(408097401, '<p><a href=\"https://scholar.google.co.id/citations?user=2ECPZtYAAAAJ&amp;hl=en\" target=\"_blank\"><font color=\"#ff9c00\">2ECPZtYAAAAJ</font></a><br></p>', '6650297', '--'),
(407086701, '<p><a href=\"https://scholar.google.com/citations?user=5LeYBA8AAAAJ&amp;hl=en\" target=\"_blank\">5LeYBA8AAAAJ</a><br></p>', '259994', '--'),
(405118003, '<p><a href=\"https://scholar.google.co.id/citations?hl=id&amp;user=CUcK1JIkTRkC\" target=\"_blank\"><font color=\"#ff9c00\">CUcK1JIkTRkC</font></a><br></p>', '6108067', '--');

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `informasi_umum` text,
  `foto_sampul` text,
  `visi` text,
  `misi` text,
  `tujuan` text,
  `sasaran` text,
  `akreditasi` text,
  `strategi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`informasi_umum`, `foto_sampul`, `visi`, `misi`, `tujuan`, `sasaran`, `akreditasi`, `strategi`) VALUES
('<div style=\"text-align: justify;\"><span style=\"color: rgb(68, 68, 68); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); font-family: Arial;\">Program Studi Desain Interior Itenas adalah program studi perancangan ruang interior &amp; furniture, penyusunan program ruang, pencitraan suasana ruang, pengelolaan proyek interior &amp; furniture, berdasarkan analisis hubungan manusia dengan ruang dalam konteks budaya dan perkembangan industri konstruksi berbasis kewirausahaan dan kreativitas baik secara akademis maupun profesi. Lulusan Program Studi Desain Interior dapat berkarya antara lain sebagai Desainer muda, Wirausaha bidang Interior &amp; Furniture, Perencana muda program &amp; visualisasi estetika ruang Interior, Asisten Proyek Manager bidang Interior &amp; furniture, Asisten Peneliti bidang desain interior.</span></div>', 'about.jpg', '<div style=\"font-family: Consolas, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"text-align: justify; \"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px; background-color: rgb(255, 255, 255);\">Menjadikan Fakultas Arsitektur dan Desain (FAD) Itenas sebagai unit pelaksana akademik yang handal, yang mampu mengkoordinasikan, melaksanakan dan memberikan pelayanan kepada jurusan di lingkungan FAD dalam melaksanakan Tri Dharma Perguruan Tinggi, sehingga menghasilkan lulusan calon arsitektur, desainer interior, desainer produk dan desainer komunikasi visual yang memiliki watak inovatif dan berwawasan kewirausahaan, serta mampu aktif berperan serta dalam upaya penguatan daya saing nasional, pengembangan budaya nasional dan perkembangan teknologi. visiiiiisssvvvv</span><br></div></div>', '<ol><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Mengkoordinasikan pelaksanaan dan pengembangan pendidikan, penelitian dan pengembangan masyarakat di jurusan dalam lingkungan FAD.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Melaksanakan penataan dan pembinaan di lingkungan FAD.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Memupuk tumbuhnya kerja sama baik di antara berbagai jurusan di lingkungan FAD dengan seluruh fakultas dan unit kerja di lingkungan Itenas, maupun kerjasama dengan pihak luar dalam bidang pendidikan, penelitian dan pemberdayaan masyarakat.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">misi</span></span></li></ol>', '<ol><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan penyelenggaraan pendidikan di lingkungan FAD Itenas yang efektif dan efisien, berorientasi pada kompetensi lulusan yang relevan dengan kebutuhan dunia kerja.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan penyelenggaraan penelitian yang berorientasi pada peningkatan kualitas staf pengajar di lingkungan FAD Itenas pada bidang keilmuannya secara konsisten.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan pengembangan staf akademik yang memiliki integritas dan tanggung jawab, menjaga kehormatan pribadi dan institusi serta mampu memberi keteladanan di lingkungannya.</span></li><li style=\"text-align: justify; \"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengembangkan staf administrasi yang memiliki integritas dan tanggung jawab, menjaga kehormatan pribadi dan institusi, serta profesional di bidangnya.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Meningkatkan kinerja pelaksanaan urusan tata usaha fakultas dalam rangka membantu jurusan-jurusan untuk menghasilkan lulusan yang berkualitas.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Meningkatkan kegiatan kemahasiswaan yang membentuk sikap profesional yang ber-etika.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Memupuk tumbuhnya kerja sama baik antar jurusan di lingkungan FAD maupun dengan pihak luar, dalam penyelenggaraan Tri Dharma.<br></span></li></ol>', '-', 'Test', '<ol><li>12345678</li><li>sdfghjkl</li><li>rftyguio</li><li>jnkjmk</li></ol>'),
('<div style=\"text-align: justify;\"><span style=\"color: rgb(68, 68, 68); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); font-family: Arial;\">Program Studi Desain Interior Itenas adalah program studi perancangan ruang interior &amp; furniture, penyusunan program ruang, pencitraan suasana ruang, pengelolaan proyek interior &amp; furniture, berdasarkan analisis hubungan manusia dengan ruang dalam konteks budaya dan perkembangan industri konstruksi berbasis kewirausahaan dan kreativitas baik secara akademis maupun profesi. Lulusan Program Studi Desain Interior dapat berkarya antara lain sebagai Desainer muda, Wirausaha bidang Interior &amp; Furniture, Perencana muda program &amp; visualisasi estetika ruang Interior, Asisten Proyek Manager bidang Interior &amp; furniture, Asisten Peneliti bidang desain interior.</span></div>', 'about.jpg', '<div style=\"font-family: Consolas, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"text-align: justify; \"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px; background-color: rgb(255, 255, 255);\">Menjadikan Fakultas Arsitektur dan Desain (FAD) Itenas sebagai unit pelaksana akademik yang handal, yang mampu mengkoordinasikan, melaksanakan dan memberikan pelayanan kepada jurusan di lingkungan FAD dalam melaksanakan Tri Dharma Perguruan Tinggi, sehingga menghasilkan lulusan calon arsitektur, desainer interior, desainer produk dan desainer komunikasi visual yang memiliki watak inovatif dan berwawasan kewirausahaan, serta mampu aktif berperan serta dalam upaya penguatan daya saing nasional, pengembangan budaya nasional dan perkembangan teknologi. visiiiiisssvvvv</span><br></div></div>', '<ol><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Mengkoordinasikan pelaksanaan dan pengembangan pendidikan, penelitian dan pengembangan masyarakat di jurusan dalam lingkungan FAD.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Melaksanakan penataan dan pembinaan di lingkungan FAD.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Memupuk tumbuhnya kerja sama baik di antara berbagai jurusan di lingkungan FAD dengan seluruh fakultas dan unit kerja di lingkungan Itenas, maupun kerjasama dengan pihak luar dalam bidang pendidikan, penelitian dan pemberdayaan masyarakat.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">misi</span></span></li></ol>', '<ol><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan penyelenggaraan pendidikan di lingkungan FAD Itenas yang efektif dan efisien, berorientasi pada kompetensi lulusan yang relevan dengan kebutuhan dunia kerja.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan penyelenggaraan penelitian yang berorientasi pada peningkatan kualitas staf pengajar di lingkungan FAD Itenas pada bidang keilmuannya secara konsisten.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan pengembangan staf akademik yang memiliki integritas dan tanggung jawab, menjaga kehormatan pribadi dan institusi serta mampu memberi keteladanan di lingkungannya.</span></li><li style=\"text-align: justify; \"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengembangkan staf administrasi yang memiliki integritas dan tanggung jawab, menjaga kehormatan pribadi dan institusi, serta profesional di bidangnya.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Meningkatkan kinerja pelaksanaan urusan tata usaha fakultas dalam rangka membantu jurusan-jurusan untuk menghasilkan lulusan yang berkualitas.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Meningkatkan kegiatan kemahasiswaan yang membentuk sikap profesional yang ber-etika.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Memupuk tumbuhnya kerja sama baik antar jurusan di lingkungan FAD maupun dengan pihak luar, dalam penyelenggaraan Tri Dharma.<br></span></li></ol>', '-', 'Test', '<ol><li>12345678</li><li>sdfghjkl</li><li>rftyguio</li><li>jnkjmk</li></ol>'),
('<div style=\"text-align: justify;\"><span style=\"color: rgb(68, 68, 68); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); font-family: Arial;\">Program Studi Desain Interior Itenas adalah program studi perancangan ruang interior &amp; furniture, penyusunan program ruang, pencitraan suasana ruang, pengelolaan proyek interior &amp; furniture, berdasarkan analisis hubungan manusia dengan ruang dalam konteks budaya dan perkembangan industri konstruksi berbasis kewirausahaan dan kreativitas baik secara akademis maupun profesi. Lulusan Program Studi Desain Interior dapat berkarya antara lain sebagai Desainer muda, Wirausaha bidang Interior &amp; Furniture, Perencana muda program &amp; visualisasi estetika ruang Interior, Asisten Proyek Manager bidang Interior &amp; furniture, Asisten Peneliti bidang desain interior.</span></div>', 'about.jpg', '<div style=\"font-family: Consolas, \" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;\"=\"\"><div style=\"text-align: justify; \"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px; background-color: rgb(255, 255, 255);\">Menjadikan Fakultas Arsitektur dan Desain (FAD) Itenas sebagai unit pelaksana akademik yang handal, yang mampu mengkoordinasikan, melaksanakan dan memberikan pelayanan kepada jurusan di lingkungan FAD dalam melaksanakan Tri Dharma Perguruan Tinggi, sehingga menghasilkan lulusan calon arsitektur, desainer interior, desainer produk dan desainer komunikasi visual yang memiliki watak inovatif dan berwawasan kewirausahaan, serta mampu aktif berperan serta dalam upaya penguatan daya saing nasional, pengembangan budaya nasional dan perkembangan teknologi. visiiiiisssvvvv</span><br></div></div>', '<ol><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Mengkoordinasikan pelaksanaan dan pengembangan pendidikan, penelitian dan pengembangan masyarakat di jurusan dalam lingkungan FAD.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Melaksanakan penataan dan pembinaan di lingkungan FAD.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">Memupuk tumbuhnya kerja sama baik di antara berbagai jurusan di lingkungan FAD dengan seluruh fakultas dan unit kerja di lingkungan Itenas, maupun kerjasama dengan pihak luar dalam bidang pendidikan, penelitian dan pemberdayaan masyarakat.</span></span></li><li><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(122, 122, 122); font-family: Arial; font-size: 14px;\">misi</span></span></li></ol>', '<ol><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan penyelenggaraan pendidikan di lingkungan FAD Itenas yang efektif dan efisien, berorientasi pada kompetensi lulusan yang relevan dengan kebutuhan dunia kerja.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan penyelenggaraan penelitian yang berorientasi pada peningkatan kualitas staf pengajar di lingkungan FAD Itenas pada bidang keilmuannya secara konsisten.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengkoordinasikan pengembangan staf akademik yang memiliki integritas dan tanggung jawab, menjaga kehormatan pribadi dan institusi serta mampu memberi keteladanan di lingkungannya.</span></li><li style=\"text-align: justify; \"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Mengembangkan staf administrasi yang memiliki integritas dan tanggung jawab, menjaga kehormatan pribadi dan institusi, serta profesional di bidangnya.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Meningkatkan kinerja pelaksanaan urusan tata usaha fakultas dalam rangka membantu jurusan-jurusan untuk menghasilkan lulusan yang berkualitas.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Meningkatkan kegiatan kemahasiswaan yang membentuk sikap profesional yang ber-etika.</span></li><li style=\"text-align: justify;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Arial;\">Memupuk tumbuhnya kerja sama baik antar jurusan di lingkungan FAD maupun dengan pihak luar, dalam penyelenggaraan Tri Dharma.<br></span></li></ol>', '-', 'Test', '<ol><li>12345678</li><li>sdfghjkl</li><li>rftyguio</li><li>jnkjmk</li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vini fahrezi', 'admin', 'vinifahrezi@gmail.com', NULL, '$2y$10$9hJIlBE6dtAC2K2SxVXTjevBxbTmOKfeGdNwyv1SJvXV1Bn0gjDZu', 'S013fRbWxVBrQ86tMeQBf9DMZH89xpvOe8tRlm3GK3q6DlgdQ1kjt8NwMOi9', '2022-07-12 19:50:54', '2022-07-12 19:50:54');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vdosen`
-- (See below for the actual view)
--
CREATE TABLE `vdosen` (
`nidn` int(10)
,`nama_dosen` varchar(50)
,`keahlian` text
,`kontak` text
,`alamat` varchar(50)
,`s1` varchar(70)
,`s2` varchar(70)
,`s3` varchar(70)
,`data_publikasi` longtext
,`google_scholar` varchar(1000)
,`shinta` varchar(1000)
,`scopus` varchar(1000)
,`foto` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vgaleri`
-- (See below for the actual view)
--
CREATE TABLE `vgaleri` (
`id_galeri` varchar(50)
,`id_kategori` varchar(50)
,`nama_kategori` varchar(50)
,`judul` varchar(50)
,`deskripsi` text
,`foto` text
);

-- --------------------------------------------------------

--
-- Structure for view `vdosen`
--
DROP TABLE IF EXISTS `vdosen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdosen`  AS SELECT `data_dosen`.`nidn` AS `nidn`, `data_dosen`.`nama_dosen` AS `nama_dosen`, `data_dosen`.`keahlian` AS `keahlian`, `data_dosen`.`kontak` AS `kontak`, `data_dosen`.`alamat` AS `alamat`, `pendidikan_dosen`.`s1` AS `s1`, `pendidikan_dosen`.`s2` AS `s2`, `pendidikan_dosen`.`s3` AS `s3`, `publikasi_dosen`.`data_publikasi` AS `data_publikasi`, `referensi_dosen`.`google_scholar` AS `google_scholar`, `referensi_dosen`.`shinta` AS `shinta`, `referensi_dosen`.`scopus` AS `scopus`, `data_dosen`.`foto` AS `foto` FROM (((`data_dosen` join `pendidikan_dosen` on((`data_dosen`.`nidn` = `pendidikan_dosen`.`nidn`))) join `publikasi_dosen` on((`publikasi_dosen`.`nidn` = `data_dosen`.`nidn`))) join `referensi_dosen` on((`data_dosen`.`nidn` = `referensi_dosen`.`nidn`))) GROUP BY `data_dosen`.`nidn` ORDER BY `data_dosen`.`nama_dosen` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `vgaleri`
--
DROP TABLE IF EXISTS `vgaleri`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vgaleri`  AS SELECT `galeri`.`id_galeri` AS `id_galeri`, `galeri`.`id_kategori` AS `id_kategori`, `kategori`.`nama_kategori` AS `nama_kategori`, `galeri`.`judul` AS `judul`, `galeri`.`deskripsi` AS `deskripsi`, `galeri`.`foto` AS `foto` FROM (`galeri` join `kategori` on((`galeri`.`id_kategori` = `kategori`.`id_kategori`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`) USING BTREE;

--
-- Indexes for table `data_dosen`
--
ALTER TABLE `data_dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fakta`
--
ALTER TABLE `fakta`
  ADD PRIMARY KEY (`id_fakta`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `FK_galeri_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pendidikan_dosen`
--
ALTER TABLE `pendidikan_dosen`
  ADD KEY `FK__data_dosen` (`nidn`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `publikasi_dosen`
--
ALTER TABLE `publikasi_dosen`
  ADD KEY `FK3` (`nidn`);

--
-- Indexes for table `referensi_dosen`
--
ALTER TABLE `referensi_dosen`
  ADD KEY `FK2` (`nidn`);

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `FK_galeri_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `pendidikan_dosen`
--
ALTER TABLE `pendidikan_dosen`
  ADD CONSTRAINT `FK__data_dosen` FOREIGN KEY (`nidn`) REFERENCES `data_dosen` (`nidn`);

--
-- Constraints for table `publikasi_dosen`
--
ALTER TABLE `publikasi_dosen`
  ADD CONSTRAINT `FK3` FOREIGN KEY (`nidn`) REFERENCES `data_dosen` (`nidn`);

--
-- Constraints for table `referensi_dosen`
--
ALTER TABLE `referensi_dosen`
  ADD CONSTRAINT `FK2` FOREIGN KEY (`nidn`) REFERENCES `data_dosen` (`nidn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
