<?php
include "koneksi.php";
$id = $_POST['id'];
$id_komputer = $_POST['id_komputer'];
$spesifikasi = $_POST['spesifikasi'];
$hdd = $_POST['hdd'];
$ram = $_POST['ram'];

$input = mysql_query("insert into tbl_komputer values('$id','$id_komputer','$spesifikasi','$hdd','$ram')") or die(mysql_error());
$pesan = 'Data berhasil disimpan.';

echo '<script language="javascript">';
echo 'alert("'.$pesan.'")';
echo '</script>';
echo "<meta http-equiv='Refresh' content='0;url=home.php'>";
?>