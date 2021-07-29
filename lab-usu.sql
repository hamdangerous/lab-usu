-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2020 at 09:49 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(20) NOT NULL,
  `nip_wali` int(20) NOT NULL,
  `nm_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nip_wali`, `nm_kelas`) VALUES
(21, 19860926, 'Kelas I'),
(22, 19880217, 'Kelas II'),
(23, 19840318, 'Kelas III');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `username`, `password`, `nama`, `no_hp`, `alamat`) VALUES
(11111, 'Cinta', 'Cinta', 'Irwansyah	', '081371451656', 'Jl.Pinang Baris'),
(22222, 'Bunga	', 'Bunga	', 'Anisa Putri	', '082272166749', 'Jl. Setia Budi'),
(33333, 'Mawar	', 'Mawar	', 'Dewi	', '0823700075202', 'Jl. Tanjung Anom');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(20) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `j_kelamin` varchar(20) NOT NULL,
  `tmpt_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama`, `j_kelamin`, `tmpt_lahir`, `tgl_lahir`, `alamat`) VALUES
(3245, 101, 'Ayu', 'Perempuan', 'Medan', '2012-02-17', 'Jl.Mawar'),
(3246, 103, 'Dini', 'Perempuan', 'T.Tinggi', '2010-02-16', 'Jl.Selamat'),
(3344, 102, 'Dita', 'Perempuan', 'Siantar', '2014-04-18', 'Jl.Melati');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(20) NOT NULL,
  `nis` int(20) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `nis`, `bulan`, `jumlah`) VALUES
(2222, 103, 'Oktober	', 200000),
(2223, 102, 'November	', 200000),
(2224, 101, 'September', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `id_spp` int(20) NOT NULL,
  `jmlh_bayar` varchar(20) NOT NULL,
  `tunggakan` varchar(20) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_spp`, `jmlh_bayar`, `tunggakan`, `tgl_transaksi`) VALUES
(22221, 2224, '200000', 'LUNAS', '2019-09-17'),
(22222, 2223, '100000', '100000', '2019-11-12'),
(22223, 2222, '200000', 'LUNAS', '2019-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_wali` int(20) NOT NULL,
  `nip` int(20) NOT NULL,
  `nm_wali` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_wali`, `nip`, `nm_wali`, `no_hp`, `alamat`) VALUES
(1111, 19860926, 'Junister s.p.d,', '082272166749	', 'Jl.Amal'),
(1122, 19880217, 'Siti Aminah s.p.', '081371451696	', 'Jl.Srigunting'),
(1123, 19840318, 'Maimunah Hrp s.p.d	', '0823700022552	', 'Jl.Tj Anom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_wali`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
