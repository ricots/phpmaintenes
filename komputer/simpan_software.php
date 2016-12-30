<?php
include 'koneksi.php';
$kondisi = isset($_POST['kondisi'])?$_POST['kondisi']:'';
$cek_pr = isset($_POST['cek_pr'])?$_POST['cek_pr']:'';
$cek_of = isset($_POST['cek_of'])?$_POST['cek_of']:'';
if(!empty($kondisi))
foreach($kondisi as $k){
$kon=explode("|",$k);
if(!empty($cek_pr))
foreach($cek_pr as $cek_pr){
$cek_pr=explode("|",$cek_pr);
if(!empty($cek_of))
foreach($cek_of as $cek_of){
$cek_of=explode("|",$cek_of);
$sql = mysql_query("INSERT INTO tbl_maintenes_soft (tgl,id_ruang,id_komputer,ket,ket_pr,ket_of)
values('{$kon[3]}','{$kon[1]}','{$kon[2]}','{$kon[0]}','{$cek_pr[0]}','{$cek_of[0]}') ") or die(mysql_error());
}}}
$pesan = 'Data berhasil diedit.';
echo '<script language="javascript">';
echo 'alert("'.$pesan.'")';
echo '</script>';
echo "<meta http-equiv='Refresh' content='0;url=home.php'>";
?>