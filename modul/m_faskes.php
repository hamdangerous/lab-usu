<?php
session_start();
error_reporting(0);

if (!$_SESSION[login]) header('location:index.php');
require_once '../config/koneksi.php';

$d = $_POST;
$aksi = $d['aksi'];
$data = '';

if ($aksi == 'input') {
    $q = "INSERT INTO faskes (id_faskes,no_urut,nama,jk_umur,jenis_spesimen,sampel_ke,diagnosa_followup,profesi,tgl_ambil_sampel,tgl_kirim_sampel,nik,keterangan) values('$d[id_faskes]','$d[no_urut]','$d[nama]','$d[jk_umur]','$d[jenis_spesimen]','$d[sampel_ke]','$d[diagnosa_followup]','$d[profesi]','$d[tgl_ambil_sampel]','$d[tgl_kirim_sampel]','$d[rekam]','$d[nik]','$d[keterangan]')";
    $sql = mysqli_query($con, $q);
    if ($sql) {
        $error = 0;
    } else {
        $error = 1;
    }
    $json = array("error" => $error);
    echo json_encode($json);
} else if ($aksi == 'delete') {
    $q = "DELETE FROM faskes WHERE id_faskes = '$d[id]'";
    $sql = mysqli_query($con, $q);
    echo $q;
    if (!$sql) {
        echo "a";
    }
} else if ($aksi == 'delete') {
        $q = "DELETE FROM faskes WHERE id_faskes = '$d[id]'";
        $sql = mysqli_query($con, $q);
        echo $q;
        if (!$sql) {
            echo "a";
    }
} else if ($aksi == 'get') {
    if ($d[id]) {
        $q = "SELECT * FROM faskes WHERE id_faskes = '$d[id]'";
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
        $q = "UPDATE faskes SET 
        -- id_faskes = '$d[id_faskes]',
        no_urut = '$d[no_urut]',
        nama = '$d[nama]',
        jk_umur = '$d[jk_umur]',
        jenis_spesimen = '$d[jenis_spesimen]', 
        sampel_ke = '$d[sampel_ke]', 
        diagnosa_followup = '$d[diagnosa_followup]', 
        profesi = '$d[profesi]',
        tgl_ambil_sampel = '$d[tgl_ambil_sampel]', 
        tgl_kirim_sampel = '$d[tgl_kirim_sampel]', 
        rekam = '$d[rekam]',
        nik = '$d[nik]', 
        keterangan = '$d[keterangan]'
        WHERE id_faskes = '$d[id]'";
        $sql = mysqli_query($con, $q, mysql_insert_id());
        if ($sql) {
            $error = 0;
        } else {
            $error = 1;
        }
        $json = array("error" => $error, "data" => $data);
        echo json_encode($json);}