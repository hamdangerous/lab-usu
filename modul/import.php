<?php

// modul/import.php

if(!empty($_FILES['csv_file']['name']))
{

 $file_data = fopen($_FILES['csv_file']['tmp_name'], 'r');
 fgetcsv($file_data);
 while($row = fgetcsv($file_data))
 {
  $data[] = array(
    'id_logbook' => $row[0],
    'no_urut' => $row[1],
    'nama' => $row[2],
    'jk_umur' => $row[3],
    'jenis_spesimen' => $row[4],
    'sampel_ke' => $row[5],
    'diagnosa_followup' => $row[6],
    'asal_faskes' => $row[7],
    'pengirim' => $row[8],
    'id_lab' => $row[9],
    'tgl_ambil_sampel' => $row[10],
    'tgl_terima_sampel' => $row[11],
    'tgl_keluar_hasil' => $row[12],
    'hasil_pcr' => $row[13],
    'nik' => $row[14],
    'ct_value' => $row[15],
    'keterangan' => $row[16]
  );
 }
 echo json_encode($data);
}

?>