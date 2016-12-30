<?php
include 'koneksi.php';
//include 'session.php';
session_start();
if (empty($_SESSION['login_user'])) {
header("location:index.php"); // jika belum login, maka dikembalikan ke file form_login.php
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>


<body>
<p align="center"><strong>Data Komputer </strong></p>
<table width="880" border="1">
  <tr>
    <td width="26">No</td>
    <td width="119">Nama Ruang</td>
    <td width="103">Id Komputer</td>
    <td width="227">Spesifikasi</td>
    <td width="177">Ram</td>
    <td width="188">Hdd</td>
  </tr>
   <?php
			$query=mysql_query("select nama_ruang, id_komputer, spesifikasi, ram, hdd from ruang_komputer where id_tehnisi = '". $_SESSION["login_user"] ."'") or die(mysql_error());	
			$no=1;										
			while($lihat=mysql_fetch_array($query)){
				?>	
    <td><?php echo $no++; ?></td>
    <td><?php echo $lihat['nama_ruang'] ?></td>
    <td><?php echo $lihat['id_komputer'] ?></td>
    <td><?php echo $lihat['spesifikasi'] ?></td>
    <td><?php echo $lihat['ram'] ?></td>
    <td><?php echo $lihat['hdd'] ?></td>
  </tr>
  <?php
			}
		?>
</table>

</body>
</html>