/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : lab-usu

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 08/08/2021 01:44:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id_kelas` int NOT NULL,
  `nip_wali` int NOT NULL,
  `nm_kelas` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (21, 19860926, 'Kelas I');
INSERT INTO `kelas` VALUES (22, 19880217, 'Kelas II');
INSERT INTO `kelas` VALUES (23, 19840318, 'Kelas III');

-- ----------------------------
-- Table structure for logbook
-- ----------------------------
DROP TABLE IF EXISTS `logbook`;
CREATE TABLE `logbook`  (
  `id_logbook` int NOT NULL AUTO_INCREMENT,
  `no_urut` int NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jk_umur` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_spesimen` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sampel_ke` int NULL DEFAULT NULL,
  `diagnosa_followup` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `asal_faskes` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengirim` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_lab` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_ambil_sampel` date NULL DEFAULT NULL,
  `tgl_terima_sampel` date NULL DEFAULT NULL,
  `tgl_keluar_hasil` date NULL DEFAULT NULL,
  `hasil_pcr` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nik` bigint NULL DEFAULT NULL,
  `ct_value` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_logbook`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1009 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logbook
-- ----------------------------
INSERT INTO `logbook` VALUES (1, 1, 'otdra', 'L/21', 'NS', 1, '8', '8', '8', '8', '2021-07-30', '2021-07-30', '2021-07-30', '9', 9, '9', '9');
INSERT INTO `logbook` VALUES (7, 7, '7', '7', '7', 7, '7', '7', '7', '7', '0007-07-07', '0007-09-07', '0009-09-09', '9', 9, '9', '9');
INSERT INTO `logbook` VALUES (8, 12313, 'Otdra Billy', '21', 'NS', 1, 'Diagnosa', 'LAB USU', 'Hamdan', '1239/LAB/USU', '2021-07-31', '2021-08-01', '2021-08-02', 'Negatif', 1234567890123456, '28,9', 'Sehat');
INSERT INTO `logbook` VALUES (9, 100, 'jsdufcsd89cuscs', 'saodjoisau', 'kjsdnc', 0, 'jnscjn', 'kj', 'nkj', 'nk', '0977-09-09', '0007-07-07', '0007-06-07', '7', 7, '7', '7');
INSERT INTO `logbook` VALUES (10, 0, 'jk_umur', 'jenis_spesimen', 'sampel_ke', 0, 'asal_faskes', 'pengirim', 'id_lab', 'tgl_ambil_sampel', '0000-00-00', '0000-00-00', '0000-00-00', 'nik', 0, 'keterangan', '\r');
INSERT INTO `logbook` VALUES (1001, 0, '21', 'NS', '1', 0, 'LAB USU', 'Hamdan', '1239/LAB/USU', '7/31/2021', '0000-00-00', '0000-00-00', '0000-00-00', '1.23E+15', 0, '9\"', 'Sehat');
INSERT INTO `logbook` VALUES (1002, 0, '21', 'NS', '1', 0, 'LAB USU', 'Hamdan', '1239/LAB/USU', '7/31/2021', '0000-00-00', '0000-00-00', '0000-00-00', '1.23E+15', 0, '9\"', 'Sehat');
INSERT INTO `logbook` VALUES (1003, 0, '21', 'NS', '1', 0, 'LAB USU', 'Hamdan', '1239/LAB/USU', '7/31/2021', '0000-00-00', '0000-00-00', '0000-00-00', '1.23E+15', 0, '9\"', 'Sehat');
INSERT INTO `logbook` VALUES (1004, 0, '21', 'NS', '1', 0, 'LAB USU', 'Hamdan', '1239/LAB/USU', '7/31/2021', '0000-00-00', '0000-00-00', '0000-00-00', '1.23E+15', 0, '9\"', 'Sehat');
INSERT INTO `logbook` VALUES (1005, 0, 'jk_umur', 'jenis_spesimen', 'sampel_ke', 0, 'asal_faskes', 'pengirim', 'id_lab', 'tgl_ambil_sampel', '0000-00-00', '0000-00-00', '0000-00-00', 'nik', 0, 'keterangan', '\r');
INSERT INTO `logbook` VALUES (1006, 0, 'jk_umur', 'jenis_spesimen', 'sampel_ke', 0, 'asal_faskes', 'pengirim', 'id_lab', 'tgl_ambil_sampel', '0000-00-00', '0000-00-00', '0000-00-00', 'nik', 0, 'keterangan', '\r');
INSERT INTO `logbook` VALUES (1007, 0, 'jk_umur', 'jenis_spesimen', 'sampel_ke', 0, 'asal_faskes', 'pengirim', 'id_lab', 'tgl_ambil_sampel', '0000-00-00', '0000-00-00', '0000-00-00', 'nik', 0, 'keterangan', '\r');
INSERT INTO `logbook` VALUES (1008, 1012301, 'Farel', 'Laki/21', 'NS', 2, 'Diagnosa', 'Langkat', 'Hamdan', '21013', '2021-08-01', '2021-08-02', '2021-08-07', 'Negatif', 1207237112920018, '29,3', 'Sehat');

-- ----------------------------
-- Table structure for pasien
-- ----------------------------
DROP TABLE IF EXISTS `pasien`;
CREATE TABLE `pasien`  (
  `id_pasien` int NOT NULL AUTO_INCREMENT,
  `no` int NULL DEFAULT NULL,
  `nama` int NOT NULL,
  `umur` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `spesimen` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sampel` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `diagnosa` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profesi` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_ambil` date NULL DEFAULT NULL,
  `tgl_kirim` date NULL DEFAULT NULL,
  `rekam` int NULL DEFAULT NULL,
  `nik` int NULL DEFAULT NULL,
  `ket` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_pasien`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3346 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pasien
-- ----------------------------
INSERT INTO `pasien` VALUES (3245, NULL, 101, 'Ayu', 'Perempuan', 'Medan', '2012-02-17', 'Jl.Mawar', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pasien` VALUES (3246, NULL, 103, 'Dini', 'Perempuan', 'T.Tinggi', '2010-02-16', 'Jl.Selamat', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pasien` VALUES (3344, NULL, 102, 'Dita', 'Perempuan', 'Siantar', '2014-04-18', 'Jl.Melati', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pasien` VALUES (3345, 1, 0, 'L/23', 'NS', '1', 'DH', 'Dokter', '2021-07-30', '2021-07-30', 1213123124, 2147483647, 'Hamdan (NIK) - Teman Kantor');

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai`  (
  `id_pegawai` int NOT NULL,
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pegawai`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
INSERT INTO `pegawai` VALUES (11111, 'admin', 'admin', 'Admin', '081371451656', 'Jl.Pinang Baris');
INSERT INTO `pegawai` VALUES (22222, 'fadhil', 'fadhil', 'Fadhil Hilman', '082272166749', 'Jl. Setia Budi');
INSERT INTO `pegawai` VALUES (33333, 'aaa', 'aaa', 'Dewi	', '0823700075202', 'Jl. Tanjung Anom');

-- ----------------------------
-- Table structure for spp
-- ----------------------------
DROP TABLE IF EXISTS `spp`;
CREATE TABLE `spp`  (
  `id_spp` int NOT NULL,
  `nis` int NOT NULL,
  `bulan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int NOT NULL,
  PRIMARY KEY (`id_spp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of spp
-- ----------------------------
INSERT INTO `spp` VALUES (2222, 103, 'Oktober	', 200000);
INSERT INTO `spp` VALUES (2223, 102, 'November	', 200000);
INSERT INTO `spp` VALUES (2224, 101, 'September', 200000);

-- ----------------------------
-- Table structure for wali_kelas
-- ----------------------------
DROP TABLE IF EXISTS `wali_kelas`;
CREATE TABLE `wali_kelas`  (
  `id_wali` int NOT NULL,
  `nip` int NOT NULL,
  `nm_wali` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_wali`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wali_kelas
-- ----------------------------
INSERT INTO `wali_kelas` VALUES (1111, 19860926, 'Junister s.p.d,', '082272166749	', 'Jl.Amal');
INSERT INTO `wali_kelas` VALUES (1122, 19880217, 'Siti Aminah s.p.', '081371451696	', 'Jl.Srigunting');
INSERT INTO `wali_kelas` VALUES (1123, 19840318, 'Maimunah Hrp s.p.d	', '0823700022552	', 'Jl.Tj Anom');

SET FOREIGN_KEY_CHECKS = 1;
