<?php
//Koneksi database
$koneksi = mysql_connect('localhost','root','');
mysql_select_db('maintenes_lab', $koneksi);
 
//Mengambil isi parameter cari
$cari = $_GET['cari'];
 
if ( !empty ( $tgl ) ) {
 
//Query sql untuk mencari data
$sql = mysql_query("SELECT * from ruang_tindakan where tanggal LIKE '%$tgl%'");
 
//Cek apakah data ditemukan
$row = mysql_num_rows( $sql );
}
?>