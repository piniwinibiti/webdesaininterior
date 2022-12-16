-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for webdesaininterior
CREATE DATABASE IF NOT EXISTS `webdesaininterior` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `webdesaininterior`;

-- Dumping structure for table webdesaininterior.akun
CREATE TABLE IF NOT EXISTS `akun` (
  `id_akun` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` longtext,
  `profile_pict` longtext,
  PRIMARY KEY (`id_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.alumni
CREATE TABLE IF NOT EXISTS `alumni` (
  `id_alumni` varchar(50) NOT NULL,
  `nama_alumni` varchar(50) DEFAULT NULL,
  `angkatan` varchar(50) DEFAULT NULL,
  `testimoni` text,
  `foto` text,
  PRIMARY KEY (`id_alumni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` varchar(10) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `tgl_kirim` date DEFAULT NULL,
  `url_slug` text,
  `isi` longtext,
  `sampul` text,
  PRIMARY KEY (`id_berita`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.data_dosen
CREATE TABLE IF NOT EXISTS `data_dosen` (
  `nidn` int(10) NOT NULL,
  `nama_dosen` varchar(50) DEFAULT NULL,
  `keahlian` text,
  `kontak` text,
  `alamat` varchar(50) DEFAULT NULL,
  `foto` text,
  PRIMARY KEY (`nidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.fakta
CREATE TABLE IF NOT EXISTS `fakta` (
  `id_fakta` varchar(50) NOT NULL DEFAULT '',
  `mahasiswa_aktif` varchar(50) DEFAULT NULL,
  `lulusan` varchar(50) DEFAULT NULL,
  `dosen_unggulan` varchar(50) DEFAULT NULL,
  `mata_kuliah` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_fakta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.galeri
CREATE TABLE IF NOT EXISTS `galeri` (
  `id_galeri` varchar(50) NOT NULL,
  `id_kategori` varchar(50) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `foto` text,
  PRIMARY KEY (`id_galeri`),
  KEY `FK_galeri_kategori` (`id_kategori`),
  CONSTRAINT `FK_galeri_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` varchar(50) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.kurikulum
CREATE TABLE IF NOT EXISTS `kurikulum` (
  `id_kurikulum` varchar(50) NOT NULL,
  `data_kurikulum` longtext,
  PRIMARY KEY (`id_kurikulum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.organisasi
CREATE TABLE IF NOT EXISTS `organisasi` (
  `id_struktur` varchar(50) NOT NULL,
  `data_struktur` text,
  PRIMARY KEY (`id_struktur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.pendidikan_dosen
CREATE TABLE IF NOT EXISTS `pendidikan_dosen` (
  `nidn` int(10) DEFAULT NULL,
  `s1` varchar(70) DEFAULT NULL,
  `s2` varchar(70) DEFAULT NULL,
  `s3` varchar(70) DEFAULT NULL,
  KEY `FK__data_dosen` (`nidn`),
  CONSTRAINT `FK__data_dosen` FOREIGN KEY (`nidn`) REFERENCES `data_dosen` (`nidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.prestasi
CREATE TABLE IF NOT EXISTS `prestasi` (
  `id_prestasi` varchar(10) NOT NULL,
  `nrp` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `prestasi` varchar(500) DEFAULT NULL,
  `tingkat` varchar(500) DEFAULT NULL,
  `nama_kegiatan` longtext,
  `tahun` date DEFAULT NULL,
  `url_slug` text,
  `sampul` text,
  PRIMARY KEY (`id_prestasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.publikasi_dosen
CREATE TABLE IF NOT EXISTS `publikasi_dosen` (
  `nidn` int(10) DEFAULT NULL,
  `data_publikasi` longtext,
  KEY `FK3` (`nidn`),
  CONSTRAINT `FK3` FOREIGN KEY (`nidn`) REFERENCES `data_dosen` (`nidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.referensi_dosen
CREATE TABLE IF NOT EXISTS `referensi_dosen` (
  `nidn` int(11) DEFAULT NULL,
  `google_scholar` varchar(1000) DEFAULT NULL,
  `shinta` varchar(1000) DEFAULT NULL,
  `scopus` varchar(1000) DEFAULT NULL,
  KEY `FK2` (`nidn`),
  CONSTRAINT `FK2` FOREIGN KEY (`nidn`) REFERENCES `data_dosen` (`nidn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.tentang
CREATE TABLE IF NOT EXISTS `tentang` (
  `informasi_umum` text,
  `foto_sampul` text,
  `visi` text,
  `misi` text,
  `tujuan` text,
  `sasaran` text,
  `akreditasi` text,
  `strategi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table webdesaininterior.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for view webdesaininterior.vdosen
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vdosen` (
	`nidn` INT(10) NOT NULL,
	`nama_dosen` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`keahlian` TEXT NULL COLLATE 'latin1_swedish_ci',
	`kontak` TEXT NULL COLLATE 'latin1_swedish_ci',
	`alamat` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`s1` VARCHAR(70) NULL COLLATE 'latin1_swedish_ci',
	`s2` VARCHAR(70) NULL COLLATE 'latin1_swedish_ci',
	`s3` VARCHAR(70) NULL COLLATE 'latin1_swedish_ci',
	`data_publikasi` LONGTEXT NULL COLLATE 'latin1_swedish_ci',
	`google_scholar` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`shinta` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`scopus` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`foto` TEXT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view webdesaininterior.vgaleri
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vgaleri` (
	`id_galeri` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_kategori` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`nama_kategori` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`judul` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`deskripsi` TEXT NULL COLLATE 'latin1_swedish_ci',
	`foto` TEXT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view webdesaininterior.vdosen
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vdosen`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vdosen` AS SELECT data_dosen.nidn, data_dosen.nama_dosen, data_dosen.keahlian, data_dosen.kontak, data_dosen.alamat, pendidikan_dosen.s1, pendidikan_dosen.s2, pendidikan_dosen.s3, publikasi_dosen.data_publikasi, referensi_dosen.google_scholar, referensi_dosen.shinta, referensi_dosen.scopus, data_dosen.foto FROM data_dosen INNER JOIN pendidikan_dosen ON data_dosen.nidn = pendidikan_dosen.nidn INNER JOIN publikasi_dosen ON publikasi_dosen.nidn = data_dosen.nidn INNER JOIN referensi_dosen ON data_dosen.nidn = referensi_dosen.nidn GROUP BY data_dosen.nidn ORDER BY data_dosen.nama_dosen ASC ;

-- Dumping structure for view webdesaininterior.vgaleri
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vgaleri`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vgaleri` AS SELECT galeri.id_galeri, galeri.id_kategori, kategori.nama_kategori, galeri.judul, galeri.deskripsi, galeri.foto FROM galeri INNER JOIN kategori ON galeri.id_kategori = kategori.id_kategori ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
