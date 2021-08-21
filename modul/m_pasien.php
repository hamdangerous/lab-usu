<?php
error_reporting(0);
session_start();

if (!$_SESSION[login]) header('location:index.php');
require_once '../config/koneksi.php';

$d = $_POST;
$aksi = $d['aksi'];
$data = '';

if ($aksi == 'input') {
    $q = "INSERT INTO pasien (no_urut,nama,umur,jenis_spesimen,sampel_ke,diagnosa_followuo,profesi,tgl_ambil_sampel,tgl_kirim_sampel,rekam,nik,keterangan) values('$d[no_urut]','$d[nama]','$d[umur]','$d[jenis_spesimen]','$d[sampel_ke]','$d[diagnosa_followuo]','$d[profesi]','$d[tgl_ambil_sampel]','$d[tgl_kirim_sampel]','$d[rekam]','$d[nik]','$d[keterangan]')";
    $sql = mysqli_query($con, $q);
    if ($sql) {
        $error = 0;
    } else {
        $error = 1;
    }
    $json = array("error" => $error);
    echo json_encode($json);
} else if ($aksi == 'delete') {
    $q = "DELETE FROM pasien WHERE id_pasien = '$d[id]'";
    $sql = mysqli_query($con, $q);
    echo $q;
    if (!$sql) {
        echo "a";
    }
} else if ($aksi == 'get') {
    if ($d[id]) {
        $q = "SELECT * FROM pasien WHERE id_pasien = '$d[id]'";
        $sql = mysqli_query($con, $q);
        if ($sql) {
            $data = mysqli_fetch_object($sql);
            $error = 0;
        } else {
            $error = 1;
            $data = '';
        }
        $json = array("error" => $error, "data" => $data);
        echo json_encode($json);
    }
} else if ($aksi == 'update') {
    $q = "UPDATE pasien SET id_pasien = '$d[id_pasien]', no_urut = '$d[no_urut]', nama = '$d[nama]', umur = '$d[umur]', jenis_spesimen = '$d[jenis_spesimen]', sampel_ke = '$d[sampel_ke]', diagnosa_followuo = '$d[diagnosa_followuo]', profesi = '$d[profesi]', tgl_ambil_sampel = '$d[tgl_ambil_sampel]', tgl_kirim_sampel = '$d[tgl_kirim_sampel]', rekam = '$d[rekam]', nik = '$d[nik]', keterangan = '$d[keterangan]' WHERE id_pasien = '$d[id]'";
    $sql = mysqli_query($con, $q);
    if ($sql) {
        $error = 0;
    } else {
        $error = 1;
    }
    $json = array("error" => $error, "data" => $data);
    echo json_encode($json);
}
