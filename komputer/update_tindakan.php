<?php
include 'koneksi.php';
$tindakan = $_POST['tindakan'];
$id_komputer = $_POST['id_komputer'];
if(isset($_POST['submit']))
{

$tgl = $_POST['tanggal'];
for($i = 0; $i<sizeof($tindakan); $i++){
for($i = 0; $i<sizeof($id_komputer); $i++){
$query = mysql_query("update tbl_maintenes set tindakan ='" . $tindakan[$i] . "' where id_komputer ='" . $id_komputer[$i] . "' and tanggal = '$tgl'");
}}}
$pesan = 'Data berhasil diedit.';

echo '<script language="javascript">';
echo 'alert("'.$pesan.'")';
echo '</script>';

echo "<meta http-equiv='Refresh' content='0;url=home.php?m=content&p=tabel_tindakan'>";
?>