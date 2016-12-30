# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.6.21
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2015-12-05 11:49:08
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for maintenes
CREATE DATABASE IF NOT EXISTS `maintenes` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `maintenes`;


# Dumping structure for view maintenes.detail_komp
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `detail_komp` (
	`tgl` DATE NULL DEFAULT NULL,
	`id_ruang` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_pr` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_of` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`windows` VARCHAR(12) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`antivirus` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_web` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_office` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.detail_komputer
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `detail_komputer` (
	`id_ruang` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`nama_tehnisi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`alamat` TEXT NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`windows` VARCHAR(12) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`antivirus` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_web` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_office` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.komputer_software
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `komputer_software` (
	`id_ruang` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`windows` VARCHAR(12) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`antivirus` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_web` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_office` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.maintenes_komputer
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `maintenes_komputer` (
	`tanggal` DATE NULL DEFAULT NULL,
	`id_ruang` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`kondisi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`tindakan` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.maintenes_ruang
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `maintenes_ruang` (
	`tanggal` DATE NULL DEFAULT NULL,
	`id_ruang` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`kondisi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`tindakan` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.maintenes_soft
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `maintenes_soft` (
	`tgl` DATE NULL DEFAULT NULL,
	`id_ruang` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_pr` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_of` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`windows` VARCHAR(12) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`antivirus` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_web` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_office` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.maintenes_soft_ruang
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `maintenes_soft_ruang` (
	`tgl` DATE NULL DEFAULT NULL,
	`id_ruang` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_pr` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_of` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`windows` VARCHAR(12) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`antivirus` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_web` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_office` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.maintenes_soft_tehnisi
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `maintenes_soft_tehnisi` (
	`tgl` DATE NULL DEFAULT NULL,
	`id_ruang` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_pr` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ket_of` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`windows` VARCHAR(12) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`antivirus` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_web` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_office` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`nama_tehnisi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.maintenes_tehnisi
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `maintenes_tehnisi` (
	`tanggal` DATE NULL DEFAULT NULL,
	`id_ruang` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`kondisi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`tindakan` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`nama_tehnisi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.ruang_komputer
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `ruang_komputer` (
	`id_ruang` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.ruang_tehnisi
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `ruang_tehnisi` (
	`id_ruang` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`nama_tehnisi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`alamat` TEXT NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(10) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for view maintenes.software_komputer
# Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `software_komputer` (
	`id_ruang` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`id_komputer` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`spesifikasi` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`hdd` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`ram` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`windows` VARCHAR(12) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`antivirus` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_web` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`program_office` VARCHAR(30) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_tehnisi` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`nama_ruang` VARCHAR(20) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


# Dumping structure for table maintenes.tbl_admin
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_info_admin
CREATE TABLE IF NOT EXISTS `tbl_info_admin` (
  `id_admin` varchar(10) NOT NULL DEFAULT '',
  `nama_admin` varchar(30) DEFAULT NULL,
  `alamat` text,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_info_tehnisi
CREATE TABLE IF NOT EXISTS `tbl_info_tehnisi` (
  `id_tehnisi` varchar(10) NOT NULL DEFAULT '',
  `nama_tehnisi` varchar(30) DEFAULT NULL,
  `alamat` text,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_tehnisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_komputer
CREATE TABLE IF NOT EXISTS `tbl_komputer` (
  `id_ruang` varchar(10) NOT NULL DEFAULT '',
  `id_komputer` varchar(10) NOT NULL DEFAULT '',
  `spesifikasi` varchar(30) DEFAULT NULL,
  `hdd` varchar(20) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_komputer`),
  KEY `id_ruang` (`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_maintenes
CREATE TABLE IF NOT EXISTS `tbl_maintenes` (
  `tanggal` date DEFAULT NULL,
  `id_ruang` varchar(10) DEFAULT NULL,
  `id_komputer` varchar(10) DEFAULT NULL,
  `kondisi` varchar(30) DEFAULT NULL,
  `tindakan` varchar(50) DEFAULT NULL,
  KEY `id_ruang` (`id_ruang`),
  KEY `id_komputer` (`id_komputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_maintenes_soft
CREATE TABLE IF NOT EXISTS `tbl_maintenes_soft` (
  `tgl` date DEFAULT NULL,
  `id_ruang` varchar(10) DEFAULT NULL,
  `id_komputer` varchar(10) DEFAULT NULL,
  `ket` varchar(10) DEFAULT NULL,
  `ket_pr` varchar(10) DEFAULT NULL,
  `ket_of` varchar(10) DEFAULT NULL,
  KEY `id_ruang` (`id_ruang`),
  KEY `id_komputer` (`id_komputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_ruang
CREATE TABLE IF NOT EXISTS `tbl_ruang` (
  `id_ruang` varchar(10) NOT NULL DEFAULT '',
  `id_tehnisi` varchar(10) NOT NULL DEFAULT '',
  `nama_ruang` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_tehnisi`,`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_software
CREATE TABLE IF NOT EXISTS `tbl_software` (
  `id_komputer` varchar(10) NOT NULL DEFAULT '',
  `windows` varchar(12) DEFAULT NULL,
  `antivirus` varchar(20) DEFAULT NULL,
  `program_web` varchar(20) DEFAULT NULL,
  `program_office` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_komputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_tehnisi
CREATE TABLE IF NOT EXISTS `tbl_tehnisi` (
  `id_tehnisi` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_tehnisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.tbl_tindakan
CREATE TABLE IF NOT EXISTS `tbl_tindakan` (
  `id_tindakan` varchar(10) NOT NULL DEFAULT '',
  `tindakan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tindakan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for table maintenes.test_komputer
CREATE TABLE IF NOT EXISTS `test_komputer` (
  `id_ruang` varchar(10) NOT NULL DEFAULT '',
  `nama_ruang` varchar(20) DEFAULT NULL,
  `id_komputer` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_ruang`),
  KEY `id_komputer` (`id_komputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Data exporting was unselected.


# Dumping structure for view maintenes.detail_komp
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `detail_komp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_komp` AS select `maintenes_soft_ruang`.`tgl` AS `tgl`,`maintenes_soft_ruang`.`id_ruang` AS `id_ruang`,`maintenes_soft_ruang`.`id_komputer` AS `id_komputer`,`maintenes_soft_ruang`.`ket` AS `ket`,`maintenes_soft_ruang`.`ket_pr` AS `ket_pr`,`maintenes_soft_ruang`.`ket_of` AS `ket_of`,`maintenes_soft_ruang`.`windows` AS `windows`,`maintenes_soft_ruang`.`antivirus` AS `antivirus`,`maintenes_soft_ruang`.`program_web` AS `program_web`,`maintenes_soft_ruang`.`program_office` AS `program_office`,`maintenes_soft_ruang`.`id_tehnisi` AS `id_tehnisi`,`maintenes_soft_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram` from (`maintenes_soft_ruang` join `tbl_komputer`) where (`maintenes_soft_ruang`.`id_komputer` = `tbl_komputer`.`id_komputer`);


# Dumping structure for view maintenes.detail_komputer
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `detail_komputer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_komputer` AS select `ruang_tehnisi`.`id_ruang` AS `id_ruang`,`ruang_tehnisi`.`id_tehnisi` AS `id_tehnisi`,`ruang_tehnisi`.`nama_ruang` AS `nama_ruang`,`ruang_tehnisi`.`id_komputer` AS `id_komputer`,`ruang_tehnisi`.`spesifikasi` AS `spesifikasi`,`ruang_tehnisi`.`hdd` AS `hdd`,`ruang_tehnisi`.`ram` AS `ram`,`ruang_tehnisi`.`nama_tehnisi` AS `nama_tehnisi`,`ruang_tehnisi`.`alamat` AS `alamat`,`ruang_tehnisi`.`password` AS `password`,`komputer_software`.`windows` AS `windows`,`komputer_software`.`antivirus` AS `antivirus`,`komputer_software`.`program_web` AS `program_web`,`komputer_software`.`program_office` AS `program_office` from (`ruang_tehnisi` join `komputer_software`) where (`ruang_tehnisi`.`id_ruang` = `komputer_software`.`id_ruang`);


# Dumping structure for view maintenes.komputer_software
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `komputer_software`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `komputer_software` AS select `tbl_komputer`.`id_ruang` AS `id_ruang`,`tbl_komputer`.`id_komputer` AS `id_komputer`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram`,`tbl_software`.`windows` AS `windows`,`tbl_software`.`antivirus` AS `antivirus`,`tbl_software`.`program_web` AS `program_web`,`tbl_software`.`program_office` AS `program_office` from (`tbl_komputer` join `tbl_software`) where (`tbl_komputer`.`id_komputer` = `tbl_software`.`id_komputer`);


# Dumping structure for view maintenes.maintenes_komputer
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `maintenes_komputer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_komputer` AS select `tbl_maintenes`.`tanggal` AS `tanggal`,`tbl_maintenes`.`id_ruang` AS `id_ruang`,`tbl_maintenes`.`id_komputer` AS `id_komputer`,`tbl_maintenes`.`kondisi` AS `kondisi`,`tbl_maintenes`.`tindakan` AS `tindakan`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram` from (`tbl_maintenes` join `tbl_komputer`) where (`tbl_maintenes`.`id_komputer` = `tbl_komputer`.`id_komputer`);


# Dumping structure for view maintenes.maintenes_ruang
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `maintenes_ruang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_ruang` AS select `maintenes_komputer`.`tanggal` AS `tanggal`,`maintenes_komputer`.`id_ruang` AS `id_ruang`,`maintenes_komputer`.`id_komputer` AS `id_komputer`,`maintenes_komputer`.`kondisi` AS `kondisi`,`maintenes_komputer`.`tindakan` AS `tindakan`,`maintenes_komputer`.`spesifikasi` AS `spesifikasi`,`maintenes_komputer`.`hdd` AS `hdd`,`maintenes_komputer`.`ram` AS `ram`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang` from (`maintenes_komputer` join `tbl_ruang`) where (`maintenes_komputer`.`id_ruang` = `tbl_ruang`.`id_ruang`);


# Dumping structure for view maintenes.maintenes_soft
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `maintenes_soft`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_soft` AS select `tbl_maintenes_soft`.`tgl` AS `tgl`,`tbl_maintenes_soft`.`id_ruang` AS `id_ruang`,`tbl_maintenes_soft`.`id_komputer` AS `id_komputer`,`tbl_maintenes_soft`.`ket` AS `ket`,`tbl_maintenes_soft`.`ket_pr` AS `ket_pr`,`tbl_maintenes_soft`.`ket_of` AS `ket_of`,`tbl_software`.`windows` AS `windows`,`tbl_software`.`antivirus` AS `antivirus`,`tbl_software`.`program_web` AS `program_web`,`tbl_software`.`program_office` AS `program_office` from (`tbl_maintenes_soft` join `tbl_software`) where (`tbl_maintenes_soft`.`id_komputer` = `tbl_software`.`id_komputer`);


# Dumping structure for view maintenes.maintenes_soft_ruang
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `maintenes_soft_ruang`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_soft_ruang` AS select `maintenes_soft`.`tgl` AS `tgl`,`maintenes_soft`.`id_ruang` AS `id_ruang`,`maintenes_soft`.`id_komputer` AS `id_komputer`,`maintenes_soft`.`ket` AS `ket`,`maintenes_soft`.`ket_pr` AS `ket_pr`,`maintenes_soft`.`ket_of` AS `ket_of`,`maintenes_soft`.`windows` AS `windows`,`maintenes_soft`.`antivirus` AS `antivirus`,`maintenes_soft`.`program_web` AS `program_web`,`maintenes_soft`.`program_office` AS `program_office`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang` from (`maintenes_soft` join `tbl_ruang`) where (`maintenes_soft`.`id_ruang` = `tbl_ruang`.`id_ruang`);


# Dumping structure for view maintenes.maintenes_soft_tehnisi
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `maintenes_soft_tehnisi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_soft_tehnisi` AS select `maintenes_soft_ruang`.`tgl` AS `tgl`,`maintenes_soft_ruang`.`id_ruang` AS `id_ruang`,`maintenes_soft_ruang`.`id_komputer` AS `id_komputer`,`maintenes_soft_ruang`.`ket` AS `ket`,`maintenes_soft_ruang`.`ket_pr` AS `ket_pr`,`maintenes_soft_ruang`.`ket_of` AS `ket_of`,`maintenes_soft_ruang`.`windows` AS `windows`,`maintenes_soft_ruang`.`antivirus` AS `antivirus`,`maintenes_soft_ruang`.`program_web` AS `program_web`,`maintenes_soft_ruang`.`program_office` AS `program_office`,`maintenes_soft_ruang`.`id_tehnisi` AS `id_tehnisi`,`maintenes_soft_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_info_tehnisi`.`nama_tehnisi` AS `nama_tehnisi` from (`maintenes_soft_ruang` join `tbl_info_tehnisi`) where (`maintenes_soft_ruang`.`id_tehnisi` = `tbl_info_tehnisi`.`id_tehnisi`);


# Dumping structure for view maintenes.maintenes_tehnisi
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `maintenes_tehnisi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `maintenes_tehnisi` AS select `maintenes_ruang`.`tanggal` AS `tanggal`,`maintenes_ruang`.`id_ruang` AS `id_ruang`,`maintenes_ruang`.`id_komputer` AS `id_komputer`,`maintenes_ruang`.`kondisi` AS `kondisi`,`maintenes_ruang`.`tindakan` AS `tindakan`,`maintenes_ruang`.`spesifikasi` AS `spesifikasi`,`maintenes_ruang`.`hdd` AS `hdd`,`maintenes_ruang`.`ram` AS `ram`,`maintenes_ruang`.`id_tehnisi` AS `id_tehnisi`,`maintenes_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_info_tehnisi`.`nama_tehnisi` AS `nama_tehnisi` from (`maintenes_ruang` join `tbl_info_tehnisi`) where (`maintenes_ruang`.`id_tehnisi` = `tbl_info_tehnisi`.`id_tehnisi`);


# Dumping structure for view maintenes.ruang_komputer
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `ruang_komputer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_komputer` AS select `tbl_ruang`.`id_ruang` AS `id_ruang`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang`,`tbl_komputer`.`id_komputer` AS `id_komputer`,`tbl_komputer`.`spesifikasi` AS `spesifikasi`,`tbl_komputer`.`hdd` AS `hdd`,`tbl_komputer`.`ram` AS `ram` from (`tbl_ruang` left join `tbl_komputer` on((`tbl_ruang`.`id_ruang` = `tbl_komputer`.`id_ruang`)));


# Dumping structure for view maintenes.ruang_tehnisi
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `ruang_tehnisi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_tehnisi` AS select `ruang_komputer`.`id_ruang` AS `id_ruang`,`ruang_komputer`.`id_tehnisi` AS `id_tehnisi`,`ruang_komputer`.`nama_ruang` AS `nama_ruang`,`ruang_komputer`.`id_komputer` AS `id_komputer`,`ruang_komputer`.`spesifikasi` AS `spesifikasi`,`ruang_komputer`.`hdd` AS `hdd`,`ruang_komputer`.`ram` AS `ram`,`tbl_info_tehnisi`.`nama_tehnisi` AS `nama_tehnisi`,`tbl_info_tehnisi`.`alamat` AS `alamat`,`tbl_info_tehnisi`.`password` AS `password` from (`ruang_komputer` left join `tbl_info_tehnisi` on((`ruang_komputer`.`id_tehnisi` = `tbl_info_tehnisi`.`id_tehnisi`)));


# Dumping structure for view maintenes.software_komputer
# Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `software_komputer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `software_komputer` AS select `komputer_software`.`id_ruang` AS `id_ruang`,`komputer_software`.`id_komputer` AS `id_komputer`,`komputer_software`.`spesifikasi` AS `spesifikasi`,`komputer_software`.`hdd` AS `hdd`,`komputer_software`.`ram` AS `ram`,`komputer_software`.`windows` AS `windows`,`komputer_software`.`antivirus` AS `antivirus`,`komputer_software`.`program_web` AS `program_web`,`komputer_software`.`program_office` AS `program_office`,`tbl_ruang`.`id_tehnisi` AS `id_tehnisi`,`tbl_ruang`.`nama_ruang` AS `nama_ruang` from (`komputer_software` join `tbl_ruang`) where (`komputer_software`.`id_ruang` = `tbl_ruang`.`id_ruang`);
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
