-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Nov 2015 pada 14.40
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maintenes_lab`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ruang_asisten`
--
CREATE TABLE IF NOT EXISTS `ruang_asisten` (
`tanggal` date
,`id_komp` varchar(10)
,`spesifikasi` text
,`hdd` varchar(20)
,`ram` varchar(20)
,`id_ruang` varchar(10)
,`nama_ruang` varchar(20)
,`kondisi` varchar(10)
,`id_asisten` varchar(10)
,`id_tindakan` varchar(10)
,`nama_asisten` varchar(30)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ruang_kom`
--
CREATE TABLE IF NOT EXISTS `ruang_kom` (
`id_komp` varchar(10)
,`spesifikasi` text
,`hdd` varchar(20)
,`ram` varchar(20)
,`id_ruang` varchar(10)
,`nama_ruang` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ruang_maintenes`
--
CREATE TABLE IF NOT EXISTS `ruang_maintenes` (
`id_komp` varchar(10)
,`spesifikasi` text
,`hdd` varchar(20)
,`ram` varchar(20)
,`id_ruang` varchar(10)
,`nama_ruang` varchar(20)
,`kondisi` varchar(10)
,`id_asisten` varchar(10)
,`id_tindakan` varchar(10)
,`tanggal` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `ruang_tindakan`
--
CREATE TABLE IF NOT EXISTS `ruang_tindakan` (
`tanggal` date
,`id_komp` varchar(10)
,`spesifikasi` text
,`hdd` varchar(20)
,`ram` varchar(20)
,`id_ruang` varchar(10)
,`nama_ruang` varchar(20)
,`kondisi` varchar(10)
,`id_asisten` varchar(10)
,`id_tindakan` varchar(10)
,`nama_asisten` varchar(30)
,`tindakan` text
);
-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_asisten`
--

CREATE TABLE IF NOT EXISTS `tbl_asisten` (
  `id_asisten` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) DEFAULT NULL,
  `id_ruang` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_info_admin` (
  `id_admin` varchar(10) NOT NULL DEFAULT '',
  `nama_admin` varchar(30) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info_asisten`
--

CREATE TABLE IF NOT EXISTS `tbl_info_asisten` (
  `id_asisten` varchar(50) DEFAULT NULL,
  `nama_asisten` varchar(30) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komp`
--

CREATE TABLE IF NOT EXISTS `tbl_komp` (
  `id_komp` varchar(10) NOT NULL DEFAULT '',
  `spesifikasi` text,
  `hdd` varchar(20) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komp`
--

INSERT INTO `tbl_komp` (`id_komp`, `spesifikasi`, `hdd`, `ram`) VALUES
('apli1-1', 'test', NULL, NULL),
('apli1-2', 'coba', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_maintenes`
--

CREATE TABLE IF NOT EXISTS `tbl_maintenes` (
  `tanggal` date DEFAULT NULL,
  `id_asisten` varchar(10) DEFAULT NULL,
  `id_ruang` varchar(10) DEFAULT NULL,
  `kondisi` varchar(10) DEFAULT NULL,
  `id_tindakan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_maintenes`
--

INSERT INTO `tbl_maintenes` (`tanggal`, `id_asisten`, `id_ruang`, `kondisi`, `id_tindakan`) VALUES
('2015-11-02', NULL, 'apli 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ruang`
--

CREATE TABLE IF NOT EXISTS `tbl_ruang` (
  `id_ruang` varchar(10) NOT NULL DEFAULT '',
  `nama_ruang` varchar(20) DEFAULT NULL,
  `id_komp` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ruang`
--

INSERT INTO `tbl_ruang` (`id_ruang`, `nama_ruang`, `id_komp`) VALUES
('apli 1', 'aplikasi 1', 'apli1-1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tindakan`
--

CREATE TABLE IF NOT EXISTS `tbl_tindakan` (
  `id_tindakan` varchar(10) NOT NULL DEFAULT '',
  `tindakan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur untuk view `ruang_asisten`
--
DROP TABLE IF EXISTS `ruang_asisten`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_asisten` AS select `ruang_maintenes`.`tanggal` AS `tanggal`,`ruang_maintenes`.`id_komp` AS `id_komp`,`ruang_maintenes`.`spesifikasi` AS `spesifikasi`,`ruang_maintenes`.`hdd` AS `hdd`,`ruang_maintenes`.`ram` AS `ram`,`ruang_maintenes`.`id_ruang` AS `id_ruang`,`ruang_maintenes`.`nama_ruang` AS `nama_ruang`,`ruang_maintenes`.`kondisi` AS `kondisi`,`ruang_maintenes`.`id_asisten` AS `id_asisten`,`ruang_maintenes`.`id_tindakan` AS `id_tindakan`,`tbl_info_asisten`.`nama_asisten` AS `nama_asisten` from (`ruang_maintenes` left join `tbl_info_asisten` on((`ruang_maintenes`.`id_asisten` = `tbl_info_asisten`.`id_asisten`)));

-- --------------------------------------------------------

--
-- Struktur untuk view `ruang_kom`
--
DROP TABLE IF EXISTS `ruang_kom`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_kom` AS select `tbl_komp`.`id_komp` AS `id_komp`,`tbl_komp`.`spesifikasi` AS `spesifikasi`,`tbl_komp`.`hdd` AS `hdd`,`tbl_komp`.`ram` AS `ram`,`tbl_ruang`.`id_ruang` AS `id_ruang`,`tbl_ruang`.`nama_ruang` AS `nama_ruang` from (`tbl_komp` left join `tbl_ruang` on((`tbl_komp`.`id_komp` = `tbl_ruang`.`id_komp`)));

-- --------------------------------------------------------

--
-- Struktur untuk view `ruang_maintenes`
--
DROP TABLE IF EXISTS `ruang_maintenes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_maintenes` AS select `ruang_kom`.`id_komp` AS `id_komp`,`ruang_kom`.`spesifikasi` AS `spesifikasi`,`ruang_kom`.`hdd` AS `hdd`,`ruang_kom`.`ram` AS `ram`,`ruang_kom`.`id_ruang` AS `id_ruang`,`ruang_kom`.`nama_ruang` AS `nama_ruang`,`tbl_maintenes`.`kondisi` AS `kondisi`,`tbl_maintenes`.`id_asisten` AS `id_asisten`,`tbl_maintenes`.`id_tindakan` AS `id_tindakan`,`tbl_maintenes`.`tanggal` AS `tanggal` from (`ruang_kom` left join `tbl_maintenes` on((`ruang_kom`.`id_ruang` = `tbl_maintenes`.`id_ruang`)));

-- --------------------------------------------------------

--
-- Struktur untuk view `ruang_tindakan`
--
DROP TABLE IF EXISTS `ruang_tindakan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ruang_tindakan` AS select `ruang_asisten`.`tanggal` AS `tanggal`,`ruang_asisten`.`id_komp` AS `id_komp`,`ruang_asisten`.`spesifikasi` AS `spesifikasi`,`ruang_asisten`.`hdd` AS `hdd`,`ruang_asisten`.`ram` AS `ram`,`ruang_asisten`.`id_ruang` AS `id_ruang`,`ruang_asisten`.`nama_ruang` AS `nama_ruang`,`ruang_asisten`.`kondisi` AS `kondisi`,`ruang_asisten`.`id_asisten` AS `id_asisten`,`ruang_asisten`.`id_tindakan` AS `id_tindakan`,`ruang_asisten`.`nama_asisten` AS `nama_asisten`,`tbl_tindakan`.`tindakan` AS `tindakan` from (`ruang_asisten` left join `tbl_tindakan` on((`ruang_asisten`.`id_tindakan` = `tbl_tindakan`.`id_tindakan`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_asisten`
--
ALTER TABLE `tbl_asisten`
 ADD PRIMARY KEY (`id_asisten`,`id_ruang`);

--
-- Indexes for table `tbl_info_admin`
--
ALTER TABLE `tbl_info_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_komp`
--
ALTER TABLE `tbl_komp`
 ADD PRIMARY KEY (`id_komp`);

--
-- Indexes for table `tbl_maintenes`
--
ALTER TABLE `tbl_maintenes`
 ADD KEY `id_asisten` (`id_asisten`), ADD KEY `id_ruang` (`id_ruang`), ADD KEY `id_tindakan` (`id_tindakan`);

--
-- Indexes for table `tbl_ruang`
--
ALTER TABLE `tbl_ruang`
 ADD PRIMARY KEY (`id_ruang`,`id_komp`);

--
-- Indexes for table `tbl_tindakan`
--
ALTER TABLE `tbl_tindakan`
 ADD PRIMARY KEY (`id_tindakan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
