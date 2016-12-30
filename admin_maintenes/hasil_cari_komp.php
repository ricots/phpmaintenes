<?php
include 'koneksi.php';
//include 'session.php';

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>


<body>
<form action="home.php?m=content&p=hasil_cari_komp" method="post" name="postform" id="postform" >
<p align="center"><strong>Data Komputer </strong></p>

<table width="374" border="0">
  <tr>
    <td width="69">cari</td>
    <td width="8">&nbsp;</td>
    <td width="283">
    <input type="text" name="cari" id="cari"/>
    <input type="submit" name="button" id="button" value="cari"/> 
    <input type="submit" name="back" id="back" value="back" onClick="document.postform.action = 'home.php?m=content&p=tabel_komputer'; document.postform.back"(); return false;"/>
    </td>
  </tr>
</table>
<br />
<table width="980" border="1">
  <tr>
    <td width="26">No</td>
    <td width="119">id tehnisi</td>
    <td width="119">Nama Ruang</td>
    <td width="103">Id Komputer</td>
    <td width="227">Spesifikasi</td>
    <td width="177">Ram</td>
    <td width="188">Hdd</td>
  </tr>
   <?php
   $cari = $_POST['cari'];
			$query=mysql_query("select  * from ruang_komputer where nama_ruang = '$cari'") or die(mysql_error());	
			$no=1;										
			while($lihat=mysql_fetch_array($query)){
				?>	
    <td><?php echo $no++; ?></td>
    <td><?php echo $lihat['id_tehnisi'] ?></td>
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
</form>
</html>