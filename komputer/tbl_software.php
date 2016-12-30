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
<form action="simpan_soft.php" name="postform" method="post">
<p align="center"><strong>Data Komputer </strong></p>

<table width="880" border="1">
  <tr>
    <td width="21">No</td>
    <td width="67">Tanggal</td>
    <td width="106">Nama Ruang</td>
    <td width="76">Id Komputer</td>
    <td width="74">windows</td>
    <td width="62">antivirus</td>
    <td width="60">cek</td>
    <td width="116">aplikasi web</td>
    <td width="55">cek</td>
    <td width="97">aplikasi office</td>
    <td width="54">cek</td>
  </tr>
   <?php
			$query=mysql_query("select * from software_komputer where id_tehnisi = '". $_SESSION["login_user"] ."'") or die(mysql_error());	
			$no=1;										
			while($lihat=mysql_fetch_array($query)){
				?>	
               <input type="hidden" name="id_ruang" value="<?php echo $lihat['id_ruang'] ?>" /> 
               <input type="hidden" name="id_komputer" value="<?php echo $lihat['id_komputer'] ?>" />
    <td><?php echo $no++; ?></td>
    <td><?php echo date('Y-m-d');?></td>
    <td><?php echo $lihat['id_ruang'] ?></td>
    <td><?php echo $lihat['id_komputer'] ?></td>
    <td><?php echo $lihat['windows'] ?></td>
    <td><?php echo $lihat['antivirus'] ?></td>
    <td>
      <input type="checkbox" name="kondisi[]" value="ada">ada <input type="checkbox" name="kondisi[]" value="kosong">kosong</td>
    <td><?php echo $lihat['program_web'] ?></td>
    <td><input type="checkbox" name="kondisi1[]" value="ada">ada <input type="checkbox" name="kondisi1[]" value="kosong">kosong</td>
    <td><?php echo $lihat['program_office'] ?></td>
    <td><input type="checkbox" name="kondisi2[]" value="ada">ada <input type="checkbox" name="kondisi2[]" value="kosong">kosong</td>
  </tr>  
  <?php
}
?>
  <tr>
      <td colspan="9"></td>
      <td><input type="submit" name="submit" id="button2" value="Submit" /></td>
    </tr>
  
</table>
</form>
</body>
</html>