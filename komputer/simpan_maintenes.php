<?php
include 'koneksi.php';
$kondisi = isset($_POST['kondisi'])?$_POST['kondisi']:'';
if(!empty($kondisi))
foreach($kondisi as $k){
$kon=explode("|",$k);
$sql = mysql_query("INSERT INTO tbl_maintenes (tanggal,id_ruang,id_komputer,kondisi)
values('{$kon[3]}','{$kon[1]}','{$kon[2]}','{$kon[0]}') ") or die(mysql_error());
}
$pesan = 'Data berhasil diedit.';
echo '<script language="javascript">';
echo 'alert("'.$pesan.'")';
echo '</script>';
echo "<meta http-equiv='Refresh' content='0;url=home.php'>";
?>