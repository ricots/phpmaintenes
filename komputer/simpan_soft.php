<?php
include 'koneksi.php';


$checkBox = $_POST['kondisi'];
$checkBox1 = $_POST['kondisi1'];
$checkBox2 = $_POST['kondisi2'];
if(isset($_POST['submit']))
{ 
$id_ruang = $_POST['id_ruang'];
$id_komputer = $_POST['id_komputer'];
for($i = 0; $i<sizeof($checkBox); $i++){
	for($i = 0; $i<sizeof($checkBox1); $i++){
		for($i = 0; $i<sizeof($checkBox2); $i++){
$sql = mysql_query("INSERT INTO tbl_maintenes_soft (tgl,id_ruang,id_komputer,ket,ket_pr,ket_of)
values(NOW(),'$id_ruang','$id_komputer','" . $checkBox[$i] . "','" . $checkBox1[$i] . "','" . $checkBox2[$i] . "') ") or die(mysql_error());
}}}
}
$pesan = 'Data berhasil diedit.';
echo '<script language="javascript">';
echo 'alert("'.$pesan.'")';
echo '</script>';
echo "<meta http-equiv='Refresh' content='0;url=home.php'>";
?>