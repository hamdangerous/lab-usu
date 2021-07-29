/*
 Navicat Premium Data Transfer

 Source Server         : nama
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : lab-usu

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 28/07/2021 14:03:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id_kelas` int(20) NOT NULL,
  `nip_wali` int(20) NOT NULL,
  `nm_kelas` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (21, 19860926, 'Kelas I');
INSERT INTO `kelas` VALUES (22, 19880217, 'Kelas II');
INSERT INTO `kelas` VALUES (23, 19840318, 'Kelas III');

-- ----------------------------
-- Table structure for pasien
-- ----------------------------
DROP TABLE IF EXISTS `pasien`;
CREATE TABLE `pasien`  (
  `id_pasien` int(20) NOT NULL AUTO_INCREMENT,
  `no` int(11) NULL DEFAULT NULL,
  `nama` int(20) NOT NULL,
  `umur` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `spesimen` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sampel` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `diagnosa` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profesi` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_ambil` date NULL DEFAULT NULL,
  `tgl_kirim` date NULL DEFAULT NULL,
  `rekam` int(20) NULL DEFAULT NULL,
  `nik` int(16) NULL DEFAULT NULL,
  `ket` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_pasien`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3345 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pasien
-- ----------------------------
INSERT INTO `pasien` VALUES (3245, NULL, 101, 'Ayu', 'Perempuan', 'Medan', '2012-02-17', 'Jl.Mawar', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pasien` VALUES (3246, NULL, 103, 'Dini', 'Perempuan', 'T.Tinggi', '2010-02-16', 'Jl.Selamat', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `pasien` VALUES (3344, NULL, 102, 'Dita', 'Perempuan', 'Siantar', '2014-04-18', 'Jl.Melati', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai`  (
  `id_pegawai` int(20) NOT NULL,
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pegawai`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
  `id_spp` int(20) NOT NULL,
  `nis` int(20) NOT NULL,
  `bulan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(20) NOT NULL,
  PRIMARY KEY (`id_spp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spp
-- ----------------------------
INSERT INTO `spp` VALUES (2222, 103, 'Oktober	', 200000);
INSERT INTO `spp` VALUES (2223, 102, 'November	', 200000);
INSERT INTO `spp` VALUES (2224, 101, 'September', 200000);

-- ----------------------------
-- Table structure for transaksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi`  (
  `id_transaksi` int(20) NOT NULL,
  `id_spp` int(20) NOT NULL,
  `jmlh_bayar` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tunggakan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi
-- ----------------------------
INSERT INTO `transaksi` VALUES (22221, 2224, '200000', 'LUNAS', '2019-09-17');
INSERT INTO `transaksi` VALUES (22222, 2223, '100000', '100000', '2019-11-12');
INSERT INTO `transaksi` VALUES (22223, 2222, '200000', 'LUNAS', '2019-10-11');

-- ----------------------------
-- Table structure for wali_kelas
-- ----------------------------
DROP TABLE IF EXISTS `wali_kelas`;
CREATE TABLE `wali_kelas`  (
  `id_wali` int(20) NOT NULL,
  `nip` int(20) NOT NULL,
  `nm_wali` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_wali`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wali_kelas
-- ----------------------------
INSERT INTO `wali_kelas` VALUES (1111, 19860926, 'Junister s.p.d,', '082272166749	', 'Jl.Amal');
INSERT INTO `wali_kelas` VALUES (1122, 19880217, 'Siti Aminah s.p.', '081371451696	', 'Jl.Srigunting');
INSERT INTO `wali_kelas` VALUES (1123, 19840318, 'Maimunah Hrp s.p.d	', '0823700022552	', 'Jl.Tj Anom');

SET FOREIGN_KEY_CHECKS = 1;
