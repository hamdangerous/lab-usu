-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2021 at 03:55 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab-usu`
--

-- --------------------------------------------------------

--
-- Table structure for table `faskes`
--

CREATE TABLE `faskes` (
  `id_faskes` int(20) NOT NULL,
  `nama_faskes` varchar(50) DEFAULT NULL,
  `informasi` varchar(50) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `tipe_file` varchar(50) DEFAULT NULL,
  `ukuran` int(50) DEFAULT NULL,
  `tgl_upload` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faskes`
--

INSERT INTO `faskes` (`id_faskes`, `nama_faskes`, `informasi`, `file`, `tipe_file`, `ukuran`, `tgl_upload`) VALUES
(21, 'Puskesmas Suka Maju', 'revisi', '04-04-2020-00.01.57(3).pdf', 'application/pdf', 278045, '2021-08-12'),
(22, 'Puskesmas Suka Mundur', 'fiks', '04-04-2020-00.01.57(3).csv', 'application/csv', 278045, '2021-08-07'),
(23, 'Puskesmas Suka Ati', 'ok', '04-04-2020-00.01.57(3).pdf', 'application/pdf', 278045, '2021-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(20) NOT NULL,
  `no` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `umur` varchar(20) DEFAULT NULL,
  `spesimen` varchar(20) DEFAULT NULL,
  `sampel` varchar(20) DEFAULT NULL,
  `diagnosa` varchar(55) DEFAULT NULL,
  `profesi` varchar(55) DEFAULT NULL,
  `tgl_ambil` date DEFAULT NULL,
  `tgl_kirim` date DEFAULT NULL,
  `rekam` int(20) DEFAULT NULL,
  `nik` int(16) DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `no`, `nama`, `umur`, `spesimen`, `sampel`, `diagnosa`, `profesi`, `tgl_ambil`, `tgl_kirim`, `rekam`, `nik`, `ket`) VALUES
(12, 12, '12', '12', '12', '12', '12', '12', '2021-07-27', '2021-07-26', 12, 12, '12'),
(14, 14, '14', '14', '14', '14', '14', '14', '2021-07-01', '2021-07-30', 14, 14, '14'),
(2323, 2323, '2323', '2323', '2323', '2323', '2323', '2323', '2021-07-01', '2021-07-08', 2323, 2323, '2323'),
(3246, 13, '7', 'Zello', 'LK/10', '2', 'dh', 'Kucing', '2021-11-01', '2021-02-28', 12, 12, 'nafsu makan'),
(3345, 1919, '1919', '1919', '1919', '1919', '1919', '1919', '2021-07-24', '2021-07-31', 1919, 1919, '1919'),
(12121, 123, '101', 'Ayu', 'Perempuan', 'Medan', '2012-02-17', 'Jl.Mawar', '2021-06-02', '2021-07-30', 1, 1, 'okes'),
(12122, 77, 'Hamdan', 'LK/24', 'DH', '2', 'DH', 'Programmer', '2021-07-01', '2021-07-03', 1232412, 12324214, 'Dekat dengan zello'),
(12123, 12, 'dada', 'dada', 'dada', 'dada', 'dada', 'dada', '2021-07-01', '2021-07-02', 12, 12, 'dada'),
(12124, 1235, 'didi', 'didi', 'didi', 'didi', 'didi', 'didi', '2021-07-01', '2021-07-03', 12, 12, 'didi'),
(12125, 1009283, 'dudu', 'dudu', 'dudu', 'dudu', 'dudu', 'dudu', '2021-07-01', '2021-07-03', 12, 12, 'dudu'),
(12126, 123, 'dede adada adad', 'dede adada adad', 'dede adada adad', 'dede adada adad', 'dede adada adad', 'dede adada adad', '2021-07-01', '2021-07-03', 12345, 12345, 'dede adada adad'),
(12127, 9009, '9009', '9009', '9009', '9009', '9009', '9009', '2021-07-01', '2021-07-03', 9009, 9009, '9009'),
(12128, 123, 'adidas', 'adidas', 'adidas', '4', 'adidas', 'adidas', '2021-08-05', '2021-08-21', 7, 8, 'adidas');

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
(23, 'ok', 'ok', 'ok', '12', 'ok'),
(11111, 'admin', 'admin', 'Admin', '081371451656', 'Jl.Pinang Baris'),
(22222, 'fadhil', 'fadhil', 'Fadhil Hilman', '082272166749', 'Jl. Setia Budi'),
(33333, 'aaa', 'aaa', 'Dewi	', '0823700075202', 'Jl. Tanjung Anom');

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
-- Indexes for table `faskes`
--
ALTER TABLE `faskes`
  ADD PRIMARY KEY (`id_faskes`) USING BTREE;

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`) USING BTREE;

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

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

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
